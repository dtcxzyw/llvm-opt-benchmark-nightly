Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_stream-50f1e1af0e65dda7.libp2p_stream.94f2a90580a1d0-cgu.0?download=true
inline.NumInlined: 185
inline.NumDeleted: 109
begin_hunk_0_@_RINvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBS_6stream6StreamEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6retainNCNvMs_NtCs3614Yh7QWq_13libp2p_stream6sharedNtB4Q_6Shared6accept0EB4S_:bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = add i64 %i.d, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBY_6stream6StreamEEEE3newCs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, i64 noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  store i64 %i.g, ptr %.sroa.2.0..sroa_idx, align 8
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %i.i = call noundef ptr @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBZ_6stream6StreamEEEE9next_implKb0_ECs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) ; 3 uses
  %i.j = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !noundef !4
  %i.k = add i64 %i.j, -1
  store i64 %i.k, ptr %.sroa.2.0..sroa_idx, align 8
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.lr.ph, %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -24
  %i.m = call noundef zeroext i1 @_RNvMsh_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamEE9is_closedCs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBT_6stream6StreamEEEE5eraseCs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.pr = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  %i.n = icmp eq i64 %.pr, 0
  br i1 %i.n, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdTINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamEINtB1G_8ReceiverB2p_EENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6removeBO_EB2t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((16, 17)) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = tail call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %2), !noalias !14
  call void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdTINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamEINtB1I_8ReceiverB2r_EEEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_B1E_E0EB2v_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %2)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.e = load i8, ptr %i.d, align 8, !range !15, !noundef !4
  %.not = icmp eq i8 %i.e, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 -1, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6removeBO_ECs3614Yh7QWq_13libp2p_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = tail call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdECs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2), !noalias !18
  call void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_B1M_E0ECs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
  %i.d = load i64, ptr %i.a, align 8, !range !5, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.g, ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 80, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBS_6stream6StreamEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE12contains_keyBO_ECs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBU_6stream6StreamEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1T_E0ECs3614Yh7QWq_13libp2p_stream.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = tail call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.f = lshr i64 %i.e, 57
  %i.g = trunc nuw nsw i64 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !30, !noundef !4 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !alias.scope !30, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.e ]
  %.pn.i = phi i64 [ %i.e, %bb.b ], [ %i.ad, %bb.e ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.i          ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i24.i = load <16 x i8>, ptr %i.m, align 1, !noalias !31 ; 2 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, %i.l
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not.i.not30.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.not30.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i = phi i16 [ %i.ab, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = add i64 %.sroa.01.0.i.i, %i.q
  %i.s = and i64 %i.r, %i.i
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [48 x i8], ptr %i.j, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -48
  %i.w = tail call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtB2_10EquivalentBq_E10equivalentCs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.v), !noalias !32
  br i1 %i.w, label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBU_6stream6StreamEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1T_E0ECs3614Yh7QWq_13libp2p_stream.exit, label %bb.d, !prof !6

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %i.x = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, splat (i8 -1)
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = icmp eq i16 %i.y, 0
  br i1 %i.z, label %bb.e, label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBU_6stream6StreamEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1T_E0ECs3614Yh7QWq_13libp2p_stream.exit, !prof !7

bb.d:                                             ; preds = %.lr.ph.i
  %i.aa = add i16 %.sroa.06.0.i31.i, -1
  %i.ab = and i16 %i.aa, %.sroa.06.0.i31.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.ab, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.e:                                             ; preds = %._crit_edge.i
  %i.ac = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.ad = add i64 %.sroa.01.0.i.i, %i.ac
  br label %bb.c

_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBU_6stream6StreamEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1T_E0ECs3614Yh7QWq_13libp2p_stream.exit: ; preds = %._crit_edge.i, %.lr.ph.i, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %.lr.ph.i ], [ false, %._crit_edge.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.a = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) null), !noalias !36, !inline_history !35 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !noalias !36, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !36, !noundef !4
  %i.f = add i64 %i.c, 1
  store i64 %i.f, ptr %i.a, align 8, !noalias !36
  %i.g = insertvalue { i64, i64 } poison, i64 %i.c, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %i.e, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3614Yh7QWq_13libp2p_stream.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit.i.i
  %.sroa.0.09.i.i = phi i64 [ %i.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.09.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.f = load i64, ptr %i.d, align 8, !range !5, !alias.scope !57, !noundef !4
  %1 = icmp eq i64 %i.f, 0
  br i1 %1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !60, !nonnull !4, !noundef !4
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !61
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit.i.i unwind label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.k = icmp eq i64 %i.e, %.val1
  br i1 %i.k, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3614Yh7QWq_13libp2p_stream.exit, label %.lr.ph.i.i

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.e, %.val1
  br i1 %i.m, label %.body, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit8.i.i ], [ %i.e, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.110.i.i ; 2 uses
  %i.o = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.p = load i64, ptr %i.n, align 8, !range !5, !alias.scope !64, !noundef !4
  %2 = icmp eq i64 %i.p, 0
  br i1 %2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit8.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph12.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !67, !nonnull !4, !noundef !4
  %i.s = atomicrmw add ptr %i.r, i64 -1 release, align 8, !noalias !68
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit8.i.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit8.i.i unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit8.i.i: ; preds = %bb.f, %bb.e, %.lr.ph12.i.i
  %i.u = icmp eq i64 %i.o, %.val1
  br i1 %i.u, label %.body, label %.lr.ph12.i.i

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

.body:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit8.i.i, %bb.d
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECs3614Yh7QWq_13libp2p_stream.exit unwind label %bb.h

_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3614Yh7QWq_13libp2p_stream.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit.i.i, %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.h:                                             ; preds = %.body
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECs3614Yh7QWq_13libp2p_stream.exit: ; preds = %.body
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamEEB1r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !8, !alias.scope !89, !noundef !4
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc18BoundedSenderInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamEEEB20_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.e = load ptr, ptr %0, align 8, !alias.scope !92, !nonnull !4, !noundef !4
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !93
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamEEEB26_.exit.i.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamEE9drop_slowB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamEEEB26_.exit.i.i unwind label %bb.j

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.h = load ptr, ptr %0, align 8, !alias.scope !96, !nonnull !4, !noundef !4
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !97
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamEEEB26_.exit3.i.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamEE9drop_slowB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamEEEB26_.exit3.i.i unwind label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamEEEB26_.exit.i.i: ; preds = %bb.h, %bb.d, %bb.c
  %.pn.i.i = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.d, %bb.d ], [ %i.d, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !100, !nonnull !4, !noundef !4
  %i.m = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !101
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECs3614Yh7QWq_13libp2p_stream.exit.i.i

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamEEEB26_.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEE9drop_slowCsdTHTBGblh3Z_11libp2p_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECs3614Yh7QWq_13libp2p_stream.exit.i.i unwind label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamEEEB26_.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamEEEB26_.exit3.i.i: ; preds = %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !104, !nonnull !4, !noundef !4
  %i.r = atomicrmw add ptr %i.q, i64 -1 release, align 8, !noalias !105
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc18BoundedSenderInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamEEEB20_.exit

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamEEEB26_.exit3.i.i
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEE9drop_slowCsdTHTBGblh3Z_11libp2p_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #20
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc18BoundedSenderInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamEEEB20_.exit

bb.j:                                             ; preds = %bb.g, %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECs3614Yh7QWq_13libp2p_stream.exit.i.i: ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamEEEB26_.exit.i.i
  resume { ptr, i32 } %.pn.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc18BoundedSenderInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamEEEB20_.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamEEEB26_.exit3.i.i, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamEEECs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !8, !alias.scope !126, !noundef !4
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc18BoundedSenderInnerTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamEEEECs3614Yh7QWq_13libp2p_stream.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_18BoundedSenderInnerTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.e = load ptr, ptr %0, align 8, !alias.scope !129, !nonnull !4, !noundef !4
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !130
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamEEEECs3614Yh7QWq_13libp2p_stream.exit.i.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamEEE9drop_slowCs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamEEEECs3614Yh7QWq_13libp2p_stream.exit.i.i unwind label %bb.j

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.h = load ptr, ptr %0, align 8, !alias.scope !133, !nonnull !4, !noundef !4
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !134
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamEEEECs3614Yh7QWq_13libp2p_stream.exit3.i.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamEEE9drop_slowCs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamEEEECs3614Yh7QWq_13libp2p_stream.exit3.i.i unwind label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamEEEECs3614Yh7QWq_13libp2p_stream.exit.i.i: ; preds = %bb.h, %bb.d, %bb.c
  %.pn.i.i = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.d, %bb.d ], [ %i.d, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !137, !nonnull !4, !noundef !4
  %i.m = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !138
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECs3614Yh7QWq_13libp2p_stream.exit.i.i

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamEEEECs3614Yh7QWq_13libp2p_stream.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEE9drop_slowCsdTHTBGblh3Z_11libp2p_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEEECs3614Yh7QWq_13libp2p_stream.exit.i.i unwind label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamEEEECs3614Yh7QWq_13libp2p_stream.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamEEEECs3614Yh7QWq_13libp2p_stream.exit3.i.i: ; preds = %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !141, !nonnull !4, !noundef !4
  %i.r = atomicrmw add ptr %i.q, i64 -1 release, align 8, !noalias !142
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc18BoundedSenderInnerTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamEEEECs3614Yh7QWq_13libp2p_stream.exit

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamEEEECs3614Yh7QWq_13libp2p_stream.exit3.i.i
end_hunk_0
begin_hunk_1_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCs3614Yh7QWq_13libp2p_stream6shared6SharedEEB1z_:bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENCNvMs_NtCs3614Yh7QWq_13libp2p_stream6sharedNtB3O_6Shared6sender0ENtNtNtCshhqnaxk4GqT_4rand3seq8iterator14IteratorRandom6chooseNtNtNtB4R_4rngs6thread9ThreadRngEB3Q_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %.val33 = load i64, ptr %i.c, align 8, !noundef !4
  %i.d = icmp eq i64 %.val33, 0
  br i1 %i.d, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %_RNvMNtNtCshhqnaxk4GqT_4rand3seq12coin_flipperINtB2_11CoinFlipperQNtNtNtB6_4rngs6thread9ThreadRngE21random_ratio_one_overCs3614Yh7QWq_13libp2p_stream.exit.outer

_RNvMNtNtCshhqnaxk4GqT_4rand3seq12coin_flipperINtB2_11CoinFlipperQNtNtNtB6_4rngs6thread9ThreadRngE21random_ratio_one_overCs3614Yh7QWq_13libp2p_stream.exit.outer: ; preds = %_RNvMNtNtCshhqnaxk4GqT_4rand3seq12coin_flipperINtB2_11CoinFlipperQNtNtNtB6_4rngs6thread9ThreadRngE21random_ratio_one_overCs3614Yh7QWq_13libp2p_stream.exit.outer.backedge, %bb.b
  %.sroa.08.0.ph = phi i64 [ 0, %bb.b ], [ %i.p, %_RNvMNtNtCshhqnaxk4GqT_4rand3seq12coin_flipperINtB2_11CoinFlipperQNtNtNtB6_4rngs6thread9ThreadRngE21random_ratio_one_overCs3614Yh7QWq_13libp2p_stream.exit.outer.backedge ]
  %.sroa.06.0.ph73 = phi ptr [ null, %bb.b ], [ %.sroa.06.0.ph73.be, %_RNvMNtNtCshhqnaxk4GqT_4rand3seq12coin_flipperINtB2_11CoinFlipperQNtNtNtB6_4rngs6thread9ThreadRngE21random_ratio_one_overCs3614Yh7QWq_13libp2p_stream.exit.outer.backedge ] ; 3 uses
  br label %_RNvMNtNtCshhqnaxk4GqT_4rand3seq12coin_flipperINtB2_11CoinFlipperQNtNtNtB6_4rngs6thread9ThreadRngE21random_ratio_one_overCs3614Yh7QWq_13libp2p_stream.exit

_RNvMNtNtCshhqnaxk4GqT_4rand3seq12coin_flipperINtB2_11CoinFlipperQNtNtNtB6_4rngs6thread9ThreadRngE21random_ratio_one_overCs3614Yh7QWq_13libp2p_stream.exit: ; preds = %_RNvMNtNtCshhqnaxk4GqT_4rand3seq12coin_flipperINtB2_11CoinFlipperQNtNtNtB6_4rngs6thread9ThreadRngE21random_ratio_one_overCs3614Yh7QWq_13libp2p_stream.exit.outer, %bb.f
  %.sroa.08.0 = phi i64 [ %i.p, %bb.f ], [ %.sroa.08.0.ph, %_RNvMNtNtCshhqnaxk4GqT_4rand3seq12coin_flipperINtB2_11CoinFlipperQNtNtNtB6_4rngs6thread9ThreadRngE21random_ratio_one_overCs3614Yh7QWq_13libp2p_stream.exit.outer ]
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !158
  store ptr %i.g, ptr %i.a, align 8, !noalias !159
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %_RNvMNtNtCshhqnaxk4GqT_4rand3seq12coin_flipperINtB2_11CoinFlipperQNtNtNtB6_4rngs6thread9ThreadRngE21random_ratio_one_overCs3614Yh7QWq_13libp2p_stream.exit
  %i.h = load i64, ptr %i.c, align 8, !alias.scope !160, !noundef !4
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call noundef ptr @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE9next_implKb0_ECs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) ; 3 uses
  %i.k = load i64, ptr %i.c, align 8, !alias.scope !160, !noundef !4
  %i.l = add i64 %i.k, -1
  store i64 %i.l, ptr %i.c, align 8, !alias.scope !160
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds i8, ptr %i.j, i64 -88
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 -80
  %i.o = call noundef align 8 ptr @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMs_NtCs3614Yh7QWq_13libp2p_stream6sharedNtBV_6Shared6sender0INtB7_5FnMutTTRNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE8call_mutBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.n) ; 4 uses
  %.not7.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not7.i.i.i, label %bb.c, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !158
  %i.p = add i64 %.sroa.08.0, 1                   ; 7 uses
  %i.q = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 false)
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = sub nsw i32 63, %i.r
  %..i.i = call noundef range(i32 0, 33) i32 @llvm.umin.i32(i32 range(i32 -1, 64) %i.s, i32 32) ; 2 uses
  %i.t = call noundef zeroext i1 @_RNvMNtNtCshhqnaxk4GqT_4rand3seq12coin_flipperINtB2_11CoinFlipperQNtNtNtB6_4rngs6thread9ThreadRngE12flip_c_headsCs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i32 noundef %..i.i)
  br i1 %i.t, label %bb.g, label %_RNvMNtNtCshhqnaxk4GqT_4rand3seq12coin_flipperINtB2_11CoinFlipperQNtNtNtB6_4rngs6thread9ThreadRngE21random_ratio_one_overCs3614Yh7QWq_13libp2p_stream.exit

bb.g:                                             ; preds = %bb.f
  %i.u = zext nneg i32 %..i.i to i64
  %i.v = shl nuw nsw i64 1, %i.u                  ; 2 uses
  %.not15.i.i = icmp ult i64 %i.v, %i.p
  br i1 %.not15.i.i, label %.lr.ph.i.i, label %_RNvMNtNtCshhqnaxk4GqT_4rand3seq12coin_flipperINtB2_11CoinFlipperQNtNtNtB6_4rngs6thread9ThreadRngE21random_ratio_one_overCs3614Yh7QWq_13libp2p_stream.exit.outer.backedge

_RNvMNtNtCshhqnaxk4GqT_4rand3seq12coin_flipperINtB2_11CoinFlipperQNtNtNtB6_4rngs6thread9ThreadRngE21random_ratio_one_overCs3614Yh7QWq_13libp2p_stream.exit.outer.backedge: ; preds = %bb.j, %bb.l, %bb.k, %bb.i, %bb.g
  %.sroa.06.0.ph73.be = phi ptr [ %i.o, %bb.g ], [ %i.o, %bb.j ], [ %i.o, %bb.l ], [ %.sroa.06.0.ph73, %bb.k ], [ %.sroa.06.0.ph73, %bb.i ]
  br label %_RNvMNtNtCshhqnaxk4GqT_4rand3seq12coin_flipperINtB2_11CoinFlipperQNtNtNtB6_4rngs6thread9ThreadRngE21random_ratio_one_overCs3614Yh7QWq_13libp2p_stream.exit.outer

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.w = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = add nuw nsw i32 %i.x, 1                  ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi i64 [ %i.v, %.lr.ph.i.i ], [ %.sroa.0.1.i.i, %bb.l ] ; 4 uses
  %i.z = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.0.010.i.i, i1 false)
  %i.aa = trunc nuw nsw i64 %i.z to i32           ; 2 uses
  %i.ab = call i32 @llvm.usub.sat.i32(i32 %i.aa, i32 %i.y)
  %.not.i.i = icmp samesign ult i32 %i.y, %i.aa
  %..i.i.i = call i32 @llvm.umin.i32(i32 range(i32 0, 64) %i.ab, i32 32)
  %.sroa.0.0.i.i.i34 = select i1 %.not.i.i, i32 %..i.i.i, i32 1 ; 3 uses
  %i.ac = call noundef zeroext i1 @_RNvMNtNtCshhqnaxk4GqT_4rand3seq12coin_flipperINtB2_11CoinFlipperQNtNtNtB6_4rngs6thread9ThreadRngE12flip_c_headsCs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i32 noundef %.sroa.0.0.i.i.i34)
  br i1 %i.ac, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = icmp eq i32 %.sroa.0.0.i.i.i34, 1
  br i1 %i.ad, label %bb.k, label %_RNvMNtNtCshhqnaxk4GqT_4rand3seq12coin_flipperINtB2_11CoinFlipperQNtNtNtB6_4rngs6thread9ThreadRngE21random_ratio_one_overCs3614Yh7QWq_13libp2p_stream.exit.outer.backedge

bb.j:                                             ; preds = %bb.h
  %i.ae = zext nneg i32 %.sroa.0.0.i.i.i34 to i64
  %i.af = shl nuw nsw i64 1, %i.ae
  %i.ag = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.0.010.i.i, i64 %i.af) ; 2 uses
  %i.ah = extractvalue { i64, i1 } %i.ag, 0
  %i.ai = extractvalue { i64, i1 } %i.ag, 1
  br i1 %i.ai, label %_RNvMNtNtCshhqnaxk4GqT_4rand3seq12coin_flipperINtB2_11CoinFlipperQNtNtNtB6_4rngs6thread9ThreadRngE21random_ratio_one_overCs3614Yh7QWq_13libp2p_stream.exit.outer.backedge, label %bb.l, !prof !7

bb.k:                                             ; preds = %bb.i
  %i.aj = shl i64 %.sroa.0.010.i.i, 1
  %i.ak = sub i64 %i.aj, %i.p                     ; 2 uses
  %i.al = add i64 %i.ak, -1
  %or.cond.not.i.i = icmp ult i64 %i.al, %.sroa.0.010.i.i
  br i1 %or.cond.not.i.i, label %bb.l, label %_RNvMNtNtCshhqnaxk4GqT_4rand3seq12coin_flipperINtB2_11CoinFlipperQNtNtNtB6_4rngs6thread9ThreadRngE21random_ratio_one_overCs3614Yh7QWq_13libp2p_stream.exit.outer.backedge

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.1.i.i = phi i64 [ %i.ak, %bb.k ], [ %i.ah, %bb.j ] ; 2 uses
  %.not16.i.i = icmp ult i64 %.sroa.0.1.i.i, %i.p
  br i1 %.not16.i.i, label %bb.h, label %_RNvMNtNtCshhqnaxk4GqT_4rand3seq12coin_flipperINtB2_11CoinFlipperQNtNtNtB6_4rngs6thread9ThreadRngE21random_ratio_one_overCs3614Yh7QWq_13libp2p_stream.exit.outer.backedge

bb.m:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  %.sroa.0.1 = phi ptr [ null, %bb.a ], [ %.sroa.06.0.ph73, %bb.m ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMNtCs3614Yh7QWq_13libp2p_stream7controlNtB2_7Control6accept(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = invoke { ptr, i1 } @_RNvMNtCs3614Yh7QWq_13libp2p_stream6sharedNtB2_6Shared4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
          to label %bb.b unwind label %bb.i       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, i1 } %i.b, 0         ; 7 uses
  %i.d = extractvalue { ptr, i1 } %i.b, 1         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.f = invoke { i64, ptr } @_RNvMs_NtCs3614Yh7QWq_13libp2p_stream6sharedNtB4_6Shared6accept(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = zext i1 %i.d to i8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCs3614Yh7QWq_13libp2p_stream6shared6SharedEEB1z_(ptr nonnull %i.c, i8 %i.h) #22
          to label %.thread unwind label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  br i1 %i.d, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.k = and i64 %i.j, 9223372036854775807
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc, !prof !6

.noexc:                                           ; preds = %bb.e
  %i.m = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #20
  br i1 %i.m, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.i monotonic, align 1
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.f, %.noexc, %bb.e, %bb.d
  %i.n = atomicrmw xchg ptr %i.c, i32 0 release, align 4
  %i.o = icmp eq i32 %i.n, 2
  br i1 %i.o, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCs3614Yh7QWq_13libp2p_stream6shared6SharedEEB1z_.exit, !prof !7

bb.g:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.c)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCs3614Yh7QWq_13libp2p_stream6shared6SharedEEB1z_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtCs3614Yh7QWq_13libp2p_stream6shared6SharedEEB1z_.exit: ; preds = %bb.g, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  ret { i64, ptr } %i.f

bb.h:                                             ; preds = %bb.k, %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

.thread:                                          ; preds = %bb.j, %bb.i, %bb.k, %bb.c
  %.pn11 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.j ], [ %i.g, %bb.c ], [ %lpad.thr_comm.split-lp, %bb.k ], [ %lpad.thr_comm.split-lp, %bb.i ]
  resume { ptr, i32 } %.pn11

bb.i:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.q = load i64, ptr %1, align 8, !range !5, !alias.scope !171, !noundef !4
  %2 = icmp eq i64 %i.q, 0
  br i1 %2, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !174, !nonnull !4, !noundef !4
  %i.t = atomicrmw add ptr %i.s, i64 -1 release, align 8, !noalias !174
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r) #20
          to label %.thread unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdTINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamEINtB1R_8ReceiverB2A_EENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entryB2E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(80) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = tail call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %2) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.c = lshr i64 %i.b, 57
  %i.d = trunc nuw nsw i64 %i.c to i8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !186, !noundef !4 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !alias.scope !186, !nonnull !4, !noundef !4 ; 2 uses
  %i.h = insertelement <16 x i8> poison, i8 %i.d, i64 0
  %i.i = shufflevector <16 x i8> %i.h, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.a ], [ %i.z, %bb.d ]
  %.pn.i = phi i64 [ %i.b, %bb.a ], [ %i.aa, %bb.d ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.f          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i24.i = load <16 x i8>, ptr %i.j, align 1, !noalias !187 ; 2 uses
  %i.k = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, %i.i
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not.i.not30.i = icmp eq i16 %i.l, 0
  br i1 %.not.i.not30.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.06.0.i31.i = phi i16 [ %i.y, %bb.c ], [ %i.l, %bb.b ] ; 3 uses
  %i.m = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i, i1 true)
  %i.n = zext nneg i16 %i.m to i64
  %i.o = add i64 %.sroa.01.0.i.i, %i.n
  %i.p = and i64 %i.o, %i.f
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds [112 x i8], ptr %i.g, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -112
  %i.t = tail call noundef zeroext i1 @_RNvXs2_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %2), !noalias !188
  br i1 %i.t, label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdTINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamEINtB1I_8ReceiverB2r_EEEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1E_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0EB2v_.exit, label %bb.c, !prof !6

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.u = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, splat (i8 -1)
  %i.v = bitcast <16 x i1> %i.u to i16
  %i.w = icmp eq i16 %i.v, 0
  br i1 %i.w, label %bb.d, label %bb.e, !prof !7

bb.c:                                             ; preds = %.lr.ph.i
  %i.x = add i16 %.sroa.06.0.i31.i, -1
  %i.y = and i16 %i.x, %.sroa.06.0.i31.i          ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.z = add i64 %.sroa.9.0.i.i, 16               ; 2 uses
  %i.aa = add i64 %.sroa.01.0.i.i, %i.z
  br label %bb.b

_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdTINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamEINtB1I_8ReceiverB2r_EEEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1E_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0EB2v_.exit: ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.ac, align 8
  store ptr null, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  tail call void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdTINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamEINtB1I_8ReceiverB2r_EEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1E_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0EB2v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  store ptr %1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 80, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdTINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamEINtB1I_8ReceiverB2r_EEEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1E_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0EB2v_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB13_6stream6StreamEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entryCs3614Yh7QWq_13libp2p_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = invoke noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.e unwind label %bb.b       ; 3 uses

bb.b:                                             ; preds = %bb.j, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %i.d = load i64, ptr %2, align 8, !range !5, !alias.scope !222, !noundef !4
  %3 = icmp eq i64 %i.d, 0
  br i1 %3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !225, !nonnull !4, !noundef !4
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !225
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit unwind label %bb.l

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.i = lshr i64 %i.b, 57
  %i.j = trunc nuw nsw i64 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !229, !noundef !4 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !alias.scope !229, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %i.o = shufflevector <16 x i8> %i.n, <16 x i8> poison, <16 x i32> zeroinitializer
  %.sroa.33.0.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.33.0.i.i.i.i = load i64, ptr %.sroa.33.0.in.i.i.i.i, align 8, !alias.scope !227 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !227, !nonnull !4 ; 2 uses
  %i.r = load i64, ptr %2, align 8, !range !5, !alias.scope !227 ; 2 uses
  %.sroa.02.0.idx.i.i.i.i = shl nuw nsw i64 %i.r, 4
  %.sroa.02.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.02.0.idx.i.i.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.e ], [ %i.am, %bb.g ]
  %.pn.i = phi i64 [ %i.b, %bb.e ], [ %i.an, %bb.g ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.l          ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i25.i = load <16 x i8>, ptr %i.s, align 1, !noalias !230 ; 2 uses
  %i.t = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i, %i.o
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.not31.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.not31.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBW_6stream6StreamEEEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1V_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0E0Cs3614Yh7QWq_13libp2p_stream.exit.thread.i
  %.sroa.06.0.i32.i = phi i16 [ %i.al, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBW_6stream6StreamEEEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1V_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0E0Cs3614Yh7QWq_13libp2p_stream.exit.thread.i ], [ %i.u, %bb.f ] ; 3 uses
  %i.v = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i32.i, i1 true)
  %i.w = zext nneg i16 %i.v to i64
  %i.x = add i64 %.sroa.01.0.i.i, %i.w
  %i.y = and i64 %i.x, %i.l
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds [48 x i8], ptr %i.m, i64 %i.z ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231), !noalias !232
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233), !noalias !232
  %.sroa.3.0.in.i.i.i.i = getelementptr inbounds i8, ptr %i.aa, i64 -32
  %.sroa.3.0.i.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i.i, align 8, !alias.scope !234, !noalias !235, !noundef !4
  %i.ab = icmp eq i64 %.sroa.3.0.i.i.i.i, %.sroa.33.0.i.i.i.i
  br i1 %i.ab, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBW_6stream6StreamEEEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1V_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0E0Cs3614Yh7QWq_13libp2p_stream.exit.i, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBW_6stream6StreamEEEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1V_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0E0Cs3614Yh7QWq_13libp2p_stream.exit.thread.i, !prof !236

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBW_6stream6StreamEEEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1V_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0E0Cs3614Yh7QWq_13libp2p_stream.exit.i: ; preds = %.lr.ph.i
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -48
  %i.ad = getelementptr inbounds i8, ptr %i.aa, i64 -40
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !234, !noalias !235, !nonnull !4
  %i.af = load i64, ptr %i.ac, align 8, !range !5, !alias.scope !234, !noalias !235, !noundef !4
  %.sroa.01.0.idx.i.i.i.i = shl nuw nsw i64 %i.af, 4
  %.sroa.01.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.01.0.idx.i.i.i.i
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %.sroa.01.0.i.i.i.i, ptr nonnull %.sroa.02.0.i.i.i.i, i64 %.sroa.33.0.i.i.i.i), !noalias !237
  %i.ag = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.ag, label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBU_6stream6StreamEEEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1T_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0ECs3614Yh7QWq_13libp2p_stream.exit, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBW_6stream6StreamEEEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1V_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0E0Cs3614Yh7QWq_13libp2p_stream.exit.thread.i, !prof !238

._crit_edge.i:                                    ; preds = %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBW_6stream6StreamEEEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1V_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0E0Cs3614Yh7QWq_13libp2p_stream.exit.thread.i, %bb.f
  %i.ah = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %i.aj = icmp eq i16 %i.ai, 0
  br i1 %i.aj, label %bb.g, label %bb.j, !prof !7

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBW_6stream6StreamEEEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1V_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0E0Cs3614Yh7QWq_13libp2p_stream.exit.thread.i: ; preds = %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBW_6stream6StreamEEEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1V_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0E0Cs3614Yh7QWq_13libp2p_stream.exit.i, %.lr.ph.i
  %i.ak = add i16 %.sroa.06.0.i32.i, -1
  %i.al = and i16 %i.ak, %.sroa.06.0.i32.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.al, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.am = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.an = add i64 %.sroa.01.0.i.i, %i.am
  br label %bb.f

_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBU_6stream6StreamEEEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1T_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0ECs3614Yh7QWq_13libp2p_stream.exit: ; preds = %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBW_6stream6StreamEEEE4findNCNvMNtBa_11rustc_entryINtNtBa_3map7HashMapBS_B1V_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0E0Cs3614Yh7QWq_13libp2p_stream.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.ap, align 8
  store i64 2, ptr %0, align 8
  %4 = icmp eq i64 %i.r, 0
  br i1 %4, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit5, label %bb.h

bb.h:                                             ; preds = %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBU_6stream6StreamEEEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1T_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0ECs3614Yh7QWq_13libp2p_stream.exit
  %i.aq = atomicrmw add ptr %i.q, i64 -1 release, align 8, !noalias !239
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit5

bb.i:                                             ; preds = %bb.h
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p) #20
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit5

bb.j:                                             ; preds = %._crit_edge.i
  invoke void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBU_6stream6StreamEEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1T_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %bb.k unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit5: ; preds = %bb.i, %bb.h, %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBU_6stream6StreamEEEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapBQ_B1T_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entry0ECs3614Yh7QWq_13libp2p_stream.exit, %bb.k
  ret void

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.b, ptr %.sroa.5.0..sroa_idx, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit5

bb.l:                                             ; preds = %bb.d
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit: ; preds = %bb.c, %bb.b, %bb.d
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCs3614Yh7QWq_13libp2p_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = add i64 %i.c, 1
  tail call void @_RNvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE3newCs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i64 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBR_6stream6StreamEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCs3614Yh7QWq_13libp2p_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = add i64 %i.c, 1
  tail call void @_RNvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBY_6stream6StreamEEEE3newCs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i64 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertB2z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = invoke noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdECs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderNtNtCs3614Yh7QWq_13libp2p_stream7handler9NewStreamEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1M_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0EB2C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !249, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val5.i = load i64, ptr %i.d, align 8, !alias.scope !249, !noundef !4 ; 3 uses
  %i.e = lshr i64 %i.c, 57
  %i.f = trunc nuw nsw i64 %i.e to i8             ; 3 uses
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.noexc
  %.pn.i.i = phi i64 [ %i.c, %.noexc ], [ %i.ah, %bb.f ]
  %.sroa.4.0.i.i = phi i64 [ undef, %.noexc ], [ %.sroa.4.120.i.i, %bb.f ]
  %.sroa.04.0.i.i = phi i64 [ 0, %.noexc ], [ %.sroa.04.122.i.i, %bb.f ]
  %i.i = phi i64 [ 0, %.noexc ], [ %i.ag, %bb.f ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val5.i   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.j, align 1, !noalias !250 ; 3 uses
  %i.k = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.h
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not28.i.i = icmp eq i16 %i.l, 0
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.01.029.i.i = phi i16 [ %i.w, %bb.d ], [ %i.l, %bb.c ] ; 3 uses
  %i.m = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i, i1 true)
  %i.n = zext nneg i16 %i.m to i64
  %i.o = add i64 %.sroa.0.017.i.i, %i.n
  %i.p = and i64 %i.o, %.val5.i
  %i.q = load ptr, ptr %1, align 8, !alias.scope !249, !noalias !251, !nonnull !4, !noundef !4
  %i.r = sub nsw i64 0, %i.p                      ; 2 uses
  %i.s = getelementptr inbounds [32 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -32
  %i.u = invoke noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtB2_10EquivalentBq_E10equivalentCs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.t)
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6:                                          ; preds = %.lr.ph.i.i
  br i1 %i.u, label %bb.i, label %bb.d, !prof !6

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.e, !prof !7

bb.d:                                             ; preds = %.noexc6
  %i.v = add i16 %.sroa.01.029.i.i, -1
  %i.w = and i16 %i.v, %.sroa.01.029.i.i          ; 2 uses
  %.not.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.x = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer
  %i.y = bitcast <16 x i1> %i.x to i16            ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.i.i, label %bb.f, label %.thread24.i.i, !prof !7

.thread24.i.i:                                    ; preds = %bb.e
  %i.z = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.y, i1 true)
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = add i64 %.sroa.0.017.i.i, %i.aa
  %i.ac = and i64 %i.ab, %.val5.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.ac, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ad = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = icmp eq i16 %i.ae, 0
  br i1 %i.af, label %bb.f, label %bb.g, !prof !7

bb.f:                                             ; preds = %.thread.i.i, %bb.e
  %.sroa.04.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.e ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.e ]
  %i.ag = add i64 %i.i, 16                        ; 2 uses
  %i.ah = add i64 %i.ag, %.sroa.0.017.i.i
  br label %bb.c

bb.g:                                             ; preds = %.thread.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !4
  %i.ak = icmp sgt i8 %i.aj, -1
  br i1 %i.ak, label %bb.h, label %bb.k, !prof !7

bb.h:                                             ; preds = %bb.g
  %.val62.i.i.i = load <16 x i8>, ptr %.val.i, align 16
  %i.al = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.am = bitcast <16 x i1> %i.al to i16          ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.am, 0
  %i.an = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.am, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  call void @llvm.assume(i1 %.not.i23.i.i)
  br label %bb.k

bb.i:                                             ; preds = %.noexc6
  %i.ap = load ptr, ptr %1, align 8, !alias.scope !249, !nonnull !4
  %i.aq = getelementptr inbounds [32 x i8], ptr %i.ap, i64 %i.r
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  ret void

bb.k:                                             ; preds = %bb.h, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ao, %bb.h ], [ %.sroa.4.121.i.i, %bb.g ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.as = load ptr, ptr %1, align 8, !alias.scope !252, !nonnull !4, !noundef !4 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.3.0.i.ph.i ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !noalias !253, !noundef !4
  %i.av = and i8 %i.au, 1
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ay = add i64 %.sroa.3.0.i.ph.i, -16
  %i.az = load i64, ptr %i.d, align 8, !alias.scope !252, !noundef !4
  %i.ba = and i64 %i.az, %i.ay
  store i8 %i.f, ptr %i.at, align 1, !noalias !253
  %i.bb = getelementptr i8, ptr %i.as, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  store i8 %i.f, ptr %i.bc, align 1, !noalias !253
  %i.bd = load <2 x i64>, ptr %i.ax, align 8, !alias.scope !252
  %i.be = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.aw, i64 0
end_hunk_1
begin_hunk_2_@_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCs3614Yh7QWq_13libp2p_stream:bb.a

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.x = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer
  %i.y = bitcast <16 x i1> %i.x to i16            ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !prof !7

.thread24.i.i:                                    ; preds = %bb.d
  %i.z = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.y, i1 true)
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = add i64 %.sroa.0.017.i.i, %i.aa
  %i.ac = and i64 %i.ab, %.val5.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.ac, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ad = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = icmp eq i16 %i.ae, 0
  br i1 %i.af, label %bb.e, label %bb.f, !prof !7

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.04.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.ag = add i64 %i.i, 16                        ; 2 uses
  %i.ah = add i64 %i.ag, %.sroa.0.017.i.i
  br label %bb.b

bb.f:                                             ; preds = %.thread.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !4
  %i.ak = icmp sgt i8 %i.aj, -1
  br i1 %i.ak, label %bb.g, label %bb.h, !prof !7

bb.g:                                             ; preds = %bb.f
  %.val62.i.i.i = load <16 x i8>, ptr %.val.i, align 16
  %i.al = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.am = bitcast <16 x i1> %i.al to i16          ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.am, 0
  %i.an = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.am, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  call void @llvm.assume(i1 %.not.i23.i.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ao, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.ap = load ptr, ptr %1, align 8, !alias.scope !268, !nonnull !4, !noundef !4 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.3.0.i.ph.i ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !noalias !269, !noundef !4
  %i.as = and i8 %i.ar, 1
  %i.at = zext nneg i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.av = add i64 %.sroa.3.0.i.ph.i, -16
  %i.aw = load i64, ptr %i.d, align 8, !alias.scope !268, !noundef !4
  %i.ax = and i64 %i.aw, %i.av
  store i8 %i.f, ptr %i.aq, align 1, !noalias !269
  %i.ay = getelementptr i8, ptr %i.ap, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 16
  store i8 %i.f, ptr %i.az, align 1, !noalias !269
  %i.ba = load <2 x i64>, ptr %i.au, align 8, !alias.scope !268
  %i.bb = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.at, i64 0
  %i.bc = sub <2 x i64> %i.ba, %i.bb
  store <2 x i64> %i.bc, ptr %i.au, align 8, !alias.scope !268
  %i.bd = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.be = getelementptr inbounds [88 x i8], ptr %i.ap, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -88
  store i64 %2, ptr %i.bf, align 8, !noalias !268
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.be, i64 -80
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bg = load ptr, ptr %1, align 8, !alias.scope !265, !nonnull !4
  %i.bh = getelementptr inbounds [88 x i8], ptr %i.bg, i64 %i.r
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -80 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bj, ptr noundef nonnull align 8 dereferenceable(80) %i.bi, i64 80, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.4.0..sroa_idx.sink = phi ptr [ %.sroa.4.0..sroa_idx, %bb.h ], [ %i.bi, %bb.i ]
  %storemerge = phi i64 [ 0, %bb.h ], [ 1, %bb.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.0..sroa_idx.sink, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 80, i1 false)
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBR_6stream6StreamEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCs3614Yh7QWq_13libp2p_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = invoke noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBU_6stream6StreamEEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1T_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !295, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val5.i = load i64, ptr %i.d, align 8, !alias.scope !295, !noundef !4 ; 3 uses
  %i.e = lshr i64 %i.c, 57
  %i.f = trunc nuw nsw i64 %i.e to i8             ; 3 uses
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.noexc
  %.pn.i.i = phi i64 [ %i.c, %.noexc ], [ %i.ah, %bb.f ]
  %.sroa.4.0.i.i = phi i64 [ undef, %.noexc ], [ %.sroa.4.120.i.i, %bb.f ]
  %.sroa.04.0.i.i = phi i64 [ 0, %.noexc ], [ %.sroa.04.122.i.i, %bb.f ]
  %i.i = phi i64 [ 0, %.noexc ], [ %i.ag, %bb.f ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val5.i   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.j, align 1, !noalias !296 ; 3 uses
  %i.k = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.h
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not28.i.i = icmp eq i16 %i.l, 0
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.01.029.i.i = phi i16 [ %i.w, %bb.d ], [ %i.l, %bb.c ] ; 3 uses
  %i.m = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i, i1 true)
  %i.n = zext nneg i16 %i.m to i64
  %i.o = add i64 %.sroa.0.017.i.i, %i.n
  %i.p = and i64 %i.o, %.val5.i
  %i.q = load ptr, ptr %1, align 8, !alias.scope !295, !noalias !297, !nonnull !4, !noundef !4
  %i.r = sub nsw i64 0, %i.p                      ; 2 uses
  %i.s = getelementptr inbounds [48 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -48
  %i.u = invoke noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtB2_10EquivalentBq_E10equivalentCs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.t)
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6:                                          ; preds = %.lr.ph.i.i
  br i1 %i.u, label %bb.i, label %bb.d, !prof !6

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.e, !prof !7

bb.d:                                             ; preds = %.noexc6
  %i.v = add i16 %.sroa.01.029.i.i, -1
  %i.w = and i16 %i.v, %.sroa.01.029.i.i          ; 2 uses
  %.not.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.x = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer
  %i.y = bitcast <16 x i1> %i.x to i16            ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.i.i, label %bb.f, label %.thread24.i.i, !prof !7

.thread24.i.i:                                    ; preds = %bb.e
  %i.z = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.y, i1 true)
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = add i64 %.sroa.0.017.i.i, %i.aa
  %i.ac = and i64 %i.ab, %.val5.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.ac, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ad = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = icmp eq i16 %i.ae, 0
  br i1 %i.af, label %bb.f, label %bb.g, !prof !7

bb.f:                                             ; preds = %.thread.i.i, %bb.e
  %.sroa.04.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.e ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.e ]
  %i.ag = add i64 %i.i, 16                        ; 2 uses
  %i.ah = add i64 %i.ag, %.sroa.0.017.i.i
  br label %bb.c

bb.g:                                             ; preds = %.thread.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !4
  %i.ak = icmp sgt i8 %i.aj, -1
  br i1 %i.ak, label %bb.h, label %bb.l, !prof !7

bb.h:                                             ; preds = %bb.g
  %.val62.i.i.i = load <16 x i8>, ptr %.val.i, align 16
  %i.al = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.am = bitcast <16 x i1> %i.al to i16          ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.am, 0
  %i.an = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.am, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  tail call void @llvm.assume(i1 %.not.i23.i.i)
  br label %bb.l

bb.i:                                             ; preds = %.noexc6
  %i.ap = load ptr, ptr %1, align 8, !alias.scope !295, !nonnull !4
  %i.aq = getelementptr inbounds [48 x i8], ptr %i.ap, i64 %i.r
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  %i.as = load i64, ptr %2, align 8, !range !5, !alias.scope !300, !noundef !4
  %4 = icmp eq i64 %i.as, 0
  br i1 %4, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !303, !nonnull !4, !noundef !4
  %i.av = atomicrmw add ptr %i.au, i64 -1 release, align 8, !noalias !303
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.at) #20
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.l
  ret void

bb.l:                                             ; preds = %bb.h, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ao, %bb.h ], [ %.sroa.4.121.i.i, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %i.ay = load ptr, ptr %1, align 8, !alias.scope !304, !nonnull !4, !noundef !4 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sroa.3.0.i.ph.i ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !noalias !305, !noundef !4
  %i.bb = and i8 %i.ba, 1
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.be = add i64 %.sroa.3.0.i.ph.i, -16
  %i.bf = load i64, ptr %i.d, align 8, !alias.scope !304, !noundef !4
  %i.bg = and i64 %i.bf, %i.be
  store i8 %i.f, ptr %i.az, align 1, !noalias !305
  %i.bh = getelementptr i8, ptr %i.ay, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 16
  store i8 %i.f, ptr %i.bi, align 1, !noalias !305
  %i.bj = load <2 x i64>, ptr %i.bd, align 8, !alias.scope !304
  %i.bk = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bc, i64 0
  %i.bl = sub <2 x i64> %i.bj, %i.bk
  store <2 x i64> %i.bl, ptr %i.bd, align 8, !alias.scope !304
  %i.bm = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bn = getelementptr inbounds [48 x i8], ptr %i.ay, i64 %i.bm
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bo, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 -1, ptr %i.bp, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i, %bb.a, %bb.b
  %lpad.loopexit.split-lp21 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamEEECs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef align 8 dereferenceable(24) %3) #22
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.p, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

.critedge:                                        ; preds = %bb.p, %bb.o, %bb.n
  resume { ptr, i32 } %lpad.loopexit.split-lp21

bb.n:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.br = load i64, ptr %2, align 8, !range !5, !alias.scope !308, !noundef !4
  %5 = icmp eq i64 %i.br, 0
  br i1 %5, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !311, !nonnull !4, !noundef !4
  %i.bu = atomicrmw add ptr %i.bt, i64 -1 release, align 8, !noalias !311
  %i.bv = icmp eq i64 %i.bu, 1
  br i1 %i.bv, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bs) #20
          to label %.critedge unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtB5_18RustcOccupiedEntryNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB1c_6stream6StreamEEE6removeCs3614Yh7QWq_13libp2p_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBT_6stream6StreamEEEE6removeCs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %i.d = load i64, ptr %i.b, align 8, !range !5, !alias.scope !322, !noundef !4
  %3 = icmp eq i64 %i.d, 0
  br i1 %3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !325, !nonnull !4, !noundef !4
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !325
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #20
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !9, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXCscu2bAJ62uie_6eitherINtB2_6EitherReINtNtCsexYYUdYSQU6_5alloc4sync3ArceEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs3614Yh7QWq_13libp2p_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !5, !noundef !4
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.d, align 8
  br i1 %i.b, label %bb.b, label %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs3614Yh7QWq_13libp2p_stream.exit

bb.b:                                             ; preds = %bb.a
  %i.e = atomicrmw add ptr %.val, i64 1 monotonic, align 8
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs3614Yh7QWq_13libp2p_stream.exit

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs3614Yh7QWq_13libp2p_stream.exit: ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.val, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val1, ptr %i.h, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCs3614Yh7QWq_13libp2p_stream7upgradeNtB2_7UpgradeNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade11UpgradeInfo13protocol_info(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !338
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 384307168202282326) %.val1, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !338
  %i.d = load i64, ptr %i.a, align 8, !range !5, !noalias !338, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !10, !noalias !338, !noundef !4 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3614Yh7QWq_13libp2p_stream.exit.i.i, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !noalias !338
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #23, !noalias !338
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3614Yh7QWq_13libp2p_stream.exit.i.i: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !noalias !338, !nonnull !4, !noundef !4 ; 4 uses
  %i.k = icmp ule i64 %.val1, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !338
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.val1
  %i.m = icmp eq i64 %i.g, 0
  br i1 %i.m, label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs3614Yh7QWq_13libp2p_stream.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3614Yh7QWq_13libp2p_stream.exit.i.i, %_RNvXs9_NtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocolNtB5_14StreamProtocolNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  %.sroa.012.034.i.i = phi ptr [ %i.p, %_RNvXs9_NtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocolNtB5_14StreamProtocolNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ %.val, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3614Yh7QWq_13libp2p_stream.exit.i.i ] ; 5 uses
  %.sroa.7.033.i.i = phi i64 [ %i.q, %_RNvXs9_NtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocolNtB5_14StreamProtocolNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3614Yh7QWq_13libp2p_stream.exit.i.i ] ; 2 uses
  %.sroa.10.032.i.i = phi i64 [ %i.n, %_RNvXs9_NtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocolNtB5_14StreamProtocolNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ %i.g, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3614Yh7QWq_13libp2p_stream.exit.i.i ]
  %i.n = add i64 %.sroa.10.032.i.i, -1            ; 2 uses
  %i.o = icmp eq ptr %.sroa.012.034.i.i, %i.l
  br i1 %i.o, label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs3614Yh7QWq_13libp2p_stream.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.034.i.i, i64 24
  %i.q = add nuw nsw i64 %.sroa.7.033.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  %i.r = load i64, ptr %.sroa.012.034.i.i, align 8, !range !5, !alias.scope !341, !noalias !342, !noundef !4
  %i.s = trunc nuw i64 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.012.034.i.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !341, !noalias !342, !nonnull !4, !noundef !4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.034.i.i, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !341, !noalias !342
  br i1 %i.s, label %bb.d, label %_RNvXs9_NtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocolNtB5_14StreamProtocolNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.v = atomicrmw add ptr %.val.i.i.i.i, i64 1 monotonic, align 8, !noalias !343
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.e, label %_RNvXs9_NtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocolNtB5_14StreamProtocolNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

_RNvXs9_NtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocolNtB5_14StreamProtocolNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.d, %bb.c
  %storemerge.i.i.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.c ]
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.7.033.i.i ; 3 uses
  store i64 %storemerge.i.i.i.i, ptr %i.x, align 8, !noalias !338
  %.sroa.423.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.val.i.i.i.i, ptr %.sroa.423.0..sroa_idx.i.i, align 8, !noalias !338
  %.sroa.524.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.val1.i.i.i.i, ptr %.sroa.524.0..sroa_idx.i.i, align 8, !noalias !338
  %i.y = icmp eq i64 %i.n, 0
  br i1 %i.y, label %_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs3614Yh7QWq_13libp2p_stream.exit, label %.lr.ph.i.i

_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs3614Yh7QWq_13libp2p_stream.exit: ; preds = %.lr.ph.i.i, %_RNvXs9_NtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocolNtB5_14StreamProtocolNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3614Yh7QWq_13libp2p_stream.exit.i.i
  %i.z = icmp ult i64 %.val1, 384307168202282326
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.val1
  store ptr %i.j, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.aa, ptr %i.ad, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysB11_INtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB15_6stream6StreamEEEEE9from_iterCs3614Yh7QWq_13libp2p_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !392, !noundef !4
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBZ_6stream6StreamEEEE9next_implKb0_ECs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1), !noalias !393 ; 4 uses
  %i.j = load i64, ptr %i.f, align 8, !alias.scope !392, !noundef !4
  %i.k = add i64 %i.j, -1                         ; 2 uses
  store i64 %i.k, ptr %i.f, align 8, !alias.scope !392
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.e, label %_RNvXsJ_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB13_6stream6StreamEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs3614Yh7QWq_13libp2p_stream.exit.i

_RNvXsJ_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB13_6stream6StreamEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs3614Yh7QWq_13libp2p_stream.exit.i: ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %i.m = load i64, ptr %i.l, align 8, !range !5, !alias.scope !396, !noalias !393, !noundef !4
  %i.n = trunc nuw i64 %i.m to i1                 ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.i, i64 -40
  %.val.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !396, !noalias !393, !nonnull !4, !noundef !4 ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %i.i, i64 -32
  %.val1.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !396, !noalias !393
  br i1 %i.n, label %bb.c, label %bb.j

bb.c:                                             ; preds = %_RNvXsJ_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB13_6stream6StreamEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs3614Yh7QWq_13libp2p_stream.exit.i
  %i.q = atomicrmw add ptr %.val.i.i.i, i64 1 monotonic, align 8, !noalias !397
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.val.pre = load i64, ptr %i.f, align 8
  br label %bb.j

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.b, %bb.a
  store i64 0, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.t, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysBR_INtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBV_6stream6StreamEEEEE11spec_extendCs3614Yh7QWq_13libp2p_stream.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.g:                                             ; preds = %bb.k, %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.n, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit

bb.h:                                             ; preds = %bb.g
  %i.v = atomicrmw add ptr %.val.i.i.i, i64 -1 release, align 8, !noalias !398
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit unwind label %bb.v

bb.j:                                             ; preds = %._crit_edge, %_RNvXsJ_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB13_6stream6StreamEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs3614Yh7QWq_13libp2p_stream.exit.i
  %.val = phi i64 [ %i.k, %_RNvXsJ_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB13_6stream6StreamEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs3614Yh7QWq_13libp2p_stream.exit.i ], [ %.val.pre, %._crit_edge ]
  %i.x = phi i64 [ 0, %_RNvXsJ_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB13_6stream6StreamEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs3614Yh7QWq_13libp2p_stream.exit.i ], [ 1, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.x, ptr %i.d, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %.val.i.i.i, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.val1.i.i.i, ptr %.sroa.8.0..sroa_idx, align 8
  %i.y = tail call i64 @llvm.uadd.sat.i64(i64 %.val, i64 1)
  %..i = tail call noundef range(i64 4, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.y, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %..i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc5 unwind label %bb.g

.noexc5:                                          ; preds = %bb.j
  %i.z = load i64, ptr %i.b, align 8, !range !5, !noundef !4
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !10, !noundef !4 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.aa, label %bb.k, label %bb.l, !prof !7

bb.k:                                             ; preds = %.noexc5
  %i.ae = load i64, ptr %i.ad, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ac, i64 %i.ae) #23
          to label %.noexc6 unwind label %bb.g

.noexc6:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %.noexc5
  %i.af = load ptr, ptr %i.ad, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ag = icmp ule i64 %..i, %i.ac
  tail call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i64 %i.ac, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.af, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 5 uses
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !403, !noundef !4
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysBR_INtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBV_6stream6StreamEEEEE11spec_extendCs3614Yh7QWq_13libp2p_stream.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.m

bb.m:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolE7reserveCs3614Yh7QWq_13libp2p_stream.exit.i.i, %.lr.ph.i.i
  %i.ak = invoke noundef ptr @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBZ_6stream6StreamEEEE9next_implKb0_ECs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.noexc7 unwind label %bb.u    ; 4 uses

.noexc7:                                          ; preds = %bb.m
  %i.al = load i64, ptr %i.ah, align 8, !alias.scope !403, !noundef !4
  %i.am = add i64 %i.al, -1
  store i64 %i.am, ptr %i.ah, align 8, !alias.scope !403
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysBR_INtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBV_6stream6StreamEEEEE11spec_extendCs3614Yh7QWq_13libp2p_stream.exit, label %_RNvXsJ_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB13_6stream6StreamEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs3614Yh7QWq_13libp2p_stream.exit.i.i.i

_RNvXsJ_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB13_6stream6StreamEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs3614Yh7QWq_13libp2p_stream.exit.i.i.i: ; preds = %.noexc7
  %i.an = getelementptr inbounds i8, ptr %i.ak, i64 -48
  call void @llvm.experimental.noalias.scope.decl(metadata !404)
  call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %i.ao = load i64, ptr %i.an, align 8, !range !5, !alias.scope !406, !noalias !407, !noundef !4
  %i.ap = trunc nuw i64 %i.ao to i1               ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ak, i64 -40
  %.val.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !406, !noalias !407, !nonnull !4, !noundef !4 ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %i.ak, i64 -32
  %.val1.i.i.i.i.i = load i64, ptr %i.ar, align 8, !alias.scope !406, !noalias !407
  br i1 %i.ap, label %bb.n, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB1W_6stream6StreamEEEENtNtNtB8_6traits8iterator8Iterator4nextCs3614Yh7QWq_13libp2p_stream.exit.i.i

bb.n:                                             ; preds = %_RNvXsJ_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB13_6stream6StreamEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs3614Yh7QWq_13libp2p_stream.exit.i.i.i
  %i.as = atomicrmw add ptr %.val.i.i.i.i.i, i64 1 monotonic, align 8, !noalias !408
  %i.at = icmp slt i64 %i.as, 0
  br i1 %i.at, label %bb.o, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB1W_6stream6StreamEEEENtNtNtB8_6traits8iterator8Iterator4nextCs3614Yh7QWq_13libp2p_stream.exit.i.i

bb.o:                                             ; preds = %bb.n
  call void @llvm.trap()
  unreachable

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB1W_6stream6StreamEEEENtNtNtB8_6traits8iterator8Iterator4nextCs3614Yh7QWq_13libp2p_stream.exit.i.i: ; preds = %bb.n, %_RNvXsJ_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB13_6stream6StreamEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs3614Yh7QWq_13libp2p_stream.exit.i.i.i
  %i.au = phi i64 [ 0, %_RNvXsJ_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB13_6stream6StreamEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs3614Yh7QWq_13libp2p_stream.exit.i.i.i ], [ 1, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !409
  store i64 %i.au, ptr %i.a, align 8, !noalias !409
  store ptr %.val.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !409
  store i64 %.val1.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !409
  %i.av = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !410, !noundef !4 ; 5 uses
  %i.aw = icmp ult i64 %i.av, 384307168202282326
  call void @llvm.assume(i1 %i.aw)
  %i.ax = load i64, ptr %i.e, align 8, !range !9, !alias.scope !410, !noundef !4
  %i.ay = icmp eq i64 %i.av, %i.ax
  br i1 %i.ay, label %bb.s, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolE7reserveCs3614Yh7QWq_13libp2p_stream.exit.i.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolE7reserveCs3614Yh7QWq_13libp2p_stream.exit.i.i: ; preds = %bb.s, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB1W_6stream6StreamEEEENtNtNtB8_6traits8iterator8Iterator4nextCs3614Yh7QWq_13libp2p_stream.exit.i.i
  %i.az = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !410, !nonnull !4, !noundef !4
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.bb = add nuw nsw i64 %i.av, 1
  store i64 %i.bb, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !409
  %i.bc = load i64, ptr %i.ah, align 8, !alias.scope !403, !noundef !4
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysBR_INtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBV_6stream6StreamEEEEE11spec_extendCs3614Yh7QWq_13libp2p_stream.exit, label %bb.m

bb.p:                                             ; preds = %bb.s
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.ap, label %bb.q, label %.body

bb.q:                                             ; preds = %bb.p
  %i.bf = atomicrmw add ptr %.val.i.i.i.i.i, i64 -1 release, align 8, !noalias !411
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.r, label %.body

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i) #20
          to label %.body unwind label %bb.t

bb.s:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB1W_6stream6StreamEEEENtNtNtB8_6traits8iterator8Iterator4nextCs3614Yh7QWq_13libp2p_stream.exit.i.i
  %.val.i.i = load i64, ptr %i.ah, align 8, !alias.scope !412, !noundef !4
  %i.bh = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i, i64 1)
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.av, i64 noundef range(i64 1, 0) %i.bh, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolE7reserveCs3614Yh7QWq_13libp2p_stream.exit.i.i unwind label %bb.p

bb.t:                                             ; preds = %bb.r
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.u:                                             ; preds = %bb.m
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.q, %bb.r, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.bj, %bb.u ], [ %i.be, %bb.r ], [ %i.be, %bb.q ], [ %i.be, %bb.p ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit unwind label %bb.v

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysBR_INtNtCsgV0iE8Xkxiy_15futures_channel4mpsc6SenderTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtBV_6stream6StreamEEEEE11spec_extendCs3614Yh7QWq_13libp2p_stream.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolE7reserveCs3614Yh7QWq_13libp2p_stream.exit.i.i, %.noexc7, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.f

bb.v:                                             ; preds = %bb.i, %.body
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs3614Yh7QWq_13libp2p_stream.exit: ; preds = %bb.h, %bb.g, %bb.i, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.u, %bb.i ], [ %i.u, %bb.g ], [ %i.u, %bb.h ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCs3614Yh7QWq_13libp2p_stream7controlNtB5_15OpenStreamErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i64, ptr %0, align 8, !range !413, !noundef !4
  %i.f = icmp eq i64 %i.e, 2
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_7Display3fmtCs3614Yh7QWq_13libp2p_stream, ptr %.sroa.43.0..sroa_idx, align 8
  %i.h = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !align !11, !noundef !4
  %i.k = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, ptr noundef nonnull @10, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolNtB6_7Display3fmtCs3614Yh7QWq_13libp2p_stream, ptr %.sroa.47.0..sroa_idx, align 8
  %i.l = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !align !11, !noundef !4
  %i.o = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noundef nonnull @9, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.1.in = phi i1 [ %i.k, %bb.b ], [ %i.o, %bb.c ]
  ret i1 %.sroa.0.1.in
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtCs3614Yh7QWq_13libp2p_stream7upgradeNtB5_7UpgradeINtNtCsdTHTBGblh3Z_11libp2p_core7upgrade15OutboundUpgradeNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamE16upgrade_outbound(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) initializes((0, 160)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(136) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull align 8 dereferenceable(136) %2, i64 136, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 160, i1 false)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %.val = load i8, ptr %i.a, align 1, !range !414, !noundef !4 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs3614Yh7QWq_13libp2p_stream, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs3614Yh7QWq_13libp2p_stream.36, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_7Display3fmtCs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !11, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtCs3614Yh7QWq_13libp2p_stream7controlNtB5_15IncomingStreamsNtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_next(ptr dead_on_unwind noalias nofree noundef writable sret([216 x i8]) align 8 captures(address) dereferenceable(216) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsu_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamEENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_nextCs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull sret([216 x i8]) align 8 captures(address) dereferenceable(216) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtCs3614Yh7QWq_13libp2p_stream7upgradeNtB4_7UpgradeINtNtCsdTHTBGblh3Z_11libp2p_core7upgrade14InboundUpgradeNtNtCs6b9j1MKPRPC_12libp2p_swarm6stream6StreamE15upgrade_inbound(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) initializes((0, 160)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(136) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull align 8 dereferenceable(136) %2, i64 136, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 160, i1 false)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolEECs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !11, !noundef !4
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCs9Bqz0CSWZZv_12tracing_core5fieldINtB5_12DisplayValueRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtB5_5Value6recordCs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !4, !nonnull !4
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17) #24
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCs9Bqz0CSWZZv_12tracing_core5fieldINtB5_12DisplayValueRNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdENtB5_5Value6recordCs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !4, !nonnull !4
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18) #24
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCs9Bqz0CSWZZv_12tracing_core5fieldINtB5_12DisplayValueRNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolENtB5_5Value6recordCs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !4, !nonnull !4
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19) #24
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsu_NtCs9Bqz0CSWZZv_12tracing_core5fieldINtB5_12DisplayValueRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtB6_7Display3fmtCs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsu_NtCs9Bqz0CSWZZv_12tracing_core5fieldINtB5_12DisplayValueRNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs3614Yh7QWq_13libp2p_stream(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
end_hunk_2

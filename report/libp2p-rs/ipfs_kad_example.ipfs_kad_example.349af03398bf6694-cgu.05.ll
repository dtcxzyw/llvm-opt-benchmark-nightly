Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/ipfs_kad_example.ipfs_kad_example.349af03398bf6694-cgu.05?download=true
inline.NumInlined: 1339
inline.NumDeleted: 543
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RINvMs0_NtCskC4O4hr3vz7_10libp2p_kad9behaviourINtB6_9BehaviourNtNtNtNtB8_6record5store6memory11MemoryStoreE10discoveredINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtB8_8protocol7KadPeerEECs4w110Okq5IC_16ipfs_kad_example:bb.a
  store i64 0, ptr %i.a, align 8, !noalias !22
  invoke void @_RINvXst_CsczYENlYh6wI_8smallvecINtB6_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj8_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1u_8adapters6cloned6ClonedINtNtNtB1w_5slice4iter4IterBJ_EEECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %i.a, ptr noundef nonnull %i.eu, ptr noundef nonnull %i.ex)
          to label %_RINvXss_CsczYENlYh6wI_8smallvecINtB6_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj8_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtB1u_8adapters6cloned6ClonedINtNtNtB1w_5slice4iter4IterBJ_EEECs4w110Okq5IC_16ipfs_kad_example.exit unwind label %bb.ad, !noalias !22

bb.ad:                                            ; preds = %bb.ac
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj8_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj8_EECs4w110Okq5IC_16ipfs_kad_example.exit.i unwind label %bb.ae, !noalias !22

bb.ae:                                            ; preds = %bb.ad
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj8_EECs4w110Okq5IC_16ipfs_kad_example.exit.i: ; preds = %bb.ad
  resume { ptr, i32 } %i.ey

_RINvXss_CsczYENlYh6wI_8smallvecINtB6_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj8_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtB1u_8adapters6cloned6ClonedINtNtNtB1w_5slice4iter4IterBJ_EEECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.h, ptr noundef nonnull align 8 dereferenceable(272) %i.a, i64 272, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.fa = load ptr, ptr %i.v, align 8, !nonnull !6, !align !8, !noundef !6
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %i.fb, i64 80, i1 false)
  call void @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtCsczYENlYh6wI_8smallvec8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj8_EINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsdGSEQAGM4BA_3fnv9FnvHasherEE6insertCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([272 x i8]) align 8 captures(none) dereferenceable(272) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cn, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(80) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(272) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.fc = load i64, ptr %i.g, align 8, !range !5, !alias.scope !25, !noundef !6
  %i.fd = icmp eq i64 %i.fc, 2
  br i1 %i.fd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsczYENlYh6wI_8smallvec8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj8_EEECs4w110Okq5IC_16ipfs_kad_example.exit, label %bb.af

bb.af:                                            ; preds = %_RINvXss_CsczYENlYh6wI_8smallvecINtB6_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj8_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtB1u_8adapters6cloned6ClonedINtNtNtB1w_5slice4iter4IterBJ_EEECs4w110Okq5IC_16ipfs_kad_example.exit
  call void @_RNvXsw_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj8_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %i.g)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsczYENlYh6wI_8smallvec8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj8_EEECs4w110Okq5IC_16ipfs_kad_example.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsczYENlYh6wI_8smallvec8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj8_EEECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %_RINvXss_CsczYENlYh6wI_8smallvecINtB6_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj8_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtB1u_8adapters6cloned6ClonedINtNtNtB1w_5slice4iter4IterBJ_EEECs4w110Okq5IC_16ipfs_kad_example.exit, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %.backedge

bb.ag:                                            ; preds = %bb.w, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCINvMs0_NtBU_9behaviourINtB2w_9BehaviourNtNtNtNtBU_6record5store6memory11MemoryStoreE10discoveredBF_E0ECs4w110Okq5IC_16ipfs_kad_example.exit, %bb.u, %bb.v
  %i.fe = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not41 = icmp eq i8 %i.fe, 0
  br i1 %.not41, label %bb.ah, label %bb.ac

bb.ah:                                            ; preds = %bb.ag
  %i.ff = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.fg = icmp ult i64 %i.ff, 6
  call void @llvm.assume(i1 %i.fg)
  %i.fh = icmp samesign ugt i64 %i.ff, 4
  br i1 %i.fh, label %bb.ai, label %bb.ac

bb.ai:                                            ; preds = %bb.ah
  %i.fi = load ptr, ptr @_RNvNvMs0_NtCskC4O4hr3vz7_10libp2p_kad9behaviourINtB7_9BehaviourpE10discovereds_10___CALLSITE, align 8, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  %i.fk = load ptr, ptr %i.fj, align 8, !nonnull !6, !noundef !6
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  %i.fm = load i64, ptr %i.fl, align 8, !noundef !6
  store i64 5, ptr %i.o, align 8
  store ptr %i.fk, ptr %i.cc, align 8
  store i64 %i.fm, ptr %i.cd, align 8
  %i.fn = call { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger() ; 2 uses
  %i.fo = extractvalue { ptr, ptr } %i.fn, 0      ; 2 uses
  %i.fp = extractvalue { ptr, ptr } %i.fn, 1      ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8, !invariant.load !6, !nonnull !6
  %i.fs = call noundef zeroext i1 %i.fr(ptr noundef %i.fo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o) #25
  br i1 %i.fs, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ft = load ptr, ptr @_RNvNvMs0_NtCskC4O4hr3vz7_10libp2p_kad9behaviourINtB7_9BehaviourpE10discovereds_10___CALLSITE, align 8, !nonnull !6, !align !8, !noundef !6
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store <2 x ptr> <ptr @4, ptr inttoptr (i64 65 to ptr)>, ptr %i.l, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.v, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.ai, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.aj, ptr %i.i, align 8
  store ptr %i.l, ptr %i.m, align 8
  store ptr @1, ptr %i.ce, align 8
  store ptr %i.k, ptr %i.cf, align 8
  store ptr @5, ptr %i.cg, align 8
  store ptr %i.j, ptr %i.ch, align 8
  store ptr @2, ptr %i.ci, align 8
  store ptr %i.i, ptr %i.cj, align 8
  store ptr @3, ptr %i.ck, align 8
  store i64 1, ptr %i.n, align 8
  store ptr %i.m, ptr %.sroa.435.0..sroa_idx, align 8
  store i64 4, ptr %.sroa.536.0..sroa_idx, align 8
  store ptr %i.fu, ptr %i.cl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fi, ptr noundef nonnull %i.fo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fp, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ac
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvMs0_NtCskC4O4hr3vz7_10libp2p_kad9behaviourINtB6_9BehaviourNtNtNtNtB8_6record5store6memory11MemoryStoreE17get_closest_peersNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(1264) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [248 x i8], align 8               ; 4 uses
  %i.b = alloca [2496 x i8], align 8              ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [248 x i8], align 8               ; 9 uses
  %i.e = alloca [80 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [112 x i8], align 8               ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !31
  call void @_RNvXs1_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyINtB5_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEINtNtCskKLDkoKarTP_4core7convert4FromBV_E4from(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1), !noalias !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(80) %1, i64 80, i1 false), !noalias !28
  call void @_RNvXs7_NtCs2iisHxfqoT7_15libp2p_identity7peer_idINtNtCsexYYUdYSQU6_5alloc3vec3VechEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_6PeerIdE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.e), !noalias !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !31
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !31
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 1, ptr %i.i, align 8, !noalias !31
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i8 0, ptr %i.j, align 8, !noalias !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 20, ptr %i.k, align 8, !noalias !31
  store i64 3, ptr %i.d, align 8, !noalias !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !31
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_RINvMs1_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB6_13KBucketsTableINtNtB6_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB8_9addresses9AddressesE12closest_keysB11_ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([2496 x i8]) align 8 captures(none) dereferenceable(2496) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.g)
          to label %bb.b unwind label %bb.c, !noalias !33

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEINtB2_12SpecFromIterBU_INtBZ_11ClosestIterBU_BU_NtNtB11_9addresses9AddressesNCINvMs1_BZ_INtBZ_13KBucketsTableBU_B3j_E12closest_keysBU_E0BU_EE9from_iterCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(2496) %i.b)
          to label %_RINvMs0_NtCskC4O4hr3vz7_10libp2p_kad9behaviourINtB6_9BehaviourNtNtNtNtB8_6record5store6memory11MemoryStoreE23get_closest_peers_innerNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECs4w110Okq5IC_16ipfs_kad_example.exit unwind label %bb.c, !noalias !33

bb.c:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad9behaviour9QueryInfoECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(248) %i.d) #27
          to label %bb.e unwind label %bb.d, !noalias !33

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !33
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %lpad.thr_comm.i

_RINvMs0_NtCskC4O4hr3vz7_10libp2p_kad9behaviourINtB6_9BehaviourNtNtNtNtB8_6record5store6memory11MemoryStoreE23get_closest_peers_innerNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.a, ptr noundef nonnull align 8 dereferenceable(248) %i.d, i64 248, i1 false), !noalias !31
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !28, !noalias !33, !noundef !6 ; 3 uses
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.o, align 8, !alias.scope !28, !noalias !33
  call void @_RINvMNtCskC4O4hr3vz7_10libp2p_kad5queryNtB3_9QueryPool21continue_iter_closestINtNtNtB5_7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEINtNtCsexYYUdYSQU6_5alloc3vec3VecB1d_EECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.n, i64 noundef %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(248) %i.a), !noalias !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !31
  ret i64 %i.p
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB5_16ClosestPeersIter10on_successINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = alloca [64 x i8], align 8                ; 6 uses
  %i.h = alloca [128 x i8], align 8               ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [112 x i8], align 8               ; 5 uses
  %i.k = alloca [80 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [80 x i8], align 8                ; 15 uses
  %.sroa.3 = alloca ptr, align 8                  ; 6 uses
  %.sroa.7 = alloca ptr, align 8                  ; 3 uses
  %i.n = alloca [32 x i8], align 8                ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [64 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 6 uses
  %i.r = alloca [112 x i8], align 8               ; 5 uses
  %i.s = load i64, ptr %0, align 8, !range !5, !noundef !6
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = icmp eq i64 %i.s, 2
  br i1 %i.u, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_RNvXs1_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyINtB5_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEINtNtCskKLDkoKarTP_4core7convert4FromBV_E4from(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1)
          to label %bb.f unwind label %bb.am

bb.c:                                             ; preds = %bb.a, %bb.j
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEECs4w110Okq5IC_16ipfs_kad_example.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

common.resume:                                    ; preds = %bb.am, %bb.w, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.d ], [ %i.bx, %bb.w ], [ %lpad.thr_comm, %bb.am ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.c
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.ab

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  invoke void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.x)
          to label %bb.g unwind label %bb.am

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  invoke void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1d_5query5peers7closest4PeerE5entryCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.c)
          to label %bb.h unwind label %bb.am

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.z = load ptr, ptr %i.p, align 8, !noundef !6
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ad = load ptr, ptr %i.o, align 8, !nonnull !6, !noundef !6
  store ptr %i.ad, ptr %i.e, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.af = load <2 x i64>, ptr %i.ac, align 8
  store <2 x i64> %i.af, ptr %i.ae, align 8
  %i.ag = invoke { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1K_5query5peers7closest4PeerNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e)
          to label %bb.k unwind label %bb.am

bb.j:                                             ; preds = %bb.h, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.c

bb.k:                                             ; preds = %bb.i
  %i.ah = extractvalue { ptr, ptr } %i.ag, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 120
  %i.aj = load i32, ptr %i.ai, align 8, !range !34, !noundef !6 ; 3 uses
  %i.ak = icmp ne i32 %i.aj, 1000000001
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nsw i32 %i.aj, -1000000000
  %i.am = icmp samesign ugt i32 %i.aj, 999999999
  %narrow = select i1 %i.am, i32 %i.al, i32 1
  switch i32 %narrow, label %bb.l [
    i32 0, label %bb.m
    i32 1, label %bb.n
    i32 2, label %.invoke
    i32 3, label %bb.m
    i32 4, label %bb.m
  ]

default.unreachable82:                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4w110Okq5IC_16ipfs_kad_example.exit
  unreachable

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.k, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.j

bb.n:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !noundef !6
  %i.ap = add i64 %i.ao, -1
  store i64 %i.ap, ptr %i.an, align 8
  br label %.invoke

.invoke:                                          ; preds = %bb.k, %bb.n
  %i.aq = invoke { ptr, ptr } @_RNvMsS_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1I_5query5peers7closest4PeerNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.o unwind label %bb.am

bb.o:                                             ; preds = %.invoke
  %i.ar = extractvalue { ptr, ptr } %i.aq, 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 120
  store i32 1000000004, ptr %i.as, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !range !35, !noundef !6 ; 2 uses
  %i.aw = add i64 %i.av, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ax = load ptr, ptr %i.y, align 8, !noundef !6 ; 3 uses
  %.not = icmp ne ptr %i.ax, null                 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8
  %.sroa.05.sroa.0.0 = zext i1 %.not to i64       ; 2 uses
  %.sroa.05.sroa.5.sroa.6.0 = select i1 %.not, i64 %i.az, i64 undef ; 2 uses
  %.sroa.56.0 = select i1 %.not, i64 %i.bb, i64 0
  store i64 %.sroa.05.sroa.0.0, ptr %i.m, align 8
  %.sroa.05.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr null, ptr %.sroa.05.sroa.5.0..sroa_idx, align 8
  %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.ax, ptr %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %.sroa.05.sroa.5.sroa.6.0, ptr %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 %.sroa.05.sroa.0.0, ptr %.sroa.05.sroa.6.0..sroa_idx, align 8
  %.sroa.05.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr null, ptr %.sroa.05.sroa.7.0..sroa_idx, align 8
  %.sroa.05.sroa.7.sroa.5.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.ax, ptr %.sroa.05.sroa.7.sroa.5.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.7.sroa.6.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i64 %.sroa.05.sroa.5.sroa.6.0, ptr %.sroa.05.sroa.7.sroa.6.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store i64 %.sroa.56.0, ptr %.sroa.56.0..sroa_idx, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 72 ; 3 uses
  store i64 0, ptr %i.bc, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.bd = invoke noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB2e_5query5peers7closest4PeerENtB4_13SpecAdvanceBy15spec_advance_byCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.m, i64 noundef range(i64 0, -1) %i.aw)
          to label %.noexc unwind label %bb.am

.noexc:                                           ; preds = %bb.o
  %.not.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i, label %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit.i, label %bb.q

_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit.i: ; preds = %.noexc
  %i.be = invoke { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB19_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.m)
          to label %.noexc53 unwind label %bb.am  ; 2 uses

.noexc53:                                         ; preds = %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit.i
  %i.bf = extractvalue { ptr, ptr } %i.be, 0      ; 2 uses
  %.not.i = icmp eq ptr %i.bf, null
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.noexc53
  %i.bg = extractvalue { ptr, ptr } %i.be, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  %i.bh = load i64, ptr %i.bc, align 8, !alias.scope !39, !noalias !36, !noundef !6
  %i.bi = add i64 %i.bh, %i.av
  store i64 %i.bi, ptr %i.bc, align 8, !alias.scope !39, !noalias !36
  store ptr %i.bf, ptr %.sroa.3, align 8, !alias.scope !36, !noalias !39
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.noexc53, %.noexc
  %.sink9.i.sroa.phi = phi ptr [ %.sroa.7, %bb.p ], [ %.sroa.3, %.noexc ], [ %.sroa.3, %.noexc53 ]
  %.sink.i = phi ptr [ %i.bg, %bb.p ], [ null, %.noexc ], [ null, %.noexc53 ]
  store ptr %.sink.i, ptr %.sink9.i.sroa.phi, align 8, !alias.scope !36, !noalias !39
  %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8. = load ptr, ptr %.sroa.3, align 8, !noundef !6 ; 2 uses
  %.not46 = icmp eq ptr %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8., null
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  br i1 %.not46, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !47
  %i.bj = load ptr, ptr %i.y, align 8, !alias.scope !49, !noalias !50, !noundef !6 ; 3 uses
  %.not.i.i55 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i55, label %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0Cs4w110Okq5IC_16ipfs_kad_example.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = load i64, ptr %i.ay, align 8, !alias.scope !49, !noalias !50, !noundef !6 ; 2 uses
  %i.bl = load i64, ptr %i.ba, align 8, !alias.scope !49, !noalias !50, !noundef !6
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !47
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.bj, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !47
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.bk, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !47
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !47
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.bj, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !47
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.bk, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !47
  br label %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0Cs4w110Okq5IC_16ipfs_kad_example.exit.i

_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0Cs4w110Okq5IC_16ipfs_kad_example.exit.i: ; preds = %bb.t, %bb.s
  %.sink19.i.i = phi i64 [ 1, %bb.t ], [ 0, %bb.s ] ; 2 uses
  %.sink.i.i = phi i64 [ %i.bl, %bb.t ], [ 0, %bb.s ]
  store i64 %.sink19.i.i, ptr %i.a, align 8, !noalias !47
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sink19.i.i, ptr %i.bm, align 8, !noalias !47
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sink.i.i, ptr %i.bn, align 8, !noalias !47
  %i.bo = invoke { ptr, ptr } @_RNvXsm_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB19_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0ECs4w110Okq5IC_16ipfs_kad_example.exit unwind label %bb.am

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0ECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0Cs4w110Okq5IC_16ipfs_kad_example.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !47
  %3 = extractvalue { ptr, ptr } %i.bo, 0         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.not47 = icmp eq ptr %3, null
  br i1 %.not47, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.r, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0ECs4w110Okq5IC_16ipfs_kad_example.exit
  %.merged.i85 = phi ptr [ %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8., %bb.r ], [ %3, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0ECs4w110Okq5IC_16ipfs_kad_example.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %.merged.i85, i64 32, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0ECs4w110Okq5IC_16ipfs_kad_example.exit, %bb.u
  %i.bp = load i64, ptr %i.ba, align 8, !noundef !6
  %i.bq = load i64, ptr %i.au, align 8, !range !35, !noundef !6
  %.sroa.065.0.copyload = load i64, ptr %2, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.466.0.copyload = load ptr, ptr %.sroa.466.0..sroa_idx, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.567.0.copyload = load i64, ptr %.sroa.567.0..sroa_idx, align 8 ; 3 uses
  %i.br = icmp ult i64 %.sroa.567.0.copyload, 115292150460684698
  call void @llvm.assume(i1 %i.br)
  %.idx = mul nuw nsw i64 %.sroa.567.0.copyload, 80
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 %.idx
  %i.bt = icmp ult i64 %i.bp, %i.bq
  %i.bu = zext i1 %i.bt to i8                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %.sroa.466.0.copyload, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  store ptr %.sroa.466.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %.sroa.065.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  store ptr %i.bs, ptr %.sroa.6.0..sroa_idx, align 8
  %i.bv = icmp eq i64 %.sroa.567.0.copyload, 0
  br i1 %i.bv, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4w110Okq5IC_16ipfs_kad_example.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  br label %bb.x

bb.w:                                             ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.ad, %bb.ac, %bb.x
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %common.resume unwind label %bb.al

bb.x:                                             ; preds = %.lr.ph, %bb.ak
  %i.by = phi ptr [ %.sroa.466.0.copyload, %.lr.ph ], [ %i.cm, %bb.ak ] ; 2 uses
  %.sroa.07.079 = phi i8 [ %i.bu, %.lr.ph ], [ %.sroa.07.1, %bb.ak ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 80
  store ptr %i.bz, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !51, !noalias !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.k, ptr noundef nonnull align 8 dereferenceable(80) %i.by, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvXs1_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyINtB5_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEINtNtCskKLDkoKarTP_4core7convert4FromBV_E4from(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.k)
          to label %bb.ac unwind label %bb.w

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.ak, %bb.v
  %.sroa.07.0.lcssa = phi i8 [ %i.bu, %bb.v ], [ %.sroa.07.1, %bb.ak ] ; 2 uses
  call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.ca = load i64, ptr %0, align 8, !range !5, !noundef !6 ; 2 uses
  switch i64 %i.ca, label %default.unreachable82 [
    i64 0, label %bb.y
    i64 1, label %bb.z
    i64 2, label %bb.aa
  ]

bb.y:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4w110Okq5IC_16ipfs_kad_example.exit
  %i.cb = trunc nuw i8 %.sroa.07.0.lcssa to i1
  %i.cc = load i64, ptr %i.t, align 8
  %i.cd = add i64 %i.cc, 1
  %.sroa.011.0 = select i1 %i.cb, i64 0, i64 %i.cd ; 2 uses
  %i.ce = load i64, ptr %i.at, align 8, !range !35, !noundef !6
  %.not48 = icmp uge i64 %.sroa.011.0, %i.ce
  %spec.select52 = zext i1 %.not48 to i64
  br label %bb.aa

bb.z:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4w110Okq5IC_16ipfs_kad_example.exit
  %i.cf = xor i8 %.sroa.07.0.lcssa, 1
  %.50 = zext nneg i8 %i.cf to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4w110Okq5IC_16ipfs_kad_example.exit, %bb.z
  %.sroa.8.0 = phi i64 [ %.sroa.011.0, %bb.y ], [ undef, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4w110Okq5IC_16ipfs_kad_example.exit ], [ 0, %bb.z ]
  %.sroa.010.0 = phi i64 [ %spec.select52, %bb.y ], [ %i.ca, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4w110Okq5IC_16ipfs_kad_example.exit ], [ %.50, %bb.z ]
  store i64 %.sroa.010.0, ptr %0, align 8
  store i64 %.sroa.8.0, ptr %i.t, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEECs4w110Okq5IC_16ipfs_kad_example.exit
  %.sroa.0.2 = phi i1 [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEECs4w110Okq5IC_16ipfs_kad_example.exit ], [ true, %bb.aa ]
  ret i1 %.sroa.0.2

bb.ac:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceINtB6_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.j)
          to label %bb.ad unwind label %bb.w

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.h, ptr noundef nonnull align 8 dereferenceable(112) %i.j, i64 112, i1 false)
  store i32 1000000000, ptr %i.bw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  invoke void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1d_5query5peers7closest4PeerE5entryCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.ae unwind label %bb.w

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cg = load ptr, ptr %i.g, align 8, !noundef !6
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ak

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs4_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1p_5query5peers7closest4PeerE12insert_entryCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %i.h)
          to label %bb.ah unwind label %bb.w

bb.ah:                                            ; preds = %bb.ag
  %i.ci = invoke noundef nonnull align 8 ptr @_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1r_5query5peers7closest4PeerE8into_mutCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.d)
          to label %bb.ai unwind label %bb.w      ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cj = invoke noundef i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %bb.aj unwind label %bb.w

bb.aj:                                            ; preds = %bb.ai
  %i.ck = icmp slt i8 %i.cj, 0
  %spec.select = select i1 %i.ck, i8 1, i8 %.sroa.07.079
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.af
  %.sroa.07.1 = phi i8 [ %.sroa.07.079, %bb.af ], [ %spec.select, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.cl = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !56, !noalias !54, !nonnull !6, !noundef !6
  %i.cm = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !56, !noalias !54, !nonnull !6, !noundef !6 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.cl
  br i1 %i.cn, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4w110Okq5IC_16ipfs_kad_example.exit, label %bb.x

bb.al:                                            ; preds = %bb.w, %bb.am
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.am:                                            ; preds = %.invoke, %bb.o, %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0Cs4w110Okq5IC_16ipfs_kad_example.exit.i, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit.i, %bb.i, %bb.g, %bb.f, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) #27
          to label %common.resume unwind label %bb.al
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB5_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [80 x i8], align 8                ; 14 uses
  %.sroa.3 = alloca ptr, align 8                  ; 6 uses
  %.sroa.7 = alloca ptr, align 8                  ; 3 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [64 x i8], align 8                ; 6 uses
  %i.g = alloca [112 x i8], align 8               ; 4 uses
  %i.h = load i64, ptr %0, align 8, !range !5, !noundef !6
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = icmp eq i64 %i.h, 2
  br i1 %i.j, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvXs1_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyINtB5_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEINtNtCskKLDkoKarTP_4core7convert4FromBV_E4from(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  call void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1d_5query5peers7closest4PeerE5entryCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.m = load ptr, ptr %i.f, align 8, !noundef !6
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.q = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6
  store ptr %i.q, ptr %i.c, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = load <2 x i64>, ptr %i.p, align 8
  store <2 x i64> %i.s, ptr %i.r, align 8
  %i.t = call { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1K_5query5peers7closest4PeerNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
  %i.u = extractvalue { ptr, ptr } %i.t, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  %i.w = load i32, ptr %i.v, align 8, !range !34, !noundef !6 ; 3 uses
  %i.x = icmp ne i32 %i.w, 1000000001
  call void @llvm.assume(i1 %i.x)
  %i.y = add nsw i32 %i.w, -1000000000
  %i.z = icmp samesign ugt i32 %i.w, 999999999
  %narrow = select i1 %i.z, i32 %i.y, i32 1
  switch i32 %narrow, label %bb.e [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.f
    i32 4, label %bb.f
  ]

bb.d:                                             ; preds = %bb.b, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.sink.split

default.unreachable56:                            ; preds = %.critedge
  unreachable

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.d

bb.g:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !6
  %i.ac = add i64 %i.ab, -1
  store i64 %i.ac, ptr %i.aa, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g
  %i.ad = call { ptr, ptr } @_RNvMsS_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1I_5query5peers7closest4PeerNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  %i.ae = extractvalue { ptr, ptr } %i.ad, 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  store i32 1000000004, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !range !35, !noundef !6 ; 2 uses
  %i.aj = add i64 %i.ai, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ak = load ptr, ptr %i.l, align 8, !noundef !6 ; 3 uses
  %.not = icmp ne ptr %i.ak, null                 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8
  %.sroa.05.sroa.0.0 = zext i1 %.not to i64       ; 2 uses
  %.sroa.05.sroa.5.sroa.6.0 = select i1 %.not, i64 %i.am, i64 undef ; 2 uses
  %.sroa.56.0 = select i1 %.not, i64 %i.ao, i64 0
  store i64 %.sroa.05.sroa.0.0, ptr %i.d, align 8
  %.sroa.05.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr null, ptr %.sroa.05.sroa.5.0..sroa_idx, align 8
  %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.ak, ptr %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.05.sroa.5.sroa.6.0, ptr %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %.sroa.05.sroa.0.0, ptr %.sroa.05.sroa.6.0..sroa_idx, align 8
  %.sroa.05.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr null, ptr %.sroa.05.sroa.7.0..sroa_idx, align 8
  %.sroa.05.sroa.7.sroa.5.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.ak, ptr %.sroa.05.sroa.7.sroa.5.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.7.sroa.6.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %.sroa.05.sroa.5.sroa.6.0, ptr %.sroa.05.sroa.7.sroa.6.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 %.sroa.56.0, ptr %.sroa.56.0..sroa_idx, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 3 uses
  store i64 0, ptr %i.ap, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.aq = call noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB2e_5query5peers7closest4PeerENtB4_13SpecAdvanceBy15spec_advance_byCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef range(i64 0, -1) %i.aj), !noalias !58
  %.not.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i, label %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit

_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit.i: ; preds = %bb.h
  %i.ar = call { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB19_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.d), !noalias !58 ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0      ; 2 uses
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit, label %bb.i

bb.i:                                             ; preds = %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit.i
  %i.at = extractvalue { ptr, ptr } %i.ar, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  %i.au = load i64, ptr %i.ap, align 8, !alias.scope !61, !noalias !58, !noundef !6
  %i.av = add i64 %i.au, %i.ai
  store i64 %i.av, ptr %i.ap, align 8, !alias.scope !61, !noalias !58
  store ptr %i.as, ptr %.sroa.3, align 8, !alias.scope !58, !noalias !61
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.h, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit.i, %bb.i
  %.sink9.i.sroa.phi = phi ptr [ %.sroa.7, %bb.i ], [ %.sroa.3, %bb.h ], [ %.sroa.3, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit.i ]
  %.sink.i = phi ptr [ %i.at, %bb.i ], [ null, %bb.h ], [ null, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit.i ]
  store ptr %.sink.i, ptr %.sink9.i.sroa.phi, align 8, !alias.scope !58, !noalias !61
  %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8. = load ptr, ptr %.sroa.3, align 8, !noundef !6
  %.not44 = icmp eq ptr %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8., null
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  br i1 %.not44, label %bb.j, label %.critedge

bb.j:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69
  %i.aw = load ptr, ptr %i.l, align 8, !alias.scope !71, !noalias !72, !noundef !6 ; 3 uses
  %.not.i.i51 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i51, label %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0Cs4w110Okq5IC_16ipfs_kad_example.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = load i64, ptr %i.al, align 8, !alias.scope !71, !noalias !72, !noundef !6 ; 2 uses
  %i.ay = load i64, ptr %i.an, align 8, !alias.scope !71, !noalias !72, !noundef !6
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !69
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.aw, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !69
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.ax, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !69
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !69
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.aw, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !69
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.ax, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !69
  br label %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0Cs4w110Okq5IC_16ipfs_kad_example.exit.i

_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0Cs4w110Okq5IC_16ipfs_kad_example.exit.i: ; preds = %bb.k, %bb.j
  %.sink19.i.i = phi i64 [ 1, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %.sink.i.i = phi i64 [ %i.ay, %bb.k ], [ 0, %bb.j ]
  store i64 %.sink19.i.i, ptr %i.a, align 8, !noalias !69
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sink19.i.i, ptr %i.az, align 8, !noalias !69
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sink.i.i, ptr %i.ba, align 8, !noalias !69
  %i.bb = call { ptr, ptr } @_RNvXsm_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB19_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a), !noalias !69 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69
  br label %.critedge

.critedge:                                        ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit, %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0Cs4w110Okq5IC_16ipfs_kad_example.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bc = load i64, ptr %i.an, align 8, !noundef !6
  %i.bd = load i64, ptr %i.ah, align 8, !range !35, !noundef !6
  %i.be = icmp uge i64 %i.bc, %i.bd               ; 2 uses
  %i.bf = load i64, ptr %0, align 8, !range !5, !noundef !6 ; 2 uses
  switch i64 %i.bf, label %default.unreachable56 [
    i64 0, label %bb.l
    i64 1, label %bb.m
    i64 2, label %bb.n
  ]

bb.l:                                             ; preds = %.critedge
  %i.bg = load i64, ptr %i.i, align 8
  %i.bh = add i64 %i.bg, 1
  %.sroa.011.0 = select i1 %i.be, i64 %i.bh, i64 0 ; 2 uses
  %i.bi = load i64, ptr %i.ag, align 8, !range !35, !noundef !6
  %.not46 = icmp uge i64 %.sroa.011.0, %i.bi
  %spec.select49 = zext i1 %.not46 to i64
  br label %bb.n

bb.m:                                             ; preds = %.critedge
  %.47 = zext i1 %i.be to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %.critedge, %bb.m
  %.sroa.8.0 = phi i64 [ %.sroa.011.0, %bb.l ], [ undef, %.critedge ], [ 0, %bb.m ]
  %.sroa.010.0 = phi i64 [ %spec.select49, %bb.l ], [ %i.bf, %.critedge ], [ %.47, %bb.m ]
  store i64 %.sroa.010.0, ptr %0, align 8
  store i64 %.sroa.8.0, ptr %i.i, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.d
  %.sroa.0.1.ph = phi i1 [ true, %bb.n ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.a
  %.sroa.0.1 = phi i1 [ false, %bb.a ], [ %.sroa.0.1.ph, %.sink.split ]
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB5_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1z_6filter6FilterINtNtB1z_5chain5ChainINtNtNtB1D_5slice4iter4IterNtNtBb_8protocol7KadPeerEB30_ENCINvMs0_NtBb_9behaviourINtB44_9BehaviourNtNtNtNtBb_6record5store6memory11MemoryStoreE10discoveredB2F_E0ENCB3X_s_0EECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = alloca [64 x i8], align 8                ; 6 uses
  %i.h = alloca [128 x i8], align 8               ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [112 x i8], align 8               ; 5 uses
  %.sroa.560 = alloca [80 x i8], align 8          ; 2 uses
  %i.k = alloca [80 x i8], align 8                ; 15 uses
  %.sroa.3 = alloca ptr, align 8                  ; 6 uses
  %.sroa.7 = alloca ptr, align 8                  ; 3 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [64 x i8], align 8                ; 6 uses
  %i.o = alloca [32 x i8], align 8                ; 5 uses
  %i.p = alloca [112 x i8], align 8               ; 4 uses
  %i.q = load i64, ptr %0, align 8, !range !5, !noundef !6
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = icmp eq i64 %i.q, 2
  br i1 %i.s, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvXs1_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyINtB5_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEINtNtCskKLDkoKarTP_4core7convert4FromBV_E4from(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  call void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1d_5query5peers7closest4PeerE5entryCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.v = load ptr, ptr %i.n, align 8, !noundef !6
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.z = load ptr, ptr %i.m, align 8, !nonnull !6, !noundef !6
  store ptr %i.z, ptr %i.e, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ab = load <2 x i64>, ptr %i.y, align 8
  store <2 x i64> %i.ab, ptr %i.aa, align 8
  %i.ac = call { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1K_5query5peers7closest4PeerNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e)
  %i.ad = extractvalue { ptr, ptr } %i.ac, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  %i.af = load i32, ptr %i.ae, align 8, !range !34, !noundef !6 ; 3 uses
  %i.ag = icmp ne i32 %i.af, 1000000001
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nsw i32 %i.af, -1000000000
  %i.ai = icmp samesign ugt i32 %i.af, 999999999
  %narrow = select i1 %i.ai, i32 %i.ah, i32 1
  switch i32 %narrow, label %bb.e [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.f
    i32 4, label %bb.f
  ]

bb.d:                                             ; preds = %bb.b, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %.sink.split

default.unreachable85:                            ; preds = %.loopexit
  unreachable

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.d

bb.g:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !6
  %i.al = add i64 %i.ak, -1
  store i64 %i.al, ptr %i.aj, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g
  %i.am = call { ptr, ptr } @_RNvMsS_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1I_5query5peers7closest4PeerNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
  %i.an = extractvalue { ptr, ptr } %i.am, 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 120
  store i32 1000000004, ptr %i.ao, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !range !35, !noundef !6 ; 2 uses
  %i.as = add i64 %i.ar, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.at = load ptr, ptr %i.u, align 8, !noundef !6 ; 3 uses
  %.not = icmp ne ptr %i.at, null                 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8
  %.sroa.05.sroa.0.0 = zext i1 %.not to i64       ; 2 uses
  %.sroa.05.sroa.5.sroa.6.0 = select i1 %.not, i64 %i.av, i64 undef ; 2 uses
  %.sroa.56.0 = select i1 %.not, i64 %i.ax, i64 0
  store i64 %.sroa.05.sroa.0.0, ptr %i.k, align 8
  %.sroa.05.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr null, ptr %.sroa.05.sroa.5.0..sroa_idx, align 8
  %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.at, ptr %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %.sroa.05.sroa.5.sroa.6.0, ptr %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i64 %.sroa.05.sroa.0.0, ptr %.sroa.05.sroa.6.0..sroa_idx, align 8
  %.sroa.05.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr null, ptr %.sroa.05.sroa.7.0..sroa_idx, align 8
  %.sroa.05.sroa.7.sroa.5.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store ptr %i.at, ptr %.sroa.05.sroa.7.sroa.5.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.7.sroa.6.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i64 %.sroa.05.sroa.5.sroa.6.0, ptr %.sroa.05.sroa.7.sroa.6.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i64 %.sroa.56.0, ptr %.sroa.56.0..sroa_idx, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 72 ; 3 uses
  store i64 0, ptr %i.ay, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.az = call noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB2e_5query5peers7closest4PeerENtB4_13SpecAdvanceBy15spec_advance_byCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.k, i64 noundef range(i64 0, -1) %i.as), !noalias !73
  %.not.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i.i, label %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit

_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit.i: ; preds = %bb.h
  %i.ba = call { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB19_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.k), !noalias !73 ; 2 uses
  %i.bb = extractvalue { ptr, ptr } %i.ba, 0      ; 2 uses
  %.not.i = icmp eq ptr %i.bb, null
  br i1 %.not.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit, label %bb.i

bb.i:                                             ; preds = %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit.i
  %i.bc = extractvalue { ptr, ptr } %i.ba, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  %i.bd = load i64, ptr %i.ay, align 8, !alias.scope !76, !noalias !73, !noundef !6
  %i.be = add i64 %i.bd, %i.ar
  store i64 %i.be, ptr %i.ay, align 8, !alias.scope !76, !noalias !73
  store ptr %i.bb, ptr %.sroa.3, align 8, !alias.scope !73, !noalias !76
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.h, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit.i, %bb.i
  %.sink9.i.sroa.phi = phi ptr [ %.sroa.7, %bb.i ], [ %.sroa.3, %bb.h ], [ %.sroa.3, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit.i ]
  %.sink.i = phi ptr [ %i.bc, %bb.i ], [ null, %bb.h ], [ null, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit.i ]
  store ptr %.sink.i, ptr %.sink9.i.sroa.phi, align 8, !alias.scope !73, !noalias !76
  %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8. = load ptr, ptr %.sroa.3, align 8, !noundef !6 ; 2 uses
  %.not44 = icmp eq ptr %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8., null
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  br i1 %.not44, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtNtNtB5_4iter8adapters3map3MapINtNtB3d_6filter6FilterINtNtB3d_5chain5ChainINtNtNtB5_5slice4iter4IterNtNtBQ_8protocol7KadPeerEB4o_ENCINvMs0_NtBQ_9behaviourINtB5r_9BehaviourNtNtNtNtBQ_6record5store6memory11MemoryStoreE10discoveredB43_E0ENCB5k_s_0EEs_0ECs4w110Okq5IC_16ipfs_kad_example.exit

bb.k:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !84
  %i.bf = load ptr, ptr %i.u, align 8, !alias.scope !86, !noalias !87, !noundef !6 ; 3 uses
  %.not.i.i51 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i51, label %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtB1B_5chain5ChainINtNtNtB1F_5slice4iter4IterNtNtBd_8protocol7KadPeerEB32_ENCINvMs0_NtBd_9behaviourINtB46_9BehaviourNtNtNtNtBd_6record5store6memory11MemoryStoreE10discoveredB2H_E0ENCB3Z_s_0EEs_0Cs4w110Okq5IC_16ipfs_kad_example.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = load i64, ptr %i.au, align 8, !alias.scope !86, !noalias !87, !noundef !6 ; 2 uses
  %i.bh = load i64, ptr %i.aw, align 8, !alias.scope !86, !noalias !87, !noundef !6
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !84
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.bf, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !84
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.bg, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !84
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !84
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.bf, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !84
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.bg, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !84
  br label %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtB1B_5chain5ChainINtNtNtB1F_5slice4iter4IterNtNtBd_8protocol7KadPeerEB32_ENCINvMs0_NtBd_9behaviourINtB46_9BehaviourNtNtNtNtBd_6record5store6memory11MemoryStoreE10discoveredB2H_E0ENCB3Z_s_0EEs_0Cs4w110Okq5IC_16ipfs_kad_example.exit.i

_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtB1B_5chain5ChainINtNtNtB1F_5slice4iter4IterNtNtBd_8protocol7KadPeerEB32_ENCINvMs0_NtBd_9behaviourINtB46_9BehaviourNtNtNtNtBd_6record5store6memory11MemoryStoreE10discoveredB2H_E0ENCB3Z_s_0EEs_0Cs4w110Okq5IC_16ipfs_kad_example.exit.i: ; preds = %bb.k, %bb.l
  %.sink19.i.i = phi i64 [ 1, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %.sink.i.i = phi i64 [ %i.bh, %bb.l ], [ 0, %bb.k ]
  store i64 %.sink19.i.i, ptr %i.a, align 8, !noalias !84
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sink19.i.i, ptr %i.bi, align 8, !noalias !84
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sink.i.i, ptr %i.bj, align 8, !noalias !84
  %i.bk = call { ptr, ptr } @_RNvXsm_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB19_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a), !noalias !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !84
  %i.bl = extractvalue { ptr, ptr } %i.bk, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.not45 = icmp eq ptr %i.bl, null
  br i1 %.not45, label %bb.m, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtNtNtB5_4iter8adapters3map3MapINtNtB3d_6filter6FilterINtNtB3d_5chain5ChainINtNtNtB5_5slice4iter4IterNtNtBQ_8protocol7KadPeerEB4o_ENCINvMs0_NtBQ_9behaviourINtB5r_9BehaviourNtNtNtNtBQ_6record5store6memory11MemoryStoreE10discoveredB43_E0ENCB5k_s_0EEs_0ECs4w110Okq5IC_16ipfs_kad_example.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtNtNtB5_4iter8adapters3map3MapINtNtB3d_6filter6FilterINtNtB3d_5chain5ChainINtNtNtB5_5slice4iter4IterNtNtBQ_8protocol7KadPeerEB4o_ENCINvMs0_NtBQ_9behaviourINtB5r_9BehaviourNtNtNtNtBQ_6record5store6memory11MemoryStoreE10discoveredB43_E0ENCB5k_s_0EEs_0ECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.j, %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtB1B_5chain5ChainINtNtNtB1F_5slice4iter4IterNtNtBd_8protocol7KadPeerEB32_ENCINvMs0_NtBd_9behaviourINtB46_9BehaviourNtNtNtNtBd_6record5store6memory11MemoryStoreE10discoveredB2H_E0ENCB3Z_s_0EEs_0Cs4w110Okq5IC_16ipfs_kad_example.exit.i
  %.merged.i = phi ptr [ %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8., %bb.j ], [ %i.bl, %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtB1B_5chain5ChainINtNtNtB1F_5slice4iter4IterNtNtBd_8protocol7KadPeerEB32_ENCINvMs0_NtBd_9behaviourINtB46_9BehaviourNtNtNtNtBd_6record5store6memory11MemoryStoreE10discoveredB2H_E0ENCB3Z_s_0EEs_0Cs4w110Okq5IC_16ipfs_kad_example.exit.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %.merged.i, i64 32, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtNtNtB5_4iter8adapters3map3MapINtNtB3d_6filter6FilterINtNtB3d_5chain5ChainINtNtNtB5_5slice4iter4IterNtNtBQ_8protocol7KadPeerEB4o_ENCINvMs0_NtBQ_9behaviourINtB5r_9BehaviourNtNtNtNtBQ_6record5store6memory11MemoryStoreE10discoveredB43_E0ENCB5k_s_0EEs_0ECs4w110Okq5IC_16ipfs_kad_example.exit, %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtB1B_5chain5ChainINtNtNtB1F_5slice4iter4IterNtNtBd_8protocol7KadPeerEB32_ENCINvMs0_NtBd_9behaviourINtB46_9BehaviourNtNtNtNtBd_6record5store6memory11MemoryStoreE10discoveredB2H_E0ENCB3Z_s_0EEs_0Cs4w110Okq5IC_16ipfs_kad_example.exit.i
  %i.bm = load i64, ptr %i.aw, align 8, !noundef !6
  %i.bn = load i64, ptr %i.aq, align 8, !range !35, !noundef !6
  %i.bo = icmp ult i64 %i.bm, %i.bn
  %i.bp = zext i1 %i.bo to i8
  %.sroa.056.0.copyload = load ptr, ptr %2, align 8, !alias.scope !88 ; 2 uses
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.457.0.copyload = load ptr, ptr %.sroa.457.0..sroa_idx, align 8, !alias.scope !88
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !88 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !88
  %.sroa.758.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.758.0.copyload = load ptr, ptr %.sroa.758.0..sroa_idx, align 8, !alias.scope !88 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  br label %bb.n

bb.n:                                             ; preds = %bb.aa, %bb.m
  %.sroa.8.061 = phi ptr [ %.sroa.6.0.copyload, %bb.m ], [ %.sroa.8.1, %bb.aa ] ; 3 uses
  %.sroa.4.0 = phi ptr [ %.sroa.457.0.copyload, %bb.m ], [ %.sroa.4.1, %bb.aa ] ; 2 uses
  %.sroa.07.0 = phi i8 [ %i.bp, %bb.m ], [ %.sroa.07.1, %bb.aa ] ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.4.0, null
  br i1 %.not.i.i.i.i, label %.loopexit65, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.br = phi ptr [ %i.bt, %bb.q ], [ %.sroa.4.0, %bb.o ] ; 4 uses
  %i.bs = icmp eq ptr %i.br, %.sroa.5.0.copyload
  br i1 %i.bs, label %.loopexit65, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 112 ; 2 uses
  %i.bu = load ptr, ptr %.sroa.056.0.copyload, align 8, !noalias !92, !nonnull !6, !align !8, !noundef !6
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bw = call noundef zeroext i1 @_RNvXs2_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bu), !noalias !92
  br i1 %i.bw, label %bb.p, label %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerERB1u_NCINvXs_B2_INtB2_5ChainB14_B14_ENtNtNtB6_6traits8iterator8Iterator4findQNCINvMs0_NtB1y_9behaviourINtB3E_9BehaviourNtNtNtNtB1y_6record5store6memory11MemoryStoreE10discoveredB2w_E0E0ECs4w110Okq5IC_16ipfs_kad_example.exit.i.i.i

.loopexit65:                                      ; preds = %bb.p, %bb.n
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.8.061, null
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %.loopexit65
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.758.0.copyload) ]
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.r
  %i.bx = phi ptr [ %i.bz, %bb.t ], [ %.sroa.8.061, %bb.r ] ; 4 uses
  %i.by = icmp eq ptr %i.bx, %.sroa.758.0.copyload
  br i1 %i.by, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 112 ; 2 uses
  %i.ca = load ptr, ptr %.sroa.056.0.copyload, align 8, !noalias !108, !nonnull !6, !align !8, !noundef !6
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.cc = call noundef zeroext i1 @_RNvXs2_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.cb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ca), !noalias !108
  br i1 %i.cc, label %bb.s, label %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerERB1u_NCINvXs_B2_INtB2_5ChainB14_B14_ENtNtNtB6_6traits8iterator8Iterator4findQNCINvMs0_NtB1y_9behaviourINtB3E_9BehaviourNtNtNtNtB1y_6record5store6memory11MemoryStoreE10discoveredB2w_E0E0ECs4w110Okq5IC_16ipfs_kad_example.exit.i.i.i

_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerERB1u_NCINvXs_B2_INtB2_5ChainB14_B14_ENtNtNtB6_6traits8iterator8Iterator4findQNCINvMs0_NtB1y_9behaviourINtB3E_9BehaviourNtNtNtNtB1y_6record5store6memory11MemoryStoreE10discoveredB2w_E0E0ECs4w110Okq5IC_16ipfs_kad_example.exit.i.i.i: ; preds = %bb.q, %bb.t
  %.sroa.8.1 = phi ptr [ %i.bz, %bb.t ], [ %.sroa.8.061, %bb.q ]
  %.sroa.4.1 = phi ptr [ null, %bb.t ], [ %i.bt, %bb.q ]
  %.sroa.0.0.i3.i.i.i = phi ptr [ %i.bx, %bb.t ], [ %i.br, %bb.q ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.560, ptr noundef nonnull align 8 dereferenceable(80) %i.cd, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvXs1_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyINtB5_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEINtNtCskKLDkoKarTP_4core7convert4FromBV_E4from(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %.sroa.560)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceINtB6_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.h, ptr noundef nonnull align 8 dereferenceable(112) %i.j, i64 112, i1 false)
  store i32 1000000000, ptr %i.bq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1d_5query5peers7closest4PeerE5entryCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ce = load ptr, ptr %i.g, align 8, !noundef !6
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.y, label %bb.z

.loopexit:                                        ; preds = %.loopexit65, %bb.s
  %i.cg = load i64, ptr %0, align 8, !range !5, !noundef !6 ; 2 uses
  switch i64 %i.cg, label %default.unreachable85 [
    i64 0, label %bb.u
    i64 1, label %bb.v
    i64 2, label %bb.w
  ]

bb.u:                                             ; preds = %.loopexit
  %i.ch = trunc nuw i8 %.sroa.07.0 to i1
  %i.ci = load i64, ptr %i.r, align 8
  %i.cj = add i64 %i.ci, 1
  %.sroa.011.0 = select i1 %i.ch, i64 0, i64 %i.cj ; 2 uses
  %i.ck = load i64, ptr %i.ap, align 8, !range !35, !noundef !6
  %.not46 = icmp uge i64 %.sroa.011.0, %i.ck
  %spec.select49 = zext i1 %.not46 to i64
  br label %bb.w

bb.v:                                             ; preds = %.loopexit
  %i.cl = xor i8 %.sroa.07.0, 1
  %.47 = zext nneg i8 %i.cl to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %.loopexit, %bb.v
  %.sroa.8.0 = phi i64 [ %.sroa.011.0, %bb.u ], [ undef, %.loopexit ], [ 0, %bb.v ]
  %.sroa.010.0 = phi i64 [ %spec.select49, %bb.u ], [ %i.cg, %.loopexit ], [ %.47, %bb.v ]
  store i64 %.sroa.010.0, ptr %0, align 8
  store i64 %.sroa.8.0, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.w, %bb.d
  %.sroa.0.1.ph = phi i1 [ true, %bb.w ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %bb.a
  %.sroa.0.1 = phi i1 [ false, %bb.a ], [ %.sroa.0.1.ph, %.sink.split ]
  ret i1 %.sroa.0.1

bb.y:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerERB1u_NCINvXs_B2_INtB2_5ChainB14_B14_ENtNtNtB6_6traits8iterator8Iterator4findQNCINvMs0_NtB1y_9behaviourINtB3E_9BehaviourNtNtNtNtB1y_6record5store6memory11MemoryStoreE10discoveredB2w_E0E0ECs4w110Okq5IC_16ipfs_kad_example.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.aa

bb.z:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerERB1u_NCINvXs_B2_INtB2_5ChainB14_B14_ENtNtNtB6_6traits8iterator8Iterator4findQNCINvMs0_NtB1y_9behaviourINtB3E_9BehaviourNtNtNtNtB1y_6record5store6memory11MemoryStoreE10discoveredB2w_E0E0ECs4w110Okq5IC_16ipfs_kad_example.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1p_5query5peers7closest4PeerE12insert_entryCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %i.h)
  %i.cm = call noundef nonnull align 8 ptr @_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1r_5query5peers7closest4PeerE8into_mutCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cn = call noundef i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
  %i.co = icmp slt i8 %i.cn, 0
  %spec.select = select i1 %i.co, i8 1, i8 %.sroa.07.0
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sroa.07.1 = phi i8 [ %.sroa.07.0, %bb.y ], [ %spec.select, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB5_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1z_6filter6FilterINtNtNtB1D_5slice4iter4IterNtNtBb_8protocol7KadPeerENCINvMs0_NtBb_9behaviourINtB3E_9BehaviourNtNtNtNtBb_6record5store6memory11MemoryStoreE10discoveredB2F_E0ENCB3x_s_0EECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef align 8 dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = alloca [64 x i8], align 8                ; 6 uses
  %i.h = alloca [128 x i8], align 8               ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [112 x i8], align 8               ; 5 uses
  %i.k = alloca [80 x i8], align 8                ; 4 uses
  %i.l = alloca [80 x i8], align 8                ; 15 uses
  %.sroa.3 = alloca ptr, align 8                  ; 6 uses
  %.sroa.7 = alloca ptr, align 8                  ; 3 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [64 x i8], align 8                ; 6 uses
  %i.p = alloca [112 x i8], align 8               ; 4 uses
  %i.q = load i64, ptr %0, align 8, !range !5, !noundef !6
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = icmp eq i64 %i.q, 2
  br i1 %i.s, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvXs1_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyINtB5_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEINtNtCskKLDkoKarTP_4core7convert4FromBV_E4from(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  call void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1d_5query5peers7closest4PeerE5entryCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.c)
  %i.v = load ptr, ptr %i.o, align 8, !noundef !6
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.z = load ptr, ptr %i.n, align 8, !nonnull !6, !noundef !6
  store ptr %i.z, ptr %i.e, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ab = load <2 x i64>, ptr %i.y, align 8
  store <2 x i64> %i.ab, ptr %i.aa, align 8
  %i.ac = call { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1K_5query5peers7closest4PeerNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e)
  %i.ad = extractvalue { ptr, ptr } %i.ac, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  %i.af = load i32, ptr %i.ae, align 8, !range !34, !noundef !6 ; 3 uses
  %i.ag = icmp ne i32 %i.af, 1000000001
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nsw i32 %i.af, -1000000000
  %i.ai = icmp samesign ugt i32 %i.af, 999999999
  %narrow = select i1 %i.ai, i32 %i.ah, i32 1
  switch i32 %narrow, label %bb.e [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.f
    i32 4, label %bb.f
  ]

bb.d:                                             ; preds = %bb.b, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %.sink.split

default.unreachable66:                            ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerENCINvMs0_NtB1M_9behaviourINtB2D_9BehaviourNtNtNtNtB1M_6record5store6memory11MemoryStoreE10discoveredB1i_E0ENCB2w_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs4w110Okq5IC_16ipfs_kad_example.exit
  unreachable

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.d

bb.g:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !6
  %i.al = add i64 %i.ak, -1
  store i64 %i.al, ptr %i.aj, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g
  %i.am = call { ptr, ptr } @_RNvMsS_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1I_5query5peers7closest4PeerNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
  %i.an = extractvalue { ptr, ptr } %i.am, 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 120
  store i32 1000000004, ptr %i.ao, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !range !35, !noundef !6 ; 2 uses
  %i.as = add i64 %i.ar, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.at = load ptr, ptr %i.u, align 8, !noundef !6 ; 3 uses
  %.not = icmp ne ptr %i.at, null                 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8
  %.sroa.05.sroa.0.0 = zext i1 %.not to i64       ; 2 uses
  %.sroa.05.sroa.5.sroa.6.0 = select i1 %.not, i64 %i.av, i64 undef ; 2 uses
  %.sroa.56.0 = select i1 %.not, i64 %i.ax, i64 0
  store i64 %.sroa.05.sroa.0.0, ptr %i.l, align 8
  %.sroa.05.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr null, ptr %.sroa.05.sroa.5.0..sroa_idx, align 8
  %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.at, ptr %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %.sroa.05.sroa.5.sroa.6.0, ptr %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %.sroa.05.sroa.0.0, ptr %.sroa.05.sroa.6.0..sroa_idx, align 8
  %.sroa.05.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr null, ptr %.sroa.05.sroa.7.0..sroa_idx, align 8
  %.sroa.05.sroa.7.sroa.5.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store ptr %i.at, ptr %.sroa.05.sroa.7.sroa.5.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.7.sroa.6.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i64 %.sroa.05.sroa.5.sroa.6.0, ptr %.sroa.05.sroa.7.sroa.6.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store i64 %.sroa.56.0, ptr %.sroa.56.0..sroa_idx, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 3 uses
  store i64 0, ptr %i.ay, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.az = call noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB2e_5query5peers7closest4PeerENtB4_13SpecAdvanceBy15spec_advance_byCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.l, i64 noundef range(i64 0, -1) %i.as), !noalias !117
  %.not.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i.i, label %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit

_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit.i: ; preds = %bb.h
  %i.ba = call { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB19_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.l), !noalias !117 ; 2 uses
  %i.bb = extractvalue { ptr, ptr } %i.ba, 0      ; 2 uses
  %.not.i = icmp eq ptr %i.bb, null
  br i1 %.not.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit, label %bb.i

bb.i:                                             ; preds = %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit.i
  %i.bc = extractvalue { ptr, ptr } %i.ba, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  %i.bd = load i64, ptr %i.ay, align 8, !alias.scope !120, !noalias !117, !noundef !6
  %i.be = add i64 %i.bd, %i.ar
  store i64 %i.be, ptr %i.ay, align 8, !alias.scope !120, !noalias !117
  store ptr %i.bb, ptr %.sroa.3, align 8, !alias.scope !117, !noalias !120
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.h, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit.i, %bb.i
  %.sink9.i.sroa.phi = phi ptr [ %.sroa.7, %bb.i ], [ %.sroa.3, %bb.h ], [ %.sroa.3, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit.i ]
  %.sink.i = phi ptr [ %i.bc, %bb.i ], [ null, %bb.h ], [ null, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit.i ]
  store ptr %.sink.i, ptr %.sink9.i.sroa.phi, align 8, !alias.scope !117, !noalias !120
  %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8. = load ptr, ptr %.sroa.3, align 8, !noundef !6 ; 2 uses
  %.not44 = icmp eq ptr %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8., null
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  br i1 %.not44, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtNtNtB5_4iter8adapters3map3MapINtNtB3d_6filter6FilterINtNtNtB5_5slice4iter4IterNtNtBQ_8protocol7KadPeerENCINvMs0_NtBQ_9behaviourINtB51_9BehaviourNtNtNtNtBQ_6record5store6memory11MemoryStoreE10discoveredB43_E0ENCB4U_s_0EEs_0ECs4w110Okq5IC_16ipfs_kad_example.exit

bb.k:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs4w110Okq5IC_16ipfs_kad_example.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !128
  %i.bf = load ptr, ptr %i.u, align 8, !alias.scope !130, !noalias !131, !noundef !6 ; 3 uses
  %.not.i.i51 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i51, label %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtNtB1F_5slice4iter4IterNtNtBd_8protocol7KadPeerENCINvMs0_NtBd_9behaviourINtB3G_9BehaviourNtNtNtNtBd_6record5store6memory11MemoryStoreE10discoveredB2H_E0ENCB3z_s_0EEs_0Cs4w110Okq5IC_16ipfs_kad_example.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = load i64, ptr %i.au, align 8, !alias.scope !130, !noalias !131, !noundef !6 ; 2 uses
  %i.bh = load i64, ptr %i.aw, align 8, !alias.scope !130, !noalias !131, !noundef !6
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !128
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.bf, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !128
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.bg, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !128
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !128
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.bf, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !128
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.bg, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !128
  br label %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtNtB1F_5slice4iter4IterNtNtBd_8protocol7KadPeerENCINvMs0_NtBd_9behaviourINtB3G_9BehaviourNtNtNtNtBd_6record5store6memory11MemoryStoreE10discoveredB2H_E0ENCB3z_s_0EEs_0Cs4w110Okq5IC_16ipfs_kad_example.exit.i

_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtNtB1F_5slice4iter4IterNtNtBd_8protocol7KadPeerENCINvMs0_NtBd_9behaviourINtB3G_9BehaviourNtNtNtNtBd_6record5store6memory11MemoryStoreE10discoveredB2H_E0ENCB3z_s_0EEs_0Cs4w110Okq5IC_16ipfs_kad_example.exit.i: ; preds = %bb.k, %bb.l
  %.sink19.i.i = phi i64 [ 1, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %.sink.i.i = phi i64 [ %i.bh, %bb.l ], [ 0, %bb.k ]
  store i64 %.sink19.i.i, ptr %i.a, align 8, !noalias !128
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sink19.i.i, ptr %i.bi, align 8, !noalias !128
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sink.i.i, ptr %i.bj, align 8, !noalias !128
  %i.bk = call { ptr, ptr } @_RNvXsm_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB19_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a), !noalias !128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !128
  %i.bl = extractvalue { ptr, ptr } %i.bk, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.not45 = icmp eq ptr %i.bl, null
  br i1 %.not45, label %bb.m, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtNtNtB5_4iter8adapters3map3MapINtNtB3d_6filter6FilterINtNtNtB5_5slice4iter4IterNtNtBQ_8protocol7KadPeerENCINvMs0_NtBQ_9behaviourINtB51_9BehaviourNtNtNtNtBQ_6record5store6memory11MemoryStoreE10discoveredB43_E0ENCB4U_s_0EEs_0ECs4w110Okq5IC_16ipfs_kad_example.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtNtNtB5_4iter8adapters3map3MapINtNtB3d_6filter6FilterINtNtNtB5_5slice4iter4IterNtNtBQ_8protocol7KadPeerENCINvMs0_NtBQ_9behaviourINtB51_9BehaviourNtNtNtNtBQ_6record5store6memory11MemoryStoreE10discoveredB43_E0ENCB4U_s_0EEs_0ECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.j, %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtNtB1F_5slice4iter4IterNtNtBd_8protocol7KadPeerENCINvMs0_NtBd_9behaviourINtB3G_9BehaviourNtNtNtNtBd_6record5store6memory11MemoryStoreE10discoveredB2H_E0ENCB3z_s_0EEs_0Cs4w110Okq5IC_16ipfs_kad_example.exit.i
  %.merged.i = phi ptr [ %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8., %bb.j ], [ %i.bl, %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtNtB1F_5slice4iter4IterNtNtBd_8protocol7KadPeerENCINvMs0_NtBd_9behaviourINtB3G_9BehaviourNtNtNtNtBd_6record5store6memory11MemoryStoreE10discoveredB2H_E0ENCB3z_s_0EEs_0Cs4w110Okq5IC_16ipfs_kad_example.exit.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %.merged.i, i64 32, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtNtNtB5_4iter8adapters3map3MapINtNtB3d_6filter6FilterINtNtNtB5_5slice4iter4IterNtNtBQ_8protocol7KadPeerENCINvMs0_NtBQ_9behaviourINtB51_9BehaviourNtNtNtNtBQ_6record5store6memory11MemoryStoreE10discoveredB43_E0ENCB4U_s_0EEs_0ECs4w110Okq5IC_16ipfs_kad_example.exit, %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtNtB1F_5slice4iter4IterNtNtBd_8protocol7KadPeerENCINvMs0_NtBd_9behaviourINtB3G_9BehaviourNtNtNtNtBd_6record5store6memory11MemoryStoreE10discoveredB2H_E0ENCB3z_s_0EEs_0Cs4w110Okq5IC_16ipfs_kad_example.exit.i
  %i.bm = load i64, ptr %i.aw, align 8, !noundef !6
  %i.bn = load i64, ptr %i.aq, align 8, !range !35, !noundef !6
  %i.bo = icmp ult i64 %i.bm, %i.bn
  %i.bp = zext i1 %i.bo to i8
  %.sroa.055.0.copyload = load ptr, ptr %2, align 8, !alias.scope !132
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !132, !nonnull !6, !noundef !6
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.556.0.copyload = load ptr, ptr %.sroa.556.0..sroa_idx, align 8, !alias.scope !132
  %i.bq = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  br label %bb.n

bb.n:                                             ; preds = %bb.x, %bb.m
  %.sroa.054.0 = phi ptr [ %.sroa.055.0.copyload, %bb.m ], [ %i.bt, %bb.x ]
  %.sroa.07.0 = phi i8 [ %i.bp, %bb.m ], [ %.sroa.07.1, %bb.x ] ; 4 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %i.br = phi ptr [ %i.bt, %bb.p ], [ %.sroa.054.0, %bb.n ] ; 3 uses
  %i.bs = icmp eq ptr %i.br, %.sroa.4.0.copyload
  br i1 %i.bs, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerENCINvMs0_NtB1M_9behaviourINtB2D_9BehaviourNtNtNtNtB1M_6record5store6memory11MemoryStoreE10discoveredB1i_E0ENCB2w_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs4w110Okq5IC_16ipfs_kad_example.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 112 ; 2 uses
  %i.bu = load ptr, ptr %.sroa.556.0.copyload, align 8, !noalias !136, !nonnull !6, !align !8, !noundef !6
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 24 ; 2 uses
  %i.bw = call noundef zeroext i1 @_RNvXs2_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bu), !noalias !136
  br i1 %i.bw, label %bb.o, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.k, ptr noundef nonnull align 8 dereferenceable(80) %i.bv, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvXs1_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyINtB5_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEINtNtCskKLDkoKarTP_4core7convert4FromBV_E4from(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceINtB6_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.h, ptr noundef nonnull align 8 dereferenceable(112) %i.j, i64 112, i1 false)
  store i32 1000000000, ptr %i.bq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1d_5query5peers7closest4PeerE5entryCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bx = load ptr, ptr %i.g, align 8, !noundef !6
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.v, label %bb.w

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerENCINvMs0_NtB1M_9behaviourINtB2D_9BehaviourNtNtNtNtB1M_6record5store6memory11MemoryStoreE10discoveredB1i_E0ENCB2w_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.o
  %i.bz = load i64, ptr %0, align 8, !range !5, !noundef !6 ; 2 uses
  switch i64 %i.bz, label %default.unreachable66 [
    i64 0, label %bb.r
    i64 1, label %bb.s
    i64 2, label %bb.t
  ]

bb.r:                                             ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerENCINvMs0_NtB1M_9behaviourINtB2D_9BehaviourNtNtNtNtB1M_6record5store6memory11MemoryStoreE10discoveredB1i_E0ENCB2w_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs4w110Okq5IC_16ipfs_kad_example.exit
  %i.ca = trunc nuw i8 %.sroa.07.0 to i1
  %i.cb = load i64, ptr %i.r, align 8
  %i.cc = add i64 %i.cb, 1
  %.sroa.011.0 = select i1 %i.ca, i64 0, i64 %i.cc ; 2 uses
  %i.cd = load i64, ptr %i.ap, align 8, !range !35, !noundef !6
  %.not46 = icmp uge i64 %.sroa.011.0, %i.cd
  %spec.select49 = zext i1 %.not46 to i64
  br label %bb.t

bb.s:                                             ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerENCINvMs0_NtB1M_9behaviourINtB2D_9BehaviourNtNtNtNtB1M_6record5store6memory11MemoryStoreE10discoveredB1i_E0ENCB2w_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs4w110Okq5IC_16ipfs_kad_example.exit
  %i.ce = xor i8 %.sroa.07.0, 1
  %.47 = zext nneg i8 %i.ce to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerENCINvMs0_NtB1M_9behaviourINtB2D_9BehaviourNtNtNtNtB1M_6record5store6memory11MemoryStoreE10discoveredB1i_E0ENCB2w_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs4w110Okq5IC_16ipfs_kad_example.exit, %bb.s
  %.sroa.8.0 = phi i64 [ %.sroa.011.0, %bb.r ], [ undef, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerENCINvMs0_NtB1M_9behaviourINtB2D_9BehaviourNtNtNtNtB1M_6record5store6memory11MemoryStoreE10discoveredB1i_E0ENCB2w_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs4w110Okq5IC_16ipfs_kad_example.exit ], [ 0, %bb.s ]
  %.sroa.010.0 = phi i64 [ %spec.select49, %bb.r ], [ %i.bz, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerENCINvMs0_NtB1M_9behaviourINtB2D_9BehaviourNtNtNtNtB1M_6record5store6memory11MemoryStoreE10discoveredB1i_E0ENCB2w_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs4w110Okq5IC_16ipfs_kad_example.exit ], [ %.47, %bb.s ]
  store i64 %.sroa.010.0, ptr %0, align 8
  store i64 %.sroa.8.0, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.t, %bb.d
  %.sroa.0.1.ph = phi i1 [ true, %bb.t ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.a
  %.sroa.0.1 = phi i1 [ false, %bb.a ], [ %.sroa.0.1.ph, %.sink.split ]
  ret i1 %.sroa.0.1

bb.v:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.x

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1p_5query5peers7closest4PeerE12insert_entryCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %i.h)
  %i.cf = call noundef nonnull align 8 ptr @_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1r_5query5peers7closest4PeerE8into_mutCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cg = call noundef i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m)
  %i.ch = icmp slt i8 %i.cg, 0
  %spec.select = select i1 %i.ch, i8 1, i8 %.sroa.07.0
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.07.1 = phi i8 [ %.sroa.07.0, %bb.v ], [ %spec.select, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB5_16ClosestPeersIter11with_configINtNtBb_7kbucket11ClosestIterINtNtB1y_3key3KeyNtNtBb_6record3KeyEIB1Z_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBb_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB2y_B3s_E12closest_keysB1Y_E0B2y_EB1Y_ECs4w110Okq5IC_16ipfs_kad_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(2496) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2512 x i8], align 8              ; 6 uses
  %i.b = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB4_8KeyBytesINtNtCskKLDkoKarTP_4core7convert4FromINtB4_3KeyNtNtB8_6record3KeyEE4fromCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2496) %i.a, ptr noundef nonnull align 8 dereferenceable(2496) %3, i64 2496, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2496
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2504
  store i64 20, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_RINvXs1o_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB7_8BTreeMapNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1f_5query5peers7closest4PeerEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorTB19_B20_EE9from_iterINtNtNtB2J_8adapters4take4TakeINtNtB42_3map3MapINtB1d_11ClosestIterINtB1b_3KeyNtNtB1f_6record3KeyEIB53_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1f_9addresses9AddressesNCINvMs1_B1d_INtB1d_13KBucketsTableB5x_B6r_E12closest_keysB52_E0B5x_ENCINvMs_B22_NtB22_16ClosestPeersIter11with_configB4I_B52_E0EEECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(2512) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 1 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskC4O4hr3vz7_10libp2p_kad7kbucket11ClosestIterINtNtBE_3key3KeyNtNtBG_6record3KeyEIB1s_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBG_9addresses9AddressesNCINvMs1_BE_INtBE_13KBucketsTableB20_B2U_E12closest_keysB1r_E0B20_EECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.h

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load i64, ptr %3, align 8, !range !5, !alias.scope !145, !noundef !6
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskC4O4hr3vz7_10libp2p_kad7kbucket11ClosestIterINtNtBE_3key3KeyNtNtBG_6record3KeyEIB1s_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBG_9addresses9AddressesNCINvMs1_BE_INtBE_13KBucketsTableB20_B2U_E12closest_keysB1r_E0B20_EECs4w110Okq5IC_16ipfs_kad_example.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsw_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEj14_ENtNtNtBN_3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(2496) %3)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskC4O4hr3vz7_10libp2p_kad7kbucket11ClosestIterINtNtBE_3key3KeyNtNtBG_6record3KeyEIB1s_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBG_9addresses9AddressesNCINvMs1_BE_INtBE_13KBucketsTableB20_B2U_E12closest_keysB1r_E0B20_EECs4w110Okq5IC_16ipfs_kad_example.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB5_16ClosestPeersIter11with_configINtNtBb_7kbucket11ClosestIterINtNtB1y_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB1Y_NtNtBb_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1Y_B38_E12closest_keysB1Y_E0B1Y_EB1Y_ECs4w110Okq5IC_16ipfs_kad_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(112) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(2496) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2512 x i8], align 8              ; 6 uses
  %i.b = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB4_8KeyBytesINtNtCskKLDkoKarTP_4core7convert4FromINtB4_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE4fromCs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2496) %i.a, ptr noundef nonnull align 8 dereferenceable(2496) %3, i64 2496, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2496
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2504
  store i64 20, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_RINvXs1o_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB7_8BTreeMapNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1f_5query5peers7closest4PeerEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorTB19_B20_EE9from_iterINtNtNtB2J_8adapters4take4TakeINtNtB42_3map3MapINtB1d_11ClosestIterINtB1b_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB52_NtNtB1f_9addresses9AddressesNCINvMs1_B1d_INtB1d_13KBucketsTableB52_B66_E12closest_keysB52_E0B52_ENCINvMs_B22_NtB22_16ClosestPeersIter11with_configB4I_B52_E0EEECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(2512) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 1 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskC4O4hr3vz7_10libp2p_kad7kbucket11ClosestIterINtNtBE_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB1r_NtNtBG_9addresses9AddressesNCINvMs1_BE_INtBE_13KBucketsTableB1r_B2A_E12closest_keysB1r_E0B1r_EECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.h

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
end_hunk_0

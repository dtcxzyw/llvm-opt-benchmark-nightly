Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_server.libp2p_server.1e58dff6c8062fcd-cgu.13?download=true
inline.NumInlined: 2319
inline.NumDeleted: 1007
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB5_16ClosestPeersIter10on_successINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEECs2Bxje7pdMIr_13libp2p_server:bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) #37
          to label %common.resume unwind label %bb.al
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB5_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [80 x i8], align 8                ; 14 uses
  %.sroa.3 = alloca i64, align 8                  ; 6 uses
  %.sroa.7 = alloca i64, align 8                  ; 3 uses
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
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  call void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1d_5query5peers7closest4PeerE5entryCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b)
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
  %i.t = call { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1K_5query5peers7closest4PeerNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
  %i.u = extractvalue { ptr, ptr } %i.t, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  %i.w = load i32, ptr %i.v, align 8, !range !284, !noundef !6 ; 3 uses
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
  %i.ad = call { ptr, ptr } @_RNvMsS_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1I_5query5peers7closest4PeerNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  %i.ae = extractvalue { ptr, ptr } %i.ad, 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  store i32 1000000004, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !range !211, !noundef !6 ; 2 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !307)
  call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %i.aq = call noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB2e_5query5peers7closest4PeerENtB4_13SpecAdvanceBy15spec_advance_byCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef range(i64 0, -1) %i.aj), !noalias !307
  %.not.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i, label %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit

_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit.i: ; preds = %bb.h
  %i.ar = call { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB19_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.d), !noalias !307 ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0      ; 2 uses
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit, label %bb.i

bb.i:                                             ; preds = %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit.i
  %i.at = extractvalue { ptr, ptr } %i.ar, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  %i.au = load i64, ptr %i.ap, align 8, !alias.scope !310, !noalias !307, !noundef !6
  %i.av = add i64 %i.au, %i.ai
  store i64 %i.av, ptr %i.ap, align 8, !alias.scope !310, !noalias !307
  %i.aw = ptrtoint ptr %i.as to i64
  store i64 %i.aw, ptr %.sroa.3, align 8, !alias.scope !307, !noalias !310
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.h, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit.i, %bb.i
  %.sink9.i.sroa.phi = phi ptr [ %.sroa.7, %bb.i ], [ %.sroa.3, %bb.h ], [ %.sroa.3, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit.i ]
  %.sink.i = phi ptr [ %i.at, %bb.i ], [ null, %bb.h ], [ null, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit.i ]
  store ptr %.sink.i, ptr %.sink9.i.sroa.phi, align 8, !alias.scope !307, !noalias !310
  %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8. = load i64, ptr %.sroa.3, align 8, !noundef !6
  %.not44 = icmp eq i64 %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8., 0
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  br i1 %.not44, label %bb.j, label %.critedge

bb.j:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !315)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !318
  %i.ax = load ptr, ptr %i.l, align 8, !alias.scope !320, !noalias !321, !noundef !6 ; 3 uses
  %.not.i.i51 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i51, label %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0Cs2Bxje7pdMIr_13libp2p_server.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = load i64, ptr %i.al, align 8, !alias.scope !320, !noalias !321, !noundef !6 ; 2 uses
  %i.az = load i64, ptr %i.an, align 8, !alias.scope !320, !noalias !321, !noundef !6
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !318
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ax, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !318
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.ay, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !318
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !318
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.ax, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !318
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.ay, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !318
  br label %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0Cs2Bxje7pdMIr_13libp2p_server.exit.i

_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0Cs2Bxje7pdMIr_13libp2p_server.exit.i: ; preds = %bb.k, %bb.j
  %.sink19.i.i = phi i64 [ 1, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %.sink.i.i = phi i64 [ %i.az, %bb.k ], [ 0, %bb.j ]
  store i64 %.sink19.i.i, ptr %i.a, align 8, !noalias !318
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sink19.i.i, ptr %i.ba, align 8, !noalias !318
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sink.i.i, ptr %i.bb, align 8, !noalias !318
  %i.bc = call { ptr, ptr } @_RNvXsm_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB19_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a), !noalias !318 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !318
  br label %.critedge

.critedge:                                        ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit, %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter7sources5empty5EmptyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEs_0Cs2Bxje7pdMIr_13libp2p_server.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bd = load i64, ptr %i.an, align 8, !noundef !6 ; 2 uses
  %i.be = load i64, ptr %i.ah, align 8, !range !211, !noundef !6 ; 2 uses
  %i.bf = load i64, ptr %0, align 8, !range !5, !noundef !6 ; 2 uses
  switch i64 %i.bf, label %default.unreachable56 [
    i64 0, label %bb.l
    i64 1, label %bb.m
    i64 2, label %bb.n
  ]

bb.l:                                             ; preds = %.critedge
  %2 = icmp ult i64 %i.bd, %i.be
  %i.bg = load i64, ptr %i.i, align 8
  %i.bh = add i64 %i.bg, 1
  %.sroa.011.0 = select i1 %2, i64 0, i64 %i.bh   ; 2 uses
  %i.bi = load i64, ptr %i.ag, align 8, !range !211, !noundef !6
  %.not46 = icmp uge i64 %.sroa.011.0, %i.bi
  %spec.select49 = zext i1 %.not46 to i64
  br label %bb.n

bb.m:                                             ; preds = %.critedge
  %not. = icmp uge i64 %i.bd, %i.be
  %.47 = zext i1 %not. to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %.critedge, %bb.m
  %.sroa.8.0 = phi i64 [ %.sroa.011.0, %bb.l ], [ undef, %.critedge ], [ 0, %bb.m ]
  %.sroa.010.0 = phi i64 [ %spec.select49, %bb.l ], [ %i.bf, %.critedge ], [ %.47, %bb.m ]
  store i64 %.sroa.010.0, ptr %0, align 8
  store i64 %.sroa.8.0, ptr %i.i, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB5_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1z_6filter6FilterINtNtB1z_5chain5ChainINtNtNtB1D_5slice4iter4IterNtNtBb_8protocol7KadPeerEB30_ENCINvMs0_NtBb_9behaviourINtB44_9BehaviourNtNtNtNtBb_6record5store6memory11MemoryStoreE10discoveredB2F_E0ENCB3X_s_0EECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.l = alloca [40 x i8], align 8                ; 5 uses
  %i.m = alloca [80 x i8], align 8                ; 14 uses
  %.sroa.3 = alloca i64, align 8                  ; 6 uses
  %.sroa.7 = alloca i64, align 8                  ; 3 uses
  %i.n = alloca [32 x i8], align 8                ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [64 x i8], align 8                ; 6 uses
  %i.q = alloca [112 x i8], align 8               ; 4 uses
  %i.r = load i64, ptr %0, align 8, !range !5, !noundef !6
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = icmp eq i64 %i.r, 2
  br i1 %i.t, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvXs1_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyINtB5_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEINtNtCskKLDkoKarTP_4core7convert4FromBV_E4from(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  call void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1d_5query5peers7closest4PeerE5entryCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.c)
  %i.w = load ptr, ptr %i.p, align 8, !noundef !6
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aa = load ptr, ptr %i.o, align 8, !nonnull !6, !noundef !6
  store ptr %i.aa, ptr %i.e, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ac = load <2 x i64>, ptr %i.z, align 8
  store <2 x i64> %i.ac, ptr %i.ab, align 8
  %i.ad = call { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1K_5query5peers7closest4PeerNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e)
  %i.ae = extractvalue { ptr, ptr } %i.ad, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  %i.ag = load i32, ptr %i.af, align 8, !range !284, !noundef !6 ; 3 uses
  %i.ah = icmp ne i32 %i.ag, 1000000001
  call void @llvm.assume(i1 %i.ah)
  %i.ai = add nsw i32 %i.ag, -1000000000
  %i.aj = icmp samesign ugt i32 %i.ag, 999999999
  %narrow = select i1 %i.aj, i32 %i.ai, i32 1
  switch i32 %narrow, label %bb.e [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.f
    i32 4, label %bb.f
  ]

bb.d:                                             ; preds = %bb.b, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %.sink.split

default.unreachable63:                            ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerEB1C_ENCINvMs0_NtB26_9behaviourINtB32_9BehaviourNtNtNtNtB26_6record5store6memory11MemoryStoreE10discoveredB1i_E0ENCB2V_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server.exit
  unreachable

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.d

bb.g:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !noundef !6
  %i.am = add i64 %i.al, -1
  store i64 %i.am, ptr %i.ak, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g
  %i.an = call { ptr, ptr } @_RNvMsS_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1I_5query5peers7closest4PeerNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
  %i.ao = extractvalue { ptr, ptr } %i.an, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  store i32 1000000004, ptr %i.ap, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !range !211, !noundef !6 ; 2 uses
  %i.at = add i64 %i.as, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.au = load ptr, ptr %i.v, align 8, !noundef !6 ; 3 uses
  %.not = icmp ne ptr %i.au, null                 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8
  %.sroa.05.sroa.0.0 = zext i1 %.not to i64       ; 2 uses
  %.sroa.05.sroa.5.sroa.6.0 = select i1 %.not, i64 %i.aw, i64 undef ; 2 uses
  %.sroa.56.0 = select i1 %.not, i64 %i.ay, i64 0
  store i64 %.sroa.05.sroa.0.0, ptr %i.m, align 8
  %.sroa.05.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr null, ptr %.sroa.05.sroa.5.0..sroa_idx, align 8
  %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.au, ptr %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %.sroa.05.sroa.5.sroa.6.0, ptr %.sroa.05.sroa.5.sroa.6.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 %.sroa.05.sroa.0.0, ptr %.sroa.05.sroa.6.0..sroa_idx, align 8
  %.sroa.05.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr null, ptr %.sroa.05.sroa.7.0..sroa_idx, align 8
  %.sroa.05.sroa.7.sroa.5.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.au, ptr %.sroa.05.sroa.7.sroa.5.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.05.sroa.7.sroa.6.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i64 %.sroa.05.sroa.5.sroa.6.0, ptr %.sroa.05.sroa.7.sroa.6.0..sroa.05.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store i64 %.sroa.56.0, ptr %.sroa.56.0..sroa_idx, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 72 ; 3 uses
  store i64 0, ptr %i.az, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %i.ba = call noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB2e_5query5peers7closest4PeerENtB4_13SpecAdvanceBy15spec_advance_byCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.m, i64 noundef range(i64 0, -1) %i.at), !noalias !322
  %.not.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i, label %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit

_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit.i: ; preds = %bb.h
  %i.bb = call { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB19_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.m), !noalias !322 ; 2 uses
  %i.bc = extractvalue { ptr, ptr } %i.bb, 0      ; 2 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit, label %bb.i

bb.i:                                             ; preds = %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit.i
  %i.bd = extractvalue { ptr, ptr } %i.bb, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bd) ]
  %i.be = load i64, ptr %i.az, align 8, !alias.scope !325, !noalias !322, !noundef !6
  %i.bf = add i64 %i.be, %i.as
  store i64 %i.bf, ptr %i.az, align 8, !alias.scope !325, !noalias !322
  %i.bg = ptrtoint ptr %i.bc to i64
  store i64 %i.bg, ptr %.sroa.3, align 8, !alias.scope !322, !noalias !325
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.h, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit.i, %bb.i
  %.sink9.i.sroa.phi = phi ptr [ %.sroa.7, %bb.i ], [ %.sroa.3, %bb.h ], [ %.sroa.3, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit.i ]
  %.sink.i = phi ptr [ %i.bd, %bb.i ], [ null, %bb.h ], [ null, %_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB13_5query5peers7closest4PeerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit.i ]
  store ptr %.sink.i, ptr %.sink9.i.sroa.phi, align 8, !alias.scope !322, !noalias !325
  %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8. = load i64, ptr %.sroa.3, align 8, !noundef !6 ; 2 uses
  %.not44 = icmp eq i64 %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8., 0
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  br i1 %.not44, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit
  %i.bh = inttoptr i64 %.sroa.3.0..sroa.3.0..sroa.3.0..sroa.3.8. to ptr
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionTRNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceRNtNtNtNtBQ_5query5peers7closest4PeerEE7or_elseNCINvMs_B1E_NtB1E_16ClosestPeersIter10on_successINtNtNtNtB5_4iter8adapters3map3MapINtNtB3d_6filter6FilterINtNtB3d_5chain5ChainINtNtNtB5_5slice4iter4IterNtNtBQ_8protocol7KadPeerEB4o_ENCINvMs0_NtBQ_9behaviourINtB5r_9BehaviourNtNtNtNtBQ_6record5store6memory11MemoryStoreE10discoveredB43_E0ENCB5k_s_0EEs_0ECs2Bxje7pdMIr_13libp2p_server.exit

bb.k:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB28_5query5peers7closest4PeerEENtNtNtB8_6traits8iterator8Iterator3nthCs2Bxje7pdMIr_13libp2p_server.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !333
  %i.bi = load ptr, ptr %i.v, align 8, !alias.scope !335, !noalias !336, !noundef !6 ; 3 uses
  %.not.i.i51 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i51, label %_RNCINvMs_NtNtNtCskC4O4hr3vz7_10libp2p_kad5query5peers7closestNtB7_16ClosestPeersIter10on_successINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1B_6filter6FilterINtNtB1B_5chain5ChainINtNtNtB1F_5slice4iter4IterNtNtBd_8protocol7KadPeerEB32_ENCINvMs0_NtBd_9behaviourINtB46_9BehaviourNtNtNtNtBd_6record5store6memory11MemoryStoreE10discoveredB2H_E0ENCB3Z_s_0EEs_0Cs2Bxje7pdMIr_13libp2p_server.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = load i64, ptr %i.av, align 8, !alias.scope !335, !noalias !336, !noundef !6 ; 2 uses
  %i.bk = load i64, ptr %i.ax, align 8, !alias.scope !335, !noalias !336, !noundef !6
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !333
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/ipfs_private_example.ipfs_private_example.c9cf337336d19c9e-cgu.06?download=true
inline.NumInlined: 1188
inline.NumDeleted: 476
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2N_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example:bb.a
  %i.afl = getelementptr inbounds i8, ptr %i.afk, i64 -40
  %i.afm = call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtB2_10EquivalentBq_E10equivalentCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.adn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.afl), !noalias !2634
  br i1 %i.afm, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit27.i.i79.i, label %bb.dj, !prof !69

._crit_edge.i.i22.i.i76.i:                        ; preds = %bb.dj, %bb.di
  %i.afn = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i17.i.i71.i, splat (i8 -1)
  %i.afo = bitcast <16 x i1> %i.afn to i16
  %i.afp = icmp eq i16 %i.afo, 0
  br i1 %i.afp, label %bb.dk, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit81.i, !prof !65

bb.dj:                                            ; preds = %.lr.ph.i.i19.i.i73.i
  %i.afq = add i16 %.sroa.06.0.i31.i.i20.i.i74.i, -1
  %i.afr = and i16 %i.afq, %.sroa.06.0.i31.i.i20.i.i74.i ; 2 uses
  %.not.i.not.i.i21.i.i75.i = icmp eq i16 %i.afr, 0
  br i1 %.not.i.not.i.i21.i.i75.i, label %._crit_edge.i.i22.i.i76.i, label %.lr.ph.i.i19.i.i73.i

bb.dk:                                            ; preds = %._crit_edge.i.i22.i.i76.i
  %i.afs = add i64 %.sroa.9.0.i.i.i14.i.i68.i, 16 ; 2 uses
  %i.aft = add i64 %.sroa.01.0.i.i.i16.i.i70.i, %i.afs
  br label %bb.di

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit27.i.i79.i: ; preds = %.lr.ph.i.i19.i.i73.i
  %i.afu = getelementptr inbounds i8, ptr %i.afk, i64 -8
  %i.afv = load double, ptr %i.afu, align 8, !noalias !2468, !noundef !5
  br label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit81.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit81.i: ; preds = %._crit_edge.i.i22.i.i76.i, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit27.i.i79.i, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.thread.i.i65.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit54.i
  %.sroa.01.08.i.i77.i = phi double [ %.sroa.01.0.ph.i.i66.i, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit27.i.i79.i ], [ 0.000000e+00, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit54.i ], [ %.sroa.01.0.ph.i.i66.i, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.thread.i.i65.i ], [ %.sroa.01.0.ph.i.i66.i, %._crit_edge.i.i22.i.i76.i ]
  %.sroa.06.0.i.i78.i = phi double [ %i.afv, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit27.i.i79.i ], [ 0.000000e+00, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit54.i ], [ 0.000000e+00, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.thread.i.i65.i ], [ 0.000000e+00, %._crit_edge.i.i22.i.i76.i ]
  %i.afw = fcmp uge double %.sroa.01.08.i.i77.i, %.sroa.06.0.i.i78.i ; 2 uses
  %i.afx = getelementptr inbounds i8, ptr %.sroa.43.148.i95, i64 -24
  %.sroa.01.0.i21.i = select i1 %i.afw, ptr %2, ptr %i.afx
  %i.afy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i21.i, i64 %i.adm
  %i.afz = load i64, ptr %i.adn, align 8, !alias.scope !2465, !noalias !2637
  store i64 %i.afz, ptr %i.afy, align 8, !alias.scope !2468, !noalias !2640
  %i.aga = zext i1 %i.afw to i64
  %i.agb = add i64 %i.adm, %i.aga                 ; 2 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %.sroa.9.150.i93, i64 24 ; 3 uses
  %.val.i22.i = load ptr, ptr %6, align 8, !noalias !2641, !nonnull !5, !align !380, !noundef !5
  %.val.i82.i = load ptr, ptr %.val.i22.i, align 8, !noalias !2645, !nonnull !5, !align !380, !noundef !5 ; 5 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %.val.i82.i, i64 24 ; 2 uses
  %i.age = load i64, ptr %i.agd, align 8, !noalias !2649, !noundef !5
  %i.agf = icmp eq i64 %i.age, 0
  br i1 %i.agf, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit108.i, label %bb.dl

bb.dl:                                            ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit81.i
  %i.agg = getelementptr inbounds nuw i8, ptr %.val.i82.i, i64 32 ; 2 uses
  %i.agh = call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.agg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.js), !noalias !2653 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2654)
  call void @llvm.experimental.noalias.scope.decl(metadata !2657)
  %i.agi = lshr i64 %i.agh, 57
  %i.agj = trunc nuw nsw i64 %i.agi to i8
  %i.agk = getelementptr inbounds nuw i8, ptr %.val.i82.i, i64 8 ; 2 uses
  %i.agl = load i64, ptr %i.agk, align 8, !alias.scope !2660, !noalias !2663, !noundef !5 ; 2 uses
  %i.agm = load ptr, ptr %.val.i82.i, align 8, !alias.scope !2660, !noalias !2663, !nonnull !5, !noundef !5 ; 2 uses
  %i.agn = insertelement <16 x i8> poison, i8 %i.agj, i64 0
  %i.ago = shufflevector <16 x i8> %i.agn, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.dm

bb.dm:                                            ; preds = %bb.do, %bb.dl
  %.sroa.9.0.i.i.i.i.i83.i = phi i64 [ 0, %bb.dl ], [ %i.ahf, %bb.do ]
  %.pn.i.i.i.i84.i = phi i64 [ %i.agh, %bb.dl ], [ %i.ahg, %bb.do ]
  %.sroa.01.0.i.i.i.i.i85.i = and i64 %.pn.i.i.i.i84.i, %i.agl ; 3 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agm, i64 %.sroa.01.0.i.i.i.i.i85.i
  %.sroa.0.0.copyload.i24.i.i.i.i86.i = load <16 x i8>, ptr %i.agp, align 1, !noalias !2667 ; 2 uses
  %i.agq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i86.i, %i.ago
  %i.agr = bitcast <16 x i1> %i.agq to i16        ; 2 uses
  %.not.i.not30.i.i.i.i87.i = icmp eq i16 %i.agr, 0
  br i1 %.not.i.not30.i.i.i.i87.i, label %._crit_edge.i.i.i.i91.i, label %.lr.ph.i.i.i.i88.i

.lr.ph.i.i.i.i88.i:                               ; preds = %bb.dm, %bb.dn
  %.sroa.06.0.i31.i.i.i.i89.i = phi i16 [ %i.ahe, %bb.dn ], [ %i.agr, %bb.dm ] ; 3 uses
  %i.ags = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i89.i, i1 true)
  %i.agt = zext nneg i16 %i.ags to i64
  %i.agu = add i64 %.sroa.01.0.i.i.i.i.i85.i, %i.agt
  %i.agv = and i64 %i.agu, %i.agl
  %i.agw = sub nsw i64 0, %i.agv
  %i.agx = getelementptr inbounds [40 x i8], ptr %i.agm, i64 %i.agw ; 2 uses
  %i.agy = getelementptr inbounds i8, ptr %i.agx, i64 -40
  %i.agz = call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtB2_10EquivalentBq_E10equivalentCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.js, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.agy), !noalias !2670
  br i1 %i.agz, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.i.i107.i, label %bb.dn, !prof !69

._crit_edge.i.i.i.i91.i:                          ; preds = %bb.dn, %bb.dm
  %i.aha = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i86.i, splat (i8 -1)
  %i.ahb = bitcast <16 x i1> %i.aha to i16
  %i.ahc = icmp eq i16 %i.ahb, 0
  br i1 %i.ahc, label %bb.do, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.thread.i.i92.i, !prof !65

bb.dn:                                            ; preds = %.lr.ph.i.i.i.i88.i
  %i.ahd = add i16 %.sroa.06.0.i31.i.i.i.i89.i, -1
  %i.ahe = and i16 %i.ahd, %.sroa.06.0.i31.i.i.i.i89.i ; 2 uses
  %.not.i.not.i.i.i.i90.i = icmp eq i16 %i.ahe, 0
  br i1 %.not.i.not.i.i.i.i90.i, label %._crit_edge.i.i.i.i91.i, label %.lr.ph.i.i.i.i88.i

bb.do:                                            ; preds = %._crit_edge.i.i.i.i91.i
  %i.ahf = add i64 %.sroa.9.0.i.i.i.i.i83.i, 16   ; 2 uses
  %i.ahg = add i64 %.sroa.01.0.i.i.i.i.i85.i, %i.ahf
  br label %bb.dm

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.i.i107.i: ; preds = %.lr.ph.i.i.i.i88.i
  %i.ahh = getelementptr inbounds i8, ptr %i.agx, i64 -8
  %i.ahi = load double, ptr %i.ahh, align 8, !noalias !2653, !noundef !5
  br label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.thread.i.i92.i

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.thread.i.i92.i: ; preds = %._crit_edge.i.i.i.i91.i, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.i.i107.i
  %.sroa.01.0.ph.i.i93.i = phi double [ %i.ahi, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.i.i107.i ], [ 0.000000e+00, %._crit_edge.i.i.i.i91.i ] ; 3 uses
  %.pr.i.i94.i = load i64, ptr %i.agd, align 8, !alias.scope !2673, !noalias !2676
  %i.ahj = icmp eq i64 %.pr.i.i94.i, 0
  br i1 %i.ahj, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit108.i, label %bb.dp

bb.dp:                                            ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.thread.i.i92.i
  %i.ahk = call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.agg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.agc), !noalias !2468 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2678)
  call void @llvm.experimental.noalias.scope.decl(metadata !2681)
  %i.ahl = lshr i64 %i.ahk, 57
  %i.ahm = trunc nuw nsw i64 %i.ahl to i8
  %i.ahn = load i64, ptr %i.agk, align 8, !alias.scope !2684, !noalias !2685, !noundef !5 ; 2 uses
  %i.aho = load ptr, ptr %.val.i82.i, align 8, !alias.scope !2684, !noalias !2685, !nonnull !5, !noundef !5 ; 2 uses
  %i.ahp = insertelement <16 x i8> poison, i8 %i.ahm, i64 0
  %i.ahq = shufflevector <16 x i8> %i.ahp, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.dq

bb.dq:                                            ; preds = %bb.ds, %bb.dp
  %.sroa.9.0.i.i.i14.i.i95.i = phi i64 [ 0, %bb.dp ], [ %i.aih, %bb.ds ]
  %.pn.i.i15.i.i96.i = phi i64 [ %i.ahk, %bb.dp ], [ %i.aii, %bb.ds ]
  %.sroa.01.0.i.i.i16.i.i97.i = and i64 %.pn.i.i15.i.i96.i, %i.ahn ; 3 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.aho, i64 %.sroa.01.0.i.i.i16.i.i97.i
  %.sroa.0.0.copyload.i24.i.i17.i.i98.i = load <16 x i8>, ptr %i.ahr, align 1, !noalias !2688 ; 2 uses
  %i.ahs = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i17.i.i98.i, %i.ahq
  %i.aht = bitcast <16 x i1> %i.ahs to i16        ; 2 uses
  %.not.i.not30.i.i18.i.i99.i = icmp eq i16 %i.aht, 0
  br i1 %.not.i.not30.i.i18.i.i99.i, label %._crit_edge.i.i22.i.i103.i, label %.lr.ph.i.i19.i.i100.i

.lr.ph.i.i19.i.i100.i:                            ; preds = %bb.dq, %bb.dr
  %.sroa.06.0.i31.i.i20.i.i101.i = phi i16 [ %i.aig, %bb.dr ], [ %i.aht, %bb.dq ] ; 3 uses
  %i.ahu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i20.i.i101.i, i1 true)
  %i.ahv = zext nneg i16 %i.ahu to i64
  %i.ahw = add i64 %.sroa.01.0.i.i.i16.i.i97.i, %i.ahv
  %i.ahx = and i64 %i.ahw, %i.ahn
  %i.ahy = sub nsw i64 0, %i.ahx
  %i.ahz = getelementptr inbounds [40 x i8], ptr %i.aho, i64 %i.ahy ; 2 uses
  %i.aia = getelementptr inbounds i8, ptr %i.ahz, i64 -40
  %i.aib = call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtB2_10EquivalentBq_E10equivalentCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.agc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aia), !noalias !2691
  br i1 %i.aib, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit27.i.i106.i, label %bb.dr, !prof !69

._crit_edge.i.i22.i.i103.i:                       ; preds = %bb.dr, %bb.dq
  %i.aic = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i17.i.i98.i, splat (i8 -1)
  %i.aid = bitcast <16 x i1> %i.aic to i16
  %i.aie = icmp eq i16 %i.aid, 0
  br i1 %i.aie, label %bb.ds, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit108.i, !prof !65

bb.dr:                                            ; preds = %.lr.ph.i.i19.i.i100.i
  %i.aif = add i16 %.sroa.06.0.i31.i.i20.i.i101.i, -1
  %i.aig = and i16 %i.aif, %.sroa.06.0.i31.i.i20.i.i101.i ; 2 uses
  %.not.i.not.i.i21.i.i102.i = icmp eq i16 %i.aig, 0
  br i1 %.not.i.not.i.i21.i.i102.i, label %._crit_edge.i.i22.i.i103.i, label %.lr.ph.i.i19.i.i100.i

bb.ds:                                            ; preds = %._crit_edge.i.i22.i.i103.i
  %i.aih = add i64 %.sroa.9.0.i.i.i14.i.i95.i, 16 ; 2 uses
  %i.aii = add i64 %.sroa.01.0.i.i.i16.i.i97.i, %i.aih
  br label %bb.dq

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit27.i.i106.i: ; preds = %.lr.ph.i.i19.i.i100.i
  %i.aij = getelementptr inbounds i8, ptr %i.ahz, i64 -8
  %i.aik = load double, ptr %i.aij, align 8, !noalias !2468, !noundef !5
  br label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit108.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit108.i: ; preds = %._crit_edge.i.i22.i.i103.i, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit27.i.i106.i, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.thread.i.i92.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit81.i
  %.sroa.01.08.i.i104.i = phi double [ %.sroa.01.0.ph.i.i93.i, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit27.i.i106.i ], [ 0.000000e+00, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit81.i ], [ %.sroa.01.0.ph.i.i93.i, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.thread.i.i92.i ], [ %.sroa.01.0.ph.i.i93.i, %._crit_edge.i.i22.i.i103.i ]
  %.sroa.06.0.i.i105.i = phi double [ %i.aik, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit27.i.i106.i ], [ 0.000000e+00, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit81.i ], [ 0.000000e+00, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.thread.i.i92.i ], [ 0.000000e+00, %._crit_edge.i.i22.i.i103.i ]
  %i.ail = fcmp uge double %.sroa.01.08.i.i104.i, %.sroa.06.0.i.i105.i ; 2 uses
  %i.aim = getelementptr inbounds i8, ptr %.sroa.43.148.i95, i64 -32 ; 3 uses
  %.sroa.01.0.i23.i = select i1 %i.ail, ptr %2, ptr %i.aim
  %i.ain = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i23.i, i64 %i.agb
  %i.aio = load i64, ptr %i.agc, align 8, !alias.scope !2465, !noalias !2694
  store i64 %i.aio, ptr %i.ain, align 8, !alias.scope !2468, !noalias !2697
  %i.aip = zext i1 %i.ail to i64
  %i.aiq = add i64 %i.agb, %i.aip                 ; 2 uses
  %i.air = getelementptr inbounds nuw i8, ptr %.sroa.9.150.i93, i64 32 ; 3 uses
  %i.ais = icmp ult ptr %i.air, %i.yi
  br i1 %i.ais, label %.lr.ph.i92, label %._crit_edge.i76

._crit_edge.i76:                                  ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit108.i, %bb.cm
  %.sroa.43.1.lcssa.i77 = phi ptr [ %.sroa.43.0.i72, %bb.cm ], [ %i.aim, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit108.i ] ; 4 uses
  %.sroa.27.1.lcssa.i78 = phi i64 [ %.sroa.27.0.i73, %bb.cm ], [ %i.aiq, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit108.i ] ; 5 uses
  %.sroa.9.1.lcssa.i79 = phi ptr [ %.sroa.9.0.i74, %bb.cm ], [ %i.air, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit108.i ] ; 7 uses
  %i.ait = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph232, i64 %.sroa.0.0.i75 ; 3 uses
  %i.aiu = icmp ult ptr %.sroa.9.1.lcssa.i79, %i.ait
  br i1 %i.aiu, label %.lr.ph57.i88.preheader, label %._crit_edge58.i80

.lr.ph57.i88.preheader:                           ; preds = %._crit_edge.i76
  %i.aiv = load ptr, ptr %6, align 8, !noalias !2698, !nonnull !5, !align !380, !noundef !5
  %i.aiw = load ptr, ptr %i.aiv, align 8, !noalias !2702, !nonnull !5, !align !380, !noundef !5
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 24
  %i.aiy = load i64, ptr %i.aix, align 8, !noalias !2706, !noundef !5
  %i.aiz = icmp eq i64 %i.aiy, 0
  br i1 %i.aiz, label %.lr.ph57.i88.us.preheader, label %.lr.ph57.i88

.lr.ph57.i88.us.preheader:                        ; preds = %.lr.ph57.i88.preheader
  %i.aja = shl i64 %.sroa.0.0.i75, 3
  %i.ajb = ptrtoaddr ptr %.sroa.9.1.lcssa.i79 to i64
  %i.ajc = add i64 %i.aja, %i.e
  %i.ajd = xor i64 %i.ajb, -1
  %i.aje = add i64 %i.ajc, %i.ajd                 ; 2 uses
  %i.ajf = lshr i64 %i.aje, 3
  %i.ajg = add nuw nsw i64 %i.ajf, 1              ; 2 uses
  %min.iters.check660 = icmp ult i64 %i.aje, 24
  br i1 %min.iters.check660, label %.lr.ph57.i88.us.preheader709, label %vector.ph661

vector.ph661:                                     ; preds = %.lr.ph57.i88.us.preheader
  %n.vec662 = and i64 %i.ajg, 4611686018427387900 ; 5 uses
  %i.ajh = shl i64 %n.vec662, 3
  %i.aji = getelementptr i8, ptr %.sroa.9.1.lcssa.i79, i64 %i.ajh ; 2 uses
  %i.ajj = add i64 %.sroa.27.1.lcssa.i78, %n.vec662 ; 2 uses
  %i.ajk = mul i64 %n.vec662, -8
  %i.ajl = getelementptr i8, ptr %.sroa.43.1.lcssa.i77, i64 %i.ajk ; 2 uses
  %i.ajm = getelementptr [8 x i8], ptr %2, i64 %.sroa.27.1.lcssa.i78
  br label %vector.body663

vector.body663:                                   ; preds = %vector.body663, %vector.ph661
  %index664 = phi i64 [ 0, %vector.ph661 ], [ %index.next667, %vector.body663 ] ; 3 uses
  %i.ajn = shl i64 %index664, 3
  %next.gep = getelementptr i8, ptr %.sroa.9.1.lcssa.i79, i64 %i.ajn ; 2 uses
  %i.ajo = getelementptr [8 x i8], ptr %i.ajm, i64 %index664 ; 2 uses
  %i.ajp = getelementptr i8, ptr %next.gep, i64 16
  %wide.load665 = load <2 x i64>, ptr %next.gep, align 8, !alias.scope !2465, !noalias !2710
  %wide.load666 = load <2 x i64>, ptr %i.ajp, align 8, !alias.scope !2465, !noalias !2710
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajo, i64 16
  store <2 x i64> %wide.load665, ptr %i.ajo, align 8, !alias.scope !2468, !noalias !2713
  store <2 x i64> %wide.load666, ptr %i.ajq, align 8, !alias.scope !2468, !noalias !2713
  %index.next667 = add nuw i64 %index664, 4       ; 2 uses
  %i.ajr = icmp eq i64 %index.next667, %n.vec662
  br i1 %i.ajr, label %middle.block668, label %vector.body663, !llvm.loop !2714

middle.block668:                                  ; preds = %vector.body663
  %cmp.n669 = icmp eq i64 %i.ajg, %n.vec662
  br i1 %cmp.n669, label %._crit_edge58.i80, label %.lr.ph57.i88.us.preheader709

.lr.ph57.i88.us.preheader709:                     ; preds = %.lr.ph57.i88.us.preheader, %middle.block668
  %.sroa.9.255.i89.us.ph = phi ptr [ %.sroa.9.1.lcssa.i79, %.lr.ph57.i88.us.preheader ], [ %i.aji, %middle.block668 ]
  %.sroa.27.254.i90.us.ph = phi i64 [ %.sroa.27.1.lcssa.i78, %.lr.ph57.i88.us.preheader ], [ %i.ajj, %middle.block668 ]
  %.sroa.43.253.i91.us.ph = phi ptr [ %.sroa.43.1.lcssa.i77, %.lr.ph57.i88.us.preheader ], [ %i.ajl, %middle.block668 ]
  br label %.lr.ph57.i88.us

.lr.ph57.i88.us:                                  ; preds = %.lr.ph57.i88.us.preheader709, %.lr.ph57.i88.us
  %.sroa.9.255.i89.us = phi ptr [ %i.ajw, %.lr.ph57.i88.us ], [ %.sroa.9.255.i89.us.ph, %.lr.ph57.i88.us.preheader709 ] ; 2 uses
  %.sroa.27.254.i90.us = phi i64 [ %i.ajv, %.lr.ph57.i88.us ], [ %.sroa.27.254.i90.us.ph, %.lr.ph57.i88.us.preheader709 ] ; 2 uses
  %.sroa.43.253.i91.us = phi ptr [ %i.ajs, %.lr.ph57.i88.us ], [ %.sroa.43.253.i91.us.ph, %.lr.ph57.i88.us.preheader709 ]
  %i.ajs = getelementptr inbounds i8, ptr %.sroa.43.253.i91.us, i64 -8 ; 2 uses
  %i.ajt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.254.i90.us
  %i.aju = load i64, ptr %.sroa.9.255.i89.us, align 8, !alias.scope !2465, !noalias !2710
  store i64 %i.aju, ptr %i.ajt, align 8, !alias.scope !2468, !noalias !2713
  %i.ajv = add i64 %.sroa.27.254.i90.us, 1        ; 2 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %.sroa.9.255.i89.us, i64 8 ; 3 uses
  %i.ajx = icmp ult ptr %i.ajw, %i.ait
  br i1 %i.ajx, label %.lr.ph57.i88.us, label %._crit_edge58.i80, !llvm.loop !2715

._crit_edge58.i80:                                ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit135.i, %.lr.ph57.i88.us, %middle.block668, %._crit_edge.i76
  %.sroa.43.2.lcssa.i81 = phi ptr [ %.sroa.43.1.lcssa.i77, %._crit_edge.i76 ], [ %i.ajs, %.lr.ph57.i88.us ], [ %i.ajl, %middle.block668 ], [ %i.ami, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit135.i ]
  %.sroa.27.2.lcssa.i82 = phi i64 [ %.sroa.27.1.lcssa.i78, %._crit_edge.i76 ], [ %i.ajv, %.lr.ph57.i88.us ], [ %i.ajj, %middle.block668 ], [ %i.amm, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit135.i ] ; 9 uses
  %.sroa.9.2.lcssa.i83 = phi ptr [ %.sroa.9.1.lcssa.i79, %._crit_edge.i76 ], [ %i.ajw, %.lr.ph57.i88.us ], [ %i.aji, %middle.block668 ], [ %i.amn, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit135.i ] ; 2 uses
  %i.ajy = icmp eq i64 %.sroa.0.0.i75, %.sroa.16.0222644
  br i1 %i.ajy, label %bb.ec, label %bb.eb

.lr.ph57.i88:                                     ; preds = %.lr.ph57.i88.preheader, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit135.i
  %.sroa.9.255.i89 = phi ptr [ %i.amn, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit135.i ], [ %.sroa.9.1.lcssa.i79, %.lr.ph57.i88.preheader ] ; 4 uses
  %.sroa.27.254.i90 = phi i64 [ %i.amm, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit135.i ], [ %.sroa.27.1.lcssa.i78, %.lr.ph57.i88.preheader ] ; 2 uses
  %.sroa.43.253.i91 = phi ptr [ %i.ami, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit135.i ], [ %.sroa.43.1.lcssa.i77, %.lr.ph57.i88.preheader ]
  %.val.i24.i = load ptr, ptr %6, align 8, !noalias !2698, !nonnull !5, !align !380, !noundef !5
  %.val.i109.i = load ptr, ptr %.val.i24.i, align 8, !noalias !2702, !nonnull !5, !align !380, !noundef !5 ; 5 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %.val.i109.i, i64 24 ; 2 uses
  %i.aka = load i64, ptr %i.ajz, align 8, !noalias !2706, !noundef !5
  %i.akb = icmp eq i64 %i.aka, 0
  br i1 %i.akb, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit135.i, label %bb.dt

bb.dt:                                            ; preds = %.lr.ph57.i88
  %i.akc = getelementptr inbounds nuw i8, ptr %.val.i109.i, i64 32 ; 2 uses
  %i.akd = call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.akc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.js), !noalias !2716 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2717)
  call void @llvm.experimental.noalias.scope.decl(metadata !2720)
  %i.ake = lshr i64 %i.akd, 57
  %i.akf = trunc nuw nsw i64 %i.ake to i8
  %i.akg = getelementptr inbounds nuw i8, ptr %.val.i109.i, i64 8 ; 2 uses
  %i.akh = load i64, ptr %i.akg, align 8, !alias.scope !2723, !noalias !2726, !noundef !5 ; 2 uses
  %i.aki = load ptr, ptr %.val.i109.i, align 8, !alias.scope !2723, !noalias !2726, !nonnull !5, !noundef !5 ; 2 uses
  %i.akj = insertelement <16 x i8> poison, i8 %i.akf, i64 0
  %i.akk = shufflevector <16 x i8> %i.akj, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.du

bb.du:                                            ; preds = %bb.dw, %bb.dt
  %.sroa.9.0.i.i.i.i.i110.i = phi i64 [ 0, %bb.dt ], [ %i.alb, %bb.dw ]
  %.pn.i.i.i.i111.i = phi i64 [ %i.akd, %bb.dt ], [ %i.alc, %bb.dw ]
  %.sroa.01.0.i.i.i.i.i112.i = and i64 %.pn.i.i.i.i111.i, %i.akh ; 3 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %i.aki, i64 %.sroa.01.0.i.i.i.i.i112.i
  %.sroa.0.0.copyload.i24.i.i.i.i113.i = load <16 x i8>, ptr %i.akl, align 1, !noalias !2730 ; 2 uses
  %i.akm = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i113.i, %i.akk
  %i.akn = bitcast <16 x i1> %i.akm to i16        ; 2 uses
  %.not.i.not30.i.i.i.i114.i = icmp eq i16 %i.akn, 0
  br i1 %.not.i.not30.i.i.i.i114.i, label %._crit_edge.i.i.i.i118.i, label %.lr.ph.i.i.i.i115.i

.lr.ph.i.i.i.i115.i:                              ; preds = %bb.du, %bb.dv
  %.sroa.06.0.i31.i.i.i.i116.i = phi i16 [ %i.ala, %bb.dv ], [ %i.akn, %bb.du ] ; 3 uses
  %i.ako = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i116.i, i1 true)
  %i.akp = zext nneg i16 %i.ako to i64
  %i.akq = add i64 %.sroa.01.0.i.i.i.i.i112.i, %i.akp
  %i.akr = and i64 %i.akq, %i.akh
  %i.aks = sub nsw i64 0, %i.akr
  %i.akt = getelementptr inbounds [40 x i8], ptr %i.aki, i64 %i.aks ; 2 uses
  %i.aku = getelementptr inbounds i8, ptr %i.akt, i64 -40
  %i.akv = call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtB2_10EquivalentBq_E10equivalentCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.js, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aku), !noalias !2733
  br i1 %i.akv, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.i.i134.i, label %bb.dv, !prof !69

._crit_edge.i.i.i.i118.i:                         ; preds = %bb.dv, %bb.du
  %i.akw = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i113.i, splat (i8 -1)
  %i.akx = bitcast <16 x i1> %i.akw to i16
  %i.aky = icmp eq i16 %i.akx, 0
  br i1 %i.aky, label %bb.dw, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.thread.i.i119.i, !prof !65

bb.dv:                                            ; preds = %.lr.ph.i.i.i.i115.i
  %i.akz = add i16 %.sroa.06.0.i31.i.i.i.i116.i, -1
  %i.ala = and i16 %i.akz, %.sroa.06.0.i31.i.i.i.i116.i ; 2 uses
  %.not.i.not.i.i.i.i117.i = icmp eq i16 %i.ala, 0
  br i1 %.not.i.not.i.i.i.i117.i, label %._crit_edge.i.i.i.i118.i, label %.lr.ph.i.i.i.i115.i

bb.dw:                                            ; preds = %._crit_edge.i.i.i.i118.i
  %i.alb = add i64 %.sroa.9.0.i.i.i.i.i110.i, 16  ; 2 uses
  %i.alc = add i64 %.sroa.01.0.i.i.i.i.i112.i, %i.alb
  br label %bb.du

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.i.i134.i: ; preds = %.lr.ph.i.i.i.i115.i
  %i.ald = getelementptr inbounds i8, ptr %i.akt, i64 -8
  %i.ale = load double, ptr %i.ald, align 8, !noalias !2716, !noundef !5
  br label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.thread.i.i119.i

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.thread.i.i119.i: ; preds = %._crit_edge.i.i.i.i118.i, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.i.i134.i
  %.sroa.01.0.ph.i.i120.i = phi double [ %i.ale, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.i.i134.i ], [ 0.000000e+00, %._crit_edge.i.i.i.i118.i ] ; 3 uses
  %.pr.i.i121.i = load i64, ptr %i.ajz, align 8, !alias.scope !2736, !noalias !2739
  %i.alf = icmp eq i64 %.pr.i.i121.i, 0
  br i1 %i.alf, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit135.i, label %bb.dx

bb.dx:                                            ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.thread.i.i119.i
  %i.alg = call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.akc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.9.255.i89), !noalias !2468 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2741)
  call void @llvm.experimental.noalias.scope.decl(metadata !2744)
  %i.alh = lshr i64 %i.alg, 57
  %i.ali = trunc nuw nsw i64 %i.alh to i8
  %i.alj = load i64, ptr %i.akg, align 8, !alias.scope !2747, !noalias !2748, !noundef !5 ; 2 uses
  %i.alk = load ptr, ptr %.val.i109.i, align 8, !alias.scope !2747, !noalias !2748, !nonnull !5, !noundef !5 ; 2 uses
  %i.all = insertelement <16 x i8> poison, i8 %i.ali, i64 0
  %i.alm = shufflevector <16 x i8> %i.all, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.dy

bb.dy:                                            ; preds = %bb.ea, %bb.dx
  %.sroa.9.0.i.i.i14.i.i122.i = phi i64 [ 0, %bb.dx ], [ %i.amd, %bb.ea ]
  %.pn.i.i15.i.i123.i = phi i64 [ %i.alg, %bb.dx ], [ %i.ame, %bb.ea ]
  %.sroa.01.0.i.i.i16.i.i124.i = and i64 %.pn.i.i15.i.i123.i, %i.alj ; 3 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alk, i64 %.sroa.01.0.i.i.i16.i.i124.i
  %.sroa.0.0.copyload.i24.i.i17.i.i125.i = load <16 x i8>, ptr %i.aln, align 1, !noalias !2751 ; 2 uses
  %i.alo = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i17.i.i125.i, %i.alm
  %i.alp = bitcast <16 x i1> %i.alo to i16        ; 2 uses
  %.not.i.not30.i.i18.i.i126.i = icmp eq i16 %i.alp, 0
  br i1 %.not.i.not30.i.i18.i.i126.i, label %._crit_edge.i.i22.i.i130.i, label %.lr.ph.i.i19.i.i127.i

.lr.ph.i.i19.i.i127.i:                            ; preds = %bb.dy, %bb.dz
  %.sroa.06.0.i31.i.i20.i.i128.i = phi i16 [ %i.amc, %bb.dz ], [ %i.alp, %bb.dy ] ; 3 uses
  %i.alq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i20.i.i128.i, i1 true)
  %i.alr = zext nneg i16 %i.alq to i64
  %i.als = add i64 %.sroa.01.0.i.i.i16.i.i124.i, %i.alr
  %i.alt = and i64 %i.als, %i.alj
  %i.alu = sub nsw i64 0, %i.alt
  %i.alv = getelementptr inbounds [40 x i8], ptr %i.alk, i64 %i.alu ; 2 uses
  %i.alw = getelementptr inbounds i8, ptr %i.alv, i64 -40
  %i.alx = call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtB2_10EquivalentBq_E10equivalentCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.9.255.i89, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.alw), !noalias !2754
  br i1 %i.alx, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit27.i.i133.i, label %bb.dz, !prof !69

._crit_edge.i.i22.i.i130.i:                       ; preds = %bb.dz, %bb.dy
  %i.aly = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i17.i.i125.i, splat (i8 -1)
  %i.alz = bitcast <16 x i1> %i.aly to i16
  %i.ama = icmp eq i16 %i.alz, 0
  br i1 %i.ama, label %bb.ea, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit135.i, !prof !65

bb.dz:                                            ; preds = %.lr.ph.i.i19.i.i127.i
  %i.amb = add i16 %.sroa.06.0.i31.i.i20.i.i128.i, -1
  %i.amc = and i16 %i.amb, %.sroa.06.0.i31.i.i20.i.i128.i ; 2 uses
  %.not.i.not.i.i21.i.i129.i = icmp eq i16 %i.amc, 0
  br i1 %.not.i.not.i.i21.i.i129.i, label %._crit_edge.i.i22.i.i130.i, label %.lr.ph.i.i19.i.i127.i

bb.ea:                                            ; preds = %._crit_edge.i.i22.i.i130.i
  %i.amd = add i64 %.sroa.9.0.i.i.i14.i.i122.i, 16 ; 2 uses
  %i.ame = add i64 %.sroa.01.0.i.i.i16.i.i124.i, %i.amd
  br label %bb.dy

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit27.i.i133.i: ; preds = %.lr.ph.i.i19.i.i127.i
  %i.amf = getelementptr inbounds i8, ptr %i.alv, i64 -8
  %i.amg = load double, ptr %i.amf, align 8, !noalias !2468, !noundef !5
  br label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit135.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit135.i: ; preds = %._crit_edge.i.i22.i.i130.i, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit27.i.i133.i, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.thread.i.i119.i, %.lr.ph57.i88
  %.sroa.01.08.i.i131.i = phi double [ %.sroa.01.0.ph.i.i120.i, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit27.i.i133.i ], [ 0.000000e+00, %.lr.ph57.i88 ], [ %.sroa.01.0.ph.i.i120.i, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.thread.i.i119.i ], [ %.sroa.01.0.ph.i.i120.i, %._crit_edge.i.i22.i.i130.i ]
  %.sroa.06.0.i.i132.i = phi double [ %i.amg, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit27.i.i133.i ], [ 0.000000e+00, %.lr.ph57.i88 ], [ 0.000000e+00, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.thread.i.i119.i ], [ 0.000000e+00, %._crit_edge.i.i22.i.i130.i ]
  %i.amh = fcmp uge double %.sroa.01.08.i.i131.i, %.sroa.06.0.i.i132.i ; 2 uses
  %i.ami = getelementptr inbounds i8, ptr %.sroa.43.253.i91, i64 -8 ; 3 uses
  %.sroa.01.0.i25.i = select i1 %i.amh, ptr %2, ptr %i.ami
  %i.amj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i25.i, i64 %.sroa.27.254.i90
end_hunk_0
begin_hunk_1_@_RNvXsl_NtCs9Bqz0CSWZZv_12tracing_core5fieldNtNtCskKLDkoKarTP_4core3fmt9ArgumentsNtB5_5Value6record
declare void @_RNvXsl_NtCs9Bqz0CSWZZv_12tracing_core5fieldNtNtCskKLDkoKarTP_4core3fmt9ArgumentsNtB5_5Value6record(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXst_NtCs9Bqz0CSWZZv_12tracing_core5fieldINtB5_12DisplayValueRRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtB5_5Value6recordCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXst_NtCs9Bqz0CSWZZv_12tracing_core5fieldINtB5_12DisplayValueRdENtB5_5Value6recordCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXst_NtCs9Bqz0CSWZZv_12tracing_core5fieldINtB5_12DisplayValueRRNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashENtB5_5Value6recordCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entryCshke30g4Hb4g_20ipfs_private_example(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIduNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs_NtNtCs748lGEBkLFc_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCsa5che6Tt9cA_4moka6common10concurrent6ReadOpNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryNtNtCsa9Jrx9KOzzM_16hickory_resolver5cache5EntryEE10disconnectCshke30g4Hb4g_20ipfs_private_example(ptr noundef nonnull align 128) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtNtCs748lGEBkLFc_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtNtCsa5che6Tt9cA_4moka6common10concurrent6ReadOpNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryNtNtCsa9Jrx9KOzzM_16hickory_resolver5cache5EntryEE10disconnectCshke30g4Hb4g_20ipfs_private_example(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtNtCs748lGEBkLFc_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCsa5che6Tt9cA_4moka6common10concurrent6ReadOpNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryNtNtCsa9Jrx9KOzzM_16hickory_resolver5cache5EntryEE18disconnect_sendersCshke30g4Hb4g_20ipfs_private_example(ptr noundef nonnull align 128) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs_NtNtCs748lGEBkLFc_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCsa5che6Tt9cA_4moka6common10concurrent7WriteOpNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryNtNtCsa9Jrx9KOzzM_16hickory_resolver5cache5EntryEE10disconnectCshke30g4Hb4g_20ipfs_private_example(ptr noundef nonnull align 128) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtNtCs748lGEBkLFc_17crossbeam_channel7flavors4zeroINtB5_7ChannelINtNtNtCsa5che6Tt9cA_4moka6common10concurrent7WriteOpNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryNtNtCsa9Jrx9KOzzM_16hickory_resolver5cache5EntryEE10disconnectCshke30g4Hb4g_20ipfs_private_example(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtNtCs748lGEBkLFc_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCsa5che6Tt9cA_4moka6common10concurrent7WriteOpNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryNtNtCsa9Jrx9KOzzM_16hickory_resolver5cache5EntryEE18disconnect_sendersCshke30g4Hb4g_20ipfs_private_example(ptr noundef nonnull align 128) unnamed_addr #0

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCsG258MDvU3F_3std7process5abort() unnamed_addr #26

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessNtNtB6_3raw7RawTask18try_set_join_waker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashE8grow_oneCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #23

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB9_7set_val9SetValZSTE12insert_entryCshke30g4Hb4g_20ipfs_private_example(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB9_7set_val9SetValZSTE8into_mutCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB9_7set_val9SetValZSTE6insertCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB9_7set_val9SetValZSTE12insert_entryCshke30g4Hb4g_20ipfs_private_example(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB9_7set_val9SetValZSTE8into_mutCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB9_7set_val9SetValZSTE6insertCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshke30g4Hb4g_20ipfs_private_example(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRmNtB6_5Debug3fmtCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsgUwh0qa7Dto_19netlink_packet_core3nla10DefaultNlaNtB6_5Debug3fmtCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs1_NtNtCs62FBUrD8956_10libp2p_tcp8provider5tokioNtB5_9TcpStreamNtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_write(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #27

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRhNtB6_5Debug3fmtCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsb_NvNtNtCs3LwfirTY3Ij_20netlink_packet_route5route5flags1__NtB5_16InternalBitFlagsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #28

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRtNtB6_5Debug3fmtCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRlNtB6_5Debug3fmtCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_5Debug3fmtCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8, i8) #24

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #24

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvXsa_NtNtCsl9hx9jpF0W9_12futures_util6stream10select_allINtB5_7IterMutINtNtCsjouRnuJWSBB_5yamux13tagged_stream12TaggedStreamNtNtNtB1d_5frame6header8StreamIdINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc8ReceiverNtNtB1d_10connection13StreamCommandEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsr_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverNtNtCsjouRnuJWSBB_5yamux10connection13StreamCommandE5closeCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCsl9hx9jpF0W9_12futures_util6stream10select_allINtB5_9SelectAllINtNtCsjouRnuJWSBB_5yamux13tagged_stream12TaggedStreamNtNtNtB1f_5frame6header8StreamIdINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc8ReceiverNtNtB1f_10connection13StreamCommandEEENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_nextCshke30g4Hb4g_20ipfs_private_example(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEE13push_back_mutCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs0_NtNtCsjouRnuJWSBB_5yamux5frame2ioINtB5_2IoINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBM_INtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherINtCsinjenlOLFM6_11libp2p_pnet10PnetOutputNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEB46_EEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkINtB7_5FrameuEE10poll_readyCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(984), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEE9pop_frontCshke30g4Hb4g_20ipfs_private_example(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXs0_NtNtCsjouRnuJWSBB_5yamux5frame2ioINtB5_2IoINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBM_INtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherINtCsinjenlOLFM6_11libp2p_pnet10PnetOutputNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEB46_EEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkINtB7_5FrameuEE10start_sendCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(984), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs0_NtNtCsjouRnuJWSBB_5yamux5frame2ioINtB5_2IoINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBM_INtNtNtCsl9hx9jpF0W9_12futures_util6future6either6EitherINtCsinjenlOLFM6_11libp2p_pnet10PnetOutputNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEB46_EEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkINtB7_5FrameuEE10poll_closeCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(984), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB7_7set_val9SetValZSTE10init_frontCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB7_7set_val9SetValZSTE10init_frontCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link11down_reason22LinkProtocolDownReasonINtNtNtBa_5slice4iter4IterB14_EECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link3xdp7LinkXdpINtNtNtBa_5slice4iter4IterB14_EECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route5route7metrics11RouteMetricINtNtNtBa_5slice4iter4IterB14_EECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link10proto_info5inet618LinkProtoInfoInet6INtNtNtBa_5slice4iter4IterB14_EECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info5ipoib9InfoIpoibINtNtNtBa_5slice4iter4IterB14_EECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshl.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.fshl.v8i32(<8 x i32>, <8 x i32>, <8 x i32>) #24

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+sse,+sse2,+sse3,+sse4.1,+ssse3" }
attributes #7 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { norecurse nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #29 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { cold noreturn nounwind }
attributes #32 = { nounwind }
attributes #33 = { cold }
attributes #34 = { noinline noreturn }
attributes #35 = { noreturn }
attributes #36 = { noinline }
attributes #37 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!5 = !{}
!6 = !{!7, !9}
!7 = distinct !{!7, !8, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs748lGEBkLFc_17crossbeam_channel7flavors5array7ChannelINtNtNtCsa5che6Tt9cA_4moka6common10concurrent6ReadOpNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryNtNtCsa9Jrx9KOzzM_16hickory_resolver5cache5EntryEEECshke30g4Hb4g_20ipfs_private_example: argument 0"}
!8 = distinct !{!8, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs748lGEBkLFc_17crossbeam_channel7flavors5array7ChannelINtNtNtCsa5che6Tt9cA_4moka6common10concurrent6ReadOpNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryNtNtCsa9Jrx9KOzzM_16hickory_resolver5cache5EntryEEECshke30g4Hb4g_20ipfs_private_example"}
!9 = distinct !{!9, !10, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs748lGEBkLFc_17crossbeam_channel7counter7CounterINtNtNtBG_7flavors5array7ChannelINtNtNtCsa5che6Tt9cA_4moka6common10concurrent6ReadOpNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryNtNtCsa9Jrx9KOzzM_16hickory_resolver5cache5EntryEEEECshke30g4Hb4g_20ipfs_private_example: argument 0"}
!10 = distinct !{!10, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs748lGEBkLFc_17crossbeam_channel7counter7CounterINtNtNtBG_7flavors5array7ChannelINtNtNtCsa5che6Tt9cA_4moka6common10concurrent6ReadOpNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryNtNtCsa9Jrx9KOzzM_16hickory_resolver5cache5EntryEEEECshke30g4Hb4g_20ipfs_private_example"}
!11 = !{!12, !14}
!12 = distinct !{!12, !13, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs748lGEBkLFc_17crossbeam_channel7flavors5array7ChannelINtNtNtCsa5che6Tt9cA_4moka6common10concurrent7WriteOpNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryNtNtCsa9Jrx9KOzzM_16hickory_resolver5cache5EntryEEECshke30g4Hb4g_20ipfs_private_example: argument 0"}
!13 = distinct !{!13, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs748lGEBkLFc_17crossbeam_channel7flavors5array7ChannelINtNtNtCsa5che6Tt9cA_4moka6common10concurrent7WriteOpNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryNtNtCsa9Jrx9KOzzM_16hickory_resolver5cache5EntryEEECshke30g4Hb4g_20ipfs_private_example"}
!14 = distinct !{!14, !15, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs748lGEBkLFc_17crossbeam_channel7counter7CounterINtNtNtBG_7flavors5array7ChannelINtNtNtCsa5che6Tt9cA_4moka6common10concurrent7WriteOpNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryNtNtCsa9Jrx9KOzzM_16hickory_resolver5cache5EntryEEEECshke30g4Hb4g_20ipfs_private_example: argument 0"}
!15 = distinct !{!15, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs748lGEBkLFc_17crossbeam_channel7counter7CounterINtNtNtBG_7flavors5array7ChannelINtNtNtCsa5che6Tt9cA_4moka6common10concurrent7WriteOpNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryNtNtCsa9Jrx9KOzzM_16hickory_resolver5cache5EntryEEEECshke30g4Hb4g_20ipfs_private_example"}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_RINvMs0_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB8_7set_val9SetValZSTNtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB3T_13OccupiedEntryB1M_B2C_E9remove_kv0NtNtBc_5alloc6GlobalECshke30g4Hb4g_20ipfs_private_example: argument 0"}
!18 = distinct !{!18, !"_RINvMs0_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB8_7set_val9SetValZSTNtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB3T_13OccupiedEntryB1M_B2C_E9remove_kv0NtNtBc_5alloc6GlobalECshke30g4Hb4g_20ipfs_private_example"}
!19 = !{!17, !20, !21}
!20 = distinct !{!20, !18, !"_RINvMs0_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB8_7set_val9SetValZSTNtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB3T_13OccupiedEntryB1M_B2C_E9remove_kv0NtNtBc_5alloc6GlobalECshke30g4Hb4g_20ipfs_private_example: argument 1"}
!21 = distinct !{!21, !18, !"_RINvMs0_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB8_7set_val9SetValZSTNtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB3T_13OccupiedEntryB1M_B2C_E9remove_kv0NtNtBc_5alloc6GlobalECshke30g4Hb4g_20ipfs_private_example: argument 2"}
!22 = !{!23, !17, !20, !21}
!23 = distinct !{!23, !24, !"_RNvMsn_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB7_7set_val9SetValZSTNtB1k_14LeafOrInternalE14last_leaf_edgeCshke30g4Hb4g_20ipfs_private_example: argument 0"}
!24 = distinct !{!24, !"_RNvMsn_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB7_7set_val9SetValZSTNtB1k_14LeafOrInternalE14last_leaf_edgeCshke30g4Hb4g_20ipfs_private_example"}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = !{!17, !20}
!28 = !{!29, !31, !17, !20, !21}
!29 = distinct !{!29, !30, !"_RNvMsh_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB7_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeE7next_kvCshke30g4Hb4g_20ipfs_private_example: argument 0"}
!30 = distinct !{!30, !"_RNvMsh_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB7_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeE7next_kvCshke30g4Hb4g_20ipfs_private_example"}
!31 = distinct !{!31, !30, !"_RNvMsh_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB7_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeE7next_kvCshke30g4Hb4g_20ipfs_private_example: argument 1"}
!32 = !{!33, !29, !31, !17, !20, !21}
!33 = distinct !{!33, !34, !"_RNvMse_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB7_7set_val9SetValZSTNtB19_14LeafOrInternalE6ascendCshke30g4Hb4g_20ipfs_private_example: argument 0"}
!34 = distinct !{!34, !"_RNvMse_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB7_7set_val9SetValZSTNtB19_14LeafOrInternalE6ascendCshke30g4Hb4g_20ipfs_private_example"}
!35 = !{!36, !38, !17, !20, !21}
!36 = distinct !{!36, !37, !"_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCshke30g4Hb4g_20ipfs_private_example: argument 0"}
!37 = distinct !{!37, !"_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCshke30g4Hb4g_20ipfs_private_example"}
!38 = distinct !{!38, !37, !"_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCshke30g4Hb4g_20ipfs_private_example: argument 1"}
!39 = distinct !{!39, !26}
!40 = !{!20, !21}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_RINvMs0_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB8_7set_val9SetValZSTNtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB3R_13OccupiedEntryB1M_B2A_E9remove_kv0NtNtBc_5alloc6GlobalECshke30g4Hb4g_20ipfs_private_example: argument 0"}
!43 = distinct !{!43, !"_RINvMs0_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB8_7set_val9SetValZSTNtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB3R_13OccupiedEntryB1M_B2A_E9remove_kv0NtNtBc_5alloc6GlobalECshke30g4Hb4g_20ipfs_private_example"}
!44 = !{!42, !45, !46}
!45 = distinct !{!45, !43, !"_RINvMs0_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB8_7set_val9SetValZSTNtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB3R_13OccupiedEntryB1M_B2A_E9remove_kv0NtNtBc_5alloc6GlobalECshke30g4Hb4g_20ipfs_private_example: argument 1"}
!46 = distinct !{!46, !43, !"_RINvMs0_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB8_7set_val9SetValZSTNtB1w_8InternalENtB1w_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB3R_13OccupiedEntryB1M_B2A_E9remove_kv0NtNtBc_5alloc6GlobalECshke30g4Hb4g_20ipfs_private_example: argument 2"}
!47 = !{!48, !42, !45, !46}
!48 = distinct !{!48, !49, !"_RNvMsn_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB7_7set_val9SetValZSTNtB1k_14LeafOrInternalE14last_leaf_edgeCshke30g4Hb4g_20ipfs_private_example: argument 0"}
!49 = distinct !{!49, !"_RNvMsn_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB7_7set_val9SetValZSTNtB1k_14LeafOrInternalE14last_leaf_edgeCshke30g4Hb4g_20ipfs_private_example"}
!50 = distinct !{!50, !26}
!51 = !{!42, !45}
!52 = !{!53, !55, !42, !45, !46}
!53 = distinct !{!53, !54, !"_RNvMsh_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB7_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeE7next_kvCshke30g4Hb4g_20ipfs_private_example: argument 0"}
!54 = distinct !{!54, !"_RNvMsh_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB7_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeE7next_kvCshke30g4Hb4g_20ipfs_private_example"}
!55 = distinct !{!55, !54, !"_RNvMsh_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB7_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeE7next_kvCshke30g4Hb4g_20ipfs_private_example: argument 1"}
!56 = !{!57, !53, !55, !42, !45, !46}
!57 = distinct !{!57, !58, !"_RNvMse_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB7_7set_val9SetValZSTNtB19_14LeafOrInternalE6ascendCshke30g4Hb4g_20ipfs_private_example: argument 0"}
!58 = distinct !{!58, !"_RNvMse_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB7_7set_val9SetValZSTNtB19_14LeafOrInternalE6ascendCshke30g4Hb4g_20ipfs_private_example"}
!59 = !{!60, !62, !42, !45, !46}
!60 = distinct !{!60, !61, !"_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCshke30g4Hb4g_20ipfs_private_example: argument 0"}
!61 = distinct !{!61, !"_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCshke30g4Hb4g_20ipfs_private_example"}
!62 = distinct !{!62, !61, !"_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCshke30g4Hb4g_20ipfs_private_example: argument 1"}
!63 = distinct !{!63, !26}
!64 = !{!45, !46}
!65 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_RINvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB9_7set_val9SetValZSTE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_B29_NtB3O_14LeafOrInternalEB3c_ECshke30g4Hb4g_20ipfs_private_example: argument 0"}
!68 = distinct !{!68, !"_RINvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB9_7set_val9SetValZSTE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_B29_NtB3O_14LeafOrInternalEB3c_ECshke30g4Hb4g_20ipfs_private_example"}
!69 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_removeNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashECshke30g4Hb4g_20ipfs_private_example: argument 1"}
!72 = distinct !{!72, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_removeNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashECshke30g4Hb4g_20ipfs_private_example"}
!73 = !{!74, !67}
!74 = distinct !{!74, !72, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_removeNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashECshke30g4Hb4g_20ipfs_private_example: argument 0"}
!75 = !{!76, !78}
!76 = distinct !{!76, !77, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashECshke30g4Hb4g_20ipfs_private_example: argument 0"}
!77 = distinct !{!77, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashECshke30g4Hb4g_20ipfs_private_example"}
!78 = distinct !{!78, !77, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashECshke30g4Hb4g_20ipfs_private_example: argument 1"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_removeINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB4_7set_val9SetValZSTEEECshke30g4Hb4g_20ipfs_private_example: argument 0"}
!81 = distinct !{!81, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_removeINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB4_7set_val9SetValZSTEEECshke30g4Hb4g_20ipfs_private_example"}
!82 = distinct !{!82, !26}
!83 = !{!84, !86}
!84 = distinct !{!84, !85, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB4_7set_val9SetValZSTEEECshke30g4Hb4g_20ipfs_private_example: argument 0"}
!85 = distinct !{!85, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB4_7set_val9SetValZSTEEECshke30g4Hb4g_20ipfs_private_example"}
!86 = distinct !{!86, !85, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB4_7set_val9SetValZSTEEECshke30g4Hb4g_20ipfs_private_example: argument 1"}
!87 = distinct !{!87, !26}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_RINvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB9_7set_val9SetValZSTE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_B27_NtB3M_14LeafOrInternalEB3a_ECshke30g4Hb4g_20ipfs_private_example: argument 0"}
!90 = distinct !{!90, !"_RINvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB9_7set_val9SetValZSTE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_B27_NtB3M_14LeafOrInternalEB3a_ECshke30g4Hb4g_20ipfs_private_example"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_removeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECshke30g4Hb4g_20ipfs_private_example: argument 1"}
!93 = distinct !{!93, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_removeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECshke30g4Hb4g_20ipfs_private_example"}
!94 = !{!95, !89}
!95 = distinct !{!95, !93, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_removeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECshke30g4Hb4g_20ipfs_private_example: argument 0"}
!96 = !{!97, !99}
!97 = distinct !{!97, !98, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECshke30g4Hb4g_20ipfs_private_example: argument 0"}
!98 = distinct !{!98, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECshke30g4Hb4g_20ipfs_private_example"}
!99 = distinct !{!99, !98, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECshke30g4Hb4g_20ipfs_private_example: argument 1"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_removeINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB4_7set_val9SetValZSTEEECshke30g4Hb4g_20ipfs_private_example: argument 0"}
!102 = distinct !{!102, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_removeINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB4_7set_val9SetValZSTEEECshke30g4Hb4g_20ipfs_private_example"}
!103 = distinct !{!103, !26}
!104 = !{!105, !107}
!105 = distinct !{!105, !106, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB4_7set_val9SetValZSTEEECshke30g4Hb4g_20ipfs_private_example: argument 0"}
!106 = distinct !{!106, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB4_7set_val9SetValZSTEEECshke30g4Hb4g_20ipfs_private_example"}
!107 = distinct !{!107, !106, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB4_7set_val9SetValZSTEEECshke30g4Hb4g_20ipfs_private_example: argument 1"}
!108 = distinct !{!108, !26}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_removeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECshke30g4Hb4g_20ipfs_private_example: argument 1"}
!111 = distinct !{!111, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_removeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECshke30g4Hb4g_20ipfs_private_example"}
!112 = !{!113}
!113 = distinct !{!113, !111, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_removeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECshke30g4Hb4g_20ipfs_private_example: argument 0"}
!114 = !{!115, !117}
!115 = distinct !{!115, !116, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECshke30g4Hb4g_20ipfs_private_example: argument 0"}
!116 = distinct !{!116, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECshke30g4Hb4g_20ipfs_private_example"}
!117 = distinct !{!117, !116, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECshke30g4Hb4g_20ipfs_private_example: argument 1"}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_removeINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB4_7set_val9SetValZSTEEECshke30g4Hb4g_20ipfs_private_example: argument 0"}
!120 = distinct !{!120, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_removeINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB4_7set_val9SetValZSTEEECshke30g4Hb4g_20ipfs_private_example"}
!121 = distinct !{!121, !26}
!122 = !{!123, !125}
!123 = distinct !{!123, !124, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB4_7set_val9SetValZSTEEECshke30g4Hb4g_20ipfs_private_example: argument 0"}
!124 = distinct !{!124, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB4_7set_val9SetValZSTEEECshke30g4Hb4g_20ipfs_private_example"}
!125 = distinct !{!125, !124, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtB4_7set_val9SetValZSTEEECshke30g4Hb4g_20ipfs_private_example: argument 1"}
!126 = distinct !{!126, !26}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECshke30g4Hb4g_20ipfs_private_example: argument 1"}
!129 = distinct !{!129, !"_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECshke30g4Hb4g_20ipfs_private_example"}
!130 = !{!131, !132}
!131 = distinct !{!131, !129, !"_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECshke30g4Hb4g_20ipfs_private_example: argument 0"}
!132 = distinct !{!132, !129, !"_RINvMsK_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECshke30g4Hb4g_20ipfs_private_example: argument 2"}
!133 = !{!131, !128, !132}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_RNvMsJ_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB7_7set_val9SetValZSTNtB1m_4LeafENtB1m_4EdgeE10insert_fitCshke30g4Hb4g_20ipfs_private_example: argument 1"}
!136 = distinct !{!136, !"_RNvMsJ_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB7_7set_val9SetValZSTNtB1m_4LeafENtB1m_4EdgeE10insert_fitCshke30g4Hb4g_20ipfs_private_example"}
!137 = !{!135, !128}
!138 = !{!139, !140, !131, !132}
!139 = distinct !{!139, !136, !"_RNvMsJ_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB7_7set_val9SetValZSTNtB1m_4LeafENtB1m_4EdgeE10insert_fitCshke30g4Hb4g_20ipfs_private_example: argument 0"}
!140 = distinct !{!140, !136, !"_RNvMsJ_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB7_7set_val9SetValZSTNtB1m_4LeafENtB1m_4EdgeE10insert_fitCshke30g4Hb4g_20ipfs_private_example: argument 2"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashECshke30g4Hb4g_20ipfs_private_example: argument 0"}
!143 = distinct !{!143, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashECshke30g4Hb4g_20ipfs_private_example"}
!144 = !{!145, !139, !135, !140, !131, !128, !132}
!145 = distinct !{!145, !143, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashECshke30g4Hb4g_20ipfs_private_example: argument 1"}
!146 = !{!147, !149, !131, !128, !132}
!147 = distinct !{!147, !148, !"_RINvMsV_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECshke30g4Hb4g_20ipfs_private_example: argument 0"}
!148 = distinct !{!148, !"_RINvMsV_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECshke30g4Hb4g_20ipfs_private_example"}
!149 = distinct !{!149, !148, !"_RINvMsV_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECshke30g4Hb4g_20ipfs_private_example: argument 1"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_RNvMsU_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB7_7set_val9SetValZSTNtB1m_4LeafENtB1m_2KVE15split_leaf_dataCshke30g4Hb4g_20ipfs_private_example: argument 1"}
!152 = distinct !{!152, !"_RNvMsU_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB7_7set_val9SetValZSTNtB1m_4LeafENtB1m_2KVE15split_leaf_dataCshke30g4Hb4g_20ipfs_private_example"}
!153 = !{!154, !151, !147, !149, !131, !128, !132}
!154 = distinct !{!154, !152, !"_RNvMsU_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs1pSuea8KFR7_16libp2p_gossipsub5topic9TopicHashNtNtB7_7set_val9SetValZSTNtB1m_4LeafENtB1m_2KVE15split_leaf_dataCshke30g4Hb4g_20ipfs_private_example: argument 0"}
!155 = !{!154, !147, !149, !131, !128, !132}
!156 = !{!"branch_weights", i32 4000000, i32 4001}
!157 = !{!158, !160}
end_hunk_1

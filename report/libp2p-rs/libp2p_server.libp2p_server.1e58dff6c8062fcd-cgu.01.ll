Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_server.libp2p_server.1e58dff6c8062fcd-cgu.01?download=true
inline.NumInlined: 2566
inline.NumDeleted: 1204
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterB1r_B1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4t_E12closest_keysB1r_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server:bb.a
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #44, !noalias !2206
  unreachable

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2206
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.q), !noalias !2205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2206
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ax)
  %i.ay = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2206
  %i.az = icmp eq i8 %i.ay, -1
  br i1 %i.az, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.k, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit
  %.val37 = load ptr, ptr %6, align 8             ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2207)
  call void @llvm.experimental.noalias.scope.decl(metadata !2208)
  %.not58 = icmp samesign ult i64 %3, %.sroa.16.0117346
  br i1 %.not58, label %bb.r, label %bb.q, !prof !45

bb.q:                                             ; preds = %bb.p
  %i.ba = getelementptr [120 x i8], ptr %2, i64 %.sroa.16.0117346 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.x, %bb.q
  %.sroa.19.0.i = phi ptr [ %i.ba, %bb.q ], [ %i.bs, %bb.x ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.q ], [ %.sroa.11.1.lcssa.i, %bb.x ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph124, %bb.q ], [ %i.bu, %bb.x ] ; 3 uses
  %.sroa.0.0.i39 = phi i64 [ %.sroa.0.0.i, %bb.q ], [ %.sroa.16.0117346, %bb.x ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [120 x i8], ptr %.sroa.0.0.ph124, i64 %.sroa.0.0.i39 ; 2 uses
  %i.bd = icmp ult ptr %.sroa.5.0.i, %i.bc
  br i1 %i.bd, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val37) ]
  br label %bb.t

._crit_edge.i:                                    ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit.i, %bb.s
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.s ], [ %i.bm, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit.i ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.s ], [ %i.bp, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit.i ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.s ], [ %i.bq, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit.i ] ; 2 uses
  %i.be = icmp eq i64 %.sroa.0.0.i39, %.sroa.16.0117346
  br i1 %i.be, label %bb.y, label %bb.x

bb.t:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit.i, %.lr.ph.i
  %.sroa.5.117.i = phi ptr [ %.sroa.5.0.i, %.lr.ph.i ], [ %i.bq, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit.i ] ; 4 uses
  %.sroa.11.116.i = phi i64 [ %.sroa.11.0.i, %.lr.ph.i ], [ %i.bp, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit.i ] ; 2 uses
  %.sroa.19.115.i = phi ptr [ %.sroa.19.0.i, %.lr.ph.i ], [ %i.bm, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2209)
  call void @llvm.experimental.noalias.scope.decl(metadata !2210)
  %.val.i.i40 = load ptr, ptr %.val37, align 8, !noalias !2211 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2212)
  call void @llvm.experimental.noalias.scope.decl(metadata !2213)
  %i.bf = load i64, ptr %.sroa.5.117.i, align 8, !range !10, !alias.scope !2214, !noundef !11
  %i.bg = trunc nuw i64 %i.bf to i1
  br i1 %i.bg, label %bb.u, label %bb.v, !prof !44

bb.u:                                             ; preds = %bb.t
  %i.bh = load i64, ptr %i.as, align 8, !range !10, !alias.scope !2215, !noundef !11
  %i.bi = trunc nuw i64 %i.bh to i1
  br i1 %i.bi, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit.i, label %bb.w, !prof !44

bb.v:                                             ; preds = %bb.t
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #44, !noalias !2216
  unreachable

bb.w:                                             ; preds = %bb.u
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #44, !noalias !2216
  unreachable

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit.i: ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.5.117.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2217
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i40) ]
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %.val.i.i40, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.bj), !noalias !2218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2217
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %.val.i.i40, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.bb), !noalias !2208
  %i.bk = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c), !noalias !2208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2217
  %i.bl = icmp eq i8 %i.bk, -1                    ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %.sroa.19.115.i, i64 -120 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.bl, ptr %2, ptr %i.bm
  %i.bn = getelementptr inbounds nuw [120 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.116.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.bn, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.117.i, i64 120, i1 false), !alias.scope !2219, !noalias !2220
  %i.bo = zext i1 %i.bl to i64
  %i.bp = add i64 %.sroa.11.116.i, %i.bo          ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.5.117.i, i64 120 ; 3 uses
  %i.br = icmp ult ptr %i.bq, %i.bc
  br i1 %i.br, label %bb.t, label %._crit_edge.i

bb.x:                                             ; preds = %._crit_edge.i
  %i.bs = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -120 ; 2 uses
  %i.bt = getelementptr inbounds nuw [120 x i8], ptr %i.bs, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.bt, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.1.lcssa.i, i64 120, i1 false), !alias.scope !2219, !noalias !2221
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 120
  br label %bb.s

bb.y:                                             ; preds = %._crit_edge.i
  %i.bv = mul nuw nsw i64 %.sroa.11.1.lcssa.i, 120
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph124, ptr nonnull align 8 %2, i64 %i.bv, i1 false), !alias.scope !2219
  %i.bw = sub i64 %.sroa.16.0117346, %.sroa.11.1.lcssa.i ; 4 uses
  %.not24.i = icmp eq i64 %.sroa.16.0117346, %.sroa.11.1.lcssa.i
  br i1 %.not24.i, label %.loopexit, label %.lr.ph22.i

.lr.ph22.i:                                       ; preds = %bb.y
  %i.bx = getelementptr [120 x i8], ptr %.sroa.0.0.ph124, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.bw, 1
  %i.by = icmp eq i64 %.sroa.16.0117346, %.neg
  br i1 %i.by, label %.epil.preheader, label %.lr.ph22.i.new

.lr.ph22.i.new:                                   ; preds = %.lr.ph22.i
  %unroll_iter = and i64 %i.bw, -2
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph22.i.new
  %.sroa.06.020.i = phi i64 [ 0, %.lr.ph22.i.new ], [ %i.cc, %bb.z ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph22.i.new ], [ %niter.next.1, %bb.z ]
  %i.bz = xor i64 %.sroa.06.020.i, -1
  %i.ca = getelementptr [120 x i8], ptr %i.ba, i64 %i.bz
  %i.cb = getelementptr [120 x i8], ptr %i.bx, i64 %.sroa.06.020.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cb, ptr noundef nonnull align 8 dereferenceable(120) %i.ca, i64 120, i1 false), !alias.scope !2219
  %i.cc = add nuw i64 %.sroa.06.020.i, 2          ; 2 uses
  %i.cd = xor i64 %.sroa.06.020.i, -2
  %i.ce = getelementptr [120 x i8], ptr %i.ba, i64 %i.cd
  %i.cf = getelementptr [120 x i8], ptr %i.bx, i64 %.sroa.06.020.i
  %i.cg = getelementptr i8, ptr %i.cf, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cg, ptr noundef nonnull align 8 dereferenceable(120) %i.ce, i64 120, i1 false), !alias.scope !2219
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.z

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.z
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph22.i
  %.sroa.06.020.i.epil.init = phi i64 [ 0, %.lr.ph22.i ], [ %i.cc, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod451 = trunc i64 %i.bw to i1
  call void @llvm.assume(i1 %lcmp.mod451)
  %i.ch = xor i64 %.sroa.06.020.i.epil.init, -1
  %i.ci = getelementptr [120 x i8], ptr %i.ba, i64 %i.ch
  %i.cj = getelementptr [120 x i8], ptr %i.bx, i64 %.sroa.06.020.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cj, ptr noundef nonnull align 8 dereferenceable(120) %i.ci, i64 120, i1 false), !alias.scope !2219
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.y
  %i.ck = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.ck, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  %.not.i41 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.0117346
  br i1 %.not.i41, label %bb.ab, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs2Bxje7pdMIr_13libp2p_server.exit, !prof !9

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @48, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #44, !noalias !2222
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.aa
  %i.cl = getelementptr inbounds nuw [120 x i8], ptr %.sroa.0.0.ph124, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph124) ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterB1r_B1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4t_E12closest_keysB1r_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 %i.cl, i64 noundef %i.bw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.cm = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.cm, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !2223)
  call void @llvm.experimental.noalias.scope.decl(metadata !2224)
  %.not59 = icmp samesign ult i64 %3, %.sroa.16.0117346
  br i1 %.not59, label %bb.ad, label %bb.ac, !prof !45

bb.ac:                                            ; preds = %.thread
  %i.cn = getelementptr [120 x i8], ptr %2, i64 %.sroa.16.0117346 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  br label %bb.ae

bb.ad:                                            ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.ae:                                            ; preds = %bb.af, %bb.ac
  %.sroa.19.0.i44 = phi ptr [ %i.cn, %bb.ac ], [ %i.de, %bb.af ] ; 2 uses
  %.sroa.11.0.i45 = phi i64 [ 0, %bb.ac ], [ %i.dg, %bb.af ] ; 2 uses
  %.sroa.5.0.i46 = phi ptr [ %.sroa.0.0.ph124, %bb.ac ], [ %i.dh, %bb.af ] ; 3 uses
  %.sroa.0.0.i47 = phi i64 [ %.sroa.0.0.i, %bb.ac ], [ %.sroa.16.0117346, %bb.af ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [120 x i8], ptr %.sroa.0.0.ph124, i64 %.sroa.0.0.i47 ; 2 uses
  %i.cq = icmp ult ptr %.sroa.5.0.i46, %i.cp
  br i1 %i.cq, label %.lr.ph.i54, label %._crit_edge.split.us.i

.lr.ph.i54:                                       ; preds = %bb.ae
  %i.cr = load i64, ptr %i.as, align 8, !range !10, !alias.scope !2225, !noundef !11
  %i.cs = trunc nuw i64 %i.cr to i1
  br i1 %i.cs, label %.lr.ph.split.us.i, label %.lr.ph.split.i, !prof !44

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i54, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs2Bxje7pdMIr_13libp2p_server.exit.us.i
  %.sroa.5.117.us.i = phi ptr [ %i.dc, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs2Bxje7pdMIr_13libp2p_server.exit.us.i ], [ %.sroa.5.0.i46, %.lr.ph.i54 ] ; 4 uses
  %.sroa.11.116.us.i = phi i64 [ %i.db, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs2Bxje7pdMIr_13libp2p_server.exit.us.i ], [ %.sroa.11.0.i45, %.lr.ph.i54 ] ; 2 uses
  %.sroa.19.115.us.i = phi ptr [ %i.cy, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs2Bxje7pdMIr_13libp2p_server.exit.us.i ], [ %.sroa.19.0.i44, %.lr.ph.i54 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2226)
  call void @llvm.experimental.noalias.scope.decl(metadata !2227)
  %.val.i.us.i = load ptr, ptr %6, align 8, !noalias !2228, !nonnull !11, !align !15, !noundef !11
  call void @llvm.experimental.noalias.scope.decl(metadata !2229)
  call void @llvm.experimental.noalias.scope.decl(metadata !2230)
  %.val.i.i.us.i = load ptr, ptr %.val.i.us.i, align 8, !noalias !2231 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2232)
  call void @llvm.experimental.noalias.scope.decl(metadata !2233)
  %i.ct = load i64, ptr %.sroa.5.117.us.i, align 8, !range !10, !alias.scope !2234, !noundef !11
  %i.cu = trunc nuw i64 %i.ct to i1
  br i1 %i.cu, label %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs2Bxje7pdMIr_13libp2p_server.exit.us.i, label %.split.us.i, !prof !44

_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs2Bxje7pdMIr_13libp2p_server.exit.us.i: ; preds = %.lr.ph.split.us.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.5.117.us.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2235
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.us.i) ]
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %.val.i.i.us.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.co), !noalias !2236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2235
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %.val.i.i.us.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.cv), !noalias !2224
  %i.cw = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a), !noalias !2224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2235
  %i.cx = icmp ne i8 %i.cw, -1                    ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %.sroa.19.115.us.i, i64 -120 ; 3 uses
  %.sroa.01.0.i.us.i = select i1 %i.cx, ptr %2, ptr %i.cy
  %i.cz = getelementptr inbounds nuw [120 x i8], ptr %.sroa.01.0.i.us.i, i64 %.sroa.11.116.us.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cz, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.117.us.i, i64 120, i1 false), !alias.scope !2237, !noalias !2238
  %i.da = zext i1 %i.cx to i64
  %i.db = add i64 %.sroa.11.116.us.i, %i.da       ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.5.117.us.i, i64 120 ; 3 uses
  %i.dd = icmp ult ptr %i.dc, %i.cp
  br i1 %i.dd, label %.lr.ph.split.us.i, label %._crit_edge.split.us.i

._crit_edge.split.us.i:                           ; preds = %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs2Bxje7pdMIr_13libp2p_server.exit.us.i, %bb.ae
  %.sroa.19.1.lcssa.i48 = phi ptr [ %.sroa.19.0.i44, %bb.ae ], [ %i.cy, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs2Bxje7pdMIr_13libp2p_server.exit.us.i ]
  %.sroa.11.1.lcssa.i49 = phi i64 [ %.sroa.11.0.i45, %bb.ae ], [ %i.db, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs2Bxje7pdMIr_13libp2p_server.exit.us.i ] ; 10 uses
  %.sroa.5.1.lcssa.i50 = phi ptr [ %.sroa.5.0.i46, %bb.ae ], [ %i.dc, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs2Bxje7pdMIr_13libp2p_server.exit.us.i ] ; 2 uses
  %7 = icmp eq i64 %.sroa.0.0.i47, %.sroa.16.0117346
  br i1 %7, label %bb.ag, label %bb.af

.lr.ph.split.i:                                   ; preds = %.lr.ph.i54
  call void @llvm.experimental.noalias.scope.decl(metadata !2226)
  call void @llvm.experimental.noalias.scope.decl(metadata !2227)
  call void @llvm.experimental.noalias.scope.decl(metadata !2229)
  call void @llvm.experimental.noalias.scope.decl(metadata !2230)
  call void @llvm.experimental.noalias.scope.decl(metadata !2232)
  call void @llvm.experimental.noalias.scope.decl(metadata !2233)
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #44, !noalias !2239
  unreachable

.split.us.i:                                      ; preds = %.lr.ph.split.us.i
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #44, !noalias !2239
  unreachable

bb.af:                                            ; preds = %._crit_edge.split.us.i
  %i.de = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i48, i64 -120
  %i.df = getelementptr inbounds nuw [120 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.df, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.1.lcssa.i50, i64 120, i1 false), !alias.scope !2237, !noalias !2240
  %i.dg = add i64 %.sroa.11.1.lcssa.i49, 1
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i50, i64 120
  br label %bb.ae

bb.ag:                                            ; preds = %._crit_edge.split.us.i
  %i.di = mul nuw nsw i64 %.sroa.11.1.lcssa.i49, 120
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph124, ptr nonnull align 8 %2, i64 %i.di, i1 false), !alias.scope !2237
  %i.dj = sub i64 %.sroa.16.0117346, %.sroa.11.1.lcssa.i49 ; 6 uses
  %.not24.i51 = icmp eq i64 %.sroa.16.0117346, %.sroa.11.1.lcssa.i49
  %i.dk = getelementptr [120 x i8], ptr %.sroa.0.0.ph124, i64 %.sroa.11.1.lcssa.i49 ; 4 uses
  br i1 %.not24.i51, label %.outer.thread, label %.lr.ph23.i.preheader

.lr.ph23.i.preheader:                             ; preds = %bb.ag
  %.neg469 = add i64 %.sroa.11.1.lcssa.i49, 1
  %xtraiter464 = and i64 %i.dj, 1
  %i.dl = icmp eq i64 %.sroa.16.0117346, %.neg469
  br i1 %i.dl, label %.lr.ph23.i.epil.preheader, label %.lr.ph23.i.preheader.new

.lr.ph23.i.preheader.new:                         ; preds = %.lr.ph23.i.preheader
  %unroll_iter467 = and i64 %i.dj, -2
  br label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %.lr.ph23.i, %.lr.ph23.i.preheader.new
  %.sroa.06.022.i = phi i64 [ 0, %.lr.ph23.i.preheader.new ], [ %i.dp, %.lr.ph23.i ] ; 5 uses
  %niter468 = phi i64 [ 0, %.lr.ph23.i.preheader.new ], [ %niter468.next.1, %.lr.ph23.i ]
  %i.dm = xor i64 %.sroa.06.022.i, -1
  %i.dn = getelementptr [120 x i8], ptr %i.cn, i64 %i.dm
  %i.do = getelementptr [120 x i8], ptr %i.dk, i64 %.sroa.06.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.do, ptr noundef nonnull align 8 dereferenceable(120) %i.dn, i64 120, i1 false), !alias.scope !2237
  %i.dp = add nuw i64 %.sroa.06.022.i, 2          ; 2 uses
  %i.dq = xor i64 %.sroa.06.022.i, -2
  %i.dr = getelementptr [120 x i8], ptr %i.cn, i64 %i.dq
  %i.ds = getelementptr [120 x i8], ptr %i.dk, i64 %.sroa.06.022.i
  %i.dt = getelementptr i8, ptr %i.ds, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.dt, ptr noundef nonnull align 8 dereferenceable(120) %i.dr, i64 120, i1 false), !alias.scope !2237
  %niter468.next.1 = add i64 %niter468, 2         ; 2 uses
  %niter468.ncmp.1 = icmp eq i64 %niter468.next.1, %unroll_iter467
  br i1 %niter468.ncmp.1, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs2Bxje7pdMIr_13libp2p_server.exit.unr-lcssa, label %.lr.ph23.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs2Bxje7pdMIr_13libp2p_server.exit.unr-lcssa: ; preds = %.lr.ph23.i
  %lcmp.mod465.not = icmp eq i64 %xtraiter464, 0
  br i1 %lcmp.mod465.not, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs2Bxje7pdMIr_13libp2p_server.exit, label %.lr.ph23.i.epil.preheader

.lr.ph23.i.epil.preheader:                        ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs2Bxje7pdMIr_13libp2p_server.exit.unr-lcssa, %.lr.ph23.i.preheader
  %.sroa.06.022.i.epil.init = phi i64 [ 0, %.lr.ph23.i.preheader ], [ %i.dp, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs2Bxje7pdMIr_13libp2p_server.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod466 = trunc i64 %i.dj to i1
  call void @llvm.assume(i1 %lcmp.mod466)
  %i.du = xor i64 %.sroa.06.022.i.epil.init, -1
  %i.dv = getelementptr [120 x i8], ptr %i.cn, i64 %i.du
  %i.dw = getelementptr [120 x i8], ptr %i.dk, i64 %.sroa.06.022.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.dw, ptr noundef nonnull align 8 dereferenceable(120) %i.dv, i64 120, i1 false), !alias.scope !2237
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs2Bxje7pdMIr_13libp2p_server.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs2Bxje7pdMIr_13libp2p_server.exit.unr-lcssa, %.lr.ph23.i.epil.preheader
  %i.dx = icmp ugt i64 %.sroa.11.1.lcssa.i49, %.sroa.16.0117346
  br i1 %i.dx, label %bb.ah, label %.outer, !prof !9

.outer.thread:                                    ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs2Bxje7pdMIr_13libp2p_server.exit
  %i.dy = getelementptr inbounds nuw [120 x i8], ptr %.sroa.0.0.ph124, i64 %.sroa.11.1.lcssa.i49 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.dz = icmp ult i64 %i.dj, 33
  br i1 %i.dz, label %.outer._crit_edge, label %.lr.ph

bb.ah:                                            ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs2Bxje7pdMIr_13libp2p_server.exit
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i49, i64 noundef %.sroa.16.0117346, i64 noundef %.sroa.16.0117346, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB1s_NtNtB1y_6record3KeyEB1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4O_E12closest_keysB4l_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 76861433640456466) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [120 x i8], align 8               ; 6 uses
  %i.n = icmp samesign ult i64 %1, 33
  br i1 %i.n, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph124 = phi ptr [ %i.ee, %.outer ], [ %0, %bb.a ] ; 21 uses
  %.sroa.16.0.ph123 = phi i64 [ %i.dp, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph122 = phi i32 [ %i.t, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph121 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph124, i64 8 ; 2 uses
  %i.p = ptrtoint ptr %.sroa.0.0.ph124 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph121, null
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph121, i64 8
  %i.r = icmp eq i32 %.sroa.025.0.ph122, 0
  br i1 %i.r, label %.lr.ph._crit_edge, label %.lr.ph348

bb.b:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs2Bxje7pdMIr_13libp2p_server.exit
  %i.s = icmp eq i32 %i.t, 0
  br i1 %i.s, label %.lr.ph._crit_edge, label %.lr.ph348

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs2Bxje7pdMIr_13libp2p_server.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa115 = phi ptr [ %i.dq, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph124, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs2Bxje7pdMIr_13libp2p_server.exit ], [ %i.ee, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.11.1.lcssa.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs2Bxje7pdMIr_13libp2p_server.exit ], [ %i.dp, %.outer ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1s_7sort_byNCNvXs4_B1T_INtB1T_11ClosestIterIB1P_NtNtB1V_6record3KeyEB1O_NtNtB1V_9addresses9AddressesNCINvMs1_B1T_INtB1T_13KBucketsTableB1O_B5b_E12closest_keysB4I_E0B1O_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa115, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.j

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0117.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph123, %.lr.ph ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCNvXs4_B1n_INtB1n_11ClosestIterIB1j_NtNtB1p_6record3KeyEB1i_NtNtB1p_9addresses9AddressesNCINvMs1_B1n_INtB1n_13KBucketsTableB1i_B4E_E12closest_keysB4b_E0B1i_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph124, i64 noundef %.sroa.16.0117.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.j

.lr.ph348:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0116347 = phi i32 [ %i.t, %bb.b ], [ %.sroa.025.0.ph122, %.lr.ph ]
  %.sroa.16.0117346 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph123, %.lr.ph ] ; 21 uses
  %i.t = add i32 %.sroa.025.0116347, -1           ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2300)
  call void @llvm.experimental.noalias.scope.decl(metadata !2301)
  %i.u = lshr i64 %.sroa.16.0117346, 3            ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.u, 480
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph124, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.u, 840
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph124, i64 %.idx2.i ; 4 uses
  %i.x = icmp samesign ult i64 %.sroa.16.0117346, 64
  br i1 %i.x, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph348
  %i.y = call noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB14_7sort_byNCNvXs4_B1v_INtB1v_11ClosestIterIB1r_NtNtB1x_6record3KeyEB1q_NtNtB1x_9addresses9AddressesNCINvMs1_B1v_INtB1v_13KBucketsTableB1q_B4N_E12closest_keysB4k_E0B1q_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph124, ptr noundef nonnull readonly %i.v, ptr noundef nonnull readonly %i.w, i64 noundef %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.k

bb.d:                                             ; preds = %.lr.ph348
  %.val4.i = load ptr, ptr %6, align 8, !alias.scope !2301, !nonnull !11, !align !15, !noundef !11 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2302)
  call void @llvm.experimental.noalias.scope.decl(metadata !2303)
  %.val.i.i = load ptr, ptr %.val4.i, align 8, !noalias !2304 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2305)
  call void @llvm.experimental.noalias.scope.decl(metadata !2306)
  %i.z = load i64, ptr %.sroa.0.0.ph124, align 8, !range !10, !alias.scope !2307, !noundef !11
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %bb.e, label %bb.f, !prof !44

bb.e:                                             ; preds = %bb.d
  %i.ab = load i64, ptr %i.v, align 8, !range !10, !alias.scope !2308, !noundef !11
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %bb.h, label %bb.g, !prof !44

bb.f:                                             ; preds = %bb.d
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #44, !noalias !2309
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #44, !noalias !2309
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2309
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 32 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.o), !noalias !2310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2309
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ad), !noalias !2301
  %i.af = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k), !noalias !2301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2309
  %i.ag = icmp eq i8 %i.af, -1                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2311)
  %.val.i5.i = load ptr, ptr %.val4.i, align 8, !noalias !2312 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2313)
  %i.ah = load i64, ptr %i.w, align 8, !range !10, !alias.scope !2314, !noundef !11
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit6.i, label %bb.i, !prof !44

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #44, !noalias !2315
  unreachable

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit6.i: ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2316
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i5.i) ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i5.i, i64 32 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.o), !noalias !2317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2316
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.aj), !noalias !2301
  %i.al = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i), !noalias !2301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2316
  %i.am = icmp eq i8 %i.al, -1
  %i.an = xor i1 %i.ag, %i.am
  br i1 %i.an, label %bb.k, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit8.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit8.i: ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit6.i
  %.val.i7.i = load ptr, ptr %.val4.i, align 8, !noalias !2318, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2319
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i7.i, i64 32 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ad), !noalias !2320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2319
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.aj), !noalias !2301
  %i.ap = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g), !noalias !2301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2319
  %i.aq = icmp eq i8 %i.ap, -1
  %i.ar = xor i1 %i.ag, %i.aq
  %..i.i = select i1 %i.ar, ptr %i.w, ptr %i.v
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.k:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit8.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit6.i, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %i.y, %bb.c ], [ %.sroa.0.0.ph124, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit6.i ], [ %..i.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit8.i ]
  %i.as = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.at = sub nuw i64 %i.as, %i.p                 ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.at, 120        ; 3 uses
  %i.au = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.0117346
  call void @llvm.assume(i1 %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph124, i64 %i.at ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.m, ptr noundef nonnull align 8 dereferenceable(120) %i.av, i64 120, i1 false)
  br i1 %.not, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val = load ptr, ptr %6, align 8, !nonnull !11, !align !15, !noundef !11
  call void @llvm.experimental.noalias.scope.decl(metadata !2321)
  call void @llvm.experimental.noalias.scope.decl(metadata !2322)
  %.val.i = load ptr, ptr %.val, align 8, !noalias !2323 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2324)
  call void @llvm.experimental.noalias.scope.decl(metadata !2325)
  %i.aw = load i64, ptr %.sroa.028.0.ph121, align 8, !range !10, !alias.scope !2326, !noundef !11
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %bb.m, label %bb.n, !prof !44

bb.m:                                             ; preds = %bb.l
  %i.ay = load i64, ptr %i.av, align 8, !range !10, !alias.scope !2327, !noundef !11
  %i.az = trunc nuw i64 %i.ay to i1
  br i1 %i.az, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit, label %bb.o, !prof !44

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #44, !noalias !2328
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #44, !noalias !2328
  unreachable

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2328
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.val.i, i64 32 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.bb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.q), !noalias !2327
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2328
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.bb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ba)
  %i.bc = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2328
  %i.bd = icmp eq i8 %i.bc, -1
  br i1 %i.bd, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.k, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit
  %.val37 = load ptr, ptr %6, align 8             ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2329)
  call void @llvm.experimental.noalias.scope.decl(metadata !2330)
  %.not58 = icmp samesign ult i64 %3, %.sroa.16.0117346
  br i1 %.not58, label %bb.r, label %bb.q, !prof !45

bb.q:                                             ; preds = %bb.p
  %i.be = getelementptr [120 x i8], ptr %2, i64 %.sroa.16.0117346 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.x, %bb.q
  %.sroa.19.0.i = phi ptr [ %i.be, %bb.q ], [ %i.bx, %bb.x ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.q ], [ %.sroa.11.1.lcssa.i, %bb.x ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph124, %bb.q ], [ %i.bz, %bb.x ] ; 3 uses
  %.sroa.0.0.i39 = phi i64 [ %.sroa.0.0.i, %bb.q ], [ %.sroa.16.0117346, %bb.x ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [120 x i8], ptr %.sroa.0.0.ph124, i64 %.sroa.0.0.i39 ; 2 uses
  %i.bh = icmp ult ptr %.sroa.5.0.i, %i.bg
  br i1 %i.bh, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val37) ]
  br label %bb.t

._crit_edge.i:                                    ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit.i, %bb.s
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.s ], [ %i.br, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit.i ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.s ], [ %i.bu, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit.i ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.s ], [ %i.bv, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit.i ] ; 2 uses
  %i.bi = icmp eq i64 %.sroa.0.0.i39, %.sroa.16.0117346
  br i1 %i.bi, label %bb.y, label %bb.x

bb.t:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit.i, %.lr.ph.i
  %.sroa.5.117.i = phi ptr [ %.sroa.5.0.i, %.lr.ph.i ], [ %i.bv, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit.i ] ; 4 uses
  %.sroa.11.116.i = phi i64 [ %.sroa.11.0.i, %.lr.ph.i ], [ %i.bu, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit.i ] ; 2 uses
  %.sroa.19.115.i = phi ptr [ %.sroa.19.0.i, %.lr.ph.i ], [ %i.br, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2331)
  call void @llvm.experimental.noalias.scope.decl(metadata !2332)
  %.val.i.i40 = load ptr, ptr %.val37, align 8, !noalias !2333 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2334)
  call void @llvm.experimental.noalias.scope.decl(metadata !2335)
  %i.bj = load i64, ptr %.sroa.5.117.i, align 8, !range !10, !alias.scope !2336, !noundef !11
  %i.bk = trunc nuw i64 %i.bj to i1
  br i1 %i.bk, label %bb.u, label %bb.v, !prof !44

bb.u:                                             ; preds = %bb.t
  %i.bl = load i64, ptr %i.av, align 8, !range !10, !alias.scope !2337, !noundef !11
  %i.bm = trunc nuw i64 %i.bl to i1
  br i1 %i.bm, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit.i, label %bb.w, !prof !44

bb.v:                                             ; preds = %bb.t
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #44, !noalias !2338
  unreachable

bb.w:                                             ; preds = %bb.u
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #44, !noalias !2338
  unreachable

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit.i: ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.5.117.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2339
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i40) ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.i.i40, i64 32 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.bo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.bn), !noalias !2340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2339
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.bo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.bf), !noalias !2330
  %i.bp = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c), !noalias !2330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2339
  %i.bq = icmp eq i8 %i.bp, -1                    ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %.sroa.19.115.i, i64 -120 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.bq, ptr %2, ptr %i.br
  %i.bs = getelementptr inbounds nuw [120 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.116.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.bs, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.117.i, i64 120, i1 false), !alias.scope !2341, !noalias !2342
  %i.bt = zext i1 %i.bq to i64
  %i.bu = add i64 %.sroa.11.116.i, %i.bt          ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.5.117.i, i64 120 ; 3 uses
  %i.bw = icmp ult ptr %i.bv, %i.bg
  br i1 %i.bw, label %bb.t, label %._crit_edge.i

bb.x:                                             ; preds = %._crit_edge.i
  %i.bx = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -120 ; 2 uses
  %i.by = getelementptr inbounds nuw [120 x i8], ptr %i.bx, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.by, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.1.lcssa.i, i64 120, i1 false), !alias.scope !2341, !noalias !2343
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 120
  br label %bb.s

bb.y:                                             ; preds = %._crit_edge.i
  %i.ca = mul nuw nsw i64 %.sroa.11.1.lcssa.i, 120
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph124, ptr nonnull align 8 %2, i64 %i.ca, i1 false), !alias.scope !2341
  %i.cb = sub i64 %.sroa.16.0117346, %.sroa.11.1.lcssa.i ; 4 uses
  %.not24.i = icmp eq i64 %.sroa.16.0117346, %.sroa.11.1.lcssa.i
  br i1 %.not24.i, label %.loopexit, label %.lr.ph22.i

.lr.ph22.i:                                       ; preds = %bb.y
  %i.cc = getelementptr [120 x i8], ptr %.sroa.0.0.ph124, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.cb, 1
  %i.cd = icmp eq i64 %.sroa.16.0117346, %.neg
  br i1 %i.cd, label %.epil.preheader, label %.lr.ph22.i.new

.lr.ph22.i.new:                                   ; preds = %.lr.ph22.i
  %unroll_iter = and i64 %i.cb, -2
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph22.i.new
  %.sroa.06.020.i = phi i64 [ 0, %.lr.ph22.i.new ], [ %i.ch, %bb.z ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph22.i.new ], [ %niter.next.1, %bb.z ]
  %i.ce = xor i64 %.sroa.06.020.i, -1
  %i.cf = getelementptr [120 x i8], ptr %i.be, i64 %i.ce
  %i.cg = getelementptr [120 x i8], ptr %i.cc, i64 %.sroa.06.020.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cg, ptr noundef nonnull align 8 dereferenceable(120) %i.cf, i64 120, i1 false), !alias.scope !2341
  %i.ch = add nuw i64 %.sroa.06.020.i, 2          ; 2 uses
  %i.ci = xor i64 %.sroa.06.020.i, -2
  %i.cj = getelementptr [120 x i8], ptr %i.be, i64 %i.ci
  %i.ck = getelementptr [120 x i8], ptr %i.cc, i64 %.sroa.06.020.i
  %i.cl = getelementptr i8, ptr %i.ck, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cl, ptr noundef nonnull align 8 dereferenceable(120) %i.cj, i64 120, i1 false), !alias.scope !2341
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.z

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.z
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph22.i
  %.sroa.06.020.i.epil.init = phi i64 [ 0, %.lr.ph22.i ], [ %i.ch, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod451 = trunc i64 %i.cb to i1
  call void @llvm.assume(i1 %lcmp.mod451)
  %i.cm = xor i64 %.sroa.06.020.i.epil.init, -1
  %i.cn = getelementptr [120 x i8], ptr %i.be, i64 %i.cm
  %i.co = getelementptr [120 x i8], ptr %i.cc, i64 %.sroa.06.020.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.co, ptr noundef nonnull align 8 dereferenceable(120) %i.cn, i64 120, i1 false), !alias.scope !2341
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.y
  %i.cp = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.cp, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  %.not.i41 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.0117346
  br i1 %.not.i41, label %bb.ab, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs2Bxje7pdMIr_13libp2p_server.exit, !prof !9

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @48, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #44, !noalias !2344
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.aa
  %i.cq = getelementptr inbounds nuw [120 x i8], ptr %.sroa.0.0.ph124, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph124) ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB1s_NtNtB1y_6record3KeyEB1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4O_E12closest_keysB4l_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 %i.cq, i64 noundef %i.cb, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.cr = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.cr, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !2345)
  call void @llvm.experimental.noalias.scope.decl(metadata !2346)
  %.not59 = icmp samesign ult i64 %3, %.sroa.16.0117346
  br i1 %.not59, label %bb.ad, label %bb.ac, !prof !45

bb.ac:                                            ; preds = %.thread
  %i.cs = getelementptr [120 x i8], ptr %2, i64 %.sroa.16.0117346 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  br label %bb.ae

bb.ad:                                            ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.ae:                                            ; preds = %bb.af, %bb.ac
  %.sroa.19.0.i44 = phi ptr [ %i.cs, %bb.ac ], [ %i.dk, %bb.af ] ; 2 uses
  %.sroa.11.0.i45 = phi i64 [ 0, %bb.ac ], [ %i.dm, %bb.af ] ; 2 uses
  %.sroa.5.0.i46 = phi ptr [ %.sroa.0.0.ph124, %bb.ac ], [ %i.dn, %bb.af ] ; 3 uses
  %.sroa.0.0.i47 = phi i64 [ %.sroa.0.0.i, %bb.ac ], [ %.sroa.16.0117346, %bb.af ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [120 x i8], ptr %.sroa.0.0.ph124, i64 %.sroa.0.0.i47 ; 2 uses
  %i.cv = icmp ult ptr %.sroa.5.0.i46, %i.cu
  br i1 %i.cv, label %.lr.ph.i54, label %._crit_edge.split.us.i

.lr.ph.i54:                                       ; preds = %bb.ae
  %i.cw = load i64, ptr %i.av, align 8, !range !10, !alias.scope !2347, !noundef !11
  %i.cx = trunc nuw i64 %i.cw to i1
  br i1 %i.cx, label %.lr.ph.split.us.i, label %.lr.ph.split.i, !prof !44

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i54, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs2Bxje7pdMIr_13libp2p_server.exit.us.i
  %.sroa.5.117.us.i = phi ptr [ %i.di, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs2Bxje7pdMIr_13libp2p_server.exit.us.i ], [ %.sroa.5.0.i46, %.lr.ph.i54 ] ; 4 uses
  %.sroa.11.116.us.i = phi i64 [ %i.dh, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs2Bxje7pdMIr_13libp2p_server.exit.us.i ], [ %.sroa.11.0.i45, %.lr.ph.i54 ] ; 2 uses
  %.sroa.19.115.us.i = phi ptr [ %i.de, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs2Bxje7pdMIr_13libp2p_server.exit.us.i ], [ %.sroa.19.0.i44, %.lr.ph.i54 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2348)
  call void @llvm.experimental.noalias.scope.decl(metadata !2349)
  %.val.i.us.i = load ptr, ptr %6, align 8, !noalias !2350, !nonnull !11, !align !15, !noundef !11
  call void @llvm.experimental.noalias.scope.decl(metadata !2351)
  call void @llvm.experimental.noalias.scope.decl(metadata !2352)
  %.val.i.i.us.i = load ptr, ptr %.val.i.us.i, align 8, !noalias !2353 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2354)
  call void @llvm.experimental.noalias.scope.decl(metadata !2355)
  %i.cy = load i64, ptr %.sroa.5.117.us.i, align 8, !range !10, !alias.scope !2356, !noundef !11
  %i.cz = trunc nuw i64 %i.cy to i1
  br i1 %i.cz, label %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs2Bxje7pdMIr_13libp2p_server.exit.us.i, label %.split.us.i, !prof !44

_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs2Bxje7pdMIr_13libp2p_server.exit.us.i: ; preds = %.lr.ph.split.us.i
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.5.117.us.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2357
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.us.i) ]
  %i.db = getelementptr inbounds nuw i8, ptr %.val.i.i.us.i, i64 32 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.db, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ct), !noalias !2358
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2357
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.db, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.da), !noalias !2346
  %i.dc = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a), !noalias !2346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2357
  %i.dd = icmp ne i8 %i.dc, -1                    ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.19.115.us.i, i64 -120 ; 3 uses
  %.sroa.01.0.i.us.i = select i1 %i.dd, ptr %2, ptr %i.de
  %i.df = getelementptr inbounds nuw [120 x i8], ptr %.sroa.01.0.i.us.i, i64 %.sroa.11.116.us.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.df, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.117.us.i, i64 120, i1 false), !alias.scope !2359, !noalias !2360
  %i.dg = zext i1 %i.dd to i64
  %i.dh = add i64 %.sroa.11.116.us.i, %i.dg       ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.5.117.us.i, i64 120 ; 3 uses
  %i.dj = icmp ult ptr %i.di, %i.cu
  br i1 %i.dj, label %.lr.ph.split.us.i, label %._crit_edge.split.us.i

._crit_edge.split.us.i:                           ; preds = %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs2Bxje7pdMIr_13libp2p_server.exit.us.i, %bb.ae
  %.sroa.19.1.lcssa.i48 = phi ptr [ %.sroa.19.0.i44, %bb.ae ], [ %i.de, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs2Bxje7pdMIr_13libp2p_server.exit.us.i ]
  %.sroa.11.1.lcssa.i49 = phi i64 [ %.sroa.11.0.i45, %bb.ae ], [ %i.dh, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs2Bxje7pdMIr_13libp2p_server.exit.us.i ] ; 10 uses
  %.sroa.5.1.lcssa.i50 = phi ptr [ %.sroa.5.0.i46, %bb.ae ], [ %i.di, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs2Bxje7pdMIr_13libp2p_server.exit.us.i ] ; 2 uses
  %7 = icmp eq i64 %.sroa.0.0.i47, %.sroa.16.0117346
  br i1 %7, label %bb.ag, label %bb.af

.lr.ph.split.i:                                   ; preds = %.lr.ph.i54
  call void @llvm.experimental.noalias.scope.decl(metadata !2348)
  call void @llvm.experimental.noalias.scope.decl(metadata !2349)
  call void @llvm.experimental.noalias.scope.decl(metadata !2351)
  call void @llvm.experimental.noalias.scope.decl(metadata !2352)
  call void @llvm.experimental.noalias.scope.decl(metadata !2354)
  call void @llvm.experimental.noalias.scope.decl(metadata !2355)
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #44, !noalias !2361
  unreachable

.split.us.i:                                      ; preds = %.lr.ph.split.us.i
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #44, !noalias !2361
  unreachable

bb.af:                                            ; preds = %._crit_edge.split.us.i
  %i.dk = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i48, i64 -120
  %i.dl = getelementptr inbounds nuw [120 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.dl, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.1.lcssa.i50, i64 120, i1 false), !alias.scope !2359, !noalias !2362
  %i.dm = add i64 %.sroa.11.1.lcssa.i49, 1
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i50, i64 120
  br label %bb.ae

bb.ag:                                            ; preds = %._crit_edge.split.us.i
  %i.do = mul nuw nsw i64 %.sroa.11.1.lcssa.i49, 120
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph124, ptr nonnull align 8 %2, i64 %i.do, i1 false), !alias.scope !2359
  %i.dp = sub i64 %.sroa.16.0117346, %.sroa.11.1.lcssa.i49 ; 6 uses
  %.not24.i51 = icmp eq i64 %.sroa.16.0117346, %.sroa.11.1.lcssa.i49
  %i.dq = getelementptr [120 x i8], ptr %.sroa.0.0.ph124, i64 %.sroa.11.1.lcssa.i49 ; 4 uses
  br i1 %.not24.i51, label %.outer.thread, label %.lr.ph23.i.preheader

.lr.ph23.i.preheader:                             ; preds = %bb.ag
  %.neg469 = add i64 %.sroa.11.1.lcssa.i49, 1
  %xtraiter464 = and i64 %i.dp, 1
  %i.dr = icmp eq i64 %.sroa.16.0117346, %.neg469
  br i1 %i.dr, label %.lr.ph23.i.epil.preheader, label %.lr.ph23.i.preheader.new

.lr.ph23.i.preheader.new:                         ; preds = %.lr.ph23.i.preheader
  %unroll_iter467 = and i64 %i.dp, -2
  br label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %.lr.ph23.i, %.lr.ph23.i.preheader.new
  %.sroa.06.022.i = phi i64 [ 0, %.lr.ph23.i.preheader.new ], [ %i.dv, %.lr.ph23.i ] ; 5 uses
  %niter468 = phi i64 [ 0, %.lr.ph23.i.preheader.new ], [ %niter468.next.1, %.lr.ph23.i ]
  %i.ds = xor i64 %.sroa.06.022.i, -1
  %i.dt = getelementptr [120 x i8], ptr %i.cs, i64 %i.ds
  %i.du = getelementptr [120 x i8], ptr %i.dq, i64 %.sroa.06.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.du, ptr noundef nonnull align 8 dereferenceable(120) %i.dt, i64 120, i1 false), !alias.scope !2359
  %i.dv = add nuw i64 %.sroa.06.022.i, 2          ; 2 uses
  %i.dw = xor i64 %.sroa.06.022.i, -2
  %i.dx = getelementptr [120 x i8], ptr %i.cs, i64 %i.dw
  %i.dy = getelementptr [120 x i8], ptr %i.dq, i64 %.sroa.06.022.i
  %i.dz = getelementptr i8, ptr %i.dy, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.dz, ptr noundef nonnull align 8 dereferenceable(120) %i.dx, i64 120, i1 false), !alias.scope !2359
  %niter468.next.1 = add i64 %niter468, 2         ; 2 uses
  %niter468.ncmp.1 = icmp eq i64 %niter468.next.1, %unroll_iter467
  br i1 %niter468.ncmp.1, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs2Bxje7pdMIr_13libp2p_server.exit.unr-lcssa, label %.lr.ph23.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs2Bxje7pdMIr_13libp2p_server.exit.unr-lcssa: ; preds = %.lr.ph23.i
  %lcmp.mod465.not = icmp eq i64 %xtraiter464, 0
  br i1 %lcmp.mod465.not, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs2Bxje7pdMIr_13libp2p_server.exit, label %.lr.ph23.i.epil.preheader

.lr.ph23.i.epil.preheader:                        ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs2Bxje7pdMIr_13libp2p_server.exit.unr-lcssa, %.lr.ph23.i.preheader
  %.sroa.06.022.i.epil.init = phi i64 [ 0, %.lr.ph23.i.preheader ], [ %i.dv, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs2Bxje7pdMIr_13libp2p_server.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod466 = trunc i64 %i.dp to i1
  call void @llvm.assume(i1 %lcmp.mod466)
  %i.ea = xor i64 %.sroa.06.022.i.epil.init, -1
  %i.eb = getelementptr [120 x i8], ptr %i.cs, i64 %i.ea
  %i.ec = getelementptr [120 x i8], ptr %i.dq, i64 %.sroa.06.022.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ec, ptr noundef nonnull align 8 dereferenceable(120) %i.eb, i64 120, i1 false), !alias.scope !2359
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs2Bxje7pdMIr_13libp2p_server.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs2Bxje7pdMIr_13libp2p_server.exit.unr-lcssa, %.lr.ph23.i.epil.preheader
  %i.ed = icmp ugt i64 %.sroa.11.1.lcssa.i49, %.sroa.16.0117346
  br i1 %i.ed, label %bb.ah, label %.outer, !prof !9

.outer.thread:                                    ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs2Bxje7pdMIr_13libp2p_server.exit
  %i.ee = getelementptr inbounds nuw [120 x i8], ptr %.sroa.0.0.ph124, i64 %.sroa.11.1.lcssa.i49 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ef = icmp ult i64 %i.dp, 33
  br i1 %i.ef, label %.outer._crit_edge, label %.lr.ph

bb.ah:                                            ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs2Bxje7pdMIr_13libp2p_server.exit
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i49, i64 noundef %.sroa.16.0117346, i64 noundef %.sroa.16.0117346, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #44
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1w_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1y_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB2n_INtNtB44_3vec3VechEEB2m_B3s_NCINvMs1_B1w_INtB1w_13KBucketsTableB2m_B3s_E7closestB5d_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 28120036697727976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 28120036697727976) %3, i32 noundef %4, ptr nofree noundef readonly align 8 captures(address, read_provenance) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = icmp samesign ult i64 %1, 17
  br i1 %i.m, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph148 = phi ptr [ %i.dz, %.outer ], [ %0, %bb.a ] ; 22 uses
  %.sroa.16.0.ph147 = phi i64 [ %i.dk, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph146 = phi i32 [ %i.t, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph145 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph148, i64 208 ; 2 uses
  %i.o = ptrtoint ptr %.sroa.0.0.ph148 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph145, null
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph145, i64 208
  %i.q = icmp eq i32 %.sroa.025.0.ph146, 0
  br i1 %i.q, label %.lr.ph._crit_edge, label %.lr.ph413

bb.b:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCs2Bxje7pdMIr_13libp2p_server.exit
  %i.r = icmp eq i32 %i.t, 0
  br i1 %i.r, label %.lr.ph._crit_edge, label %.lr.ph413

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCs2Bxje7pdMIr_13libp2p_server.exit, %bb.a
  %.sroa.0.0.ph.lcssa139 = phi ptr [ %.sroa.0.0.ph148, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCs2Bxje7pdMIr_13libp2p_server.exit ], [ %0, %bb.a ], [ %i.dz, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCs2Bxje7pdMIr_13libp2p_server.exit ], [ %1, %bb.a ], [ %i.dk, %.outer ] ; 2 uses
  %i.s = icmp samesign ugt i64 %.sroa.16.0.lcssa, 1
  br i1 %i.s, label %bb.c, label %_RINvXNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtNtBb_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1n_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1p_9addresses9AddressesEENtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCNvXs4_B1n_INtB1n_11ClosestIterIB2e_INtNtB4B_3vec3VechEEB2d_B3j_NCINvMs1_B1n_INtB1n_13KBucketsTableB2d_B3j_E7closestB5J_E0B1i_ENtNtNtNtBb_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server.exit

bb.c:                                             ; preds = %.outer._crit_edge
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1N_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1P_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1m_7sort_byNCNvXs4_B1N_INtB1N_11ClosestIterIB2E_INtNtB4l_3vec3VechEEB2D_B3J_NCINvMs1_B1N_INtB1N_13KBucketsTableB2D_B3J_E7closestB5u_E0B1I_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa139, i64 noundef range(i64 0, 17) %.sroa.16.0.lcssa, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %_RINvXNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtNtBb_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1n_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1p_9addresses9AddressesEENtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCNvXs4_B1n_INtB1n_11ClosestIterIB2e_INtNtB4B_3vec3VechEEB2d_B3j_NCINvMs1_B1n_INtB1n_13KBucketsTableB2d_B3j_E7closestB5J_E0B1i_ENtNtNtNtBb_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server.exit

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0141.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph147, %.lr.ph ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1n_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1p_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCNvXs4_B1n_INtB1n_11ClosestIterIB2e_INtNtB3V_3vec3VechEEB2d_B3j_NCINvMs1_B1n_INtB1n_13KBucketsTableB2d_B3j_E7closestB53_E0B1i_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph148, i64 noundef %.sroa.16.0141.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %_RINvXNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtNtBb_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1n_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1p_9addresses9AddressesEENtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCNvXs4_B1n_INtB1n_11ClosestIterIB2e_INtNtB4B_3vec3VechEEB2d_B3j_NCINvMs1_B1n_INtB1n_13KBucketsTableB2d_B3j_E7closestB5J_E0B1i_ENtNtNtNtBb_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server.exit

.lr.ph413:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0140412 = phi i32 [ %i.t, %bb.b ], [ %.sroa.025.0.ph146, %.lr.ph ]
  %.sroa.16.0141411 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph147, %.lr.ph ] ; 21 uses
  %i.t = add i32 %.sroa.025.0140412, -1           ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2382)
  %i.u = lshr i64 %.sroa.16.0141411, 3            ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.u, 1312
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph148, i64 %.idx.i ; 5 uses
  %.idx2.i = mul nuw nsw i64 %i.u, 2296
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph148, i64 %.idx2.i ; 5 uses
  %i.x = icmp samesign ult i64 %.sroa.16.0141411, 64
  br i1 %i.x, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph413
  %i.y = call noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1v_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1x_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB14_7sort_byNCNvXs4_B1v_INtB1v_11ClosestIterIB2m_INtNtB43_3vec3VechEEB2l_B3r_NCINvMs1_B1v_INtB1v_13KBucketsTableB2l_B3r_E7closestB5c_E0B1q_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server(ptr noundef nonnull align 8 %.sroa.0.0.ph148, ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, i64 noundef %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.p

bb.e:                                             ; preds = %.lr.ph413
  %.val4.i = load ptr, ptr %6, align 8, !alias.scope !2382, !nonnull !11, !align !15, !noundef !11 ; 3 uses
  %.val.i.i = load ptr, ptr %.val4.i, align 8, !noalias !2382 ; 2 uses
  %i.z = load i64, ptr %.sroa.0.0.ph148, align 8, !range !14, !noalias !2382, !noundef !11
  %.not.i.i.i = icmp eq i64 %i.z, 2
  br i1 %.not.i.i.i, label %bb.g, label %bb.f, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.aa = load i64, ptr %i.v, align 8, !range !14, !noalias !2382, !noundef !11
  %.not2.i.i.i = icmp eq i64 %i.aa, 2
  br i1 %.not2.i.i.i, label %bb.h, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit.i, !prof !9

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #44, !noalias !2382
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #44, !noalias !2382
  unreachable

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit.i: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2382
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.n), !noalias !2382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2382
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 208 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ac), !noalias !2382
  %i.ad = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k), !noalias !2382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2382
  %i.ae = icmp eq i8 %i.ad, -1                    ; 2 uses
  %.val.i5.i = load ptr, ptr %.val4.i, align 8, !noalias !2382 ; 2 uses
  %i.af = load i64, ptr %.sroa.0.0.ph148, align 8, !range !14, !noalias !2382, !noundef !11
  %.not.i.i6.i = icmp eq i64 %i.af, 2
  br i1 %.not.i.i6.i, label %bb.j, label %bb.i, !prof !9

bb.i:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit.i
  %i.ag = load i64, ptr %i.w, align 8, !range !14, !noalias !2382, !noundef !11
  %.not2.i.i7.i = icmp eq i64 %i.ag, 2
  br i1 %.not2.i.i7.i, label %bb.k, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit8.i, !prof !9

bb.j:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit.i
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #44, !noalias !2382
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #44, !noalias !2382
  unreachable

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit8.i: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2382
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i5.i) ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.i5.i, i64 24 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.n), !noalias !2382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2382
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 208 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ai), !noalias !2382
  %i.aj = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i), !noalias !2382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2382
  %i.ak = icmp eq i8 %i.aj, -1
  %i.al = xor i1 %i.ae, %i.ak
  br i1 %i.al, label %bb.p, label %bb.l

bb.l:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit8.i
  %.val.i9.i = load ptr, ptr %.val4.i, align 8, !noalias !2382 ; 2 uses
  %i.am = load i64, ptr %i.v, align 8, !range !14, !noalias !2382, !noundef !11
  %.not.i.i10.i = icmp eq i64 %i.am, 2
  br i1 %.not.i.i10.i, label %bb.n, label %bb.m, !prof !9

bb.m:                                             ; preds = %bb.l
  %i.an = load i64, ptr %i.w, align 8, !range !14, !noalias !2382, !noundef !11
  %.not2.i.i11.i = icmp eq i64 %i.an, 2
  br i1 %.not2.i.i11.i, label %bb.o, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit12.i, !prof !9

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #44, !noalias !2382
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #44, !noalias !2382
  unreachable

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit12.i: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2382
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i9.i) ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i9.i, i64 24 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ac), !noalias !2382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2382
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ai), !noalias !2382
  %i.ap = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g), !noalias !2382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2382
  %i.aq = icmp eq i8 %i.ap, -1
  %i.ar = xor i1 %i.ae, %i.aq
  %..i.i = select i1 %i.ar, ptr %i.w, ptr %i.v
  br label %bb.p

_RINvXNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtNtBb_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1n_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1p_9addresses9AddressesEENtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCNvXs4_B1n_INtB1n_11ClosestIterIB2e_INtNtB4B_3vec3VechEEB2d_B3j_NCINvMs1_B1n_INtB1n_13KBucketsTableB2d_B3j_E7closestB5J_E0B1i_ENtNtNtNtBb_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.an, %bb.c, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.p:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit12.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit8.i, %bb.d
  %.sroa.0.0.i.sink.i = phi ptr [ %i.y, %bb.d ], [ %.sroa.0.0.ph148, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit8.i ], [ %..i.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit12.i ]
  %i.as = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.at = sub nuw i64 %i.as, %i.o                 ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.at, 328        ; 3 uses
  %i.au = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.0141411
  call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph148, i64 %i.at ; 8 uses
  br i1 %.not, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val = load ptr, ptr %6, align 8, !nonnull !11, !align !15, !noundef !11
  %.val.i = load ptr, ptr %.val, align 8          ; 2 uses
  %i.aw = load i64, ptr %.sroa.028.0.ph145, align 8, !range !14, !noundef !11
  %.not.i.i = icmp eq i64 %i.aw, 2
  br i1 %.not.i.i, label %bb.s, label %bb.r, !prof !9

bb.r:                                             ; preds = %bb.q
  %i.ax = load i64, ptr %i.av, align 8, !range !14, !noundef !11
  %.not2.i.i = icmp eq i64 %i.ax, 2
  br i1 %.not2.i.i, label %bb.t, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server.exit, !prof !9

bb.s:                                             ; preds = %bb.q
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #44
  unreachable

bb.t:                                             ; preds = %bb.r
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #44
  unreachable
end_hunk_0
begin_hunk_1_@llvm.smax.i8
!2035 = !{!2005}
!2036 = !{!2007}
!2037 = !{!2007, !2005, !2003}
!2038 = !{!2010}
!2039 = !{!2012}
!2040 = !{!2014}
!2041 = !{!2014, !2012, !2010}
!2042 = !{!2016}
!2043 = !{!2018}
!2044 = !{!2020}
!2045 = !{!2020, !2018, !2016}
!2046 = !{!2022}
!2047 = !{!2024}
!2048 = !{!2026}
!2049 = !{!2028}
!2050 = !{!2028, !2026, !2024, !2022}
!2051 = distinct !{!2051, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2Bxje7pdMIr_13libp2p_server"}
!2052 = distinct !{!2052, !2051, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2053 = distinct !{!2053, i1 true, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs2Bxje7pdMIr_13libp2p_server"}
!2054 = distinct !{!2054, !2053, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2055 = !{!2052}
!2056 = !{!2054}
!2057 = distinct !{!2057, i1 true, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs2Bxje7pdMIr_13libp2p_server"}
!2058 = distinct !{!2058, !2057, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2059 = !{!2058}
!2060 = distinct !{!2060, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs2Bxje7pdMIr_13libp2p_server"}
!2061 = distinct !{!2061, !2060, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2062 = distinct !{!2062, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!2063 = distinct !{!2063, !2062, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!2064 = distinct !{null}
!2065 = distinct !{!2065, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs2Bxje7pdMIr_13libp2p_server"}
!2066 = distinct !{!2066, !2065, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2067 = distinct !{!2067, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!2068 = distinct !{!2068, !2067, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!2069 = distinct !{null, null}
!2070 = !{!2061}
!2071 = !{!2063}
!2072 = !{!2063, !2061}
!2073 = !{!2066}
!2074 = !{!2068}
!2075 = !{!2068, !2066}
!2076 = distinct !{!2076, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs2Bxje7pdMIr_13libp2p_server"}
!2077 = distinct !{!2077, !2076, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2078 = !{!2077}
!2079 = distinct !{!2079, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs1oStim3y6Gv_7tinyvec7tinyvec7TinyVecAhj20_EECs2Bxje7pdMIr_13libp2p_server"}
!2080 = distinct !{!2080, !2079, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs1oStim3y6Gv_7tinyvec7tinyvec7TinyVecAhj20_EECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2081 = distinct !{!2081, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs1oStim3y6Gv_7tinyvec7tinyvec7TinyVecAhj18_EECs2Bxje7pdMIr_13libp2p_server"}
!2082 = distinct !{!2082, !2081, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs1oStim3y6Gv_7tinyvec7tinyvec7TinyVecAhj18_EECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2083 = !{!2080}
!2084 = !{!2082}
!2085 = distinct !{!2085, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs2Bxje7pdMIr_13libp2p_server"}
!2086 = distinct !{!2086, !2085, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2087 = distinct !{!2087, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs2Bxje7pdMIr_13libp2p_server"}
!2088 = distinct !{!2088, !2087, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2089 = !{!2086}
!2090 = !{!2088}
!2091 = distinct !{!2091, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs2Bxje7pdMIr_13libp2p_server"}
!2092 = distinct !{!2092, !2091, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2093 = distinct !{!2093, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherReINtNtCsexYYUdYSQU6_5alloc4sync3ArceEEECs2Bxje7pdMIr_13libp2p_server"}
!2094 = distinct !{!2094, !2093, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherReINtNtCsexYYUdYSQU6_5alloc4sync3ArceEEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2095 = distinct !{!2095, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECs2Bxje7pdMIr_13libp2p_server"}
!2096 = distinct !{!2096, !2095, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2097 = distinct !{!2097, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server"}
!2098 = distinct !{!2098, !2097, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2099 = distinct !{!2099, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs2Bxje7pdMIr_13libp2p_server"}
!2100 = distinct !{!2100, !2099, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2101 = distinct !{!2101, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherReINtNtCsexYYUdYSQU6_5alloc4sync3ArceEEECs2Bxje7pdMIr_13libp2p_server"}
!2102 = distinct !{!2102, !2101, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherReINtNtCsexYYUdYSQU6_5alloc4sync3ArceEEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2103 = distinct !{!2103, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECs2Bxje7pdMIr_13libp2p_server"}
!2104 = distinct !{!2104, !2103, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2105 = distinct !{!2105, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server"}
!2106 = distinct !{!2106, !2105, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2107 = !{!2092}
!2108 = !{!2094}
!2109 = !{!2094, !2092}
!2110 = !{!2096}
!2111 = !{!2098}
!2112 = !{!2098, !2096, !2094, !2092}
!2113 = !{!2100}
!2114 = !{!2102}
!2115 = !{!2102, !2100}
!2116 = !{!2104}
!2117 = !{!2106}
!2118 = !{!2106, !2104, !2102, !2100}
!2119 = distinct !{!2119, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterB1r_B1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4t_E12closest_keysB1r_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server"}
!2120 = distinct !{!2120, !2119, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterB1r_B1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4t_E12closest_keysB1r_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2121 = distinct !{!2121, !2119, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterB1r_B1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4t_E12closest_keysB1r_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2122 = distinct !{!2122, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server"}
!2123 = distinct !{!2123, !2122, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2124 = distinct !{!2124, !2122, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2125 = distinct !{!2125, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server"}
!2126 = distinct !{!2126, !2125, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2127 = distinct !{!2127, !2125, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2128 = distinct !{!2128, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server"}
!2129 = distinct !{!2129, !2128, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2130 = distinct !{!2130, !2128, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2131 = distinct !{!2131, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server"}
!2132 = distinct !{!2132, !2131, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2133 = distinct !{!2133, !2131, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2134 = distinct !{!2134, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server"}
!2135 = distinct !{!2135, !2134, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2136 = distinct !{!2136, !2134, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2137 = distinct !{!2137, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server"}
!2138 = distinct !{!2138, !2137, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2139 = distinct !{!2139, !2137, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2140 = distinct !{!2140, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server"}
!2141 = distinct !{!2141, !2140, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2142 = distinct !{!2142, !2140, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2143 = distinct !{!2143, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server"}
!2144 = distinct !{!2144, !2143, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2145 = distinct !{!2145, !2143, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2146 = distinct !{!2146, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4B_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server"}
!2147 = distinct !{!2147, !2146, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4B_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2148 = distinct !{!2148, !2146, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4B_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2149 = distinct !{!2149, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server"}
!2150 = distinct !{!2150, !2149, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2151 = distinct !{!2151, !2149, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2152 = distinct !{!2152, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server"}
!2153 = distinct !{!2153, !2152, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2154 = distinct !{!2154, !2152, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2155 = distinct !{!2155, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2156 = distinct !{!2156, !2155, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2157 = distinct !{!2157, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2158 = distinct !{!2158, !2157, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2159 = distinct !{!2159, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs2Bxje7pdMIr_13libp2p_server"}
!2160 = distinct !{!2160, !2159, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2161 = distinct !{!2161, !2159, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2162 = distinct !{!2162, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs2Bxje7pdMIr_13libp2p_server"}
!2163 = distinct !{!2163, !2162, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2164 = distinct !{!2164, !2162, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2165 = distinct !{!2165, i1 true, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs2Bxje7pdMIr_13libp2p_server"}
!2166 = distinct !{!2166, !2165, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2167 = distinct !{!2167, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server"}
!2168 = distinct !{!2168, !2167, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2169 = distinct !{!2169, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server"}
!2170 = distinct !{!2170, !2169, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2171 = distinct !{!2171, !2165, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2172 = distinct !{!2172, !2167, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2173 = distinct !{!2173, !2169, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2174 = distinct !{!2174, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2175 = distinct !{!2175, !2174, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2176 = distinct !{!2176, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2177 = distinct !{!2177, !2176, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2178 = !{!2120}
!2179 = !{!2121}
!2180 = !{!2123}
!2181 = !{!2124}
!2182 = !{!2123, !2124, !2120, !2121}
!2183 = !{!2126}
!2184 = !{!2127}
!2185 = !{!2126, !2123, !2120}
!2186 = !{!2127, !2124, !2120}
!2187 = !{!2126, !2127, !2123, !2124, !2120, !2121}
!2188 = !{!2127, !2124, !2121}
!2189 = !{!2129}
!2190 = !{!2130, !2129, !2121}
!2191 = !{!2132}
!2192 = !{!2132, !2129, !2120}
!2193 = !{!2133, !2132, !2130, !2129, !2121}
!2194 = !{!2133, !2132, !2130, !2129, !2120, !2121}
!2195 = !{!2132, !2129, !2121}
!2196 = !{!2136, !2135, !2121}
!2197 = !{!2139, !2138, !2136, !2135, !2120, !2121}
!2198 = !{!2138, !2135, !2121}
!2199 = !{!2141}
!2200 = !{!2142}
!2201 = !{!2141, !2142}
!2202 = !{!2144}
!2203 = !{!2145}
!2204 = !{!2144, !2141}
!2205 = !{!2145, !2142}
!2206 = !{!2144, !2145, !2141, !2142}
!2207 = !{!2147}
!2208 = !{!2148}
!2209 = !{!2150}
!2210 = !{!2151}
!2211 = !{!2150, !2151, !2147, !2148}
!2212 = !{!2153}
!2213 = !{!2154}
!2214 = !{!2153, !2150, !2147}
!2215 = !{!2154, !2151, !2147}
!2216 = !{!2153, !2154, !2150, !2151, !2148}
!2217 = !{!2153, !2154, !2150, !2151, !2147, !2148}
!2218 = !{!2154, !2151, !2148}
!2219 = !{!2147, !2148}
!2220 = !{!2156}
!2221 = !{!2158}
!2222 = !{!2161, !2160}
!2223 = !{!2163}
!2224 = !{!2164}
!2225 = !{!2170, !2168, !2166, !2163}
!2226 = !{!2171}
!2227 = !{!2166}
!2228 = !{!2171, !2166, !2163, !2164}
!2229 = !{!2168}
!2230 = !{!2172}
!2231 = !{!2168, !2172, !2171, !2166, !2164}
!2232 = !{!2170}
!2233 = !{!2173}
!2234 = !{!2173, !2172, !2171, !2163}
!2235 = !{!2170, !2173, !2168, !2172, !2171, !2166, !2163, !2164}
!2236 = !{!2173, !2172, !2171, !2164}
!2237 = !{!2163, !2164}
!2238 = !{!2175}
!2239 = !{!2170, !2173, !2168, !2172, !2171, !2166, !2164}
!2240 = !{!2177}
!2241 = distinct !{!2241, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB1s_NtNtB1y_6record3KeyEB1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4O_E12closest_keysB4l_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server"}
!2242 = distinct !{!2242, !2241, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB1s_NtNtB1y_6record3KeyEB1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4O_E12closest_keysB4l_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2243 = distinct !{!2243, !2241, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB1s_NtNtB1y_6record3KeyEB1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4O_E12closest_keysB4l_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2244 = distinct !{!2244, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server"}
!2245 = distinct !{!2245, !2244, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2246 = distinct !{!2246, !2244, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2247 = distinct !{!2247, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server"}
!2248 = distinct !{!2248, !2247, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2249 = distinct !{!2249, !2247, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2250 = distinct !{!2250, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server"}
!2251 = distinct !{!2251, !2250, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2252 = distinct !{!2252, !2250, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2253 = distinct !{!2253, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server"}
!2254 = distinct !{!2254, !2253, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2255 = distinct !{!2255, !2253, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2256 = distinct !{!2256, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server"}
!2257 = distinct !{!2257, !2256, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2258 = distinct !{!2258, !2256, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2259 = distinct !{!2259, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server"}
!2260 = distinct !{!2260, !2259, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2261 = distinct !{!2261, !2259, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2262 = distinct !{!2262, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server"}
!2263 = distinct !{!2263, !2262, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2264 = distinct !{!2264, !2262, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2265 = distinct !{!2265, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server"}
!2266 = distinct !{!2266, !2265, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2267 = distinct !{!2267, !2265, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2268 = distinct !{!2268, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4W_E12closest_keysB4t_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server"}
!2269 = distinct !{!2269, !2268, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4W_E12closest_keysB4t_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2270 = distinct !{!2270, !2268, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4W_E12closest_keysB4t_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2271 = distinct !{!2271, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server"}
!2272 = distinct !{!2272, !2271, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2273 = distinct !{!2273, !2271, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2274 = distinct !{!2274, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server"}
!2275 = distinct !{!2275, !2274, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2276 = distinct !{!2276, !2274, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2277 = distinct !{!2277, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2278 = distinct !{!2278, !2277, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2279 = distinct !{!2279, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2280 = distinct !{!2280, !2279, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2281 = distinct !{!2281, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs2Bxje7pdMIr_13libp2p_server"}
!2282 = distinct !{!2282, !2281, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2283 = distinct !{!2283, !2281, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2284 = distinct !{!2284, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs2Bxje7pdMIr_13libp2p_server"}
!2285 = distinct !{!2285, !2284, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2286 = distinct !{!2286, !2284, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2287 = distinct !{!2287, i1 true, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs2Bxje7pdMIr_13libp2p_server"}
!2288 = distinct !{!2288, !2287, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2289 = distinct !{!2289, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server"}
!2290 = distinct !{!2290, !2289, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2291 = distinct !{!2291, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server"}
!2292 = distinct !{!2292, !2291, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2293 = distinct !{!2293, !2287, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2294 = distinct !{!2294, !2289, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2295 = distinct !{!2295, !2291, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2296 = distinct !{!2296, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2297 = distinct !{!2297, !2296, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2298 = distinct !{!2298, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2299 = distinct !{!2299, !2298, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2300 = !{!2242}
!2301 = !{!2243}
!2302 = !{!2245}
!2303 = !{!2246}
!2304 = !{!2245, !2246, !2242, !2243}
!2305 = !{!2248}
!2306 = !{!2249}
!2307 = !{!2248, !2245, !2242}
!2308 = !{!2249, !2246, !2242}
!2309 = !{!2248, !2249, !2245, !2246, !2242, !2243}
!2310 = !{!2249, !2246, !2243}
!2311 = !{!2251}
!2312 = !{!2252, !2251, !2243}
!2313 = !{!2254}
!2314 = !{!2254, !2251, !2242}
!2315 = !{!2255, !2254, !2252, !2251, !2243}
!2316 = !{!2255, !2254, !2252, !2251, !2242, !2243}
!2317 = !{!2254, !2251, !2243}
!2318 = !{!2258, !2257, !2243}
!2319 = !{!2261, !2260, !2258, !2257, !2242, !2243}
!2320 = !{!2260, !2257, !2243}
!2321 = !{!2263}
!2322 = !{!2264}
!2323 = !{!2263, !2264}
!2324 = !{!2266}
!2325 = !{!2267}
!2326 = !{!2266, !2263}
!2327 = !{!2267, !2264}
!2328 = !{!2266, !2267, !2263, !2264}
!2329 = !{!2269}
!2330 = !{!2270}
!2331 = !{!2272}
!2332 = !{!2273}
!2333 = !{!2272, !2273, !2269, !2270}
!2334 = !{!2275}
!2335 = !{!2276}
!2336 = !{!2275, !2272, !2269}
!2337 = !{!2276, !2273, !2269}
!2338 = !{!2275, !2276, !2272, !2273, !2270}
!2339 = !{!2275, !2276, !2272, !2273, !2269, !2270}
!2340 = !{!2276, !2273, !2270}
!2341 = !{!2269, !2270}
!2342 = !{!2278}
!2343 = !{!2280}
!2344 = !{!2283, !2282}
!2345 = !{!2285}
!2346 = !{!2286}
!2347 = !{!2292, !2290, !2288, !2285}
!2348 = !{!2293}
!2349 = !{!2288}
!2350 = !{!2293, !2288, !2285, !2286}
!2351 = !{!2290}
!2352 = !{!2294}
!2353 = !{!2290, !2294, !2293, !2288, !2286}
!2354 = !{!2292}
!2355 = !{!2295}
!2356 = !{!2295, !2294, !2293, !2285}
!2357 = !{!2292, !2295, !2290, !2294, !2293, !2288, !2285, !2286}
!2358 = !{!2295, !2294, !2293, !2286}
!2359 = !{!2285, !2286}
!2360 = !{!2297}
!2361 = !{!2292, !2295, !2290, !2294, !2293, !2288, !2286}
!2362 = !{!2299}
!2363 = distinct !{!2363, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1w_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1y_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB2n_INtNtB44_3vec3VechEEB2m_B3s_NCINvMs1_B1w_INtB1w_13KBucketsTableB2m_B3s_E7closestB5d_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server"}
!2364 = distinct !{!2364, !2363, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1w_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1y_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB2n_INtNtB44_3vec3VechEEB2m_B3s_NCINvMs1_B1w_INtB1w_13KBucketsTableB2m_B3s_E7closestB5d_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2365 = distinct !{!2365, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_INtNtB4c_3vec3VechEEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5l_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server"}
!2366 = distinct !{!2366, !2365, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_INtNtB4c_3vec3VechEEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5l_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2367 = distinct !{!2367, !2365, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_INtNtB4c_3vec3VechEEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5l_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2368 = distinct !{!2368, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2369 = distinct !{!2369, !2368, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2370 = distinct !{!2370, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2371 = distinct !{!2371, !2370, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2372 = distinct !{!2372, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCs2Bxje7pdMIr_13libp2p_server"}
!2373 = distinct !{!2373, !2372, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2374 = distinct !{!2374, !2372, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2375 = distinct !{!2375, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_INtNtB4y_3vec3VechEEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5H_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs2Bxje7pdMIr_13libp2p_server"}
!2376 = distinct !{!2376, !2375, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_INtNtB4y_3vec3VechEEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5H_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2377 = distinct !{!2377, !2375, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_INtNtB4y_3vec3VechEEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5H_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2378 = distinct !{!2378, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2379 = distinct !{!2379, !2378, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2380 = distinct !{!2380, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2381 = distinct !{!2381, !2380, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2382 = !{!2364}
!2383 = !{!2366}
!2384 = !{!2367}
!2385 = !{!2366, !2367}
!2386 = !{!2369}
!2387 = !{!2371}
!2388 = !{!2374, !2373}
!2389 = !{!2376}
!2390 = !{!2377}
!2391 = !{!2376, !2377}
!2392 = !{!2379}
!2393 = !{!2381}
!2394 = distinct !{!2394, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1w_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1y_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB2n_NtNtB1y_6record3KeyEB2m_B3s_NCINvMs1_B1w_INtB1w_13KBucketsTableB2m_B3s_E7closestB5d_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server"}
!2395 = distinct !{!2395, !2394, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1w_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1y_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB2n_NtNtB1y_6record3KeyEB2m_B3s_NCINvMs1_B1w_INtB1w_13KBucketsTableB2m_B3s_E7closestB5d_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2396 = distinct !{!2396, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_NtNtB1G_6record3KeyEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5l_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server"}
!2397 = distinct !{!2397, !2396, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_NtNtB1G_6record3KeyEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5l_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2398 = distinct !{!2398, !2396, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_NtNtB1G_6record3KeyEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5l_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2399 = distinct !{!2399, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2400 = distinct !{!2400, !2399, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2401 = distinct !{!2401, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2402 = distinct !{!2402, !2401, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2403 = distinct !{!2403, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCs2Bxje7pdMIr_13libp2p_server"}
!2404 = distinct !{!2404, !2403, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2405 = distinct !{!2405, !2403, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2406 = distinct !{!2406, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_NtNtB1G_6record3KeyEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5H_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs2Bxje7pdMIr_13libp2p_server"}
!2407 = distinct !{!2407, !2406, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_NtNtB1G_6record3KeyEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5H_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2408 = distinct !{!2408, !2406, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_NtNtB1G_6record3KeyEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5H_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2409 = distinct !{!2409, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2410 = distinct !{!2410, !2409, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2411 = distinct !{!2411, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2412 = distinct !{!2412, !2411, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2413 = !{!2395}
!2414 = !{!2397}
!2415 = !{!2398}
!2416 = !{!2397, !2398}
!2417 = !{!2400}
!2418 = !{!2402}
!2419 = !{!2405, !2404}
!2420 = !{!2407}
!2421 = !{!2408}
!2422 = !{!2407, !2408}
!2423 = !{!2410}
!2424 = !{!2412}
!2425 = distinct !{!2425, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keybNCINvMB18_INtB18_10NameServerB2a_E3newATNtNtB2g_4xfer8ProtocolINtNtB4Y_12dns_exchange11DnsExchangeB2a_EEj0_Es_0E0ECs2Bxje7pdMIr_13libp2p_server"}
!2426 = distinct !{!2426, !2425, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keybNCINvMB18_INtB18_10NameServerB2a_E3newATNtNtB2g_4xfer8ProtocolINtNtB4Y_12dns_exchange11DnsExchangeB2a_EEj0_Es_0E0ECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2427 = distinct !{!2427, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keybNCINvMB1g_INtB1g_10NameServerB2i_E3newATNtNtB2o_4xfer8ProtocolINtNtB56_12dns_exchange11DnsExchangeB2i_EEj0_Es_0E0ECs2Bxje7pdMIr_13libp2p_server"}
!2428 = distinct !{!2428, !2427, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keybNCINvMB1g_INtB1g_10NameServerB2i_E3newATNtNtB2o_4xfer8ProtocolINtNtB56_12dns_exchange11DnsExchangeB2i_EEj0_Es_0E0ECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2429 = distinct !{!2429, !2427, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keybNCINvMB1g_INtB1g_10NameServerB2i_E3newATNtNtB2o_4xfer8ProtocolINtNtB56_12dns_exchange11DnsExchangeB2i_EEj0_Es_0E0ECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2430 = distinct !{!2430, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2431 = distinct !{!2431, !2430, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2432 = distinct !{!2432, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2433 = distinct !{!2433, !2432, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2434 = distinct !{!2434, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE12split_at_mutCs2Bxje7pdMIr_13libp2p_server"}
!2435 = distinct !{!2435, !2434, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE12split_at_mutCs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2436 = distinct !{!2436, !2434, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE12split_at_mutCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2437 = distinct !{!2437, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keybNCINvMB1g_INtB1g_10NameServerB2i_E3newATNtNtB2o_4xfer8ProtocolINtNtB5s_12dns_exchange11DnsExchangeB2i_EEj0_Es_0E0E0ECs2Bxje7pdMIr_13libp2p_server"}
!2438 = distinct !{!2438, !2437, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keybNCINvMB1g_INtB1g_10NameServerB2i_E3newATNtNtB2o_4xfer8ProtocolINtNtB5s_12dns_exchange11DnsExchangeB2i_EEj0_Es_0E0E0ECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2439 = distinct !{!2439, !2437, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keybNCINvMB1g_INtB1g_10NameServerB2i_E3newATNtNtB2o_4xfer8ProtocolINtNtB5s_12dns_exchange11DnsExchangeB2i_EEj0_Es_0E0E0ECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2440 = distinct !{!2440, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2441 = distinct !{!2441, !2440, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2442 = distinct !{!2442, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2443 = distinct !{!2443, !2442, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2444 = !{!2426}
!2445 = !{!2428}
!2446 = !{!2429}
!2447 = !{!2429, !2428}
!2448 = !{!2431}
!2449 = !{!2433}
!2450 = !{!2436, !2435}
!2451 = !{!2438}
!2452 = !{!2439}
!2453 = !{!2439, !2438}
!2454 = !{!2441}
!2455 = !{!2443}
!2456 = distinct !{!2456, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1c_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapB16_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4x_8adapters4take4TakeINtNtB5u_3map3MapINtB1a_11ClosestIterINtB18_3KeyNtNtB1c_6record3KeyEIB6v_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1c_9addresses9AddressesNCINvMs1_B1a_INtB1a_13KBucketsTableB6Z_B7T_E12closest_keysB6u_E0B6Z_ENCINvMs_B1Z_NtB1Z_16ClosestPeersIter11with_configB6a_B6u_E0EEE0E0ECs2Bxje7pdMIr_13libp2p_server"}
!2457 = distinct !{!2457, !2456, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1c_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapB16_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4x_8adapters4take4TakeINtNtB5u_3map3MapINtB1a_11ClosestIterINtB18_3KeyNtNtB1c_6record3KeyEIB6v_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1c_9addresses9AddressesNCINvMs1_B1a_INtB1a_13KBucketsTableB6Z_B7T_E12closest_keysB6u_E0B6Z_ENCINvMs_B1Z_NtB1Z_16ClosestPeersIter11with_configB6a_B6u_E0EEE0E0ECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2458 = distinct !{!2458, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtB1k_6record3KeyEIB6D_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB77_B81_E12closest_keysB6C_E0B77_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6i_B6C_E0EEE0E0ECs2Bxje7pdMIr_13libp2p_server"}
!2459 = distinct !{!2459, !2458, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtB1k_6record3KeyEIB6D_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB77_B81_E12closest_keysB6C_E0B77_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6i_B6C_E0EEE0E0ECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2460 = distinct !{!2460, !2458, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtB1k_6record3KeyEIB6D_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB77_B81_E12closest_keysB6C_E0B77_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6i_B6C_E0EEE0E0ECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2461 = distinct !{!2461, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2462 = distinct !{!2462, !2461, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2463 = distinct !{!2463, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2464 = distinct !{!2464, !2463, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2465 = distinct !{!2465, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs2Bxje7pdMIr_13libp2p_server"}
!2466 = distinct !{!2466, !2465, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2467 = distinct !{!2467, !2465, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2468 = distinct !{!2468, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtB1k_6record3KeyEIB6Z_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB7t_B8n_E12closest_keysB6Y_E0B7t_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6E_B6Y_E0EEE0E0E0ECs2Bxje7pdMIr_13libp2p_server"}
!2469 = distinct !{!2469, !2468, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtB1k_6record3KeyEIB6Z_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB7t_B8n_E12closest_keysB6Y_E0B7t_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6E_B6Y_E0EEE0E0E0ECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2470 = distinct !{!2470, !2468, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtB1k_6record3KeyEIB6Z_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB7t_B8n_E12closest_keysB6Y_E0B7t_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6E_B6Y_E0EEE0E0E0ECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2471 = distinct !{!2471, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2472 = distinct !{!2472, !2471, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2473 = distinct !{!2473, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2474 = distinct !{!2474, !2473, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2475 = !{!2457}
!2476 = !{!2459}
!2477 = !{!2460, !2459}
!2478 = !{!2462}
!2479 = !{!2464}
!2480 = !{!2467, !2466}
!2481 = !{!2469}
!2482 = !{!2470, !2469}
!2483 = !{!2472}
!2484 = !{!2474}
!2485 = distinct !{!2485, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1c_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapB16_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4x_8adapters4take4TakeINtNtB5u_3map3MapINtB1a_11ClosestIterINtB18_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB6u_NtNtB1c_9addresses9AddressesNCINvMs1_B1a_INtB1a_13KBucketsTableB6u_B7y_E12closest_keysB6u_E0B6u_ENCINvMs_B1Z_NtB1Z_16ClosestPeersIter11with_configB6a_B6u_E0EEE0E0ECs2Bxje7pdMIr_13libp2p_server"}
!2486 = distinct !{!2486, !2485, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1c_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapB16_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4x_8adapters4take4TakeINtNtB5u_3map3MapINtB1a_11ClosestIterINtB18_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB6u_NtNtB1c_9addresses9AddressesNCINvMs1_B1a_INtB1a_13KBucketsTableB6u_B7y_E12closest_keysB6u_E0B6u_ENCINvMs_B1Z_NtB1Z_16ClosestPeersIter11with_configB6a_B6u_E0EEE0E0ECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2487 = distinct !{!2487, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB6C_NtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB6C_B7G_E12closest_keysB6C_E0B6C_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6i_B6C_E0EEE0E0ECs2Bxje7pdMIr_13libp2p_server"}
!2488 = distinct !{!2488, !2487, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB6C_NtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB6C_B7G_E12closest_keysB6C_E0B6C_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6i_B6C_E0EEE0E0ECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2489 = distinct !{!2489, !2487, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB6C_NtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB6C_B7G_E12closest_keysB6C_E0B6C_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6i_B6C_E0EEE0E0ECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2490 = distinct !{!2490, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2491 = distinct !{!2491, !2490, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2492 = distinct !{!2492, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2493 = distinct !{!2493, !2492, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2494 = distinct !{!2494, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs2Bxje7pdMIr_13libp2p_server"}
!2495 = distinct !{!2495, !2494, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2496 = distinct !{!2496, !2494, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2497 = distinct !{!2497, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB6Y_NtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB6Y_B82_E12closest_keysB6Y_E0B6Y_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6E_B6Y_E0EEE0E0E0ECs2Bxje7pdMIr_13libp2p_server"}
!2498 = distinct !{!2498, !2497, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB6Y_NtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB6Y_B82_E12closest_keysB6Y_E0B6Y_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6E_B6Y_E0EEE0E0E0ECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2499 = distinct !{!2499, !2497, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB6Y_NtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB6Y_B82_E12closest_keysB6Y_E0B6Y_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6E_B6Y_E0EEE0E0E0ECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2500 = distinct !{!2500, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2501 = distinct !{!2501, !2500, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2502 = distinct !{!2502, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2503 = distinct !{!2503, !2502, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2504 = !{!2486}
!2505 = !{!2488}
!2506 = !{!2489, !2488}
!2507 = !{!2491}
!2508 = !{!2493}
!2509 = !{!2496, !2495}
!2510 = !{!2498}
!2511 = !{!2499, !2498}
!2512 = !{!2501}
!2513 = !{!2503}
!2514 = distinct !{!2514, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1c_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapB16_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4x_8adapters4take4TakeINtNtB5u_3map3MapINtNtNtB2H_3vec9into_iter8IntoIterINtB18_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B1Z_NtB1Z_16ClosestPeersIter11with_configINtB6f_3VecB6I_EB6I_E0EEE0E0ECs2Bxje7pdMIr_13libp2p_server"}
!2515 = distinct !{!2515, !2514, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1c_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapB16_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4x_8adapters4take4TakeINtNtB5u_3map3MapINtNtNtB2H_3vec9into_iter8IntoIterINtB18_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B1Z_NtB1Z_16ClosestPeersIter11with_configINtB6f_3VecB6I_EB6I_E0EEE0E0ECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2516 = distinct !{!2516, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtNtNtB2P_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6n_3VecB6Q_EB6Q_E0EEE0E0ECs2Bxje7pdMIr_13libp2p_server"}
!2517 = distinct !{!2517, !2516, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtNtNtB2P_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6n_3VecB6Q_EB6Q_E0EEE0E0ECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2518 = distinct !{!2518, !2516, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtNtNtB2P_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6n_3VecB6Q_EB6Q_E0EEE0E0ECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2519 = distinct !{!2519, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2520 = distinct !{!2520, !2519, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2521 = distinct !{!2521, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2522 = distinct !{!2522, !2521, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2523 = distinct !{!2523, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs2Bxje7pdMIr_13libp2p_server"}
!2524 = distinct !{!2524, !2523, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2525 = distinct !{!2525, !2523, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2526 = distinct !{!2526, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtNtNtB3b_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6J_3VecB7c_EB7c_E0EEE0E0E0ECs2Bxje7pdMIr_13libp2p_server"}
!2527 = distinct !{!2527, !2526, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtNtNtB3b_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6J_3VecB7c_EB7c_E0EEE0E0E0ECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2528 = distinct !{!2528, !2526, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtNtNtB3b_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6J_3VecB7c_EB7c_E0EEE0E0E0ECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2529 = distinct !{!2529, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2530 = distinct !{!2530, !2529, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2531 = distinct !{!2531, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2532 = distinct !{!2532, !2531, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2533 = !{!2515}
!2534 = !{!2517}
!2535 = !{!2518, !2517}
!2536 = !{!2520}
!2537 = !{!2522}
!2538 = !{!2525, !2524}
!2539 = !{!2527}
!2540 = !{!2528, !2527}
!2541 = !{!2530}
!2542 = !{!2532}
!2543 = distinct !{!2543, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1c_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapB16_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4x_8adapters4take4TakeINtNtB5u_3map3MapINtNtNtB2H_3vec9into_iter8IntoIterINtB18_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B1Z_NtB1Z_16ClosestPeersIter11with_configINtB6f_3VecB6I_EIB6J_NtNtB1c_6record3KeyEE0EEE0E0ECs2Bxje7pdMIr_13libp2p_server"}
!2544 = distinct !{!2544, !2543, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1c_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapB16_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4x_8adapters4take4TakeINtNtB5u_3map3MapINtNtNtB2H_3vec9into_iter8IntoIterINtB18_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B1Z_NtB1Z_16ClosestPeersIter11with_configINtB6f_3VecB6I_EIB6J_NtNtB1c_6record3KeyEE0EEE0E0ECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2545 = distinct !{!2545, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtNtNtB2P_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6n_3VecB6Q_EIB6R_NtNtB1k_6record3KeyEE0EEE0E0ECs2Bxje7pdMIr_13libp2p_server"}
!2546 = distinct !{!2546, !2545, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtNtNtB2P_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6n_3VecB6Q_EIB6R_NtNtB1k_6record3KeyEE0EEE0E0ECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2547 = distinct !{!2547, !2545, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtNtNtB2P_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6n_3VecB6Q_EIB6R_NtNtB1k_6record3KeyEE0EEE0E0ECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2548 = distinct !{!2548, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2549 = distinct !{!2549, !2548, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2550 = distinct !{!2550, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2551 = distinct !{!2551, !2550, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2552 = distinct !{!2552, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs2Bxje7pdMIr_13libp2p_server"}
!2553 = distinct !{!2553, !2552, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2554 = distinct !{!2554, !2552, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2555 = distinct !{!2555, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtNtNtB3b_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6J_3VecB7c_EIB7d_NtNtB1k_6record3KeyEE0EEE0E0E0ECs2Bxje7pdMIr_13libp2p_server"}
!2556 = distinct !{!2556, !2555, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtNtNtB3b_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6J_3VecB7c_EIB7d_NtNtB1k_6record3KeyEE0EEE0E0E0ECs2Bxje7pdMIr_13libp2p_server: argument 1"}
!2557 = distinct !{!2557, !2555, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtNtNtB3b_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6J_3VecB7c_EIB7d_NtNtB1k_6record3KeyEE0EEE0E0E0ECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2558 = distinct !{!2558, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2559 = distinct !{!2559, !2558, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!2560 = distinct !{!2560, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs2Bxje7pdMIr_13libp2p_server"}
!2561 = distinct !{!2561, !2560, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs2Bxje7pdMIr_13libp2p_server: argument 0"}
end_hunk_1

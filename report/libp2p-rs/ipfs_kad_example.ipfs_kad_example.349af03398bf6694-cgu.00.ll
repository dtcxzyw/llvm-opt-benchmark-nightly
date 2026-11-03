Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/ipfs_kad_example.ipfs_kad_example.349af03398bf6694-cgu.00?download=true
inline.NumInlined: 1810
inline.NumDeleted: 713
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterB1r_B1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4t_E12closest_keysB1r_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example:bb.a
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #33, !noalias !1627
  unreachable

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1627
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.q), !noalias !1626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1627
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ax)
  %i.ay = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1627
  %i.az = icmp eq i8 %i.ay, -1
  br i1 %i.az, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.k, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit
  %.val37 = load ptr, ptr %6, align 8             ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1628)
  call void @llvm.experimental.noalias.scope.decl(metadata !1629)
  %.not58 = icmp samesign ult i64 %3, %.sroa.16.0117346
  br i1 %.not58, label %bb.r, label %bb.q, !prof !26

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

._crit_edge.i:                                    ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.i, %bb.s
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.s ], [ %i.bm, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.i ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.s ], [ %i.bp, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.i ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.s ], [ %i.bq, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.i ] ; 2 uses
  %i.be = icmp eq i64 %.sroa.0.0.i39, %.sroa.16.0117346
  br i1 %i.be, label %bb.y, label %bb.x

bb.t:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.i, %.lr.ph.i
  %.sroa.5.117.i = phi ptr [ %.sroa.5.0.i, %.lr.ph.i ], [ %i.bq, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.i ] ; 4 uses
  %.sroa.11.116.i = phi i64 [ %.sroa.11.0.i, %.lr.ph.i ], [ %i.bp, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.i ] ; 2 uses
  %.sroa.19.115.i = phi ptr [ %.sroa.19.0.i, %.lr.ph.i ], [ %i.bm, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1630)
  call void @llvm.experimental.noalias.scope.decl(metadata !1631)
  %.val.i.i40 = load ptr, ptr %.val37, align 8, !noalias !1632 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1633)
  call void @llvm.experimental.noalias.scope.decl(metadata !1634)
  %i.bf = load i64, ptr %.sroa.5.117.i, align 8, !range !20, !alias.scope !1635, !noundef !9
  %i.bg = trunc nuw i64 %i.bf to i1
  br i1 %i.bg, label %bb.u, label %bb.v, !prof !25

bb.u:                                             ; preds = %bb.t
  %i.bh = load i64, ptr %i.as, align 8, !range !20, !alias.scope !1636, !noundef !9
  %i.bi = trunc nuw i64 %i.bh to i1
  br i1 %i.bi, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.i, label %bb.w, !prof !25

bb.v:                                             ; preds = %bb.t
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #33, !noalias !1637
  unreachable

bb.w:                                             ; preds = %bb.u
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #33, !noalias !1637
  unreachable

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.i: ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.5.117.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1638
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i40) ]
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %.val.i.i40, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.bj), !noalias !1639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1638
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %.val.i.i40, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.bb), !noalias !1629
  %i.bk = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c), !noalias !1629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1638
  %i.bl = icmp eq i8 %i.bk, -1                    ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %.sroa.19.115.i, i64 -120 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.bl, ptr %2, ptr %i.bm
  %i.bn = getelementptr inbounds nuw [120 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.116.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.bn, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.117.i, i64 120, i1 false), !alias.scope !1640, !noalias !1641
  %i.bo = zext i1 %i.bl to i64
  %i.bp = add i64 %.sroa.11.116.i, %i.bo          ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.5.117.i, i64 120 ; 3 uses
  %i.br = icmp ult ptr %i.bq, %i.bc
  br i1 %i.br, label %bb.t, label %._crit_edge.i

bb.x:                                             ; preds = %._crit_edge.i
  %i.bs = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -120 ; 2 uses
  %i.bt = getelementptr inbounds nuw [120 x i8], ptr %i.bs, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.bt, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.1.lcssa.i, i64 120, i1 false), !alias.scope !1640, !noalias !1642
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 120
  br label %bb.s

bb.y:                                             ; preds = %._crit_edge.i
  %i.bv = mul nuw nsw i64 %.sroa.11.1.lcssa.i, 120
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph124, ptr nonnull align 8 %2, i64 %i.bv, i1 false), !alias.scope !1640
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cb, ptr noundef nonnull align 8 dereferenceable(120) %i.ca, i64 120, i1 false), !alias.scope !1640
  %i.cc = add nuw i64 %.sroa.06.020.i, 2          ; 2 uses
  %i.cd = xor i64 %.sroa.06.020.i, -2
  %i.ce = getelementptr [120 x i8], ptr %i.ba, i64 %i.cd
  %i.cf = getelementptr [120 x i8], ptr %i.bx, i64 %.sroa.06.020.i
  %i.cg = getelementptr i8, ptr %i.cf, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cg, ptr noundef nonnull align 8 dereferenceable(120) %i.ce, i64 120, i1 false), !alias.scope !1640
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cj, ptr noundef nonnull align 8 dereferenceable(120) %i.ci, i64 120, i1 false), !alias.scope !1640
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.y
  %i.ck = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.ck, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  %.not.i41 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.0117346
  br i1 %.not.i41, label %bb.ab, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example.exit, !prof !10

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @33, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #33, !noalias !1643
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.aa
  %i.cl = getelementptr inbounds nuw [120 x i8], ptr %.sroa.0.0.ph124, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph124) ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterB1r_B1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4t_E12closest_keysB1r_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 %i.cl, i64 noundef %i.bw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.cm = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.cm, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !1644)
  call void @llvm.experimental.noalias.scope.decl(metadata !1645)
  %.not59 = icmp samesign ult i64 %3, %.sroa.16.0117346
  br i1 %.not59, label %bb.ad, label %bb.ac, !prof !26

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
  br i1 %i.cq, label %.lr.ph.i54, label %._crit_edge.i48

.lr.ph.i54:                                       ; preds = %bb.ae
  %i.cr = load i64, ptr %i.as, align 8, !range !20, !alias.scope !1646, !noundef !9
  %i.cs = trunc nuw i64 %i.cr to i1
  br i1 %i.cs, label %.lr.ph.split.us.i, label %8, !prof !25

._crit_edge.i48:                                  ; preds = %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.us.i, %bb.ae
  %.sroa.19.1.lcssa.i49 = phi ptr [ %.sroa.19.0.i44, %bb.ae ], [ %i.cy, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.us.i ]
  %.sroa.11.1.lcssa.i50 = phi i64 [ %.sroa.11.0.i45, %bb.ae ], [ %i.db, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.us.i ] ; 10 uses
  %.sroa.5.1.lcssa.i51 = phi ptr [ %.sroa.5.0.i46, %bb.ae ], [ %i.dc, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.us.i ] ; 2 uses
  %7 = icmp eq i64 %.sroa.0.0.i47, %.sroa.16.0117346
  br i1 %7, label %bb.ag, label %bb.af

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i54, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.us.i
  %.sroa.5.117.us.i = phi ptr [ %i.dc, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.us.i ], [ %.sroa.5.0.i46, %.lr.ph.i54 ] ; 4 uses
  %.sroa.11.116.us.i = phi i64 [ %i.db, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.us.i ], [ %.sroa.11.0.i45, %.lr.ph.i54 ] ; 2 uses
  %.sroa.19.115.us.i = phi ptr [ %i.cy, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.us.i ], [ %.sroa.19.0.i44, %.lr.ph.i54 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1647)
  call void @llvm.experimental.noalias.scope.decl(metadata !1648)
  %.val.i.us.i = load ptr, ptr %6, align 8, !noalias !1649, !nonnull !9, !align !13, !noundef !9
  call void @llvm.experimental.noalias.scope.decl(metadata !1650)
  call void @llvm.experimental.noalias.scope.decl(metadata !1651)
  %.val.i.i.us.i = load ptr, ptr %.val.i.us.i, align 8, !noalias !1652 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1653)
  call void @llvm.experimental.noalias.scope.decl(metadata !1654)
  %i.ct = load i64, ptr %.sroa.5.117.us.i, align 8, !range !20, !alias.scope !1655, !noundef !9
  %i.cu = trunc nuw i64 %i.ct to i1
  br i1 %i.cu, label %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.us.i, label %9, !prof !25

8:                                                ; preds = %.lr.ph.i54
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #33, !noalias !1656
  unreachable

9:                                                ; preds = %.lr.ph.split.us.i
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #33, !noalias !1656
  unreachable

_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.us.i: ; preds = %.lr.ph.split.us.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.5.117.us.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1657
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.us.i) ]
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %.val.i.i.us.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.co), !noalias !1658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1657
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %.val.i.i.us.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.cv), !noalias !1645
  %i.cw = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a), !noalias !1645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1657
  %i.cx = icmp ne i8 %i.cw, -1                    ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %.sroa.19.115.us.i, i64 -120 ; 3 uses
  %.sroa.01.0.i.us.i = select i1 %i.cx, ptr %2, ptr %i.cy
  %i.cz = getelementptr inbounds nuw [120 x i8], ptr %.sroa.01.0.i.us.i, i64 %.sroa.11.116.us.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cz, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.117.us.i, i64 120, i1 false), !alias.scope !1659, !noalias !1660
  %i.da = zext i1 %i.cx to i64
  %i.db = add i64 %.sroa.11.116.us.i, %i.da       ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.5.117.us.i, i64 120 ; 3 uses
  %i.dd = icmp ult ptr %i.dc, %i.cp
  br i1 %i.dd, label %.lr.ph.split.us.i, label %._crit_edge.i48

bb.af:                                            ; preds = %._crit_edge.i48
  %i.de = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i49, i64 -120
  %i.df = getelementptr inbounds nuw [120 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.df, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.1.lcssa.i51, i64 120, i1 false), !alias.scope !1659, !noalias !1661
  %i.dg = add i64 %.sroa.11.1.lcssa.i50, 1
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i51, i64 120
  br label %bb.ae

bb.ag:                                            ; preds = %._crit_edge.i48
  %i.di = mul nuw nsw i64 %.sroa.11.1.lcssa.i50, 120
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph124, ptr nonnull align 8 %2, i64 %i.di, i1 false), !alias.scope !1659
  %i.dj = sub i64 %.sroa.16.0117346, %.sroa.11.1.lcssa.i50 ; 6 uses
  %.not24.i51 = icmp eq i64 %.sroa.16.0117346, %.sroa.11.1.lcssa.i50
  %i.dk = getelementptr [120 x i8], ptr %.sroa.0.0.ph124, i64 %.sroa.11.1.lcssa.i50 ; 4 uses
  br i1 %.not24.i51, label %.outer.thread, label %.lr.ph23.i.preheader

.lr.ph23.i.preheader:                             ; preds = %bb.ag
  %.neg469 = add i64 %.sroa.11.1.lcssa.i50, 1
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.do, ptr noundef nonnull align 8 dereferenceable(120) %i.dn, i64 120, i1 false), !alias.scope !1659
  %i.dp = add nuw i64 %.sroa.06.022.i, 2          ; 2 uses
  %i.dq = xor i64 %.sroa.06.022.i, -2
  %i.dr = getelementptr [120 x i8], ptr %i.cn, i64 %i.dq
  %i.ds = getelementptr [120 x i8], ptr %i.dk, i64 %.sroa.06.022.i
  %i.dt = getelementptr i8, ptr %i.ds, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.dt, ptr noundef nonnull align 8 dereferenceable(120) %i.dr, i64 120, i1 false), !alias.scope !1659
  %niter468.next.1 = add i64 %niter468, 2         ; 2 uses
  %niter468.ncmp.1 = icmp eq i64 %niter468.next.1, %unroll_iter467
  br i1 %niter468.ncmp.1, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4w110Okq5IC_16ipfs_kad_example.exit.unr-lcssa, label %.lr.ph23.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4w110Okq5IC_16ipfs_kad_example.exit.unr-lcssa: ; preds = %.lr.ph23.i
  %lcmp.mod465.not = icmp eq i64 %xtraiter464, 0
  br i1 %lcmp.mod465.not, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4w110Okq5IC_16ipfs_kad_example.exit, label %.lr.ph23.i.epil.preheader

.lr.ph23.i.epil.preheader:                        ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4w110Okq5IC_16ipfs_kad_example.exit.unr-lcssa, %.lr.ph23.i.preheader
  %.sroa.06.022.i.epil.init = phi i64 [ 0, %.lr.ph23.i.preheader ], [ %i.dp, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4w110Okq5IC_16ipfs_kad_example.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod466 = trunc i64 %i.dj to i1
  call void @llvm.assume(i1 %lcmp.mod466)
  %i.du = xor i64 %.sroa.06.022.i.epil.init, -1
  %i.dv = getelementptr [120 x i8], ptr %i.cn, i64 %i.du
  %i.dw = getelementptr [120 x i8], ptr %i.dk, i64 %.sroa.06.022.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.dw, ptr noundef nonnull align 8 dereferenceable(120) %i.dv, i64 120, i1 false), !alias.scope !1659
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4w110Okq5IC_16ipfs_kad_example.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4w110Okq5IC_16ipfs_kad_example.exit.unr-lcssa, %.lr.ph23.i.epil.preheader
  %i.dx = icmp ugt i64 %.sroa.11.1.lcssa.i50, %.sroa.16.0117346
  br i1 %i.dx, label %bb.ah, label %.outer, !prof !10

.outer.thread:                                    ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4w110Okq5IC_16ipfs_kad_example.exit
  %i.dy = getelementptr inbounds nuw [120 x i8], ptr %.sroa.0.0.ph124, i64 %.sroa.11.1.lcssa.i50 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.dz = icmp ult i64 %i.dj, 33
  br i1 %i.dz, label %.outer._crit_edge, label %.lr.ph

bb.ah:                                            ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4w110Okq5IC_16ipfs_kad_example.exit
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i50, i64 noundef %.sroa.16.0117346, i64 noundef %.sroa.16.0117346, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #33
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB1s_NtNtB1y_6record3KeyEB1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4O_E12closest_keysB4l_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 76861433640456466) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #1 {
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

bb.b:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example.exit
  %i.s = icmp eq i32 %i.t, 0
  br i1 %i.s, label %.lr.ph._crit_edge, label %.lr.ph348

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa115 = phi ptr [ %i.dq, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph124, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example.exit ], [ %i.ee, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.11.1.lcssa.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example.exit ], [ %i.dp, %.outer ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1s_7sort_byNCNvXs4_B1T_INtB1T_11ClosestIterIB1P_NtNtB1V_6record3KeyEB1O_NtNtB1V_9addresses9AddressesNCINvMs1_B1T_INtB1T_13KBucketsTableB1O_B5b_E12closest_keysB4I_E0B1O_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa115, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.j

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0117.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph123, %.lr.ph ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCNvXs4_B1n_INtB1n_11ClosestIterIB1j_NtNtB1p_6record3KeyEB1i_NtNtB1p_9addresses9AddressesNCINvMs1_B1n_INtB1n_13KBucketsTableB1i_B4E_E12closest_keysB4b_E0B1i_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph124, i64 noundef %.sroa.16.0117.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.j

.lr.ph348:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0116347 = phi i32 [ %i.t, %bb.b ], [ %.sroa.025.0.ph122, %.lr.ph ]
  %.sroa.16.0117346 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph123, %.lr.ph ] ; 21 uses
  %i.t = add i32 %.sroa.025.0116347, -1           ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1721)
  call void @llvm.experimental.noalias.scope.decl(metadata !1722)
  %i.u = lshr i64 %.sroa.16.0117346, 3            ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.u, 480
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph124, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.u, 840
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph124, i64 %.idx2.i ; 4 uses
  %i.x = icmp samesign ult i64 %.sroa.16.0117346, 64
  br i1 %i.x, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph348
  %i.y = call noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB14_7sort_byNCNvXs4_B1v_INtB1v_11ClosestIterIB1r_NtNtB1x_6record3KeyEB1q_NtNtB1x_9addresses9AddressesNCINvMs1_B1v_INtB1v_13KBucketsTableB1q_B4N_E12closest_keysB4k_E0B1q_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph124, ptr noundef nonnull readonly %i.v, ptr noundef nonnull readonly %i.w, i64 noundef %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.k

bb.d:                                             ; preds = %.lr.ph348
  %.val4.i = load ptr, ptr %6, align 8, !alias.scope !1722, !nonnull !9, !align !13, !noundef !9 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1723)
  call void @llvm.experimental.noalias.scope.decl(metadata !1724)
  %.val.i.i = load ptr, ptr %.val4.i, align 8, !noalias !1725 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1726)
  call void @llvm.experimental.noalias.scope.decl(metadata !1727)
  %i.z = load i64, ptr %.sroa.0.0.ph124, align 8, !range !20, !alias.scope !1728, !noundef !9
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %bb.e, label %bb.f, !prof !25

bb.e:                                             ; preds = %bb.d
  %i.ab = load i64, ptr %i.v, align 8, !range !20, !alias.scope !1729, !noundef !9
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %bb.h, label %bb.g, !prof !25

bb.f:                                             ; preds = %bb.d
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #33, !noalias !1730
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #33, !noalias !1730
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1730
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 32 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.o), !noalias !1731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1730
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ad), !noalias !1722
  %i.af = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k), !noalias !1722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1730
  %i.ag = icmp eq i8 %i.af, -1                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1732)
  %.val.i5.i = load ptr, ptr %.val4.i, align 8, !noalias !1733 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1734)
  %i.ah = load i64, ptr %i.w, align 8, !range !20, !alias.scope !1735, !noundef !9
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit6.i, label %bb.i, !prof !25

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #33, !noalias !1736
  unreachable

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit6.i: ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1737
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i5.i) ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i5.i, i64 32 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.o), !noalias !1738
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1737
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.aj), !noalias !1722
  %i.al = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i), !noalias !1722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1737
  %i.am = icmp eq i8 %i.al, -1
  %i.an = xor i1 %i.ag, %i.am
  br i1 %i.an, label %bb.k, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit8.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit8.i: ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit6.i
  %.val.i7.i = load ptr, ptr %.val4.i, align 8, !noalias !1739, !nonnull !9, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1740
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i7.i, i64 32 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ad), !noalias !1741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1740
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.aj), !noalias !1722
  %i.ap = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g), !noalias !1722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1740
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1740
  %i.aq = icmp eq i8 %i.ap, -1
  %i.ar = xor i1 %i.ag, %i.aq
  %..i.i = select i1 %i.ar, ptr %i.w, ptr %i.v
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.k:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit8.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit6.i, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %i.y, %bb.c ], [ %.sroa.0.0.ph124, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit6.i ], [ %..i.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit8.i ]
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
  %.val = load ptr, ptr %6, align 8, !nonnull !9, !align !13, !noundef !9
  call void @llvm.experimental.noalias.scope.decl(metadata !1742)
  call void @llvm.experimental.noalias.scope.decl(metadata !1743)
  %.val.i = load ptr, ptr %.val, align 8, !noalias !1744 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1745)
  call void @llvm.experimental.noalias.scope.decl(metadata !1746)
  %i.aw = load i64, ptr %.sroa.028.0.ph121, align 8, !range !20, !alias.scope !1747, !noundef !9
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %bb.m, label %bb.n, !prof !25

bb.m:                                             ; preds = %bb.l
  %i.ay = load i64, ptr %i.av, align 8, !range !20, !alias.scope !1748, !noundef !9
  %i.az = trunc nuw i64 %i.ay to i1
  br i1 %i.az, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit, label %bb.o, !prof !25

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #33, !noalias !1749
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #33, !noalias !1749
  unreachable

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1749
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.val.i, i64 32 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.bb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.q), !noalias !1748
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1749
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.bb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ba)
  %i.bc = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1749
  %i.bd = icmp eq i8 %i.bc, -1
  br i1 %i.bd, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.k, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit
  %.val37 = load ptr, ptr %6, align 8             ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1750)
  call void @llvm.experimental.noalias.scope.decl(metadata !1751)
  %.not58 = icmp samesign ult i64 %3, %.sroa.16.0117346
  br i1 %.not58, label %bb.r, label %bb.q, !prof !26

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

._crit_edge.i:                                    ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.i, %bb.s
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.s ], [ %i.br, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.i ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.s ], [ %i.bu, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.i ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.s ], [ %i.bv, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.i ] ; 2 uses
  %i.bi = icmp eq i64 %.sroa.0.0.i39, %.sroa.16.0117346
  br i1 %i.bi, label %bb.y, label %bb.x

bb.t:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.i, %.lr.ph.i
  %.sroa.5.117.i = phi ptr [ %.sroa.5.0.i, %.lr.ph.i ], [ %i.bv, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.i ] ; 4 uses
  %.sroa.11.116.i = phi i64 [ %.sroa.11.0.i, %.lr.ph.i ], [ %i.bu, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.i ] ; 2 uses
  %.sroa.19.115.i = phi ptr [ %.sroa.19.0.i, %.lr.ph.i ], [ %i.br, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1752)
  call void @llvm.experimental.noalias.scope.decl(metadata !1753)
  %.val.i.i40 = load ptr, ptr %.val37, align 8, !noalias !1754 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1755)
  call void @llvm.experimental.noalias.scope.decl(metadata !1756)
  %i.bj = load i64, ptr %.sroa.5.117.i, align 8, !range !20, !alias.scope !1757, !noundef !9
  %i.bk = trunc nuw i64 %i.bj to i1
  br i1 %i.bk, label %bb.u, label %bb.v, !prof !25

bb.u:                                             ; preds = %bb.t
  %i.bl = load i64, ptr %i.av, align 8, !range !20, !alias.scope !1758, !noundef !9
  %i.bm = trunc nuw i64 %i.bl to i1
  br i1 %i.bm, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.i, label %bb.w, !prof !25

bb.v:                                             ; preds = %bb.t
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #33, !noalias !1759
  unreachable

bb.w:                                             ; preds = %bb.u
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #33, !noalias !1759
  unreachable

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.i: ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.5.117.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1760
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i40) ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.i.i40, i64 32 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.bo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.bn), !noalias !1761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1760
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.bo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.bf), !noalias !1751
  %i.bp = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c), !noalias !1751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1760
  %i.bq = icmp eq i8 %i.bp, -1                    ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %.sroa.19.115.i, i64 -120 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.bq, ptr %2, ptr %i.br
  %i.bs = getelementptr inbounds nuw [120 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.116.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.bs, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.117.i, i64 120, i1 false), !alias.scope !1762, !noalias !1763
  %i.bt = zext i1 %i.bq to i64
  %i.bu = add i64 %.sroa.11.116.i, %i.bt          ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.5.117.i, i64 120 ; 3 uses
  %i.bw = icmp ult ptr %i.bv, %i.bg
  br i1 %i.bw, label %bb.t, label %._crit_edge.i

bb.x:                                             ; preds = %._crit_edge.i
  %i.bx = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -120 ; 2 uses
  %i.by = getelementptr inbounds nuw [120 x i8], ptr %i.bx, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.by, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.1.lcssa.i, i64 120, i1 false), !alias.scope !1762, !noalias !1764
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 120
  br label %bb.s

bb.y:                                             ; preds = %._crit_edge.i
  %i.ca = mul nuw nsw i64 %.sroa.11.1.lcssa.i, 120
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph124, ptr nonnull align 8 %2, i64 %i.ca, i1 false), !alias.scope !1762
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cg, ptr noundef nonnull align 8 dereferenceable(120) %i.cf, i64 120, i1 false), !alias.scope !1762
  %i.ch = add nuw i64 %.sroa.06.020.i, 2          ; 2 uses
  %i.ci = xor i64 %.sroa.06.020.i, -2
  %i.cj = getelementptr [120 x i8], ptr %i.be, i64 %i.ci
  %i.ck = getelementptr [120 x i8], ptr %i.cc, i64 %.sroa.06.020.i
  %i.cl = getelementptr i8, ptr %i.ck, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cl, ptr noundef nonnull align 8 dereferenceable(120) %i.cj, i64 120, i1 false), !alias.scope !1762
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.co, ptr noundef nonnull align 8 dereferenceable(120) %i.cn, i64 120, i1 false), !alias.scope !1762
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.y
  %i.cp = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.cp, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  %.not.i41 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.0117346
  br i1 %.not.i41, label %bb.ab, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example.exit, !prof !10

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @33, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #33, !noalias !1765
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.aa
  %i.cq = getelementptr inbounds nuw [120 x i8], ptr %.sroa.0.0.ph124, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph124) ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB1s_NtNtB1y_6record3KeyEB1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4O_E12closest_keysB4l_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 %i.cq, i64 noundef %i.cb, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.cr = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.cr, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !1766)
  call void @llvm.experimental.noalias.scope.decl(metadata !1767)
  %.not59 = icmp samesign ult i64 %3, %.sroa.16.0117346
  br i1 %.not59, label %bb.ad, label %bb.ac, !prof !26

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
  br i1 %i.cv, label %.lr.ph.i54, label %._crit_edge.i48

.lr.ph.i54:                                       ; preds = %bb.ae
  %i.cw = load i64, ptr %i.av, align 8, !range !20, !alias.scope !1768, !noundef !9
  %i.cx = trunc nuw i64 %i.cw to i1
  br i1 %i.cx, label %.lr.ph.split.us.i, label %8, !prof !25

._crit_edge.i48:                                  ; preds = %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.us.i, %bb.ae
  %.sroa.19.1.lcssa.i49 = phi ptr [ %.sroa.19.0.i44, %bb.ae ], [ %i.de, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.us.i ]
  %.sroa.11.1.lcssa.i50 = phi i64 [ %.sroa.11.0.i45, %bb.ae ], [ %i.dh, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.us.i ] ; 10 uses
  %.sroa.5.1.lcssa.i51 = phi ptr [ %.sroa.5.0.i46, %bb.ae ], [ %i.di, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.us.i ] ; 2 uses
  %7 = icmp eq i64 %.sroa.0.0.i47, %.sroa.16.0117346
  br i1 %7, label %bb.ag, label %bb.af

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i54, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.us.i
  %.sroa.5.117.us.i = phi ptr [ %i.di, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.us.i ], [ %.sroa.5.0.i46, %.lr.ph.i54 ] ; 4 uses
  %.sroa.11.116.us.i = phi i64 [ %i.dh, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.us.i ], [ %.sroa.11.0.i45, %.lr.ph.i54 ] ; 2 uses
  %.sroa.19.115.us.i = phi ptr [ %i.de, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.us.i ], [ %.sroa.19.0.i44, %.lr.ph.i54 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1769)
  call void @llvm.experimental.noalias.scope.decl(metadata !1770)
  %.val.i.us.i = load ptr, ptr %6, align 8, !noalias !1771, !nonnull !9, !align !13, !noundef !9
  call void @llvm.experimental.noalias.scope.decl(metadata !1772)
  call void @llvm.experimental.noalias.scope.decl(metadata !1773)
  %.val.i.i.us.i = load ptr, ptr %.val.i.us.i, align 8, !noalias !1774 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1775)
  call void @llvm.experimental.noalias.scope.decl(metadata !1776)
  %i.cy = load i64, ptr %.sroa.5.117.us.i, align 8, !range !20, !alias.scope !1777, !noundef !9
  %i.cz = trunc nuw i64 %i.cy to i1
  br i1 %i.cz, label %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.us.i, label %9, !prof !25

8:                                                ; preds = %.lr.ph.i54
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #33, !noalias !1778
  unreachable

9:                                                ; preds = %.lr.ph.split.us.i
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #33, !noalias !1778
  unreachable

_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.us.i: ; preds = %.lr.ph.split.us.i
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.5.117.us.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1779
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.us.i) ]
  %i.db = getelementptr inbounds nuw i8, ptr %.val.i.i.us.i, i64 32 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.db, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ct), !noalias !1780
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1779
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.db, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.da), !noalias !1767
  %i.dc = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a), !noalias !1767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1779
  %i.dd = icmp ne i8 %i.dc, -1                    ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.19.115.us.i, i64 -120 ; 3 uses
  %.sroa.01.0.i.us.i = select i1 %i.dd, ptr %2, ptr %i.de
  %i.df = getelementptr inbounds nuw [120 x i8], ptr %.sroa.01.0.i.us.i, i64 %.sroa.11.116.us.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.df, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.117.us.i, i64 120, i1 false), !alias.scope !1781, !noalias !1782
  %i.dg = zext i1 %i.dd to i64
  %i.dh = add i64 %.sroa.11.116.us.i, %i.dg       ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.5.117.us.i, i64 120 ; 3 uses
  %i.dj = icmp ult ptr %i.di, %i.cu
  br i1 %i.dj, label %.lr.ph.split.us.i, label %._crit_edge.i48

bb.af:                                            ; preds = %._crit_edge.i48
  %i.dk = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i49, i64 -120
  %i.dl = getelementptr inbounds nuw [120 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.dl, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.1.lcssa.i51, i64 120, i1 false), !alias.scope !1781, !noalias !1783
  %i.dm = add i64 %.sroa.11.1.lcssa.i50, 1
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i51, i64 120
  br label %bb.ae

bb.ag:                                            ; preds = %._crit_edge.i48
  %i.do = mul nuw nsw i64 %.sroa.11.1.lcssa.i50, 120
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph124, ptr nonnull align 8 %2, i64 %i.do, i1 false), !alias.scope !1781
  %i.dp = sub i64 %.sroa.16.0117346, %.sroa.11.1.lcssa.i50 ; 6 uses
  %.not24.i51 = icmp eq i64 %.sroa.16.0117346, %.sroa.11.1.lcssa.i50
  %i.dq = getelementptr [120 x i8], ptr %.sroa.0.0.ph124, i64 %.sroa.11.1.lcssa.i50 ; 4 uses
  br i1 %.not24.i51, label %.outer.thread, label %.lr.ph23.i.preheader

.lr.ph23.i.preheader:                             ; preds = %bb.ag
  %.neg469 = add i64 %.sroa.11.1.lcssa.i50, 1
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.du, ptr noundef nonnull align 8 dereferenceable(120) %i.dt, i64 120, i1 false), !alias.scope !1781
  %i.dv = add nuw i64 %.sroa.06.022.i, 2          ; 2 uses
  %i.dw = xor i64 %.sroa.06.022.i, -2
  %i.dx = getelementptr [120 x i8], ptr %i.cs, i64 %i.dw
  %i.dy = getelementptr [120 x i8], ptr %i.dq, i64 %.sroa.06.022.i
  %i.dz = getelementptr i8, ptr %i.dy, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.dz, ptr noundef nonnull align 8 dereferenceable(120) %i.dx, i64 120, i1 false), !alias.scope !1781
  %niter468.next.1 = add i64 %niter468, 2         ; 2 uses
  %niter468.ncmp.1 = icmp eq i64 %niter468.next.1, %unroll_iter467
  br i1 %niter468.ncmp.1, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4w110Okq5IC_16ipfs_kad_example.exit.unr-lcssa, label %.lr.ph23.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4w110Okq5IC_16ipfs_kad_example.exit.unr-lcssa: ; preds = %.lr.ph23.i
  %lcmp.mod465.not = icmp eq i64 %xtraiter464, 0
  br i1 %lcmp.mod465.not, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4w110Okq5IC_16ipfs_kad_example.exit, label %.lr.ph23.i.epil.preheader

.lr.ph23.i.epil.preheader:                        ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4w110Okq5IC_16ipfs_kad_example.exit.unr-lcssa, %.lr.ph23.i.preheader
  %.sroa.06.022.i.epil.init = phi i64 [ 0, %.lr.ph23.i.preheader ], [ %i.dv, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4w110Okq5IC_16ipfs_kad_example.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod466 = trunc i64 %i.dp to i1
  call void @llvm.assume(i1 %lcmp.mod466)
  %i.ea = xor i64 %.sroa.06.022.i.epil.init, -1
  %i.eb = getelementptr [120 x i8], ptr %i.cs, i64 %i.ea
  %i.ec = getelementptr [120 x i8], ptr %i.dq, i64 %.sroa.06.022.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ec, ptr noundef nonnull align 8 dereferenceable(120) %i.eb, i64 120, i1 false), !alias.scope !1781
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4w110Okq5IC_16ipfs_kad_example.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4w110Okq5IC_16ipfs_kad_example.exit.unr-lcssa, %.lr.ph23.i.epil.preheader
  %i.ed = icmp ugt i64 %.sroa.11.1.lcssa.i50, %.sroa.16.0117346
  br i1 %i.ed, label %bb.ah, label %.outer, !prof !10

.outer.thread:                                    ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4w110Okq5IC_16ipfs_kad_example.exit
  %i.ee = getelementptr inbounds nuw [120 x i8], ptr %.sroa.0.0.ph124, i64 %.sroa.11.1.lcssa.i50 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ef = icmp ult i64 %i.dp, 33
  br i1 %i.ef, label %.outer._crit_edge, label %.lr.ph

bb.ah:                                            ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4w110Okq5IC_16ipfs_kad_example.exit
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i50, i64 noundef %.sroa.16.0117346, i64 noundef %.sroa.16.0117346, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #33
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1w_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1y_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB2n_INtNtB44_3vec3VechEEB2m_B3s_NCINvMs1_B1w_INtB1w_13KBucketsTableB2m_B3s_E7closestB5d_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 28120036697727976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 28120036697727976) %3, i32 noundef %4, ptr nofree noundef readonly align 8 captures(address, read_provenance) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #1 {
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

bb.b:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example.exit
  %i.r = icmp eq i32 %i.t, 0
  br i1 %i.r, label %.lr.ph._crit_edge, label %.lr.ph413

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example.exit, %bb.a
  %.sroa.0.0.ph.lcssa139 = phi ptr [ %.sroa.0.0.ph148, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example.exit ], [ %0, %bb.a ], [ %i.dz, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example.exit ], [ %1, %bb.a ], [ %i.dk, %.outer ] ; 2 uses
  %i.s = icmp samesign ugt i64 %.sroa.16.0.lcssa, 1
  br i1 %i.s, label %bb.c, label %_RINvXNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtNtBb_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1n_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1p_9addresses9AddressesEENtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCNvXs4_B1n_INtB1n_11ClosestIterIB2e_INtNtB4B_3vec3VechEEB2d_B3j_NCINvMs1_B1n_INtB1n_13KBucketsTableB2d_B3j_E7closestB5J_E0B1i_ENtNtNtNtBb_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example.exit

bb.c:                                             ; preds = %.outer._crit_edge
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1N_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1P_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1m_7sort_byNCNvXs4_B1N_INtB1N_11ClosestIterIB2E_INtNtB4l_3vec3VechEEB2D_B3J_NCINvMs1_B1N_INtB1N_13KBucketsTableB2D_B3J_E7closestB5u_E0B1I_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa139, i64 noundef range(i64 0, 17) %.sroa.16.0.lcssa, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %_RINvXNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtNtBb_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1n_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1p_9addresses9AddressesEENtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCNvXs4_B1n_INtB1n_11ClosestIterIB2e_INtNtB4B_3vec3VechEEB2d_B3j_NCINvMs1_B1n_INtB1n_13KBucketsTableB2d_B3j_E7closestB5J_E0B1i_ENtNtNtNtBb_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example.exit

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0141.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph147, %.lr.ph ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1n_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1p_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCNvXs4_B1n_INtB1n_11ClosestIterIB2e_INtNtB3V_3vec3VechEEB2d_B3j_NCINvMs1_B1n_INtB1n_13KBucketsTableB2d_B3j_E7closestB53_E0B1i_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph148, i64 noundef %.sroa.16.0141.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %_RINvXNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtNtBb_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1n_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1p_9addresses9AddressesEENtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCNvXs4_B1n_INtB1n_11ClosestIterIB2e_INtNtB4B_3vec3VechEEB2d_B3j_NCINvMs1_B1n_INtB1n_13KBucketsTableB2d_B3j_E7closestB5J_E0B1i_ENtNtNtNtBb_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example.exit

.lr.ph413:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0140412 = phi i32 [ %i.t, %bb.b ], [ %.sroa.025.0.ph146, %.lr.ph ]
  %.sroa.16.0141411 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph147, %.lr.ph ] ; 21 uses
  %i.t = add i32 %.sroa.025.0140412, -1           ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1803)
  %i.u = lshr i64 %.sroa.16.0141411, 3            ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.u, 1312
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph148, i64 %.idx.i ; 5 uses
  %.idx2.i = mul nuw nsw i64 %i.u, 2296
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph148, i64 %.idx2.i ; 5 uses
  %i.x = icmp samesign ult i64 %.sroa.16.0141411, 64
  br i1 %i.x, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph413
  %i.y = call noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1v_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1x_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB14_7sort_byNCNvXs4_B1v_INtB1v_11ClosestIterIB2m_INtNtB43_3vec3VechEEB2l_B3r_NCINvMs1_B1v_INtB1v_13KBucketsTableB2l_B3r_E7closestB5c_E0B1q_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example(ptr noundef nonnull align 8 %.sroa.0.0.ph148, ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, i64 noundef %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.p

bb.e:                                             ; preds = %.lr.ph413
  %.val4.i = load ptr, ptr %6, align 8, !alias.scope !1803, !nonnull !9, !align !13, !noundef !9 ; 3 uses
  %.val.i.i = load ptr, ptr %.val4.i, align 8, !noalias !1803 ; 2 uses
  %i.z = load i64, ptr %.sroa.0.0.ph148, align 8, !range !12, !noalias !1803, !noundef !9
  %.not.i.i.i = icmp eq i64 %i.z, 2
  br i1 %.not.i.i.i, label %bb.g, label %bb.f, !prof !10

bb.f:                                             ; preds = %bb.e
  %i.aa = load i64, ptr %i.v, align 8, !range !12, !noalias !1803, !noundef !9
  %.not2.i.i.i = icmp eq i64 %i.aa, 2
  br i1 %.not2.i.i.i, label %bb.h, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.i, !prof !10

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #33, !noalias !1803
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #33, !noalias !1803
  unreachable

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.i: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1803
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.n), !noalias !1803
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1803
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 208 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ac), !noalias !1803
  %i.ad = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k), !noalias !1803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1803
  %i.ae = icmp eq i8 %i.ad, -1                    ; 2 uses
  %.val.i5.i = load ptr, ptr %.val4.i, align 8, !noalias !1803 ; 2 uses
  %i.af = load i64, ptr %.sroa.0.0.ph148, align 8, !range !12, !noalias !1803, !noundef !9
  %.not.i.i6.i = icmp eq i64 %i.af, 2
  br i1 %.not.i.i6.i, label %bb.j, label %bb.i, !prof !10

bb.i:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.i
  %i.ag = load i64, ptr %i.w, align 8, !range !12, !noalias !1803, !noundef !9
  %.not2.i.i7.i = icmp eq i64 %i.ag, 2
  br i1 %.not2.i.i7.i, label %bb.k, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit8.i, !prof !10

bb.j:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit.i
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #33, !noalias !1803
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #33, !noalias !1803
  unreachable

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit8.i: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1803
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i5.i) ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.i5.i, i64 24 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.n), !noalias !1803
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1803
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 208 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ai), !noalias !1803
  %i.aj = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i), !noalias !1803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1803
  %i.ak = icmp eq i8 %i.aj, -1
  %i.al = xor i1 %i.ae, %i.ak
  br i1 %i.al, label %bb.p, label %bb.l

bb.l:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit8.i
  %.val.i9.i = load ptr, ptr %.val4.i, align 8, !noalias !1803 ; 2 uses
  %i.am = load i64, ptr %i.v, align 8, !range !12, !noalias !1803, !noundef !9
  %.not.i.i10.i = icmp eq i64 %i.am, 2
  br i1 %.not.i.i10.i, label %bb.n, label %bb.m, !prof !10

bb.m:                                             ; preds = %bb.l
  %i.an = load i64, ptr %i.w, align 8, !range !12, !noalias !1803, !noundef !9
  %.not2.i.i11.i = icmp eq i64 %i.an, 2
  br i1 %.not2.i.i11.i, label %bb.o, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit12.i, !prof !10

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #33, !noalias !1803
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #33, !noalias !1803
  unreachable

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit12.i: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1803
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i9.i) ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i9.i, i64 24 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ac), !noalias !1803
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1803
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4w110Okq5IC_16ipfs_kad_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ai), !noalias !1803
  %i.ap = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g), !noalias !1803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1803
  %i.aq = icmp eq i8 %i.ap, -1
  %i.ar = xor i1 %i.ae, %i.aq
  %..i.i = select i1 %i.ar, ptr %i.w, ptr %i.v
  br label %bb.p

_RINvXNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtNtBb_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1n_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1p_9addresses9AddressesEENtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCNvXs4_B1n_INtB1n_11ClosestIterIB2e_INtNtB4B_3vec3VechEEB2d_B3j_NCINvMs1_B1n_INtB1n_13KBucketsTableB2d_B3j_E7closestB5J_E0B1i_ENtNtNtNtBb_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example.exit: ; preds = %bb.an, %bb.c, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.p:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit12.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit8.i, %bb.d
  %.sroa.0.0.i.sink.i = phi ptr [ %i.y, %bb.d ], [ %.sroa.0.0.ph148, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit8.i ], [ %..i.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit12.i ]
  %i.as = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.at = sub nuw i64 %i.as, %i.o                 ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.at, 328        ; 3 uses
  %i.au = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.0141411
  call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph148, i64 %i.at ; 8 uses
  br i1 %.not, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val = load ptr, ptr %6, align 8, !nonnull !9, !align !13, !noundef !9
  %.val.i = load ptr, ptr %.val, align 8          ; 2 uses
  %i.aw = load i64, ptr %.sroa.028.0.ph145, align 8, !range !12, !noundef !9
  %.not.i.i = icmp eq i64 %i.aw, 2
  br i1 %.not.i.i, label %bb.s, label %bb.r, !prof !10

bb.r:                                             ; preds = %bb.q
  %i.ax = load i64, ptr %i.av, align 8, !range !12, !noundef !9
  %.not2.i.i = icmp eq i64 %i.ax, 2
  br i1 %.not2.i.i, label %bb.t, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example.exit, !prof !10

bb.s:                                             ; preds = %bb.q
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #33
  unreachable

bb.t:                                             ; preds = %bb.r
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #33
  unreachable
end_hunk_0
begin_hunk_1_@llvm.umin.i16
!1456 = !{!1452, !1451, !1450, !1448, !1446}
!1457 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!1458 = distinct !{!1458, i1 true, !"_RNvXs0_NtNtCsexYYUdYSQU6_5alloc3vec16in_place_collectINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtB7_9into_iter8IntoIterINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEEINtB5_18SpecInPlaceCollectB26_BP_E16collect_in_placeCs4w110Okq5IC_16ipfs_kad_example"}
!1459 = distinct !{!1459, !1458, !"_RNvXs0_NtNtCsexYYUdYSQU6_5alloc3vec16in_place_collectINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtB7_9into_iter8IntoIterINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEEINtB5_18SpecInPlaceCollectB26_BP_E16collect_in_placeCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1460 = distinct !{!1460, i1 true, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEENtNtNtB9_6traits8iterator8Iterator8try_foldINtNtB13_13in_place_drop11InPlaceDropB1M_ENCINvNtB13_16in_place_collect24write_in_place_with_dropB1M_E0INtNtBb_6result6ResultB47_zEECs4w110Okq5IC_16ipfs_kad_example"}
!1461 = distinct !{!1461, !1460, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEENtNtNtB9_6traits8iterator8Iterator8try_foldINtNtB13_13in_place_drop11InPlaceDropB1M_ENCINvNtB13_16in_place_collect24write_in_place_with_dropB1M_E0INtNtBb_6result6ResultB47_zEECs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1462 = distinct !{!1462, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example"}
!1463 = distinct !{!1463, !1462, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1464 = !{!1459}
!1465 = !{!1461}
!1466 = !{!1461, !1459}
!1467 = !{!1463}
!1468 = distinct !{!1468, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEEECs4w110Okq5IC_16ipfs_kad_example"}
!1469 = distinct !{!1469, !1468, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEEECs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1470 = !{!1469}
!1471 = distinct !{!1471, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEEECs4w110Okq5IC_16ipfs_kad_example"}
!1472 = distinct !{!1472, !1471, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEEECs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1473 = !{!1472}
!1474 = distinct !{!1474, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1z_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1B_9addresses9AddressesEEEECs4w110Okq5IC_16ipfs_kad_example"}
!1475 = distinct !{!1475, !1474, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1z_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1B_9addresses9AddressesEEEECs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1476 = !{!1475}
!1477 = distinct !{!1477, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1z_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1B_9addresses9AddressesEEEECs4w110Okq5IC_16ipfs_kad_example"}
!1478 = distinct !{!1478, !1477, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1z_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1B_9addresses9AddressesEEEECs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1479 = !{!1478}
!1480 = distinct !{!1480, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECs4w110Okq5IC_16ipfs_kad_example"}
!1481 = distinct !{!1481, !1480, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1482 = distinct !{!1482, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example"}
!1483 = distinct !{!1483, !1482, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1484 = distinct !{!1484, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example"}
!1485 = distinct !{!1485, !1484, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1486 = distinct !{!1486, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example"}
!1487 = distinct !{!1487, !1486, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1488 = !{!1483, !1481}
!1489 = !{!1481}
!1490 = !{!1485}
!1491 = !{!1487}
!1492 = distinct !{!1492, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1f_5query5peers7closest4PeerEEECs4w110Okq5IC_16ipfs_kad_example"}
!1493 = distinct !{!1493, !1492, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1f_5query5peers7closest4PeerEEECs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1494 = distinct !{!1494, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBT_5query5peers7closest4PeerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example"}
!1495 = distinct !{!1495, !1494, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBT_5query5peers7closest4PeerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1496 = distinct !{!1496, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBT_5query5peers7closest4PeerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example"}
!1497 = distinct !{!1497, !1496, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBT_5query5peers7closest4PeerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1498 = distinct !{!1498, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBT_5query5peers7closest4PeerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example"}
!1499 = distinct !{!1499, !1498, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBT_5query5peers7closest4PeerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1500 = !{!1495, !1493}
!1501 = !{!1493}
!1502 = !{!1497}
!1503 = !{!1499}
!1504 = distinct !{!1504, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1f_5query5peers7closest4PeerEEECs4w110Okq5IC_16ipfs_kad_example"}
!1505 = distinct !{!1505, !1504, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1f_5query5peers7closest4PeerEEECs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1506 = distinct !{!1506, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBT_5query5peers7closest4PeerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example"}
!1507 = distinct !{!1507, !1506, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBT_5query5peers7closest4PeerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1508 = distinct !{!1508, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBT_5query5peers7closest4PeerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example"}
!1509 = distinct !{!1509, !1508, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBT_5query5peers7closest4PeerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1510 = distinct !{!1510, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBT_5query5peers7closest4PeerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example"}
!1511 = distinct !{!1511, !1510, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBT_5query5peers7closest4PeerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1512 = !{!1507, !1505}
!1513 = !{!1505}
!1514 = !{!1509}
!1515 = !{!1511}
!1516 = distinct !{!1516, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1f_5query5peers7closest4PeerEEECs4w110Okq5IC_16ipfs_kad_example"}
!1517 = distinct !{!1517, !1516, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1f_5query5peers7closest4PeerEEECs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1518 = distinct !{!1518, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBT_5query5peers7closest4PeerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example"}
!1519 = distinct !{!1519, !1518, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBT_5query5peers7closest4PeerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1520 = distinct !{!1520, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBT_5query5peers7closest4PeerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example"}
!1521 = distinct !{!1521, !1520, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBT_5query5peers7closest4PeerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1522 = distinct !{!1522, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBT_5query5peers7closest4PeerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example"}
!1523 = distinct !{!1523, !1522, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBT_5query5peers7closest4PeerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1524 = !{!1519, !1517}
!1525 = !{!1517}
!1526 = !{!1521}
!1527 = !{!1523}
!1528 = distinct !{!1528, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1f_5query5peers7closest4PeerEEECs4w110Okq5IC_16ipfs_kad_example"}
!1529 = distinct !{!1529, !1528, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1f_5query5peers7closest4PeerEEECs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1530 = distinct !{!1530, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBT_5query5peers7closest4PeerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example"}
!1531 = distinct !{!1531, !1530, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBT_5query5peers7closest4PeerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1532 = distinct !{!1532, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBT_5query5peers7closest4PeerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example"}
!1533 = distinct !{!1533, !1532, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBT_5query5peers7closest4PeerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1534 = distinct !{!1534, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBT_5query5peers7closest4PeerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example"}
!1535 = distinct !{!1535, !1534, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBT_5query5peers7closest4PeerEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1536 = !{!1531, !1529}
!1537 = !{!1529}
!1538 = !{!1533}
!1539 = !{!1535}
!1540 = distinct !{!1540, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterB1r_B1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4t_E12closest_keysB1r_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example"}
!1541 = distinct !{!1541, !1540, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterB1r_B1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4t_E12closest_keysB1r_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1542 = distinct !{!1542, !1540, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterB1r_B1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4t_E12closest_keysB1r_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1543 = distinct !{!1543, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example"}
!1544 = distinct !{!1544, !1543, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1545 = distinct !{!1545, !1543, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1546 = distinct !{!1546, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example"}
!1547 = distinct !{!1547, !1546, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1548 = distinct !{!1548, !1546, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1549 = distinct !{!1549, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example"}
!1550 = distinct !{!1550, !1549, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1551 = distinct !{!1551, !1549, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1552 = distinct !{!1552, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example"}
!1553 = distinct !{!1553, !1552, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1554 = distinct !{!1554, !1552, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1555 = distinct !{!1555, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example"}
!1556 = distinct !{!1556, !1555, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1557 = distinct !{!1557, !1555, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1558 = distinct !{!1558, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example"}
!1559 = distinct !{!1559, !1558, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1560 = distinct !{!1560, !1558, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1561 = distinct !{!1561, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example"}
!1562 = distinct !{!1562, !1561, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1563 = distinct !{!1563, !1561, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1564 = distinct !{!1564, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example"}
!1565 = distinct !{!1565, !1564, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1566 = distinct !{!1566, !1564, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1567 = distinct !{!1567, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4B_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example"}
!1568 = distinct !{!1568, !1567, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4B_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1569 = distinct !{!1569, !1567, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4B_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1570 = distinct !{!1570, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example"}
!1571 = distinct !{!1571, !1570, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1572 = distinct !{!1572, !1570, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1573 = distinct !{!1573, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example"}
!1574 = distinct !{!1574, !1573, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1575 = distinct !{!1575, !1573, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1576 = distinct !{!1576, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1577 = distinct !{!1577, !1576, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1578 = distinct !{!1578, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1579 = distinct !{!1579, !1578, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1580 = distinct !{!1580, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example"}
!1581 = distinct !{!1581, !1580, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1582 = distinct !{!1582, !1580, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1583 = distinct !{!1583, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4w110Okq5IC_16ipfs_kad_example"}
!1584 = distinct !{!1584, !1583, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1585 = distinct !{!1585, !1583, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1586 = distinct !{!1586, i1 true, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4w110Okq5IC_16ipfs_kad_example"}
!1587 = distinct !{!1587, !1586, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1588 = distinct !{!1588, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example"}
!1589 = distinct !{!1589, !1588, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1590 = distinct !{!1590, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example"}
!1591 = distinct !{!1591, !1590, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1592 = distinct !{!1592, !1586, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1593 = distinct !{!1593, !1588, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1594 = distinct !{!1594, !1590, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1595 = distinct !{!1595, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1596 = distinct !{!1596, !1595, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1597 = distinct !{!1597, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1598 = distinct !{!1598, !1597, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1599 = !{!1541}
!1600 = !{!1542}
!1601 = !{!1544}
!1602 = !{!1545}
!1603 = !{!1544, !1545, !1541, !1542}
!1604 = !{!1547}
!1605 = !{!1548}
!1606 = !{!1547, !1544, !1541}
!1607 = !{!1548, !1545, !1541}
!1608 = !{!1547, !1548, !1544, !1545, !1541, !1542}
!1609 = !{!1548, !1545, !1542}
!1610 = !{!1550}
!1611 = !{!1551, !1550, !1542}
!1612 = !{!1553}
!1613 = !{!1553, !1550, !1541}
!1614 = !{!1554, !1553, !1551, !1550, !1542}
!1615 = !{!1554, !1553, !1551, !1550, !1541, !1542}
!1616 = !{!1553, !1550, !1542}
!1617 = !{!1557, !1556, !1542}
!1618 = !{!1560, !1559, !1557, !1556, !1541, !1542}
!1619 = !{!1559, !1556, !1542}
!1620 = !{!1562}
!1621 = !{!1563}
!1622 = !{!1562, !1563}
!1623 = !{!1565}
!1624 = !{!1566}
!1625 = !{!1565, !1562}
!1626 = !{!1566, !1563}
!1627 = !{!1565, !1566, !1562, !1563}
!1628 = !{!1568}
!1629 = !{!1569}
!1630 = !{!1571}
!1631 = !{!1572}
!1632 = !{!1571, !1572, !1568, !1569}
!1633 = !{!1574}
!1634 = !{!1575}
!1635 = !{!1574, !1571, !1568}
!1636 = !{!1575, !1572, !1568}
!1637 = !{!1574, !1575, !1571, !1572, !1569}
!1638 = !{!1574, !1575, !1571, !1572, !1568, !1569}
!1639 = !{!1575, !1572, !1569}
!1640 = !{!1568, !1569}
!1641 = !{!1577}
!1642 = !{!1579}
!1643 = !{!1582, !1581}
!1644 = !{!1584}
!1645 = !{!1585}
!1646 = !{!1591, !1589, !1587, !1584}
!1647 = !{!1592}
!1648 = !{!1587}
!1649 = !{!1592, !1587, !1584, !1585}
!1650 = !{!1589}
!1651 = !{!1593}
!1652 = !{!1589, !1593, !1592, !1587, !1585}
!1653 = !{!1591}
!1654 = !{!1594}
!1655 = !{!1594, !1593, !1592, !1584}
!1656 = !{!1591, !1594, !1589, !1593, !1592, !1587, !1585}
!1657 = !{!1591, !1594, !1589, !1593, !1592, !1587, !1584, !1585}
!1658 = !{!1594, !1593, !1592, !1585}
!1659 = !{!1584, !1585}
!1660 = !{!1596}
!1661 = !{!1598}
!1662 = distinct !{!1662, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB1s_NtNtB1y_6record3KeyEB1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4O_E12closest_keysB4l_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example"}
!1663 = distinct !{!1663, !1662, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB1s_NtNtB1y_6record3KeyEB1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4O_E12closest_keysB4l_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1664 = distinct !{!1664, !1662, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB1s_NtNtB1y_6record3KeyEB1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4O_E12closest_keysB4l_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1665 = distinct !{!1665, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example"}
!1666 = distinct !{!1666, !1665, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1667 = distinct !{!1667, !1665, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1668 = distinct !{!1668, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example"}
!1669 = distinct !{!1669, !1668, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1670 = distinct !{!1670, !1668, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1671 = distinct !{!1671, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example"}
!1672 = distinct !{!1672, !1671, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1673 = distinct !{!1673, !1671, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1674 = distinct !{!1674, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example"}
!1675 = distinct !{!1675, !1674, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1676 = distinct !{!1676, !1674, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1677 = distinct !{!1677, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example"}
!1678 = distinct !{!1678, !1677, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1679 = distinct !{!1679, !1677, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1680 = distinct !{!1680, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example"}
!1681 = distinct !{!1681, !1680, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1682 = distinct !{!1682, !1680, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1683 = distinct !{!1683, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example"}
!1684 = distinct !{!1684, !1683, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1685 = distinct !{!1685, !1683, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1686 = distinct !{!1686, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example"}
!1687 = distinct !{!1687, !1686, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1688 = distinct !{!1688, !1686, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1689 = distinct !{!1689, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4W_E12closest_keysB4t_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example"}
!1690 = distinct !{!1690, !1689, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4W_E12closest_keysB4t_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1691 = distinct !{!1691, !1689, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4W_E12closest_keysB4t_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1692 = distinct !{!1692, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example"}
!1693 = distinct !{!1693, !1692, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1694 = distinct !{!1694, !1692, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1695 = distinct !{!1695, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example"}
!1696 = distinct !{!1696, !1695, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1697 = distinct !{!1697, !1695, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1698 = distinct !{!1698, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1699 = distinct !{!1699, !1698, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1700 = distinct !{!1700, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1701 = distinct !{!1701, !1700, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1702 = distinct !{!1702, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example"}
!1703 = distinct !{!1703, !1702, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1704 = distinct !{!1704, !1702, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1705 = distinct !{!1705, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4w110Okq5IC_16ipfs_kad_example"}
!1706 = distinct !{!1706, !1705, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1707 = distinct !{!1707, !1705, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1708 = distinct !{!1708, i1 true, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4w110Okq5IC_16ipfs_kad_example"}
!1709 = distinct !{!1709, !1708, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1710 = distinct !{!1710, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example"}
!1711 = distinct !{!1711, !1710, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1712 = distinct !{!1712, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example"}
!1713 = distinct !{!1713, !1712, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1714 = distinct !{!1714, !1708, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1715 = distinct !{!1715, !1710, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1716 = distinct !{!1716, !1712, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1717 = distinct !{!1717, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1718 = distinct !{!1718, !1717, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1719 = distinct !{!1719, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1720 = distinct !{!1720, !1719, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1721 = !{!1663}
!1722 = !{!1664}
!1723 = !{!1666}
!1724 = !{!1667}
!1725 = !{!1666, !1667, !1663, !1664}
!1726 = !{!1669}
!1727 = !{!1670}
!1728 = !{!1669, !1666, !1663}
!1729 = !{!1670, !1667, !1663}
!1730 = !{!1669, !1670, !1666, !1667, !1663, !1664}
!1731 = !{!1670, !1667, !1664}
!1732 = !{!1672}
!1733 = !{!1673, !1672, !1664}
!1734 = !{!1675}
!1735 = !{!1675, !1672, !1663}
!1736 = !{!1676, !1675, !1673, !1672, !1664}
!1737 = !{!1676, !1675, !1673, !1672, !1663, !1664}
!1738 = !{!1675, !1672, !1664}
!1739 = !{!1679, !1678, !1664}
!1740 = !{!1682, !1681, !1679, !1678, !1663, !1664}
!1741 = !{!1681, !1678, !1664}
!1742 = !{!1684}
!1743 = !{!1685}
!1744 = !{!1684, !1685}
!1745 = !{!1687}
!1746 = !{!1688}
!1747 = !{!1687, !1684}
!1748 = !{!1688, !1685}
!1749 = !{!1687, !1688, !1684, !1685}
!1750 = !{!1690}
!1751 = !{!1691}
!1752 = !{!1693}
!1753 = !{!1694}
!1754 = !{!1693, !1694, !1690, !1691}
!1755 = !{!1696}
!1756 = !{!1697}
!1757 = !{!1696, !1693, !1690}
!1758 = !{!1697, !1694, !1690}
!1759 = !{!1696, !1697, !1693, !1694, !1691}
!1760 = !{!1696, !1697, !1693, !1694, !1690, !1691}
!1761 = !{!1697, !1694, !1691}
!1762 = !{!1690, !1691}
!1763 = !{!1699}
!1764 = !{!1701}
!1765 = !{!1704, !1703}
!1766 = !{!1706}
!1767 = !{!1707}
!1768 = !{!1713, !1711, !1709, !1706}
!1769 = !{!1714}
!1770 = !{!1709}
!1771 = !{!1714, !1709, !1706, !1707}
!1772 = !{!1711}
!1773 = !{!1715}
!1774 = !{!1711, !1715, !1714, !1709, !1707}
!1775 = !{!1713}
!1776 = !{!1716}
!1777 = !{!1716, !1715, !1714, !1706}
!1778 = !{!1713, !1716, !1711, !1715, !1714, !1709, !1707}
!1779 = !{!1713, !1716, !1711, !1715, !1714, !1709, !1706, !1707}
!1780 = !{!1716, !1715, !1714, !1707}
!1781 = !{!1706, !1707}
!1782 = !{!1718}
!1783 = !{!1720}
!1784 = distinct !{!1784, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1w_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1y_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB2n_INtNtB44_3vec3VechEEB2m_B3s_NCINvMs1_B1w_INtB1w_13KBucketsTableB2m_B3s_E7closestB5d_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example"}
!1785 = distinct !{!1785, !1784, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1w_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1y_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB2n_INtNtB44_3vec3VechEEB2m_B3s_NCINvMs1_B1w_INtB1w_13KBucketsTableB2m_B3s_E7closestB5d_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1786 = distinct !{!1786, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_INtNtB4c_3vec3VechEEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5l_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example"}
!1787 = distinct !{!1787, !1786, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_INtNtB4c_3vec3VechEEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5l_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1788 = distinct !{!1788, !1786, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_INtNtB4c_3vec3VechEEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5l_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1789 = distinct !{!1789, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1790 = distinct !{!1790, !1789, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1791 = distinct !{!1791, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1792 = distinct !{!1792, !1791, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1793 = distinct !{!1793, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example"}
!1794 = distinct !{!1794, !1793, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1795 = distinct !{!1795, !1793, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1796 = distinct !{!1796, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_INtNtB4y_3vec3VechEEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5H_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4w110Okq5IC_16ipfs_kad_example"}
!1797 = distinct !{!1797, !1796, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_INtNtB4y_3vec3VechEEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5H_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1798 = distinct !{!1798, !1796, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_INtNtB4y_3vec3VechEEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5H_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1799 = distinct !{!1799, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1800 = distinct !{!1800, !1799, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1801 = distinct !{!1801, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1802 = distinct !{!1802, !1801, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1803 = !{!1785}
!1804 = !{!1787}
!1805 = !{!1788}
!1806 = !{!1787, !1788}
!1807 = !{!1790}
!1808 = !{!1792}
!1809 = !{!1795, !1794}
!1810 = !{!1797}
!1811 = !{!1798}
!1812 = !{!1797, !1798}
!1813 = !{!1800}
!1814 = !{!1802}
!1815 = distinct !{!1815, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1w_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1y_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB2n_NtNtB1y_6record3KeyEB2m_B3s_NCINvMs1_B1w_INtB1w_13KBucketsTableB2m_B3s_E7closestB5d_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example"}
!1816 = distinct !{!1816, !1815, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1w_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1y_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB2n_NtNtB1y_6record3KeyEB2m_B3s_NCINvMs1_B1w_INtB1w_13KBucketsTableB2m_B3s_E7closestB5d_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1817 = distinct !{!1817, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_NtNtB1G_6record3KeyEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5l_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example"}
!1818 = distinct !{!1818, !1817, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_NtNtB1G_6record3KeyEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5l_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1819 = distinct !{!1819, !1817, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_NtNtB1G_6record3KeyEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5l_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1820 = distinct !{!1820, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1821 = distinct !{!1821, !1820, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1822 = distinct !{!1822, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1823 = distinct !{!1823, !1822, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1824 = distinct !{!1824, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example"}
!1825 = distinct !{!1825, !1824, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1826 = distinct !{!1826, !1824, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1827 = distinct !{!1827, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_NtNtB1G_6record3KeyEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5H_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4w110Okq5IC_16ipfs_kad_example"}
!1828 = distinct !{!1828, !1827, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_NtNtB1G_6record3KeyEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5H_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1829 = distinct !{!1829, !1827, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_NtNtB1G_6record3KeyEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5H_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1830 = distinct !{!1830, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1831 = distinct !{!1831, !1830, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1832 = distinct !{!1832, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1833 = distinct !{!1833, !1832, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1834 = !{!1816}
!1835 = !{!1818}
!1836 = !{!1819}
!1837 = !{!1818, !1819}
!1838 = !{!1821}
!1839 = !{!1823}
!1840 = !{!1826, !1825}
!1841 = !{!1828}
!1842 = !{!1829}
!1843 = !{!1828, !1829}
!1844 = !{!1831}
!1845 = !{!1833}
!1846 = distinct !{!1846, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keybNCINvMB18_INtB18_10NameServerB2a_E3newATNtNtB2g_4xfer8ProtocolINtNtB4Y_12dns_exchange11DnsExchangeB2a_EEj0_Es_0E0ECs4w110Okq5IC_16ipfs_kad_example"}
!1847 = distinct !{!1847, !1846, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keybNCINvMB18_INtB18_10NameServerB2a_E3newATNtNtB2g_4xfer8ProtocolINtNtB4Y_12dns_exchange11DnsExchangeB2a_EEj0_Es_0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1848 = distinct !{!1848, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keybNCINvMB1g_INtB1g_10NameServerB2i_E3newATNtNtB2o_4xfer8ProtocolINtNtB56_12dns_exchange11DnsExchangeB2i_EEj0_Es_0E0ECs4w110Okq5IC_16ipfs_kad_example"}
!1849 = distinct !{!1849, !1848, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keybNCINvMB1g_INtB1g_10NameServerB2i_E3newATNtNtB2o_4xfer8ProtocolINtNtB56_12dns_exchange11DnsExchangeB2i_EEj0_Es_0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1850 = distinct !{!1850, !1848, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keybNCINvMB1g_INtB1g_10NameServerB2i_E3newATNtNtB2o_4xfer8ProtocolINtNtB56_12dns_exchange11DnsExchangeB2i_EEj0_Es_0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1851 = distinct !{!1851, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1852 = distinct !{!1852, !1851, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1853 = distinct !{!1853, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1854 = distinct !{!1854, !1853, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1855 = distinct !{!1855, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example"}
!1856 = distinct !{!1856, !1855, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1857 = distinct !{!1857, !1855, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1858 = distinct !{!1858, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keybNCINvMB1g_INtB1g_10NameServerB2i_E3newATNtNtB2o_4xfer8ProtocolINtNtB5s_12dns_exchange11DnsExchangeB2i_EEj0_Es_0E0E0ECs4w110Okq5IC_16ipfs_kad_example"}
!1859 = distinct !{!1859, !1858, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keybNCINvMB1g_INtB1g_10NameServerB2i_E3newATNtNtB2o_4xfer8ProtocolINtNtB5s_12dns_exchange11DnsExchangeB2i_EEj0_Es_0E0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1860 = distinct !{!1860, !1858, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keybNCINvMB1g_INtB1g_10NameServerB2i_E3newATNtNtB2o_4xfer8ProtocolINtNtB5s_12dns_exchange11DnsExchangeB2i_EEj0_Es_0E0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1861 = distinct !{!1861, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1862 = distinct !{!1862, !1861, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1863 = distinct !{!1863, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1864 = distinct !{!1864, !1863, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1865 = !{!1847}
!1866 = !{!1849}
!1867 = !{!1850}
!1868 = !{!1850, !1849}
!1869 = !{!1852}
!1870 = !{!1854}
!1871 = !{!1857, !1856}
!1872 = !{!1859}
!1873 = !{!1860}
!1874 = !{!1860, !1859}
!1875 = !{!1862}
!1876 = !{!1864}
!1877 = distinct !{!1877, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1c_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapB16_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4x_8adapters4take4TakeINtNtB5u_3map3MapINtB1a_11ClosestIterINtB18_3KeyNtNtB1c_6record3KeyEIB6v_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1c_9addresses9AddressesNCINvMs1_B1a_INtB1a_13KBucketsTableB6Z_B7T_E12closest_keysB6u_E0B6Z_ENCINvMs_B1Z_NtB1Z_16ClosestPeersIter11with_configB6a_B6u_E0EEE0E0ECs4w110Okq5IC_16ipfs_kad_example"}
!1878 = distinct !{!1878, !1877, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1c_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapB16_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4x_8adapters4take4TakeINtNtB5u_3map3MapINtB1a_11ClosestIterINtB18_3KeyNtNtB1c_6record3KeyEIB6v_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1c_9addresses9AddressesNCINvMs1_B1a_INtB1a_13KBucketsTableB6Z_B7T_E12closest_keysB6u_E0B6Z_ENCINvMs_B1Z_NtB1Z_16ClosestPeersIter11with_configB6a_B6u_E0EEE0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1879 = distinct !{!1879, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtB1k_6record3KeyEIB6D_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB77_B81_E12closest_keysB6C_E0B77_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6i_B6C_E0EEE0E0ECs4w110Okq5IC_16ipfs_kad_example"}
!1880 = distinct !{!1880, !1879, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtB1k_6record3KeyEIB6D_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB77_B81_E12closest_keysB6C_E0B77_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6i_B6C_E0EEE0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1881 = distinct !{!1881, !1879, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtB1k_6record3KeyEIB6D_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB77_B81_E12closest_keysB6C_E0B77_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6i_B6C_E0EEE0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1882 = distinct !{!1882, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1883 = distinct !{!1883, !1882, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1884 = distinct !{!1884, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1885 = distinct !{!1885, !1884, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1886 = distinct !{!1886, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example"}
!1887 = distinct !{!1887, !1886, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1888 = distinct !{!1888, !1886, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1889 = distinct !{!1889, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtB1k_6record3KeyEIB6Z_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB7t_B8n_E12closest_keysB6Y_E0B7t_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6E_B6Y_E0EEE0E0E0ECs4w110Okq5IC_16ipfs_kad_example"}
!1890 = distinct !{!1890, !1889, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtB1k_6record3KeyEIB6Z_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB7t_B8n_E12closest_keysB6Y_E0B7t_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6E_B6Y_E0EEE0E0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1891 = distinct !{!1891, !1889, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtB1k_6record3KeyEIB6Z_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB7t_B8n_E12closest_keysB6Y_E0B7t_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6E_B6Y_E0EEE0E0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1892 = distinct !{!1892, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1893 = distinct !{!1893, !1892, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1894 = distinct !{!1894, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1895 = distinct !{!1895, !1894, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1896 = !{!1878}
!1897 = !{!1880}
!1898 = !{!1881, !1880}
!1899 = !{!1883}
!1900 = !{!1885}
!1901 = !{!1888, !1887}
!1902 = !{!1890}
!1903 = !{!1891, !1890}
!1904 = !{!1893}
!1905 = !{!1895}
!1906 = distinct !{!1906, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1c_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapB16_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4x_8adapters4take4TakeINtNtB5u_3map3MapINtB1a_11ClosestIterINtB18_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB6u_NtNtB1c_9addresses9AddressesNCINvMs1_B1a_INtB1a_13KBucketsTableB6u_B7y_E12closest_keysB6u_E0B6u_ENCINvMs_B1Z_NtB1Z_16ClosestPeersIter11with_configB6a_B6u_E0EEE0E0ECs4w110Okq5IC_16ipfs_kad_example"}
!1907 = distinct !{!1907, !1906, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1c_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapB16_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4x_8adapters4take4TakeINtNtB5u_3map3MapINtB1a_11ClosestIterINtB18_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB6u_NtNtB1c_9addresses9AddressesNCINvMs1_B1a_INtB1a_13KBucketsTableB6u_B7y_E12closest_keysB6u_E0B6u_ENCINvMs_B1Z_NtB1Z_16ClosestPeersIter11with_configB6a_B6u_E0EEE0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1908 = distinct !{!1908, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB6C_NtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB6C_B7G_E12closest_keysB6C_E0B6C_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6i_B6C_E0EEE0E0ECs4w110Okq5IC_16ipfs_kad_example"}
!1909 = distinct !{!1909, !1908, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB6C_NtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB6C_B7G_E12closest_keysB6C_E0B6C_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6i_B6C_E0EEE0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1910 = distinct !{!1910, !1908, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB6C_NtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB6C_B7G_E12closest_keysB6C_E0B6C_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6i_B6C_E0EEE0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1911 = distinct !{!1911, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1912 = distinct !{!1912, !1911, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1913 = distinct !{!1913, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1914 = distinct !{!1914, !1913, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1915 = distinct !{!1915, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example"}
!1916 = distinct !{!1916, !1915, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1917 = distinct !{!1917, !1915, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1918 = distinct !{!1918, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB6Y_NtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB6Y_B82_E12closest_keysB6Y_E0B6Y_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6E_B6Y_E0EEE0E0E0ECs4w110Okq5IC_16ipfs_kad_example"}
!1919 = distinct !{!1919, !1918, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB6Y_NtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB6Y_B82_E12closest_keysB6Y_E0B6Y_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6E_B6Y_E0EEE0E0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1920 = distinct !{!1920, !1918, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB6Y_NtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB6Y_B82_E12closest_keysB6Y_E0B6Y_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6E_B6Y_E0EEE0E0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1921 = distinct !{!1921, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1922 = distinct !{!1922, !1921, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1923 = distinct !{!1923, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1924 = distinct !{!1924, !1923, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1925 = !{!1907}
!1926 = !{!1909}
!1927 = !{!1910, !1909}
!1928 = !{!1912}
!1929 = !{!1914}
!1930 = !{!1917, !1916}
!1931 = !{!1919}
!1932 = !{!1920, !1919}
!1933 = !{!1922}
!1934 = !{!1924}
!1935 = distinct !{!1935, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1c_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapB16_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4x_8adapters4take4TakeINtNtB5u_3map3MapINtNtNtB2H_3vec9into_iter8IntoIterINtB18_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B1Z_NtB1Z_16ClosestPeersIter11with_configINtB6f_3VecB6I_EB6I_E0EEE0E0ECs4w110Okq5IC_16ipfs_kad_example"}
!1936 = distinct !{!1936, !1935, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1c_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapB16_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4x_8adapters4take4TakeINtNtB5u_3map3MapINtNtNtB2H_3vec9into_iter8IntoIterINtB18_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B1Z_NtB1Z_16ClosestPeersIter11with_configINtB6f_3VecB6I_EB6I_E0EEE0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1937 = distinct !{!1937, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtNtNtB2P_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6n_3VecB6Q_EB6Q_E0EEE0E0ECs4w110Okq5IC_16ipfs_kad_example"}
!1938 = distinct !{!1938, !1937, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtNtNtB2P_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6n_3VecB6Q_EB6Q_E0EEE0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1939 = distinct !{!1939, !1937, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtNtNtB2P_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6n_3VecB6Q_EB6Q_E0EEE0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1940 = distinct !{!1940, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1941 = distinct !{!1941, !1940, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1942 = distinct !{!1942, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1943 = distinct !{!1943, !1942, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1944 = distinct !{!1944, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example"}
!1945 = distinct !{!1945, !1944, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1946 = distinct !{!1946, !1944, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1947 = distinct !{!1947, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtNtNtB3b_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6J_3VecB7c_EB7c_E0EEE0E0E0ECs4w110Okq5IC_16ipfs_kad_example"}
!1948 = distinct !{!1948, !1947, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtNtNtB3b_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6J_3VecB7c_EB7c_E0EEE0E0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1949 = distinct !{!1949, !1947, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtNtNtB3b_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6J_3VecB7c_EB7c_E0EEE0E0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1950 = distinct !{!1950, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1951 = distinct !{!1951, !1950, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1952 = distinct !{!1952, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1953 = distinct !{!1953, !1952, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1954 = !{!1936}
!1955 = !{!1938}
!1956 = !{!1939, !1938}
!1957 = !{!1941}
!1958 = !{!1943}
!1959 = !{!1946, !1945}
!1960 = !{!1948}
!1961 = !{!1949, !1948}
!1962 = !{!1951}
!1963 = !{!1953}
!1964 = distinct !{!1964, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1c_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapB16_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4x_8adapters4take4TakeINtNtB5u_3map3MapINtNtNtB2H_3vec9into_iter8IntoIterINtB18_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B1Z_NtB1Z_16ClosestPeersIter11with_configINtB6f_3VecB6I_EIB6J_NtNtB1c_6record3KeyEE0EEE0E0ECs4w110Okq5IC_16ipfs_kad_example"}
!1965 = distinct !{!1965, !1964, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1c_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapB16_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4x_8adapters4take4TakeINtNtB5u_3map3MapINtNtNtB2H_3vec9into_iter8IntoIterINtB18_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B1Z_NtB1Z_16ClosestPeersIter11with_configINtB6f_3VecB6I_EIB6J_NtNtB1c_6record3KeyEE0EEE0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1966 = distinct !{!1966, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtNtNtB2P_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6n_3VecB6Q_EIB6R_NtNtB1k_6record3KeyEE0EEE0E0ECs4w110Okq5IC_16ipfs_kad_example"}
!1967 = distinct !{!1967, !1966, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtNtNtB2P_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6n_3VecB6Q_EIB6R_NtNtB1k_6record3KeyEE0EEE0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1968 = distinct !{!1968, !1966, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtNtNtB2P_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6n_3VecB6Q_EIB6R_NtNtB1k_6record3KeyEE0EEE0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1969 = distinct !{!1969, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1970 = distinct !{!1970, !1969, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1971 = distinct !{!1971, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1972 = distinct !{!1972, !1971, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1973 = distinct !{!1973, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example"}
!1974 = distinct !{!1974, !1973, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1975 = distinct !{!1975, !1973, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1976 = distinct !{!1976, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtNtNtB3b_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6J_3VecB7c_EIB7d_NtNtB1k_6record3KeyEE0EEE0E0E0ECs4w110Okq5IC_16ipfs_kad_example"}
!1977 = distinct !{!1977, !1976, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtNtNtB3b_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6J_3VecB7c_EIB7d_NtNtB1k_6record3KeyEE0EEE0E0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 1"}
!1978 = distinct !{!1978, !1976, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtNtNtB3b_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6J_3VecB7c_EIB7d_NtNtB1k_6record3KeyEE0EEE0E0E0ECs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1979 = distinct !{!1979, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1980 = distinct !{!1980, !1979, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
!1981 = distinct !{!1981, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example"}
!1982 = distinct !{!1982, !1981, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4w110Okq5IC_16ipfs_kad_example: argument 0"}
end_hunk_1

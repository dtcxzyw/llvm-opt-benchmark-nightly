Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/distributed_key_value_store_example.distributed_key_value_store_example.32415d2ae8513850-cgu.00?download=true
inline.NumInlined: 942
inline.NumDeleted: 339
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterB1r_B1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4t_E12closest_keysB1r_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example:bb.a
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #25, !noalias !772
  unreachable

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit: ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !772
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.q), !noalias !771
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !772
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ax)
  %i.ay = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !772
  %i.az = icmp eq i8 %i.ay, -1
  br i1 %i.az, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.k, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit
  %.val37 = load ptr, ptr %6, align 8             ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !773)
  call void @llvm.experimental.noalias.scope.decl(metadata !774)
  %.not58 = icmp samesign ult i64 %3, %.sroa.16.0117346
  br i1 %.not58, label %bb.r, label %bb.q, !prof !27

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

._crit_edge.i:                                    ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i, %bb.s
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.s ], [ %i.bm, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.s ], [ %i.bp, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.s ], [ %i.bq, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i ] ; 2 uses
  %i.be = icmp eq i64 %.sroa.0.0.i39, %.sroa.16.0117346
  br i1 %i.be, label %bb.y, label %bb.x

bb.t:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i, %.lr.ph.i
  %.sroa.5.117.i = phi ptr [ %.sroa.5.0.i, %.lr.ph.i ], [ %i.bq, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i ] ; 4 uses
  %.sroa.11.116.i = phi i64 [ %.sroa.11.0.i, %.lr.ph.i ], [ %i.bp, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i ] ; 2 uses
  %.sroa.19.115.i = phi ptr [ %.sroa.19.0.i, %.lr.ph.i ], [ %i.bm, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !775)
  call void @llvm.experimental.noalias.scope.decl(metadata !776)
  %.val.i.i40 = load ptr, ptr %.val37, align 8, !noalias !777 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !778)
  call void @llvm.experimental.noalias.scope.decl(metadata !779)
  %i.bf = load i64, ptr %.sroa.5.117.i, align 8, !range !25, !alias.scope !780, !noundef !11
  %i.bg = trunc nuw i64 %i.bf to i1
  br i1 %i.bg, label %bb.u, label %bb.v, !prof !26

bb.u:                                             ; preds = %bb.t
  %i.bh = load i64, ptr %i.as, align 8, !range !25, !alias.scope !781, !noundef !11
  %i.bi = trunc nuw i64 %i.bh to i1
  br i1 %i.bi, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i, label %bb.w, !prof !26

bb.v:                                             ; preds = %bb.t
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #25, !noalias !782
  unreachable

bb.w:                                             ; preds = %bb.u
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #25, !noalias !782
  unreachable

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i: ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.5.117.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !783
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i40) ]
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %.val.i.i40, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.bj), !noalias !784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !783
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %.val.i.i40, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.bb), !noalias !774
  %i.bk = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c), !noalias !774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !783
  %i.bl = icmp eq i8 %i.bk, -1                    ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %.sroa.19.115.i, i64 -120 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.bl, ptr %2, ptr %i.bm
  %i.bn = getelementptr inbounds nuw [120 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.116.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.bn, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.117.i, i64 120, i1 false), !alias.scope !785, !noalias !786
  %i.bo = zext i1 %i.bl to i64
  %i.bp = add i64 %.sroa.11.116.i, %i.bo          ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.5.117.i, i64 120 ; 3 uses
  %i.br = icmp ult ptr %i.bq, %i.bc
  br i1 %i.br, label %bb.t, label %._crit_edge.i

bb.x:                                             ; preds = %._crit_edge.i
  %i.bs = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -120 ; 2 uses
  %i.bt = getelementptr inbounds nuw [120 x i8], ptr %i.bs, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.bt, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.1.lcssa.i, i64 120, i1 false), !alias.scope !785, !noalias !787
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 120
  br label %bb.s

bb.y:                                             ; preds = %._crit_edge.i
  %i.bv = mul nuw nsw i64 %.sroa.11.1.lcssa.i, 120
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph124, ptr nonnull align 8 %2, i64 %i.bv, i1 false), !alias.scope !785
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cb, ptr noundef nonnull align 8 dereferenceable(120) %i.ca, i64 120, i1 false), !alias.scope !785
  %i.cc = add nuw i64 %.sroa.06.020.i, 2          ; 2 uses
  %i.cd = xor i64 %.sroa.06.020.i, -2
  %i.ce = getelementptr [120 x i8], ptr %i.ba, i64 %i.cd
  %i.cf = getelementptr [120 x i8], ptr %i.bx, i64 %.sroa.06.020.i
  %i.cg = getelementptr i8, ptr %i.cf, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cg, ptr noundef nonnull align 8 dereferenceable(120) %i.ce, i64 120, i1 false), !alias.scope !785
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cj, ptr noundef nonnull align 8 dereferenceable(120) %i.ci, i64 120, i1 false), !alias.scope !785
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.y
  %i.ck = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.ck, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  %.not.i41 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.0117346
  br i1 %.not.i41, label %bb.ab, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example.exit, !prof !28

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #25, !noalias !788
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example.exit: ; preds = %bb.aa
  %i.cl = getelementptr inbounds nuw [120 x i8], ptr %.sroa.0.0.ph124, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph124) ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterB1r_B1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4t_E12closest_keysB1r_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 %i.cl, i64 noundef %i.bw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.cm = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.cm, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !789)
  call void @llvm.experimental.noalias.scope.decl(metadata !790)
  %.not59 = icmp samesign ult i64 %3, %.sroa.16.0117346
  br i1 %.not59, label %bb.ad, label %bb.ac, !prof !27

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
  %i.cr = load i64, ptr %i.as, align 8, !range !25, !alias.scope !791, !noundef !11
  %i.cs = trunc nuw i64 %i.cr to i1
  br i1 %i.cs, label %.lr.ph.split.us.i, label %.lr.ph.split.i, !prof !26

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i54, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.us.i
  %.sroa.5.117.us.i = phi ptr [ %i.dc, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.us.i ], [ %.sroa.5.0.i46, %.lr.ph.i54 ] ; 4 uses
  %.sroa.11.116.us.i = phi i64 [ %i.db, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.us.i ], [ %.sroa.11.0.i45, %.lr.ph.i54 ] ; 2 uses
  %.sroa.19.115.us.i = phi ptr [ %i.cy, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.us.i ], [ %.sroa.19.0.i44, %.lr.ph.i54 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !792)
  call void @llvm.experimental.noalias.scope.decl(metadata !793)
  %.val.i.us.i = load ptr, ptr %6, align 8, !noalias !794, !nonnull !11, !align !12, !noundef !11
  call void @llvm.experimental.noalias.scope.decl(metadata !795)
  call void @llvm.experimental.noalias.scope.decl(metadata !796)
  %.val.i.i.us.i = load ptr, ptr %.val.i.us.i, align 8, !noalias !797 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !798)
  call void @llvm.experimental.noalias.scope.decl(metadata !799)
  %i.ct = load i64, ptr %.sroa.5.117.us.i, align 8, !range !25, !alias.scope !800, !noundef !11
  %i.cu = trunc nuw i64 %i.ct to i1
  br i1 %i.cu, label %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.us.i, label %.split.us.i, !prof !26

_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.us.i: ; preds = %.lr.ph.split.us.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.5.117.us.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !801
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.us.i) ]
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %.val.i.i.us.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.co), !noalias !802
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !801
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %.val.i.i.us.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.cv), !noalias !790
  %i.cw = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a), !noalias !790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !801
  %i.cx = icmp ne i8 %i.cw, -1                    ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %.sroa.19.115.us.i, i64 -120 ; 3 uses
  %.sroa.01.0.i.us.i = select i1 %i.cx, ptr %2, ptr %i.cy
  %i.cz = getelementptr inbounds nuw [120 x i8], ptr %.sroa.01.0.i.us.i, i64 %.sroa.11.116.us.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cz, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.117.us.i, i64 120, i1 false), !alias.scope !803, !noalias !804
  %i.da = zext i1 %i.cx to i64
  %i.db = add i64 %.sroa.11.116.us.i, %i.da       ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.5.117.us.i, i64 120 ; 3 uses
  %i.dd = icmp ult ptr %i.dc, %i.cp
  br i1 %i.dd, label %.lr.ph.split.us.i, label %._crit_edge.split.us.i

._crit_edge.split.us.i:                           ; preds = %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.us.i, %bb.ae
  %.sroa.19.1.lcssa.i48 = phi ptr [ %.sroa.19.0.i44, %bb.ae ], [ %i.cy, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.us.i ]
  %.sroa.11.1.lcssa.i49 = phi i64 [ %.sroa.11.0.i45, %bb.ae ], [ %i.db, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.us.i ] ; 10 uses
  %.sroa.5.1.lcssa.i50 = phi ptr [ %.sroa.5.0.i46, %bb.ae ], [ %i.dc, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.us.i ] ; 2 uses
  %7 = icmp eq i64 %.sroa.0.0.i47, %.sroa.16.0117346
  br i1 %7, label %bb.ag, label %bb.af

.lr.ph.split.i:                                   ; preds = %.lr.ph.i54
  call void @llvm.experimental.noalias.scope.decl(metadata !792)
  call void @llvm.experimental.noalias.scope.decl(metadata !793)
  call void @llvm.experimental.noalias.scope.decl(metadata !795)
  call void @llvm.experimental.noalias.scope.decl(metadata !796)
  call void @llvm.experimental.noalias.scope.decl(metadata !798)
  call void @llvm.experimental.noalias.scope.decl(metadata !799)
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #25, !noalias !805
  unreachable

.split.us.i:                                      ; preds = %.lr.ph.split.us.i
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #25, !noalias !805
  unreachable

bb.af:                                            ; preds = %._crit_edge.split.us.i
  %i.de = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i48, i64 -120
  %i.df = getelementptr inbounds nuw [120 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.df, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.1.lcssa.i50, i64 120, i1 false), !alias.scope !803, !noalias !806
  %i.dg = add i64 %.sroa.11.1.lcssa.i49, 1
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i50, i64 120
  br label %bb.ae

bb.ag:                                            ; preds = %._crit_edge.split.us.i
  %i.di = mul nuw nsw i64 %.sroa.11.1.lcssa.i49, 120
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph124, ptr nonnull align 8 %2, i64 %i.di, i1 false), !alias.scope !803
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.do, ptr noundef nonnull align 8 dereferenceable(120) %i.dn, i64 120, i1 false), !alias.scope !803
  %i.dp = add nuw i64 %.sroa.06.022.i, 2          ; 2 uses
  %i.dq = xor i64 %.sroa.06.022.i, -2
  %i.dr = getelementptr [120 x i8], ptr %i.cn, i64 %i.dq
  %i.ds = getelementptr [120 x i8], ptr %i.dk, i64 %.sroa.06.022.i
  %i.dt = getelementptr i8, ptr %i.ds, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.dt, ptr noundef nonnull align 8 dereferenceable(120) %i.dr, i64 120, i1 false), !alias.scope !803
  %niter468.next.1 = add i64 %niter468, 2         ; 2 uses
  %niter468.ncmp.1 = icmp eq i64 %niter468.next.1, %unroll_iter467
  br i1 %niter468.ncmp.1, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example.exit.unr-lcssa, label %.lr.ph23.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example.exit.unr-lcssa: ; preds = %.lr.ph23.i
  %lcmp.mod465.not = icmp eq i64 %xtraiter464, 0
  br i1 %lcmp.mod465.not, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example.exit, label %.lr.ph23.i.epil.preheader

.lr.ph23.i.epil.preheader:                        ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example.exit.unr-lcssa, %.lr.ph23.i.preheader
  %.sroa.06.022.i.epil.init = phi i64 [ 0, %.lr.ph23.i.preheader ], [ %i.dp, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod466 = trunc i64 %i.dj to i1
  call void @llvm.assume(i1 %lcmp.mod466)
  %i.du = xor i64 %.sroa.06.022.i.epil.init, -1
  %i.dv = getelementptr [120 x i8], ptr %i.cn, i64 %i.du
  %i.dw = getelementptr [120 x i8], ptr %i.dk, i64 %.sroa.06.022.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.dw, ptr noundef nonnull align 8 dereferenceable(120) %i.dv, i64 120, i1 false), !alias.scope !803
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example.exit: ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example.exit.unr-lcssa, %.lr.ph23.i.epil.preheader
  %i.dx = icmp ugt i64 %.sroa.11.1.lcssa.i49, %.sroa.16.0117346
  br i1 %i.dx, label %bb.ah, label %.outer, !prof !28

.outer.thread:                                    ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example.exit
  %i.dy = getelementptr inbounds nuw [120 x i8], ptr %.sroa.0.0.ph124, i64 %.sroa.11.1.lcssa.i49 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.dz = icmp ult i64 %i.dj, 33
  br i1 %i.dz, label %.outer._crit_edge, label %.lr.ph

bb.ah:                                            ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example.exit
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i49, i64 noundef %.sroa.16.0117346, i64 noundef %.sroa.16.0117346, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #25
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB1s_NtNtB1y_6record3KeyEB1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4O_E12closest_keysB4l_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 76861433640456466) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #1 {
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

bb.b:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example.exit
  %i.s = icmp eq i32 %i.t, 0
  br i1 %i.s, label %.lr.ph._crit_edge, label %.lr.ph348

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa115 = phi ptr [ %i.dq, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph124, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example.exit ], [ %i.ee, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.11.1.lcssa.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example.exit ], [ %i.dp, %.outer ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1s_7sort_byNCNvXs4_B1T_INtB1T_11ClosestIterIB1P_NtNtB1V_6record3KeyEB1O_NtNtB1V_9addresses9AddressesNCINvMs1_B1T_INtB1T_13KBucketsTableB1O_B5b_E12closest_keysB4I_E0B1O_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa115, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.j

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0117.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph123, %.lr.ph ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCNvXs4_B1n_INtB1n_11ClosestIterIB1j_NtNtB1p_6record3KeyEB1i_NtNtB1p_9addresses9AddressesNCINvMs1_B1n_INtB1n_13KBucketsTableB1i_B4E_E12closest_keysB4b_E0B1i_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph124, i64 noundef %.sroa.16.0117.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.j

.lr.ph348:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0116347 = phi i32 [ %i.t, %bb.b ], [ %.sroa.025.0.ph122, %.lr.ph ]
  %.sroa.16.0117346 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph123, %.lr.ph ] ; 21 uses
  %i.t = add i32 %.sroa.025.0116347, -1           ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !866)
  call void @llvm.experimental.noalias.scope.decl(metadata !867)
  %i.u = lshr i64 %.sroa.16.0117346, 3            ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.u, 480
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph124, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.u, 840
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph124, i64 %.idx2.i ; 4 uses
  %i.x = icmp samesign ult i64 %.sroa.16.0117346, 64
  br i1 %i.x, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph348
  %i.y = call noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB14_7sort_byNCNvXs4_B1v_INtB1v_11ClosestIterIB1r_NtNtB1x_6record3KeyEB1q_NtNtB1x_9addresses9AddressesNCINvMs1_B1v_INtB1v_13KBucketsTableB1q_B4N_E12closest_keysB4k_E0B1q_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph124, ptr noundef nonnull readonly %i.v, ptr noundef nonnull readonly %i.w, i64 noundef %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.k

bb.d:                                             ; preds = %.lr.ph348
  %.val4.i = load ptr, ptr %6, align 8, !alias.scope !867, !nonnull !11, !align !12, !noundef !11 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !868)
  call void @llvm.experimental.noalias.scope.decl(metadata !869)
  %.val.i.i = load ptr, ptr %.val4.i, align 8, !noalias !870 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !871)
  call void @llvm.experimental.noalias.scope.decl(metadata !872)
  %i.z = load i64, ptr %.sroa.0.0.ph124, align 8, !range !25, !alias.scope !873, !noundef !11
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %bb.e, label %bb.f, !prof !26

bb.e:                                             ; preds = %bb.d
  %i.ab = load i64, ptr %i.v, align 8, !range !25, !alias.scope !874, !noundef !11
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %bb.h, label %bb.g, !prof !26

bb.f:                                             ; preds = %bb.d
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #25, !noalias !875
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #25, !noalias !875
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !875
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 32 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.o), !noalias !876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !875
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ad), !noalias !867
  %i.af = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k), !noalias !867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !875
  %i.ag = icmp eq i8 %i.af, -1                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !877)
  %.val.i5.i = load ptr, ptr %.val4.i, align 8, !noalias !878 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !879)
  %i.ah = load i64, ptr %i.w, align 8, !range !25, !alias.scope !880, !noundef !11
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit6.i, label %bb.i, !prof !26

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #25, !noalias !881
  unreachable

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit6.i: ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !882
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i5.i) ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i5.i, i64 32 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.o), !noalias !883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !882
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.aj), !noalias !867
  %i.al = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i), !noalias !867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !882
  %i.am = icmp eq i8 %i.al, -1
  %i.an = xor i1 %i.ag, %i.am
  br i1 %i.an, label %bb.k, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit8.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit8.i: ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit6.i
  %.val.i7.i = load ptr, ptr %.val4.i, align 8, !noalias !884, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !885
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i7.i, i64 32 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ad), !noalias !886
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !885
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.aj), !noalias !867
  %i.ap = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g), !noalias !867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !885
  %i.aq = icmp eq i8 %i.ap, -1
  %i.ar = xor i1 %i.ag, %i.aq
  %..i.i = select i1 %i.ar, ptr %i.w, ptr %i.v
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.k:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit8.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit6.i, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %i.y, %bb.c ], [ %.sroa.0.0.ph124, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit6.i ], [ %..i.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit8.i ]
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
  %.val = load ptr, ptr %6, align 8, !nonnull !11, !align !12, !noundef !11
  call void @llvm.experimental.noalias.scope.decl(metadata !887)
  call void @llvm.experimental.noalias.scope.decl(metadata !888)
  %.val.i = load ptr, ptr %.val, align 8, !noalias !889 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !890)
  call void @llvm.experimental.noalias.scope.decl(metadata !891)
  %i.aw = load i64, ptr %.sroa.028.0.ph121, align 8, !range !25, !alias.scope !892, !noundef !11
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %bb.m, label %bb.n, !prof !26

bb.m:                                             ; preds = %bb.l
  %i.ay = load i64, ptr %i.av, align 8, !range !25, !alias.scope !893, !noundef !11
  %i.az = trunc nuw i64 %i.ay to i1
  br i1 %i.az, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit, label %bb.o, !prof !26

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #25, !noalias !894
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #25, !noalias !894
  unreachable

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit: ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !894
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.val.i, i64 32 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.bb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.q), !noalias !893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !894
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.bb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ba)
  %i.bc = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !894
  %i.bd = icmp eq i8 %i.bc, -1
  br i1 %i.bd, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.k, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit
  %.val37 = load ptr, ptr %6, align 8             ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !895)
  call void @llvm.experimental.noalias.scope.decl(metadata !896)
  %.not58 = icmp samesign ult i64 %3, %.sroa.16.0117346
  br i1 %.not58, label %bb.r, label %bb.q, !prof !27

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

._crit_edge.i:                                    ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i, %bb.s
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.s ], [ %i.br, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.s ], [ %i.bu, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.s ], [ %i.bv, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i ] ; 2 uses
  %i.bi = icmp eq i64 %.sroa.0.0.i39, %.sroa.16.0117346
  br i1 %i.bi, label %bb.y, label %bb.x

bb.t:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i, %.lr.ph.i
  %.sroa.5.117.i = phi ptr [ %.sroa.5.0.i, %.lr.ph.i ], [ %i.bv, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i ] ; 4 uses
  %.sroa.11.116.i = phi i64 [ %.sroa.11.0.i, %.lr.ph.i ], [ %i.bu, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i ] ; 2 uses
  %.sroa.19.115.i = phi ptr [ %.sroa.19.0.i, %.lr.ph.i ], [ %i.br, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !897)
  call void @llvm.experimental.noalias.scope.decl(metadata !898)
  %.val.i.i40 = load ptr, ptr %.val37, align 8, !noalias !899 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !900)
  call void @llvm.experimental.noalias.scope.decl(metadata !901)
  %i.bj = load i64, ptr %.sroa.5.117.i, align 8, !range !25, !alias.scope !902, !noundef !11
  %i.bk = trunc nuw i64 %i.bj to i1
  br i1 %i.bk, label %bb.u, label %bb.v, !prof !26

bb.u:                                             ; preds = %bb.t
  %i.bl = load i64, ptr %i.av, align 8, !range !25, !alias.scope !903, !noundef !11
  %i.bm = trunc nuw i64 %i.bl to i1
  br i1 %i.bm, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i, label %bb.w, !prof !26

bb.v:                                             ; preds = %bb.t
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #25, !noalias !904
  unreachable

bb.w:                                             ; preds = %bb.u
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #25, !noalias !904
  unreachable

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i: ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.5.117.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !905
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i40) ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.i.i40, i64 32 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.bo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.bn), !noalias !906
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !905
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.bo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.bf), !noalias !896
  %i.bp = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c), !noalias !896
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !905
  %i.bq = icmp eq i8 %i.bp, -1                    ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %.sroa.19.115.i, i64 -120 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.bq, ptr %2, ptr %i.br
  %i.bs = getelementptr inbounds nuw [120 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.116.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.bs, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.117.i, i64 120, i1 false), !alias.scope !907, !noalias !908
  %i.bt = zext i1 %i.bq to i64
  %i.bu = add i64 %.sroa.11.116.i, %i.bt          ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.5.117.i, i64 120 ; 3 uses
  %i.bw = icmp ult ptr %i.bv, %i.bg
  br i1 %i.bw, label %bb.t, label %._crit_edge.i

bb.x:                                             ; preds = %._crit_edge.i
  %i.bx = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -120 ; 2 uses
  %i.by = getelementptr inbounds nuw [120 x i8], ptr %i.bx, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.by, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.1.lcssa.i, i64 120, i1 false), !alias.scope !907, !noalias !909
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 120
  br label %bb.s

bb.y:                                             ; preds = %._crit_edge.i
  %i.ca = mul nuw nsw i64 %.sroa.11.1.lcssa.i, 120
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph124, ptr nonnull align 8 %2, i64 %i.ca, i1 false), !alias.scope !907
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cg, ptr noundef nonnull align 8 dereferenceable(120) %i.cf, i64 120, i1 false), !alias.scope !907
  %i.ch = add nuw i64 %.sroa.06.020.i, 2          ; 2 uses
  %i.ci = xor i64 %.sroa.06.020.i, -2
  %i.cj = getelementptr [120 x i8], ptr %i.be, i64 %i.ci
  %i.ck = getelementptr [120 x i8], ptr %i.cc, i64 %.sroa.06.020.i
  %i.cl = getelementptr i8, ptr %i.ck, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cl, ptr noundef nonnull align 8 dereferenceable(120) %i.cj, i64 120, i1 false), !alias.scope !907
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.co, ptr noundef nonnull align 8 dereferenceable(120) %i.cn, i64 120, i1 false), !alias.scope !907
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.y
  %i.cp = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.cp, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  %.not.i41 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.0117346
  br i1 %.not.i41, label %bb.ab, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example.exit, !prof !28

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #25, !noalias !910
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example.exit: ; preds = %bb.aa
  %i.cq = getelementptr inbounds nuw [120 x i8], ptr %.sroa.0.0.ph124, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph124) ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB1s_NtNtB1y_6record3KeyEB1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4O_E12closest_keysB4l_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 %i.cq, i64 noundef %i.cb, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.cr = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.cr, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !911)
  call void @llvm.experimental.noalias.scope.decl(metadata !912)
  %.not59 = icmp samesign ult i64 %3, %.sroa.16.0117346
  br i1 %.not59, label %bb.ad, label %bb.ac, !prof !27

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
  %i.cw = load i64, ptr %i.av, align 8, !range !25, !alias.scope !913, !noundef !11
  %i.cx = trunc nuw i64 %i.cw to i1
  br i1 %i.cx, label %.lr.ph.split.us.i, label %.lr.ph.split.i, !prof !26

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i54, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.us.i
  %.sroa.5.117.us.i = phi ptr [ %i.di, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.us.i ], [ %.sroa.5.0.i46, %.lr.ph.i54 ] ; 4 uses
  %.sroa.11.116.us.i = phi i64 [ %i.dh, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.us.i ], [ %.sroa.11.0.i45, %.lr.ph.i54 ] ; 2 uses
  %.sroa.19.115.us.i = phi ptr [ %i.de, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.us.i ], [ %.sroa.19.0.i44, %.lr.ph.i54 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !914)
  call void @llvm.experimental.noalias.scope.decl(metadata !915)
  %.val.i.us.i = load ptr, ptr %6, align 8, !noalias !916, !nonnull !11, !align !12, !noundef !11
  call void @llvm.experimental.noalias.scope.decl(metadata !917)
  call void @llvm.experimental.noalias.scope.decl(metadata !918)
  %.val.i.i.us.i = load ptr, ptr %.val.i.us.i, align 8, !noalias !919 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !920)
  call void @llvm.experimental.noalias.scope.decl(metadata !921)
  %i.cy = load i64, ptr %.sroa.5.117.us.i, align 8, !range !25, !alias.scope !922, !noundef !11
  %i.cz = trunc nuw i64 %i.cy to i1
  br i1 %i.cz, label %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.us.i, label %.split.us.i, !prof !26

_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.us.i: ; preds = %.lr.ph.split.us.i
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.5.117.us.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !923
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.us.i) ]
  %i.db = getelementptr inbounds nuw i8, ptr %.val.i.i.us.i, i64 32 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.db, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ct), !noalias !924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !923
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.db, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.da), !noalias !912
  %i.dc = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a), !noalias !912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !923
  %i.dd = icmp ne i8 %i.dc, -1                    ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.19.115.us.i, i64 -120 ; 3 uses
  %.sroa.01.0.i.us.i = select i1 %i.dd, ptr %2, ptr %i.de
  %i.df = getelementptr inbounds nuw [120 x i8], ptr %.sroa.01.0.i.us.i, i64 %.sroa.11.116.us.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.df, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.117.us.i, i64 120, i1 false), !alias.scope !925, !noalias !926
  %i.dg = zext i1 %i.dd to i64
  %i.dh = add i64 %.sroa.11.116.us.i, %i.dg       ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.5.117.us.i, i64 120 ; 3 uses
  %i.dj = icmp ult ptr %i.di, %i.cu
  br i1 %i.dj, label %.lr.ph.split.us.i, label %._crit_edge.split.us.i

._crit_edge.split.us.i:                           ; preds = %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.us.i, %bb.ae
  %.sroa.19.1.lcssa.i48 = phi ptr [ %.sroa.19.0.i44, %bb.ae ], [ %i.de, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.us.i ]
  %.sroa.11.1.lcssa.i49 = phi i64 [ %.sroa.11.0.i45, %bb.ae ], [ %i.dh, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.us.i ] ; 10 uses
  %.sroa.5.1.lcssa.i50 = phi ptr [ %.sroa.5.0.i46, %bb.ae ], [ %i.di, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.us.i ] ; 2 uses
  %7 = icmp eq i64 %.sroa.0.0.i47, %.sroa.16.0117346
  br i1 %7, label %bb.ag, label %bb.af

.lr.ph.split.i:                                   ; preds = %.lr.ph.i54
  call void @llvm.experimental.noalias.scope.decl(metadata !914)
  call void @llvm.experimental.noalias.scope.decl(metadata !915)
  call void @llvm.experimental.noalias.scope.decl(metadata !917)
  call void @llvm.experimental.noalias.scope.decl(metadata !918)
  call void @llvm.experimental.noalias.scope.decl(metadata !920)
  call void @llvm.experimental.noalias.scope.decl(metadata !921)
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #25, !noalias !927
  unreachable

.split.us.i:                                      ; preds = %.lr.ph.split.us.i
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #25, !noalias !927
  unreachable

bb.af:                                            ; preds = %._crit_edge.split.us.i
  %i.dk = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i48, i64 -120
  %i.dl = getelementptr inbounds nuw [120 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.dl, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.1.lcssa.i50, i64 120, i1 false), !alias.scope !925, !noalias !928
  %i.dm = add i64 %.sroa.11.1.lcssa.i49, 1
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i50, i64 120
  br label %bb.ae

bb.ag:                                            ; preds = %._crit_edge.split.us.i
  %i.do = mul nuw nsw i64 %.sroa.11.1.lcssa.i49, 120
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph124, ptr nonnull align 8 %2, i64 %i.do, i1 false), !alias.scope !925
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.du, ptr noundef nonnull align 8 dereferenceable(120) %i.dt, i64 120, i1 false), !alias.scope !925
  %i.dv = add nuw i64 %.sroa.06.022.i, 2          ; 2 uses
  %i.dw = xor i64 %.sroa.06.022.i, -2
  %i.dx = getelementptr [120 x i8], ptr %i.cs, i64 %i.dw
  %i.dy = getelementptr [120 x i8], ptr %i.dq, i64 %.sroa.06.022.i
  %i.dz = getelementptr i8, ptr %i.dy, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.dz, ptr noundef nonnull align 8 dereferenceable(120) %i.dx, i64 120, i1 false), !alias.scope !925
  %niter468.next.1 = add i64 %niter468, 2         ; 2 uses
  %niter468.ncmp.1 = icmp eq i64 %niter468.next.1, %unroll_iter467
  br i1 %niter468.ncmp.1, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example.exit.unr-lcssa, label %.lr.ph23.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example.exit.unr-lcssa: ; preds = %.lr.ph23.i
  %lcmp.mod465.not = icmp eq i64 %xtraiter464, 0
  br i1 %lcmp.mod465.not, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example.exit, label %.lr.ph23.i.epil.preheader

.lr.ph23.i.epil.preheader:                        ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example.exit.unr-lcssa, %.lr.ph23.i.preheader
  %.sroa.06.022.i.epil.init = phi i64 [ 0, %.lr.ph23.i.preheader ], [ %i.dv, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod466 = trunc i64 %i.dp to i1
  call void @llvm.assume(i1 %lcmp.mod466)
  %i.ea = xor i64 %.sroa.06.022.i.epil.init, -1
  %i.eb = getelementptr [120 x i8], ptr %i.cs, i64 %i.ea
  %i.ec = getelementptr [120 x i8], ptr %i.dq, i64 %.sroa.06.022.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ec, ptr noundef nonnull align 8 dereferenceable(120) %i.eb, i64 120, i1 false), !alias.scope !925
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example.exit: ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example.exit.unr-lcssa, %.lr.ph23.i.epil.preheader
  %i.ed = icmp ugt i64 %.sroa.11.1.lcssa.i49, %.sroa.16.0117346
  br i1 %i.ed, label %bb.ah, label %.outer, !prof !28

.outer.thread:                                    ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example.exit
  %i.ee = getelementptr inbounds nuw [120 x i8], ptr %.sroa.0.0.ph124, i64 %.sroa.11.1.lcssa.i49 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ef = icmp ult i64 %i.dp, 33
  br i1 %i.ef, label %.outer._crit_edge, label %.lr.ph

bb.ah:                                            ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example.exit
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i49, i64 noundef %.sroa.16.0117346, i64 noundef %.sroa.16.0117346, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #25
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1w_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1y_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB2n_INtNtB44_3vec3VechEEB2m_B3s_NCINvMs1_B1w_INtB1w_13KBucketsTableB2m_B3s_E7closestB5d_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 28120036697727976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 28120036697727976) %3, i32 noundef %4, ptr noundef align 8 %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #1 {
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
  %.sroa.0.0.ph148 = phi ptr [ %i.ec, %.outer ], [ %0, %bb.a ] ; 23 uses
  %.sroa.16.0.ph147 = phi i64 [ %i.dn, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph146 = phi i32 [ %i.r, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph145 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 3 uses
  %i.n = ptrtoint ptr %.sroa.0.0.ph148 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph145, null
  %i.o = icmp eq i32 %.sroa.025.0.ph146, 0
  br i1 %i.o, label %.lr.ph._crit_edge, label %.lr.ph413

bb.b:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example.exit
  %i.p = icmp eq i32 %i.r, 0
  br i1 %i.p, label %.lr.ph._crit_edge, label %.lr.ph413

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example.exit, %bb.a
  %.sroa.0.0.ph.lcssa139 = phi ptr [ %.sroa.0.0.ph148, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example.exit ], [ %0, %bb.a ], [ %i.ec, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example.exit ], [ %1, %bb.a ], [ %i.dn, %.outer ] ; 2 uses
  %i.q = icmp samesign ugt i64 %.sroa.16.0.lcssa, 1
  br i1 %i.q, label %bb.c, label %_RINvXNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtNtBb_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1n_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1p_9addresses9AddressesEENtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCNvXs4_B1n_INtB1n_11ClosestIterIB2e_INtNtB4B_3vec3VechEEB2d_B3j_NCINvMs1_B1n_INtB1n_13KBucketsTableB2d_B3j_E7closestB5J_E0B1i_ENtNtNtNtBb_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example.exit

bb.c:                                             ; preds = %.outer._crit_edge
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1N_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1P_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1m_7sort_byNCNvXs4_B1N_INtB1N_11ClosestIterIB2E_INtNtB4l_3vec3VechEEB2D_B3J_NCINvMs1_B1N_INtB1N_13KBucketsTableB2D_B3J_E7closestB5u_E0B1I_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa139, i64 noundef range(i64 0, 17) %.sroa.16.0.lcssa, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %_RINvXNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtNtBb_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1n_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1p_9addresses9AddressesEENtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCNvXs4_B1n_INtB1n_11ClosestIterIB2e_INtNtB4B_3vec3VechEEB2d_B3j_NCINvMs1_B1n_INtB1n_13KBucketsTableB2d_B3j_E7closestB5J_E0B1i_ENtNtNtNtBb_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example.exit

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0141.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph147, %.lr.ph ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1n_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1p_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCNvXs4_B1n_INtB1n_11ClosestIterIB2e_INtNtB3V_3vec3VechEEB2d_B3j_NCINvMs1_B1n_INtB1n_13KBucketsTableB2d_B3j_E7closestB53_E0B1i_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph148, i64 noundef %.sroa.16.0141.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %_RINvXNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtNtBb_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1n_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1p_9addresses9AddressesEENtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCNvXs4_B1n_INtB1n_11ClosestIterIB2e_INtNtB4B_3vec3VechEEB2d_B3j_NCINvMs1_B1n_INtB1n_13KBucketsTableB2d_B3j_E7closestB5J_E0B1i_ENtNtNtNtBb_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example.exit

.lr.ph413:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0140412 = phi i32 [ %i.r, %bb.b ], [ %.sroa.025.0.ph146, %.lr.ph ]
  %.sroa.16.0141411 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph147, %.lr.ph ] ; 21 uses
  %i.r = add i32 %.sroa.025.0140412, -1           ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !948)
  %i.s = lshr i64 %.sroa.16.0141411, 3            ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.s, 1312
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph148, i64 %.idx.i ; 6 uses
  %.idx2.i = mul nuw nsw i64 %i.s, 2296
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph148, i64 %.idx2.i ; 6 uses
  %i.v = icmp samesign ult i64 %.sroa.16.0141411, 64
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph413
  %i.w = call noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1v_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1x_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB14_7sort_byNCNvXs4_B1v_INtB1v_11ClosestIterIB2m_INtNtB43_3vec3VechEEB2l_B3r_NCINvMs1_B1v_INtB1v_13KBucketsTableB2l_B3r_E7closestB5c_E0B1q_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noundef nonnull align 8 %.sroa.0.0.ph148, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, i64 noundef %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.p

bb.e:                                             ; preds = %.lr.ph413
  %.val4.i = load ptr, ptr %6, align 8, !alias.scope !948, !nonnull !11, !align !12, !noundef !11 ; 3 uses
  %.val.i.i = load ptr, ptr %.val4.i, align 8, !noalias !948 ; 2 uses
  %i.x = load i64, ptr %.sroa.0.0.ph148, align 8, !range !14, !noalias !948, !noundef !11
  %.not.i.i.i = icmp eq i64 %i.x, 2
  br i1 %.not.i.i.i, label %bb.g, label %bb.f, !prof !28

bb.f:                                             ; preds = %bb.e
  %i.y = load i64, ptr %i.t, align 8, !range !14, !noalias !948, !noundef !11
  %.not2.i.i.i = icmp eq i64 %i.y, 2
  br i1 %.not2.i.i.i, label %bb.h, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i, !prof !28

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #25, !noalias !948
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #25, !noalias !948
  unreachable

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !948
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24 ; 2 uses
  %i.aa = call noundef nonnull ptr @_RNvXs_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entryINtB4_9EntryViewINtNtB6_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB8_9addresses9AddressesEINtNtCskKLDkoKarTP_4core7convert5AsRefNtB15_8KeyBytesE6as_refCs4jvuubEK18G_35distributed_key_value_store_example(ptr noundef nonnull align 8 %.sroa.0.0.ph148), !noalias !948
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.aa), !noalias !948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !948
  %i.ab = call noundef nonnull ptr @_RNvXs_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entryINtB4_9EntryViewINtNtB6_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB8_9addresses9AddressesEINtNtCskKLDkoKarTP_4core7convert5AsRefNtB15_8KeyBytesE6as_refCs4jvuubEK18G_35distributed_key_value_store_example(ptr noundef nonnull align 8 %i.t), !noalias !948
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ab), !noalias !948
  %i.ac = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k), !noalias !948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !948
  %i.ad = icmp eq i8 %i.ac, -1                    ; 2 uses
  %.val.i5.i = load ptr, ptr %.val4.i, align 8, !noalias !948 ; 2 uses
  %i.ae = load i64, ptr %.sroa.0.0.ph148, align 8, !range !14, !noalias !948, !noundef !11
  %.not.i.i6.i = icmp eq i64 %i.ae, 2
  br i1 %.not.i.i6.i, label %bb.j, label %bb.i, !prof !28

bb.i:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i
  %i.af = load i64, ptr %i.u, align 8, !range !14, !noalias !948, !noundef !11
  %.not2.i.i7.i = icmp eq i64 %i.af, 2
  br i1 %.not2.i.i7.i, label %bb.k, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit8.i, !prof !28

bb.j:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit.i
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #25, !noalias !948
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #25, !noalias !948
  unreachable

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit8.i: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !948
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i5.i) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i5.i, i64 24 ; 2 uses
  %i.ah = call noundef nonnull ptr @_RNvXs_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entryINtB4_9EntryViewINtNtB6_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB8_9addresses9AddressesEINtNtCskKLDkoKarTP_4core7convert5AsRefNtB15_8KeyBytesE6as_refCs4jvuubEK18G_35distributed_key_value_store_example(ptr noundef nonnull align 8 %.sroa.0.0.ph148), !noalias !948
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ah), !noalias !948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !948
  %i.ai = call noundef nonnull ptr @_RNvXs_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entryINtB4_9EntryViewINtNtB6_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB8_9addresses9AddressesEINtNtCskKLDkoKarTP_4core7convert5AsRefNtB15_8KeyBytesE6as_refCs4jvuubEK18G_35distributed_key_value_store_example(ptr noundef nonnull align 8 %i.u), !noalias !948
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ai), !noalias !948
  %i.aj = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i), !noalias !948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !948
  %i.ak = icmp eq i8 %i.aj, -1
  %i.al = xor i1 %i.ad, %i.ak
  br i1 %i.al, label %bb.p, label %bb.l

bb.l:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit8.i
  %.val.i9.i = load ptr, ptr %.val4.i, align 8, !noalias !948 ; 2 uses
  %i.am = load i64, ptr %i.t, align 8, !range !14, !noalias !948, !noundef !11
  %.not.i.i10.i = icmp eq i64 %i.am, 2
  br i1 %.not.i.i10.i, label %bb.n, label %bb.m, !prof !28

bb.m:                                             ; preds = %bb.l
  %i.an = load i64, ptr %i.u, align 8, !range !14, !noalias !948, !noundef !11
  %.not2.i.i11.i = icmp eq i64 %i.an, 2
  br i1 %.not2.i.i11.i, label %bb.o, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit12.i, !prof !28

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #25, !noalias !948
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #25, !noalias !948
  unreachable

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit12.i: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !948
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i9.i) ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i9.i, i64 24 ; 2 uses
  %i.ap = call noundef nonnull ptr @_RNvXs_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entryINtB4_9EntryViewINtNtB6_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB8_9addresses9AddressesEINtNtCskKLDkoKarTP_4core7convert5AsRefNtB15_8KeyBytesE6as_refCs4jvuubEK18G_35distributed_key_value_store_example(ptr noundef nonnull align 8 %i.t), !noalias !948
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ap), !noalias !948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !948
  %i.aq = call noundef nonnull ptr @_RNvXs_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entryINtB4_9EntryViewINtNtB6_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB8_9addresses9AddressesEINtNtCskKLDkoKarTP_4core7convert5AsRefNtB15_8KeyBytesE6as_refCs4jvuubEK18G_35distributed_key_value_store_example(ptr noundef nonnull align 8 %i.u), !noalias !948
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECs4jvuubEK18G_35distributed_key_value_store_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.aq), !noalias !948
  %i.ar = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g), !noalias !948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !948
  %i.as = icmp eq i8 %i.ar, -1
  %i.at = xor i1 %i.ad, %i.as
  %..i.i = select i1 %i.at, ptr %i.u, ptr %i.t
  br label %bb.p

_RINvXNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtNtBb_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1n_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1p_9addresses9AddressesEENtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCNvXs4_B1n_INtB1n_11ClosestIterIB2e_INtNtB4B_3vec3VechEEB2d_B3j_NCINvMs1_B1n_INtB1n_13KBucketsTableB2d_B3j_E7closestB5J_E0B1i_ENtNtNtNtBb_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example.exit: ; preds = %bb.ao, %bb.c, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.p:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit12.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit8.i, %bb.d
  %.sroa.0.0.i.sink.i = phi ptr [ %i.w, %bb.d ], [ %.sroa.0.0.ph148, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit8.i ], [ %..i.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit12.i ]
  %i.au = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.av = sub nuw i64 %i.au, %i.n                 ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.av, 328        ; 3 uses
  %i.aw = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.0141411
  call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph148, i64 %i.av ; 8 uses
  br i1 %.not, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val = load ptr, ptr %6, align 8, !nonnull !11, !align !12, !noundef !11
  %.val.i = load ptr, ptr %.val, align 8          ; 2 uses
  %i.ay = load i64, ptr %.sroa.028.0.ph145, align 8, !range !14, !noundef !11
  %.not.i.i = icmp eq i64 %i.ay, 2
  br i1 %.not.i.i, label %bb.s, label %bb.r, !prof !28

bb.r:                                             ; preds = %bb.q
  %i.az = load i64, ptr %i.ax, align 8, !range !14, !noundef !11
  %.not2.i.i = icmp eq i64 %i.az, 2
  br i1 %.not2.i.i, label %bb.t, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example.exit, !prof !28

bb.s:                                             ; preds = %bb.q
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #25
  unreachable

bb.t:                                             ; preds = %bb.r
end_hunk_0
begin_hunk_1_@llvm.memmove.p0.p0.i64
!601 = !{!572}
!602 = !{!572, !570, !568}
!603 = !{!574}
!604 = !{!576}
!605 = !{!578}
!606 = !{!578, !576, !574}
!607 = !{!580}
!608 = !{!582}
!609 = !{!584}
!610 = !{!584, !582, !580}
!611 = !{!586}
!612 = !{!588}
!613 = !{!590}
!614 = !{!590, !588, !586}
!615 = !{!592}
!616 = !{!594}
!617 = !{!596}
!618 = !{!598}
!619 = !{!598, !596, !594, !592}
!620 = distinct !{!620, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record6RecordECs4jvuubEK18G_35distributed_key_value_store_example"}
!621 = distinct !{!621, !620, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record6RecordECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!622 = distinct !{!622, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECs4jvuubEK18G_35distributed_key_value_store_example"}
!623 = distinct !{!623, !622, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!624 = distinct !{!624, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs4jvuubEK18G_35distributed_key_value_store_example"}
!625 = distinct !{!625, !624, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!626 = distinct !{!626, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!627 = distinct !{!627, !626, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!628 = !{!621}
!629 = !{!623}
!630 = !{!625}
!631 = !{!627}
!632 = !{!627, !625, !623, !621}
!633 = distinct !{!633, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECs4jvuubEK18G_35distributed_key_value_store_example"}
!634 = distinct !{!634, !633, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!635 = distinct !{!635, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs4jvuubEK18G_35distributed_key_value_store_example"}
!636 = distinct !{!636, !635, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!637 = distinct !{!637, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!638 = distinct !{!638, !637, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!639 = distinct !{!639, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEEECs4jvuubEK18G_35distributed_key_value_store_example"}
!640 = distinct !{!640, !639, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEEECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!641 = distinct !{!641, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECs4jvuubEK18G_35distributed_key_value_store_example"}
!642 = distinct !{!642, !641, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!643 = distinct !{!643, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs4jvuubEK18G_35distributed_key_value_store_example"}
!644 = distinct !{!644, !643, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!645 = distinct !{!645, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!646 = distinct !{!646, !645, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!647 = distinct !{!647, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECs4jvuubEK18G_35distributed_key_value_store_example"}
!648 = distinct !{!648, !647, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!649 = distinct !{!649, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs4jvuubEK18G_35distributed_key_value_store_example"}
!650 = distinct !{!650, !649, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!651 = distinct !{!651, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!652 = distinct !{!652, !651, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!653 = distinct !{!653, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record6RecordECs4jvuubEK18G_35distributed_key_value_store_example"}
!654 = distinct !{!654, !653, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record6RecordECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!655 = distinct !{!655, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECs4jvuubEK18G_35distributed_key_value_store_example"}
!656 = distinct !{!656, !655, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!657 = distinct !{!657, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs4jvuubEK18G_35distributed_key_value_store_example"}
!658 = distinct !{!658, !657, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!659 = distinct !{!659, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!660 = distinct !{!660, !659, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!661 = distinct !{!661, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad9behaviour16AddProviderPhaseECs4jvuubEK18G_35distributed_key_value_store_example"}
!662 = distinct !{!662, !661, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad9behaviour16AddProviderPhaseECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!663 = distinct !{!663, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad9behaviour14PutRecordPhaseECs4jvuubEK18G_35distributed_key_value_store_example"}
!664 = distinct !{!664, !663, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad9behaviour14PutRecordPhaseECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!665 = !{!634}
!666 = !{!636}
!667 = !{!638}
!668 = !{!638, !636, !634}
!669 = !{!640}
!670 = !{!642}
!671 = !{!644}
!672 = !{!646}
!673 = !{!646, !644, !642}
!674 = !{!648}
!675 = !{!650}
!676 = !{!652}
!677 = !{!652, !650, !648}
!678 = !{!654}
!679 = !{!656}
!680 = !{!658}
!681 = !{!660}
!682 = !{!660, !658, !656, !654}
!683 = !{!662}
!684 = !{!664}
!685 = distinct !{!685, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterB1r_B1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4t_E12closest_keysB1r_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example"}
!686 = distinct !{!686, !685, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterB1r_B1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4t_E12closest_keysB1r_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!687 = distinct !{!687, !685, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterB1r_B1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4t_E12closest_keysB1r_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!688 = distinct !{!688, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!689 = distinct !{!689, !688, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!690 = distinct !{!690, !688, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!691 = distinct !{!691, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!692 = distinct !{!692, !691, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!693 = distinct !{!693, !691, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!694 = distinct !{!694, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!695 = distinct !{!695, !694, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!696 = distinct !{!696, !694, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!697 = distinct !{!697, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!698 = distinct !{!698, !697, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!699 = distinct !{!699, !697, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!700 = distinct !{!700, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!701 = distinct !{!701, !700, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!702 = distinct !{!702, !700, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!703 = distinct !{!703, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!704 = distinct !{!704, !703, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!705 = distinct !{!705, !703, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!706 = distinct !{!706, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!707 = distinct !{!707, !706, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!708 = distinct !{!708, !706, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!709 = distinct !{!709, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!710 = distinct !{!710, !709, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!711 = distinct !{!711, !709, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!712 = distinct !{!712, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4B_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example"}
!713 = distinct !{!713, !712, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4B_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!714 = distinct !{!714, !712, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4B_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!715 = distinct !{!715, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!716 = distinct !{!716, !715, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!717 = distinct !{!717, !715, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!718 = distinct !{!718, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!719 = distinct !{!719, !718, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!720 = distinct !{!720, !718, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!721 = distinct !{!721, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example"}
!722 = distinct !{!722, !721, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!723 = distinct !{!723, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example"}
!724 = distinct !{!724, !723, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!725 = distinct !{!725, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example"}
!726 = distinct !{!726, !725, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!727 = distinct !{!727, !725, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!728 = distinct !{!728, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example"}
!729 = distinct !{!729, !728, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!730 = distinct !{!730, !728, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!731 = distinct !{!731, i1 true, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!732 = distinct !{!732, !731, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!733 = distinct !{!733, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!734 = distinct !{!734, !733, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!735 = distinct !{!735, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!736 = distinct !{!736, !735, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!737 = distinct !{!737, !731, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!738 = distinct !{!738, !733, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!739 = distinct !{!739, !735, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!740 = distinct !{!740, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example"}
!741 = distinct !{!741, !740, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!742 = distinct !{!742, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example"}
!743 = distinct !{!743, !742, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!744 = !{!686}
!745 = !{!687}
!746 = !{!689}
!747 = !{!690}
!748 = !{!689, !690, !686, !687}
!749 = !{!692}
!750 = !{!693}
!751 = !{!692, !689, !686}
!752 = !{!693, !690, !686}
!753 = !{!692, !693, !689, !690, !686, !687}
!754 = !{!693, !690, !687}
!755 = !{!695}
!756 = !{!696, !695, !687}
!757 = !{!698}
!758 = !{!698, !695, !686}
!759 = !{!699, !698, !696, !695, !687}
!760 = !{!699, !698, !696, !695, !686, !687}
!761 = !{!698, !695, !687}
!762 = !{!702, !701, !687}
!763 = !{!705, !704, !702, !701, !686, !687}
!764 = !{!704, !701, !687}
!765 = !{!707}
!766 = !{!708}
!767 = !{!707, !708}
!768 = !{!710}
!769 = !{!711}
!770 = !{!710, !707}
!771 = !{!711, !708}
!772 = !{!710, !711, !707, !708}
!773 = !{!713}
!774 = !{!714}
!775 = !{!716}
!776 = !{!717}
!777 = !{!716, !717, !713, !714}
!778 = !{!719}
!779 = !{!720}
!780 = !{!719, !716, !713}
!781 = !{!720, !717, !713}
!782 = !{!719, !720, !716, !717, !714}
!783 = !{!719, !720, !716, !717, !713, !714}
!784 = !{!720, !717, !714}
!785 = !{!713, !714}
!786 = !{!722}
!787 = !{!724}
!788 = !{!727, !726}
!789 = !{!729}
!790 = !{!730}
!791 = !{!736, !734, !732, !729}
!792 = !{!737}
!793 = !{!732}
!794 = !{!737, !732, !729, !730}
!795 = !{!734}
!796 = !{!738}
!797 = !{!734, !738, !737, !732, !730}
!798 = !{!736}
!799 = !{!739}
!800 = !{!739, !738, !737, !729}
!801 = !{!736, !739, !734, !738, !737, !732, !729, !730}
!802 = !{!739, !738, !737, !730}
!803 = !{!729, !730}
!804 = !{!741}
!805 = !{!736, !739, !734, !738, !737, !732, !730}
!806 = !{!743}
!807 = distinct !{!807, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB1s_NtNtB1y_6record3KeyEB1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4O_E12closest_keysB4l_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example"}
!808 = distinct !{!808, !807, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB1s_NtNtB1y_6record3KeyEB1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4O_E12closest_keysB4l_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!809 = distinct !{!809, !807, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB1s_NtNtB1y_6record3KeyEB1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4O_E12closest_keysB4l_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!810 = distinct !{!810, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!811 = distinct !{!811, !810, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!812 = distinct !{!812, !810, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!813 = distinct !{!813, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!814 = distinct !{!814, !813, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!815 = distinct !{!815, !813, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!816 = distinct !{!816, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!817 = distinct !{!817, !816, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!818 = distinct !{!818, !816, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!819 = distinct !{!819, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!820 = distinct !{!820, !819, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!821 = distinct !{!821, !819, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!822 = distinct !{!822, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!823 = distinct !{!823, !822, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!824 = distinct !{!824, !822, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!825 = distinct !{!825, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!826 = distinct !{!826, !825, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!827 = distinct !{!827, !825, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!828 = distinct !{!828, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!829 = distinct !{!829, !828, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!830 = distinct !{!830, !828, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!831 = distinct !{!831, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!832 = distinct !{!832, !831, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!833 = distinct !{!833, !831, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!834 = distinct !{!834, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4W_E12closest_keysB4t_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example"}
!835 = distinct !{!835, !834, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4W_E12closest_keysB4t_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!836 = distinct !{!836, !834, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4W_E12closest_keysB4t_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!837 = distinct !{!837, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!838 = distinct !{!838, !837, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!839 = distinct !{!839, !837, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!840 = distinct !{!840, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!841 = distinct !{!841, !840, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!842 = distinct !{!842, !840, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!843 = distinct !{!843, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example"}
!844 = distinct !{!844, !843, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!845 = distinct !{!845, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example"}
!846 = distinct !{!846, !845, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!847 = distinct !{!847, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example"}
!848 = distinct !{!848, !847, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!849 = distinct !{!849, !847, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!850 = distinct !{!850, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example"}
!851 = distinct !{!851, !850, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!852 = distinct !{!852, !850, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!853 = distinct !{!853, i1 true, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!854 = distinct !{!854, !853, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!855 = distinct !{!855, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!856 = distinct !{!856, !855, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!857 = distinct !{!857, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example"}
!858 = distinct !{!858, !857, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!859 = distinct !{!859, !853, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!860 = distinct !{!860, !855, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!861 = distinct !{!861, !857, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Cs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!862 = distinct !{!862, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example"}
!863 = distinct !{!863, !862, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!864 = distinct !{!864, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example"}
!865 = distinct !{!865, !864, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!866 = !{!808}
!867 = !{!809}
!868 = !{!811}
!869 = !{!812}
!870 = !{!811, !812, !808, !809}
!871 = !{!814}
!872 = !{!815}
!873 = !{!814, !811, !808}
!874 = !{!815, !812, !808}
!875 = !{!814, !815, !811, !812, !808, !809}
!876 = !{!815, !812, !809}
!877 = !{!817}
!878 = !{!818, !817, !809}
!879 = !{!820}
!880 = !{!820, !817, !808}
!881 = !{!821, !820, !818, !817, !809}
!882 = !{!821, !820, !818, !817, !808, !809}
!883 = !{!820, !817, !809}
!884 = !{!824, !823, !809}
!885 = !{!827, !826, !824, !823, !808, !809}
!886 = !{!826, !823, !809}
!887 = !{!829}
!888 = !{!830}
!889 = !{!829, !830}
!890 = !{!832}
!891 = !{!833}
!892 = !{!832, !829}
!893 = !{!833, !830}
!894 = !{!832, !833, !829, !830}
!895 = !{!835}
!896 = !{!836}
!897 = !{!838}
!898 = !{!839}
!899 = !{!838, !839, !835, !836}
!900 = !{!841}
!901 = !{!842}
!902 = !{!841, !838, !835}
!903 = !{!842, !839, !835}
!904 = !{!841, !842, !838, !839, !836}
!905 = !{!841, !842, !838, !839, !835, !836}
!906 = !{!842, !839, !836}
!907 = !{!835, !836}
!908 = !{!844}
!909 = !{!846}
!910 = !{!849, !848}
!911 = !{!851}
!912 = !{!852}
!913 = !{!858, !856, !854, !851}
!914 = !{!859}
!915 = !{!854}
!916 = !{!859, !854, !851, !852}
!917 = !{!856}
!918 = !{!860}
!919 = !{!856, !860, !859, !854, !852}
!920 = !{!858}
!921 = !{!861}
!922 = !{!861, !860, !859, !851}
!923 = !{!858, !861, !856, !860, !859, !854, !851, !852}
!924 = !{!861, !860, !859, !852}
!925 = !{!851, !852}
!926 = !{!863}
!927 = !{!858, !861, !856, !860, !859, !854, !852}
!928 = !{!865}
!929 = distinct !{!929, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1w_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1y_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB2n_INtNtB44_3vec3VechEEB2m_B3s_NCINvMs1_B1w_INtB1w_13KBucketsTableB2m_B3s_E7closestB5d_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example"}
!930 = distinct !{!930, !929, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1w_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1y_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB2n_INtNtB44_3vec3VechEEB2m_B3s_NCINvMs1_B1w_INtB1w_13KBucketsTableB2m_B3s_E7closestB5d_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!931 = distinct !{!931, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_INtNtB4c_3vec3VechEEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5l_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example"}
!932 = distinct !{!932, !931, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_INtNtB4c_3vec3VechEEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5l_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!933 = distinct !{!933, !931, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_INtNtB4c_3vec3VechEEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5l_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!934 = distinct !{!934, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example"}
!935 = distinct !{!935, !934, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!936 = distinct !{!936, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example"}
!937 = distinct !{!937, !936, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!938 = distinct !{!938, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example"}
!939 = distinct !{!939, !938, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!940 = distinct !{!940, !938, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!941 = distinct !{!941, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_INtNtB4y_3vec3VechEEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5H_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example"}
!942 = distinct !{!942, !941, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_INtNtB4y_3vec3VechEEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5H_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!943 = distinct !{!943, !941, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_INtNtB4y_3vec3VechEEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5H_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!944 = distinct !{!944, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example"}
!945 = distinct !{!945, !944, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!946 = distinct !{!946, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example"}
!947 = distinct !{!947, !946, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!948 = !{!930}
!949 = !{!932}
!950 = !{!933}
!951 = !{!932, !933}
!952 = !{!935}
!953 = !{!937}
!954 = !{!940, !939}
!955 = !{!942}
!956 = !{!943}
!957 = !{!942, !943}
!958 = !{!945}
!959 = !{!947}
!960 = distinct !{!960, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1w_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1y_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB2n_NtNtB1y_6record3KeyEB2m_B3s_NCINvMs1_B1w_INtB1w_13KBucketsTableB2m_B3s_E7closestB5d_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example"}
!961 = distinct !{!961, !960, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1w_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1y_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB2n_NtNtB1y_6record3KeyEB2m_B3s_NCINvMs1_B1w_INtB1w_13KBucketsTableB2m_B3s_E7closestB5d_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!962 = distinct !{!962, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_NtNtB1G_6record3KeyEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5l_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example"}
!963 = distinct !{!963, !962, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_NtNtB1G_6record3KeyEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5l_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!964 = distinct !{!964, !962, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_NtNtB1G_6record3KeyEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5l_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!965 = distinct !{!965, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example"}
!966 = distinct !{!966, !965, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!967 = distinct !{!967, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example"}
!968 = distinct !{!968, !967, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!969 = distinct !{!969, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example"}
!970 = distinct !{!970, !969, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!971 = distinct !{!971, !969, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!972 = distinct !{!972, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_NtNtB1G_6record3KeyEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5H_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example"}
!973 = distinct !{!973, !972, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_NtNtB1G_6record3KeyEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5H_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!974 = distinct !{!974, !972, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_NtNtB1G_6record3KeyEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5H_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!975 = distinct !{!975, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example"}
!976 = distinct !{!976, !975, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!977 = distinct !{!977, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example"}
!978 = distinct !{!978, !977, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!979 = !{!961}
!980 = !{!963}
!981 = !{!964}
!982 = !{!963, !964}
!983 = !{!966}
!984 = !{!968}
!985 = !{!971, !970}
!986 = !{!973}
!987 = !{!974}
!988 = !{!973, !974}
!989 = !{!976}
!990 = !{!978}
!991 = distinct !{!991, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1c_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapB16_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4x_8adapters4take4TakeINtNtB5u_3map3MapINtB1a_11ClosestIterINtB18_3KeyNtNtB1c_6record3KeyEIB6v_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1c_9addresses9AddressesNCINvMs1_B1a_INtB1a_13KBucketsTableB6Z_B7T_E12closest_keysB6u_E0B6Z_ENCINvMs_B1Z_NtB1Z_16ClosestPeersIter11with_configB6a_B6u_E0EEE0E0ECs4jvuubEK18G_35distributed_key_value_store_example"}
!992 = distinct !{!992, !991, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1c_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapB16_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4x_8adapters4take4TakeINtNtB5u_3map3MapINtB1a_11ClosestIterINtB18_3KeyNtNtB1c_6record3KeyEIB6v_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1c_9addresses9AddressesNCINvMs1_B1a_INtB1a_13KBucketsTableB6Z_B7T_E12closest_keysB6u_E0B6Z_ENCINvMs_B1Z_NtB1Z_16ClosestPeersIter11with_configB6a_B6u_E0EEE0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!993 = distinct !{!993, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtB1k_6record3KeyEIB6D_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB77_B81_E12closest_keysB6C_E0B77_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6i_B6C_E0EEE0E0ECs4jvuubEK18G_35distributed_key_value_store_example"}
!994 = distinct !{!994, !993, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtB1k_6record3KeyEIB6D_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB77_B81_E12closest_keysB6C_E0B77_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6i_B6C_E0EEE0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!995 = distinct !{!995, !993, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtB1k_6record3KeyEIB6D_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB77_B81_E12closest_keysB6C_E0B77_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6i_B6C_E0EEE0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!996 = distinct !{!996, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example"}
!997 = distinct !{!997, !996, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!998 = distinct !{!998, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example"}
!999 = distinct !{!999, !998, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!1000 = distinct !{!1000, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example"}
!1001 = distinct !{!1001, !1000, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!1002 = distinct !{!1002, !1000, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!1003 = distinct !{!1003, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtB1k_6record3KeyEIB6Z_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB7t_B8n_E12closest_keysB6Y_E0B7t_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6E_B6Y_E0EEE0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example"}
!1004 = distinct !{!1004, !1003, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtB1k_6record3KeyEIB6Z_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB7t_B8n_E12closest_keysB6Y_E0B7t_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6E_B6Y_E0EEE0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!1005 = distinct !{!1005, !1003, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtB1k_6record3KeyEIB6Z_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB7t_B8n_E12closest_keysB6Y_E0B7t_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6E_B6Y_E0EEE0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!1006 = distinct !{!1006, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example"}
!1007 = distinct !{!1007, !1006, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!1008 = distinct !{!1008, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example"}
!1009 = distinct !{!1009, !1008, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!1010 = !{!992}
!1011 = !{!994}
!1012 = !{!995, !994}
!1013 = !{!997}
!1014 = !{!999}
!1015 = !{!1002, !1001}
!1016 = !{!1004}
!1017 = !{!1005, !1004}
!1018 = !{!1007}
!1019 = !{!1009}
!1020 = distinct !{!1020, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1c_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapB16_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4x_8adapters4take4TakeINtNtB5u_3map3MapINtB1a_11ClosestIterINtB18_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB6u_NtNtB1c_9addresses9AddressesNCINvMs1_B1a_INtB1a_13KBucketsTableB6u_B7y_E12closest_keysB6u_E0B6u_ENCINvMs_B1Z_NtB1Z_16ClosestPeersIter11with_configB6a_B6u_E0EEE0E0ECs4jvuubEK18G_35distributed_key_value_store_example"}
!1021 = distinct !{!1021, !1020, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1c_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapB16_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4x_8adapters4take4TakeINtNtB5u_3map3MapINtB1a_11ClosestIterINtB18_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB6u_NtNtB1c_9addresses9AddressesNCINvMs1_B1a_INtB1a_13KBucketsTableB6u_B7y_E12closest_keysB6u_E0B6u_ENCINvMs_B1Z_NtB1Z_16ClosestPeersIter11with_configB6a_B6u_E0EEE0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!1022 = distinct !{!1022, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB6C_NtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB6C_B7G_E12closest_keysB6C_E0B6C_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6i_B6C_E0EEE0E0ECs4jvuubEK18G_35distributed_key_value_store_example"}
!1023 = distinct !{!1023, !1022, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB6C_NtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB6C_B7G_E12closest_keysB6C_E0B6C_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6i_B6C_E0EEE0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!1024 = distinct !{!1024, !1022, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB6C_NtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB6C_B7G_E12closest_keysB6C_E0B6C_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6i_B6C_E0EEE0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!1025 = distinct !{!1025, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example"}
!1026 = distinct !{!1026, !1025, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!1027 = distinct !{!1027, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example"}
!1028 = distinct !{!1028, !1027, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!1029 = distinct !{!1029, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example"}
!1030 = distinct !{!1030, !1029, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!1031 = distinct !{!1031, !1029, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!1032 = distinct !{!1032, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB6Y_NtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB6Y_B82_E12closest_keysB6Y_E0B6Y_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6E_B6Y_E0EEE0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example"}
!1033 = distinct !{!1033, !1032, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB6Y_NtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB6Y_B82_E12closest_keysB6Y_E0B6Y_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6E_B6Y_E0EEE0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!1034 = distinct !{!1034, !1032, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB6Y_NtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB6Y_B82_E12closest_keysB6Y_E0B6Y_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6E_B6Y_E0EEE0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!1035 = distinct !{!1035, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example"}
!1036 = distinct !{!1036, !1035, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!1037 = distinct !{!1037, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example"}
!1038 = distinct !{!1038, !1037, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!1039 = !{!1021}
!1040 = !{!1023}
!1041 = !{!1024, !1023}
!1042 = !{!1026}
!1043 = !{!1028}
!1044 = !{!1031, !1030}
!1045 = !{!1033}
!1046 = !{!1034, !1033}
!1047 = !{!1036}
!1048 = !{!1038}
!1049 = distinct !{!1049, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1c_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapB16_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4x_8adapters4take4TakeINtNtB5u_3map3MapINtNtNtB2H_3vec9into_iter8IntoIterINtB18_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B1Z_NtB1Z_16ClosestPeersIter11with_configINtB6f_3VecB6I_EB6I_E0EEE0E0ECs4jvuubEK18G_35distributed_key_value_store_example"}
!1050 = distinct !{!1050, !1049, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1c_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapB16_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4x_8adapters4take4TakeINtNtB5u_3map3MapINtNtNtB2H_3vec9into_iter8IntoIterINtB18_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B1Z_NtB1Z_16ClosestPeersIter11with_configINtB6f_3VecB6I_EB6I_E0EEE0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!1051 = distinct !{!1051, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtNtNtB2P_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6n_3VecB6Q_EB6Q_E0EEE0E0ECs4jvuubEK18G_35distributed_key_value_store_example"}
!1052 = distinct !{!1052, !1051, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtNtNtB2P_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6n_3VecB6Q_EB6Q_E0EEE0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!1053 = distinct !{!1053, !1051, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtNtNtB2P_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6n_3VecB6Q_EB6Q_E0EEE0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!1054 = distinct !{!1054, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example"}
!1055 = distinct !{!1055, !1054, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!1056 = distinct !{!1056, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example"}
!1057 = distinct !{!1057, !1056, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!1058 = distinct !{!1058, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example"}
!1059 = distinct !{!1059, !1058, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!1060 = distinct !{!1060, !1058, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!1061 = distinct !{!1061, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtNtNtB3b_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6J_3VecB7c_EB7c_E0EEE0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example"}
!1062 = distinct !{!1062, !1061, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtNtNtB3b_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6J_3VecB7c_EB7c_E0EEE0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!1063 = distinct !{!1063, !1061, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtNtNtB3b_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6J_3VecB7c_EB7c_E0EEE0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!1064 = distinct !{!1064, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example"}
!1065 = distinct !{!1065, !1064, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!1066 = distinct !{!1066, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example"}
!1067 = distinct !{!1067, !1066, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!1068 = !{!1050}
!1069 = !{!1052}
!1070 = !{!1053, !1052}
!1071 = !{!1055}
!1072 = !{!1057}
!1073 = !{!1060, !1059}
!1074 = !{!1062}
!1075 = !{!1063, !1062}
!1076 = !{!1065}
!1077 = !{!1067}
!1078 = distinct !{!1078, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1c_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapB16_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4x_8adapters4take4TakeINtNtB5u_3map3MapINtNtNtB2H_3vec9into_iter8IntoIterINtB18_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B1Z_NtB1Z_16ClosestPeersIter11with_configINtB6f_3VecB6I_EIB6J_NtNtB1c_6record3KeyEE0EEE0E0ECs4jvuubEK18G_35distributed_key_value_store_example"}
!1079 = distinct !{!1079, !1078, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1c_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapB16_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4x_8adapters4take4TakeINtNtB5u_3map3MapINtNtNtB2H_3vec9into_iter8IntoIterINtB18_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B1Z_NtB1Z_16ClosestPeersIter11with_configINtB6f_3VecB6I_EIB6J_NtNtB1c_6record3KeyEE0EEE0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!1080 = distinct !{!1080, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtNtNtB2P_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6n_3VecB6Q_EIB6R_NtNtB1k_6record3KeyEE0EEE0E0ECs4jvuubEK18G_35distributed_key_value_store_example"}
!1081 = distinct !{!1081, !1080, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtNtNtB2P_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6n_3VecB6Q_EIB6R_NtNtB1k_6record3KeyEE0EEE0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!1082 = distinct !{!1082, !1080, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtNtNtB2P_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6n_3VecB6Q_EIB6R_NtNtB1k_6record3KeyEE0EEE0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!1083 = distinct !{!1083, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example"}
!1084 = distinct !{!1084, !1083, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!1085 = distinct !{!1085, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example"}
!1086 = distinct !{!1086, !1085, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!1087 = distinct !{!1087, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example"}
!1088 = distinct !{!1088, !1087, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!1089 = distinct !{!1089, !1087, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!1090 = distinct !{!1090, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtNtNtB3b_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6J_3VecB7c_EIB7d_NtNtB1k_6record3KeyEE0EEE0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example"}
!1091 = distinct !{!1091, !1090, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtNtNtB3b_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6J_3VecB7c_EIB7d_NtNtB1k_6record3KeyEE0EEE0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 1"}
!1092 = distinct !{!1092, !1090, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtNtNtB3b_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6J_3VecB7c_EIB7d_NtNtB1k_6record3KeyEE0EEE0E0E0ECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!1093 = distinct !{!1093, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example"}
!1094 = distinct !{!1094, !1093, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!1095 = distinct !{!1095, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example"}
!1096 = distinct !{!1096, !1095, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!1097 = !{!1079}
!1098 = !{!1081}
!1099 = !{!1082, !1081}
!1100 = !{!1084}
!1101 = !{!1086}
!1102 = !{!1089, !1088}
!1103 = !{!1091}
!1104 = !{!1092, !1091}
!1105 = !{!1094}
!1106 = !{!1096}
!1107 = !{i64 0, i64 5}
!1108 = distinct !{!1108, i1 true, !"_RNvXse_NtCskC4O4hr3vz7_10libp2p_kad6recordNtB5_6RecordNtNtCskKLDkoKarTP_4core5clone5Clone5clone"}
!1109 = distinct !{!1109, !1108, !"_RNvXse_NtCskC4O4hr3vz7_10libp2p_kad6recordNtB5_6RecordNtNtCskKLDkoKarTP_4core5clone5Clone5clone: argument 0"}
!1110 = distinct !{!1110, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECs4jvuubEK18G_35distributed_key_value_store_example"}
!1111 = distinct !{!1111, !1110, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!1112 = distinct !{!1112, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs4jvuubEK18G_35distributed_key_value_store_example"}
!1113 = distinct !{!1113, !1112, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!1114 = distinct !{!1114, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!1115 = distinct !{!1115, !1114, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!1116 = distinct !{!1116, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECs4jvuubEK18G_35distributed_key_value_store_example"}
!1117 = distinct !{!1117, !1116, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!1118 = distinct !{!1118, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs4jvuubEK18G_35distributed_key_value_store_example"}
!1119 = distinct !{!1119, !1118, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!1120 = distinct !{!1120, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!1121 = distinct !{!1121, !1120, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!1122 = distinct !{!1122, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtBI_6record3KeyEECs4jvuubEK18G_35distributed_key_value_store_example"}
!1123 = distinct !{!1123, !1122, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtBI_6record3KeyEECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!1124 = distinct !{!1124, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECs4jvuubEK18G_35distributed_key_value_store_example"}
!1125 = distinct !{!1125, !1124, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskC4O4hr3vz7_10libp2p_kad6record3KeyECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
!1126 = distinct !{!1126, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs4jvuubEK18G_35distributed_key_value_store_example"}
!1127 = distinct !{!1127, !1126, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs4jvuubEK18G_35distributed_key_value_store_example: argument 0"}
end_hunk_1

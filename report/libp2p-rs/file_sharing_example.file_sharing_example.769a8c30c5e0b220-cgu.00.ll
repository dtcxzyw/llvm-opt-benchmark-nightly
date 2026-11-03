Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/file_sharing_example.file_sharing_example.769a8c30c5e0b220-cgu.00?download=true
inline.NumInlined: 1075
inline.NumDeleted: 635
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterB1r_B1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4t_E12closest_keysB1r_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example:bb.a
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #29, !noalias !651
  unreachable

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit: ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !651
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.q), !noalias !650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !651
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ax)
  %i.ay = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !651
  %i.az = icmp eq i8 %i.ay, -1
  br i1 %i.az, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.k, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit
  %.val37 = load ptr, ptr %6, align 8             ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !652)
  call void @llvm.experimental.noalias.scope.decl(metadata !653)
  %.not58 = icmp samesign ult i64 %3, %.sroa.16.0117346
  br i1 %.not58, label %bb.r, label %bb.q, !prof !14

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

._crit_edge.i:                                    ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit.i, %bb.s
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.s ], [ %i.bm, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit.i ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.s ], [ %i.bp, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit.i ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.s ], [ %i.bq, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit.i ] ; 2 uses
  %i.be = icmp eq i64 %.sroa.0.0.i39, %.sroa.16.0117346
  br i1 %i.be, label %bb.y, label %bb.x

bb.t:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit.i, %.lr.ph.i
  %.sroa.5.117.i = phi ptr [ %.sroa.5.0.i, %.lr.ph.i ], [ %i.bq, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit.i ] ; 4 uses
  %.sroa.11.116.i = phi i64 [ %.sroa.11.0.i, %.lr.ph.i ], [ %i.bp, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit.i ] ; 2 uses
  %.sroa.19.115.i = phi ptr [ %.sroa.19.0.i, %.lr.ph.i ], [ %i.bm, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !654)
  call void @llvm.experimental.noalias.scope.decl(metadata !655)
  %.val.i.i40 = load ptr, ptr %.val37, align 8, !noalias !656 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !657)
  call void @llvm.experimental.noalias.scope.decl(metadata !658)
  %i.bf = load i64, ptr %.sroa.5.117.i, align 8, !range !13, !alias.scope !659, !noundef !6
  %i.bg = trunc nuw i64 %i.bf to i1
  br i1 %i.bg, label %bb.u, label %bb.v, !prof !9

bb.u:                                             ; preds = %bb.t
  %i.bh = load i64, ptr %i.as, align 8, !range !13, !alias.scope !660, !noundef !6
  %i.bi = trunc nuw i64 %i.bh to i1
  br i1 %i.bi, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit.i, label %bb.w, !prof !9

bb.v:                                             ; preds = %bb.t
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #29, !noalias !661
  unreachable

bb.w:                                             ; preds = %bb.u
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #29, !noalias !661
  unreachable

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit.i: ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.5.117.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !662
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i40) ]
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %.val.i.i40, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.bj), !noalias !663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !662
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %.val.i.i40, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.bb), !noalias !653
  %i.bk = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c), !noalias !653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !662
  %i.bl = icmp eq i8 %i.bk, -1                    ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %.sroa.19.115.i, i64 -120 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.bl, ptr %2, ptr %i.bm
  %i.bn = getelementptr inbounds nuw [120 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.116.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.bn, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.117.i, i64 120, i1 false), !alias.scope !664, !noalias !665
  %i.bo = zext i1 %i.bl to i64
  %i.bp = add i64 %.sroa.11.116.i, %i.bo          ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.5.117.i, i64 120 ; 3 uses
  %i.br = icmp ult ptr %i.bq, %i.bc
  br i1 %i.br, label %bb.t, label %._crit_edge.i

bb.x:                                             ; preds = %._crit_edge.i
  %i.bs = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -120 ; 2 uses
  %i.bt = getelementptr inbounds nuw [120 x i8], ptr %i.bs, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.bt, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.1.lcssa.i, i64 120, i1 false), !alias.scope !664, !noalias !666
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 120
  br label %bb.s

bb.y:                                             ; preds = %._crit_edge.i
  %i.bv = mul nuw nsw i64 %.sroa.11.1.lcssa.i, 120
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph124, ptr nonnull align 8 %2, i64 %i.bv, i1 false), !alias.scope !664
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cb, ptr noundef nonnull align 8 dereferenceable(120) %i.ca, i64 120, i1 false), !alias.scope !664
  %i.cc = add nuw i64 %.sroa.06.020.i, 2          ; 2 uses
  %i.cd = xor i64 %.sroa.06.020.i, -2
  %i.ce = getelementptr [120 x i8], ptr %i.ba, i64 %i.cd
  %i.cf = getelementptr [120 x i8], ptr %i.bx, i64 %.sroa.06.020.i
  %i.cg = getelementptr i8, ptr %i.cf, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cg, ptr noundef nonnull align 8 dereferenceable(120) %i.ce, i64 120, i1 false), !alias.scope !664
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cj, ptr noundef nonnull align 8 dereferenceable(120) %i.ci, i64 120, i1 false), !alias.scope !664
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.y
  %i.ck = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.ck, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  %.not.i41 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.0117346
  br i1 %.not.i41, label %bb.ab, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCsabk8e3lPnsy_20file_sharing_example.exit, !prof !8

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @31, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #29, !noalias !667
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCsabk8e3lPnsy_20file_sharing_example.exit: ; preds = %bb.aa
  %i.cl = getelementptr inbounds nuw [120 x i8], ptr %.sroa.0.0.ph124, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph124) ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterB1r_B1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4t_E12closest_keysB1r_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull align 8 %i.cl, i64 noundef %i.bw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.cm = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.cm, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !668)
  call void @llvm.experimental.noalias.scope.decl(metadata !669)
  %.not59 = icmp samesign ult i64 %3, %.sroa.16.0117346
  br i1 %.not59, label %bb.ad, label %bb.ac, !prof !14

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
  %i.cr = load i64, ptr %i.as, align 8, !range !13, !alias.scope !670, !noundef !6
  %i.cs = trunc nuw i64 %i.cr to i1
  br i1 %i.cs, label %.lr.ph.split.us.i, label %.lr.ph.split.i, !prof !9

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i54, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Csabk8e3lPnsy_20file_sharing_example.exit.us.i
  %.sroa.5.117.us.i = phi ptr [ %i.dc, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Csabk8e3lPnsy_20file_sharing_example.exit.us.i ], [ %.sroa.5.0.i46, %.lr.ph.i54 ] ; 4 uses
  %.sroa.11.116.us.i = phi i64 [ %i.db, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Csabk8e3lPnsy_20file_sharing_example.exit.us.i ], [ %.sroa.11.0.i45, %.lr.ph.i54 ] ; 2 uses
  %.sroa.19.115.us.i = phi ptr [ %i.cy, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Csabk8e3lPnsy_20file_sharing_example.exit.us.i ], [ %.sroa.19.0.i44, %.lr.ph.i54 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !671)
  call void @llvm.experimental.noalias.scope.decl(metadata !672)
  %.val.i.us.i = load ptr, ptr %6, align 8, !noalias !673, !nonnull !6, !align !11, !noundef !6
  call void @llvm.experimental.noalias.scope.decl(metadata !674)
  call void @llvm.experimental.noalias.scope.decl(metadata !675)
  %.val.i.i.us.i = load ptr, ptr %.val.i.us.i, align 8, !noalias !676 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !677)
  call void @llvm.experimental.noalias.scope.decl(metadata !678)
  %i.ct = load i64, ptr %.sroa.5.117.us.i, align 8, !range !13, !alias.scope !679, !noundef !6
  %i.cu = trunc nuw i64 %i.ct to i1
  br i1 %i.cu, label %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Csabk8e3lPnsy_20file_sharing_example.exit.us.i, label %.split.us.i, !prof !9

_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Csabk8e3lPnsy_20file_sharing_example.exit.us.i: ; preds = %.lr.ph.split.us.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.5.117.us.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !680
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.us.i) ]
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %.val.i.i.us.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.co), !noalias !681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !680
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %.val.i.i.us.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.cv), !noalias !669
  %i.cw = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a), !noalias !669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !680
  %i.cx = icmp ne i8 %i.cw, -1                    ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %.sroa.19.115.us.i, i64 -120 ; 3 uses
  %.sroa.01.0.i.us.i = select i1 %i.cx, ptr %2, ptr %i.cy
  %i.cz = getelementptr inbounds nuw [120 x i8], ptr %.sroa.01.0.i.us.i, i64 %.sroa.11.116.us.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cz, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.117.us.i, i64 120, i1 false), !alias.scope !682, !noalias !683
  %i.da = zext i1 %i.cx to i64
  %i.db = add i64 %.sroa.11.116.us.i, %i.da       ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.5.117.us.i, i64 120 ; 3 uses
  %i.dd = icmp ult ptr %i.dc, %i.cp
  br i1 %i.dd, label %.lr.ph.split.us.i, label %._crit_edge.split.us.i

._crit_edge.split.us.i:                           ; preds = %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Csabk8e3lPnsy_20file_sharing_example.exit.us.i, %bb.ae
  %.sroa.19.1.lcssa.i48 = phi ptr [ %.sroa.19.0.i44, %bb.ae ], [ %i.cy, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Csabk8e3lPnsy_20file_sharing_example.exit.us.i ]
  %.sroa.11.1.lcssa.i49 = phi i64 [ %.sroa.11.0.i45, %bb.ae ], [ %i.db, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Csabk8e3lPnsy_20file_sharing_example.exit.us.i ] ; 10 uses
  %.sroa.5.1.lcssa.i50 = phi ptr [ %.sroa.5.0.i46, %bb.ae ], [ %i.dc, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Csabk8e3lPnsy_20file_sharing_example.exit.us.i ] ; 2 uses
  %7 = icmp eq i64 %.sroa.0.0.i47, %.sroa.16.0117346
  br i1 %7, label %bb.ag, label %bb.af

.lr.ph.split.i:                                   ; preds = %.lr.ph.i54
  call void @llvm.experimental.noalias.scope.decl(metadata !671)
  call void @llvm.experimental.noalias.scope.decl(metadata !672)
  call void @llvm.experimental.noalias.scope.decl(metadata !674)
  call void @llvm.experimental.noalias.scope.decl(metadata !675)
  call void @llvm.experimental.noalias.scope.decl(metadata !677)
  call void @llvm.experimental.noalias.scope.decl(metadata !678)
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #29, !noalias !684
  unreachable

.split.us.i:                                      ; preds = %.lr.ph.split.us.i
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #29, !noalias !684
  unreachable

bb.af:                                            ; preds = %._crit_edge.split.us.i
  %i.de = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i48, i64 -120
  %i.df = getelementptr inbounds nuw [120 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.df, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.1.lcssa.i50, i64 120, i1 false), !alias.scope !682, !noalias !685
  %i.dg = add i64 %.sroa.11.1.lcssa.i49, 1
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i50, i64 120
  br label %bb.ae

bb.ag:                                            ; preds = %._crit_edge.split.us.i
  %i.di = mul nuw nsw i64 %.sroa.11.1.lcssa.i49, 120
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph124, ptr nonnull align 8 %2, i64 %i.di, i1 false), !alias.scope !682
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.do, ptr noundef nonnull align 8 dereferenceable(120) %i.dn, i64 120, i1 false), !alias.scope !682
  %i.dp = add nuw i64 %.sroa.06.022.i, 2          ; 2 uses
  %i.dq = xor i64 %.sroa.06.022.i, -2
  %i.dr = getelementptr [120 x i8], ptr %i.cn, i64 %i.dq
  %i.ds = getelementptr [120 x i8], ptr %i.dk, i64 %.sroa.06.022.i
  %i.dt = getelementptr i8, ptr %i.ds, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.dt, ptr noundef nonnull align 8 dereferenceable(120) %i.dr, i64 120, i1 false), !alias.scope !682
  %niter468.next.1 = add i64 %niter468, 2         ; 2 uses
  %niter468.ncmp.1 = icmp eq i64 %niter468.next.1, %unroll_iter467
  br i1 %niter468.ncmp.1, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECsabk8e3lPnsy_20file_sharing_example.exit.unr-lcssa, label %.lr.ph23.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECsabk8e3lPnsy_20file_sharing_example.exit.unr-lcssa: ; preds = %.lr.ph23.i
  %lcmp.mod465.not = icmp eq i64 %xtraiter464, 0
  br i1 %lcmp.mod465.not, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECsabk8e3lPnsy_20file_sharing_example.exit, label %.lr.ph23.i.epil.preheader

.lr.ph23.i.epil.preheader:                        ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECsabk8e3lPnsy_20file_sharing_example.exit.unr-lcssa, %.lr.ph23.i.preheader
  %.sroa.06.022.i.epil.init = phi i64 [ 0, %.lr.ph23.i.preheader ], [ %i.dp, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECsabk8e3lPnsy_20file_sharing_example.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod466 = trunc i64 %i.dj to i1
  call void @llvm.assume(i1 %lcmp.mod466)
  %i.du = xor i64 %.sroa.06.022.i.epil.init, -1
  %i.dv = getelementptr [120 x i8], ptr %i.cn, i64 %i.du
  %i.dw = getelementptr [120 x i8], ptr %i.dk, i64 %.sroa.06.022.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.dw, ptr noundef nonnull align 8 dereferenceable(120) %i.dv, i64 120, i1 false), !alias.scope !682
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECsabk8e3lPnsy_20file_sharing_example.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECsabk8e3lPnsy_20file_sharing_example.exit: ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECsabk8e3lPnsy_20file_sharing_example.exit.unr-lcssa, %.lr.ph23.i.epil.preheader
  %i.dx = icmp ugt i64 %.sroa.11.1.lcssa.i49, %.sroa.16.0117346
  br i1 %i.dx, label %bb.ah, label %.outer, !prof !8

.outer.thread:                                    ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECsabk8e3lPnsy_20file_sharing_example.exit
  %i.dy = getelementptr inbounds nuw [120 x i8], ptr %.sroa.0.0.ph124, i64 %.sroa.11.1.lcssa.i49 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.dz = icmp ult i64 %i.dj, 33
  br i1 %i.dz, label %.outer._crit_edge, label %.lr.ph

bb.ah:                                            ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECsabk8e3lPnsy_20file_sharing_example.exit
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i49, i64 noundef %.sroa.16.0117346, i64 noundef %.sroa.16.0117346, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #29
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB1s_NtNtB1y_6record3KeyEB1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4O_E12closest_keysB4l_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 76861433640456466) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #1 {
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

bb.b:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCsabk8e3lPnsy_20file_sharing_example.exit
  %i.s = icmp eq i32 %i.t, 0
  br i1 %i.s, label %.lr.ph._crit_edge, label %.lr.ph348

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCsabk8e3lPnsy_20file_sharing_example.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa115 = phi ptr [ %i.dq, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph124, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCsabk8e3lPnsy_20file_sharing_example.exit ], [ %i.ee, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.11.1.lcssa.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCsabk8e3lPnsy_20file_sharing_example.exit ], [ %i.dp, %.outer ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1s_7sort_byNCNvXs4_B1T_INtB1T_11ClosestIterIB1P_NtNtB1V_6record3KeyEB1O_NtNtB1V_9addresses9AddressesNCINvMs1_B1T_INtB1T_13KBucketsTableB1O_B5b_E12closest_keysB4I_E0B1O_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa115, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.j

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0117.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph123, %.lr.ph ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCNvXs4_B1n_INtB1n_11ClosestIterIB1j_NtNtB1p_6record3KeyEB1i_NtNtB1p_9addresses9AddressesNCINvMs1_B1n_INtB1n_13KBucketsTableB1i_B4E_E12closest_keysB4b_E0B1i_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph124, i64 noundef %.sroa.16.0117.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.j

.lr.ph348:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0116347 = phi i32 [ %i.t, %bb.b ], [ %.sroa.025.0.ph122, %.lr.ph ]
  %.sroa.16.0117346 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph123, %.lr.ph ] ; 21 uses
  %i.t = add i32 %.sroa.025.0116347, -1           ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !745)
  call void @llvm.experimental.noalias.scope.decl(metadata !746)
  %i.u = lshr i64 %.sroa.16.0117346, 3            ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.u, 480
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph124, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.u, 840
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph124, i64 %.idx2.i ; 4 uses
  %i.x = icmp samesign ult i64 %.sroa.16.0117346, 64
  br i1 %i.x, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph348
  %i.y = call noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB14_7sort_byNCNvXs4_B1v_INtB1v_11ClosestIterIB1r_NtNtB1x_6record3KeyEB1q_NtNtB1x_9addresses9AddressesNCINvMs1_B1v_INtB1v_13KBucketsTableB1q_B4N_E12closest_keysB4k_E0B1q_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph124, ptr noundef nonnull readonly %i.v, ptr noundef nonnull readonly %i.w, i64 noundef %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.k

bb.d:                                             ; preds = %.lr.ph348
  %.val4.i = load ptr, ptr %6, align 8, !alias.scope !746, !nonnull !6, !align !11, !noundef !6 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !747)
  call void @llvm.experimental.noalias.scope.decl(metadata !748)
  %.val.i.i = load ptr, ptr %.val4.i, align 8, !noalias !749 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !750)
  call void @llvm.experimental.noalias.scope.decl(metadata !751)
  %i.z = load i64, ptr %.sroa.0.0.ph124, align 8, !range !13, !alias.scope !752, !noundef !6
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %bb.e, label %bb.f, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.ab = load i64, ptr %i.v, align 8, !range !13, !alias.scope !753, !noundef !6
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %bb.h, label %bb.g, !prof !9

bb.f:                                             ; preds = %bb.d
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #29, !noalias !754
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #29, !noalias !754
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !754
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 32 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.o), !noalias !755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !754
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ad), !noalias !746
  %i.af = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k), !noalias !746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !754
  %i.ag = icmp eq i8 %i.af, -1                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !756)
  %.val.i5.i = load ptr, ptr %.val4.i, align 8, !noalias !757 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !758)
  %i.ah = load i64, ptr %i.w, align 8, !range !13, !alias.scope !759, !noundef !6
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit6.i, label %bb.i, !prof !9

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #29, !noalias !760
  unreachable

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit6.i: ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !761
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i5.i) ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i5.i, i64 32 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.o), !noalias !762
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !761
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.aj), !noalias !746
  %i.al = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i), !noalias !746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !761
  %i.am = icmp eq i8 %i.al, -1
  %i.an = xor i1 %i.ag, %i.am
  br i1 %i.an, label %bb.k, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit8.i

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit8.i: ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit6.i
  %.val.i7.i = load ptr, ptr %.val4.i, align 8, !noalias !763, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !764
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i7.i, i64 32 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ad), !noalias !765
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !764
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.aj), !noalias !746
  %i.ap = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g), !noalias !746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !764
  %i.aq = icmp eq i8 %i.ap, -1
  %i.ar = xor i1 %i.ag, %i.aq
  %..i.i = select i1 %i.ar, ptr %i.w, ptr %i.v
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.k:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit8.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit6.i, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %i.y, %bb.c ], [ %.sroa.0.0.ph124, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit6.i ], [ %..i.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit8.i ]
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
  %.val = load ptr, ptr %6, align 8, !nonnull !6, !align !11, !noundef !6
  call void @llvm.experimental.noalias.scope.decl(metadata !766)
  call void @llvm.experimental.noalias.scope.decl(metadata !767)
  %.val.i = load ptr, ptr %.val, align 8, !noalias !768 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !769)
  call void @llvm.experimental.noalias.scope.decl(metadata !770)
  %i.aw = load i64, ptr %.sroa.028.0.ph121, align 8, !range !13, !alias.scope !771, !noundef !6
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %bb.m, label %bb.n, !prof !9

bb.m:                                             ; preds = %bb.l
  %i.ay = load i64, ptr %i.av, align 8, !range !13, !alias.scope !772, !noundef !6
  %i.az = trunc nuw i64 %i.ay to i1
  br i1 %i.az, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit, label %bb.o, !prof !9

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #29, !noalias !773
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #29, !noalias !773
  unreachable

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit: ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !773
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.val.i, i64 32 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.bb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.q), !noalias !772
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !773
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.bb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ba)
  %i.bc = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !773
  %i.bd = icmp eq i8 %i.bc, -1
  br i1 %i.bd, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.k, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit
  %.val37 = load ptr, ptr %6, align 8             ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !774)
  call void @llvm.experimental.noalias.scope.decl(metadata !775)
  %.not58 = icmp samesign ult i64 %3, %.sroa.16.0117346
  br i1 %.not58, label %bb.r, label %bb.q, !prof !14

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

._crit_edge.i:                                    ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit.i, %bb.s
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.s ], [ %i.br, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit.i ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.s ], [ %i.bu, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit.i ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.s ], [ %i.bv, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit.i ] ; 2 uses
  %i.bi = icmp eq i64 %.sroa.0.0.i39, %.sroa.16.0117346
  br i1 %i.bi, label %bb.y, label %bb.x

bb.t:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit.i, %.lr.ph.i
  %.sroa.5.117.i = phi ptr [ %.sroa.5.0.i, %.lr.ph.i ], [ %i.bv, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit.i ] ; 4 uses
  %.sroa.11.116.i = phi i64 [ %.sroa.11.0.i, %.lr.ph.i ], [ %i.bu, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit.i ] ; 2 uses
  %.sroa.19.115.i = phi ptr [ %.sroa.19.0.i, %.lr.ph.i ], [ %i.br, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !776)
  call void @llvm.experimental.noalias.scope.decl(metadata !777)
  %.val.i.i40 = load ptr, ptr %.val37, align 8, !noalias !778 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !779)
  call void @llvm.experimental.noalias.scope.decl(metadata !780)
  %i.bj = load i64, ptr %.sroa.5.117.i, align 8, !range !13, !alias.scope !781, !noundef !6
  %i.bk = trunc nuw i64 %i.bj to i1
  br i1 %i.bk, label %bb.u, label %bb.v, !prof !9

bb.u:                                             ; preds = %bb.t
  %i.bl = load i64, ptr %i.av, align 8, !range !13, !alias.scope !782, !noundef !6
  %i.bm = trunc nuw i64 %i.bl to i1
  br i1 %i.bm, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit.i, label %bb.w, !prof !9

bb.v:                                             ; preds = %bb.t
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #29, !noalias !783
  unreachable

bb.w:                                             ; preds = %bb.u
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #29, !noalias !783
  unreachable

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit.i: ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.5.117.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !784
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i40) ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.i.i40, i64 32 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.bo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.bn), !noalias !785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !784
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.bo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.bf), !noalias !775
  %i.bp = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c), !noalias !775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !784
  %i.bq = icmp eq i8 %i.bp, -1                    ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %.sroa.19.115.i, i64 -120 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.bq, ptr %2, ptr %i.br
  %i.bs = getelementptr inbounds nuw [120 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.116.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.bs, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.117.i, i64 120, i1 false), !alias.scope !786, !noalias !787
  %i.bt = zext i1 %i.bq to i64
  %i.bu = add i64 %.sroa.11.116.i, %i.bt          ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.5.117.i, i64 120 ; 3 uses
  %i.bw = icmp ult ptr %i.bv, %i.bg
  br i1 %i.bw, label %bb.t, label %._crit_edge.i

bb.x:                                             ; preds = %._crit_edge.i
  %i.bx = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -120 ; 2 uses
  %i.by = getelementptr inbounds nuw [120 x i8], ptr %i.bx, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.by, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.1.lcssa.i, i64 120, i1 false), !alias.scope !786, !noalias !788
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 120
  br label %bb.s

bb.y:                                             ; preds = %._crit_edge.i
  %i.ca = mul nuw nsw i64 %.sroa.11.1.lcssa.i, 120
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph124, ptr nonnull align 8 %2, i64 %i.ca, i1 false), !alias.scope !786
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cg, ptr noundef nonnull align 8 dereferenceable(120) %i.cf, i64 120, i1 false), !alias.scope !786
  %i.ch = add nuw i64 %.sroa.06.020.i, 2          ; 2 uses
  %i.ci = xor i64 %.sroa.06.020.i, -2
  %i.cj = getelementptr [120 x i8], ptr %i.be, i64 %i.ci
  %i.ck = getelementptr [120 x i8], ptr %i.cc, i64 %.sroa.06.020.i
  %i.cl = getelementptr i8, ptr %i.ck, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cl, ptr noundef nonnull align 8 dereferenceable(120) %i.cj, i64 120, i1 false), !alias.scope !786
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.co, ptr noundef nonnull align 8 dereferenceable(120) %i.cn, i64 120, i1 false), !alias.scope !786
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.y
  %i.cp = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.cp, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  %.not.i41 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.0117346
  br i1 %.not.i41, label %bb.ab, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCsabk8e3lPnsy_20file_sharing_example.exit, !prof !8

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @31, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #29, !noalias !789
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCsabk8e3lPnsy_20file_sharing_example.exit: ; preds = %bb.aa
  %i.cq = getelementptr inbounds nuw [120 x i8], ptr %.sroa.0.0.ph124, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph124) ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB1s_NtNtB1y_6record3KeyEB1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4O_E12closest_keysB4l_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull align 8 %i.cq, i64 noundef %i.cb, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.cr = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.cr, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !790)
  call void @llvm.experimental.noalias.scope.decl(metadata !791)
  %.not59 = icmp samesign ult i64 %3, %.sroa.16.0117346
  br i1 %.not59, label %bb.ad, label %bb.ac, !prof !14

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
  %i.cw = load i64, ptr %i.av, align 8, !range !13, !alias.scope !792, !noundef !6
  %i.cx = trunc nuw i64 %i.cw to i1
  br i1 %i.cx, label %.lr.ph.split.us.i, label %.lr.ph.split.i, !prof !9

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i54, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Csabk8e3lPnsy_20file_sharing_example.exit.us.i
  %.sroa.5.117.us.i = phi ptr [ %i.di, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Csabk8e3lPnsy_20file_sharing_example.exit.us.i ], [ %.sroa.5.0.i46, %.lr.ph.i54 ] ; 4 uses
  %.sroa.11.116.us.i = phi i64 [ %i.dh, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Csabk8e3lPnsy_20file_sharing_example.exit.us.i ], [ %.sroa.11.0.i45, %.lr.ph.i54 ] ; 2 uses
  %.sroa.19.115.us.i = phi ptr [ %i.de, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Csabk8e3lPnsy_20file_sharing_example.exit.us.i ], [ %.sroa.19.0.i44, %.lr.ph.i54 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !793)
  call void @llvm.experimental.noalias.scope.decl(metadata !794)
  %.val.i.us.i = load ptr, ptr %6, align 8, !noalias !795, !nonnull !6, !align !11, !noundef !6
  call void @llvm.experimental.noalias.scope.decl(metadata !796)
  call void @llvm.experimental.noalias.scope.decl(metadata !797)
  %.val.i.i.us.i = load ptr, ptr %.val.i.us.i, align 8, !noalias !798 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !799)
  call void @llvm.experimental.noalias.scope.decl(metadata !800)
  %i.cy = load i64, ptr %.sroa.5.117.us.i, align 8, !range !13, !alias.scope !801, !noundef !6
  %i.cz = trunc nuw i64 %i.cy to i1
  br i1 %i.cz, label %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Csabk8e3lPnsy_20file_sharing_example.exit.us.i, label %.split.us.i, !prof !9

_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Csabk8e3lPnsy_20file_sharing_example.exit.us.i: ; preds = %.lr.ph.split.us.i
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.5.117.us.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !802
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.us.i) ]
  %i.db = getelementptr inbounds nuw i8, ptr %.val.i.i.us.i, i64 32 ; 2 uses
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.db, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ct), !noalias !803
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !802
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.db, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.da), !noalias !791
  %i.dc = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a), !noalias !791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !802
  %i.dd = icmp ne i8 %i.dc, -1                    ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.19.115.us.i, i64 -120 ; 3 uses
  %.sroa.01.0.i.us.i = select i1 %i.dd, ptr %2, ptr %i.de
  %i.df = getelementptr inbounds nuw [120 x i8], ptr %.sroa.01.0.i.us.i, i64 %.sroa.11.116.us.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.df, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.117.us.i, i64 120, i1 false), !alias.scope !804, !noalias !805
  %i.dg = zext i1 %i.dd to i64
  %i.dh = add i64 %.sroa.11.116.us.i, %i.dg       ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.5.117.us.i, i64 120 ; 3 uses
  %i.dj = icmp ult ptr %i.di, %i.cu
  br i1 %i.dj, label %.lr.ph.split.us.i, label %._crit_edge.split.us.i

._crit_edge.split.us.i:                           ; preds = %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Csabk8e3lPnsy_20file_sharing_example.exit.us.i, %bb.ae
  %.sroa.19.1.lcssa.i48 = phi ptr [ %.sroa.19.0.i44, %bb.ae ], [ %i.de, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Csabk8e3lPnsy_20file_sharing_example.exit.us.i ]
  %.sroa.11.1.lcssa.i49 = phi i64 [ %.sroa.11.0.i45, %bb.ae ], [ %i.dh, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Csabk8e3lPnsy_20file_sharing_example.exit.us.i ] ; 10 uses
  %.sroa.5.1.lcssa.i50 = phi ptr [ %.sroa.5.0.i46, %bb.ae ], [ %i.di, %_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Csabk8e3lPnsy_20file_sharing_example.exit.us.i ] ; 2 uses
  %7 = icmp eq i64 %.sroa.0.0.i47, %.sroa.16.0117346
  br i1 %7, label %bb.ag, label %bb.af

.lr.ph.split.i:                                   ; preds = %.lr.ph.i54
  call void @llvm.experimental.noalias.scope.decl(metadata !793)
  call void @llvm.experimental.noalias.scope.decl(metadata !794)
  call void @llvm.experimental.noalias.scope.decl(metadata !796)
  call void @llvm.experimental.noalias.scope.decl(metadata !797)
  call void @llvm.experimental.noalias.scope.decl(metadata !799)
  call void @llvm.experimental.noalias.scope.decl(metadata !800)
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #29, !noalias !806
  unreachable

.split.us.i:                                      ; preds = %.lr.ph.split.us.i
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #29, !noalias !806
  unreachable

bb.af:                                            ; preds = %._crit_edge.split.us.i
  %i.dk = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i48, i64 -120
  %i.dl = getelementptr inbounds nuw [120 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.dl, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.1.lcssa.i50, i64 120, i1 false), !alias.scope !804, !noalias !807
  %i.dm = add i64 %.sroa.11.1.lcssa.i49, 1
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i50, i64 120
  br label %bb.ae

bb.ag:                                            ; preds = %._crit_edge.split.us.i
  %i.do = mul nuw nsw i64 %.sroa.11.1.lcssa.i49, 120
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph124, ptr nonnull align 8 %2, i64 %i.do, i1 false), !alias.scope !804
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.du, ptr noundef nonnull align 8 dereferenceable(120) %i.dt, i64 120, i1 false), !alias.scope !804
  %i.dv = add nuw i64 %.sroa.06.022.i, 2          ; 2 uses
  %i.dw = xor i64 %.sroa.06.022.i, -2
  %i.dx = getelementptr [120 x i8], ptr %i.cs, i64 %i.dw
  %i.dy = getelementptr [120 x i8], ptr %i.dq, i64 %.sroa.06.022.i
  %i.dz = getelementptr i8, ptr %i.dy, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.dz, ptr noundef nonnull align 8 dereferenceable(120) %i.dx, i64 120, i1 false), !alias.scope !804
  %niter468.next.1 = add i64 %niter468, 2         ; 2 uses
  %niter468.ncmp.1 = icmp eq i64 %niter468.next.1, %unroll_iter467
  br i1 %niter468.ncmp.1, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECsabk8e3lPnsy_20file_sharing_example.exit.unr-lcssa, label %.lr.ph23.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECsabk8e3lPnsy_20file_sharing_example.exit.unr-lcssa: ; preds = %.lr.ph23.i
  %lcmp.mod465.not = icmp eq i64 %xtraiter464, 0
  br i1 %lcmp.mod465.not, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECsabk8e3lPnsy_20file_sharing_example.exit, label %.lr.ph23.i.epil.preheader

.lr.ph23.i.epil.preheader:                        ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECsabk8e3lPnsy_20file_sharing_example.exit.unr-lcssa, %.lr.ph23.i.preheader
  %.sroa.06.022.i.epil.init = phi i64 [ 0, %.lr.ph23.i.preheader ], [ %i.dv, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECsabk8e3lPnsy_20file_sharing_example.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod466 = trunc i64 %i.dp to i1
  call void @llvm.assume(i1 %lcmp.mod466)
  %i.ea = xor i64 %.sroa.06.022.i.epil.init, -1
  %i.eb = getelementptr [120 x i8], ptr %i.cs, i64 %i.ea
  %i.ec = getelementptr [120 x i8], ptr %i.dq, i64 %.sroa.06.022.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ec, ptr noundef nonnull align 8 dereferenceable(120) %i.eb, i64 120, i1 false), !alias.scope !804
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECsabk8e3lPnsy_20file_sharing_example.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECsabk8e3lPnsy_20file_sharing_example.exit: ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECsabk8e3lPnsy_20file_sharing_example.exit.unr-lcssa, %.lr.ph23.i.epil.preheader
  %i.ed = icmp ugt i64 %.sroa.11.1.lcssa.i49, %.sroa.16.0117346
  br i1 %i.ed, label %bb.ah, label %.outer, !prof !8

.outer.thread:                                    ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECsabk8e3lPnsy_20file_sharing_example.exit
  %i.ee = getelementptr inbounds nuw [120 x i8], ptr %.sroa.0.0.ph124, i64 %.sroa.11.1.lcssa.i49 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ef = icmp ult i64 %i.dp, 33
  br i1 %i.ef, label %.outer._crit_edge, label %.lr.ph

bb.ah:                                            ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECsabk8e3lPnsy_20file_sharing_example.exit
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i49, i64 noundef %.sroa.16.0117346, i64 noundef %.sroa.16.0117346, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #29
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1w_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1y_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB2n_INtNtB44_3vec3VechEEB2m_B3s_NCINvMs1_B1w_INtB1w_13KBucketsTableB2m_B3s_E7closestB5d_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 28120036697727976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 28120036697727976) %3, i32 noundef %4, ptr noundef align 8 %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #1 {
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

bb.b:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCsabk8e3lPnsy_20file_sharing_example.exit
  %i.p = icmp eq i32 %i.r, 0
  br i1 %i.p, label %.lr.ph._crit_edge, label %.lr.ph413

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCsabk8e3lPnsy_20file_sharing_example.exit, %bb.a
  %.sroa.0.0.ph.lcssa139 = phi ptr [ %.sroa.0.0.ph148, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCsabk8e3lPnsy_20file_sharing_example.exit ], [ %0, %bb.a ], [ %i.ec, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCsabk8e3lPnsy_20file_sharing_example.exit ], [ %1, %bb.a ], [ %i.dn, %.outer ] ; 2 uses
  %i.q = icmp samesign ugt i64 %.sroa.16.0.lcssa, 1
  br i1 %i.q, label %bb.c, label %_RINvXNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtNtBb_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1n_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1p_9addresses9AddressesEENtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCNvXs4_B1n_INtB1n_11ClosestIterIB2e_INtNtB4B_3vec3VechEEB2d_B3j_NCINvMs1_B1n_INtB1n_13KBucketsTableB2d_B3j_E7closestB5J_E0B1i_ENtNtNtNtBb_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example.exit

bb.c:                                             ; preds = %.outer._crit_edge
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1N_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1P_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1m_7sort_byNCNvXs4_B1N_INtB1N_11ClosestIterIB2E_INtNtB4l_3vec3VechEEB2D_B3J_NCINvMs1_B1N_INtB1N_13KBucketsTableB2D_B3J_E7closestB5u_E0B1I_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa139, i64 noundef range(i64 0, 17) %.sroa.16.0.lcssa, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %_RINvXNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtNtBb_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1n_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1p_9addresses9AddressesEENtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCNvXs4_B1n_INtB1n_11ClosestIterIB2e_INtNtB4B_3vec3VechEEB2d_B3j_NCINvMs1_B1n_INtB1n_13KBucketsTableB2d_B3j_E7closestB5J_E0B1i_ENtNtNtNtBb_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example.exit

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0141.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph147, %.lr.ph ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1n_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1p_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCNvXs4_B1n_INtB1n_11ClosestIterIB2e_INtNtB3V_3vec3VechEEB2d_B3j_NCINvMs1_B1n_INtB1n_13KBucketsTableB2d_B3j_E7closestB53_E0B1i_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph148, i64 noundef %.sroa.16.0141.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %_RINvXNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtNtBb_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1n_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1p_9addresses9AddressesEENtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCNvXs4_B1n_INtB1n_11ClosestIterIB2e_INtNtB4B_3vec3VechEEB2d_B3j_NCINvMs1_B1n_INtB1n_13KBucketsTableB2d_B3j_E7closestB5J_E0B1i_ENtNtNtNtBb_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example.exit

.lr.ph413:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0140412 = phi i32 [ %i.r, %bb.b ], [ %.sroa.025.0.ph146, %.lr.ph ]
  %.sroa.16.0141411 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph147, %.lr.ph ] ; 21 uses
  %i.r = add i32 %.sroa.025.0140412, -1           ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !827)
  %i.s = lshr i64 %.sroa.16.0141411, 3            ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.s, 1312
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph148, i64 %.idx.i ; 6 uses
  %.idx2.i = mul nuw nsw i64 %i.s, 2296
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph148, i64 %.idx2.i ; 6 uses
  %i.v = icmp samesign ult i64 %.sroa.16.0141411, 64
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph413
  %i.w = call noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1v_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1x_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB14_7sort_byNCNvXs4_B1v_INtB1v_11ClosestIterIB2m_INtNtB43_3vec3VechEEB2l_B3r_NCINvMs1_B1v_INtB1v_13KBucketsTableB2l_B3r_E7closestB5c_E0B1q_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example(ptr noundef nonnull align 8 %.sroa.0.0.ph148, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, i64 noundef %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.p

bb.e:                                             ; preds = %.lr.ph413
  %.val4.i = load ptr, ptr %6, align 8, !alias.scope !827, !nonnull !6, !align !11, !noundef !6 ; 3 uses
  %.val.i.i = load ptr, ptr %.val4.i, align 8, !noalias !827 ; 2 uses
  %i.x = load i64, ptr %.sroa.0.0.ph148, align 8, !range !12, !noalias !827, !noundef !6
  %.not.i.i.i = icmp eq i64 %i.x, 2
  br i1 %.not.i.i.i, label %bb.g, label %bb.f, !prof !8

bb.f:                                             ; preds = %bb.e
  %i.y = load i64, ptr %i.t, align 8, !range !12, !noalias !827, !noundef !6
  %.not2.i.i.i = icmp eq i64 %i.y, 2
  br i1 %.not2.i.i.i, label %bb.h, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit.i, !prof !8

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #29, !noalias !827
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #29, !noalias !827
  unreachable

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit.i: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !827
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24 ; 2 uses
  %i.aa = call noundef nonnull ptr @_RNvXs_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entryINtB4_9EntryViewINtNtB6_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB8_9addresses9AddressesEINtNtCskKLDkoKarTP_4core7convert5AsRefNtB15_8KeyBytesE6as_refCsabk8e3lPnsy_20file_sharing_example(ptr noundef nonnull align 8 %.sroa.0.0.ph148), !noalias !827
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.aa), !noalias !827
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !827
  %i.ab = call noundef nonnull ptr @_RNvXs_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entryINtB4_9EntryViewINtNtB6_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB8_9addresses9AddressesEINtNtCskKLDkoKarTP_4core7convert5AsRefNtB15_8KeyBytesE6as_refCsabk8e3lPnsy_20file_sharing_example(ptr noundef nonnull align 8 %i.t), !noalias !827
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ab), !noalias !827
  %i.ac = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k), !noalias !827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !827
  %i.ad = icmp eq i8 %i.ac, -1                    ; 2 uses
  %.val.i5.i = load ptr, ptr %.val4.i, align 8, !noalias !827 ; 2 uses
  %i.ae = load i64, ptr %.sroa.0.0.ph148, align 8, !range !12, !noalias !827, !noundef !6
  %.not.i.i6.i = icmp eq i64 %i.ae, 2
  br i1 %.not.i.i6.i, label %bb.j, label %bb.i, !prof !8

bb.i:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit.i
  %i.af = load i64, ptr %i.u, align 8, !range !12, !noalias !827, !noundef !6
  %.not2.i.i7.i = icmp eq i64 %i.af, 2
  br i1 %.not2.i.i7.i, label %bb.k, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit8.i, !prof !8

bb.j:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit.i
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #29, !noalias !827
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #29, !noalias !827
  unreachable

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit8.i: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !827
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i5.i) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i5.i, i64 24 ; 2 uses
  %i.ah = call noundef nonnull ptr @_RNvXs_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entryINtB4_9EntryViewINtNtB6_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB8_9addresses9AddressesEINtNtCskKLDkoKarTP_4core7convert5AsRefNtB15_8KeyBytesE6as_refCsabk8e3lPnsy_20file_sharing_example(ptr noundef nonnull align 8 %.sroa.0.0.ph148), !noalias !827
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ah), !noalias !827
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !827
  %i.ai = call noundef nonnull ptr @_RNvXs_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entryINtB4_9EntryViewINtNtB6_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB8_9addresses9AddressesEINtNtCskKLDkoKarTP_4core7convert5AsRefNtB15_8KeyBytesE6as_refCsabk8e3lPnsy_20file_sharing_example(ptr noundef nonnull align 8 %i.u), !noalias !827
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ai), !noalias !827
  %i.aj = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i), !noalias !827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !827
  %i.ak = icmp eq i8 %i.aj, -1
  %i.al = xor i1 %i.ad, %i.ak
  br i1 %i.al, label %bb.p, label %bb.l

bb.l:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit8.i
  %.val.i9.i = load ptr, ptr %.val4.i, align 8, !noalias !827 ; 2 uses
  %i.am = load i64, ptr %i.t, align 8, !range !12, !noalias !827, !noundef !6
  %.not.i.i10.i = icmp eq i64 %i.am, 2
  br i1 %.not.i.i10.i, label %bb.n, label %bb.m, !prof !8

bb.m:                                             ; preds = %bb.l
  %i.an = load i64, ptr %i.u, align 8, !range !12, !noalias !827, !noundef !6
  %.not2.i.i11.i = icmp eq i64 %i.an, 2
  br i1 %.not2.i.i11.i, label %bb.o, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit12.i, !prof !8

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #29, !noalias !827
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #29, !noalias !827
  unreachable

_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit12.i: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !827
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i9.i) ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i9.i, i64 24 ; 2 uses
  %i.ap = call noundef nonnull ptr @_RNvXs_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entryINtB4_9EntryViewINtNtB6_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB8_9addresses9AddressesEINtNtCskKLDkoKarTP_4core7convert5AsRefNtB15_8KeyBytesE6as_refCsabk8e3lPnsy_20file_sharing_example(ptr noundef nonnull align 8 %i.t), !noalias !827
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ap), !noalias !827
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !827
  %i.aq = call noundef nonnull ptr @_RNvXs_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entryINtB4_9EntryViewINtNtB6_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB8_9addresses9AddressesEINtNtCskKLDkoKarTP_4core7convert5AsRefNtB15_8KeyBytesE6as_refCsabk8e3lPnsy_20file_sharing_example(ptr noundef nonnull align 8 %i.u), !noalias !827
  call void @_RINvMs8_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB6_8KeyBytes8distanceBM_ECsabk8e3lPnsy_20file_sharing_example(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.aq), !noalias !827
  %i.ar = call noundef range(i8 -1, 2) i8 @_RNvXsL_NtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3keyNtB5_4U256NtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g), !noalias !827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !827
  %i.as = icmp eq i8 %i.ar, -1
  %i.at = xor i1 %i.ad, %i.as
  %..i.i = select i1 %i.at, ptr %i.u, ptr %i.t
  br label %bb.p

_RINvXNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsortINtNtBb_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1n_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1p_9addresses9AddressesEENtB3_23StableSmallSortTypeImpl10small_sortNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCNvXs4_B1n_INtB1n_11ClosestIterIB2e_INtNtB4B_3vec3VechEEB2d_B3j_NCINvMs1_B1n_INtB1n_13KBucketsTableB2d_B3j_E7closestB5J_E0B1i_ENtNtNtNtBb_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example.exit: ; preds = %bb.ao, %bb.c, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.p:                                             ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit12.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit8.i, %bb.d
  %.sroa.0.0.i.sink.i = phi ptr [ %i.w, %bb.d ], [ %.sroa.0.0.ph148, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit8.i ], [ %..i.i, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit12.i ]
  %i.au = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.av = sub nuw i64 %i.au, %i.n                 ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.av, 328        ; 3 uses
  %i.aw = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.0141411
  call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph148, i64 %i.av ; 8 uses
  br i1 %.not, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val = load ptr, ptr %6, align 8, !nonnull !6, !align !11, !noundef !6
  %.val.i = load ptr, ptr %.val, align 8          ; 2 uses
  %i.ay = load i64, ptr %.sroa.028.0.ph145, align 8, !range !12, !noundef !6
  %.not.i.i = icmp eq i64 %i.ay, 2
  br i1 %.not.i.i, label %bb.s, label %bb.r, !prof !8

bb.r:                                             ; preds = %bb.q
  %i.az = load i64, ptr %i.ax, align 8, !range !12, !noundef !6
  %.not2.i.i = icmp eq i64 %i.az, 2
  br i1 %.not2.i.i, label %bb.t, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1f_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1h_9addresses9AddressesEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB26_INtNtB7_3vec3VechEEB25_B3b_NCINvMs1_B1f_INtB1f_13KBucketsTableB25_B3b_E7closestB4j_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example.exit, !prof !8

bb.s:                                             ; preds = %bb.q
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #29
  unreachable

bb.t:                                             ; preds = %bb.r
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v2i64
!480 = distinct !{!480, !479, !"_RNvMsS_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1I_5query5peers7closest4PeerNtB1m_8InternalENtB1m_2KVE10replace_kvCsabk8e3lPnsy_20file_sharing_example: argument 1"}
!481 = distinct !{!481, !479, !"_RNvMsS_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1I_5query5peers7closest4PeerNtB1m_8InternalENtB1m_2KVE10replace_kvCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!482 = distinct !{!482, i1 true, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node9slice_shrINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB26_5query5peers7closest4PeerEEECsabk8e3lPnsy_20file_sharing_example"}
!483 = distinct !{!483, !482, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node9slice_shrINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB26_5query5peers7closest4PeerEEECsabk8e3lPnsy_20file_sharing_example: argument 0"}
!484 = distinct !{!484, i1 true, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB2b_5query5peers7closest4PeerEEECsabk8e3lPnsy_20file_sharing_example"}
!485 = distinct !{!485, !484, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB2b_5query5peers7closest4PeerEEECsabk8e3lPnsy_20file_sharing_example: argument 1"}
!486 = distinct !{!486, !484, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB2b_5query5peers7closest4PeerEEECsabk8e3lPnsy_20file_sharing_example: argument 0"}
!487 = distinct !{!487, i1 true, !"_RNvMse_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1v_5query5peers7closest4PeerNtB19_14LeafOrInternalE6ascendCsabk8e3lPnsy_20file_sharing_example"}
!488 = distinct !{!488, !487, !"_RNvMse_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1v_5query5peers7closest4PeerNtB19_14LeafOrInternalE6ascendCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!489 = distinct !{!489, i1 true, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1J_5query5peers7closest4PeerNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsabk8e3lPnsy_20file_sharing_example"}
!490 = distinct !{!490, !489, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1J_5query5peers7closest4PeerNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsabk8e3lPnsy_20file_sharing_example: argument 0"}
!491 = distinct !{!491, i1 true, !"_RINvMs9_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1y_5query5peers7closest4PeerNtB1a_8InternalE17from_new_internalNtNtBc_5alloc6GlobalECsabk8e3lPnsy_20file_sharing_example"}
!492 = distinct !{!492, !491, !"_RINvMs9_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1y_5query5peers7closest4PeerNtB1a_8InternalE17from_new_internalNtNtBc_5alloc6GlobalECsabk8e3lPnsy_20file_sharing_example: argument 0"}
!493 = distinct !{!493, i1 true, !"_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1w_5query5peers7closest4PeerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEECsabk8e3lPnsy_20file_sharing_example"}
!494 = distinct !{!494, !493, !"_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1w_5query5peers7closest4PeerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEECsabk8e3lPnsy_20file_sharing_example: argument 0"}
!495 = distinct !{!495, i1 true, !"_RNvMsv_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1v_5query5peers7closest4PeerNtB19_8InternalE4pushCsabk8e3lPnsy_20file_sharing_example"}
!496 = distinct !{!496, !495, !"_RNvMsv_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1v_5query5peers7closest4PeerNtB19_8InternalE4pushCsabk8e3lPnsy_20file_sharing_example: argument 1"}
!497 = distinct !{!497, !495, !"_RNvMsv_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1v_5query5peers7closest4PeerNtB19_8InternalE4pushCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!498 = distinct !{!498, i1 true, !"_RNvMsn_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1H_5query5peers7closest4PeerNtB1k_14LeafOrInternalE14last_leaf_edgeCsabk8e3lPnsy_20file_sharing_example"}
!499 = distinct !{!499, !498, !"_RNvMsn_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1H_5query5peers7closest4PeerNtB1k_14LeafOrInternalE14last_leaf_edgeCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!500 = distinct !{!500, !7}
!501 = distinct !{!501, i1 true, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1J_5query5peers7closest4PeerNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsabk8e3lPnsy_20file_sharing_example"}
!502 = distinct !{!502, !501, !"_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1J_5query5peers7closest4PeerNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsabk8e3lPnsy_20file_sharing_example: argument 0"}
!503 = distinct !{!503, i1 true, !"_RINvMs9_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1y_5query5peers7closest4PeerNtB1a_8InternalE17from_new_internalNtNtBc_5alloc6GlobalECsabk8e3lPnsy_20file_sharing_example"}
!504 = distinct !{!504, !503, !"_RINvMs9_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1y_5query5peers7closest4PeerNtB1a_8InternalE17from_new_internalNtNtBc_5alloc6GlobalECsabk8e3lPnsy_20file_sharing_example: argument 0"}
!505 = distinct !{!505, i1 true, !"_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1w_5query5peers7closest4PeerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEECsabk8e3lPnsy_20file_sharing_example"}
!506 = distinct !{!506, !505, !"_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1w_5query5peers7closest4PeerNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEECsabk8e3lPnsy_20file_sharing_example: argument 0"}
!507 = distinct !{!507, i1 true, !"_RNvMsu_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1v_5query5peers7closest4PeerNtB19_4LeafE16push_with_handleCsabk8e3lPnsy_20file_sharing_example"}
!508 = distinct !{!508, !507, !"_RNvMsu_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1v_5query5peers7closest4PeerNtB19_4LeafE16push_with_handleCsabk8e3lPnsy_20file_sharing_example: argument 3"}
!509 = distinct !{!509, !507, !"_RNvMsu_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1v_5query5peers7closest4PeerNtB19_4LeafE16push_with_handleCsabk8e3lPnsy_20file_sharing_example: argument 2"}
!510 = distinct !{!510, !507, !"_RNvMsu_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1v_5query5peers7closest4PeerNtB19_4LeafE16push_with_handleCsabk8e3lPnsy_20file_sharing_example: argument 1"}
!511 = distinct !{!511, !507, !"_RNvMsu_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1v_5query5peers7closest4PeerNtB19_4LeafE16push_with_handleCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!512 = !{!451, !450, !449}
!513 = !{!451, !449}
!514 = !{!453}
!515 = !{!454, !453, !451, !450, !449}
!516 = !{!454, !451, !450, !449}
!517 = !{!456}
!518 = !{!456, !453}
!519 = !{!456, !454, !453, !451, !450, !449}
!520 = !{!458}
!521 = !{!459}
!522 = !{!461}
!523 = !{!463}
!524 = !{!463, !461, !459, !453}
!525 = !{!463, !461, !458, !459, !454, !453, !451, !450, !449}
!526 = !{!458, !453}
!527 = !{!466, !465, !451, !450, !449}
!528 = !{!468, !451, !450, !449}
!529 = !{!470}
!530 = !{!472}
!531 = !{!475, !474}
!532 = !{!478, !477}
!533 = !{!481, !480, !468, !451, !450, !449}
!534 = !{!483}
!535 = !{!486, !485}
!536 = !{!488, !451, !450, !449}
!537 = !{!490, !451, !450, !449}
!538 = !{!494, !492, !490, !451, !450, !449}
!539 = !{!494, !490, !451, !450, !449}
!540 = !{!497, !496, !451, !450, !449}
!541 = !{!497, !451, !450, !449}
!542 = !{!499, !451, !450, !449}
!543 = !{!502, !451, !450, !449}
!544 = !{!506, !504, !502, !451, !450, !449}
!545 = !{!506, !502, !451, !450, !449}
!546 = !{!511, !510, !509, !508, !451, !450, !449}
!547 = !{!511, !510, !509, !451, !450, !449}
!548 = distinct !{!548, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsabk8e3lPnsy_20file_sharing_example"}
!549 = distinct !{!549, !548, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECsabk8e3lPnsy_20file_sharing_example: argument 0"}
!550 = distinct !{!550, i1 true, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!551 = distinct !{!551, !550, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!552 = distinct !{null, null}
!553 = !{!549}
!554 = !{!551}
!555 = !{!551, !549}
!556 = !{i64 0, i64 -9223372036854775802}
!557 = !{i64 0, i64 -9223372036854775808}
!558 = !{i64 1, i64 536870913}
!559 = distinct !{!559, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskeoOuuhwsQF_12sharded_slab4pool4PoolNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerEECsabk8e3lPnsy_20file_sharing_example"}
!560 = distinct !{!560, !559, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskeoOuuhwsQF_12sharded_slab4pool4PoolNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerEECsabk8e3lPnsy_20file_sharing_example: argument 0"}
!561 = distinct !{!561, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskeoOuuhwsQF_12sharded_slab5shard5ArrayNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBG_3cfg13DefaultConfigEECsabk8e3lPnsy_20file_sharing_example"}
!562 = distinct !{!562, !561, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCskeoOuuhwsQF_12sharded_slab5shard5ArrayNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBG_3cfg13DefaultConfigEECsabk8e3lPnsy_20file_sharing_example: argument 0"}
!563 = !{!562, !560}
!564 = distinct !{!564, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterB1r_B1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4t_E12closest_keysB1r_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example"}
!565 = distinct !{!565, !564, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterB1r_B1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4t_E12closest_keysB1r_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example: argument 0"}
!566 = distinct !{!566, !564, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterB1r_B1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4t_E12closest_keysB1r_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example: argument 1"}
!567 = distinct !{!567, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example"}
!568 = distinct !{!568, !567, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example: argument 0"}
!569 = distinct !{!569, !567, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example: argument 1"}
!570 = distinct !{!570, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example"}
!571 = distinct !{!571, !570, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example: argument 0"}
!572 = distinct !{!572, !570, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example: argument 1"}
!573 = distinct !{!573, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example"}
!574 = distinct !{!574, !573, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example: argument 1"}
!575 = distinct !{!575, !573, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example: argument 0"}
!576 = distinct !{!576, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example"}
!577 = distinct !{!577, !576, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example: argument 1"}
!578 = distinct !{!578, !576, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example: argument 0"}
!579 = distinct !{!579, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example"}
!580 = distinct !{!580, !579, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example: argument 1"}
!581 = distinct !{!581, !579, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example: argument 0"}
!582 = distinct !{!582, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example"}
!583 = distinct !{!583, !582, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example: argument 1"}
!584 = distinct !{!584, !582, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example: argument 0"}
!585 = distinct !{!585, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example"}
!586 = distinct !{!586, !585, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example: argument 0"}
!587 = distinct !{!587, !585, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example: argument 1"}
!588 = distinct !{!588, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example"}
!589 = distinct !{!589, !588, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example: argument 0"}
!590 = distinct !{!590, !588, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example: argument 1"}
!591 = distinct !{!591, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4B_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example"}
!592 = distinct !{!592, !591, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4B_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example: argument 0"}
!593 = distinct !{!593, !591, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4B_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example: argument 1"}
!594 = distinct !{!594, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example"}
!595 = distinct !{!595, !594, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example: argument 0"}
!596 = distinct !{!596, !594, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example: argument 1"}
!597 = distinct !{!597, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example"}
!598 = distinct !{!598, !597, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example: argument 0"}
!599 = distinct !{!599, !597, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example: argument 1"}
!600 = distinct !{!600, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCsabk8e3lPnsy_20file_sharing_example"}
!601 = distinct !{!601, !600, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!602 = distinct !{!602, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCsabk8e3lPnsy_20file_sharing_example"}
!603 = distinct !{!603, !602, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!604 = distinct !{!604, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCsabk8e3lPnsy_20file_sharing_example"}
!605 = distinct !{!605, !604, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCsabk8e3lPnsy_20file_sharing_example: argument 1"}
!606 = distinct !{!606, !604, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!607 = distinct !{!607, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECsabk8e3lPnsy_20file_sharing_example"}
!608 = distinct !{!608, !607, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECsabk8e3lPnsy_20file_sharing_example: argument 0"}
!609 = distinct !{!609, !607, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterB1z_B1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4X_E12closest_keysB1z_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECsabk8e3lPnsy_20file_sharing_example: argument 1"}
!610 = distinct !{!610, i1 true, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Csabk8e3lPnsy_20file_sharing_example"}
!611 = distinct !{!611, !610, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Csabk8e3lPnsy_20file_sharing_example: argument 1"}
!612 = distinct !{!612, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example"}
!613 = distinct !{!613, !612, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example: argument 0"}
!614 = distinct !{!614, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example"}
!615 = distinct !{!615, !614, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example: argument 0"}
!616 = distinct !{!616, !610, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterB1t_B1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4v_E12closest_keysB1t_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Csabk8e3lPnsy_20file_sharing_example: argument 0"}
!617 = distinct !{!617, !612, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterB1a_B1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3z_E12closest_keysB1a_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example: argument 1"}
!618 = distinct !{!618, !614, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB10_NtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB10_B29_E12closest_keysB10_E0B10_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example: argument 1"}
!619 = distinct !{!619, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCsabk8e3lPnsy_20file_sharing_example"}
!620 = distinct !{!620, !619, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!621 = distinct !{!621, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCsabk8e3lPnsy_20file_sharing_example"}
!622 = distinct !{!622, !621, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!623 = !{!565}
!624 = !{!566}
!625 = !{!568}
!626 = !{!569}
!627 = !{!568, !569, !565, !566}
!628 = !{!571}
!629 = !{!572}
!630 = !{!571, !568, !565}
!631 = !{!572, !569, !565}
!632 = !{!571, !572, !568, !569, !565, !566}
!633 = !{!572, !569, !566}
!634 = !{!574}
!635 = !{!575, !574, !566}
!636 = !{!577}
!637 = !{!577, !574, !565}
!638 = !{!578, !577, !575, !574, !566}
!639 = !{!578, !577, !575, !574, !565, !566}
!640 = !{!577, !574, !566}
!641 = !{!581, !580, !566}
!642 = !{!584, !583, !581, !580, !565, !566}
!643 = !{!583, !580, !566}
!644 = !{!586}
!645 = !{!587}
!646 = !{!586, !587}
!647 = !{!589}
!648 = !{!590}
!649 = !{!589, !586}
!650 = !{!590, !587}
!651 = !{!589, !590, !586, !587}
!652 = !{!592}
!653 = !{!593}
!654 = !{!595}
!655 = !{!596}
!656 = !{!595, !596, !592, !593}
!657 = !{!598}
!658 = !{!599}
!659 = !{!598, !595, !592}
!660 = !{!599, !596, !592}
!661 = !{!598, !599, !595, !596, !593}
!662 = !{!598, !599, !595, !596, !592, !593}
!663 = !{!599, !596, !593}
!664 = !{!592, !593}
!665 = !{!601}
!666 = !{!603}
!667 = !{!606, !605}
!668 = !{!608}
!669 = !{!609}
!670 = !{!615, !613, !611, !608}
!671 = !{!616}
!672 = !{!611}
!673 = !{!616, !611, !608, !609}
!674 = !{!613}
!675 = !{!617}
!676 = !{!613, !617, !616, !611, !609}
!677 = !{!615}
!678 = !{!618}
!679 = !{!618, !617, !616, !608}
!680 = !{!615, !618, !613, !617, !616, !611, !608, !609}
!681 = !{!618, !617, !616, !609}
!682 = !{!608, !609}
!683 = !{!620}
!684 = !{!615, !618, !613, !617, !616, !611, !609}
!685 = !{!622}
!686 = distinct !{!686, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB1s_NtNtB1y_6record3KeyEB1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4O_E12closest_keysB4l_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example"}
!687 = distinct !{!687, !686, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB1s_NtNtB1y_6record3KeyEB1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4O_E12closest_keysB4l_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example: argument 0"}
!688 = distinct !{!688, !686, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB1s_NtNtB1y_6record3KeyEB1r_NtNtB1y_9addresses9AddressesNCINvMs1_B1w_INtB1w_13KBucketsTableB1r_B4O_E12closest_keysB4l_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example: argument 1"}
!689 = distinct !{!689, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example"}
!690 = distinct !{!690, !689, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example: argument 0"}
!691 = distinct !{!691, !689, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example: argument 1"}
!692 = distinct !{!692, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example"}
!693 = distinct !{!693, !692, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example: argument 0"}
!694 = distinct !{!694, !692, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example: argument 1"}
!695 = distinct !{!695, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example"}
!696 = distinct !{!696, !695, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example: argument 1"}
!697 = distinct !{!697, !695, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example: argument 0"}
!698 = distinct !{!698, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example"}
!699 = distinct !{!699, !698, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example: argument 1"}
!700 = distinct !{!700, !698, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example: argument 0"}
!701 = distinct !{!701, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example"}
!702 = distinct !{!702, !701, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example: argument 1"}
!703 = distinct !{!703, !701, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example: argument 0"}
!704 = distinct !{!704, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example"}
!705 = distinct !{!705, !704, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example: argument 1"}
!706 = distinct !{!706, !704, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example: argument 0"}
!707 = distinct !{!707, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example"}
!708 = distinct !{!708, !707, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example: argument 0"}
!709 = distinct !{!709, !707, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example: argument 1"}
!710 = distinct !{!710, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example"}
!711 = distinct !{!711, !710, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example: argument 0"}
!712 = distinct !{!712, !710, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example: argument 1"}
!713 = distinct !{!713, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4W_E12closest_keysB4t_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example"}
!714 = distinct !{!714, !713, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4W_E12closest_keysB4t_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example: argument 0"}
!715 = distinct !{!715, !713, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B4W_E12closest_keysB4t_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example: argument 1"}
!716 = distinct !{!716, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example"}
!717 = distinct !{!717, !716, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example: argument 0"}
!718 = distinct !{!718, !716, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example: argument 1"}
!719 = distinct !{!719, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example"}
!720 = distinct !{!720, !719, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example: argument 0"}
!721 = distinct !{!721, !719, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example: argument 1"}
!722 = distinct !{!722, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCsabk8e3lPnsy_20file_sharing_example"}
!723 = distinct !{!723, !722, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!724 = distinct !{!724, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCsabk8e3lPnsy_20file_sharing_example"}
!725 = distinct !{!725, !724, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!726 = distinct !{!726, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCsabk8e3lPnsy_20file_sharing_example"}
!727 = distinct !{!727, !726, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCsabk8e3lPnsy_20file_sharing_example: argument 1"}
!728 = distinct !{!728, !726, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE12split_at_mutCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!729 = distinct !{!729, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECsabk8e3lPnsy_20file_sharing_example"}
!730 = distinct !{!730, !729, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECsabk8e3lPnsy_20file_sharing_example: argument 0"}
!731 = distinct !{!731, !729, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB1A_NtNtB1G_6record3KeyEB1z_NtNtB1G_9addresses9AddressesNCINvMs1_B1E_INtB1E_13KBucketsTableB1z_B5i_E12closest_keysB4P_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECsabk8e3lPnsy_20file_sharing_example: argument 1"}
!732 = distinct !{!732, i1 true, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Csabk8e3lPnsy_20file_sharing_example"}
!733 = distinct !{!733, !732, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Csabk8e3lPnsy_20file_sharing_example: argument 1"}
!734 = distinct !{!734, i1 true, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example"}
!735 = distinct !{!735, !734, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example: argument 0"}
!736 = distinct !{!736, i1 true, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example"}
!737 = distinct !{!737, !736, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example: argument 0"}
!738 = distinct !{!738, !732, !"_RNCINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB17_7sort_byNCNvXs4_B1y_INtB1y_11ClosestIterIB1u_NtNtB1A_6record3KeyEB1t_NtNtB1A_9addresses9AddressesNCINvMs1_B1y_INtB1y_13KBucketsTableB1t_B4Q_E12closest_keysB4n_E0B1t_ENtNtNtNtBc_4iter6traits8iterator8Iterator4nexts_0E0E0Csabk8e3lPnsy_20file_sharing_example: argument 0"}
!739 = distinct !{!739, !734, !"_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEE7sort_byNCNvXs4_B1f_INtB1f_11ClosestIterIB1b_NtNtB1h_6record3KeyEB1a_NtNtB1h_9addresses9AddressesNCINvMs1_B1f_INtB1f_13KBucketsTableB1a_B3U_E12closest_keysB3r_E0B1a_ENtNtNtNtBD_4iter6traits8iterator8Iterator4nexts_0E0Csabk8e3lPnsy_20file_sharing_example: argument 1"}
!740 = distinct !{!740, !736, !"_RNCNvXs4_NtCskC4O4hr3vz7_10libp2p_kad7kbucketINtB7_11ClosestIterINtNtB7_3key3KeyNtNtB9_6record3KeyEIB11_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB9_9addresses9AddressesNCINvMs1_B7_INtB7_13KBucketsTableB1z_B2t_E12closest_keysB10_E0B1z_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nexts_0Csabk8e3lPnsy_20file_sharing_example: argument 1"}
!741 = distinct !{!741, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCsabk8e3lPnsy_20file_sharing_example"}
!742 = distinct !{!742, !741, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!743 = distinct !{!743, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCsabk8e3lPnsy_20file_sharing_example"}
!744 = distinct !{!744, !743, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEEE13partition_oneCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!745 = !{!687}
!746 = !{!688}
!747 = !{!690}
!748 = !{!691}
!749 = !{!690, !691, !687, !688}
!750 = !{!693}
!751 = !{!694}
!752 = !{!693, !690, !687}
!753 = !{!694, !691, !687}
!754 = !{!693, !694, !690, !691, !687, !688}
!755 = !{!694, !691, !688}
!756 = !{!696}
!757 = !{!697, !696, !688}
!758 = !{!699}
!759 = !{!699, !696, !687}
!760 = !{!700, !699, !697, !696, !688}
!761 = !{!700, !699, !697, !696, !687, !688}
!762 = !{!699, !696, !688}
!763 = !{!703, !702, !688}
!764 = !{!706, !705, !703, !702, !687, !688}
!765 = !{!705, !702, !688}
!766 = !{!708}
!767 = !{!709}
!768 = !{!708, !709}
!769 = !{!711}
!770 = !{!712}
!771 = !{!711, !708}
!772 = !{!712, !709}
!773 = !{!711, !712, !708, !709}
!774 = !{!714}
!775 = !{!715}
!776 = !{!717}
!777 = !{!718}
!778 = !{!717, !718, !714, !715}
!779 = !{!720}
!780 = !{!721}
!781 = !{!720, !717, !714}
!782 = !{!721, !718, !714}
!783 = !{!720, !721, !717, !718, !715}
!784 = !{!720, !721, !717, !718, !714, !715}
!785 = !{!721, !718, !715}
!786 = !{!714, !715}
!787 = !{!723}
!788 = !{!725}
!789 = !{!728, !727}
!790 = !{!730}
!791 = !{!731}
!792 = !{!737, !735, !733, !730}
!793 = !{!738}
!794 = !{!733}
!795 = !{!738, !733, !730, !731}
!796 = !{!735}
!797 = !{!739}
!798 = !{!735, !739, !738, !733, !731}
!799 = !{!737}
!800 = !{!740}
!801 = !{!740, !739, !738, !730}
!802 = !{!737, !740, !735, !739, !738, !733, !730, !731}
!803 = !{!740, !739, !738, !731}
!804 = !{!730, !731}
!805 = !{!742}
!806 = !{!737, !740, !735, !739, !738, !733, !731}
!807 = !{!744}
!808 = distinct !{!808, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1w_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1y_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB2n_INtNtB44_3vec3VechEEB2m_B3s_NCINvMs1_B1w_INtB1w_13KBucketsTableB2m_B3s_E7closestB5d_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example"}
!809 = distinct !{!809, !808, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1w_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1y_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB2n_INtNtB44_3vec3VechEEB2m_B3s_NCINvMs1_B1w_INtB1w_13KBucketsTableB2m_B3s_E7closestB5d_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example: argument 0"}
!810 = distinct !{!810, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_INtNtB4c_3vec3VechEEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5l_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example"}
!811 = distinct !{!811, !810, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_INtNtB4c_3vec3VechEEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5l_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example: argument 0"}
!812 = distinct !{!812, !810, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_INtNtB4c_3vec3VechEEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5l_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example: argument 1"}
!813 = distinct !{!813, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCsabk8e3lPnsy_20file_sharing_example"}
!814 = distinct !{!814, !813, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!815 = distinct !{!815, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCsabk8e3lPnsy_20file_sharing_example"}
!816 = distinct !{!816, !815, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!817 = distinct !{!817, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCsabk8e3lPnsy_20file_sharing_example"}
!818 = distinct !{!818, !817, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCsabk8e3lPnsy_20file_sharing_example: argument 1"}
!819 = distinct !{!819, !817, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!820 = distinct !{!820, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_INtNtB4y_3vec3VechEEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5H_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECsabk8e3lPnsy_20file_sharing_example"}
!821 = distinct !{!821, !820, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_INtNtB4y_3vec3VechEEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5H_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECsabk8e3lPnsy_20file_sharing_example: argument 0"}
!822 = distinct !{!822, !820, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_INtNtB4y_3vec3VechEEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5H_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECsabk8e3lPnsy_20file_sharing_example: argument 1"}
!823 = distinct !{!823, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCsabk8e3lPnsy_20file_sharing_example"}
!824 = distinct !{!824, !823, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!825 = distinct !{!825, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCsabk8e3lPnsy_20file_sharing_example"}
!826 = distinct !{!826, !825, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!827 = !{!809}
!828 = !{!811}
!829 = !{!812}
!830 = !{!811, !812}
!831 = !{!814}
!832 = !{!816}
!833 = !{!819, !818}
!834 = !{!821}
!835 = !{!822}
!836 = !{!821, !822}
!837 = !{!824}
!838 = !{!826}
!839 = distinct !{!839, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1w_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1y_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB2n_NtNtB1y_6record3KeyEB2m_B3s_NCINvMs1_B1w_INtB1w_13KBucketsTableB2m_B3s_E7closestB5d_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example"}
!840 = distinct !{!840, !839, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1w_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1y_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvXs4_B1w_INtB1w_11ClosestIterIB2n_NtNtB1y_6record3KeyEB2m_B3s_NCINvMs1_B1w_INtB1w_13KBucketsTableB2m_B3s_E7closestB5d_E0B1r_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example: argument 0"}
!841 = distinct !{!841, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_NtNtB1G_6record3KeyEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5l_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example"}
!842 = distinct !{!842, !841, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_NtNtB1G_6record3KeyEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5l_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example: argument 0"}
!843 = distinct !{!843, !841, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_NtNtB1G_6record3KeyEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5l_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0ECsabk8e3lPnsy_20file_sharing_example: argument 1"}
!844 = distinct !{!844, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCsabk8e3lPnsy_20file_sharing_example"}
!845 = distinct !{!845, !844, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!846 = distinct !{!846, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCsabk8e3lPnsy_20file_sharing_example"}
!847 = distinct !{!847, !846, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!848 = distinct !{!848, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCsabk8e3lPnsy_20file_sharing_example"}
!849 = distinct !{!849, !848, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCsabk8e3lPnsy_20file_sharing_example: argument 1"}
!850 = distinct !{!850, !848, !"_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtB4_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtBV_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtBX_9addresses9AddressesEE12split_at_mutCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!851 = distinct !{!851, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_NtNtB1G_6record3KeyEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5H_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECsabk8e3lPnsy_20file_sharing_example"}
!852 = distinct !{!852, !851, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_NtNtB1G_6record3KeyEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5H_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECsabk8e3lPnsy_20file_sharing_example: argument 0"}
!853 = distinct !{!853, !851, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1E_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1G_9addresses9AddressesEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCNvXs4_B1E_INtB1E_11ClosestIterIB2v_NtNtB1G_6record3KeyEB2u_B3A_NCINvMs1_B1E_INtB1E_13KBucketsTableB2u_B3A_E7closestB5H_E0B1z_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nexts_0E0E0ECsabk8e3lPnsy_20file_sharing_example: argument 1"}
!854 = distinct !{!854, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCsabk8e3lPnsy_20file_sharing_example"}
!855 = distinct !{!855, !854, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!856 = distinct !{!856, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCsabk8e3lPnsy_20file_sharing_example"}
!857 = distinct !{!857, !856, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateINtNtBa_6option6OptionINtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket5entry9EntryViewINtNtB1I_3key3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1K_9addresses9AddressesEEE13partition_oneCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!858 = !{!840}
!859 = !{!842}
!860 = !{!843}
!861 = !{!842, !843}
!862 = !{!845}
!863 = !{!847}
!864 = !{!850, !849}
!865 = !{!852}
!866 = !{!853}
!867 = !{!852, !853}
!868 = !{!855}
!869 = !{!857}
!870 = distinct !{!870, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1c_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapB16_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4x_8adapters4take4TakeINtNtB5u_3map3MapINtB1a_11ClosestIterINtB18_3KeyNtNtB1c_6record3KeyEIB6v_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1c_9addresses9AddressesNCINvMs1_B1a_INtB1a_13KBucketsTableB6Z_B7T_E12closest_keysB6u_E0B6Z_ENCINvMs_B1Z_NtB1Z_16ClosestPeersIter11with_configB6a_B6u_E0EEE0E0ECsabk8e3lPnsy_20file_sharing_example"}
!871 = distinct !{!871, !870, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1c_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapB16_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4x_8adapters4take4TakeINtNtB5u_3map3MapINtB1a_11ClosestIterINtB18_3KeyNtNtB1c_6record3KeyEIB6v_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1c_9addresses9AddressesNCINvMs1_B1a_INtB1a_13KBucketsTableB6Z_B7T_E12closest_keysB6u_E0B6Z_ENCINvMs_B1Z_NtB1Z_16ClosestPeersIter11with_configB6a_B6u_E0EEE0E0ECsabk8e3lPnsy_20file_sharing_example: argument 1"}
!872 = distinct !{!872, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtB1k_6record3KeyEIB6D_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB77_B81_E12closest_keysB6C_E0B77_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6i_B6C_E0EEE0E0ECsabk8e3lPnsy_20file_sharing_example"}
!873 = distinct !{!873, !872, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtB1k_6record3KeyEIB6D_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB77_B81_E12closest_keysB6C_E0B77_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6i_B6C_E0EEE0E0ECsabk8e3lPnsy_20file_sharing_example: argument 1"}
!874 = distinct !{!874, !872, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtB1k_6record3KeyEIB6D_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB77_B81_E12closest_keysB6C_E0B77_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6i_B6C_E0EEE0E0ECsabk8e3lPnsy_20file_sharing_example: argument 0"}
!875 = distinct !{!875, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCsabk8e3lPnsy_20file_sharing_example"}
!876 = distinct !{!876, !875, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!877 = distinct !{!877, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCsabk8e3lPnsy_20file_sharing_example"}
!878 = distinct !{!878, !877, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!879 = distinct !{!879, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCsabk8e3lPnsy_20file_sharing_example"}
!880 = distinct !{!880, !879, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCsabk8e3lPnsy_20file_sharing_example: argument 1"}
!881 = distinct !{!881, !879, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!882 = distinct !{!882, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtB1k_6record3KeyEIB6Z_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB7t_B8n_E12closest_keysB6Y_E0B7t_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6E_B6Y_E0EEE0E0E0ECsabk8e3lPnsy_20file_sharing_example"}
!883 = distinct !{!883, !882, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtB1k_6record3KeyEIB6Z_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB7t_B8n_E12closest_keysB6Y_E0B7t_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6E_B6Y_E0EEE0E0E0ECsabk8e3lPnsy_20file_sharing_example: argument 1"}
!884 = distinct !{!884, !882, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtB1k_6record3KeyEIB6Z_NtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdENtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB7t_B8n_E12closest_keysB6Y_E0B7t_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6E_B6Y_E0EEE0E0E0ECsabk8e3lPnsy_20file_sharing_example: argument 0"}
!885 = distinct !{!885, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCsabk8e3lPnsy_20file_sharing_example"}
!886 = distinct !{!886, !885, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!887 = distinct !{!887, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCsabk8e3lPnsy_20file_sharing_example"}
!888 = distinct !{!888, !887, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!889 = !{!871}
!890 = !{!873}
!891 = !{!874, !873}
!892 = !{!876}
!893 = !{!878}
!894 = !{!881, !880}
!895 = !{!883}
!896 = !{!884, !883}
!897 = !{!886}
!898 = !{!888}
!899 = distinct !{!899, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1c_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapB16_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4x_8adapters4take4TakeINtNtB5u_3map3MapINtB1a_11ClosestIterINtB18_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB6u_NtNtB1c_9addresses9AddressesNCINvMs1_B1a_INtB1a_13KBucketsTableB6u_B7y_E12closest_keysB6u_E0B6u_ENCINvMs_B1Z_NtB1Z_16ClosestPeersIter11with_configB6a_B6u_E0EEE0E0ECsabk8e3lPnsy_20file_sharing_example"}
!900 = distinct !{!900, !899, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1c_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapB16_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4x_8adapters4take4TakeINtNtB5u_3map3MapINtB1a_11ClosestIterINtB18_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB6u_NtNtB1c_9addresses9AddressesNCINvMs1_B1a_INtB1a_13KBucketsTableB6u_B7y_E12closest_keysB6u_E0B6u_ENCINvMs_B1Z_NtB1Z_16ClosestPeersIter11with_configB6a_B6u_E0EEE0E0ECsabk8e3lPnsy_20file_sharing_example: argument 1"}
!901 = distinct !{!901, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB6C_NtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB6C_B7G_E12closest_keysB6C_E0B6C_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6i_B6C_E0EEE0E0ECsabk8e3lPnsy_20file_sharing_example"}
!902 = distinct !{!902, !901, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB6C_NtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB6C_B7G_E12closest_keysB6C_E0B6C_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6i_B6C_E0EEE0E0ECsabk8e3lPnsy_20file_sharing_example: argument 1"}
!903 = distinct !{!903, !901, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB6C_NtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB6C_B7G_E12closest_keysB6C_E0B6C_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6i_B6C_E0EEE0E0ECsabk8e3lPnsy_20file_sharing_example: argument 0"}
!904 = distinct !{!904, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCsabk8e3lPnsy_20file_sharing_example"}
!905 = distinct !{!905, !904, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!906 = distinct !{!906, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCsabk8e3lPnsy_20file_sharing_example"}
!907 = distinct !{!907, !906, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!908 = distinct !{!908, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCsabk8e3lPnsy_20file_sharing_example"}
!909 = distinct !{!909, !908, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCsabk8e3lPnsy_20file_sharing_example: argument 1"}
!910 = distinct !{!910, !908, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!911 = distinct !{!911, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB6Y_NtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB6Y_B82_E12closest_keysB6Y_E0B6Y_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6E_B6Y_E0EEE0E0E0ECsabk8e3lPnsy_20file_sharing_example"}
!912 = distinct !{!912, !911, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB6Y_NtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB6Y_B82_E12closest_keysB6Y_E0B6Y_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6E_B6Y_E0EEE0E0E0ECsabk8e3lPnsy_20file_sharing_example: argument 1"}
!913 = distinct !{!913, !911, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtB1i_11ClosestIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEB6Y_NtNtB1k_9addresses9AddressesNCINvMs1_B1i_INtB1i_13KBucketsTableB6Y_B82_E12closest_keysB6Y_E0B6Y_ENCINvMs_B27_NtB27_16ClosestPeersIter11with_configB6E_B6Y_E0EEE0E0E0ECsabk8e3lPnsy_20file_sharing_example: argument 0"}
!914 = distinct !{!914, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCsabk8e3lPnsy_20file_sharing_example"}
!915 = distinct !{!915, !914, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!916 = distinct !{!916, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCsabk8e3lPnsy_20file_sharing_example"}
!917 = distinct !{!917, !916, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!918 = !{!900}
!919 = !{!902}
!920 = !{!903, !902}
!921 = !{!905}
!922 = !{!907}
!923 = !{!910, !909}
!924 = !{!912}
!925 = !{!913, !912}
!926 = !{!915}
!927 = !{!917}
!928 = distinct !{!928, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1c_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapB16_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4x_8adapters4take4TakeINtNtB5u_3map3MapINtNtNtB2H_3vec9into_iter8IntoIterINtB18_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B1Z_NtB1Z_16ClosestPeersIter11with_configINtB6f_3VecB6I_EB6I_E0EEE0E0ECsabk8e3lPnsy_20file_sharing_example"}
!929 = distinct !{!929, !928, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1c_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapB16_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4x_8adapters4take4TakeINtNtB5u_3map3MapINtNtNtB2H_3vec9into_iter8IntoIterINtB18_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B1Z_NtB1Z_16ClosestPeersIter11with_configINtB6f_3VecB6I_EB6I_E0EEE0E0ECsabk8e3lPnsy_20file_sharing_example: argument 1"}
!930 = distinct !{!930, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtNtNtB2P_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6n_3VecB6Q_EB6Q_E0EEE0E0ECsabk8e3lPnsy_20file_sharing_example"}
!931 = distinct !{!931, !930, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtNtNtB2P_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6n_3VecB6Q_EB6Q_E0EEE0E0ECsabk8e3lPnsy_20file_sharing_example: argument 1"}
!932 = distinct !{!932, !930, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtNtNtB2P_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6n_3VecB6Q_EB6Q_E0EEE0E0ECsabk8e3lPnsy_20file_sharing_example: argument 0"}
!933 = distinct !{!933, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCsabk8e3lPnsy_20file_sharing_example"}
!934 = distinct !{!934, !933, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!935 = distinct !{!935, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCsabk8e3lPnsy_20file_sharing_example"}
!936 = distinct !{!936, !935, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!937 = distinct !{!937, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCsabk8e3lPnsy_20file_sharing_example"}
!938 = distinct !{!938, !937, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCsabk8e3lPnsy_20file_sharing_example: argument 1"}
!939 = distinct !{!939, !937, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!940 = distinct !{!940, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtNtNtB3b_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6J_3VecB7c_EB7c_E0EEE0E0E0ECsabk8e3lPnsy_20file_sharing_example"}
!941 = distinct !{!941, !940, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtNtNtB3b_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6J_3VecB7c_EB7c_E0EEE0E0E0ECsabk8e3lPnsy_20file_sharing_example: argument 1"}
!942 = distinct !{!942, !940, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtNtNtB3b_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6J_3VecB7c_EB7c_E0EEE0E0E0ECsabk8e3lPnsy_20file_sharing_example: argument 0"}
!943 = distinct !{!943, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCsabk8e3lPnsy_20file_sharing_example"}
!944 = distinct !{!944, !943, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!945 = distinct !{!945, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCsabk8e3lPnsy_20file_sharing_example"}
!946 = distinct !{!946, !945, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!947 = !{!929}
!948 = !{!931}
!949 = !{!932, !931}
!950 = !{!934}
!951 = !{!936}
!952 = !{!939, !938}
!953 = !{!941}
!954 = !{!942, !941}
!955 = !{!944}
!956 = !{!946}
!957 = distinct !{!957, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1c_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapB16_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4x_8adapters4take4TakeINtNtB5u_3map3MapINtNtNtB2H_3vec9into_iter8IntoIterINtB18_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B1Z_NtB1Z_16ClosestPeersIter11with_configINtB6f_3VecB6I_EIB6J_NtNtB1c_6record3KeyEE0EEE0E0ECsabk8e3lPnsy_20file_sharing_example"}
!958 = distinct !{!958, !957, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1c_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2H_11collections5btree3mapINtB3u_8BTreeMapB16_B1X_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4x_8adapters4take4TakeINtNtB5u_3map3MapINtNtNtB2H_3vec9into_iter8IntoIterINtB18_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B1Z_NtB1Z_16ClosestPeersIter11with_configINtB6f_3VecB6I_EIB6J_NtNtB1c_6record3KeyEE0EEE0E0ECsabk8e3lPnsy_20file_sharing_example: argument 1"}
!959 = distinct !{!959, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtNtNtB2P_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6n_3VecB6Q_EIB6R_NtNtB1k_6record3KeyEE0EEE0E0ECsabk8e3lPnsy_20file_sharing_example"}
!960 = distinct !{!960, !959, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtNtNtB2P_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6n_3VecB6Q_EIB6R_NtNtB1k_6record3KeyEE0EEE0E0ECsabk8e3lPnsy_20file_sharing_example: argument 1"}
!961 = distinct !{!961, !959, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4F_8adapters4take4TakeINtNtB5C_3map3MapINtNtNtB2P_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6n_3VecB6Q_EIB6R_NtNtB1k_6record3KeyEE0EEE0E0ECsabk8e3lPnsy_20file_sharing_example: argument 0"}
!962 = distinct !{!962, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCsabk8e3lPnsy_20file_sharing_example"}
!963 = distinct !{!963, !962, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!964 = distinct !{!964, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCsabk8e3lPnsy_20file_sharing_example"}
!965 = distinct !{!965, !964, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!966 = distinct !{!966, i1 true, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCsabk8e3lPnsy_20file_sharing_example"}
!967 = distinct !{!967, !966, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCsabk8e3lPnsy_20file_sharing_example: argument 1"}
!968 = distinct !{!968, !966, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtBB_5query5peers7closest4PeerE12split_at_mutCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!969 = distinct !{!969, i1 true, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtNtNtB3b_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6J_3VecB7c_EIB7d_NtNtB1k_6record3KeyEE0EEE0E0E0ECsabk8e3lPnsy_20file_sharing_example"}
!970 = distinct !{!970, !969, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtNtNtB3b_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6J_3VecB7c_EIB7d_NtNtB1k_6record3KeyEE0EEE0E0E0ECsabk8e3lPnsy_20file_sharing_example: argument 1"}
!971 = distinct !{!971, !969, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1k_5query5peers7closest4PeerENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB3b_11collections5btree3mapINtB3Y_8BTreeMapB1e_B25_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB51_8adapters4take4TakeINtNtB5Y_3map3MapINtNtNtB3b_3vec9into_iter8IntoIterINtB1g_3KeyNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdEENCINvMs_B27_NtB27_16ClosestPeersIter11with_configINtB6J_3VecB7c_EIB7d_NtNtB1k_6record3KeyEE0EEE0E0E0ECsabk8e3lPnsy_20file_sharing_example: argument 0"}
!972 = distinct !{!972, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCsabk8e3lPnsy_20file_sharing_example"}
!973 = distinct !{!973, !972, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!974 = distinct !{!974, i1 true, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCsabk8e3lPnsy_20file_sharing_example"}
!975 = distinct !{!975, !974, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCskC4O4hr3vz7_10libp2p_kad7kbucket3key8DistanceNtNtNtNtB1o_5query5peers7closest4PeerEE13partition_oneCsabk8e3lPnsy_20file_sharing_example: argument 0"}
!976 = !{!958}
!977 = !{!960}
!978 = !{!961, !960}
!979 = !{!963}
!980 = !{!965}
!981 = !{!968, !967}
!982 = !{!970}
!983 = !{!971, !970}
!984 = !{!973}
!985 = !{!975}
!986 = distinct !{!986, i1 true, !"_RINvXs2_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtBc_5array4iter8IntoIterRNtNtCsexYYUdYSQU6_5alloc6string6StringKj1_ENvYB1M_INtNtBc_7convert4IntoNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE4intoENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB2W_NCINvMsk_NtB1R_3vecINtB53_3VecB2W_E14extend_trustedBQ_E0E0ECsabk8e3lPnsy_20file_sharing_example"}
!987 = distinct !{!987, !986, !"_RINvXs2_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtBc_5array4iter8IntoIterRNtNtCsexYYUdYSQU6_5alloc6string6StringKj1_ENvYB1M_INtNtBc_7convert4IntoNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE4intoENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB2W_NCINvMsk_NtB1R_3vecINtB53_3VecB2W_E14extend_trustedBQ_E0E0ECsabk8e3lPnsy_20file_sharing_example: argument 0"}
!988 = distinct !{!988, !986, !"_RINvXs2_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtBc_5array4iter8IntoIterRNtNtCsexYYUdYSQU6_5alloc6string6StringKj1_ENvYB1M_INtNtBc_7convert4IntoNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE4intoENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB2W_NCINvMsk_NtB1R_3vecINtB53_3VecB2W_E14extend_trustedBQ_E0E0ECsabk8e3lPnsy_20file_sharing_example: argument 1"}
!989 = distinct !{!989, i1 true, !"_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterRNtNtCsexYYUdYSQU6_5alloc6string6StringKj1_ENvYB1r_INtNtBc_7convert4IntoNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE4intoENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvMNtNtBc_3ops9try_traitINtB4d_17NeverShortCircuituE10wrap_mut_2uB2B_NCINvNvB3p_8for_each4callB2B_NCINvMsk_NtB1w_3vecINtB5T_3VecB2B_E14extend_trustedQBN_E0E0E0B4y_ECsabk8e3lPnsy_20file_sharing_example"}
!990 = distinct !{!990, !989, !"_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterRNtNtCsexYYUdYSQU6_5alloc6string6StringKj1_ENvYB1r_INtNtBc_7convert4IntoNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE4intoENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvMNtNtBc_3ops9try_traitINtB4d_17NeverShortCircuituE10wrap_mut_2uB2B_NCINvNvB3p_8for_each4callB2B_NCINvMsk_NtB1w_3vecINtB5T_3VecB2B_E14extend_trustedQBN_E0E0E0B4y_ECsabk8e3lPnsy_20file_sharing_example: argument 0"}
!991 = distinct !{!991, !989, !"_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterRNtNtCsexYYUdYSQU6_5alloc6string6StringKj1_ENvYB1r_INtNtBc_7convert4IntoNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE4intoENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvMNtNtBc_3ops9try_traitINtB4d_17NeverShortCircuituE10wrap_mut_2uB2B_NCINvNvB3p_8for_each4callB2B_NCINvMsk_NtB1w_3vecINtB5T_3VecB2B_E14extend_trustedQBN_E0E0E0B4y_ECsabk8e3lPnsy_20file_sharing_example: argument 1"}
!992 = distinct !{!992, i1 true, !"_RINvXs3_NtNtCskKLDkoKarTP_4core5array4iterINtB6_8IntoIterRNtNtCsexYYUdYSQU6_5alloc6string6StringKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1H_8adapters3map12map_try_foldBT_NtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringuINtNtNtBa_3ops9try_trait17NeverShortCircuituENvYBT_INtNtBa_7convert4IntoB37_E4intoNCINvMB3S_B3P_10wrap_mut_2uB37_NCINvNvB1B_8for_each4callB37_NCINvMsk_NtBY_3vecINtB6g_3VecB37_E14extend_trustedQINtB2v_3MapBE_B4y_EE0E0E0E0B3P_ECsabk8e3lPnsy_20file_sharing_example"}
!993 = distinct !{!993, !992, !"_RINvXs3_NtNtCskKLDkoKarTP_4core5array4iterINtB6_8IntoIterRNtNtCsexYYUdYSQU6_5alloc6string6StringKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1H_8adapters3map12map_try_foldBT_NtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringuINtNtNtBa_3ops9try_trait17NeverShortCircuituENvYBT_INtNtBa_7convert4IntoB37_E4intoNCINvMB3S_B3P_10wrap_mut_2uB37_NCINvNvB1B_8for_each4callB37_NCINvMsk_NtBY_3vecINtB6g_3VecB37_E14extend_trustedQINtB2v_3MapBE_B4y_EE0E0E0E0B3P_ECsabk8e3lPnsy_20file_sharing_example: argument 0"}
!994 = distinct !{!994, i1 true, !"_RINvXs_NtNtCskKLDkoKarTP_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitRNtNtCsexYYUdYSQU6_5alloc6string6StringEE8try_folduNCINvNtNtB16_8adapters3map12map_try_foldB3y_NtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringuINtNtB7_9try_trait17NeverShortCircuituENvYB3y_INtNtB9_7convert4IntoB55_E4intoNCINvMB5Q_B5N_10wrap_mut_2uB55_NCINvNvB10_8for_each4callB55_NCINvMsk_NtB3D_3vecINtB89_3VecB55_E14extend_trustedQINtB4s_3MapINtB20_8IntoIterB3y_Kj1_EB6q_EE0E0E0E0B5N_E0B5N_ECsabk8e3lPnsy_20file_sharing_example"}
!995 = distinct !{!995, !994, !"_RINvXs_NtNtCskKLDkoKarTP_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitRNtNtCsexYYUdYSQU6_5alloc6string6StringEE8try_folduNCINvNtNtB16_8adapters3map12map_try_foldB3y_NtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringuINtNtB7_9try_trait17NeverShortCircuituENvYB3y_INtNtB9_7convert4IntoB55_E4intoNCINvMB5Q_B5N_10wrap_mut_2uB55_NCINvNvB10_8for_each4callB55_NCINvMsk_NtB3D_3vecINtB89_3VecB55_E14extend_trustedQINtB4s_3MapINtB20_8IntoIterB3y_Kj1_EB6q_EE0E0E0E0B5N_E0B5N_ECsabk8e3lPnsy_20file_sharing_example: argument 0"}
!996 = distinct !{!996, !994, !"_RINvXs_NtNtCskKLDkoKarTP_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitRNtNtCsexYYUdYSQU6_5alloc6string6StringEE8try_folduNCINvNtNtB16_8adapters3map12map_try_foldB3y_NtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringuINtNtB7_9try_trait17NeverShortCircuituENvYB3y_INtNtB9_7convert4IntoB55_E4intoNCINvMB5Q_B5N_10wrap_mut_2uB55_NCINvNvB10_8for_each4callB55_NCINvMsk_NtB3D_3vecINtB89_3VecB55_E14extend_trustedQINtB4s_3MapINtB20_8IntoIterB3y_Kj1_EB6q_EE0E0E0E0B5N_E0B5N_ECsabk8e3lPnsy_20file_sharing_example: argument 1"}
!997 = distinct !{!997, i1 true, !"_RNCINvMs8_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRNtNtCsexYYUdYSQU6_5alloc6string6StringEE8try_folduNCINvNtNtNtBe_4iter8adapters3map12map_try_foldB1X_NtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringuINtNtNtBe_3ops9try_trait17NeverShortCircuituENvYB1X_INtNtBe_7convert4IntoB3A_E4intoNCINvMB4l_B4i_10wrap_mut_2uB3A_NCINvNvNtNtNtB2V_6traits8iterator8Iterator8for_each4callB3A_NCINvMsk_NtB22_3vecINtB7f_3VecB3A_E14extend_trustedQINtB2R_3MapINtBa_8IntoIterB1X_Kj1_EB51_EE0E0E0E0B4i_E0Csabk8e3lPnsy_20file_sharing_example"}
!998 = distinct !{!998, !997, !"_RNCINvMs8_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitRNtNtCsexYYUdYSQU6_5alloc6string6StringEE8try_folduNCINvNtNtNtBe_4iter8adapters3map12map_try_foldB1X_NtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringuINtNtNtBe_3ops9try_trait17NeverShortCircuituENvYB1X_INtNtBe_7convert4IntoB3A_E4intoNCINvMB4l_B4i_10wrap_mut_2uB3A_NCINvNvNtNtNtB2V_6traits8iterator8Iterator8for_each4callB3A_NCINvMsk_NtB22_3vecINtB7f_3VecB3A_E14extend_trustedQINtB2R_3MapINtBa_8IntoIterB1X_Kj1_EB51_EE0E0E0E0B4i_E0Csabk8e3lPnsy_20file_sharing_example: argument 0"}
!999 = distinct !{!999, !992, !"_RINvXs3_NtNtCskKLDkoKarTP_4core5array4iterINtB6_8IntoIterRNtNtCsexYYUdYSQU6_5alloc6string6StringKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1H_8adapters3map12map_try_foldBT_NtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringuINtNtNtBa_3ops9try_trait17NeverShortCircuituENvYBT_INtNtBa_7convert4IntoB37_E4intoNCINvMB3S_B3P_10wrap_mut_2uB37_NCINvNvB1B_8for_each4callB37_NCINvMsk_NtBY_3vecINtB6g_3VecB37_E14extend_trustedQINtB2v_3MapBE_B4y_EE0E0E0E0B3P_ECsabk8e3lPnsy_20file_sharing_example: argument 1"}
!1000 = distinct !{!1000, i1 true, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringuINtNtNtBa_3ops9try_trait17NeverShortCircuituENvYBZ_INtNtBa_7convert4IntoB1C_E4intoNCINvMB2n_B2k_10wrap_mut_2uB1C_NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1C_NCINvMsk_NtB14_3vecINtB5f_3VecB1C_E14extend_trustedQINtB4_3MapINtNtNtBa_5array4iter8IntoIterBZ_Kj1_EB33_EE0E0E0E0Csabk8e3lPnsy_20file_sharing_example"}
!1001 = distinct !{!1001, !1000, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringuINtNtNtBa_3ops9try_trait17NeverShortCircuituENvYBZ_INtNtBa_7convert4IntoB1C_E4intoNCINvMB2n_B2k_10wrap_mut_2uB1C_NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1C_NCINvMsk_NtB14_3vecINtB5f_3VecB1C_E14extend_trustedQINtB4_3MapINtNtNtBa_5array4iter8IntoIterBZ_Kj1_EB33_EE0E0E0E0Csabk8e3lPnsy_20file_sharing_example: argument 1"}
!1002 = distinct !{!1002, !1000, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringuINtNtNtBa_3ops9try_trait17NeverShortCircuituENvYBZ_INtNtBa_7convert4IntoB1C_E4intoNCINvMB2n_B2k_10wrap_mut_2uB1C_NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1C_NCINvMsk_NtB14_3vecINtB5f_3VecB1C_E14extend_trustedQINtB4_3MapINtNtNtBa_5array4iter8IntoIterBZ_Kj1_EB33_EE0E0E0E0Csabk8e3lPnsy_20file_sharing_example: argument 0"}
!1003 = distinct !{!1003, i1 true, !"_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringNCINvNvNtNtNtNtB9_4iter6traits8iterator8Iterator8for_each4callB1k_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3e_3VecB1k_E14extend_trustedQINtNtNtB2e_8adapters3map3MapINtNtNtB9_5array4iter8IntoIterRNtNtB3g_6string6StringKj1_ENvYB57_INtNtB9_7convert4IntoB1k_E4intoEE0E0E0Csabk8e3lPnsy_20file_sharing_example"}
!1004 = distinct !{!1004, !1003, !"_RNCINvMNtNtCskKLDkoKarTP_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringNCINvNvNtNtNtNtB9_4iter6traits8iterator8Iterator8for_each4callB1k_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3e_3VecB1k_E14extend_trustedQINtNtNtB2e_8adapters3map3MapINtNtNtB9_5array4iter8IntoIterRNtNtB3g_6string6StringKj1_ENvYB57_INtNtB9_7convert4IntoB1k_E4intoEE0E0E0Csabk8e3lPnsy_20file_sharing_example: argument 0"}
!1005 = distinct !{!1005, i1 true, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB25_3VecB1f_E14extend_trustedQINtNtNtBc_8adapters3map3MapINtNtNtBe_5array4iter8IntoIterRNtNtB27_6string6StringKj1_ENvYB3X_INtNtBe_7convert4IntoB1f_E4intoEE0E0Csabk8e3lPnsy_20file_sharing_example"}
!1006 = distinct !{!1006, !1005, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB25_3VecB1f_E14extend_trustedQINtNtNtBc_8adapters3map3MapINtNtNtBe_5array4iter8IntoIterRNtNtB27_6string6StringKj1_ENvYB3X_INtNtBe_7convert4IntoB1f_E4intoEE0E0Csabk8e3lPnsy_20file_sharing_example: argument 0"}
end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/ipfs_private_example.ipfs_private_example.c9cf337336d19c9e-cgu.06?download=true
inline.NumInlined: 1188
inline.NumDeleted: 476
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort4_stableNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB19_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example:bb.a
  %i.cd = load i8, ptr %i.cc, align 8, !alias.scope !1048, !noalias !1047, !noundef !5 ; 2 uses
  %i.ce = icmp eq i8 %i.cb, %i.cd
  %i.cf = icmp ult i8 %i.cb, %i.cd
  br i1 %i.ce, label %bb.k, label %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit8

bb.k:                                             ; preds = %bb.j
  %i.cg = tail call i32 @memcmp(ptr noundef nonnull readonly align 8 dereferenceable(80) %i.bt, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.br, i64 64), !alias.scope !1049
  %i.ch = icmp slt i32 %i.cg, 0
  br label %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit8

_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit8: ; preds = %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit6, %bb.j, %bb.k
  %.sroa.0.0.i.i.i.i7 = phi i1 [ %i.ch, %bb.k ], [ %i.cf, %bb.j ], [ %i.bz, %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit6 ] ; 2 uses
  %i.ci = select i1 %.sroa.0.0.i.i.i.i5, ptr %i.aj, ptr %i.an, !unpredictable !5
  %i.cj = select i1 %.sroa.0.0.i.i.i.i3, ptr %i.al, ptr %i.ag, !unpredictable !5
  %i.ck = select i1 %.sroa.0.0.i.i.i.i7, ptr %i.bt, ptr %i.br, !unpredictable !5
  %i.cl = select i1 %.sroa.0.0.i.i.i.i7, ptr %i.br, ptr %i.bt, !unpredictable !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.cj, i64 80, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cm, ptr noundef nonnull align 8 dereferenceable(80) %i.ck, i64 80, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cn, ptr noundef nonnull align 8 dereferenceable(80) %i.cl, i64 80, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 240
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.co, ptr noundef nonnull align 8 dereferenceable(80) %i.ci, i64 80, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort8_stableRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB19_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2R_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example(ptr noundef nonnull captures(address, read_provenance) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 64)) %1, ptr noundef nonnull captures(address, read_provenance) initializes((0, 64)) %2, ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
._crit_edge.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull readonly %.0.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) #37 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull readonly %.0.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d) #37 ; 2 uses
  %i.f = zext i1 %i.b to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.f ; 3 uses
  %i.h = xor i1 %i.b, true
  %i.i = zext i1 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.i ; 4 uses
  %i.k = select i1 %i.e, i64 3, i64 2
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k ; 4 uses
  %i.m = select i1 %i.e, i64 2, i64 3
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m ; 3 uses
  %i.o = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull readonly %.0.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g) #37 ; 3 uses
  %i.p = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull readonly %.0.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j) #37 ; 3 uses
  %i.q = select i1 %i.o, ptr %i.l, ptr %i.g, !unpredictable !5
  %i.r = select i1 %i.p, ptr %i.j, ptr %i.n, !unpredictable !5
  %i.s = select i1 %i.p, ptr %i.l, ptr %i.j, !unpredictable !5
  %i.t = select i1 %i.o, ptr %i.g, ptr %i.s, !unpredictable !5 ; 3 uses
  %i.u = select i1 %i.o, ptr %i.j, ptr %i.l, !unpredictable !5
  %i.v = select i1 %i.p, ptr %i.n, ptr %i.u, !unpredictable !5 ; 3 uses
  %i.w = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull readonly %.0.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t) #37 ; 2 uses
  %i.x = select i1 %i.w, ptr %i.v, ptr %i.t, !unpredictable !5
  %i.y = select i1 %i.w, ptr %i.t, ptr %i.v, !unpredictable !5
  %i.z = load i64, ptr %i.q, align 8
  store i64 %i.z, ptr %2, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load i64, ptr %i.x, align 8
  store i64 %i.ab, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load i64, ptr %i.y, align 8
  store i64 %i.ad, ptr %i.ac, align 8
  %i.ae = getelementptr i8, ptr %2, i64 24        ; 4 uses
  %i.af = load i64, ptr %i.r, align 8
  store i64 %i.af, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.ah = getelementptr i8, ptr %2, i64 32        ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull readonly %.0.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ag) #37 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull readonly %.0.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #37 ; 2 uses
  %i.an = zext i1 %i.aj to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.an ; 3 uses
  %i.ap = xor i1 %i.aj, true
  %i.aq = zext i1 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.aq ; 4 uses
  %i.as = select i1 %i.am, i64 3, i64 2
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.as ; 4 uses
  %i.au = select i1 %i.am, i64 2, i64 3
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.au ; 3 uses
  %i.aw = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull readonly %.0.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ao) #37 ; 3 uses
  %i.ax = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull readonly %.0.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.av, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ar) #37 ; 3 uses
  %i.ay = select i1 %i.aw, ptr %i.at, ptr %i.ao, !unpredictable !5
  %i.az = select i1 %i.ax, ptr %i.ar, ptr %i.av, !unpredictable !5
  %i.ba = select i1 %i.ax, ptr %i.at, ptr %i.ar, !unpredictable !5
  %i.bb = select i1 %i.aw, ptr %i.ao, ptr %i.ba, !unpredictable !5 ; 3 uses
  %i.bc = select i1 %i.aw, ptr %i.ar, ptr %i.at, !unpredictable !5
  %i.bd = select i1 %i.ax, ptr %i.av, ptr %i.bc, !unpredictable !5 ; 3 uses
  %i.be = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull readonly %.0.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bb) #37 ; 2 uses
  %i.bf = select i1 %i.be, ptr %i.bd, ptr %i.bb, !unpredictable !5
  %i.bg = select i1 %i.be, ptr %i.bb, ptr %i.bd, !unpredictable !5
  %i.bh = load i64, ptr %i.ay, align 8
  store i64 %i.bh, ptr %i.ah, align 8
  %i.bi = getelementptr i8, ptr %2, i64 40
  %i.bj = load i64, ptr %i.bf, align 8
  store i64 %i.bj, ptr %i.bi, align 8
  %i.bk = getelementptr i8, ptr %2, i64 48
  %i.bl = load i64, ptr %i.bg, align 8
  store i64 %i.bl, ptr %i.bk, align 8
  %i.bm = getelementptr i8, ptr %2, i64 56        ; 4 uses
  %i.bn = load i64, ptr %i.az, align 8
  store i64 %i.bn, ptr %i.bm, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bp = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull readonly %.0.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) #37 ; 3 uses
  %..i21.i = select i1 %i.bp, ptr %i.ah, ptr %2
  %i.bq = xor i1 %i.bp, true
  %i.br = load i64, ptr %..i21.i, align 8, !alias.scope !1058, !noalias !1059
  store i64 %i.br, ptr %1, align 8, !noalias !1060
  %i.bs = zext i1 %i.bp to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.bs ; 3 uses
  %i.bu = zext i1 %i.bq to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bu ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bx = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull readonly %.0.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae) #37 ; 3 uses
  %..i.i = select i1 %i.bx, ptr %i.ae, ptr %i.bm
  %i.by = xor i1 %i.bx, true
  %i.bz = load i64, ptr %..i.i, align 8, !alias.scope !1058, !noalias !1061
  store i64 %i.bz, ptr %i.bo, align 8, !noalias !1062
  %.neg.i.i = sext i1 %i.by to i64
  %i.ca = getelementptr [8 x i8], ptr %i.bm, i64 %.neg.i.i ; 3 uses
  %.neg13.i.i = sext i1 %i.bx to i64
  %i.cb = getelementptr [8 x i8], ptr %i.ae, i64 %.neg13.i.i ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cd = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull readonly %.0.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bv) #37 ; 3 uses
  %..i21.i.1 = select i1 %i.cd, ptr %i.bt, ptr %i.bv
  %i.ce = xor i1 %i.cd, true
  %i.cf = load i64, ptr %..i21.i.1, align 8, !alias.scope !1058, !noalias !1059
  store i64 %i.cf, ptr %i.bw, align 8, !noalias !1060
  %i.cg = zext i1 %i.cd to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.cg ; 3 uses
  %i.ci = zext i1 %i.ce to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.ci ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cl = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull readonly %.0.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cb) #37 ; 3 uses
  %..i.i.1 = select i1 %i.cl, ptr %i.cb, ptr %i.ca
  %i.cm = xor i1 %i.cl, true
  %i.cn = load i64, ptr %..i.i.1, align 8, !alias.scope !1058, !noalias !1061
  store i64 %i.cn, ptr %i.cc, align 8, !noalias !1062
  %.neg.i.i.1 = sext i1 %i.cm to i64
  %i.co = getelementptr [8 x i8], ptr %i.ca, i64 %.neg.i.i.1 ; 3 uses
  %.neg13.i.i.1 = sext i1 %i.cl to i64
  %i.cp = getelementptr [8 x i8], ptr %i.cb, i64 %.neg13.i.i.1 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cr = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull readonly %.0.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ch, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cj) #37 ; 3 uses
  %..i21.i.2 = select i1 %i.cr, ptr %i.ch, ptr %i.cj
  %i.cs = xor i1 %i.cr, true
  %i.ct = load i64, ptr %..i21.i.2, align 8, !alias.scope !1058, !noalias !1059
  store i64 %i.ct, ptr %i.ck, align 8, !noalias !1060
  %i.cu = zext i1 %i.cr to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cu ; 3 uses
  %i.cw = zext i1 %i.cs to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.cw ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cz = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull readonly %.0.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cp) #37 ; 3 uses
  %..i.i.2 = select i1 %i.cz, ptr %i.cp, ptr %i.co
  %i.da = xor i1 %i.cz, true
  %i.db = load i64, ptr %..i.i.2, align 8, !alias.scope !1058, !noalias !1061
  store i64 %i.db, ptr %i.cq, align 8, !noalias !1062
  %.neg.i.i.2 = sext i1 %i.da to i64
  %i.dc = getelementptr [8 x i8], ptr %i.co, i64 %.neg.i.i.2 ; 3 uses
  %.neg13.i.i.2 = sext i1 %i.cz to i64
  %i.dd = getelementptr [8 x i8], ptr %i.cp, i64 %.neg13.i.i.2 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.df = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull readonly %.0.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cx) #37 ; 3 uses
  %..i21.i.3 = select i1 %i.df, ptr %i.cv, ptr %i.cx
  %i.dg = xor i1 %i.df, true
  %i.dh = load i64, ptr %..i21.i.3, align 8, !alias.scope !1058, !noalias !1059
  store i64 %i.dh, ptr %i.cy, align 8, !noalias !1060
  %i.di = zext i1 %i.df to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.di
  %i.dk = zext i1 %i.dg to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.dk
  %i.dm = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull readonly %.0.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dd) #37 ; 3 uses
  %..i.i.3 = select i1 %i.dm, ptr %i.dd, ptr %i.dc
  %i.dn = xor i1 %i.dm, true
  %i.do = load i64, ptr %..i.i.3, align 8, !alias.scope !1058, !noalias !1061
  store i64 %i.do, ptr %i.de, align 8, !noalias !1062
  %.neg.i.i.3 = sext i1 %i.dn to i64
  %i.dp = getelementptr [8 x i8], ptr %i.dc, i64 %.neg.i.i.3
  %.neg13.i.i.3 = sext i1 %i.dm to i64
  %i.dq = getelementptr [8 x i8], ptr %i.dd, i64 %.neg13.i.i.3
  %i.dr = getelementptr i8, ptr %i.dq, i64 8
  %i.ds = getelementptr i8, ptr %i.dp, i64 8
  %i.dt = icmp ne ptr %i.dl, %i.dr
  %i.du = icmp ne ptr %i.dj, %i.ds
  %or.cond.i = select i1 %i.dt, i1 true, i1 %i.du, !prof !13
  br i1 %or.cond.i, label %bb.a, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1g_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2Y_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit, !prof !13

bb.a:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #34
  unreachable

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1g_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2Y_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort8_stableTyjENvYB19_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 128)) %1, ptr nofree noundef nonnull captures(address) initializes((0, 128)) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val16.i = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %.val17.i = load i64, ptr %i.b, align 8
  %.val18.i = load i64, ptr %0, align 8, !noundef !5 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val19.i = load i64, ptr %i.c, align 8
  %i.d = icmp eq i64 %.val16.i, %.val18.i
  %i.e = icmp ult i64 %.val16.i, %.val18.i
  %i.f = icmp ult i64 %.val17.i, %.val19.i
  %.sroa.0.0.i.i.i = select i1 %i.d, i1 %i.f, i1 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val12.i = load i64, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 56
  %.val13.i = load i64, ptr %i.i, align 8
  %.val14.i = load i64, ptr %i.h, align 8, !noundef !5 ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 40
  %.val15.i = load i64, ptr %i.j, align 8
  %i.k = icmp eq i64 %.val12.i, %.val14.i
  %i.l = icmp ult i64 %.val12.i, %.val14.i
  %i.m = icmp ult i64 %.val13.i, %.val15.i
  %.sroa.0.0.i.i20.i = select i1 %i.k, i1 %i.m, i1 %i.l ; 2 uses
  %i.n = zext i1 %.sroa.0.0.i.i.i to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.n ; 4 uses
  %i.p = xor i1 %.sroa.0.0.i.i.i, true
  %i.q = zext i1 %i.p to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.q ; 5 uses
  %i.s = select i1 %.sroa.0.0.i.i20.i, i64 3, i64 2
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.s ; 5 uses
  %i.u = select i1 %.sroa.0.0.i.i20.i, i64 2, i64 3
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.u ; 4 uses
  %.val8.i = load i64, ptr %i.t, align 8, !noundef !5 ; 2 uses
  %i.w = getelementptr i8, ptr %i.t, i64 8
  %.val9.i = load i64, ptr %i.w, align 8
  %.val10.i = load i64, ptr %i.o, align 8, !noundef !5 ; 2 uses
  %i.x = getelementptr i8, ptr %i.o, i64 8
  %.val11.i = load i64, ptr %i.x, align 8
  %i.y = icmp eq i64 %.val8.i, %.val10.i
  %i.z = icmp ult i64 %.val8.i, %.val10.i
  %i.aa = icmp ult i64 %.val9.i, %.val11.i
  %.sroa.0.0.i.i21.i = select i1 %i.y, i1 %i.aa, i1 %i.z ; 3 uses
  %.val4.i = load i64, ptr %i.v, align 8, !noundef !5 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.v, i64 8
  %.val5.i = load i64, ptr %i.ab, align 8
  %.val6.i = load i64, ptr %i.r, align 8, !noundef !5 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.r, i64 8
  %.val7.i = load i64, ptr %i.ac, align 8
  %i.ad = icmp eq i64 %.val4.i, %.val6.i
  %i.ae = icmp ult i64 %.val4.i, %.val6.i
  %i.af = icmp ult i64 %.val5.i, %.val7.i
  %.sroa.0.0.i.i22.i = select i1 %i.ad, i1 %i.af, i1 %i.ae ; 3 uses
  %i.ag = select i1 %.sroa.0.0.i.i21.i, ptr %i.t, ptr %i.o, !unpredictable !5
  %i.ah = select i1 %.sroa.0.0.i.i22.i, ptr %i.r, ptr %i.v, !unpredictable !5
  %i.ai = select i1 %.sroa.0.0.i.i22.i, ptr %i.t, ptr %i.r, !unpredictable !5
  %i.aj = select i1 %.sroa.0.0.i.i21.i, ptr %i.o, ptr %i.ai, !unpredictable !5 ; 4 uses
  %i.ak = select i1 %.sroa.0.0.i.i21.i, ptr %i.r, ptr %i.t, !unpredictable !5
  %i.al = select i1 %.sroa.0.0.i.i22.i, ptr %i.v, ptr %i.ak, !unpredictable !5 ; 4 uses
  %.val.i = load i64, ptr %i.al, align 8, !noundef !5 ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %.val1.i = load i64, ptr %i.am, align 8
  %.val2.i = load i64, ptr %i.aj, align 8, !noundef !5 ; 2 uses
  %i.an = getelementptr i8, ptr %i.aj, i64 8
  %.val3.i = load i64, ptr %i.an, align 8
  %i.ao = icmp eq i64 %.val.i, %.val2.i
  %i.ap = icmp ult i64 %.val.i, %.val2.i
  %i.aq = icmp ult i64 %.val1.i, %.val3.i
  %.sroa.0.0.i.i23.i = select i1 %i.ao, i1 %i.aq, i1 %i.ap ; 2 uses
  %i.ar = select i1 %.sroa.0.0.i.i23.i, ptr %i.al, ptr %i.aj, !unpredictable !5
  %i.as = select i1 %.sroa.0.0.i.i23.i, ptr %i.aj, ptr %i.al, !unpredictable !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false)
  %i.av = getelementptr i8, ptr %2, i64 48        ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.ax = getelementptr i8, ptr %2, i64 64        ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val16.i1 = load i64, ptr %i.ay, align 8, !noundef !5 ; 2 uses
  %i.az = getelementptr i8, ptr %0, i64 88
  %.val17.i2 = load i64, ptr %i.az, align 8
  %.val18.i3 = load i64, ptr %i.aw, align 8, !noundef !5 ; 2 uses
  %i.ba = getelementptr i8, ptr %0, i64 72
  %.val19.i4 = load i64, ptr %i.ba, align 8
  %i.bb = icmp eq i64 %.val16.i1, %.val18.i3
  %i.bc = icmp ult i64 %.val16.i1, %.val18.i3
  %i.bd = icmp ult i64 %.val17.i2, %.val19.i4
  %.sroa.0.0.i.i.i5 = select i1 %i.bb, i1 %i.bd, i1 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val12.i6 = load i64, ptr %i.be, align 8, !noundef !5 ; 2 uses
  %i.bg = getelementptr i8, ptr %0, i64 120
  %.val13.i7 = load i64, ptr %i.bg, align 8
  %.val14.i8 = load i64, ptr %i.bf, align 8, !noundef !5 ; 2 uses
  %i.bh = getelementptr i8, ptr %0, i64 104
  %.val15.i9 = load i64, ptr %i.bh, align 8
  %i.bi = icmp eq i64 %.val12.i6, %.val14.i8
  %i.bj = icmp ult i64 %.val12.i6, %.val14.i8
  %i.bk = icmp ult i64 %.val13.i7, %.val15.i9
  %.sroa.0.0.i.i20.i10 = select i1 %i.bi, i1 %i.bk, i1 %i.bj ; 2 uses
  %i.bl = zext i1 %.sroa.0.0.i.i.i5 to i64
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.bl ; 4 uses
  %i.bn = xor i1 %.sroa.0.0.i.i.i5, true
  %i.bo = zext i1 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.bo ; 5 uses
  %i.bq = select i1 %.sroa.0.0.i.i20.i10, i64 3, i64 2
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.bq ; 5 uses
  %i.bs = select i1 %.sroa.0.0.i.i20.i10, i64 2, i64 3
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.bs ; 4 uses
  %.val8.i11 = load i64, ptr %i.br, align 8, !noundef !5 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.br, i64 8
  %.val9.i12 = load i64, ptr %i.bu, align 8
  %.val10.i13 = load i64, ptr %i.bm, align 8, !noundef !5 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bm, i64 8
  %.val11.i14 = load i64, ptr %i.bv, align 8
  %i.bw = icmp eq i64 %.val8.i11, %.val10.i13
  %i.bx = icmp ult i64 %.val8.i11, %.val10.i13
  %i.by = icmp ult i64 %.val9.i12, %.val11.i14
  %.sroa.0.0.i.i21.i15 = select i1 %i.bw, i1 %i.by, i1 %i.bx ; 3 uses
  %.val4.i16 = load i64, ptr %i.bt, align 8, !noundef !5 ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bt, i64 8
  %.val5.i17 = load i64, ptr %i.bz, align 8
  %.val6.i18 = load i64, ptr %i.bp, align 8, !noundef !5 ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bp, i64 8
  %.val7.i19 = load i64, ptr %i.ca, align 8
  %i.cb = icmp eq i64 %.val4.i16, %.val6.i18
  %i.cc = icmp ult i64 %.val4.i16, %.val6.i18
  %i.cd = icmp ult i64 %.val5.i17, %.val7.i19
  %.sroa.0.0.i.i22.i20 = select i1 %i.cb, i1 %i.cd, i1 %i.cc ; 3 uses
  %i.ce = select i1 %.sroa.0.0.i.i21.i15, ptr %i.br, ptr %i.bm, !unpredictable !5
  %i.cf = select i1 %.sroa.0.0.i.i22.i20, ptr %i.bp, ptr %i.bt, !unpredictable !5
  %i.cg = select i1 %.sroa.0.0.i.i22.i20, ptr %i.br, ptr %i.bp, !unpredictable !5
  %i.ch = select i1 %.sroa.0.0.i.i21.i15, ptr %i.bm, ptr %i.cg, !unpredictable !5 ; 4 uses
  %i.ci = select i1 %.sroa.0.0.i.i21.i15, ptr %i.bp, ptr %i.br, !unpredictable !5
  %i.cj = select i1 %.sroa.0.0.i.i22.i20, ptr %i.bt, ptr %i.ci, !unpredictable !5 ; 4 uses
  %.val.i21 = load i64, ptr %i.cj, align 8, !noundef !5 ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 8
  %.val1.i22 = load i64, ptr %i.ck, align 8
  %.val2.i23 = load i64, ptr %i.ch, align 8, !noundef !5 ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ch, i64 8
  %.val3.i24 = load i64, ptr %i.cl, align 8
  %i.cm = icmp eq i64 %.val.i21, %.val2.i23
  %i.cn = icmp ult i64 %.val.i21, %.val2.i23
  %i.co = icmp ult i64 %.val1.i22, %.val3.i24
  %.sroa.0.0.i.i23.i25 = select i1 %i.cm, i1 %i.co, i1 %i.cn ; 2 uses
  %i.cp = select i1 %.sroa.0.0.i.i23.i25, ptr %i.cj, ptr %i.ch, !unpredictable !5
  %i.cq = select i1 %.sroa.0.0.i.i23.i25, ptr %i.ch, ptr %i.cj, !unpredictable !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i64 16, i1 false)
  %i.cr = getelementptr i8, ptr %2, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i64 16, i1 false)
  %i.cs = getelementptr i8, ptr %2, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i64 16, i1 false)
  %i.ct = getelementptr i8, ptr %2, i64 112       ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i64 16, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1071)
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.011.0.val.i = load i64, ptr %i.ax, align 8, !alias.scope !1071, !noundef !5 ; 2 uses
  %i.cv = getelementptr i8, ptr %2, i64 72
  %.sroa.011.0.val22.i = load i64, ptr %i.cv, align 8, !alias.scope !1071
  %.sroa.06.0.val.i = load i64, ptr %2, align 8, !alias.scope !1071, !noundef !5 ; 2 uses
  %i.cw = getelementptr i8, ptr %2, i64 8
  %.sroa.06.0.val23.i = load i64, ptr %i.cw, align 8, !alias.scope !1071
  %i.cx = icmp eq i64 %.sroa.011.0.val.i, %.sroa.06.0.val.i
  %i.cy = icmp ult i64 %.sroa.011.0.val.i, %.sroa.06.0.val.i
  %i.cz = icmp ult i64 %.sroa.011.0.val22.i, %.sroa.06.0.val23.i
  %.sroa.0.0.i.i.i26 = select i1 %i.cx, i1 %i.cz, i1 %i.cy ; 3 uses
  %..i21.i = select i1 %.sroa.0.0.i.i.i26, ptr %i.ax, ptr %2
  %i.da = xor i1 %.sroa.0.0.i.i.i26, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %..i21.i, i64 16, i1 false), !noalias !1072
  %i.db = zext i1 %.sroa.0.0.i.i.i26 to i64
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.db ; 4 uses
  %i.dd = zext i1 %i.da to i64
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.dd ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.017.0.val.i = load i64, ptr %i.ct, align 8, !alias.scope !1071, !noundef !5 ; 2 uses
  %i.dg = getelementptr i8, ptr %2, i64 120
  %.sroa.017.0.val24.i = load i64, ptr %i.dg, align 8, !alias.scope !1071
  %.sroa.015.0.val.i = load i64, ptr %i.av, align 8, !alias.scope !1071, !noundef !5 ; 2 uses
  %i.dh = getelementptr i8, ptr %2, i64 56
  %.sroa.015.0.val25.i = load i64, ptr %i.dh, align 8, !alias.scope !1071
  %i.di = icmp eq i64 %.sroa.017.0.val.i, %.sroa.015.0.val.i
  %i.dj = icmp ult i64 %.sroa.017.0.val.i, %.sroa.015.0.val.i
  %i.dk = icmp ult i64 %.sroa.017.0.val24.i, %.sroa.015.0.val25.i
  %.sroa.0.0.i.i26.i = select i1 %i.di, i1 %i.dk, i1 %i.dj ; 3 uses
  %..i.i = select i1 %.sroa.0.0.i.i26.i, ptr %i.av, ptr %i.ct
  %i.dl = xor i1 %.sroa.0.0.i.i26.i, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !noalias !1073
  %.neg.i.i = sext i1 %i.dl to i64
  %i.dm = getelementptr [16 x i8], ptr %i.ct, i64 %.neg.i.i ; 4 uses
  %.neg13.i.i = sext i1 %.sroa.0.0.i.i26.i to i64
  %i.dn = getelementptr [16 x i8], ptr %i.av, i64 %.neg13.i.i ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.011.0.val.i.1 = load i64, ptr %i.dc, align 8, !alias.scope !1071, !noundef !5 ; 2 uses
  %i.dp = getelementptr i8, ptr %i.dc, i64 8
  %.sroa.011.0.val22.i.1 = load i64, ptr %i.dp, align 8, !alias.scope !1071
  %.sroa.06.0.val.i.1 = load i64, ptr %i.de, align 8, !alias.scope !1071, !noundef !5 ; 2 uses
  %i.dq = getelementptr i8, ptr %i.de, i64 8
  %.sroa.06.0.val23.i.1 = load i64, ptr %i.dq, align 8, !alias.scope !1071
  %i.dr = icmp eq i64 %.sroa.011.0.val.i.1, %.sroa.06.0.val.i.1
  %i.ds = icmp ult i64 %.sroa.011.0.val.i.1, %.sroa.06.0.val.i.1
  %i.dt = icmp ult i64 %.sroa.011.0.val22.i.1, %.sroa.06.0.val23.i.1
  %.sroa.0.0.i.i.i26.1 = select i1 %i.dr, i1 %i.dt, i1 %i.ds ; 3 uses
  %..i21.i.1 = select i1 %.sroa.0.0.i.i.i26.1, ptr %i.dc, ptr %i.de
  %i.du = xor i1 %.sroa.0.0.i.i.i26.1, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull align 8 dereferenceable(16) %..i21.i.1, i64 16, i1 false), !noalias !1072
  %i.dv = zext i1 %.sroa.0.0.i.i.i26.1 to i64
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.dv ; 4 uses
  %i.dx = zext i1 %i.du to i64
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.dx ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.017.0.val.i.1 = load i64, ptr %i.dm, align 8, !alias.scope !1071, !noundef !5 ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dm, i64 8
  %.sroa.017.0.val24.i.1 = load i64, ptr %i.ea, align 8, !alias.scope !1071
  %.sroa.015.0.val.i.1 = load i64, ptr %i.dn, align 8, !alias.scope !1071, !noundef !5 ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dn, i64 8
  %.sroa.015.0.val25.i.1 = load i64, ptr %i.eb, align 8, !alias.scope !1071
  %i.ec = icmp eq i64 %.sroa.017.0.val.i.1, %.sroa.015.0.val.i.1
  %i.ed = icmp ult i64 %.sroa.017.0.val.i.1, %.sroa.015.0.val.i.1
  %i.ee = icmp ult i64 %.sroa.017.0.val24.i.1, %.sroa.015.0.val25.i.1
  %.sroa.0.0.i.i26.i.1 = select i1 %i.ec, i1 %i.ee, i1 %i.ed ; 3 uses
  %..i.i.1 = select i1 %.sroa.0.0.i.i26.i.1, ptr %i.dn, ptr %i.dm
  %i.ef = xor i1 %.sroa.0.0.i.i26.i.1, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.do, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.1, i64 16, i1 false), !noalias !1073
  %.neg.i.i.1 = sext i1 %i.ef to i64
  %i.eg = getelementptr [16 x i8], ptr %i.dm, i64 %.neg.i.i.1 ; 4 uses
  %.neg13.i.i.1 = sext i1 %.sroa.0.0.i.i26.i.1 to i64
  %i.eh = getelementptr [16 x i8], ptr %i.dn, i64 %.neg13.i.i.1 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.011.0.val.i.2 = load i64, ptr %i.dw, align 8, !alias.scope !1071, !noundef !5 ; 2 uses
  %i.ej = getelementptr i8, ptr %i.dw, i64 8
  %.sroa.011.0.val22.i.2 = load i64, ptr %i.ej, align 8, !alias.scope !1071
  %.sroa.06.0.val.i.2 = load i64, ptr %i.dy, align 8, !alias.scope !1071, !noundef !5 ; 2 uses
  %i.ek = getelementptr i8, ptr %i.dy, i64 8
  %.sroa.06.0.val23.i.2 = load i64, ptr %i.ek, align 8, !alias.scope !1071
  %i.el = icmp eq i64 %.sroa.011.0.val.i.2, %.sroa.06.0.val.i.2
  %i.em = icmp ult i64 %.sroa.011.0.val.i.2, %.sroa.06.0.val.i.2
  %i.en = icmp ult i64 %.sroa.011.0.val22.i.2, %.sroa.06.0.val23.i.2
  %.sroa.0.0.i.i.i26.2 = select i1 %i.el, i1 %i.en, i1 %i.em ; 3 uses
  %..i21.i.2 = select i1 %.sroa.0.0.i.i.i26.2, ptr %i.dw, ptr %i.dy
  %i.eo = xor i1 %.sroa.0.0.i.i.i26.2, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, ptr noundef nonnull align 8 dereferenceable(16) %..i21.i.2, i64 16, i1 false), !noalias !1072
  %i.ep = zext i1 %.sroa.0.0.i.i.i26.2 to i64
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.dw, i64 %i.ep ; 4 uses
  %i.er = zext i1 %i.eo to i64
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.dy, i64 %i.er ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.017.0.val.i.2 = load i64, ptr %i.eg, align 8, !alias.scope !1071, !noundef !5 ; 2 uses
  %i.eu = getelementptr i8, ptr %i.eg, i64 8
  %.sroa.017.0.val24.i.2 = load i64, ptr %i.eu, align 8, !alias.scope !1071
  %.sroa.015.0.val.i.2 = load i64, ptr %i.eh, align 8, !alias.scope !1071, !noundef !5 ; 2 uses
  %i.ev = getelementptr i8, ptr %i.eh, i64 8
  %.sroa.015.0.val25.i.2 = load i64, ptr %i.ev, align 8, !alias.scope !1071
  %i.ew = icmp eq i64 %.sroa.017.0.val.i.2, %.sroa.015.0.val.i.2
  %i.ex = icmp ult i64 %.sroa.017.0.val.i.2, %.sroa.015.0.val.i.2
  %i.ey = icmp ult i64 %.sroa.017.0.val24.i.2, %.sroa.015.0.val25.i.2
  %.sroa.0.0.i.i26.i.2 = select i1 %i.ew, i1 %i.ey, i1 %i.ex ; 3 uses
  %..i.i.2 = select i1 %.sroa.0.0.i.i26.i.2, ptr %i.eh, ptr %i.eg
  %i.ez = xor i1 %.sroa.0.0.i.i26.i.2, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ei, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.2, i64 16, i1 false), !noalias !1073
  %.neg.i.i.2 = sext i1 %i.ez to i64
  %i.fa = getelementptr [16 x i8], ptr %i.eg, i64 %.neg.i.i.2 ; 4 uses
  %.neg13.i.i.2 = sext i1 %.sroa.0.0.i.i26.i.2 to i64
  %i.fb = getelementptr [16 x i8], ptr %i.eh, i64 %.neg13.i.i.2 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.011.0.val.i.3 = load i64, ptr %i.eq, align 8, !alias.scope !1071, !noundef !5 ; 2 uses
  %i.fd = getelementptr i8, ptr %i.eq, i64 8
  %.sroa.011.0.val22.i.3 = load i64, ptr %i.fd, align 8, !alias.scope !1071
  %.sroa.06.0.val.i.3 = load i64, ptr %i.es, align 8, !alias.scope !1071, !noundef !5 ; 2 uses
  %i.fe = getelementptr i8, ptr %i.es, i64 8
  %.sroa.06.0.val23.i.3 = load i64, ptr %i.fe, align 8, !alias.scope !1071
  %i.ff = icmp eq i64 %.sroa.011.0.val.i.3, %.sroa.06.0.val.i.3
  %i.fg = icmp ult i64 %.sroa.011.0.val.i.3, %.sroa.06.0.val.i.3
  %i.fh = icmp ult i64 %.sroa.011.0.val22.i.3, %.sroa.06.0.val23.i.3
  %.sroa.0.0.i.i.i26.3 = select i1 %i.ff, i1 %i.fh, i1 %i.fg ; 3 uses
  %..i21.i.3 = select i1 %.sroa.0.0.i.i.i26.3, ptr %i.eq, ptr %i.es
  %i.fi = xor i1 %.sroa.0.0.i.i.i26.3, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.et, ptr noundef nonnull align 8 dereferenceable(16) %..i21.i.3, i64 16, i1 false), !noalias !1072
  %i.fj = zext i1 %.sroa.0.0.i.i.i26.3 to i64
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %i.fj
  %i.fl = zext i1 %i.fi to i64
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.es, i64 %i.fl
  %.sroa.017.0.val.i.3 = load i64, ptr %i.fa, align 8, !alias.scope !1071, !noundef !5 ; 2 uses
  %i.fn = getelementptr i8, ptr %i.fa, i64 8
  %.sroa.017.0.val24.i.3 = load i64, ptr %i.fn, align 8, !alias.scope !1071
  %.sroa.015.0.val.i.3 = load i64, ptr %i.fb, align 8, !alias.scope !1071, !noundef !5 ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fb, i64 8
  %.sroa.015.0.val25.i.3 = load i64, ptr %i.fo, align 8, !alias.scope !1071
  %i.fp = icmp eq i64 %.sroa.017.0.val.i.3, %.sroa.015.0.val.i.3
  %i.fq = icmp ult i64 %.sroa.017.0.val.i.3, %.sroa.015.0.val.i.3
  %i.fr = icmp ult i64 %.sroa.017.0.val24.i.3, %.sroa.015.0.val25.i.3
  %.sroa.0.0.i.i26.i.3 = select i1 %i.fp, i1 %i.fr, i1 %i.fq ; 3 uses
  %..i.i.3 = select i1 %.sroa.0.0.i.i26.i.3, ptr %i.fb, ptr %i.fa
  %i.fs = xor i1 %.sroa.0.0.i.i26.i.3, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fc, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.3, i64 16, i1 false), !noalias !1073
  %.neg.i.i.3 = sext i1 %i.fs to i64
  %i.ft = getelementptr [16 x i8], ptr %i.fa, i64 %.neg.i.i.3
  %.neg13.i.i.3 = sext i1 %.sroa.0.0.i.i26.i.3 to i64
  %i.fu = getelementptr [16 x i8], ptr %i.fb, i64 %.neg13.i.i.3
  %i.fv = getelementptr i8, ptr %i.fu, i64 16
  %i.fw = getelementptr i8, ptr %i.ft, i64 16
  %i.fx = icmp ne ptr %i.fm, %i.fv
  %i.fy = icmp ne ptr %i.fk, %i.fw
  %or.cond.i = select i1 %i.fx, i1 true, i1 %i.fy, !prof !13
  br i1 %or.cond.i, label %bb.a, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeTyjENvYB1g_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit, !prof !13

bb.a:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #34, !noalias !1071
  unreachable

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeTyjENvYB1g_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %.lr.ph.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort18small_sort_generalTyjENvYB1f_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [768 x i8], align 8               ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTyjENvYB1s_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i64 %1, 32
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 11 uses
  %i.e = icmp samesign ugt i64 %1, 15
  br i1 %i.e, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i64 %1, 7
  br i1 %i.f, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %1 ; 2 uses
  call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort8_stableTyjENvYB19_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.a, ptr noundef %i.g)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort12sort8_stableTyjENvYB19_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val16.i.i = load i64, ptr %i.k, align 8, !alias.scope !1085, !noalias !1086, !noundef !5 ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 24
  %.val17.i.i = load i64, ptr %i.l, align 8, !alias.scope !1085, !noalias !1086
  %.val18.i.i = load i64, ptr %0, align 8, !alias.scope !1085, !noalias !1086, !noundef !5 ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 8
  %.val19.i.i = load i64, ptr %i.m, align 8, !alias.scope !1085, !noalias !1086
  %i.n = icmp eq i64 %.val16.i.i, %.val18.i.i
  %i.o = icmp ult i64 %.val16.i.i, %.val18.i.i
  %i.p = icmp ult i64 %.val17.i.i, %.val19.i.i
  %.sroa.0.0.i.i.i.i = select i1 %i.n, i1 %i.p, i1 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val12.i.i = load i64, ptr %i.q, align 8, !alias.scope !1085, !noalias !1086, !noundef !5 ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 56
  %.val13.i.i = load i64, ptr %i.s, align 8, !alias.scope !1085, !noalias !1086
  %.val14.i.i = load i64, ptr %i.r, align 8, !alias.scope !1085, !noalias !1086, !noundef !5 ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 40
  %.val15.i.i = load i64, ptr %i.t, align 8, !alias.scope !1085, !noalias !1086
  %i.u = icmp eq i64 %.val12.i.i, %.val14.i.i
  %i.v = icmp ult i64 %.val12.i.i, %.val14.i.i
  %i.w = icmp ult i64 %.val13.i.i, %.val15.i.i
  %.sroa.0.0.i.i20.i.i = select i1 %i.u, i1 %i.w, i1 %i.v ; 2 uses
  %i.x = zext i1 %.sroa.0.0.i.i.i.i to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.x ; 4 uses
  %i.z = xor i1 %.sroa.0.0.i.i.i.i, true
  %i.aa = zext i1 %i.z to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.aa ; 5 uses
  %i.ac = select i1 %.sroa.0.0.i.i20.i.i, i64 3, i64 2
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ac ; 5 uses
  %i.ae = select i1 %.sroa.0.0.i.i20.i.i, i64 2, i64 3
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ae ; 4 uses
  %.val8.i.i = load i64, ptr %i.ad, align 8, !alias.scope !1085, !noalias !1086, !noundef !5 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.ad, i64 8
  %.val9.i.i = load i64, ptr %i.ag, align 8, !alias.scope !1085, !noalias !1086
  %.val10.i.i = load i64, ptr %i.y, align 8, !alias.scope !1085, !noalias !1086, !noundef !5 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.y, i64 8
  %.val11.i.i = load i64, ptr %i.ah, align 8, !alias.scope !1085, !noalias !1086
  %i.ai = icmp eq i64 %.val8.i.i, %.val10.i.i
  %i.aj = icmp ult i64 %.val8.i.i, %.val10.i.i
  %i.ak = icmp ult i64 %.val9.i.i, %.val11.i.i
  %.sroa.0.0.i.i21.i.i = select i1 %i.ai, i1 %i.ak, i1 %i.aj ; 3 uses
  %.val4.i.i = load i64, ptr %i.af, align 8, !alias.scope !1085, !noalias !1086, !noundef !5 ; 2 uses
  %i.al = getelementptr i8, ptr %i.af, i64 8
  %.val5.i.i = load i64, ptr %i.al, align 8, !alias.scope !1085, !noalias !1086
  %.val6.i.i = load i64, ptr %i.ab, align 8, !alias.scope !1085, !noalias !1086, !noundef !5 ; 2 uses
  %i.am = getelementptr i8, ptr %i.ab, i64 8
  %.val7.i.i = load i64, ptr %i.am, align 8, !alias.scope !1085, !noalias !1086
  %i.an = icmp eq i64 %.val4.i.i, %.val6.i.i
  %i.ao = icmp ult i64 %.val4.i.i, %.val6.i.i
  %i.ap = icmp ult i64 %.val5.i.i, %.val7.i.i
  %.sroa.0.0.i.i22.i.i = select i1 %i.an, i1 %i.ap, i1 %i.ao ; 3 uses
  %i.aq = select i1 %.sroa.0.0.i.i21.i.i, ptr %i.ad, ptr %i.y, !unpredictable !5
  %i.ar = select i1 %.sroa.0.0.i.i22.i.i, ptr %i.ab, ptr %i.af, !unpredictable !5
  %i.as = select i1 %.sroa.0.0.i.i22.i.i, ptr %i.ad, ptr %i.ab, !unpredictable !5
  %i.at = select i1 %.sroa.0.0.i.i21.i.i, ptr %i.y, ptr %i.as, !unpredictable !5 ; 4 uses
  %i.au = select i1 %.sroa.0.0.i.i21.i.i, ptr %i.ab, ptr %i.ad, !unpredictable !5
  %i.av = select i1 %.sroa.0.0.i.i22.i.i, ptr %i.af, ptr %i.au, !unpredictable !5 ; 4 uses
  %.val.i.i = load i64, ptr %i.av, align 8, !alias.scope !1085, !noalias !1086, !noundef !5 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %.val1.i.i = load i64, ptr %i.aw, align 8, !alias.scope !1085, !noalias !1086
  %.val2.i.i = load i64, ptr %i.at, align 8, !alias.scope !1085, !noalias !1086, !noundef !5 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.at, i64 8
  %.val3.i.i = load i64, ptr %i.ax, align 8, !alias.scope !1085, !noalias !1086
  %i.ay = icmp eq i64 %.val.i.i, %.val2.i.i
  %i.az = icmp ult i64 %.val.i.i, %.val2.i.i
  %i.ba = icmp ult i64 %.val1.i.i, %.val3.i.i
  %.sroa.0.0.i.i23.i.i = select i1 %i.ay, i1 %i.ba, i1 %i.az ; 2 uses
  %i.bb = select i1 %.sroa.0.0.i.i23.i.i, ptr %i.av, ptr %i.at, !unpredictable !5
  %i.bc = select i1 %.sroa.0.0.i.i23.i.i, ptr %i.at, ptr %i.av, !unpredictable !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !alias.scope !1087
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false), !alias.scope !1087
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !alias.scope !1087
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !alias.scope !1087
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d ; 12 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.d ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.val16.i30.i = load i64, ptr %i.bi, align 8, !alias.scope !1085, !noalias !1086, !noundef !5 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bg, i64 24
  %.val17.i31.i = load i64, ptr %i.bj, align 8, !alias.scope !1085, !noalias !1086
  %.val18.i32.i = load i64, ptr %i.bg, align 8, !alias.scope !1085, !noalias !1086, !noundef !5 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bg, i64 8
  %.val19.i33.i = load i64, ptr %i.bk, align 8, !alias.scope !1085, !noalias !1086
  %i.bl = icmp eq i64 %.val16.i30.i, %.val18.i32.i
  %i.bm = icmp ult i64 %.val16.i30.i, %.val18.i32.i
  %i.bn = icmp ult i64 %.val17.i31.i, %.val19.i33.i
  %.sroa.0.0.i.i.i34.i = select i1 %i.bl, i1 %i.bn, i1 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %.val12.i35.i = load i64, ptr %i.bo, align 8, !alias.scope !1085, !noalias !1086, !noundef !5 ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bg, i64 56
  %.val13.i36.i = load i64, ptr %i.bq, align 8, !alias.scope !1085, !noalias !1086
  %.val14.i37.i = load i64, ptr %i.bp, align 8, !alias.scope !1085, !noalias !1086, !noundef !5 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bg, i64 40
  %.val15.i38.i = load i64, ptr %i.br, align 8, !alias.scope !1085, !noalias !1086
  %i.bs = icmp eq i64 %.val12.i35.i, %.val14.i37.i
  %i.bt = icmp ult i64 %.val12.i35.i, %.val14.i37.i
  %i.bu = icmp ult i64 %.val13.i36.i, %.val15.i38.i
  %.sroa.0.0.i.i20.i39.i = select i1 %i.bs, i1 %i.bu, i1 %i.bt ; 2 uses
  %i.bv = zext i1 %.sroa.0.0.i.i.i34.i to i64
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %i.bv ; 4 uses
  %i.bx = xor i1 %.sroa.0.0.i.i.i34.i, true
  %i.by = zext i1 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %i.by ; 5 uses
  %i.ca = select i1 %.sroa.0.0.i.i20.i39.i, i64 3, i64 2
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %i.ca ; 5 uses
  %i.cc = select i1 %.sroa.0.0.i.i20.i39.i, i64 2, i64 3
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %i.cc ; 4 uses
  %.val8.i40.i = load i64, ptr %i.cb, align 8, !alias.scope !1085, !noalias !1086, !noundef !5 ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cb, i64 8
  %.val9.i41.i = load i64, ptr %i.ce, align 8, !alias.scope !1085, !noalias !1086
  %.val10.i42.i = load i64, ptr %i.bw, align 8, !alias.scope !1085, !noalias !1086, !noundef !5 ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bw, i64 8
  %.val11.i43.i = load i64, ptr %i.cf, align 8, !alias.scope !1085, !noalias !1086
  %i.cg = icmp eq i64 %.val8.i40.i, %.val10.i42.i
  %i.ch = icmp ult i64 %.val8.i40.i, %.val10.i42.i
  %i.ci = icmp ult i64 %.val9.i41.i, %.val11.i43.i
  %.sroa.0.0.i.i21.i44.i = select i1 %i.cg, i1 %i.ci, i1 %i.ch ; 3 uses
  %.val4.i45.i = load i64, ptr %i.cd, align 8, !alias.scope !1085, !noalias !1086, !noundef !5 ; 2 uses
  %i.cj = getelementptr i8, ptr %i.cd, i64 8
  %.val5.i46.i = load i64, ptr %i.cj, align 8, !alias.scope !1085, !noalias !1086
  %.val6.i47.i = load i64, ptr %i.bz, align 8, !alias.scope !1085, !noalias !1086, !noundef !5 ; 2 uses
  %i.ck = getelementptr i8, ptr %i.bz, i64 8
  %.val7.i48.i = load i64, ptr %i.ck, align 8, !alias.scope !1085, !noalias !1086
  %i.cl = icmp eq i64 %.val4.i45.i, %.val6.i47.i
  %i.cm = icmp ult i64 %.val4.i45.i, %.val6.i47.i
  %i.cn = icmp ult i64 %.val5.i46.i, %.val7.i48.i
  %.sroa.0.0.i.i22.i49.i = select i1 %i.cl, i1 %i.cn, i1 %i.cm ; 3 uses
  %i.co = select i1 %.sroa.0.0.i.i21.i44.i, ptr %i.cb, ptr %i.bw, !unpredictable !5
  %i.cp = select i1 %.sroa.0.0.i.i22.i49.i, ptr %i.bz, ptr %i.cd, !unpredictable !5
  %i.cq = select i1 %.sroa.0.0.i.i22.i49.i, ptr %i.cb, ptr %i.bz, !unpredictable !5
  %i.cr = select i1 %.sroa.0.0.i.i21.i44.i, ptr %i.bw, ptr %i.cq, !unpredictable !5 ; 4 uses
  %i.cs = select i1 %.sroa.0.0.i.i21.i44.i, ptr %i.bz, ptr %i.cb, !unpredictable !5
  %i.ct = select i1 %.sroa.0.0.i.i22.i49.i, ptr %i.cd, ptr %i.cs, !unpredictable !5 ; 4 uses
  %.val.i50.i = load i64, ptr %i.ct, align 8, !alias.scope !1085, !noalias !1086, !noundef !5 ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 8
  %.val1.i51.i = load i64, ptr %i.cu, align 8, !alias.scope !1085, !noalias !1086
  %.val2.i52.i = load i64, ptr %i.cr, align 8, !alias.scope !1085, !noalias !1086, !noundef !5 ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cr, i64 8
  %.val3.i53.i = load i64, ptr %i.cv, align 8, !alias.scope !1085, !noalias !1086
  %i.cw = icmp eq i64 %.val.i50.i, %.val2.i52.i
  %i.cx = icmp ult i64 %.val.i50.i, %.val2.i52.i
  %i.cy = icmp ult i64 %.val1.i51.i, %.val3.i53.i
  %.sroa.0.0.i.i23.i54.i = select i1 %i.cw, i1 %i.cy, i1 %i.cx ; 2 uses
  %i.cz = select i1 %.sroa.0.0.i.i23.i54.i, ptr %i.ct, ptr %i.cr, !unpredictable !5
  %i.da = select i1 %.sroa.0.0.i.i23.i54.i, ptr %i.cr, ptr %i.ct, !unpredictable !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.co, i64 16, i1 false), !alias.scope !1087
  %i.db = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.db, ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i64 16, i1 false), !alias.scope !1087
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull align 8 dereferenceable(16) %i.da, i64 16, i1 false), !alias.scope !1087
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i64 16, i1 false), !alias.scope !1087
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !alias.scope !1087
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false), !alias.scope !1087
  br label %bb.i

end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keybNCINvMB18_INtB18_10NameServerB2a_E3newATNtNtB2g_4xfer8ProtocolINtNtB4Y_12dns_exchange11DnsExchangeB2a_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example:bb.a
  %.val6.i33.i = load i8, ptr %i.bg, align 8, !range !12, !alias.scope !1437, !noalias !1438, !noundef !5
  %i.bh = getelementptr i8, ptr %i.ba, i64 112
  %.val7.i34.i = load i8, ptr %i.bh, align 8, !range !12, !alias.scope !1437, !noalias !1438, !noundef !5
  %.not.i10.i35.i = icmp eq i8 %.val6.i33.i, 0
  %i.bi = icmp ne i8 %.val7.i34.i, 0
  %i.bj = and i1 %.not.i10.i35.i, %i.bi           ; 2 uses
  %i.bk = zext i1 %i.bf to i64
  %i.bl = getelementptr inbounds nuw [40 x i8], ptr %i.ba, i64 %i.bk ; 3 uses
  %i.bm = xor i1 %i.bf, true
  %i.bn = zext i1 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [40 x i8], ptr %i.ba, i64 %i.bn ; 4 uses
  %i.bp = select i1 %i.bj, i64 3, i64 2
  %i.bq = getelementptr inbounds nuw [40 x i8], ptr %i.ba, i64 %i.bp ; 4 uses
  %i.br = select i1 %i.bj, i64 2, i64 3
  %i.bs = getelementptr inbounds nuw [40 x i8], ptr %i.ba, i64 %i.br ; 3 uses
  %i.bt = getelementptr i8, ptr %i.bq, i64 32
  %.val4.i36.i = load i8, ptr %i.bt, align 8, !range !12, !alias.scope !1437, !noalias !1438, !noundef !5
  %i.bu = getelementptr i8, ptr %i.bl, i64 32
  %.val5.i37.i = load i8, ptr %i.bu, align 8, !range !12, !alias.scope !1437, !noalias !1438, !noundef !5
  %.not.i11.i38.i = icmp eq i8 %.val4.i36.i, 0
  %i.bv = icmp ne i8 %.val5.i37.i, 0
  %i.bw = and i1 %.not.i11.i38.i, %i.bv           ; 3 uses
  %i.bx = getelementptr i8, ptr %i.bs, i64 32
  %.val2.i39.i = load i8, ptr %i.bx, align 8, !range !12, !alias.scope !1437, !noalias !1438, !noundef !5
  %i.by = getelementptr i8, ptr %i.bo, i64 32
  %.val3.i40.i = load i8, ptr %i.by, align 8, !range !12, !alias.scope !1437, !noalias !1438, !noundef !5
  %.not.i12.i41.i = icmp eq i8 %.val2.i39.i, 0
  %i.bz = icmp ne i8 %.val3.i40.i, 0
  %i.ca = and i1 %.not.i12.i41.i, %i.bz           ; 3 uses
  %i.cb = select i1 %i.bw, ptr %i.bq, ptr %i.bl, !unpredictable !5
  %i.cc = select i1 %i.ca, ptr %i.bo, ptr %i.bs, !unpredictable !5
  %i.cd = select i1 %i.ca, ptr %i.bq, ptr %i.bo, !unpredictable !5
  %i.ce = select i1 %i.bw, ptr %i.bl, ptr %i.cd, !unpredictable !5 ; 3 uses
  %i.cf = select i1 %i.bw, ptr %i.bo, ptr %i.bq, !unpredictable !5
  %i.cg = select i1 %i.ca, ptr %i.bs, ptr %i.cf, !unpredictable !5 ; 3 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 32
  %.val.i42.i = load i8, ptr %i.ch, align 8, !range !12, !alias.scope !1437, !noalias !1438, !noundef !5
  %i.ci = getelementptr i8, ptr %i.ce, i64 32
  %.val1.i43.i = load i8, ptr %i.ci, align 8, !range !12, !alias.scope !1437, !noalias !1438, !noundef !5
  %.not.i13.i44.i = icmp eq i8 %.val.i42.i, 0
  %i.cj = icmp ne i8 %.val1.i43.i, 0
  %i.ck = and i1 %.not.i13.i44.i, %i.cj           ; 2 uses
  %i.cl = select i1 %i.ck, ptr %i.cg, ptr %i.ce, !unpredictable !5
  %i.cm = select i1 %i.ck, ptr %i.ce, ptr %i.cg, !unpredictable !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %i.cb, i64 40, i1 false), !alias.scope !1439
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cn, ptr noundef nonnull align 8 dereferenceable(40) %i.cl, i64 40, i1 false), !alias.scope !1439
  %i.co = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.co, ptr noundef nonnull align 8 dereferenceable(40) %i.cm, i64 40, i1 false), !alias.scope !1439
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bb, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cp, ptr noundef nonnull align 8 dereferenceable(40) %i.cc, i64 40, i1 false), !alias.scope !1439
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.ph.lcssa98, i64 40, i1 false), !alias.scope !1439
  %i.cq = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph.lcssa98, i64 %i.k
  %i.cr = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cr, ptr noundef nonnull align 8 dereferenceable(40) %i.cq, i64 40, i1 false), !alias.scope !1439
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 4, %bb.f ], [ 1, %bb.g ] ; 4 uses
  %i.cs = sub nuw nsw i64 %.sroa.16.0.lcssa, %i.k ; 2 uses
  %i.ct = icmp samesign ult i64 %.sroa.0.0.i, %i.k
  br i1 %i.ct, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keybNCINvMB1b_INtB1b_10NameServerB2d_E3newATNtNtB2j_4xfer8ProtocolINtNtB51_12dns_exchange11DnsExchangeB2d_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i, %bb.h
  %i.cu = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph.lcssa98, i64 %i.k
  %i.cv = getelementptr [40 x i8], ptr %2, i64 %i.k ; 6 uses
  %i.cw = icmp samesign ult i64 %.sroa.0.0.i, %i.cs
  br i1 %i.cw, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keybNCINvMB1b_INtB1b_10NameServerB2d_E3newATNtNtB2j_4xfer8ProtocolINtNtB51_12dns_exchange11DnsExchangeB2d_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.dh, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keybNCINvMB1b_INtB1b_10NameServerB2d_E3newATNtNtB2j_4xfer8ProtocolINtNtB51_12dns_exchange11DnsExchangeB2d_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [40 x i8], ptr %i.cu, i64 %.sroa.05.08.1.i ; 3 uses
  %.idx273 = mul nuw nsw i64 %.sroa.05.08.1.i, 40
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.idx273 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cy, ptr noundef nonnull align 8 dereferenceable(40) %i.cx, i64 40, i1 false), !alias.scope !1439
  %i.cz = getelementptr i8, ptr %i.cy, i64 32
  %.val9.i46.1.i = load i8, ptr %i.cz, align 8, !range !12, !alias.scope !1438, !noalias !1437, !noundef !5
  %i.da = getelementptr i8, ptr %i.cy, i64 -8
  %.val10.i.1.i = load i8, ptr %i.da, align 8, !range !12, !alias.scope !1438, !noalias !1437, !noundef !5
  %.not.i.i47.1.i = icmp eq i8 %.val9.i46.1.i, 0
  %i.db = icmp ne i8 %.val10.i.1.i, 0
  %i.dc = and i1 %.not.i.i47.1.i, %i.db
  br i1 %i.dc, label %.split.preheader.i.1.i, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keybNCINvMB1b_INtB1b_10NameServerB2d_E3newATNtNtB2j_4xfer8ProtocolINtNtB51_12dns_exchange11DnsExchangeB2d_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.1.i

.split.preheader.i.1.i:                           ; preds = %.lr.ph.1.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 33
  %.sroa.0.0.i48.1.i265 = getelementptr inbounds i8, ptr %i.cy, i64 -40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cy, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i48.1.i265, i64 40, i1 false), !alias.scope !1438, !noalias !1437
  %i.de = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.de, label %.split6.i.1.i, label %.lr.ph268

.split.i.1.i:                                     ; preds = %.lr.ph268
  %.sroa.0.0.i48.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.i48.1.i267, i64 -40 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i48.1.i267, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i48.1.i, i64 40, i1 false), !alias.scope !1438, !noalias !1437
  %i.df = icmp eq ptr %.sroa.0.0.i48.1.i, %i.cv
  br i1 %i.df, label %.split6.i.1.i, label %.lr.ph268

.lr.ph268:                                        ; preds = %.split.preheader.i.1.i, %.split.i.1.i
  %.sroa.0.0.i48.1.i267 = phi ptr [ %.sroa.0.0.i48.1.i, %.split.i.1.i ], [ %.sroa.0.0.i48.1.i265, %.split.preheader.i.1.i ] ; 5 uses
  %.sroa.5.0.i.1.i266 = phi ptr [ %.sroa.0.0.i48.1.i267, %.split.i.1.i ], [ %i.cy, %.split.preheader.i.1.i ] ; 2 uses
  %i.dg = getelementptr i8, ptr %.sroa.5.0.i.1.i266, i64 -48
  %.val8.i49.1.i = load i8, ptr %i.dg, align 8, !range !12, !alias.scope !1438, !noalias !1437, !noundef !5
  %.not.i50.1.i = icmp eq i8 %.val8.i49.1.i, 0
  br i1 %.not.i50.1.i, label %.split6.i.1.i, label %.split.i.1.i

.split6.i.1.i:                                    ; preds = %.split.i.1.i, %.lr.ph268, %.split.preheader.i.1.i
  %.sroa.5.0.i.1.i.lcssa = phi ptr [ %i.cy, %.split.preheader.i.1.i ], [ %.sroa.0.0.i48.1.i267, %.split.i.1.i ], [ %.sroa.5.0.i.1.i266, %.lr.ph268 ] ; 2 uses
  %.sroa.0.0.i48.lcssa.1.i = phi ptr [ %i.cv, %.split.preheader.i.1.i ], [ %i.cv, %.split.i.1.i ], [ %.sroa.0.0.i48.1.i267, %.lr.ph268 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i48.lcssa.1.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cx, i64 32, i1 false), !alias.scope !1439
  %.sroa.4.0..us-phi.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -8
  store i8 0, ptr %.sroa.4.0..us-phi.sroa_idx.i.1.i, align 8, !alias.scope !1438, !noalias !1440
  %.sroa.5.0..us-phi.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..us-phi.sroa_idx.i.1.i, ptr noundef nonnull align 1 dereferenceable(7) %i.dd, i64 7, i1 false), !alias.scope !1439
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keybNCINvMB1b_INtB1b_10NameServerB2d_E3newATNtNtB2j_4xfer8ProtocolINtNtB51_12dns_exchange11DnsExchangeB2d_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.1.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keybNCINvMB1b_INtB1b_10NameServerB2d_E3newATNtNtB2j_4xfer8ProtocolINtNtB51_12dns_exchange11DnsExchangeB2d_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.1.i: ; preds = %.split6.i.1.i, %.lr.ph.1.i
  %i.dh = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.dh, %i.cs
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keybNCINvMB1b_INtB1b_10NameServerB2d_E3newATNtNtB2j_4xfer8ProtocolINtNtB51_12dns_exchange11DnsExchangeB2d_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.1.i, %.loopexit.i
  %i.di = add nsw i64 %.sroa.16.0.lcssa, -1       ; 2 uses
  %i.dj = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph.lcssa98, i64 %i.di
  %i.dk = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.di
  %i.dl = getelementptr i8, ptr %i.cv, i64 -40
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.dm = getelementptr i8, ptr %i.eh, i64 40     ; 2 uses
  %i.dn = getelementptr i8, ptr %i.eg, i64 40
  %i.do = and i64 %.sroa.16.0.lcssa, 1
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.j, label %bb.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %.sroa.0.0.ph.lcssa98, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.dq, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %2, %.loopexit.1.i ] ; 3 uses
  %.sroa.011.07.i.i = phi ptr [ %i.dx, %.lr.ph.i.i ], [ %i.cv, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.eh, %.lr.ph.i.i ], [ %i.dl, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.eg, %.lr.ph.i.i ], [ %i.dk, %.loopexit.1.i ] ; 3 uses
  %.sroa.019.04.i.i = phi ptr [ %i.ei, %.lr.ph.i.i ], [ %i.dj, %.loopexit.1.i ] ; 2 uses
  %i.dq = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %i.dr = getelementptr i8, ptr %.sroa.011.07.i.i, i64 32
  %.sroa.011.0.val.i.i = load i8, ptr %i.dr, align 8, !range !12, !alias.scope !1441, !noalias !1437, !noundef !5
  %i.ds = getelementptr i8, ptr %.sroa.06.08.i.i, i64 32
  %.sroa.06.0.val.i.i = load i8, ptr %i.ds, align 8, !range !12, !alias.scope !1441, !noalias !1437, !noundef !5
  %.not.i.i45.i = icmp eq i8 %.sroa.011.0.val.i.i, 0
  %i.dt = icmp ne i8 %.sroa.06.0.val.i.i, 0
  %i.du = and i1 %.not.i.i45.i, %i.dt             ; 3 uses
  %..i21.i.i = select i1 %i.du, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  %i.dv = xor i1 %i.du, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(40) %..i21.i.i, i64 40, i1 false), !alias.scope !1439, !noalias !1442
  %i.dw = zext i1 %i.du to i64
  %i.dx = getelementptr inbounds nuw [40 x i8], ptr %.sroa.011.07.i.i, i64 %i.dw ; 4 uses
  %i.dy = zext i1 %i.dv to i64
  %i.dz = getelementptr inbounds nuw [40 x i8], ptr %.sroa.06.08.i.i, i64 %i.dy ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 40 ; 2 uses
  %i.eb = getelementptr i8, ptr %.sroa.017.05.i.i, i64 32
  %.sroa.017.0.val.i.i = load i8, ptr %i.eb, align 8, !range !12, !alias.scope !1441, !noalias !1437, !noundef !5
  %i.ec = getelementptr i8, ptr %.sroa.015.06.i.i, i64 32
  %.sroa.015.0.val.i.i = load i8, ptr %i.ec, align 8, !range !12, !alias.scope !1441, !noalias !1437, !noundef !5
  %.not.i22.i.i = icmp eq i8 %.sroa.017.0.val.i.i, 0
  %i.ed = icmp ne i8 %.sroa.015.0.val.i.i, 0
  %i.ee = and i1 %.not.i22.i.i, %i.ed             ; 3 uses
  %..i.i.i = select i1 %i.ee, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.ef = xor i1 %i.ee, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(40) %..i.i.i, i64 40, i1 false), !alias.scope !1439, !noalias !1443
  %.neg.i.i.i = sext i1 %i.ef to i64
  %i.eg = getelementptr [40 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg13.i.i.i = sext i1 %i.ee to i64
  %i.eh = getelementptr [40 x i8], ptr %.sroa.015.06.i.i, i64 %.neg13.i.i.i ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -40
  %exitcond.not.i.i = icmp eq i64 %i.dq, %i.k
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ej = icmp ult ptr %i.dz, %i.dm               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.ej, ptr %i.dz, ptr %i.dx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ea, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.06.0..sroa.011.0.i.i, i64 40, i1 false), !alias.scope !1439
  %i.ek = zext i1 %i.ej to i64
  %i.el = getelementptr inbounds nuw [40 x i8], ptr %i.dz, i64 %i.ek
  %i.em = xor i1 %i.ej, true
  %i.en = zext i1 %i.em to i64
  %i.eo = getelementptr inbounds nuw [40 x i8], ptr %i.dx, i64 %i.en
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.dx, %._crit_edge.i.i ], [ %i.eo, %bb.i ]
  %.sroa.06.1.i.i = phi ptr [ %i.dz, %._crit_edge.i.i ], [ %i.el, %bb.i ]
  %i.ep = icmp ne ptr %.sroa.06.1.i.i, %i.dm
  %i.eq = icmp ne ptr %.sroa.011.1.i.i, %i.dn
  %or.cond.i.i = select i1 %i.ep, i1 true, i1 %i.eq, !prof !13
  br i1 %or.cond.i.i, label %bb.k, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1s_11sort_by_keybNCINvMB1v_INtB1v_10NameServerB2x_E3newATNtNtB2D_4xfer8ProtocolINtNtB5l_12dns_exchange11DnsExchangeB2x_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit, !prof !13

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #34
          to label %.noexc.i unwind label %bb.l

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.er = landingpad { ptr, i32 }
          cleanup
  %i.es = mul nuw nsw i64 %.sroa.16.0.lcssa, 40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa98, ptr nonnull align 8 %2, i64 %i.es, i1 false), !alias.scope !1439, !noalias !1444
  resume { ptr, i32 } %i.er

.lr.ph.i:                                         ; preds = %bb.h, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keybNCINvMB1b_INtB1b_10NameServerB2d_E3newATNtNtB2j_4xfer8ProtocolINtNtB51_12dns_exchange11DnsExchangeB2d_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i
  %.sroa.05.08.i = phi i64 [ %i.fd, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keybNCINvMB1b_INtB1b_10NameServerB2d_E3newATNtNtB2j_4xfer8ProtocolINtNtB51_12dns_exchange11DnsExchangeB2d_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i ], [ %.sroa.0.0.i, %bb.h ] ; 4 uses
  %i.et = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph.lcssa98, i64 %.sroa.05.08.i ; 3 uses
  %.idx = mul nuw nsw i64 %.sroa.05.08.i, 40
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.eu, ptr noundef nonnull align 8 dereferenceable(40) %i.et, i64 40, i1 false), !alias.scope !1439
  %i.ev = getelementptr i8, ptr %i.eu, i64 32
  %.val9.i46.i = load i8, ptr %i.ev, align 8, !range !12, !alias.scope !1438, !noalias !1437, !noundef !5
  %i.ew = getelementptr i8, ptr %i.eu, i64 -8
  %.val10.i.i = load i8, ptr %i.ew, align 8, !range !12, !alias.scope !1438, !noalias !1437, !noundef !5
  %.not.i.i47.i = icmp eq i8 %.val9.i46.i, 0
  %i.ex = icmp ne i8 %.val10.i.i, 0
  %i.ey = and i1 %.not.i.i47.i, %i.ex
  br i1 %i.ey, label %.split.preheader.i.i, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keybNCINvMB1b_INtB1b_10NameServerB2d_E3newATNtNtB2j_4xfer8ProtocolINtNtB51_12dns_exchange11DnsExchangeB2d_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i

.split.preheader.i.i:                             ; preds = %.lr.ph.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 33
  %.sroa.0.0.i48.i257 = getelementptr inbounds i8, ptr %i.eu, i64 -40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.eu, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i48.i257, i64 40, i1 false), !alias.scope !1438, !noalias !1437
  %i.fa = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.fa, label %.split6.i.i, label %.lr.ph260

.split.i.i:                                       ; preds = %.lr.ph260
  %.sroa.0.0.i48.i = getelementptr inbounds i8, ptr %.sroa.0.0.i48.i259, i64 -40 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i48.i259, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i48.i, i64 40, i1 false), !alias.scope !1438, !noalias !1437
  %i.fb = icmp eq ptr %.sroa.0.0.i48.i, %2
  br i1 %i.fb, label %.split6.i.i, label %.lr.ph260

.lr.ph260:                                        ; preds = %.split.preheader.i.i, %.split.i.i
  %.sroa.0.0.i48.i259 = phi ptr [ %.sroa.0.0.i48.i, %.split.i.i ], [ %.sroa.0.0.i48.i257, %.split.preheader.i.i ] ; 5 uses
  %.sroa.5.0.i.i258 = phi ptr [ %.sroa.0.0.i48.i259, %.split.i.i ], [ %i.eu, %.split.preheader.i.i ] ; 2 uses
  %i.fc = getelementptr i8, ptr %.sroa.5.0.i.i258, i64 -48
  %.val8.i49.i = load i8, ptr %i.fc, align 8, !range !12, !alias.scope !1438, !noalias !1437, !noundef !5
  %.not.i50.i = icmp eq i8 %.val8.i49.i, 0
  br i1 %.not.i50.i, label %.split6.i.i, label %.split.i.i

.split6.i.i:                                      ; preds = %.split.i.i, %.lr.ph260, %.split.preheader.i.i
  %.sroa.5.0.i.i.lcssa = phi ptr [ %i.eu, %.split.preheader.i.i ], [ %.sroa.0.0.i48.i259, %.split.i.i ], [ %.sroa.5.0.i.i258, %.lr.ph260 ] ; 2 uses
  %.sroa.0.0.i48.lcssa.i = phi ptr [ %2, %.split.preheader.i.i ], [ %2, %.split.i.i ], [ %.sroa.0.0.i48.i259, %.lr.ph260 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i48.lcssa.i, ptr noundef nonnull align 8 dereferenceable(32) %i.et, i64 32, i1 false), !alias.scope !1439
  %.sroa.4.0..us-phi.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -8
  store i8 0, ptr %.sroa.4.0..us-phi.sroa_idx.i.i, align 8, !alias.scope !1438, !noalias !1440
  %.sroa.5.0..us-phi.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..us-phi.sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %i.ez, i64 7, i1 false), !alias.scope !1439
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keybNCINvMB1b_INtB1b_10NameServerB2d_E3newATNtNtB2j_4xfer8ProtocolINtNtB51_12dns_exchange11DnsExchangeB2d_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keybNCINvMB1b_INtB1b_10NameServerB2d_E3newATNtNtB2j_4xfer8ProtocolINtNtB51_12dns_exchange11DnsExchangeB2d_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i: ; preds = %.split6.i.i, %.lr.ph.i
  %i.fd = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fd, %i.k
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0100.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph106, %.lr.ph ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_11sort_by_keybNCINvMBZ_INtBZ_10NameServerB21_E3newATNtNtB27_4xfer8ProtocolINtNtB4M_12dns_exchange11DnsExchangeB21_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph107, i64 noundef %.sroa.16.0100.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1s_11sort_by_keybNCINvMB1v_INtB1v_10NameServerB2x_E3newATNtNtB2D_4xfer8ProtocolINtNtB5l_12dns_exchange11DnsExchangeB2x_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit

.lr.ph253:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.099252 = phi i32 [ %i.fe, %bb.b ], [ %.sroa.025.0.ph105, %.lr.ph ]
  %.sroa.16.0100251 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph106, %.lr.ph ] ; 21 uses
  %i.fe = add nsw i32 %.sroa.025.099252, -1       ; 4 uses
  %i.ff = lshr i64 %.sroa.16.0100251, 3           ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.ff, 160
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph107, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.ff, 280
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph107, i64 %.idx2.i ; 3 uses
  %i.fi = icmp samesign ult i64 %.sroa.16.0100251, 64
  br i1 %i.fi, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3INtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_11sort_by_keybNCINvMB12_INtB12_10NameServerB24_E3newATNtNtB2a_4xfer8ProtocolINtNtB4R_12dns_exchange11DnsExchangeB24_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph253
  %i.fj = call fastcc noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB14_11sort_by_keybNCINvMB17_INtB17_10NameServerB29_E3newATNtNtB2f_4xfer8ProtocolINtNtB4X_12dns_exchange11DnsExchangeB29_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph107, ptr noundef readonly %i.fg, ptr noundef readonly %i.fh, i64 noundef %i.ff)
  br label %bb.n

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3INtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_11sort_by_keybNCINvMB12_INtB12_10NameServerB24_E3newATNtNtB2a_4xfer8ProtocolINtNtB4R_12dns_exchange11DnsExchangeB24_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i: ; preds = %.lr.ph253
  %.val6.i = load i8, ptr %i.c, align 8, !range !12, !alias.scope !1445, !noundef !5
  %i.fk = getelementptr i8, ptr %i.fg, i64 32
  %.val7.i = load i8, ptr %i.fk, align 8, !range !12, !alias.scope !1445, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq i8 %.val6.i, 0              ; 2 uses
  %i.fl = icmp ne i8 %.val7.i, 0                  ; 2 uses
  %i.fm = and i1 %.not.i.i, %i.fl
  %i.fn = getelementptr i8, ptr %i.fh, i64 32
  %.val5.i = load i8, ptr %i.fn, align 8, !range !12, !alias.scope !1445, !noundef !5
  %i.fo = icmp ne i8 %.val5.i, 0                  ; 2 uses
  %i.fp = xor i1 %i.fl, %i.fo
  %i.fq = and i1 %.not.i.i, %i.fp
  %.not.i9.i = icmp eq i8 %.val7.i, 0
  %i.fr = and i1 %.not.i9.i, %i.fo
  %i.fs = xor i1 %i.fm, %i.fr
  %..i.i = select i1 %i.fs, ptr %i.fh, ptr %i.fg
  %.sroa.0.0.i.i = select i1 %i.fq, ptr %.sroa.0.0.ph107, ptr %..i.i
  br label %bb.n

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1s_11sort_by_keybNCINvMB1v_INtB1v_10NameServerB2x_E3newATNtNtB2D_4xfer8ProtocolINtNtB5l_12dns_exchange11DnsExchangeB2x_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %.outer._crit_edge.thread, %bb.j, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.n:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3INtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_11sort_by_keybNCINvMB12_INtB12_10NameServerB24_E3newATNtNtB2a_4xfer8ProtocolINtNtB4R_12dns_exchange11DnsExchangeB24_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i, %bb.m
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3INtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_11sort_by_keybNCINvMB12_INtB12_10NameServerB24_E3newATNtNtB2a_4xfer8ProtocolINtNtB4R_12dns_exchange11DnsExchangeB24_EEj0_Es_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i ], [ %i.fj, %bb.m ]
  %i.ft = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.fu = sub nuw i64 %i.ft, %i.d                 ; 2 uses
  %.sroa.0.0.i37 = udiv exact i64 %i.fu, 40       ; 3 uses
  %i.fv = icmp samesign ult i64 %.sroa.0.0.i37, %.sroa.16.0100251
  call void @llvm.assume(i1 %i.fv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph107, i64 %i.fu ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.fw, i64 40, i1 false)
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.028.0.val = load i8, ptr %i.e, align 8, !range !12, !noundef !5
  %i.fx = getelementptr i8, ptr %i.fw, i64 32
  %.val = load i8, ptr %i.fx, align 8, !range !12, !noundef !5
  %.not.i = icmp eq i8 %.sroa.028.0.val, 0
  %i.fy = icmp ne i8 %.val, 0
  %i.fz = and i1 %.not.i, %i.fy
  br i1 %i.fz, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.n, %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !1446)
  %.not69 = icmp samesign ult i64 %3, %.sroa.16.0100251
  br i1 %.not69, label %bb.r, label %bb.q, !prof !13

bb.q:                                             ; preds = %bb.p
  %i.ga = getelementptr [40 x i8], ptr %2, i64 %.sroa.16.0100251 ; 4 uses
  %i.gb = getelementptr i8, ptr %i.fw, i64 32
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.t, %bb.q
  %.sroa.19.0.i = phi ptr [ %i.ga, %bb.q ], [ %i.go, %bb.t ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.q ], [ %.sroa.11.1.lcssa.i, %bb.t ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph107, %bb.q ], [ %i.gq, %bb.t ] ; 3 uses
  %.sroa.0.0.i39 = phi i64 [ %.sroa.0.0.i37, %bb.q ], [ %.sroa.16.0100251, %bb.t ] ; 2 uses
  %i.gc = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph107, i64 %.sroa.0.0.i39 ; 2 uses
  %i.gd = icmp ult ptr %.sroa.5.0.i, %i.gc
  br i1 %i.gd, label %.lr.ph.i41, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i41, %bb.s
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.s ], [ %i.gi, %.lr.ph.i41 ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.s ], [ %i.gl, %.lr.ph.i41 ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.s ], [ %i.gm, %.lr.ph.i41 ] ; 2 uses
  %i.ge = icmp eq i64 %.sroa.0.0.i39, %.sroa.16.0100251
  br i1 %i.ge, label %bb.u, label %bb.t

.lr.ph.i41:                                       ; preds = %bb.s, %.lr.ph.i41
  %.sroa.5.111.i = phi ptr [ %i.gm, %.lr.ph.i41 ], [ %.sroa.5.0.i, %bb.s ] ; 3 uses
  %.sroa.11.110.i = phi i64 [ %i.gl, %.lr.ph.i41 ], [ %.sroa.11.0.i, %bb.s ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %i.gi, %.lr.ph.i41 ], [ %.sroa.19.0.i, %bb.s ]
  %i.gf = getelementptr i8, ptr %.sroa.5.111.i, i64 32
  %.val.i = load i8, ptr %i.gf, align 8, !range !12, !alias.scope !1447, !noalias !1446, !noundef !5
  %.val12.i = load i8, ptr %i.gb, align 8, !range !12, !alias.scope !1447, !noalias !1446, !noundef !5
  %.not.i.i42 = icmp eq i8 %.val.i, 0
  %i.gg = icmp ne i8 %.val12.i, 0
  %i.gh = and i1 %.not.i.i42, %i.gg               ; 2 uses
  %i.gi = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -40 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.gh, ptr %2, ptr %i.gi
  %i.gj = getelementptr inbounds nuw [40 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.110.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gj, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.111.i, i64 40, i1 false), !alias.scope !1448, !noalias !1449
  %i.gk = zext i1 %i.gh to i64
  %i.gl = add i64 %.sroa.11.110.i, %i.gk          ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 40 ; 3 uses
  %i.gn = icmp ult ptr %i.gm, %i.gc
  br i1 %i.gn, label %.lr.ph.i41, label %._crit_edge.i

bb.t:                                             ; preds = %._crit_edge.i
  %i.go = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -40 ; 2 uses
  %i.gp = getelementptr inbounds nuw [40 x i8], ptr %i.go, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gp, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.1.lcssa.i, i64 40, i1 false), !alias.scope !1448, !noalias !1450
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 40
  br label %bb.s

bb.u:                                             ; preds = %._crit_edge.i
  %i.gr = mul nuw nsw i64 %.sroa.11.1.lcssa.i, 40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph107, ptr nonnull align 8 %2, i64 %i.gr, i1 false), !alias.scope !1448
  %i.gs = sub i64 %.sroa.16.0100251, %.sroa.11.1.lcssa.i ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.16.0100251, %.sroa.11.1.lcssa.i
  br i1 %.not18.i, label %.loopexit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.u
  %i.gt = getelementptr [40 x i8], ptr %.sroa.0.0.ph107, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.gs, 1
  %i.gu = icmp eq i64 %.sroa.16.0100251, %.neg
  br i1 %i.gu, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.gs, -2
  br label %bb.v
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB15_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example:bb.a
  %i.ak = icmp ult i8 %i.ag, %i.ai
  br i1 %i.aj, label %.split.i.1.i, label %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit.i30.1.i

_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit.i30.1.i: ; preds = %bb.i, %.lr.ph.1.i
  %.sroa.0.0.i.i.i.i.i31.1.i = phi i1 [ %i.ae, %.lr.ph.1.i ], [ %i.ak, %bb.i ]
  br i1 %.sroa.0.0.i.i.i.i.i31.1.i, label %bb.j, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB18_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit.1.i

.split.i.1.i:                                     ; preds = %bb.i
  %i.al = call i32 @memcmp(ptr noundef nonnull readonly align 8 dereferenceable(80) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.y, i64 64), !alias.scope !1898, !noalias !1883
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.j, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB18_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit.1.i

bb.j:                                             ; preds = %.split.i.1.i, %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit.i30.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1885
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.w, i64 80, i1 false), !noalias !1884
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef nonnull align 8 dereferenceable(80) %i.y, i64 80, i1 false), !alias.scope !1884, !noalias !1883
  %i.an = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.an, label %.split5._crit_edge.i.1.i, label %.lr.ph.i32.1.i

.lr.ph.i32.1.i:                                   ; preds = %bb.j
  %i.ao = load i64, ptr %i.s, align 8, !alias.scope !1899, !noalias !1900, !noundef !5 ; 2 uses
  %i.ap = load i8, ptr %i.t, align 8, !noalias !1885 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.backedge.i.1.i, %.lr.ph.i32.1.i
  %.sroa.0.06.i.1.i = phi ptr [ %i.y, %.lr.ph.i32.1.i ], [ %i.aq, %.backedge.i.1.i ] ; 6 uses
  %i.aq = getelementptr inbounds i8, ptr %.sroa.0.06.i.1.i, i64 -80 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1901)
  call void @llvm.experimental.noalias.scope.decl(metadata !1902)
  call void @llvm.experimental.noalias.scope.decl(metadata !1903)
  call void @llvm.experimental.noalias.scope.decl(metadata !1904)
  call void @llvm.experimental.noalias.scope.decl(metadata !1905)
  call void @llvm.experimental.noalias.scope.decl(metadata !1906)
  call void @llvm.experimental.noalias.scope.decl(metadata !1907)
  call void @llvm.experimental.noalias.scope.decl(metadata !1908)
  %i.ar = getelementptr inbounds i8, ptr %.sroa.0.06.i.1.i, i64 -16
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !1909, !noalias !1910, !noundef !5 ; 2 uses
  %i.at = icmp eq i64 %i.ao, %i.as
  %i.au = icmp ult i64 %i.ao, %i.as
  br i1 %i.at, label %bb.l, label %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit9.i.1.i

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds i8, ptr %.sroa.0.06.i.1.i, i64 -8
  %i.aw = load i8, ptr %i.av, align 8, !alias.scope !1909, !noalias !1910, !noundef !5 ; 2 uses
  %i.ax = icmp eq i8 %i.ap, %i.aw
  %i.ay = icmp ult i8 %i.ap, %i.aw
  br i1 %i.ax, label %.split5.i.1.i, label %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit9.i.1.i

_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit9.i.1.i: ; preds = %bb.l, %bb.k
  %.sroa.0.0.i.i.i.i8.i.1.i = phi i1 [ %i.au, %bb.k ], [ %i.ay, %bb.l ]
  br i1 %.sroa.0.0.i.i.i.i8.i.1.i, label %.backedge.i.1.i, label %.split5._crit_edge.i.1.i

.split5.i.1.i:                                    ; preds = %bb.l
  %i.az = call i32 @memcmp(ptr noundef nonnull readonly align 8 dereferenceable(80) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.aq, i64 64), !alias.scope !1911, !noalias !1883
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %.backedge.i.1.i, label %.split5._crit_edge.i.1.i

.backedge.i.1.i:                                  ; preds = %.split5.i.1.i, %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit9.i.1.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.06.i.1.i, ptr noundef nonnull align 8 dereferenceable(80) %i.aq, i64 80, i1 false), !alias.scope !1884, !noalias !1883
  %i.bb = icmp eq ptr %i.aq, %i.q
  br i1 %i.bb, label %.split5._crit_edge.i.1.i, label %bb.k

.split5._crit_edge.i.1.i:                         ; preds = %.backedge.i.1.i, %.split5.i.1.i, %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit9.i.1.i, %bb.j
  %.sroa.0.0.lcssa.i.1.i = phi ptr [ %i.y, %bb.j ], [ %.sroa.0.06.i.1.i, %.split5.i.1.i ], [ %.sroa.0.06.i.1.i, %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit9.i.1.i ], [ %i.q, %.backedge.i.1.i ]
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.0.lcssa.i.1.i, ptr noundef nonnull align 8 dereferenceable(80) %i.w, i64 80, i1 false), !alias.scope !1885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1885
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB18_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit.1.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB18_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit.1.i: ; preds = %.split5._crit_edge.i.1.i, %.split.i.1.i, %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit.i30.1.i
  %i.bc = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.bc, %i.r
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB18_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit.1.i, %.loopexit.i
  %i.bd = add nsw i64 %.sroa.16.0.lcssa, -1       ; 2 uses
  %i.be = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.ph.lcssa97, i64 %i.bd
  %i.bf = getelementptr inbounds nuw [80 x i8], ptr %2, i64 %i.bd
  %i.bg = getelementptr i8, ptr %i.q, i64 -80
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit23.i.i
  %i.bh = getelementptr i8, ptr %i.cw, i64 80     ; 2 uses
  %i.bi = getelementptr i8, ptr %i.cv, i64 80
  %i.bj = and i64 %.sroa.16.0.lcssa, 1
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.r, label %bb.q

.lr.ph.i.i:                                       ; preds = %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit23.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.cf, %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit23.i.i ], [ %.sroa.0.0.ph.lcssa97, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.bl, %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit23.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %i.ce, %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit23.i.i ], [ %2, %.loopexit.1.i ] ; 5 uses
  %.sroa.011.07.i.i = phi ptr [ %i.cc, %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit23.i.i ], [ %i.q, %.loopexit.1.i ] ; 5 uses
  %.sroa.015.06.i.i = phi ptr [ %i.cw, %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit23.i.i ], [ %i.bg, %.loopexit.1.i ] ; 5 uses
  %.sroa.017.05.i.i = phi ptr [ %i.cv, %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit23.i.i ], [ %i.bf, %.loopexit.1.i ] ; 5 uses
  %.sroa.019.04.i.i = phi ptr [ %i.cx, %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit23.i.i ], [ %i.be, %.loopexit.1.i ] ; 2 uses
  %i.bl = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1912)
  call void @llvm.experimental.noalias.scope.decl(metadata !1913)
  call void @llvm.experimental.noalias.scope.decl(metadata !1914)
  call void @llvm.experimental.noalias.scope.decl(metadata !1915)
  call void @llvm.experimental.noalias.scope.decl(metadata !1916)
  call void @llvm.experimental.noalias.scope.decl(metadata !1917)
  call void @llvm.experimental.noalias.scope.decl(metadata !1918)
  call void @llvm.experimental.noalias.scope.decl(metadata !1919)
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 64
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !1920, !noalias !1921, !noundef !5 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 64
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !1922, !noalias !1923, !noundef !5 ; 2 uses
  %i.bq = icmp eq i64 %i.bn, %i.bp
  %i.br = icmp ult i64 %i.bn, %i.bp
  br i1 %i.bq, label %bb.m, label %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit.i.i

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 72
  %i.bt = load i8, ptr %i.bs, align 8, !alias.scope !1920, !noalias !1921, !noundef !5 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 72
  %i.bv = load i8, ptr %i.bu, align 8, !alias.scope !1922, !noalias !1923, !noundef !5 ; 2 uses
  %i.bw = icmp eq i8 %i.bt, %i.bv
  %i.bx = icmp ult i8 %i.bt, %i.bv
  br i1 %i.bw, label %bb.n, label %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.by = call i32 @memcmp(ptr noundef nonnull readonly align 8 dereferenceable(80) %.sroa.011.07.i.i, ptr noundef nonnull readonly align 8 dereferenceable(80) %.sroa.06.08.i.i, i64 64), !alias.scope !1924, !noalias !1883
  %i.bz = icmp slt i32 %i.by, 0
  br label %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit.i.i

_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit.i.i: ; preds = %bb.n, %bb.m, %.lr.ph.i.i
  %.sroa.0.0.i.i.i.i.i.i = phi i1 [ %i.bz, %bb.n ], [ %i.bx, %bb.m ], [ %i.br, %.lr.ph.i.i ] ; 3 uses
  %..i21.i.i = select i1 %.sroa.0.0.i.i.i.i.i.i, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  %i.ca = xor i1 %.sroa.0.0.i.i.i.i.i.i, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(80) %..i21.i.i, i64 80, i1 false), !alias.scope !1885, !noalias !1925
  %i.cb = zext i1 %.sroa.0.0.i.i.i.i.i.i to i64
  %i.cc = getelementptr inbounds nuw [80 x i8], ptr %.sroa.011.07.i.i, i64 %i.cb ; 4 uses
  %i.cd = zext i1 %i.ca to i64
  %i.ce = getelementptr inbounds nuw [80 x i8], ptr %.sroa.06.08.i.i, i64 %i.cd ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1926)
  call void @llvm.experimental.noalias.scope.decl(metadata !1927)
  call void @llvm.experimental.noalias.scope.decl(metadata !1928)
  call void @llvm.experimental.noalias.scope.decl(metadata !1929)
  call void @llvm.experimental.noalias.scope.decl(metadata !1930)
  call void @llvm.experimental.noalias.scope.decl(metadata !1931)
  call void @llvm.experimental.noalias.scope.decl(metadata !1932)
  call void @llvm.experimental.noalias.scope.decl(metadata !1933)
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.017.05.i.i, i64 64
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !1934, !noalias !1935, !noundef !5 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.015.06.i.i, i64 64
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !1936, !noalias !1937, !noundef !5 ; 2 uses
  %i.ck = icmp eq i64 %i.ch, %i.cj
  %i.cl = icmp ult i64 %i.ch, %i.cj
  br i1 %i.ck, label %bb.o, label %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit23.i.i

bb.o:                                             ; preds = %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.017.05.i.i, i64 72
  %i.cn = load i8, ptr %i.cm, align 8, !alias.scope !1934, !noalias !1935, !noundef !5 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.015.06.i.i, i64 72
  %i.cp = load i8, ptr %i.co, align 8, !alias.scope !1936, !noalias !1937, !noundef !5 ; 2 uses
  %i.cq = icmp eq i8 %i.cn, %i.cp
  %i.cr = icmp ult i8 %i.cn, %i.cp
  br i1 %i.cq, label %bb.p, label %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit23.i.i

bb.p:                                             ; preds = %bb.o
  %i.cs = call i32 @memcmp(ptr noundef nonnull readonly align 8 dereferenceable(80) %.sroa.017.05.i.i, ptr noundef nonnull readonly align 8 dereferenceable(80) %.sroa.015.06.i.i, i64 64), !alias.scope !1938, !noalias !1883
  %i.ct = icmp slt i32 %i.cs, 0
  br label %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit23.i.i

_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit23.i.i: ; preds = %bb.p, %bb.o, %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit.i.i
  %.sroa.0.0.i.i.i.i22.i.i = phi i1 [ %i.ct, %bb.p ], [ %i.cr, %bb.o ], [ %i.cl, %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit.i.i ] ; 3 uses
  %..i.i.i = select i1 %.sroa.0.0.i.i.i.i22.i.i, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.cu = xor i1 %.sroa.0.0.i.i.i.i22.i.i, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(80) %..i.i.i, i64 80, i1 false), !alias.scope !1885, !noalias !1939
  %.neg.i.i.i = sext i1 %i.cu to i64
  %i.cv = getelementptr [80 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg13.i.i.i = sext i1 %.sroa.0.0.i.i.i.i22.i.i to i64
  %i.cw = getelementptr [80 x i8], ptr %.sroa.015.06.i.i, i64 %.neg13.i.i.i ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -80
  %exitcond.not.i.i = icmp eq i64 %i.bl, %i.n
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.cy = icmp ult ptr %i.ce, %i.bh               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.cy, ptr %i.ce, ptr %i.cc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cf, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.06.0..sroa.011.0.i.i, i64 80, i1 false), !alias.scope !1885
  %i.cz = zext i1 %i.cy to i64
  %i.da = getelementptr inbounds nuw [80 x i8], ptr %i.ce, i64 %i.cz
  %i.db = xor i1 %i.cy, true
  %i.dc = zext i1 %i.db to i64
  %i.dd = getelementptr inbounds nuw [80 x i8], ptr %i.cc, i64 %i.dc
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.cc, %._crit_edge.i.i ], [ %i.dd, %bb.q ]
  %.sroa.06.1.i.i = phi ptr [ %i.ce, %._crit_edge.i.i ], [ %i.da, %bb.q ]
  %i.de = icmp ne ptr %.sroa.06.1.i.i, %i.bh
  %i.df = icmp ne ptr %.sroa.011.1.i.i, %i.bi
  %or.cond.i.i = select i1 %i.de, i1 true, i1 %i.df, !prof !13
  br i1 %or.cond.i.i, label %bb.s, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB1s_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit, !prof !13

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #34
          to label %.noexc.i unwind label %bb.t, !noalias !1883

.noexc.i:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.dg = landingpad { ptr, i32 }
          cleanup
  %i.dh = mul nuw nsw i64 %.sroa.16.0.lcssa, 80
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa97, ptr nonnull align 8 %2, i64 %i.dh, i1 false), !alias.scope !1885, !noalias !1940
  resume { ptr, i32 } %i.dg

.lr.ph.i:                                         ; preds = %bb.h, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB18_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit.i
  %.sroa.05.08.i = phi i64 [ %i.eo, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB18_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit.i ], [ %.sroa.0.0.i, %bb.h ] ; 4 uses
  %i.di = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.ph.lcssa97, i64 %.sroa.05.08.i ; 3 uses
  %.idx.i = mul nuw nsw i64 %.sroa.05.08.i, 80
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dj, ptr noundef nonnull align 8 dereferenceable(80) %i.di, i64 80, i1 false), !alias.scope !1885
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -80 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1941)
  call void @llvm.experimental.noalias.scope.decl(metadata !1942)
  call void @llvm.experimental.noalias.scope.decl(metadata !1943)
  call void @llvm.experimental.noalias.scope.decl(metadata !1944)
  call void @llvm.experimental.noalias.scope.decl(metadata !1945)
  call void @llvm.experimental.noalias.scope.decl(metadata !1946)
  call void @llvm.experimental.noalias.scope.decl(metadata !1947)
  call void @llvm.experimental.noalias.scope.decl(metadata !1948)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 64
  %i.dm = load i64, ptr %i.dl, align 8, !alias.scope !1949, !noalias !1950, !noundef !5 ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dj, i64 -16
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !1951, !noalias !1952, !noundef !5 ; 2 uses
  %i.dp = icmp eq i64 %i.dm, %i.do
  %i.dq = icmp ult i64 %i.dm, %i.do
  br i1 %i.dp, label %bb.u, label %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit.i30.i

bb.u:                                             ; preds = %.lr.ph.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 72
  %i.ds = load i8, ptr %i.dr, align 8, !alias.scope !1949, !noalias !1950, !noundef !5 ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %i.dj, i64 -8
  %i.du = load i8, ptr %i.dt, align 8, !alias.scope !1951, !noalias !1952, !noundef !5 ; 2 uses
  %i.dv = icmp eq i8 %i.ds, %i.du
  %i.dw = icmp ult i8 %i.ds, %i.du
  br i1 %i.dv, label %.split.i.i, label %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit.i30.i

.split.i.i:                                       ; preds = %bb.u
  %i.dx = call i32 @memcmp(ptr noundef nonnull readonly align 8 dereferenceable(80) %i.dj, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.dk, i64 64), !alias.scope !1953, !noalias !1883
  %i.dy = icmp slt i32 %i.dx, 0
  br i1 %i.dy, label %bb.v, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB18_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit.i

_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit.i30.i: ; preds = %bb.u, %.lr.ph.i
  %.sroa.0.0.i.i.i.i.i31.i = phi i1 [ %i.dq, %.lr.ph.i ], [ %i.dw, %bb.u ]
  br i1 %.sroa.0.0.i.i.i.i.i31.i, label %bb.v, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB18_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit.i

bb.v:                                             ; preds = %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit.i30.i, %.split.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1885
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.di, i64 80, i1 false), !noalias !1884
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dj, ptr noundef nonnull align 8 dereferenceable(80) %i.dk, i64 80, i1 false), !alias.scope !1884, !noalias !1883
  %i.dz = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.dz, label %.split5._crit_edge.i.i, label %.lr.ph.i32.i

.lr.ph.i32.i:                                     ; preds = %bb.v
  %i.ea = load i64, ptr %i.s, align 8, !alias.scope !1954, !noalias !1955, !noundef !5 ; 2 uses
  %i.eb = load i8, ptr %i.t, align 8, !noalias !1885 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %.backedge.i.i, %.lr.ph.i32.i
  %.sroa.0.06.i.i = phi ptr [ %i.dk, %.lr.ph.i32.i ], [ %i.ec, %.backedge.i.i ] ; 6 uses
  %i.ec = getelementptr inbounds i8, ptr %.sroa.0.06.i.i, i64 -80 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1956)
  call void @llvm.experimental.noalias.scope.decl(metadata !1957)
  call void @llvm.experimental.noalias.scope.decl(metadata !1958)
  call void @llvm.experimental.noalias.scope.decl(metadata !1959)
  call void @llvm.experimental.noalias.scope.decl(metadata !1960)
  call void @llvm.experimental.noalias.scope.decl(metadata !1961)
  call void @llvm.experimental.noalias.scope.decl(metadata !1962)
  call void @llvm.experimental.noalias.scope.decl(metadata !1963)
  %i.ed = getelementptr inbounds i8, ptr %.sroa.0.06.i.i, i64 -16
  %i.ee = load i64, ptr %i.ed, align 8, !alias.scope !1964, !noalias !1965, !noundef !5 ; 2 uses
  %i.ef = icmp eq i64 %i.ea, %i.ee
  %i.eg = icmp ult i64 %i.ea, %i.ee
  br i1 %i.ef, label %bb.x, label %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit9.i.i

bb.x:                                             ; preds = %bb.w
  %i.eh = getelementptr inbounds i8, ptr %.sroa.0.06.i.i, i64 -8
  %i.ei = load i8, ptr %i.eh, align 8, !alias.scope !1964, !noalias !1965, !noundef !5 ; 2 uses
  %i.ej = icmp eq i8 %i.eb, %i.ei
  %i.ek = icmp ult i8 %i.eb, %i.ei
  br i1 %i.ej, label %.split5.i.i, label %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit9.i.i

.split5.i.i:                                      ; preds = %bb.x
  %i.el = call i32 @memcmp(ptr noundef nonnull readonly align 8 dereferenceable(80) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.ec, i64 64), !alias.scope !1966, !noalias !1883
  %i.em = icmp slt i32 %i.el, 0
  br i1 %i.em, label %.backedge.i.i, label %.split5._crit_edge.i.i

_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit9.i.i: ; preds = %bb.x, %bb.w
  %.sroa.0.0.i.i.i.i8.i.i = phi i1 [ %i.eg, %bb.w ], [ %i.ek, %bb.x ]
  br i1 %.sroa.0.0.i.i.i.i8.i.i, label %.backedge.i.i, label %.split5._crit_edge.i.i

.backedge.i.i:                                    ; preds = %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit9.i.i, %.split5.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.06.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.ec, i64 80, i1 false), !alias.scope !1884, !noalias !1883
  %i.en = icmp eq ptr %i.ec, %2
  br i1 %i.en, label %.split5._crit_edge.i.i, label %bb.w

.split5._crit_edge.i.i:                           ; preds = %.backedge.i.i, %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit9.i.i, %.split5.i.i, %bb.v
  %.sroa.0.0.lcssa.i.i = phi ptr [ %i.dk, %bb.v ], [ %.sroa.0.06.i.i, %.split5.i.i ], [ %.sroa.0.06.i.i, %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit9.i.i ], [ %2, %.backedge.i.i ]
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.0.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.di, i64 80, i1 false), !alias.scope !1885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1885
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB18_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB18_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit.i: ; preds = %.split5._crit_edge.i.i, %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit.i30.i, %.split.i.i
  %i.eo = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.eo, %i.n
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.099.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph105, %.lr.ph ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYBW_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph106, i64 noundef %.sroa.16.099.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull %6)
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB1s_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example.exit

.lr.ph257:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.098256 = phi i32 [ %i.ep, %bb.b ], [ %.sroa.025.0.ph104, %.lr.ph ]
  %.sroa.16.099255 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph105, %.lr.ph ] ; 21 uses
  %i.ep = add nsw i32 %.sroa.025.098256, -1       ; 4 uses
  %i.eq = lshr i64 %.sroa.16.099255, 3            ; 3 uses
  %.idx.i37 = mul nuw nsw i64 %i.eq, 320
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph106, i64 %.idx.i37 ; 7 uses
  %.idx2.i = mul nuw nsw i64 %i.eq, 560
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph106, i64 %.idx2.i ; 7 uses
  %i.et = icmp samesign ult i64 %.sroa.16.099255, 64
  br i1 %i.et, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph257
  %i.eu = call fastcc noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNvYB14_NtNtBa_3cmp10PartialOrd2ltECshke30g4Hb4g_20ipfs_private_example(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph106, ptr noundef readonly %i.er, ptr noundef readonly %i.es, i64 noundef %i.eq)
  br label %bb.ah

bb.z:                                             ; preds = %.lr.ph257
  call void @llvm.experimental.noalias.scope.decl(metadata !1967)
  call void @llvm.experimental.noalias.scope.decl(metadata !1968)
  call void @llvm.experimental.noalias.scope.decl(metadata !1969)
  call void @llvm.experimental.noalias.scope.decl(metadata !1970)
  call void @llvm.experimental.noalias.scope.decl(metadata !1971)
  call void @llvm.experimental.noalias.scope.decl(metadata !1972)
  call void @llvm.experimental.noalias.scope.decl(metadata !1973)
  call void @llvm.experimental.noalias.scope.decl(metadata !1974)
  %i.ev = load i64, ptr %i.d, align 8, !alias.scope !1975, !noalias !1976, !noundef !5 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 64
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !1977, !noalias !1978, !noundef !5 ; 4 uses
  %i.ey = icmp eq i64 %i.ev, %i.ex
  %i.ez = icmp ult i64 %i.ev, %i.ex
  br i1 %i.ey, label %bb.aa, label %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.fa = load i8, ptr %i.e, align 8, !alias.scope !1975, !noalias !1976, !noundef !5 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.er, i64 72
  %i.fc = load i8, ptr %i.fb, align 8, !alias.scope !1977, !noalias !1978, !noundef !5 ; 2 uses
  %i.fd = icmp eq i8 %i.fa, %i.fc
  %i.fe = icmp ult i8 %i.fa, %i.fc
  br i1 %i.fd, label %bb.ab, label %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.ff = call i32 @memcmp(ptr noundef nonnull readonly align 8 dereferenceable(80) %.sroa.0.0.ph106, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.er, i64 64), !alias.scope !1979
  %i.fg = icmp slt i32 %i.ff, 0
  br label %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit.i

_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit.i: ; preds = %bb.ab, %bb.aa, %bb.z
  %.sroa.0.0.i.i.i.i.i = phi i1 [ %i.fg, %bb.ab ], [ %i.fe, %bb.aa ], [ %i.ez, %bb.z ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1980)
  call void @llvm.experimental.noalias.scope.decl(metadata !1981)
  call void @llvm.experimental.noalias.scope.decl(metadata !1982)
  call void @llvm.experimental.noalias.scope.decl(metadata !1983)
  call void @llvm.experimental.noalias.scope.decl(metadata !1984)
  call void @llvm.experimental.noalias.scope.decl(metadata !1985)
  call void @llvm.experimental.noalias.scope.decl(metadata !1986)
  call void @llvm.experimental.noalias.scope.decl(metadata !1987)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.es, i64 64
  %i.fi = load i64, ptr %i.fh, align 8, !alias.scope !1988, !noalias !1989, !noundef !5 ; 4 uses
  %i.fj = icmp eq i64 %i.ev, %i.fi
  %i.fk = icmp ult i64 %i.ev, %i.fi
  br i1 %i.fj, label %bb.ac, label %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit4.i

bb.ac:                                            ; preds = %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit.i
  %i.fl = load i8, ptr %i.e, align 8, !alias.scope !1990, !noalias !1991, !noundef !5 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.es, i64 72
  %i.fn = load i8, ptr %i.fm, align 8, !alias.scope !1988, !noalias !1989, !noundef !5 ; 2 uses
  %i.fo = icmp eq i8 %i.fl, %i.fn
  %i.fp = icmp ult i8 %i.fl, %i.fn
  br i1 %i.fo, label %bb.ad, label %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit4.i

bb.ad:                                            ; preds = %bb.ac
  %i.fq = call i32 @memcmp(ptr noundef nonnull readonly align 8 dereferenceable(80) %.sroa.0.0.ph106, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.es, i64 64), !alias.scope !1992
  %i.fr = icmp slt i32 %i.fq, 0
  br label %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit4.i

_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit4.i: ; preds = %bb.ad, %bb.ac, %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit.i
  %.sroa.0.0.i.i.i.i3.i = phi i1 [ %i.fr, %bb.ad ], [ %i.fp, %bb.ac ], [ %i.fk, %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit.i ]
  %i.fs = xor i1 %.sroa.0.0.i.i.i.i.i, %.sroa.0.0.i.i.i.i3.i
  br i1 %i.fs, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %_RNvYNvYNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCshke30g4Hb4g_20ipfs_private_example.exit4.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1993)
  call void @llvm.experimental.noalias.scope.decl(metadata !1994)
end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2N_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example:bb.a
  %i.am = select i1 %i.ag, ptr %i.ae, ptr %i.al, !unpredictable !5 ; 3 uses
  %i.an = call fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull readonly %.val37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak) #37 ; 2 uses
  %i.ao = select i1 %i.an, ptr %i.am, ptr %i.ak, !unpredictable !5
  %i.ap = select i1 %i.an, ptr %i.ak, ptr %i.am, !unpredictable !5
  %i.aq = load i64, ptr %i.ah, align 8, !alias.scope !2514, !noalias !2515
  store i64 %i.aq, ptr %2, align 8, !alias.scope !2515, !noalias !2514
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = load i64, ptr %i.ao, align 8, !alias.scope !2514, !noalias !2515
  store i64 %i.as, ptr %i.ar, align 8, !alias.scope !2515, !noalias !2514
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = load i64, ptr %i.ap, align 8, !alias.scope !2514, !noalias !2515
  store i64 %i.au, ptr %i.at, align 8, !alias.scope !2515, !noalias !2514
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aw = load i64, ptr %i.ai, align 8, !alias.scope !2514, !noalias !2515
  store i64 %i.aw, ptr %i.av, align 8, !alias.scope !2515, !noalias !2514
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa218, i64 %i.k ; 8 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.k ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = call fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull readonly %.val37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.az, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ax) #37 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bd = call fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull readonly %.val37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bc) #37 ; 2 uses
  %i.be = zext i1 %i.ba to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.be ; 3 uses
  %i.bg = xor i1 %i.ba, true
  %i.bh = zext i1 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bh ; 4 uses
  %i.bj = select i1 %i.bd, i64 3, i64 2
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bj ; 4 uses
  %i.bl = select i1 %i.bd, i64 2, i64 3
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bl ; 3 uses
  %i.bn = call fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull readonly %.val37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bf) #37 ; 3 uses
  %i.bo = call fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull readonly %.val37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bi) #37 ; 3 uses
  %i.bp = select i1 %i.bn, ptr %i.bk, ptr %i.bf, !unpredictable !5
  %i.bq = select i1 %i.bo, ptr %i.bi, ptr %i.bm, !unpredictable !5
  %i.br = select i1 %i.bo, ptr %i.bk, ptr %i.bi, !unpredictable !5
  %i.bs = select i1 %i.bn, ptr %i.bf, ptr %i.br, !unpredictable !5 ; 3 uses
  %i.bt = select i1 %i.bn, ptr %i.bi, ptr %i.bk, !unpredictable !5
  %i.bu = select i1 %i.bo, ptr %i.bm, ptr %i.bt, !unpredictable !5 ; 3 uses
  %i.bv = call fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull readonly %.val37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bs) #37 ; 2 uses
  %i.bw = select i1 %i.bv, ptr %i.bu, ptr %i.bs, !unpredictable !5
  %i.bx = select i1 %i.bv, ptr %i.bs, ptr %i.bu, !unpredictable !5
  %i.by = load i64, ptr %i.bp, align 8, !alias.scope !2514, !noalias !2515
  store i64 %i.by, ptr %i.ay, align 8, !alias.scope !2515, !noalias !2514
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ca = load i64, ptr %i.bw, align 8, !alias.scope !2514, !noalias !2515
  store i64 %i.ca, ptr %i.bz, align 8, !alias.scope !2515, !noalias !2514
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.cc = load i64, ptr %i.bx, align 8, !alias.scope !2514, !noalias !2515
  store i64 %i.cc, ptr %i.cb, align 8, !alias.scope !2515, !noalias !2514
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ce = load i64, ptr %i.bq, align 8, !alias.scope !2514, !noalias !2515
  store i64 %i.ce, ptr %i.cd, align 8, !alias.scope !2515, !noalias !2514
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.cf = load i64, ptr %.sroa.0.0.ph.lcssa218, align 8, !alias.scope !2514, !noalias !2515
  store i64 %i.cf, ptr %2, align 8, !alias.scope !2515, !noalias !2514
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa218, i64 %i.k
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.k
  %i.ci = load i64, ptr %i.cg, align 8, !alias.scope !2514, !noalias !2515
  store i64 %i.ci, ptr %i.ch, align 8, !alias.scope !2515, !noalias !2514
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i = phi i64 [ 8, %bb.g ], [ 4, %bb.h ], [ 1, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2516
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.525.0..sroa_idx.i, align 8, !noalias !2516
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.k, ptr %.sroa.626.0..sroa_idx.i, align 8, !noalias !2516
  %i.cj = sub nuw nsw i64 %.sroa.16.0.lcssa, %i.k
  br label %bb.k

.loopexit18.i:                                    ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2Q_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i, %bb.k
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit18.i, %bb.j
  %.not.i.i = phi i1 [ false, %bb.j ], [ true, %.loopexit18.i ]
  %i.ck = phi i64 [ 0, %bb.j ], [ 1, %.loopexit18.i ]
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.525.0..sroa_idx.i, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !2517, !noalias !2516, !noundef !5 ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa218, i64 %i.cm
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cm ; 4 uses
  %i.cp = icmp eq i64 %i.cm, 0
  %.sroa.04.0.i = select i1 %i.cp, i64 %i.k, i64 %i.cj ; 2 uses
  %i.cq = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.04.0.i
  br i1 %i.cq, label %.lr.ph.i, label %.loopexit18.i

.lr.ph.i:                                         ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val37) ]
  br label %bb.r

bb.l:                                             ; preds = %.loopexit18.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2516
  call void @llvm.experimental.noalias.scope.decl(metadata !2518)
  %i.cr = add nsw i64 %.sroa.16.0.lcssa, -1       ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cr
  %i.ct = getelementptr [8 x i8], ptr %2, i64 %i.k ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 -8
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa218, i64 %i.cr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val37) ]
  br label %bb.m

._crit_edge.i.i:                                  ; preds = %.noexc35.i
  %i.cw = getelementptr i8, ptr %i.dn, i64 8      ; 2 uses
  %i.cx = getelementptr i8, ptr %i.dm, i64 8
  %i.cy = and i64 %.sroa.16.0.lcssa, 1
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %bb.o, label %bb.n

bb.m:                                             ; preds = %.noexc35.i, %bb.l
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.ph.lcssa218, %bb.l ], [ %i.de, %.noexc35.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ 0, %bb.l ], [ %i.da, %.noexc35.i ]
  %.sroa.06.08.i.i = phi ptr [ %2, %bb.l ], [ %i.dh, %.noexc35.i ] ; 3 uses
  %.sroa.011.07.i.i = phi ptr [ %i.ct, %bb.l ], [ %i.dj, %.noexc35.i ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.cu, %bb.l ], [ %i.dn, %.noexc35.i ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.cs, %bb.l ], [ %i.dm, %.noexc35.i ] ; 3 uses
  %.sroa.019.04.i.i = phi ptr [ %i.cv, %bb.l ], [ %i.do, %.noexc35.i ] ; 2 uses
  %i.da = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %i.db = invoke fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull readonly %.val37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.011.07.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.06.08.i.i) #37
          to label %.noexc.i unwind label %.loopexit.i ; 3 uses

.noexc.i:                                         ; preds = %bb.m
  %..i21.i.i = select i1 %i.db, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  %i.dc = load i64, ptr %..i21.i.i, align 8, !alias.scope !2519, !noalias !2520
  store i64 %i.dc, ptr %.sroa.0.010.i.i, align 8, !alias.scope !2514, !noalias !2521
  %i.dd = invoke fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull readonly %.val37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.017.05.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.015.06.i.i) #37
          to label %.noexc35.i unwind label %.loopexit.i ; 3 uses

.noexc35.i:                                       ; preds = %.noexc.i
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 8 ; 2 uses
  %i.df = xor i1 %i.db, true
  %i.dg = zext i1 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.08.i.i, i64 %i.dg ; 5 uses
  %i.di = zext i1 %i.db to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.07.i.i, i64 %i.di ; 4 uses
  %..i.i.i = select i1 %i.dd, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.dk = xor i1 %i.dd, true
  %i.dl = load i64, ptr %..i.i.i, align 8, !alias.scope !2519, !noalias !2522
  store i64 %i.dl, ptr %.sroa.019.04.i.i, align 8, !alias.scope !2514, !noalias !2523
  %.neg.i.i.i = sext i1 %i.dk to i64
  %i.dm = getelementptr [8 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg13.i.i.i = sext i1 %i.dd to i64
  %i.dn = getelementptr [8 x i8], ptr %.sroa.015.06.i.i, i64 %.neg13.i.i.i ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -8
  %exitcond.not.i.i = icmp eq i64 %i.da, %i.k
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.m

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.dp = icmp ult ptr %i.dh, %i.cw               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.dp, ptr %i.dh, ptr %i.dj
  %i.dq = load i64, ptr %.sroa.06.0..sroa.011.0.i.i, align 8, !alias.scope !2519, !noalias !2514
  store i64 %i.dq, ptr %i.de, align 8, !alias.scope !2514, !noalias !2519
  %i.dr = zext i1 %i.dp to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dr
  %i.dt = xor i1 %i.dp, true
  %i.du = zext i1 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.du
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.dj, %._crit_edge.i.i ], [ %i.dv, %bb.n ]
  %.sroa.06.1.i.i = phi ptr [ %i.dh, %._crit_edge.i.i ], [ %i.ds, %bb.n ]
  %i.dw = icmp ne ptr %.sroa.06.1.i.i, %i.cw
  %i.dx = icmp ne ptr %.sroa.011.1.i.i, %i.cx
  %or.cond.i.i = select i1 %i.dw, i1 true, i1 %i.dx, !prof !13
  br i1 %or.cond.i.i, label %bb.p, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1s_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB3a_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit, !prof !13

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #34
          to label %.noexc36.i unwind label %.loopexit.split-lp.i

.noexc36.i:                                       ; preds = %bb.p
  unreachable

.loopexit.i:                                      ; preds = %.noexc.i, %bb.m
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp.i:                             ; preds = %bb.p
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.dy = shl nuw nsw i64 %.sroa.16.0.lcssa, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa218, ptr nonnull align 8 %2, i64 %i.dy, i1 false), !alias.scope !2516, !noalias !2524
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp10.i, %bb.q
  %.pn.i = phi { ptr, i32 } [ %lpad.phi.i, %bb.q ], [ %lpad.phi13.i, %.loopexit.split-lp10.i ]
  resume { ptr, i32 } %.pn.i

bb.r:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2Q_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i, %.lr.ph.i
  %.sroa.05.038.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %i.jb, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2Q_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i ] ; 4 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.sroa.05.038.i
  %.idx = shl nuw nsw i64 %.sroa.05.038.i, 3
  %i.ea = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx ; 6 uses
  %i.eb = load i64, ptr %i.dz, align 8, !alias.scope !2514, !noalias !2515
  store i64 %i.eb, ptr %i.ea, align 8, !alias.scope !2515, !noalias !2514
  %i.ec = getelementptr inbounds i8, ptr %i.ea, i64 -8 ; 4 uses
  %.val.i43.i = load ptr, ptr %.val37, align 8, !noalias !2525, !nonnull !5, !align !10, !noundef !5 ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.val.i43.i, i64 24 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !noalias !2526, !noundef !5
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2Q_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i, label %.noexc69.i

.noexc69.i:                                       ; preds = %bb.r
  %i.eg = getelementptr inbounds nuw i8, ptr %.val.i43.i, i64 32 ; 2 uses
  %i.eh = call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.eg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ea) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2527)
  call void @llvm.experimental.noalias.scope.decl(metadata !2528)
  %i.ei = lshr i64 %i.eh, 57
  %i.ej = trunc nuw nsw i64 %i.ei to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %.val.i43.i, i64 8 ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !alias.scope !2529, !noalias !2530, !noundef !5 ; 2 uses
  %i.em = load ptr, ptr %.val.i43.i, align 8, !alias.scope !2529, !noalias !2530, !nonnull !5, !noundef !5 ; 2 uses
  %i.en = insertelement <16 x i8> poison, i8 %i.ej, i64 0
  %i.eo = shufflevector <16 x i8> %i.en, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %.noexc69.i
  %.sroa.9.0.i.i.i.i.i44.i = phi i64 [ 0, %.noexc69.i ], [ %i.ff, %bb.u ]
  %.pn.i.i.i.i45.i = phi i64 [ %i.eh, %.noexc69.i ], [ %i.fg, %bb.u ]
  %.sroa.01.0.i.i.i.i.i46.i = and i64 %.pn.i.i.i.i45.i, %i.el ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 %.sroa.01.0.i.i.i.i.i46.i
  %.sroa.0.0.copyload.i24.i.i.i.i47.i = load <16 x i8>, ptr %i.ep, align 1, !noalias !2531 ; 2 uses
  %i.eq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i47.i, %i.eo
  %i.er = bitcast <16 x i1> %i.eq to i16          ; 2 uses
  %.not.i.not30.i.i.i.i48.i = icmp eq i16 %i.er, 0
  br i1 %.not.i.not30.i.i.i.i48.i, label %._crit_edge.i.i.i.i52.i, label %.lr.ph.i.i.i.i49.i

.lr.ph.i.i.i.i49.i:                               ; preds = %bb.s, %bb.t
  %.sroa.06.0.i31.i.i.i.i50.i = phi i16 [ %i.fe, %bb.t ], [ %i.er, %bb.s ] ; 3 uses
  %i.es = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i50.i, i1 true)
  %i.et = zext nneg i16 %i.es to i64
  %i.eu = add i64 %.sroa.01.0.i.i.i.i.i46.i, %i.et
  %i.ev = and i64 %i.eu, %i.el
  %i.ew = sub nsw i64 0, %i.ev
  %i.ex = getelementptr inbounds [40 x i8], ptr %i.em, i64 %i.ew ; 2 uses
  %i.ey = getelementptr inbounds i8, ptr %i.ex, i64 -40
  %i.ez = call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtB2_10EquivalentBq_E10equivalentCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ea, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ey)
  br i1 %i.ez, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.i.i68.i, label %bb.t, !prof !8

._crit_edge.i.i.i.i52.i:                          ; preds = %bb.t, %bb.s
  %i.fa = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i47.i, splat (i8 -1)
  %i.fb = bitcast <16 x i1> %i.fa to i16
  %i.fc = icmp eq i16 %i.fb, 0
  br i1 %i.fc, label %bb.u, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.thread.i.i53.i, !prof !7

bb.t:                                             ; preds = %.lr.ph.i.i.i.i49.i
  %i.fd = add i16 %.sroa.06.0.i31.i.i.i.i50.i, -1
  %i.fe = and i16 %i.fd, %.sroa.06.0.i31.i.i.i.i50.i ; 2 uses
  %.not.i.not.i.i.i.i51.i = icmp eq i16 %i.fe, 0
  br i1 %.not.i.not.i.i.i.i51.i, label %._crit_edge.i.i.i.i52.i, label %.lr.ph.i.i.i.i49.i

bb.u:                                             ; preds = %._crit_edge.i.i.i.i52.i
  %i.ff = add i64 %.sroa.9.0.i.i.i.i.i44.i, 16    ; 2 uses
  %i.fg = add i64 %.sroa.01.0.i.i.i.i.i46.i, %i.ff
  br label %bb.s

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.i.i68.i: ; preds = %.lr.ph.i.i.i.i49.i
  %i.fh = getelementptr inbounds i8, ptr %i.ex, i64 -8
  %i.fi = load double, ptr %i.fh, align 8, !noalias !2532, !noundef !5
  br label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.thread.i.i53.i

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.thread.i.i53.i: ; preds = %._crit_edge.i.i.i.i52.i, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.i.i68.i
  %.sroa.01.0.ph.i.i54.i = phi double [ %i.fi, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.i.i68.i ], [ 0.000000e+00, %._crit_edge.i.i.i.i52.i ]
  %.pr.i.i55.i = load i64, ptr %i.ed, align 8, !alias.scope !2533, !noalias !2534
  %i.fj = icmp eq i64 %.pr.i.i55.i, 0
  br i1 %i.fj, label %.noexc38.i, label %.noexc71.i

.noexc71.i:                                       ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.thread.i.i53.i
  %i.fk = call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.eg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ec) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2535)
  call void @llvm.experimental.noalias.scope.decl(metadata !2536)
  %i.fl = lshr i64 %i.fk, 57
  %i.fm = trunc nuw nsw i64 %i.fl to i8
  %i.fn = load i64, ptr %i.ek, align 8, !alias.scope !2537, !noalias !2538, !noundef !5 ; 2 uses
  %i.fo = load ptr, ptr %.val.i43.i, align 8, !alias.scope !2537, !noalias !2538, !nonnull !5, !noundef !5 ; 2 uses
  %i.fp = insertelement <16 x i8> poison, i8 %i.fm, i64 0
  %i.fq = shufflevector <16 x i8> %i.fp, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %.noexc71.i
  %.sroa.9.0.i.i.i14.i.i56.i = phi i64 [ 0, %.noexc71.i ], [ %i.gh, %bb.x ]
  %.pn.i.i15.i.i57.i = phi i64 [ %i.fk, %.noexc71.i ], [ %i.gi, %bb.x ]
  %.sroa.01.0.i.i.i16.i.i58.i = and i64 %.pn.i.i15.i.i57.i, %i.fn ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.sroa.01.0.i.i.i16.i.i58.i
  %.sroa.0.0.copyload.i24.i.i17.i.i59.i = load <16 x i8>, ptr %i.fr, align 1, !noalias !2539 ; 2 uses
  %i.fs = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i17.i.i59.i, %i.fq
  %i.ft = bitcast <16 x i1> %i.fs to i16          ; 2 uses
  %.not.i.not30.i.i18.i.i60.i = icmp eq i16 %i.ft, 0
  br i1 %.not.i.not30.i.i18.i.i60.i, label %._crit_edge.i.i22.i.i64.i, label %.lr.ph.i.i19.i.i61.i

.lr.ph.i.i19.i.i61.i:                             ; preds = %bb.v, %bb.w
  %.sroa.06.0.i31.i.i20.i.i62.i = phi i16 [ %i.gg, %bb.w ], [ %i.ft, %bb.v ] ; 3 uses
  %i.fu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i20.i.i62.i, i1 true)
  %i.fv = zext nneg i16 %i.fu to i64
  %i.fw = add i64 %.sroa.01.0.i.i.i16.i.i58.i, %i.fv
  %i.fx = and i64 %i.fw, %i.fn
  %i.fy = sub nsw i64 0, %i.fx
  %i.fz = getelementptr inbounds [40 x i8], ptr %i.fo, i64 %i.fy ; 2 uses
  %i.ga = getelementptr inbounds i8, ptr %i.fz, i64 -40
  %i.gb = call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtB2_10EquivalentBq_E10equivalentCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ec, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ga)
  br i1 %i.gb, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit27.i.i67.i, label %bb.w, !prof !8

._crit_edge.i.i22.i.i64.i:                        ; preds = %bb.w, %bb.v
  %i.gc = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i17.i.i59.i, splat (i8 -1)
  %i.gd = bitcast <16 x i1> %i.gc to i16
  %i.ge = icmp eq i16 %i.gd, 0
  br i1 %i.ge, label %bb.x, label %.noexc38.i, !prof !7

bb.w:                                             ; preds = %.lr.ph.i.i19.i.i61.i
  %i.gf = add i16 %.sroa.06.0.i31.i.i20.i.i62.i, -1
  %i.gg = and i16 %i.gf, %.sroa.06.0.i31.i.i20.i.i62.i ; 2 uses
  %.not.i.not.i.i21.i.i63.i = icmp eq i16 %i.gg, 0
  br i1 %.not.i.not.i.i21.i.i63.i, label %._crit_edge.i.i22.i.i64.i, label %.lr.ph.i.i19.i.i61.i

bb.x:                                             ; preds = %._crit_edge.i.i22.i.i64.i
  %i.gh = add i64 %.sroa.9.0.i.i.i14.i.i56.i, 16  ; 2 uses
  %i.gi = add i64 %.sroa.01.0.i.i.i16.i.i58.i, %i.gh
  br label %bb.v

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit27.i.i67.i: ; preds = %.lr.ph.i.i19.i.i61.i
  %i.gj = getelementptr inbounds i8, ptr %i.fz, i64 -8
  %i.gk = load double, ptr %i.gj, align 8, !noundef !5
  br label %.noexc38.i

.noexc38.i:                                       ; preds = %._crit_edge.i.i22.i.i64.i, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit27.i.i67.i, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.thread.i.i53.i
  %.sroa.06.0.i.i66.i = phi double [ %i.gk, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit27.i.i67.i ], [ 0.000000e+00, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.thread.i.i53.i ], [ 0.000000e+00, %._crit_edge.i.i22.i.i64.i ]
  %i.gl = fcmp olt double %.sroa.01.0.ph.i.i54.i, %.sroa.06.0.i.i66.i
  br i1 %i.gl, label %bb.y, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2Q_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i

bb.y:                                             ; preds = %.noexc38.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2516
  %7 = load ptr, ptr %i.ea, align 8, !alias.scope !2515, !noalias !2514, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  store ptr %7, ptr %i.a, align 8, !noalias !2516
  %i.gm = load i64, ptr %i.ec, align 8, !alias.scope !2515, !noalias !2514
  store i64 %i.gm, ptr %i.ea, align 8, !alias.scope !2515, !noalias !2514
  %i.gn = icmp eq i64 %.sroa.05.038.i, 1
  br i1 %i.gn, label %.thread6.i, label %.lr.ph652

bb.z:                                             ; preds = %.loopexit17.i
  %i.go = load i64, ptr %i.gq, align 8, !alias.scope !2515, !noalias !2514
  store i64 %i.go, ptr %.sroa.0.0.i37.i650, align 8, !alias.scope !2515, !noalias !2514
  %i.gp = icmp eq ptr %i.gq, %i.co
  br i1 %i.gp, label %.thread6.i, label %.lr.ph652

.lr.ph652:                                        ; preds = %bb.y, %bb.z
  %.sroa.0.0.i37.i650 = phi ptr [ %i.gq, %bb.z ], [ %i.ec, %bb.y ] ; 5 uses
  %i.gq = getelementptr inbounds i8, ptr %.sroa.0.0.i37.i650, i64 -8 ; 5 uses
  %.val.i.i = load ptr, ptr %.val37, align 8, !noalias !2540, !nonnull !5, !align !10, !noundef !5 ; 5 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24 ; 2 uses
  %i.gs = load i64, ptr %i.gr, align 8, !noalias !2541, !noundef !5
  %i.gt = icmp eq i64 %i.gs, 0
  br i1 %i.gt, label %.thread6.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph652
  %i.gu = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 32 ; 2 uses
  %i.gv = invoke noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %.noexc39.i unwind label %.loopexit.split-lp10.loopexit.split-lp.i ; 2 uses

.noexc39.i:                                       ; preds = %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !2542)
  call void @llvm.experimental.noalias.scope.decl(metadata !2543)
  %i.gw = lshr i64 %i.gv, 57
  %i.gx = trunc nuw nsw i64 %i.gw to i8
  %i.gy = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8 ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !alias.scope !2544, !noalias !2545, !noundef !5 ; 2 uses
  %i.ha = load ptr, ptr %.val.i.i, align 8, !alias.scope !2544, !noalias !2545, !nonnull !5, !noundef !5 ; 2 uses
  %i.hb = insertelement <16 x i8> poison, i8 %i.gx, i64 0
  %i.hc = shufflevector <16 x i8> %i.hb, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ad, %.noexc39.i
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %.noexc39.i ], [ %i.ht, %bb.ad ]
  %.pn.i.i.i.i.i = phi i64 [ %i.gv, %.noexc39.i ], [ %i.hu, %bb.ad ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.gz ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.hd, align 1, !noalias !2546 ; 2 uses
  %i.he = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.hc
  %i.hf = bitcast <16 x i1> %i.he to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.hf, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ab, %bb.ac
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.hs, %bb.ac ], [ %i.hf, %bb.ab ] ; 3 uses
  %i.hg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.hh = zext nneg i16 %i.hg to i64
  %i.hi = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.hh
  %i.hj = and i64 %i.hi, %i.gz
  %i.hk = sub nsw i64 0, %i.hj
  %i.hl = getelementptr inbounds [40 x i8], ptr %i.ha, i64 %i.hk ; 2 uses
  %i.hm = getelementptr inbounds i8, ptr %i.hl, i64 -40
  %i.hn = invoke noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtB2_10EquivalentBq_E10equivalentCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.hm)
          to label %.noexc40.i unwind label %.loopexit.split-lp10.loopexit.i

.noexc40.i:                                       ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.hn, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i, label %bb.ac, !prof !8

._crit_edge.i.i.i.i.i:                            ; preds = %bb.ac, %bb.ab
  %i.ho = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.hp = bitcast <16 x i1> %i.ho to i16
  %i.hq = icmp eq i16 %i.hp, 0
  br i1 %i.hq, label %bb.ad, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.thread.i.i.i, !prof !7

bb.ac:                                            ; preds = %.noexc40.i
  %i.hr = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.hs = and i16 %i.hr, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.hs, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.ht = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.hu = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ht
  br label %bb.ab

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i: ; preds = %.noexc40.i
  %i.hv = getelementptr inbounds i8, ptr %i.hl, i64 -8
  %i.hw = load double, ptr %i.hv, align 8, !noalias !2547, !noundef !5
  br label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.thread.i.i.i

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.thread.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i
  %.sroa.01.0.ph.i.i.i = phi double [ %i.hw, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i ], [ 0.000000e+00, %._crit_edge.i.i.i.i.i ]
  %.pr.i.i.i = load i64, ptr %i.gr, align 8, !alias.scope !2548, !noalias !2549
  %i.hx = icmp eq i64 %.pr.i.i.i, 0
  br i1 %i.hx, label %.loopexit17.i, label %bb.ae

bb.ae:                                            ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.thread.i.i.i
  %i.hy = invoke noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gq)
          to label %.noexc41.i unwind label %.loopexit.split-lp10.loopexit.split-lp.i ; 2 uses

.noexc41.i:                                       ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !2550)
  call void @llvm.experimental.noalias.scope.decl(metadata !2551)
  %i.hz = lshr i64 %i.hy, 57
  %i.ia = trunc nuw nsw i64 %i.hz to i8
  %i.ib = load i64, ptr %i.gy, align 8, !alias.scope !2552, !noalias !2553, !noundef !5 ; 2 uses
  %i.ic = load ptr, ptr %.val.i.i, align 8, !alias.scope !2552, !noalias !2553, !nonnull !5, !noundef !5 ; 2 uses
  %i.id = insertelement <16 x i8> poison, i8 %i.ia, i64 0
  %i.ie = shufflevector <16 x i8> %i.id, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.af

bb.af:                                            ; preds = %bb.ah, %.noexc41.i
  %.sroa.9.0.i.i.i14.i.i.i = phi i64 [ 0, %.noexc41.i ], [ %i.iv, %bb.ah ]
  %.pn.i.i15.i.i.i = phi i64 [ %i.hy, %.noexc41.i ], [ %i.iw, %bb.ah ]
  %.sroa.01.0.i.i.i16.i.i.i = and i64 %.pn.i.i15.i.i.i, %i.ib ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 %.sroa.01.0.i.i.i16.i.i.i
  %.sroa.0.0.copyload.i24.i.i17.i.i.i = load <16 x i8>, ptr %i.if, align 1, !noalias !2554 ; 2 uses
  %i.ig = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i17.i.i.i, %i.ie
  %i.ih = bitcast <16 x i1> %i.ig to i16          ; 2 uses
  %.not.i.not30.i.i18.i.i.i = icmp eq i16 %i.ih, 0
  br i1 %.not.i.not30.i.i18.i.i.i, label %._crit_edge.i.i22.i.i.i, label %.lr.ph.i.i19.i.i.i

.lr.ph.i.i19.i.i.i:                               ; preds = %bb.af, %bb.ag
  %.sroa.06.0.i31.i.i20.i.i.i = phi i16 [ %i.iu, %bb.ag ], [ %i.ih, %bb.af ] ; 3 uses
  %i.ii = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i20.i.i.i, i1 true)
  %i.ij = zext nneg i16 %i.ii to i64
  %i.ik = add i64 %.sroa.01.0.i.i.i16.i.i.i, %i.ij
  %i.il = and i64 %i.ik, %i.ib
  %i.im = sub nsw i64 0, %i.il
  %i.in = getelementptr inbounds [40 x i8], ptr %i.ic, i64 %i.im ; 2 uses
  %i.io = getelementptr inbounds i8, ptr %i.in, i64 -40
  %i.ip = invoke noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtB2_10EquivalentBq_E10equivalentCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.gq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.io)
          to label %.noexc42.i unwind label %.loopexit9.i

.noexc42.i:                                       ; preds = %.lr.ph.i.i19.i.i.i
  br i1 %i.ip, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit27.i.i.i, label %bb.ag, !prof !8

._crit_edge.i.i22.i.i.i:                          ; preds = %bb.ag, %bb.af
  %i.iq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i17.i.i.i, splat (i8 -1)
  %i.ir = bitcast <16 x i1> %i.iq to i16
  %i.is = icmp eq i16 %i.ir, 0
  br i1 %i.is, label %bb.ah, label %.loopexit17.i, !prof !7

bb.ag:                                            ; preds = %.noexc42.i
  %i.it = add i16 %.sroa.06.0.i31.i.i20.i.i.i, -1
  %i.iu = and i16 %i.it, %.sroa.06.0.i31.i.i20.i.i.i ; 2 uses
  %.not.i.not.i.i21.i.i.i = icmp eq i16 %i.iu, 0
  br i1 %.not.i.not.i.i21.i.i.i, label %._crit_edge.i.i22.i.i.i, label %.lr.ph.i.i19.i.i.i

bb.ah:                                            ; preds = %._crit_edge.i.i22.i.i.i
  %i.iv = add i64 %.sroa.9.0.i.i.i14.i.i.i, 16    ; 2 uses
  %i.iw = add i64 %.sroa.01.0.i.i.i16.i.i.i, %i.iv
  br label %bb.af

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit27.i.i.i: ; preds = %.noexc42.i
  %i.ix = getelementptr inbounds i8, ptr %i.in, i64 -8
  %i.iy = load double, ptr %i.ix, align 8, !noundef !5
  br label %.loopexit17.i

.loopexit17.i:                                    ; preds = %._crit_edge.i.i22.i.i.i, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit27.i.i.i, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.thread.i.i.i
  %.sroa.06.0.i.i.i = phi double [ %i.iy, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit27.i.i.i ], [ 0.000000e+00, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.thread.i.i.i ], [ 0.000000e+00, %._crit_edge.i.i22.i.i.i ]
  %i.iz = fcmp olt double %.sroa.01.0.ph.i.i.i, %.sroa.06.0.i.i.i
  br i1 %i.iz, label %bb.z, label %.thread6.i

.thread6.i:                                       ; preds = %bb.z, %.lr.ph652, %.loopexit17.i, %bb.y
  %.sroa.0.0.i37.lcssa.i = phi ptr [ %i.co, %bb.y ], [ %i.co, %bb.z ], [ %.sroa.0.0.i37.i650, %.lr.ph652 ], [ %.sroa.0.0.i37.i650, %.loopexit17.i ]
  %i.ja = load i64, ptr %i.a, align 8, !noalias !2555
  store i64 %i.ja, ptr %.sroa.0.0.i37.lcssa.i, align 8, !alias.scope !2515, !noalias !2556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2516
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2Q_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i

.loopexit9.i:                                     ; preds = %.lr.ph.i.i19.i.i.i
  %lpad.loopexit11.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp10.i

.loopexit.split-lp10.loopexit.i:                  ; preds = %.lr.ph.i.i.i.i.i
  %lpad.loopexit14.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp10.i

.loopexit.split-lp10.loopexit.split-lp.i:         ; preds = %bb.ae, %bb.aa
  %lpad.loopexit.split-lp15.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp10.i

.loopexit.split-lp10.i:                           ; preds = %.loopexit.split-lp10.loopexit.split-lp.i, %.loopexit.split-lp10.loopexit.i, %.loopexit9.i
  %lpad.phi13.i = phi { ptr, i32 } [ %lpad.loopexit11.i, %.loopexit9.i ], [ %lpad.loopexit14.i, %.loopexit.split-lp10.loopexit.i ], [ %lpad.loopexit.split-lp15.i, %.loopexit.split-lp10.loopexit.split-lp.i ]
  %8 = ptrtoint ptr %7 to i64
  store i64 %8, ptr %.sroa.0.0.i37.i650, align 8, !alias.scope !2515, !noalias !2557
  br label %.body.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2Q_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit.i: ; preds = %.thread6.i, %.noexc38.i, %bb.r
  %i.jb = add nuw nsw i64 %.sroa.05.038.i, 1      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.jb, %.sroa.04.0.i
  br i1 %exitcond.not.i, label %.loopexit18.i, label %bb.r

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0222.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph231, %.lr.ph ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2D_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph232, i64 noundef %.sroa.16.0222.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1s_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB3a_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit

.lr.ph646:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0221645 = phi i32 [ %i.jc, %bb.b ], [ %.sroa.025.0.ph230, %.lr.ph ]
  %.sroa.16.0222644 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph231, %.lr.ph ] ; 19 uses
  %i.jc = add nsw i32 %.sroa.025.0221645, -1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2558)
  %i.jd = lshr i64 %.sroa.16.0222644, 3           ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.jd, 5
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph232, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.jd, 56
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph232, i64 %.idx2.i ; 4 uses
  %i.jg = icmp samesign ult i64 %.sroa.16.0222644, 64
  br i1 %i.jg, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph646
  %i.jh = call fastcc noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB14_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB2M_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph232, ptr noundef readonly %i.je, ptr noundef readonly %i.jf, i64 noundef %i.jd, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.al

bb.aj:                                            ; preds = %.lr.ph646
  %.val4.i = load ptr, ptr %6, align 8, !alias.scope !2558, !noalias !2559, !nonnull !5, !align !10, !noundef !5 ; 3 uses
  %i.ji = call fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull %.val4.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.ph232, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.je) #37, !noalias !2558 ; 2 uses
  %i.jj = call fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull %.val4.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.ph232, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jf) #37, !noalias !2558
  %i.jk = xor i1 %i.ji, %i.jj
  br i1 %i.jk, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jl = call fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull %.val4.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.je, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jf) #37, !noalias !2558
  %i.jm = xor i1 %i.ji, %i.jl
  %..i.i = select i1 %i.jm, ptr %i.jf, ptr %i.je
  br label %bb.al

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1s_7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB3a_9Behaviour9heartbeats7_0E0ECshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %.outer._crit_edge.thread, %bb.o, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %.sroa.0.0.i.sink.i = phi ptr [ %i.jh, %bb.ai ], [ %.sroa.0.0.ph232, %bb.aj ], [ %..i.i, %bb.ak ]
  %i.jn = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.jo = sub nuw i64 %i.jn, %i.e                 ; 2 uses
  %.sroa.0.0.i40 = lshr exact i64 %i.jo, 3        ; 3 uses
  %i.jp = icmp samesign ult i64 %.sroa.0.0.i40, %.sroa.16.0222644
  call void @llvm.assume(i1 %i.jp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph232, i64 %i.jo ; 22 uses
  %i.jr = load ptr, ptr %i.jq, align 8
  store ptr %i.jr, ptr %i.c, align 8
  br i1 %.not, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.val = load ptr, ptr %6, align 8, !nonnull !5, !align !10, !noundef !5
  %i.js = call fastcc noundef zeroext i1 @_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example(ptr nonnull %.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.028.0.ph229, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jq) #37
  br i1 %i.js, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.al, %bb.am
  %.val38 = load ptr, ptr %6, align 8             ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2560)
  call void @llvm.experimental.noalias.scope.decl(metadata !2561)
  %.not128 = icmp samesign ult i64 %3, %.sroa.16.0222644
  br i1 %.not128, label %bb.ap, label %bb.ao, !prof !13

bb.ao:                                            ; preds = %bb.an
  %i.jt = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0222644 ; 3 uses
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  call void @llvm.trap()
  unreachable

bb.aq:                                            ; preds = %bb.cg, %bb.ao
  %.sroa.43.0.i = phi ptr [ %i.jt, %bb.ao ], [ %i.xi, %bb.cg ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.ao ], [ %.sroa.27.2.lcssa.i, %bb.cg ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph232, %bb.ao ], [ %i.xl, %bb.cg ] ; 3 uses
  %.sroa.0.0.i41 = phi i64 [ %.sroa.0.0.i40, %bb.ao ], [ %.sroa.16.0222644, %bb.cg ] ; 3 uses
  %i.ju = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i41, i64 3)
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph232, i64 %i.ju ; 2 uses
  %i.jw = icmp ult ptr %.sroa.9.0.i, %i.jv
  br i1 %i.jw, label %.lr.ph.i43, label %._crit_edge.i

.lr.ph.i43:                                       ; preds = %bb.aq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val38) ]
  br label %bb.ar

bb.ar:                                            ; preds = %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit100.i, %.lr.ph.i43
  %.sroa.9.150.i = phi ptr [ %.sroa.9.0.i, %.lr.ph.i43 ], [ %i.ue, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit100.i ] ; 7 uses
  %.sroa.27.149.i = phi i64 [ %.sroa.27.0.i, %.lr.ph.i43 ], [ %i.ud, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit100.i ] ; 2 uses
  %.sroa.43.148.i = phi ptr [ %.sroa.43.0.i, %.lr.ph.i43 ], [ %i.tz, %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit100.i ] ; 4 uses
  %.val.i.i44 = load ptr, ptr %.val38, align 8, !noalias !2562, !nonnull !5, !align !10, !noundef !5 ; 5 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.val.i.i44, i64 24 ; 2 uses
  %i.jy = load i64, ptr %i.jx, align 8, !noalias !2563, !noundef !5
  %i.jz = icmp eq i64 %i.jy, 0
  br i1 %i.jz, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ka = getelementptr inbounds nuw i8, ptr %.val.i.i44, i64 32 ; 2 uses
  %i.kb = call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ka, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.9.150.i), !noalias !2564 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2565)
  call void @llvm.experimental.noalias.scope.decl(metadata !2566)
  %i.kc = lshr i64 %i.kb, 57
  %i.kd = trunc nuw nsw i64 %i.kc to i8
  %i.ke = getelementptr inbounds nuw i8, ptr %.val.i.i44, i64 8 ; 2 uses
  %i.kf = load i64, ptr %i.ke, align 8, !alias.scope !2567, !noalias !2568, !noundef !5 ; 2 uses
  %i.kg = load ptr, ptr %.val.i.i44, align 8, !alias.scope !2567, !noalias !2568, !nonnull !5, !noundef !5 ; 2 uses
  %i.kh = insertelement <16 x i8> poison, i8 %i.kd, i64 0
  %i.ki = shufflevector <16 x i8> %i.kh, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.at

bb.at:                                            ; preds = %bb.av, %bb.as
  %.sroa.9.0.i.i.i.i.i.i45 = phi i64 [ 0, %bb.as ], [ %i.kz, %bb.av ]
  %.pn.i.i.i.i.i46 = phi i64 [ %i.kb, %bb.as ], [ %i.la, %bb.av ]
  %.sroa.01.0.i.i.i.i.i.i47 = and i64 %.pn.i.i.i.i.i46, %i.kf ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 %.sroa.01.0.i.i.i.i.i.i47
  %.sroa.0.0.copyload.i24.i.i.i.i.i48 = load <16 x i8>, ptr %i.kj, align 1, !noalias !2569 ; 2 uses
  %i.kk = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i48, %i.ki
  %i.kl = bitcast <16 x i1> %i.kk to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i49 = icmp eq i16 %i.kl, 0
  br i1 %.not.i.not30.i.i.i.i.i49, label %._crit_edge.i.i.i.i.i53, label %.lr.ph.i.i.i.i.i50

.lr.ph.i.i.i.i.i50:                               ; preds = %bb.at, %bb.au
  %.sroa.06.0.i31.i.i.i.i.i51 = phi i16 [ %i.ky, %bb.au ], [ %i.kl, %bb.at ] ; 3 uses
  %i.km = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i51, i1 true)
  %i.kn = zext nneg i16 %i.km to i64
  %i.ko = add i64 %.sroa.01.0.i.i.i.i.i.i47, %i.kn
  %i.kp = and i64 %i.ko, %i.kf
  %i.kq = sub nsw i64 0, %i.kp
  %i.kr = getelementptr inbounds [40 x i8], ptr %i.kg, i64 %i.kq ; 2 uses
  %i.ks = getelementptr inbounds i8, ptr %i.kr, i64 -40
  %i.kt = call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtB2_10EquivalentBq_E10equivalentCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.9.150.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ks), !noalias !2570
  br i1 %i.kt, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i68, label %bb.au, !prof !8

._crit_edge.i.i.i.i.i53:                          ; preds = %bb.au, %bb.at
  %i.ku = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i48, splat (i8 -1)
  %i.kv = bitcast <16 x i1> %i.ku to i16
  %i.kw = icmp eq i16 %i.kv, 0
  br i1 %i.kw, label %bb.av, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.thread.i.i.i54, !prof !7

bb.au:                                            ; preds = %.lr.ph.i.i.i.i.i50
  %i.kx = add i16 %.sroa.06.0.i31.i.i.i.i.i51, -1
  %i.ky = and i16 %i.kx, %.sroa.06.0.i31.i.i.i.i.i51 ; 2 uses
  %.not.i.not.i.i.i.i.i52 = icmp eq i16 %i.ky, 0
  br i1 %.not.i.not.i.i.i.i.i52, label %._crit_edge.i.i.i.i.i53, label %.lr.ph.i.i.i.i.i50

bb.av:                                            ; preds = %._crit_edge.i.i.i.i.i53
  %i.kz = add i64 %.sroa.9.0.i.i.i.i.i.i45, 16    ; 2 uses
  %i.la = add i64 %.sroa.01.0.i.i.i.i.i.i47, %i.kz
  br label %bb.at

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i68: ; preds = %.lr.ph.i.i.i.i.i50
  %i.lb = getelementptr inbounds i8, ptr %i.kr, i64 -8
  %i.lc = load double, ptr %i.lb, align 8, !noalias !2564, !noundef !5
  br label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.thread.i.i.i54

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.thread.i.i.i54: ; preds = %._crit_edge.i.i.i.i.i53, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i68
  %.sroa.01.0.ph.i.i.i55 = phi double [ %i.lc, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i68 ], [ 0.000000e+00, %._crit_edge.i.i.i.i.i53 ] ; 3 uses
  %.pr.i.i.i56 = load i64, ptr %i.jx, align 8, !alias.scope !2571, !noalias !2572
  %i.ld = icmp eq i64 %.pr.i.i.i56, 0
  br i1 %i.ld, label %_RNCINvMNtCsexYYUdYSQU6_5alloc5sliceSRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerId7sort_byNCNvMs6_NtCs1pSuea8KFR7_16libp2p_gossipsub9behaviourNtB1D_9Behaviour9heartbeats7_0E0Cshke30g4Hb4g_20ipfs_private_example.exit.i, label %bb.aw

bb.aw:                                            ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCs1pSuea8KFR7_16libp2p_gossipsub10peer_score15PeerScoreReportNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECshke30g4Hb4g_20ipfs_private_example.exit.thread.i.i.i54
  %i.le = call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ka, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jq), !noalias !2561 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2573)
  call void @llvm.experimental.noalias.scope.decl(metadata !2574)
  %i.lf = lshr i64 %i.le, 57
  %i.lg = trunc nuw nsw i64 %i.lf to i8
  %i.lh = load i64, ptr %i.ke, align 8, !alias.scope !2575, !noalias !2576, !noundef !5 ; 2 uses
  %i.li = load ptr, ptr %.val.i.i44, align 8, !alias.scope !2575, !noalias !2576, !nonnull !5, !noundef !5 ; 2 uses
  %i.lj = insertelement <16 x i8> poison, i8 %i.lg, i64 0
  %i.lk = shufflevector <16 x i8> %i.lj, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ax

bb.ax:                                            ; preds = %bb.az, %bb.aw
  %.sroa.9.0.i.i.i14.i.i.i57 = phi i64 [ 0, %bb.aw ], [ %i.mb, %bb.az ]
  %.pn.i.i15.i.i.i58 = phi i64 [ %i.le, %bb.aw ], [ %i.mc, %bb.az ]
  %.sroa.01.0.i.i.i16.i.i.i59 = and i64 %.pn.i.i15.i.i.i58, %i.lh ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.li, i64 %.sroa.01.0.i.i.i16.i.i.i59
  %.sroa.0.0.copyload.i24.i.i17.i.i.i60 = load <16 x i8>, ptr %i.ll, align 1, !noalias !2577 ; 2 uses
  %i.lm = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i17.i.i.i60, %i.lk
  %i.ln = bitcast <16 x i1> %i.lm to i16          ; 2 uses
  %.not.i.not30.i.i18.i.i.i61 = icmp eq i16 %i.ln, 0
  br i1 %.not.i.not30.i.i18.i.i.i61, label %._crit_edge.i.i22.i.i.i65, label %.lr.ph.i.i19.i.i.i62

.lr.ph.i.i19.i.i.i62:                             ; preds = %bb.ax, %bb.ay
  %.sroa.06.0.i31.i.i20.i.i.i63 = phi i16 [ %i.ma, %bb.ay ], [ %i.ln, %bb.ax ] ; 3 uses
  %i.lo = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i20.i.i.i63, i1 true)
  %i.lp = zext nneg i16 %i.lo to i64
  %i.lq = add i64 %.sroa.01.0.i.i.i16.i.i.i59, %i.lp
  %i.lr = and i64 %i.lq, %i.lh
  %i.ls = sub nsw i64 0, %i.lr
  %i.lt = getelementptr inbounds [40 x i8], ptr %i.li, i64 %i.ls ; 2 uses
  %i.lu = getelementptr inbounds i8, ptr %i.lt, i64 -40
  %i.lv = call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtB2_10EquivalentBq_E10equivalentCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.lu), !noalias !2578
end_hunk_3

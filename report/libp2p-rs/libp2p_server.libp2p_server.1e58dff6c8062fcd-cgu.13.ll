Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_server.libp2p_server.1e58dff6c8062fcd-cgu.13?download=true
inline.NumInlined: 2319
inline.NumDeleted: 1007
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCskC4O4hr3vz7_10libp2p_kad8protocol7KadPeerEB10_ENtNtNtB9_6traits8iterator8Iterator4findQNCINvMs0_NtB1u_9behaviourINtB34_9BehaviourNtNtNtNtB1u_6record5store6memory11MemoryStoreE10discoveredBO_E0ECs2Bxje7pdMIr_13libp2p_server:bb.a
; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsd_NtCs6b9j1MKPRPC_12libp2p_swarm10connectionINtB6_11AsStrHashEqINtCscu2bAJ62uie_6either6EitherIB16_IB16_IB16_IB16_IB16_NtNtB8_15stream_protocol14StreamProtocolReEB2D_EB1Z_EIB16_B1Z_B1Z_EEB1P_EB1U_EENtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = tail call { ptr, i64 } @_RNvXsv_Cscu2bAJ62uie_6eitherINtB5_6EitherIBr_IBr_IBr_IBr_IBr_NtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocolReEB20_EBX_EIBr_BX_BX_EEBP_EBT_EINtNtCskKLDkoKarTP_4core7convert5AsRefeE6as_refCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  tail call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.d) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4278
  store i8 -1, ptr %i.a, align 1, !noalias !4278
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #36, !noalias !4279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4278
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 4294967296) i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultINtCsldc21sZubFy_13nohash_hasher12NoHashHasherNtNtNtCsjouRnuJWSBB_5yamux5frame6header8StreamIdEENtB6_11BuildHasher8hash_oneRB1A_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load i32, ptr %1, align 4, !noalias !4282, !noundef !12
  %i.a = zext i32 %.val.i to i64
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsdGSEQAGM4BA_3fnv9FnvHasherENtB6_11BuildHasher8hash_oneRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4298)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !4299, !noalias !4300, !noundef !12 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4301)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i8, ptr %i.c, align 8, !alias.scope !4302, !noalias !4300, !noundef !12 ; 4 uses
  %i.e = zext i8 %i.d to i64                      ; 4 uses
  %i.f = icmp ult i8 %i.d, 65
  br i1 %i.f, label %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i, label %bb.b, !prof !24

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.e, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #41, !noalias !4303
  unreachable

_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i: ; preds = %bb.a
  %i.g = and i64 %i.b, 255
  %i.h = xor i64 %i.g, -3750763034362895579
  %i.i = mul i64 %i.h, 1099511628211
  %.sroa.4.0.extract.shift.i.i.i.i = lshr i64 %i.b, 8
  %i.j = and i64 %.sroa.4.0.extract.shift.i.i.i.i, 255
  %i.k = xor i64 %i.i, %i.j
  %i.l = mul i64 %i.k, 1099511628211
  %.sroa.5.0.extract.shift.i.i.i.i = lshr i64 %i.b, 16
  %i.m = and i64 %.sroa.5.0.extract.shift.i.i.i.i, 255
  %i.n = xor i64 %i.l, %i.m
  %i.o = mul i64 %i.n, 1099511628211
  %.sroa.6.0.extract.shift.i.i.i.i = lshr i64 %i.b, 24
  %i.p = and i64 %.sroa.6.0.extract.shift.i.i.i.i, 255
  %i.q = xor i64 %i.o, %i.p
  %i.r = mul i64 %i.q, 1099511628211
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i64 %i.b, 32
  %i.s = and i64 %.sroa.7.0.extract.shift.i.i.i.i, 255
  %i.t = xor i64 %i.r, %i.s
  %i.u = mul i64 %i.t, 1099511628211
  %.sroa.8.0.extract.shift.i.i.i.i = lshr i64 %i.b, 40
  %i.v = and i64 %.sroa.8.0.extract.shift.i.i.i.i, 255
  %i.w = xor i64 %i.u, %i.v
  %i.x = mul i64 %i.w, 1099511628211
  %.sroa.9.0.extract.shift.i.i.i.i = lshr i64 %i.b, 48
  %i.y = and i64 %.sroa.9.0.extract.shift.i.i.i.i, 255
  %i.z = xor i64 %i.x, %i.y
  %i.aa = mul i64 %i.z, 1099511628211
  %.sroa.10.0.extract.shift.i.i.i.i = lshr i64 %i.b, 56
  %i.ab = xor i64 %i.aa, %.sroa.10.0.extract.shift.i.i.i.i
  %i.ac = mul i64 %i.ab, 1099511628211
  %i.ad = xor i64 %i.ac, %i.e
  %i.ae = mul i64 %i.ad, 2232315406967589409      ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.ag = icmp eq i8 %i.d, 0
  br i1 %i.ag, label %_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtB8_4Hash4hashNtCsdGSEQAGM4BA_3fnv9FnvHasherECs2Bxje7pdMIr_13libp2p_server.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i
  %xtraiter = and i64 %i.e, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.prol = phi i64 [ %i.al, %.lr.ph.i.i.i.i.prol ], [ %i.ae, %.lr.ph.i.i.i.i.preheader ]
  %.sroa.03.05.i.i.i.i.prol = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.prol, i64 1 ; 2 uses
  %i.ai = load i8, ptr %.sroa.03.05.i.i.i.i.prol, align 1, !alias.scope !4304, !noalias !4305, !noundef !12
  %i.aj = zext i8 %i.ai to i64
  %i.ak = xor i64 %.sroa.0.06.i.i.i.i.prol, %i.aj
  %i.al = mul i64 %i.ak, 1099511628211            ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !4296

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.al, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.06.i.i.i.i.unr = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.preheader ], [ %i.al, %.lr.ph.i.i.i.i.prol ]
  %.sroa.03.05.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %.lr.ph.i.i.i.i.prol ]
  %i.am = icmp ult i8 %i.d, 8
  br i1 %i.am, label %_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtB8_4Hash4hashNtCsdGSEQAGM4BA_3fnv9FnvHasherECs2Bxje7pdMIr_13libp2p_server.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi i64 [ %i.ca, %.lr.ph.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.sroa.03.05.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i ], [ %.sroa.03.05.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 1
  %i.ao = load i8, ptr %.sroa.03.05.i.i.i.i, align 1, !alias.scope !4304, !noalias !4305, !noundef !12
  %i.ap = zext i8 %i.ao to i64
  %i.aq = xor i64 %.sroa.0.06.i.i.i.i, %i.ap
  %i.ar = mul i64 %i.aq, 1099511628211
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 2
  %i.at = load i8, ptr %i.an, align 1, !alias.scope !4304, !noalias !4305, !noundef !12
  %i.au = zext i8 %i.at to i64
  %i.av = xor i64 %i.ar, %i.au
  %i.aw = mul i64 %i.av, 1099511628211
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 3
  %i.ay = load i8, ptr %i.as, align 1, !alias.scope !4304, !noalias !4305, !noundef !12
  %i.az = zext i8 %i.ay to i64
  %i.ba = xor i64 %i.aw, %i.az
  %i.bb = mul i64 %i.ba, 1099511628211
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 4
  %i.bd = load i8, ptr %i.ax, align 1, !alias.scope !4304, !noalias !4305, !noundef !12
  %i.be = zext i8 %i.bd to i64
  %i.bf = xor i64 %i.bb, %i.be
  %i.bg = mul i64 %i.bf, 1099511628211
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 5
  %i.bi = load i8, ptr %i.bc, align 1, !alias.scope !4304, !noalias !4305, !noundef !12
  %i.bj = zext i8 %i.bi to i64
  %i.bk = xor i64 %i.bg, %i.bj
  %i.bl = mul i64 %i.bk, 1099511628211
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 6
  %i.bn = load i8, ptr %i.bh, align 1, !alias.scope !4304, !noalias !4305, !noundef !12
  %i.bo = zext i8 %i.bn to i64
  %i.bp = xor i64 %i.bl, %i.bo
  %i.bq = mul i64 %i.bp, 1099511628211
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 7
  %i.bs = load i8, ptr %i.bm, align 1, !alias.scope !4304, !noalias !4305, !noundef !12
  %i.bt = zext i8 %i.bs to i64
  %i.bu = xor i64 %i.bq, %i.bt
  %i.bv = mul i64 %i.bu, 1099511628211
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 8 ; 2 uses
  %i.bx = load i8, ptr %i.br, align 1, !alias.scope !4304, !noalias !4305, !noundef !12
  %i.by = zext i8 %i.bx to i64
  %i.bz = xor i64 %i.bv, %i.by
  %i.ca = mul i64 %i.bz, 1099511628211            ; 2 uses
  %i.cb = icmp eq ptr %i.bw, %i.af
  br i1 %i.cb, label %_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtB8_4Hash4hashNtCsdGSEQAGM4BA_3fnv9FnvHasherECs2Bxje7pdMIr_13libp2p_server.exit, label %.lr.ph.i.i.i.i

_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtB8_4Hash4hashNtCsdGSEQAGM4BA_3fnv9FnvHasherECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i
  %.sroa.0.0.lcssa.i.i.i.i = phi i64 [ %i.ae, %_RNvMs_NtCsgW4lhAJgVdS_9multihash9multihashINtB4_9MultihashKj40_E6digestCs2Bxje7pdMIr_13libp2p_server.exit.i.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.ca, %.lr.ph.i.i.i.i ]
  ret i64 %.sroa.0.0.lcssa.i.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsdGSEQAGM4BA_3fnv9FnvHasherENtB6_11BuildHasher8hash_oneRNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load i64, ptr %1, align 8, !noalias !4308, !noundef !12 ; 8 uses
  %.sroa.4.0.extract.shift.i.i.i = lshr i64 %.val.i, 8
  %.sroa.5.0.extract.shift.i.i.i = lshr i64 %.val.i, 16
  %.sroa.6.0.extract.shift.i.i.i = lshr i64 %.val.i, 24
  %.sroa.7.0.extract.shift.i.i.i = lshr i64 %.val.i, 32
  %.sroa.8.0.extract.shift.i.i.i = lshr i64 %.val.i, 40
  %.sroa.9.0.extract.shift.i.i.i = lshr i64 %.val.i, 48
  %.sroa.10.0.extract.shift.i.i.i = lshr i64 %.val.i, 56
  %i.a = and i64 %.val.i, 255
  %i.b = xor i64 %i.a, -3750763034362895579
  %i.c = mul i64 %i.b, 1099511628211
  %i.d = and i64 %.sroa.4.0.extract.shift.i.i.i, 255
  %i.e = xor i64 %i.c, %i.d
  %i.f = mul i64 %i.e, 1099511628211
  %i.g = and i64 %.sroa.5.0.extract.shift.i.i.i, 255
  %i.h = xor i64 %i.f, %i.g
  %i.i = mul i64 %i.h, 1099511628211
  %i.j = and i64 %.sroa.6.0.extract.shift.i.i.i, 255
  %i.k = xor i64 %i.i, %i.j
  %i.l = mul i64 %i.k, 1099511628211
  %i.m = and i64 %.sroa.7.0.extract.shift.i.i.i, 255
  %i.n = xor i64 %i.l, %i.m
  %i.o = mul i64 %i.n, 1099511628211
  %i.p = and i64 %.sroa.8.0.extract.shift.i.i.i, 255
  %i.q = xor i64 %i.o, %i.p
  %i.r = mul i64 %i.q, 1099511628211
  %i.s = and i64 %.sroa.9.0.extract.shift.i.i.i, 255
  %i.t = xor i64 %i.r, %i.s
  %i.u = mul i64 %i.t, 1099511628211
  %i.v = xor i64 %i.u, %.sroa.10.0.extract.shift.i.i.i
  %i.w = mul i64 %i.v, 1099511628211
  ret i64 %i.w
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsdGSEQAGM4BA_3fnv9FnvHasherENtB6_11BuildHasher8hash_oneRNtNtCsepmHL8YmS2V_5ipnet5ipnet5IpNetECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(18) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %1, align 1, !range !16, !alias.scope !4314, !noalias !4315, !noundef !12
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load i128, ptr %i.c, align 1, !alias.scope !4314, !noalias !4315 ; 9 uses
  %.sroa.0.0.extract.trunc.i.i.i.a = trunc i128 %.sroa.0.0.copyload.i.i to i64 ; 8 uses
  %2 = lshr i64 %.sroa.0.0.extract.trunc.i.i.i.a, 8
  %3 = lshr i64 %.sroa.0.0.extract.trunc.i.i.i.a, 16
  %4 = lshr i64 %.sroa.0.0.extract.trunc.i.i.i.a, 24
  %5 = lshr i64 %.sroa.0.0.extract.trunc.i.i.i.a, 32
  %6 = lshr i64 %.sroa.0.0.extract.trunc.i.i.i.a, 40
  %7 = lshr i64 %.sroa.0.0.extract.trunc.i.i.i.a, 48
  %8 = lshr i64 %.sroa.0.0.extract.trunc.i.i.i.a, 56
  %.sroa.11.0.extract.shift.i.i.i = lshr i128 %.sroa.0.0.copyload.i.i, 64
  %.sroa.11.0.extract.trunc.i.i.i = trunc nuw i128 %.sroa.11.0.extract.shift.i.i.i to i64
  %.sroa.12.0.extract.shift.i.i.i = lshr i128 %.sroa.0.0.copyload.i.i, 72
  %.sroa.12.0.extract.trunc.i.i.i = trunc nuw nsw i128 %.sroa.12.0.extract.shift.i.i.i to i64
  %.sroa.13.0.extract.shift.i.i.i = lshr i128 %.sroa.0.0.copyload.i.i, 80
  %.sroa.13.0.extract.trunc.i.i.i = trunc nuw nsw i128 %.sroa.13.0.extract.shift.i.i.i to i64
  %.sroa.14.0.extract.shift.i.i.i = lshr i128 %.sroa.0.0.copyload.i.i, 88
  %.sroa.14.0.extract.trunc.i.i.i = trunc nuw nsw i128 %.sroa.14.0.extract.shift.i.i.i to i64
  %.sroa.15.0.extract.shift.i.i.i = lshr i128 %.sroa.0.0.copyload.i.i, 96
  %.sroa.15.0.extract.trunc.i.i.i = trunc nuw nsw i128 %.sroa.15.0.extract.shift.i.i.i to i64
  %.sroa.16.0.extract.shift.i.i.i = lshr i128 %.sroa.0.0.copyload.i.i, 104
  %.sroa.16.0.extract.trunc.i.i.i = trunc nuw nsw i128 %.sroa.16.0.extract.shift.i.i.i to i64
  %.sroa.17.0.extract.shift.i.i.i = lshr i128 %.sroa.0.0.copyload.i.i, 112
  %.sroa.17.0.extract.trunc.i.i.i = trunc nuw nsw i128 %.sroa.17.0.extract.shift.i.i.i to i64
  %.sroa.18.0.extract.shift.i.i.i = lshr i128 %.sroa.0.0.copyload.i.i, 120
  %.sroa.18.0.extract.trunc.i.i.i = trunc nuw nsw i128 %.sroa.18.0.extract.shift.i.i.i to i64
  %i.d = and i64 %.sroa.0.0.extract.trunc.i.i.i.a, 255
  %i.e = xor i64 %i.d, -8517097267634966620
  %i.f = mul i64 %i.e, 1099511628211
  %i.g = and i64 %2, 255
  %i.h = xor i64 %i.f, %i.g
  %i.i = mul i64 %i.h, 1099511628211
  %i.j = and i64 %3, 255
  %i.k = xor i64 %i.i, %i.j
  %i.l = mul i64 %i.k, 1099511628211
  %i.m = and i64 %4, 255
  %i.n = xor i64 %i.l, %i.m
  %i.o = mul i64 %i.n, 1099511628211
  %i.p = and i64 %5, 255
  %i.q = xor i64 %i.o, %i.p
  %i.r = mul i64 %i.q, 1099511628211
  %i.s = and i64 %6, 255
  %i.t = xor i64 %i.r, %i.s
  %i.u = mul i64 %i.t, 1099511628211
  %i.v = and i64 %7, 255
  %i.w = xor i64 %i.u, %i.v
  %i.x = mul i64 %i.w, 1099511628211
  %i.y = xor i64 %i.x, %8
  %i.z = mul i64 %i.y, 1099511628211
  %i.aa = and i64 %.sroa.11.0.extract.trunc.i.i.i, 255
  %i.ab = xor i64 %i.z, %i.aa
  %i.ac = mul i64 %i.ab, 1099511628211
  %i.ad = and i64 %.sroa.12.0.extract.trunc.i.i.i, 255
  %i.ae = xor i64 %i.ac, %i.ad
  %i.af = mul i64 %i.ae, 1099511628211
  %i.ag = and i64 %.sroa.13.0.extract.trunc.i.i.i, 255
  %i.ah = xor i64 %i.af, %i.ag
  %i.ai = mul i64 %i.ah, 1099511628211
  %i.aj = and i64 %.sroa.14.0.extract.trunc.i.i.i, 255
  %i.ak = xor i64 %i.ai, %i.aj
  %i.al = mul i64 %i.ak, 1099511628211
  %i.am = and i64 %.sroa.15.0.extract.trunc.i.i.i, 255
  %i.an = xor i64 %i.al, %i.am
  %i.ao = mul i64 %i.an, 1099511628211
  %i.ap = and i64 %.sroa.16.0.extract.trunc.i.i.i, 255
  %i.aq = xor i64 %i.ao, %i.ap
  %i.ar = mul i64 %i.aq, 1099511628211
  %i.as = and i64 %.sroa.17.0.extract.trunc.i.i.i, 255
  %i.at = xor i64 %i.ar, %i.as
  br label %_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCsepmHL8YmS2V_5ipnet5ipnet5IpNetNtB8_4Hash4hashNtCsdGSEQAGM4BA_3fnv9FnvHasherECs2Bxje7pdMIr_13libp2p_server.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.c, align 1, !alias.scope !4314, !noalias !4315 ; 4 uses
  %.sroa.4.0.extract.shift.i.i.i.a = lshr i32 %.sroa.01.0.copyload.i.i, 8
  %.sroa.5.0.extract.shift.i.i.i.a = lshr i32 %.sroa.01.0.copyload.i.i, 16
  %.sroa.6.0.extract.shift.i.i.i.a = lshr i32 %.sroa.01.0.copyload.i.i, 24
  %.sroa.6.0.extract.trunc.i.i.i = zext nneg i32 %.sroa.6.0.extract.shift.i.i.i.a to i64
  %i.au = and i32 %.sroa.01.0.copyload.i.i, 255
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = xor i64 %i.av, -6284781860667377211
  %i.ax = mul i64 %i.aw, 1099511628211
  %i.ay = and i32 %.sroa.4.0.extract.shift.i.i.i.a, 255
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = xor i64 %i.ax, %i.az
  %i.bb = mul i64 %i.ba, 1099511628211
  %i.bc = and i32 %.sroa.5.0.extract.shift.i.i.i.a, 255
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = xor i64 %i.bb, %i.bd
  br label %_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCsepmHL8YmS2V_5ipnet5ipnet5IpNetNtB8_4Hash4hashNtCsdGSEQAGM4BA_3fnv9FnvHasherECs2Bxje7pdMIr_13libp2p_server.exit

_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCsepmHL8YmS2V_5ipnet5ipnet5IpNetNtB8_4Hash4hashNtCsdGSEQAGM4BA_3fnv9FnvHasherECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.b, %bb.c
  %.sink7.i.i = phi i64 [ %i.be, %bb.c ], [ %i.at, %bb.b ]
  %.sroa.6.0.extract.trunc.i.sink.i.i = phi i64 [ %.sroa.6.0.extract.trunc.i.i.i, %bb.c ], [ %.sroa.18.0.extract.trunc.i.i.i, %bb.b ]
  %.sink5.i.i = phi i64 [ 5, %bb.c ], [ 17, %bb.b ]
  %i.bf = mul i64 %.sink7.i.i, 1099511628211
  %i.bg = xor i64 %i.bf, %.sroa.6.0.extract.trunc.i.sink.i.i
  %i.bh = mul i64 %i.bg, 1099511628211
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %.sink5.i.i
  %i.bj = load i8, ptr %i.bi, align 1, !alias.scope !4314, !noalias !4315, !noundef !12
  %i.bk = zext i8 %i.bj to i64
  %i.bl = xor i64 %i.bh, %i.bk
  %storemerge.i.i = mul i64 %i.bl, 1099511628211
  ret i64 %storemerge.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCsdGSEQAGM4BA_3fnv9FnvHasherENtB6_11BuildHasher8hash_oneRNtNtCskC4O4hr3vz7_10libp2p_kad5query7QueryIdECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load i64, ptr %1, align 8, !noalias !4318, !noundef !12 ; 8 uses
  %.sroa.4.0.extract.shift.i.i.i = lshr i64 %.val.i, 8
  %.sroa.5.0.extract.shift.i.i.i = lshr i64 %.val.i, 16
  %.sroa.6.0.extract.shift.i.i.i = lshr i64 %.val.i, 24
  %.sroa.7.0.extract.shift.i.i.i = lshr i64 %.val.i, 32
  %.sroa.8.0.extract.shift.i.i.i = lshr i64 %.val.i, 40
  %.sroa.9.0.extract.shift.i.i.i = lshr i64 %.val.i, 48
  %.sroa.10.0.extract.shift.i.i.i = lshr i64 %.val.i, 56
  %i.a = and i64 %.val.i, 255
  %i.b = xor i64 %i.a, -3750763034362895579
  %i.c = mul i64 %i.b, 1099511628211
  %i.d = and i64 %.sroa.4.0.extract.shift.i.i.i, 255
  %i.e = xor i64 %i.c, %i.d
  %i.f = mul i64 %i.e, 1099511628211
  %i.g = and i64 %.sroa.5.0.extract.shift.i.i.i, 255
  %i.h = xor i64 %i.f, %i.g
  %i.i = mul i64 %i.h, 1099511628211
  %i.j = and i64 %.sroa.6.0.extract.shift.i.i.i, 255
  %i.k = xor i64 %i.i, %i.j
  %i.l = mul i64 %i.k, 1099511628211
  %i.m = and i64 %.sroa.7.0.extract.shift.i.i.i, 255
  %i.n = xor i64 %i.l, %i.m
  %i.o = mul i64 %i.n, 1099511628211
  %i.p = and i64 %.sroa.8.0.extract.shift.i.i.i, 255
  %i.q = xor i64 %i.o, %i.p
  %i.r = mul i64 %i.q, 1099511628211
  %i.s = and i64 %.sroa.9.0.extract.shift.i.i.i, 255
  %i.t = xor i64 %i.r, %i.s
  %i.u = mul i64 %i.t, 1099511628211
  %i.v = xor i64 %i.u, %.sroa.10.0.extract.shift.i.i.i
  %i.w = mul i64 %i.v, 1099511628211
  ret i64 %i.w
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtCscwxJ8MeEu7n_4http10extensions8IdHasherENtB6_11BuildHasher8hash_oneRNtNtB8_3any6TypeIdECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load i64, ptr %i.a, align 8, !noalias !4321
  ret i64 %.val.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry10extensions8IdHasherENtB6_11BuildHasher8hash_oneRNtNtB8_3any6TypeIdECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load i64, ptr %i.a, align 8, !noalias !4324
  ret i64 %.val.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RINvYINtNtNtCs1eA6bChxBZF_5bytes3buf6writer6WriterQNtNtBa_9bytes_mut8BytesMutENtNtCsc1WyTVLut0y_9byteorder2io13WriteBytesExt9write_u16NtB1i_9BigEndianECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, i16 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  %i.b = alloca [2 x i8], align 2                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 0, ptr %i.b, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4327
  %i.c = tail call i16 @llvm.bswap.i16(i16 %1)
  store i16 %i.c, ptr %i.a, align 2, !noalias !4327
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull %i.b, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4327
  %i.d = call noundef ptr @_RNvYINtNtNtCs1eA6bChxBZF_5bytes3buf6writer6WriterQNtNtB9_9bytes_mut8BytesMutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RINvYINtNtNtCs1eA6bChxBZF_5bytes3buf6writer6WriterQNtNtBa_9bytes_mut8BytesMutENtNtCsc1WyTVLut0y_9byteorder2io13WriteBytesExt9write_u64NtB1i_9BigEndianECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4330
  %i.c = tail call i64 @llvm.bswap.i64(i64 %1)
  store i64 %i.c, ptr %i.a, align 8, !noalias !4330
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull %i.b, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @134)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4330
  %i.d = call noundef ptr @_RNvYINtNtNtCs1eA6bChxBZF_5bytes3buf6writer6WriterQNtNtB9_9bytes_mut8BytesMutENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryNtNtCskKLDkoKarTP_4core4hash4Hash10hash_sliceNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 96076792050570582) %1, ptr noalias nofree noundef align 8 dereferenceable(72) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  %i.b = alloca [2 x i8], align 2                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [2 x i8], align 2                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [1 x i8], align 1                 ; 4 uses
  %.idx = mul nuw nsw i64 %1, 96
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.l = icmp eq i64 %1, 0
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvXs6_NtNtCsbTgMbcnmcyu_13hickory_proto2op5queryNtB6_5QueryNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs2Bxje7pdMIr_13libp2p_server.exit
  %.sroa.0.03 = phi ptr [ %0, %.lr.ph ], [ %i.m, %_RINvXs6_NtNtCsbTgMbcnmcyu_13hickory_proto2op5queryNtB6_5QueryNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECs2Bxje7pdMIr_13libp2p_server.exit ] ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 96 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4367)
  call void @llvm.experimental.noalias.scope.decl(metadata !4368)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 72
  %i.o = load i8, ptr %i.n, align 8, !range !16, !alias.scope !4369, !noalias !4370, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4371
  store i8 %i.o, ptr %i.j, align 1, !noalias !4371
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef 1) #36, !noalias !4369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4371
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 40
  %i.q = load i16, ptr %i.p, align 8, !range !36, !alias.scope !4369, !noalias !4370, !noundef !12
  %i.r = trunc nuw i16 %i.q to i1
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 64
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !4369, !noalias !4370, !noundef !12 ; 2 uses
  %i.u = icmp sgt i64 %i.t, -1
  call void @llvm.assume(i1 %i.u)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 42
  %i.w = load i16, ptr %i.v, align 2, !alias.scope !4369, !noalias !4370, !noundef !12
  %i.x = zext i16 %i.w to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0.i.i = phi i64 [ %i.t, %bb.c ], [ %i.x, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4372
  store ptr %2, ptr %i.i, align 8, !noalias !4373
  %.sroa.4.8.insert.ext.i.i = shl i64 %.sroa.01.0.i.i, 8
end_hunk_0

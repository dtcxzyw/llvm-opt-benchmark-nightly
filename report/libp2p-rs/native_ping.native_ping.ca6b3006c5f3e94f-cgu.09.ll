Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/native_ping.native_ping.ca6b3006c5f3e94f-cgu.09?download=true
inline.NumInlined: 2437
inline.NumDeleted: 1078
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCskFgHTArva8k_13netlink_proto8protocol8protocol9RequestIdINtBR_14PendingRequestINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc15UnboundedSenderINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEEEEE6removeCshnt8FRa5Rut_11native_ping:bb.a
  %i.f = add nsw i64 %i.e, -16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !3682, !noundef !5
  %i.i = and i64 %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.i ; 2 uses
  %.sroa.0.0.copyload.i23.i.i = load <16 x i8>, ptr %i.j, align 1, !noalias !3683
  %i.k = icmp eq <16 x i8> %.sroa.0.0.copyload.i23.i.i, splat (i8 -1)
  %i.l = bitcast <16 x i1> %i.k to i16
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.e ; 2 uses
  %.sroa.0.0.copyload.i724.i.i = load <16 x i8>, ptr %i.m, align 1, !noalias !3686
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i724.i.i, splat (i8 -1)
  %i.o = bitcast <16 x i1> %i.n to i16
  %i.p = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.l, i1 false)
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.o, i1 false)
  %narrow.i.i = add nuw nsw i16 %i.q, %i.p
  %i.r = icmp samesign ugt i16 %narrow.i.i, 15
  br i1 %i.r, label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCskFgHTArva8k_13netlink_proto8protocol8protocol9RequestIdINtBR_14PendingRequestINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc15UnboundedSenderINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEEEEE13erase_no_dropCshnt8FRa5Rut_11native_ping.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !3682, !noundef !5
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.s, align 8, !alias.scope !3682
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCskFgHTArva8k_13netlink_proto8protocol8protocol9RequestIdINtBR_14PendingRequestINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc15UnboundedSenderINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEEEEE13erase_no_dropCshnt8FRa5Rut_11native_ping.exit

_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCskFgHTArva8k_13netlink_proto8protocol8protocol9RequestIdINtBR_14PendingRequestINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc15UnboundedSenderINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEEEEE13erase_no_dropCshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i8 [ -1, %bb.b ], [ -128, %bb.a ] ; 2 uses
  store i8 %.sroa.0.0.i.i, ptr %i.m, align 1, !noalias !3682
  %i.v = getelementptr i8, ptr %i.j, i64 16
  store i8 %.sroa.0.0.i.i, ptr %i.v, align 1, !noalias !3682
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !3682, !noundef !5
  %i.y = add i64 %i.x, -1
  store i64 %i.y, ptr %i.w, align 8, !alias.scope !3682
  %i.z = getelementptr inbounds i8, ptr %2, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.e, ptr %i.aa, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot6SenderNtNtNtCs5xzCmWPONXx_11libp2p_quic10connection10connecting10ConnectingEEE14insert_no_growCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load i64, ptr %i.a, align 8, !noundef !5 ; 4 uses
  %.sroa.0.07.i = and i64 %.val3, %1              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.b, align 1, !noalias !3689
  %i.c = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.d = bitcast <16 x i1> %i.c to i16            ; 2 uses
  %.not.i9.i = icmp eq i16 %i.d, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !3665

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.a ], [ %.sroa.0.0.i, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.d, %bb.a ], [ %i.u, %.lr.ph.i ]
  %i.e = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.f = zext nneg i16 %i.e to i64
  %i.g = add i64 %.sroa.0.0.lcssa.i, %i.f
  %i.h = and i64 %i.g, %.val3                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !noundef !5  ; 2 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.b, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !52

bb.b:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.l = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.m = bitcast <16 x i1> %i.l to i16            ; 2 uses
  %.not.i6.i = icmp ne i16 %i.m, 0
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.m, i1 true)
  %i.o = zext nneg i16 %i.n to i64                ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val, i64 %i.o
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.a ]
  %i.p = phi i64 [ %i.q, %.lr.ph.i ], [ 0, %bb.a ]
  %i.q = add i64 %i.p, 16                         ; 2 uses
  %i.r = add i64 %i.q, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.r, %.val3             ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.s, align 1, !noalias !3689
  %i.t = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !3666

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.b, %._crit_edge.i
  %i.v = phi i8 [ %.pre, %bb.b ], [ %i.j, %._crit_edge.i ]
  %.sroa.0.0.i5.i = phi i64 [ %i.o, %bb.b ], [ %i.h, %._crit_edge.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i
  %i.x = lshr i64 %1, 57
  %i.y = trunc nuw nsw i64 %i.x to i8             ; 2 uses
  %i.z = add i64 %.sroa.0.0.i5.i, -16
  %i.aa = and i64 %i.z, %.val3
  store i8 %i.y, ptr %i.w, align 1
  %i.ab = getelementptr i8, ptr %.val, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 %i.y, ptr %i.ac, align 1
  %i.ad = sub nsw i64 0, %.sroa.0.0.i5.i
  %i.ae = getelementptr inbounds [40 x i8], ptr %.val, i64 %i.ad ; 2 uses
  %i.af = and i8 %i.v, 1
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.aj = load <2 x i64>, ptr %i.ah, align 8
  %i.ak = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ag, i64 0
  %i.al = sub <2 x i64> %i.aj, %i.ak
  store <2 x i64> %i.al, ptr %i.ah, align 8
  ret ptr %i.ae
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTtNtNtNtCs4LZN9PPmi2I_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE5drainCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) initializes((0, 26), (32, 80)) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = getelementptr i8, ptr %i.a, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 1
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !3692
  %i.f = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) @23, i64 32, i1 false)
  store ptr %i.a, ptr %0, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.f, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.k, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvNtCs1eA6bChxBZF_5bytes5bytes11static_drop(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) unnamed_addr #9 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvNtCs1eA6bChxBZF_5bytes5bytes12static_clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.c, align 8
  store ptr @25, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtCs1eA6bChxBZF_5bytes5bytes16static_is_unique(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtB2_10EquivalentBq_E10equivalentCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs2_NtCsgW4lhAJgVdS_9multihash9multihashINtB5_9MultihashKj40_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsjqcU1oJFKXj_9hashbrown3mapINtB2_7HashMapINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load <2 x i64>, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3695)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !3695, !noalias !3698, !noundef !5 ; 5 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsb_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EuEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshnt8FRa5Rut_11native_ping.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %i.d, 1
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 80) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.c, !prof !52

bb.c:                                             ; preds = %bb.b
  %i.i = extractvalue { i64, i1 } %i.g, 0         ; 3 uses
  %i.j = add i64 %i.d, 17                         ; 2 uses
  %i.k = add i64 %i.i, %i.j                       ; 5 uses
  %i.l = icmp ult i64 %i.k, %i.i
  %i.m = icmp ugt i64 %i.k, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.l, %i.m
  br i1 %or.cond.i.i.i, label %bb.d, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, !prof !3700

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %bb.c
  %2 = icmp eq i64 %i.k, 0
  br i1 %2, label %bb.g, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !3701
  %i.n = tail call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #37, !noalias !3701 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !3701
  br label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.q = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.k), !noalias !3701
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i.i = phi { i64, i64 } [ %i.q, %bb.e ], [ %i.p, %bb.d ]
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %bb.h

bb.g:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.0.0.i.i9.i.i.i = phi ptr [ %i.n, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i, i64 %i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi.i = phi i64 [ %i.j, %bb.g ], [ %.pre.i, %bb.f ]
  %.sroa.5.0.i = phi i64 [ %i.d, %bb.g ], [ %.sroa.7.0.ph.i.i, %bb.f ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %i.r, %bb.g ], [ null, %bb.f ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3706)
  %i.s = load ptr, ptr %1, align 8, !alias.scope !3709, !noalias !3710, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.s, i64 %.pre-phi.i, i1 false), !noalias !3712
  %i.t = xor i64 %i.d, -1
  %i.u = getelementptr [80 x i8], ptr %i.s, i64 %i.t ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.v = xor i64 %.sroa.5.0.i, -1
  %i.w = getelementptr [80 x i8], ptr %.sroa.0.0.i, i64 %i.v ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.x = mul i64 %.sroa.5.0.i, 80
  %i.y = add i64 %i.x, 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.u, i64 %i.y, i1 false), !noalias !3712
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load <2 x i64>, ptr %i.z, align 8, !alias.scope !3709, !noalias !3710
  br label %_RNvXsb_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EuEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshnt8FRa5Rut_11native_ping.exit

_RNvXsb_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EuEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.a, %bb.h
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.i, %bb.h ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i, %bb.h ], [ @22, %bb.a ]
  %i.ab = phi <2 x i64> [ %i.aa, %bb.h ], [ zeroinitializer, %bb.a ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.b, ptr %i.ac, align 8
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.ab, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCskKLDkoKarTP_4core4hint20select_unpredictableINtB2_11DropOnPanicjENtNtNtB6_3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #9 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs0_NtNtCs4LZN9PPmi2I_11hickory_net4xfer16retry_dns_handleINtB5_15RetrySendStreamINtNtCsa9Jrx9KOzzM_16hickory_resolver16name_server_pool14NameServerPoolNtNtNtB9_7runtime13tokio_runtime20TokioRuntimeProviderEENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_nextCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([176 x i8]) align 8 captures(none) dereferenceable(176) %0, ptr noalias nofree noundef align 8 dereferenceable(416) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [280 x i8], align 8               ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 2 uses
  %i.c = alloca [72 x i8], align 8                ; 5 uses
  %i.d = alloca [176 x i8], align 8               ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvYINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCsgtKVDLJNbYN_12futures_core6stream6Streamp4ItemINtNtB7_6result6ResultNtNtNtCsbTgMbcnmcyu_13hickory_proto2op12dns_response11DnsResponseNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorENtNtB7_6marker4SendEL_EENtNtNtCsl9hx9jpF0W9_12futures_util6stream6stream9StreamExt15poll_next_unpinCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %i.f = load i64, ptr %i.d, align 8, !range !2872, !noundef !5
  %cond33 = icmp eq i64 %i.f, -1
  br i1 %cond33, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 408 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCsgtKVDLJNbYN_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtCsbTgMbcnmcyu_13hickory_proto2op12dns_response11DnsResponseNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorENtNtB4_6marker4SendEL_EEECshnt8FRa5Rut_11native_ping.exit, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(176) %i.d, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.i

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCsgtKVDLJNbYN_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtCsbTgMbcnmcyu_13hickory_proto2op12dns_response11DnsResponseNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorENtNtB4_6marker4SendEL_EEECshnt8FRa5Rut_11native_ping.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.m = load i64, ptr %i.h, align 8, !noundef !5 ; 3 uses
  store i64 %i.m, ptr %i.c, align 8
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.48.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.i, align 8, !range !1800, !noundef !5 ; 4 uses
  %i.p = icmp ne i32 %i.o, 4
  call void @llvm.assume(i1 %i.p)
  %i.q = add nsw i32 %i.o, -3
  %i.r = icmp samesign ugt i32 %i.o, 2
  %narrow = select i1 %i.r, i32 %i.q, i32 1
  switch i32 %narrow, label %bb.f [
    i32 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTjNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorEECshnt8FRa5Rut_11native_ping.exit
    i32 1, label %bb.g
    i32 5, label %bb.h
  ]

bb.e:                                             ; preds = %bb.h, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.f:                                             ; preds = %bb.g, %bb.d
  %i.s = add i64 %i.m, -1
  store i64 %i.s, ptr %i.h, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTjNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorEECshnt8FRa5Rut_11native_ping.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTjNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorEECshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.f, %bb.d
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(64) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvXsa_NtNtCsbTgMbcnmcyu_13hickory_proto2op11dns_requestNtB5_10DnsRequestNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(280) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(280) %1)
  %.val = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %.val21 = load ptr, ptr %i.k, align 8
  %i.t = call fastcc ptr @_RNvXs_NtCsa9Jrx9KOzzM_16hickory_resolver16name_server_poolINtB4_14NameServerPoolNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENtNtNtB1m_4xfer10dns_handle9DnsHandle4sendCshnt8FRa5Rut_11native_ping(ptr nonnull %.val, ptr %.val21, ptr noalias nofree noundef align 8 captures(address) dereferenceable(280) %i.a) ; 2 uses
  %.val22 = load ptr, ptr %i.e, align 8           ; 5 uses
  %.val23 = load ptr, ptr %i.l, align 8, !nonnull !5, !align !1540, !noundef !5 ; 5 uses
  %i.u = load ptr, ptr %.val23, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.g:                                             ; preds = %bb.d
  %.not19 = icmp eq i32 %i.o, 2
  br i1 %.not19, label %bb.f, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false)
  store i64 -1, ptr %0, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.414.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  br label %bb.e

bb.i:                                             ; preds = %bb.e, %._crit_edge
  ret void

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTjNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorEECshnt8FRa5Rut_11native_ping.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val22) ]
  invoke void %i.u(ptr noundef nonnull %.val22)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTjNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorEECshnt8FRa5Rut_11native_ping.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.val23, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !1001, !invariant.load !5 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCsgtKVDLJNbYN_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtCsbTgMbcnmcyu_13hickory_proto2op12dns_response11DnsResponseNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorENtNtB4_6marker4SendEL_EEECshnt8FRa5Rut_11native_ping.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %.val23, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !1002, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val22) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val22, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) %i.z) #37
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCsgtKVDLJNbYN_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtCsbTgMbcnmcyu_13hickory_proto2op12dns_response11DnsResponseNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorENtNtB4_6marker4SendEL_EEECshnt8FRa5Rut_11native_ping.exit

bb.l:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = getelementptr inbounds nuw i8, ptr %.val23, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !1001, !invariant.load !5 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.body, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %.val23, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !1002, !invariant.load !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val22, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) %i.af) #37
  br label %.body

.body:                                            ; preds = %bb.l, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i
  store ptr %i.t, ptr %i.e, align 8
  store ptr @144, ptr %i.l, align 8
  resume { ptr, i32 } %i.aa

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCsgtKVDLJNbYN_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtCsbTgMbcnmcyu_13hickory_proto2op12dns_response11DnsResponseNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorENtNtB4_6marker4SendEL_EEECshnt8FRa5Rut_11native_ping.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.k
  store ptr %i.t, ptr %i.e, align 8
  store ptr @144, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvYINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCsgtKVDLJNbYN_12futures_core6stream6Streamp4ItemINtNtB7_6result6ResultNtNtNtCsbTgMbcnmcyu_13hickory_proto2op12dns_response11DnsResponseNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorENtNtB7_6marker4SendEL_EENtNtNtCsl9hx9jpF0W9_12futures_util6stream6stream9StreamExt15poll_next_unpinCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  %i.ag = load i64, ptr %i.d, align 8, !range !2872, !noundef !5
  %cond = icmp eq i64 %i.ag, -1
  br i1 %cond, label %bb.b, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs1_CsdV5RFaui74W_12libp2p_mplexINtB5_9MultiplexINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBO_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEENtNtCsdTHTBGblh3Z_11libp2p_core6muxing11StreamMuxer10poll_closeCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 6 uses
  %i.c = cmpxchg weak ptr %i.b, i8 0, i8 1 acquire monotonic, align 1
  %i.d = extractvalue { i8, i1 } %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b, !prof !194

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMs1_NtCsbNxlIVSzhBv_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.b, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = invoke { i64, ptr } @_RNvMs0_NtCsdV5RFaui74W_12libp2p_mplex2ioINtB5_11MultiplexedINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBW_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEE10poll_closeCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(1840) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/ipfs_private_example.ipfs_private_example.c9cf337336d19c9e-cgu.09?download=true
inline.NumInlined: 1699
inline.NumDeleted: 847
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvXsa_NtNtCsbTgMbcnmcyu_13hickory_proto2op11dns_requestNtB5_10DnsRequestNtNtCskKLDkoKarTP_4core5clone5Clone5clone:bb.a
bb.bk:                                            ; preds = %_RNvXs4_NtNtCsbTgMbcnmcyu_13hickory_proto2op7messageNtB5_7MessageNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit, %bb.bm
  %.sroa.5.sroa.0.sroa.7.0 = phi i8 [ undef, %_RNvXs4_NtNtCsbTgMbcnmcyu_13hickory_proto2op7messageNtB5_7MessageNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit ], [ %i.dq, %bb.bm ]
  %.sroa.5.sroa.0.sroa.5.0 = phi i16 [ undef, %_RNvXs4_NtNtCsbTgMbcnmcyu_13hickory_proto2op7messageNtB5_7MessageNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit ], [ %.sroa.5.sroa.0.0.i, %bb.bm ]
  %.sroa.5.sroa.0.sroa.4.0 = phi i16 [ undef, %_RNvXs4_NtNtCsbTgMbcnmcyu_13hickory_proto2op7messageNtB5_7MessageNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit ], [ %.sroa.0.0.i8, %bb.bm ]
  %.sroa.5.sroa.8.0 = phi i8 [ undef, %_RNvXs4_NtNtCsbTgMbcnmcyu_13hickory_proto2op7messageNtB5_7MessageNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit ], [ %i.ep, %bb.bm ]
  %.sroa.0.0 = phi i16 [ 2, %_RNvXs4_NtNtCsbTgMbcnmcyu_13hickory_proto2op7messageNtB5_7MessageNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit ], [ %.sroa.0.0.copyload, %bb.bm ]
  %i.eh = phi <4 x i16> [ undef, %_RNvXs4_NtNtCsbTgMbcnmcyu_13hickory_proto2op7messageNtB5_7MessageNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit ], [ %i.en, %bb.bm ]
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %i.q, i64 152, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ej, ptr noundef nonnull align 8 dereferenceable(32) %i.ei, i64 32, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i16 %.sroa.0.0, ptr %i.ek, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 186
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(38) %.sroa.5.sroa.0.sroa.0, i64 38, i1 false)
  %.sroa.5.sroa.0.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i16 %.sroa.5.sroa.0.sroa.4.0, ptr %.sroa.5.sroa.0.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.0.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 226
  store i16 %.sroa.5.sroa.0.sroa.5.0, ptr %.sroa.5.sroa.0.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 2
  %.sroa.5.sroa.0.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5.sroa.0.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5.sroa.4.i, i64 28, i1 false)
  %.sroa.5.sroa.0.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i8 %.sroa.5.sroa.0.sroa.7.0, ptr %.sroa.5.sroa.0.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store <4 x i16> %i.eh, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i8 %.sroa.5.sroa.8.0, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  ret void

bb.bl:                                            ; preds = %bb.bd
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bh, %bb.bl
  %eh.lpad-body = phi { ptr, i32 } [ %i.el, %bb.bl ], [ %i.ef, %bb.bh ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2op7message7MessageECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(152) %i.q) #34
          to label %common.resume unwind label %bb.bn

bb.bm:                                            ; preds = %bb.bi, %bb.bg
  %.sroa.5.sroa.0.0.i = phi i16 [ undef, %bb.bi ], [ %i.ee, %bb.bg ]
  %.sroa.0.0.i8 = phi i16 [ 1, %bb.bi ], [ 0, %bb.bg ]
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %.sroa.5.sroa.0.sroa.0, ptr noundef nonnull align 2 dereferenceable(38) %.sroa.411.0..sroa_idx, i64 38, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4198
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.en = load <4 x i16>, ptr %i.em, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.ep = load i8, ptr %i.eo, align 8, !range !8, !noundef !7
  br label %bb.bk

bb.bn:                                            ; preds = %.body
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtNtCs3LwfirTY3Ij_20netlink_packet_route15neighbour_table9attribute23NeighbourTableAttributeNtB5_5Debug3fmtCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 96076792050570582) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route15neighbour_table9attribute23NeighbourTableAttributeINtNtNtBa_5slice4iter4IterB14_EECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9attribute13LinkAttributeNtB5_5Debug3fmtCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 44343134792571038) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [208 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9attribute13LinkAttributeINtNtNtBa_5slice4iter4IterB14_EECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtNtCs3LwfirTY3Ij_20netlink_packet_route7address9attribute16AddressAttributeNtB5_5Debug3fmtCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route7address9attribute16AddressAttributeINtNtNtBa_5slice4iter4IterB14_EECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info8mac_vlan11InfoMacVlanNtB5_5Debug3fmtCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info8mac_vlan11InfoMacVlanINtNtNtBa_5slice4iter4IterB14_EECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info8mac_vlan11InfoMacVtapNtB5_5Debug3fmtCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info8mac_vlan11InfoMacVtapINtNtNtBa_5slice4iter4IterB14_EECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr5rdata4aaaa4AAAANtB5_5Debug3fmtCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr5rdata4aaaa4AAAAINtNtNtBa_5slice4iter4IterB14_EECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtNtCs4LZN9PPmi2I_11hickory_net4xfer16retry_dns_handle15RetrySendStreamINtNtCsa9Jrx9KOzzM_16hickory_resolver16name_server_pool14NameServerPoolNtNtNtB9_7runtime13tokio_runtime20TokioRuntimeProviderEENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9size_hintCshke30g4Hb4g_20ipfs_private_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYINtNtNtCs4WSCZBoZJWV_6cipher6stream7wrapper23StreamCipherCoreWrapperINtNtCs5sEvUJpJda_7salsa206xsalsa10XSalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1S_IB1S_IB1S_NtB1U_5UTermNtNtB1W_3bit2B1ENtB2V_2B0EB2T_EB39_EEENtB7_12StreamCipher25try_apply_keystream_inoutCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 4 dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [64 x i8], align 4                ; 23 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [72 x i8], align 8                ; 7 uses
  %i.g = alloca [64 x i8], align 4                ; 5 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %i.j = alloca [64 x i8], align 4                ; 23 uses
  %i.k = alloca [4 x i8], align 4                 ; 4 uses
  %i.l = alloca [72 x i8], align 8                ; 7 uses
  %i.m = alloca [72 x i8], align 8                ; 4 uses
  %i.n = alloca [64 x i8], align 4                ; 5 uses
  %i.o = alloca [64 x i8], align 16               ; 8 uses
  %i.p = alloca [64 x i8], align 16               ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noundef !7 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 15 uses
  %i.t = load i8, ptr %i.s, align 4, !alias.scope !4279, !noundef !7 ; 5 uses
  %i.u = icmp ne i8 %i.t, 0
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp ult i8 %i.t, 65
  tail call void @llvm.assume(i1 %i.v)
  %narrow.i = sub nuw nsw i8 64, %i.t
  %i.w = zext nneg i8 %narrow.i to i64            ; 3 uses
  %i.x = icmp ult i64 %i.r, %i.w
  br i1 %i.x, label %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtNtCs5sEvUJpJda_7salsa206xsalsa10XSalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1Y_IB1Y_IB1Y_NtB20_5UTermNtNtB22_3bit2B1ENtB31_2B0EB2Z_EB3f_EEENtB7_12StreamCipher15check_remainingCshke30g4Hb4g_20ipfs_private_example.exit.thread, label %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtNtCs5sEvUJpJda_7salsa206xsalsa10XSalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1Y_IB1Y_IB1Y_NtB20_5UTermNtNtB22_3bit2B1ENtB31_2B0EB2Z_EB3f_EEENtB7_12StreamCipher15check_remainingCshke30g4Hb4g_20ipfs_private_example.exit

_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtNtCs5sEvUJpJda_7salsa206xsalsa10XSalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1Y_IB1Y_IB1Y_NtB20_5UTermNtNtB22_3bit2B1ENtB31_2B0EB2Z_EB3f_EEENtB7_12StreamCipher15check_remainingCshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load i64, ptr %i.y, align 4, !alias.scope !4280
  %i.aa = xor i64 %i.z, -1
  %i.ab = sub nuw i64 %i.r, %i.w                  ; 2 uses
  %i.ac = lshr i64 %i.ab, 6
  %i.ad = and i64 %i.ab, 63
  %.not.i = icmp ne i64 %i.ad, 0
  %i.ae = zext i1 %.not.i to i64
  %.sroa.04.0.i = add nuw nsw i64 %i.ac, %i.ae
  %i.af = icmp ugt i64 %.sroa.04.0.i, %i.aa
  br i1 %i.af, label %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtNtCs5sEvUJpJda_7salsa206xsalsa10XSalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1Y_IB1Y_IB1Y_NtB20_5UTermNtNtB22_3bit2B1ENtB31_2B0EB2Z_EB3f_EEENtB7_12StreamCipher31unchecked_apply_keystream_inoutCshke30g4Hb4g_20ipfs_private_example.exit, label %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtNtCs5sEvUJpJda_7salsa206xsalsa10XSalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1Y_IB1Y_IB1Y_NtB20_5UTermNtNtB22_3bit2B1ENtB31_2B0EB2Z_EB3f_EEENtB7_12StreamCipher15check_remainingCshke30g4Hb4g_20ipfs_private_example.exit.thread

_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtNtCs5sEvUJpJda_7salsa206xsalsa10XSalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1Y_IB1Y_IB1Y_NtB20_5UTermNtNtB22_3bit2B1ENtB31_2B0EB2Z_EB3f_EEENtB7_12StreamCipher15check_remainingCshke30g4Hb4g_20ipfs_private_example.exit.thread: ; preds = %bb.a, %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtNtCs5sEvUJpJda_7salsa206xsalsa10XSalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1Y_IB1Y_IB1Y_NtB20_5UTermNtNtB22_3bit2B1ENtB31_2B0EB2Z_EB3f_EEENtB7_12StreamCipher15check_remainingCshke30g4Hb4g_20ipfs_private_example.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4282)
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.w) ; 15 uses
  %i.ag = trunc nuw nsw i64 %..i.i to i8
  %i.ah = add nuw nsw i8 %i.t, %i.ag
  store i8 %i.ah, ptr %i.s, align 4, !alias.scope !4283, !noalias !4282
  %i.ai = zext nneg i8 %i.t to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ai ; 12 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !4282, !noalias !4281, !noundef !7 ; 14 uses
  %2 = ptrtoaddr ptr %i.al to i64                 ; 2 uses
  %i.am = load ptr, ptr %1, align 8, !alias.scope !4282, !noalias !4281, !noundef !7 ; 14 uses
  %3 = ptrtoaddr ptr %i.am to i64                 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %..i.i ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %..i.i ; 2 uses
  %i.ap = sub i64 %i.r, %..i.i                    ; 7 uses
  %i.aq = lshr i64 %i.ap, 6                       ; 2 uses
  %i.ar = and i64 %i.ap, -64                      ; 2 uses
  %i.as = and i64 %i.ap, 63                       ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ar ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4284)
  %.not.i1 = icmp eq i64 %..i.i, 0
  br i1 %.not.i1, label %_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out.exit.i, label %iter.check

iter.check:                                       ; preds = %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtNtCs5sEvUJpJda_7salsa206xsalsa10XSalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1Y_IB1Y_IB1Y_NtB20_5UTermNtNtB22_3bit2B1ENtB31_2B0EB2Z_EB3f_EEENtB7_12StreamCipher15check_remainingCshke30g4Hb4g_20ipfs_private_example.exit.thread
  %min.iters.check = icmp samesign ult i64 %..i.i, 4
  %i.av = sub i64 %3, %2
  %diff.check = icmp ugt i64 %i.av, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check139 = icmp samesign ult i64 %..i.i, 16
  br i1 %min.iters.check139, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aw = and i64 %..i.i, 12
  %n.vec = and i64 %..i.i, 112                    ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %wide.load = load <8 x i8>, ptr %i.am, align 1, !noalias !4285
  %wide.load140 = load <8 x i8>, ptr %i.ax, align 1, !noalias !4285
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %wide.load141 = load <8 x i8>, ptr %i.aj, align 1, !alias.scope !4286, !noalias !4287
  %wide.load142 = load <8 x i8>, ptr %i.ay, align 1, !alias.scope !4286, !noalias !4287
  %i.az = xor <8 x i8> %wide.load141, %wide.load
  %i.ba = xor <8 x i8> %wide.load142, %wide.load140
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store <8 x i8> %i.az, ptr %i.al, align 1, !noalias !4285
  store <8 x i8> %i.ba, ptr %i.bb, align 1, !noalias !4285
  %i.bc = icmp eq i64 %n.vec, 16
  br i1 %i.bc, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %wide.load.1 = load <8 x i8>, ptr %i.bd, align 1, !noalias !4285
  %wide.load140.1 = load <8 x i8>, ptr %i.be, align 1, !noalias !4285
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %wide.load141.1 = load <8 x i8>, ptr %i.bg, align 1, !alias.scope !4286, !noalias !4287
  %wide.load142.1 = load <8 x i8>, ptr %i.bh, align 1, !alias.scope !4286, !noalias !4287
  %i.bi = xor <8 x i8> %wide.load141.1, %wide.load.1
  %i.bj = xor <8 x i8> %wide.load142.1, %wide.load140.1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store <8 x i8> %i.bi, ptr %i.bf, align 1, !noalias !4285
  store <8 x i8> %i.bj, ptr %i.bk, align 1, !noalias !4285
  %i.bl = icmp eq i64 %n.vec, 32
  br i1 %i.bl, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %wide.load.2 = load <8 x i8>, ptr %i.bm, align 1, !noalias !4285
  %wide.load140.2 = load <8 x i8>, ptr %i.bn, align 1, !noalias !4285
  %i.bo = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %wide.load141.2 = load <8 x i8>, ptr %i.bp, align 1, !alias.scope !4286, !noalias !4287
  %wide.load142.2 = load <8 x i8>, ptr %i.bq, align 1, !alias.scope !4286, !noalias !4287
  %i.br = xor <8 x i8> %wide.load141.2, %wide.load.2
  %i.bs = xor <8 x i8> %wide.load142.2, %wide.load140.2
  %i.bt = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store <8 x i8> %i.br, ptr %i.bo, align 1, !noalias !4285
  store <8 x i8> %i.bs, ptr %i.bt, align 1, !noalias !4285
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %..i.i, %n.vec
  br i1 %cmp.n, label %_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !4288

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec143 = and i64 %..i.i, 124                 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index144 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next147, %vec.epilog.vector.body ] ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.am, i64 %index144
  %wide.load145 = load <4 x i8>, ptr %i.bu, align 1, !noalias !4285
  %i.bv = getelementptr inbounds nuw i8, ptr %i.al, i64 %index144
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index144
  %wide.load146 = load <4 x i8>, ptr %i.bw, align 1, !alias.scope !4286, !noalias !4287
  %i.bx = xor <4 x i8> %wide.load146, %wide.load145
  store <4 x i8> %i.bx, ptr %i.bv, align 1, !noalias !4285
  %index.next147 = add nuw i64 %index144, 4       ; 2 uses
  %i.by = icmp eq i64 %index.next147, %n.vec143
  br i1 %i.by, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4211

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n148 = icmp eq i64 %..i.i, %n.vec143
  br i1 %cmp.n148, label %_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out.exit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.0.i49.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec143, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %..i.i, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.01.0.i49.i.prol = phi i64 [ %i.cc, %.lr.ph.i.prol ], [ %.sroa.01.0.i49.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sroa.01.0.i49.i.prol
  %i.ca = load i8, ptr %i.bz, align 1, !noalias !4285, !noundef !7
  %i.cb = getelementptr inbounds nuw i8, ptr %i.al, i64 %.sroa.01.0.i49.i.prol
  %i.cc = add nuw nsw i64 %.sroa.01.0.i49.i.prol, 1 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sroa.01.0.i49.i.prol
  %i.ce = load i8, ptr %i.cd, align 1, !alias.scope !4286, !noalias !4287, !noundef !7
  %i.cf = xor i8 %i.ce, %i.ca
  store i8 %i.cf, ptr %i.cb, align 1, !noalias !4285
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !4212

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.01.0.i49.i.unr = phi i64 [ %.sroa.01.0.i49.i.ph, %.lr.ph.i.preheader ], [ %i.cc, %.lr.ph.i.prol ]
  %i.cg = sub nsw i64 %.sroa.01.0.i49.i.ph, %..i.i
  %i.ch = icmp ugt i64 %i.cg, -4
  br i1 %i.ch, label %_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.01.0.i49.i = phi i64 [ %i.dg, %.lr.ph.i ], [ %.sroa.01.0.i49.i.unr, %.lr.ph.i.prol.loopexit ] ; 7 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sroa.01.0.i49.i
  %i.cj = load i8, ptr %i.ci, align 1, !noalias !4285, !noundef !7
  %i.ck = getelementptr inbounds nuw i8, ptr %i.al, i64 %.sroa.01.0.i49.i
  %i.cl = add nuw nsw i64 %.sroa.01.0.i49.i, 1    ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sroa.01.0.i49.i
  %i.cn = load i8, ptr %i.cm, align 1, !alias.scope !4286, !noalias !4287, !noundef !7
  %i.co = xor i8 %i.cn, %i.cj
  store i8 %i.co, ptr %i.ck, align 1, !noalias !4285
  %i.cp = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.cl
  %i.cq = load i8, ptr %i.cp, align 1, !noalias !4285, !noundef !7
  %i.cr = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.cl
  %i.cs = add nuw nsw i64 %.sroa.01.0.i49.i, 2    ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.cl
  %i.cu = load i8, ptr %i.ct, align 1, !alias.scope !4286, !noalias !4287, !noundef !7
  %i.cv = xor i8 %i.cu, %i.cq
  store i8 %i.cv, ptr %i.cr, align 1, !noalias !4285
  %i.cw = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.cs
  %i.cx = load i8, ptr %i.cw, align 1, !noalias !4285, !noundef !7
  %i.cy = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.cs
  %i.cz = add nuw nsw i64 %.sroa.01.0.i49.i, 3    ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.cs
  %i.db = load i8, ptr %i.da, align 1, !alias.scope !4286, !noalias !4287, !noundef !7
  %i.dc = xor i8 %i.db, %i.cx
  store i8 %i.dc, ptr %i.cy, align 1, !noalias !4285
  %i.dd = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.cz
  %i.de = load i8, ptr %i.dd, align 1, !noalias !4285, !noundef !7
  %i.df = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.cz
  %i.dg = add nuw nsw i64 %.sroa.01.0.i49.i, 4    ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.cz
  %i.di = load i8, ptr %i.dh, align 1, !alias.scope !4286, !noalias !4287, !noundef !7
  %i.dj = xor i8 %i.di, %i.de
  store i8 %i.dj, ptr %i.df, align 1, !noalias !4285
  %exitcond.not.i.3 = icmp eq i64 %i.dg, %..i.i
  br i1 %exitcond.not.i.3, label %_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out.exit.i, label %.lr.ph.i, !llvm.loop !4213

_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out.exit.i: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtNtCs5sEvUJpJda_7salsa206xsalsa10XSalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1Y_IB1Y_IB1Y_NtB20_5UTermNtNtB22_3bit2B1ENtB31_2B0EB2Z_EB3f_EEENtB7_12StreamCipher15check_remainingCshke30g4Hb4g_20ipfs_private_example.exit.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4291)
  %i.dk = icmp eq i64 %i.aq, 0
  br i1 %i.dk, label %_RNvYINtNtCs5sEvUJpJda_7salsa206xsalsa10XSalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBM_IBM_IBM_NtBO_5UTermNtNtBQ_3bit2B1ENtB1L_2B0EB1J_EB1Y_EENtNtNtCs4WSCZBoZJWV_6cipher6stream8core_api16StreamCipherCore28apply_keystream_blocks_inoutCshke30g4Hb4g_20ipfs_private_example.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs2_NtCs9HgoOO8pbyf_5inout9inout_bufINtB5_8InOutBufhE10xor_in2out.exit.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.j, i64 20 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.j, i64 36 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.j, i64 52 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.j, i64 60 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.j, i64 44 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.j, i64 28 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.516.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.717.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.58.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ee = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.eh = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ej = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.ek = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.el = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.em = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs0_NtNtCs5sEvUJpJda_7salsa208backends4softINtB5_7BackendINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBX_IBX_IBX_NtBZ_5UTermNtNtB11_3bit2B1ENtB1W_2B0EB1U_EB2a_EENtNtNtCs4WSCZBoZJWV_6cipher6stream8core_api19StreamCipherBackend12gen_ks_blockCshke30g4Hb4g_20ipfs_private_example.exit.i.i, %.lr.ph.i.i
  %.sroa.01.0.i59.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ep, %_RNvXs0_NtNtCs5sEvUJpJda_7salsa208backends4softINtB5_7BackendINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBX_IBX_IBX_NtBZ_5UTermNtNtB11_3bit2B1ENtB1W_2B0EB1U_EB2a_EENtNtNtCs4WSCZBoZJWV_6cipher6stream8core_api19StreamCipherBackend12gen_ks_blockCshke30g4Hb4g_20ipfs_private_example.exit.i.i ] ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvYINtNtNtCs4WSCZBoZJWV_6cipher6stream7wrapper23StreamCipherCoreWrapperINtNtCs5sEvUJpJda_7salsa206xsalsa10XSalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1S_IB1S_IB1S_NtB1U_5UTermNtNtB1W_3bit2B1ENtB2V_2B0EB2T_EB39_EEENtB7_12StreamCipher25try_apply_keystream_inoutCshke30g4Hb4g_20ipfs_private_example:bb.a
  %i.nz = call noundef i32 @llvm.fshl.i32(i32 %i.ny, i32 %i.ny, i32 9)
  %i.oa = xor i32 %i.nz, %i.nh                    ; 3 uses
  %i.ob = add i32 %i.oa, %i.nx                    ; 2 uses
  %i.oc = call noundef i32 @llvm.fshl.i32(i32 %i.ob, i32 %i.ob, i32 13)
  %i.od = xor i32 %i.oc, %i.nf                    ; 2 uses
  %i.oe = add i32 %i.od, %i.oa                    ; 2 uses
  %i.of = call noundef i32 @llvm.fshl.i32(i32 %i.oe, i32 %i.oe, i32 18)
  %i.og = xor i32 %i.of, %i.ne                    ; 3 uses
  %i.oh = add i32 %i.nj, %i.ni                    ; 2 uses
  %i.oi = call noundef i32 @llvm.fshl.i32(i32 %i.oh, i32 %i.oh, i32 7)
  %i.oj = xor i32 %i.oi, %i.nk                    ; 4 uses
  %i.ok = add i32 %i.oj, %i.ni                    ; 2 uses
  %i.ol = call noundef i32 @llvm.fshl.i32(i32 %i.ok, i32 %i.ok, i32 9)
  %i.om = xor i32 %i.ol, %i.nl                    ; 3 uses
  %i.on = add i32 %i.om, %i.oj                    ; 2 uses
  %i.oo = call noundef i32 @llvm.fshl.i32(i32 %i.on, i32 %i.on, i32 13)
  %i.op = xor i32 %i.oo, %i.nj                    ; 2 uses
  %i.oq = add i32 %i.op, %i.om                    ; 2 uses
  %i.or = call noundef i32 @llvm.fshl.i32(i32 %i.oq, i32 %i.oq, i32 18)
  %i.os = xor i32 %i.or, %i.ni                    ; 3 uses
  %i.ot = add i32 %i.nn, %i.nm                    ; 2 uses
  %i.ou = call noundef i32 @llvm.fshl.i32(i32 %i.ot, i32 %i.ot, i32 7)
  %i.ov = xor i32 %i.ou, %i.no                    ; 4 uses
  %i.ow = add i32 %i.ov, %i.nm                    ; 2 uses
  %i.ox = call noundef i32 @llvm.fshl.i32(i32 %i.ow, i32 %i.ow, i32 9)
  %i.oy = xor i32 %i.ox, %i.np                    ; 3 uses
  %i.oz = add i32 %i.oy, %i.ov                    ; 2 uses
  %i.pa = call noundef i32 @llvm.fshl.i32(i32 %i.oz, i32 %i.oz, i32 13)
  %i.pb = xor i32 %i.pa, %i.nn                    ; 2 uses
  %i.pc = add i32 %i.pb, %i.oy                    ; 2 uses
  %i.pd = call noundef i32 @llvm.fshl.i32(i32 %i.pc, i32 %i.pc, i32 18)
  %i.pe = xor i32 %i.pd, %i.nm                    ; 3 uses
  %i.pf = add i32 %i.nr, %i.nq                    ; 2 uses
  %i.pg = call noundef i32 @llvm.fshl.i32(i32 %i.pf, i32 %i.pf, i32 7)
  %i.ph = xor i32 %i.pg, %i.ns                    ; 4 uses
  %i.pi = add i32 %i.ph, %i.nq                    ; 2 uses
  %i.pj = call noundef i32 @llvm.fshl.i32(i32 %i.pi, i32 %i.pi, i32 9)
  %i.pk = xor i32 %i.pj, %i.nt                    ; 3 uses
  %i.pl = add i32 %i.pk, %i.ph                    ; 2 uses
  %i.pm = call noundef i32 @llvm.fshl.i32(i32 %i.pl, i32 %i.pl, i32 13)
  %i.pn = xor i32 %i.pm, %i.nr                    ; 2 uses
  %i.po = add i32 %i.pn, %i.pk                    ; 2 uses
  %i.pp = call noundef i32 @llvm.fshl.i32(i32 %i.po, i32 %i.po, i32 18)
  %i.pq = xor i32 %i.pp, %i.nq                    ; 3 uses
  %i.pr = add i32 %i.ph, %i.og                    ; 2 uses
  %i.ps = call noundef i32 @llvm.fshl.i32(i32 %i.pr, i32 %i.pr, i32 7)
  %i.pt = xor i32 %i.ps, %i.op                    ; 4 uses
  %i.pu = add i32 %i.pt, %i.og                    ; 2 uses
  %i.pv = call noundef i32 @llvm.fshl.i32(i32 %i.pu, i32 %i.pu, i32 9)
  %i.pw = xor i32 %i.pv, %i.oy                    ; 4 uses
  %i.px = add i32 %i.pw, %i.pt                    ; 2 uses
  %i.py = call noundef i32 @llvm.fshl.i32(i32 %i.px, i32 %i.px, i32 13)
  %i.pz = xor i32 %i.py, %i.ph                    ; 3 uses
  %i.qa = add i32 %i.pz, %i.pw                    ; 2 uses
  %i.qb = call noundef i32 @llvm.fshl.i32(i32 %i.qa, i32 %i.qa, i32 18)
  %i.qc = xor i32 %i.qb, %i.og                    ; 2 uses
  %i.qd = add i32 %i.os, %i.nx                    ; 2 uses
  %i.qe = call noundef i32 @llvm.fshl.i32(i32 %i.qd, i32 %i.qd, i32 7)
  %i.qf = xor i32 %i.qe, %i.pb                    ; 4 uses
  %i.qg = add i32 %i.qf, %i.os                    ; 2 uses
  %i.qh = call noundef i32 @llvm.fshl.i32(i32 %i.qg, i32 %i.qg, i32 9)
  %i.qi = xor i32 %i.qh, %i.pk                    ; 4 uses
  %i.qj = add i32 %i.qi, %i.qf                    ; 2 uses
  %i.qk = call noundef i32 @llvm.fshl.i32(i32 %i.qj, i32 %i.qj, i32 13)
  %i.ql = xor i32 %i.qk, %i.nx                    ; 3 uses
  %i.qm = add i32 %i.ql, %i.qi                    ; 2 uses
  %i.qn = call noundef i32 @llvm.fshl.i32(i32 %i.qm, i32 %i.qm, i32 18)
  %i.qo = xor i32 %i.qn, %i.os                    ; 2 uses
  %i.qp = add i32 %i.pe, %i.oj                    ; 2 uses
  %i.qq = call noundef i32 @llvm.fshl.i32(i32 %i.qp, i32 %i.qp, i32 7)
  %i.qr = xor i32 %i.qq, %i.pn                    ; 4 uses
  %i.qs = add i32 %i.qr, %i.pe                    ; 2 uses
  %i.qt = call noundef i32 @llvm.fshl.i32(i32 %i.qs, i32 %i.qs, i32 9)
  %i.qu = xor i32 %i.qt, %i.oa                    ; 4 uses
  %i.qv = add i32 %i.qu, %i.qr                    ; 2 uses
  %i.qw = call noundef i32 @llvm.fshl.i32(i32 %i.qv, i32 %i.qv, i32 13)
  %i.qx = xor i32 %i.qw, %i.oj                    ; 3 uses
  %i.qy = add i32 %i.qx, %i.qu                    ; 2 uses
  %i.qz = call noundef i32 @llvm.fshl.i32(i32 %i.qy, i32 %i.qy, i32 18)
  %i.ra = xor i32 %i.qz, %i.pe                    ; 2 uses
  %i.rb = add i32 %i.pq, %i.ov                    ; 2 uses
  %i.rc = call noundef i32 @llvm.fshl.i32(i32 %i.rb, i32 %i.rb, i32 7)
  %i.rd = xor i32 %i.rc, %i.od                    ; 4 uses
  %i.re = add i32 %i.rd, %i.pq                    ; 2 uses
  %i.rf = call noundef i32 @llvm.fshl.i32(i32 %i.re, i32 %i.re, i32 9)
  %i.rg = xor i32 %i.rf, %i.om                    ; 4 uses
  %i.rh = add i32 %i.rg, %i.rd                    ; 2 uses
  %i.ri = call noundef i32 @llvm.fshl.i32(i32 %i.rh, i32 %i.rh, i32 13)
  %i.rj = xor i32 %i.ri, %i.ov                    ; 3 uses
  %i.rk = add i32 %i.rj, %i.rg                    ; 2 uses
  %i.rl = call noundef i32 @llvm.fshl.i32(i32 %i.rk, i32 %i.rk, i32 18)
  %i.rm = xor i32 %i.rl, %i.pq                    ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.nu, 10
  br i1 %exitcond.not.i.i.i, label %bb.g, label %bb.h

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i
  %.sroa.510.051.i.i.i = phi i64 [ %i.sh, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i ], [ %.sroa.510.051.i.i.i.unr, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.prol.loopexit ] ; 6 uses
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.0.copyload.i.i.i, i64 %.sroa.510.051.i.i.i ; 2 uses
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %.sroa.48.0.copyload.i.i.i, i64 %.sroa.510.051.i.i.i
  %i.rp = add nuw i64 %.sroa.510.051.i.i.i, 1     ; 2 uses
  %i.rq = load i32, ptr %i.rn, align 4, !noalias !4320, !noundef !7
  %i.rr = load i32, ptr %i.ro, align 4, !noalias !4320, !noundef !7
  %i.rs = add i32 %i.rr, %i.rq
  store i32 %i.rs, ptr %i.rn, align 4, !noalias !4320
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.0.copyload.i.i.i, i64 %i.rp ; 2 uses
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %.sroa.48.0.copyload.i.i.i, i64 %i.rp
  %i.rv = add nuw i64 %.sroa.510.051.i.i.i, 2     ; 2 uses
  %i.rw = load i32, ptr %i.rt, align 4, !noalias !4320, !noundef !7
  %i.rx = load i32, ptr %i.ru, align 4, !noalias !4320, !noundef !7
  %i.ry = add i32 %i.rx, %i.rw
  store i32 %i.ry, ptr %i.rt, align 4, !noalias !4320
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.0.copyload.i.i.i, i64 %i.rv ; 2 uses
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.48.0.copyload.i.i.i, i64 %i.rv
  %i.sb = add nuw i64 %.sroa.510.051.i.i.i, 3     ; 2 uses
  %i.sc = load i32, ptr %i.rz, align 4, !noalias !4320, !noundef !7
  %i.sd = load i32, ptr %i.sa, align 4, !noalias !4320, !noundef !7
  %i.se = add i32 %i.sd, %i.sc
  store i32 %i.se, ptr %i.rz, align 4, !noalias !4320
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.0.copyload.i.i.i, i64 %i.sb ; 2 uses
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.48.0.copyload.i.i.i, i64 %i.sb
  %i.sh = add nuw i64 %.sroa.510.051.i.i.i, 4     ; 2 uses
  %i.si = load i32, ptr %i.sf, align 4, !noalias !4320, !noundef !7
  %i.sj = load i32, ptr %i.sg, align 4, !noalias !4320, !noundef !7
  %i.sk = add i32 %i.sj, %i.si
  store i32 %i.sk, ptr %i.sf, align 4, !noalias !4320
  %exitcond67.not.i.i.i.3 = icmp eq i64 %i.sh, %.sroa.711.0.copyload.i.i.i
  br i1 %exitcond67.not.i.i.i.3, label %_RINvNtNtCs5sEvUJpJda_7salsa208backends4soft10run_roundsINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB1R_2B0EB1P_EB24_EECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i, !llvm.loop !4260

_RINvNtNtCs5sEvUJpJda_7salsa208backends4soft10run_roundsINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB1R_2B0EB1P_EB24_EECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.prol.loopexit, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_4ItermEEINtB5_7ZipImplBW_B1r_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i, %middle.block198, %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.g, ptr noundef nonnull align 4 dereferenceable(64) %i.d, i64 64, i1 false), !noalias !4324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4318
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.sm = load i64, ptr %i.sl, align 4, !alias.scope !4325, !noalias !4326
  %i.sn = add i64 %i.sm, 1
  store i64 %i.sn, ptr %i.sl, align 4, !alias.scope !4325, !noalias !4326
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.sp = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4327
  store ptr %i.so, ptr %i.b, align 8, !noalias !4328
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !4328
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.s, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !4328
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !4328
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 4, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !4328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4318
  invoke void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E3newCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b, ptr noundef nonnull %i.g, ptr noundef nonnull %i.sp)
          to label %.noexc5.i unwind label %.loopexit.split-lp.i, !noalias !4282

.noexc5.i:                                        ; preds = %_RINvNtNtCs5sEvUJpJda_7salsa208backends4soft10run_roundsINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB1R_2B0EB1P_EB24_EECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4327
  %i.sq = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 3 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.ss = load i64, ptr %i.sq, align 8, !alias.scope !4329, !noalias !4330, !noundef !7 ; 2 uses
  %i.st = load i64, ptr %i.sr, align 8, !alias.scope !4329, !noalias !4330, !noundef !7
  %i.su = icmp ult i64 %i.ss, %i.st
  br i1 %i.su, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.lr.ph.i.i.i, label %iter.check217

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.lr.ph.i.i.i: ; preds = %.noexc5.i
  %i.sv = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  br label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i: ; preds = %.noexc7.i, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.lr.ph.i.i.i
  %i.sw = phi i64 [ %i.ss, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.lr.ph.i.i.i ], [ %i.td, %.noexc7.i ] ; 3 uses
  %i.sx = add nuw i64 %i.sw, 1
  store i64 %i.sx, ptr %i.sq, align 8, !alias.scope !4329, !noalias !4330
  %i.sy = invoke { ptr, i64 } @_RNvXs1y_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f, i64 noundef %i.sw)
          to label %.noexc6.i unwind label %.loopexit.i, !noalias !4282 ; 2 uses

.noexc6.i:                                        ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i
  %i.sz = extractvalue { ptr, i64 } %i.sy, 0      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.sz, null
  br i1 %.not.i.i.i.i, label %iter.check217, label %bb.i

bb.i:                                             ; preds = %.noexc6.i
  %.val.i1.i.i.i = load ptr, ptr %i.sv, align 8, !alias.scope !4329, !noalias !4330, !nonnull !7, !noundef !7
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %.val.i1.i.i.i, i64 %i.sw
  %i.tb = extractvalue { ptr, i64 } %i.sy, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4318
  %i.tc = load i32, ptr %i.ta, align 4, !noalias !4331, !noundef !7
  store i32 %i.tc, ptr %i.e, align 4, !noalias !4318
  invoke void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull %i.sz, i64 noundef %i.tb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114)
          to label %.noexc7.i unwind label %.loopexit.i, !noalias !4282

.noexc7.i:                                        ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4318
  %i.td = load i64, ptr %i.sq, align 8, !alias.scope !4329, !noalias !4330, !noundef !7 ; 2 uses
  %i.te = load i64, ptr %i.sr, align 8, !alias.scope !4329, !noalias !4330, !noundef !7
  %i.tf = icmp ult i64 %i.td, %i.te
  br i1 %i.tf, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i, label %iter.check217

iter.check217:                                    ; preds = %.noexc7.i, %.noexc6.i, %.noexc5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4318
  call void @llvm.experimental.noalias.scope.decl(metadata !4332)
  call void @llvm.experimental.noalias.scope.decl(metadata !4333)
  %min.iters.check204 = icmp samesign ult i64 %i.as, 4
  %i.tg = sub i64 %3, %2
  %diff.check202 = icmp ugt i64 %i.tg, -16
  %or.cond231 = or i1 %min.iters.check204, %diff.check202
  br i1 %or.cond231, label %vec.epilog.scalar.ph218.preheader, label %vector.main.loop.iter.check205

vector.main.loop.iter.check205:                   ; preds = %iter.check217
  %min.iters.check206 = icmp samesign ult i64 %i.as, 16
  br i1 %min.iters.check206, label %vec.epilog.ph221, label %vector.ph207

vector.ph207:                                     ; preds = %vector.main.loop.iter.check205
  %i.th = and i64 %i.ap, 12
  %n.vec208 = and i64 %i.ap, 48                   ; 4 uses
  br label %vector.body209

vector.body209:                                   ; preds = %vector.ph207, %vector.body209
  %index210 = phi i64 [ 0, %vector.ph207 ], [ %index.next213, %vector.body209 ] ; 4 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.at, i64 %index210
  %wide.load211 = load <16 x i8>, ptr %i.ti, align 1, !noalias !4334
  %i.tj = getelementptr inbounds nuw i8, ptr %i.au, i64 %index210
  %i.tk = getelementptr inbounds nuw i8, ptr %i.s, i64 %index210
  %wide.load212 = load <16 x i8>, ptr %i.tk, align 4, !alias.scope !4335, !noalias !4336
  %i.tl = xor <16 x i8> %wide.load212, %wide.load211
  store <16 x i8> %i.tl, ptr %i.tj, align 1, !noalias !4334
  %index.next213 = add nuw i64 %index210, 16      ; 2 uses
  %i.tm = icmp eq i64 %index.next213, %n.vec208
  br i1 %i.tm, label %middle.block214, label %vector.body209, !llvm.loop !4273

middle.block214:                                  ; preds = %vector.body209
  %cmp.n215 = icmp eq i64 %i.as, %n.vec208
  br i1 %cmp.n215, label %.loopexit, label %vec.epilog.iter.check219

vec.epilog.iter.check219:                         ; preds = %middle.block214
  %min.epilog.iters.check220 = icmp eq i64 %i.th, 0
  br i1 %min.epilog.iters.check220, label %vec.epilog.scalar.ph218.preheader, label %vec.epilog.ph221, !prof !4288

vec.epilog.ph221:                                 ; preds = %vector.main.loop.iter.check205, %vec.epilog.iter.check219
  %vec.epilog.resume.val216 = phi i64 [ %n.vec208, %vec.epilog.iter.check219 ], [ 0, %vector.main.loop.iter.check205 ]
  %n.vec222 = and i64 %i.ap, 60                   ; 3 uses
  br label %vec.epilog.vector.body223

vec.epilog.vector.body223:                        ; preds = %vec.epilog.vector.body223, %vec.epilog.ph221
  %index224 = phi i64 [ %vec.epilog.resume.val216, %vec.epilog.ph221 ], [ %index.next227, %vec.epilog.vector.body223 ] ; 4 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.at, i64 %index224
  %wide.load225 = load <4 x i8>, ptr %i.tn, align 1, !noalias !4334
  %i.to = getelementptr inbounds nuw i8, ptr %i.au, i64 %index224
  %i.tp = getelementptr inbounds nuw i8, ptr %i.s, i64 %index224
  %wide.load226 = load <4 x i8>, ptr %i.tp, align 4, !alias.scope !4335, !noalias !4336
  %i.tq = xor <4 x i8> %wide.load226, %wide.load225
  store <4 x i8> %i.tq, ptr %i.to, align 1, !noalias !4334
  %index.next227 = add nuw i64 %index224, 4       ; 2 uses
  %i.tr = icmp eq i64 %index.next227, %n.vec222
  br i1 %i.tr, label %vec.epilog.middle.block228, label %vec.epilog.vector.body223, !llvm.loop !4274

vec.epilog.middle.block228:                       ; preds = %vec.epilog.vector.body223
  %cmp.n229 = icmp eq i64 %i.as, %n.vec222
  br i1 %cmp.n229, label %.loopexit, label %vec.epilog.scalar.ph218.preheader

vec.epilog.scalar.ph218.preheader:                ; preds = %iter.check217, %vec.epilog.iter.check219, %vec.epilog.middle.block228
  %.sroa.01.0.i1.i.i.ph = phi i64 [ 0, %iter.check217 ], [ %n.vec208, %vec.epilog.iter.check219 ], [ %n.vec222, %vec.epilog.middle.block228 ] ; 3 uses
  %xtraiter269 = and i64 %i.ap, 3                 ; 2 uses
  %lcmp.mod270.not = icmp eq i64 %xtraiter269, 0
  br i1 %lcmp.mod270.not, label %vec.epilog.scalar.ph218.prol.loopexit, label %vec.epilog.scalar.ph218.prol

vec.epilog.scalar.ph218.prol:                     ; preds = %vec.epilog.scalar.ph218.preheader, %vec.epilog.scalar.ph218.prol
  %.sroa.01.0.i1.i.i.prol = phi i64 [ %i.tv, %vec.epilog.scalar.ph218.prol ], [ %.sroa.01.0.i1.i.i.ph, %vec.epilog.scalar.ph218.preheader ] ; 4 uses
  %prol.iter271 = phi i64 [ %prol.iter271.next, %vec.epilog.scalar.ph218.prol ], [ 0, %vec.epilog.scalar.ph218.preheader ]
  %i.ts = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.01.0.i1.i.i.prol
  %i.tt = load i8, ptr %i.ts, align 1, !noalias !4334, !noundef !7
  %i.tu = getelementptr inbounds nuw i8, ptr %i.au, i64 %.sroa.01.0.i1.i.i.prol
  %i.tv = add nuw nsw i64 %.sroa.01.0.i1.i.i.prol, 1 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.01.0.i1.i.i.prol
  %i.tx = load i8, ptr %i.tw, align 1, !alias.scope !4335, !noalias !4336, !noundef !7
  %i.ty = xor i8 %i.tx, %i.tt
  store i8 %i.ty, ptr %i.tu, align 1, !noalias !4334
  %prol.iter271.next = add i64 %prol.iter271, 1   ; 2 uses
  %prol.iter271.cmp.not = icmp eq i64 %prol.iter271.next, %xtraiter269
  br i1 %prol.iter271.cmp.not, label %vec.epilog.scalar.ph218.prol.loopexit, label %vec.epilog.scalar.ph218.prol, !llvm.loop !4275

vec.epilog.scalar.ph218.prol.loopexit:            ; preds = %vec.epilog.scalar.ph218.prol, %vec.epilog.scalar.ph218.preheader
  %.sroa.01.0.i1.i.i.unr = phi i64 [ %.sroa.01.0.i1.i.i.ph, %vec.epilog.scalar.ph218.preheader ], [ %i.tv, %vec.epilog.scalar.ph218.prol ]
  %i.tz = sub nsw i64 %.sroa.01.0.i1.i.i.ph, %i.as
  %i.ua = icmp ugt i64 %i.tz, -4
  br i1 %i.ua, label %.loopexit, label %vec.epilog.scalar.ph218

vec.epilog.scalar.ph218:                          ; preds = %vec.epilog.scalar.ph218.prol.loopexit, %vec.epilog.scalar.ph218
  %.sroa.01.0.i1.i.i = phi i64 [ %i.uz, %vec.epilog.scalar.ph218 ], [ %.sroa.01.0.i1.i.i.unr, %vec.epilog.scalar.ph218.prol.loopexit ] ; 7 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.01.0.i1.i.i
  %i.uc = load i8, ptr %i.ub, align 1, !noalias !4334, !noundef !7
  %i.ud = getelementptr inbounds nuw i8, ptr %i.au, i64 %.sroa.01.0.i1.i.i
  %i.ue = add nuw nsw i64 %.sroa.01.0.i1.i.i, 1   ; 3 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.01.0.i1.i.i
  %i.ug = load i8, ptr %i.uf, align 1, !alias.scope !4335, !noalias !4336, !noundef !7
  %i.uh = xor i8 %i.ug, %i.uc
  store i8 %i.uh, ptr %i.ud, align 1, !noalias !4334
  %i.ui = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ue
  %i.uj = load i8, ptr %i.ui, align 1, !noalias !4334, !noundef !7
  %i.uk = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ue
  %i.ul = add nuw nsw i64 %.sroa.01.0.i1.i.i, 2   ; 3 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ue
  %i.un = load i8, ptr %i.um, align 1, !alias.scope !4335, !noalias !4336, !noundef !7
  %i.uo = xor i8 %i.un, %i.uj
  store i8 %i.uo, ptr %i.uk, align 1, !noalias !4334
  %i.up = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ul
  %i.uq = load i8, ptr %i.up, align 1, !noalias !4334, !noundef !7
  %i.ur = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ul
  %i.us = add nuw nsw i64 %.sroa.01.0.i1.i.i, 3   ; 3 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ul
  %i.uu = load i8, ptr %i.ut, align 1, !alias.scope !4335, !noalias !4336, !noundef !7
  %i.uv = xor i8 %i.uu, %i.uq
  store i8 %i.uv, ptr %i.ur, align 1, !noalias !4334
  %i.uw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.us
  %i.ux = load i8, ptr %i.uw, align 1, !noalias !4334, !noundef !7
  %i.uy = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.us
  %i.uz = add nuw nsw i64 %.sroa.01.0.i1.i.i, 4   ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.us
  %i.vb = load i8, ptr %i.va, align 1, !alias.scope !4335, !noalias !4336, !noundef !7
  %i.vc = xor i8 %i.vb, %i.ux
  store i8 %i.vc, ptr %i.uy, align 1, !noalias !4334
  %exitcond.not.i8.i.3 = icmp eq i64 %i.uz, %i.as
  br i1 %exitcond.not.i8.i.3, label %.loopexit, label %vec.epilog.scalar.ph218, !llvm.loop !4276

.loopexit:                                        ; preds = %vec.epilog.scalar.ph218.prol.loopexit, %vec.epilog.scalar.ph218, %vec.epilog.middle.block228, %middle.block214
  %i.vd = trunc nuw nsw i64 %i.as to i8
  store i8 %i.vd, ptr %i.s, align 4, !alias.scope !4337, !noalias !4338
  br label %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtNtCs5sEvUJpJda_7salsa206xsalsa10XSalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1Y_IB1Y_IB1Y_NtB20_5UTermNtNtB22_3bit2B1ENtB31_2B0EB2Z_EB3f_EEENtB7_12StreamCipher31unchecked_apply_keystream_inoutCshke30g4Hb4g_20ipfs_private_example.exit

.loopexit.i:                                      ; preds = %bb.i, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCshke30g4Hb4g_20ipfs_private_example.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp.i:                             ; preds = %_RINvNtNtCs5sEvUJpJda_7salsa208backends4soft10run_roundsINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB1R_2B0EB1P_EB24_EECshke30g4Hb4g_20ipfs_private_example.exit.i.i.i.i, %bb.g
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  store i8 64, ptr %i.s, align 4, !alias.scope !4281, !noalias !4282
  resume { ptr, i32 } %lpad.phi.i

_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtNtCs5sEvUJpJda_7salsa206xsalsa10XSalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1Y_IB1Y_IB1Y_NtB20_5UTermNtNtB22_3bit2B1ENtB31_2B0EB2Z_EB3f_EEENtB7_12StreamCipher31unchecked_apply_keystream_inoutCshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %.loopexit, %_RNvYINtNtCs5sEvUJpJda_7salsa206xsalsa10XSalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBM_IBM_IBM_NtBO_5UTermNtNtBQ_3bit2B1ENtB1L_2B0EB1J_EB1Y_EENtNtNtCs4WSCZBoZJWV_6cipher6stream8core_api16StreamCipherCore28apply_keystream_blocks_inoutCshke30g4Hb4g_20ipfs_private_example.exit.i, %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtNtCs5sEvUJpJda_7salsa206xsalsa10XSalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1Y_IB1Y_IB1Y_NtB20_5UTermNtNtB22_3bit2B1ENtB31_2B0EB2Z_EB3f_EEENtB7_12StreamCipher15check_remainingCshke30g4Hb4g_20ipfs_private_example.exit
  %.sroa.0.0.i4 = phi i1 [ true, %_RNvXs1_NtNtCs4WSCZBoZJWV_6cipher6stream7wrapperINtB5_23StreamCipherCoreWrapperINtNtCs5sEvUJpJda_7salsa206xsalsa10XSalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIB1Y_IB1Y_IB1Y_NtB20_5UTermNtNtB22_3bit2B1ENtB31_2B0EB2Z_EB3f_EEENtB7_12StreamCipher15check_remainingCshke30g4Hb4g_20ipfs_private_example.exit ], [ false, %_RNvYINtNtCs5sEvUJpJda_7salsa206xsalsa10XSalsaCoreINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBM_IBM_IBM_NtBO_5UTermNtNtBQ_3bit2B1ENtB1L_2B0EB1J_EB1Y_EENtNtNtCs4WSCZBoZJWV_6cipher6stream8core_api16StreamCipherCore28apply_keystream_blocks_inoutCshke30g4Hb4g_20ipfs_private_example.exit.i ], [ false, %.loopexit ]
  ret i1 %.sroa.0.0.i4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNCNvNvMNtNtCsG258MDvU3F_3std2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error17from_raw_os_error9FUNCTIONS0INtNtNtBJ_3ops8function6FnOnceTlQNtNtBJ_3fmt9FormatterEE9call_onceCshke30g4Hb4g_20ipfs_private_example(i32 noundef %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4341
  call void @_RNvNtNtNtNtCsG258MDvU3F_3std3sys2io5error4unix12error_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %0), !noalias !4341
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noalias !4341, !nonnull !7, !noundef !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noalias !4341, !noundef !7
  %i.f = invoke noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #34
          to label %common.resume.i unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCNvNvMNtNtCsG258MDvU3F_3std2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error17from_raw_os_error9FUNCTIONS0Cshke30g4Hb4g_20ipfs_private_example.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32
  unreachable

common.resume.i:                                  ; preds = %bb.d, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.g, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RNCNvNvMNtNtCsG258MDvU3F_3std2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error17from_raw_os_error9FUNCTIONS0Cshke30g4Hb4g_20ipfs_private_example.exit: ; preds = %bb.c
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshke30g4Hb4g_20ipfs_private_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4341
  ret i1 %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
end_hunk_1

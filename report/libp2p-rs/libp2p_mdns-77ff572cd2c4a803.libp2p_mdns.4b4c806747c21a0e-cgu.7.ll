Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_mdns-77ff572cd2c4a803.libp2p_mdns.4b4c806747c21a0e-cgu.7?download=true
inline.NumInlined: 133
inline.NumDeleted: 115
begin_hunk_0
@296 = private unnamed_addr constant [11 x i8] c"NegOverflow", align 1
@297 = private unnamed_addr constant [4 x i8] c"Zero", align 1
@298 = private unnamed_addr constant [14 x i8] c"NotAPowerOfTwo", align 1
@299 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNvNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info6ipvlan1__16InternalBitFlagsNtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns }>, align 8
@300 = private unnamed_addr constant [11 x i8] c"IpVlanFlags", align 1
@301 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNvNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info8iptunnels_1__16InternalBitFlagsNtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns }>, align 8
@302 = private unnamed_addr constant [14 x i8] c"Ip6TunnelFlags", align 1
@303 = private unnamed_addr constant [10 x i8] c"Aggregator", align 1
@304 = private unnamed_addr constant [8 x i8] c"NumPorts", align 1
@305 = private unnamed_addr constant [8 x i8] c"ActorKey", align 1
@306 = private unnamed_addr constant [10 x i8] c"PartnerKey", align 1
@307 = private unnamed_addr constant [10 x i8] c"PartnerMac", align 1
@308 = private unnamed_addr constant [9 x i8] c"BalanceRr", align 1
@309 = private unnamed_addr constant [12 x i8] c"ActiveBackup", align 1
@310 = private unnamed_addr constant [10 x i8] c"BalanceXor", align 1
@311 = private unnamed_addr constant [9 x i8] c"Broadcast", align 1
@312 = private unnamed_addr constant [10 x i8] c"Ieee8023Ad", align 1
@313 = private unnamed_addr constant [10 x i8] c"BalanceTlb", align 1
@314 = private unnamed_addr constant [10 x i8] c"BalanceAlb", align 1
@315 = private unnamed_addr constant [28 x i8] c"failed to write whole buffer", align 1
@316 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @315, [9 x i8] c"\1C\00\00\00\00\00\00\00\17", [7 x i8] undef }>, align 8
@317 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"L\00\00\00\00\00\00\00\DC\00\00\00$\00\00\00" }>, align 8
@switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns = private unnamed_addr constant [6 x i8] c"\05\0C\0B\0B\04\0E", align 8
@switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns.26 = private unnamed_addr constant [6 x ptr] [ptr @293, ptr @294, ptr @295, ptr @296, ptr @297, ptr @298], align 8

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrEECs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs6sOsJPswu84_11libp2p_mdns.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = ptrtoint ptr %.val to i64                ; 2 uses
  %i.e = and i64 %i.d, 3
  switch i64 %i.e, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6sOsJPswu84_11libp2p_mdns.exit.i
    i64 3, label %bb.c
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6sOsJPswu84_11libp2p_mdns.exit.i
    i64 1, label %bb.d
  ], !prof !5

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.g = and i64 %i.d, 1095216660480
  %i.h = icmp ne i64 %i.g, 1095216660480
  tail call void @llvm.assume(i1 %i.f)
  tail call void @llvm.assume(i1 %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6sOsJPswu84_11libp2p_mdns.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !6
  store i8 3, ptr %i.a, align 8, !alias.scope !6
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6sOsJPswu84_11libp2p_mdns.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6sOsJPswu84_11libp2p_mdns.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs6sOsJPswu84_11libp2p_mdns.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs6sOsJPswu84_11libp2p_mdns.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6sOsJPswu84_11libp2p_mdns.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6sOsJPswu84_11libp2p_mdns(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs6sOsJPswu84_11libp2p_mdns.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs6sOsJPswu84_11libp2p_mdns.exit
    i64 1, label %bb.c
  ], !prof !5

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs6sOsJPswu84_11libp2p_mdns.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !9
  store i8 3, ptr %i.a, align 8, !alias.scope !9
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs6sOsJPswu84_11libp2p_mdns.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs6sOsJPswu84_11libp2p_mdns.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs6sOsJPswu84_11libp2p_mdns(i64 noundef %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
_RNvNtNtCskKLDkoKarTP_4core5slice5index16into_slice_range.exit:
  %i.a = insertvalue { i64, i64 } { i64 0, i64 poison }, i64 %0, 1
  ret { i64, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENCNvMs5_NtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface5queryNtB2Q_8MdnsPeer3new0ENCB2K_s_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvMsg_NtB8_7flattenINtB57_13FlattenCompatppE13iter_try_fold7flattenIB1s_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEEuINtNtNtBc_3ops12control_flow11ControlFlowNtCsbli3iz7XG76_9multiaddr9MultiaddrENCINvNvXsi_B57_B5k_B4e_8try_fold7flattenB66_uB6P_NCINvNvB4e_8find_map5checkRB6b_B7u_QNCB2K_s0_0E0E0E0B6P_EB2W_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !22, !noalias !25, !nonnull !4, !noundef !4 ; 2 uses
  %.promoted.i.i = load ptr, ptr %1, align 8, !alias.scope !22, !noalias !25 ; 2 uses
  %i.e = icmp eq ptr %.promoted.i.i, %i.d
  br i1 %i.e, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENCNvMs5_NtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface5queryNtB2A_8MdnsPeer3new0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldRNtNtNtB1F_5rdata3txt3TXTIB1c_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEEuINtNtNtBc_3ops12control_flow11ControlFlowNtCsbli3iz7XG76_9multiaddr9MultiaddrENCB2u_s_0NCINvNvMsg_NtB8_7flattenINtB7G_13FlattenCompatppE13iter_try_fold7flattenB5n_uB66_NCINvNvXsi_B7G_B7T_B3O_8try_fold7flattenB5n_uB66_NCINvNvB3O_8find_map5checkRB5s_B6L_QNCB2u_s0_0E0E0E0E0B66_EB2G_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !15, !noalias !28, !nonnull !4, !align !33, !noundef !4
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordRNtNtNtB1j_5rdata3txt3TXTuINtNtNtBa_3ops12control_flow11ControlFlowNtCsbli3iz7XG76_9multiaddr9MultiaddrENCNvMs5_NtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface5queryNtB3T_8MdnsPeer3new0NCINvNtB6_3map12map_try_foldB25_INtNtNtBa_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEEuB2v_NCB3N_s_0NCINvNvMsg_NtB6_7flattenINtB74_13FlattenCompatppE13iter_try_fold7flattenB5C_uB2v_NCINvNvXsi_B74_B7h_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB5C_uB2v_NCINvNvB8v_8find_map5checkRB62_B3a_QNCB3N_s0_0E0E0E0E0E0B3Z_.exit.thread.i.i, %.lr.ph.i.i
  %i.h = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordRNtNtNtB1j_5rdata3txt3TXTuINtNtNtBa_3ops12control_flow11ControlFlowNtCsbli3iz7XG76_9multiaddr9MultiaddrENCNvMs5_NtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface5queryNtB3T_8MdnsPeer3new0NCINvNtB6_3map12map_try_foldB25_INtNtNtBa_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEEuB2v_NCB3N_s_0NCINvNvMsg_NtB6_7flattenINtB74_13FlattenCompatppE13iter_try_fold7flattenB5C_uB2v_NCINvNvXsi_B74_B7h_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB5C_uB2v_NCINvNvB8v_8find_map5checkRB62_B3a_QNCB3N_s0_0E0E0E0E0E0B3Z_.exit.thread.i.i ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 280 ; 3 uses
  store ptr %i.i, ptr %1, align 8, !alias.scope !22, !noalias !25
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.j = load ptr, ptr %.val.i.i.i, align 8, !noalias !38, !nonnull !4, !align !33, !noundef !4
  %i.k = call noundef zeroext i1 @_RNvXs9_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.j), !noalias !39
  br i1 %i.k, label %bb.c, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordRNtNtNtB1j_5rdata3txt3TXTuINtNtNtBa_3ops12control_flow11ControlFlowNtCsbli3iz7XG76_9multiaddr9MultiaddrENCNvMs5_NtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface5queryNtB3T_8MdnsPeer3new0NCINvNtB6_3map12map_try_foldB25_INtNtNtBa_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEEuB2v_NCB3N_s_0NCINvNvMsg_NtB6_7flattenINtB74_13FlattenCompatppE13iter_try_fold7flattenB5C_uB2v_NCINvNvXsi_B74_B7h_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB5C_uB2v_NCINvNvB8v_8find_map5checkRB62_B3a_QNCB3N_s0_0E0E0E0E0E0B3Z_.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.m = load i16, ptr %i.l, align 8, !range !40, !alias.scope !41, !noalias !39, !noundef !4 ; 2 uses
  %i.n = icmp ne i16 %i.m, 19
  call void @llvm.assume(i1 %i.n)
  %i.o = icmp eq i16 %i.m, 25
  br i1 %i.o, label %_RNCNvMs5_NtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface5queryNtB7_8MdnsPeer3new0Bd_.exit.i.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordRNtNtNtB1j_5rdata3txt3TXTuINtNtNtBa_3ops12control_flow11ControlFlowNtCsbli3iz7XG76_9multiaddr9MultiaddrENCNvMs5_NtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface5queryNtB3T_8MdnsPeer3new0NCINvNtB6_3map12map_try_foldB25_INtNtNtBa_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEEuB2v_NCB3N_s_0NCINvNvMsg_NtB6_7flattenINtB74_13FlattenCompatppE13iter_try_fold7flattenB5C_uB2v_NCINvNvXsi_B74_B7h_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB5C_uB2v_NCINvNvB8v_8find_map5checkRB62_B3a_QNCB3N_s0_0E0E0E0E0E0B3Z_.exit.thread.i.i

_RNCNvMs5_NtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface5queryNtB7_8MdnsPeer3new0Bd_.exit.i.i.i: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %.val5.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !34, !noalias !39, !nonnull !4, !noundef !4 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %.val6.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !34, !noalias !39, !noundef !4 ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %.val6.i.i.i, 4
  %i.r = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 %.idx.i.i.i.i ; 2 uses
  store ptr %.val5.i.i.i, ptr %3, align 8, !alias.scope !42, !noalias !45
  store ptr %i.r, ptr %i.g, align 8, !alias.scope !42, !noalias !45
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !56
  store ptr %2, ptr %i.b, align 8, !noalias !59
  %i.s = icmp eq i64 %.val6.i.i.i, 0
  br i1 %i.s, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordRNtNtNtB1j_5rdata3txt3TXTuINtNtNtBa_3ops12control_flow11ControlFlowNtCsbli3iz7XG76_9multiaddr9MultiaddrENCNvMs5_NtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface5queryNtB3T_8MdnsPeer3new0NCINvNtB6_3map12map_try_foldB25_INtNtNtBa_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEEuB2v_NCB3N_s_0NCINvNvMsg_NtB6_7flattenINtB74_13FlattenCompatppE13iter_try_fold7flattenB5C_uB2v_NCINvNvXsi_B74_B7h_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB5C_uB2v_NCINvNvB8v_8find_map5checkRB62_B3a_QNCB3N_s0_0E0E0E0E0E0B3Z_.exit.thread13.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNCNvMs5_NtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface5queryNtB7_8MdnsPeer3new0Bd_.exit.i.i.i, %bb.d
  %i.t = phi ptr [ %i.u, %bb.d ], [ %.val5.i.i.i, %_RNCNvMs5_NtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface5queryNtB7_8MdnsPeer3new0Bd_.exit.i.i.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  store ptr %i.u, ptr %3, align 8, !alias.scope !62, !noalias !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !59
  call void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8find_map5checkRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShENtCsbli3iz7XG76_9multiaddr9MultiaddrQNCNvMs5_NtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface5queryNtB3b_8MdnsPeer3news0_0E0INtB7_5FnMutTuB1P_EE8call_mutB3h_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.t), !noalias !66
  %i.v = load ptr, ptr %i.a, align 8, !alias.scope !67, !noalias !70, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !59
  %i.w = icmp eq ptr %i.u, %i.r
  br i1 %i.w, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordRNtNtNtB1j_5rdata3txt3TXTuINtNtNtBa_3ops12control_flow11ControlFlowNtCsbli3iz7XG76_9multiaddr9MultiaddrENCNvMs5_NtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface5queryNtB3T_8MdnsPeer3new0NCINvNtB6_3map12map_try_foldB25_INtNtNtBa_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEEuB2v_NCB3N_s_0NCINvNvMsg_NtB6_7flattenINtB74_13FlattenCompatppE13iter_try_fold7flattenB5C_uB2v_NCINvNvXsi_B74_B7h_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB5C_uB2v_NCINvNvB8v_8find_map5checkRB62_B3a_QNCB3N_s0_0E0E0E0E0E0B3Z_.exit.thread13.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordRNtNtNtB1j_5rdata3txt3TXTuINtNtNtBa_3ops12control_flow11ControlFlowNtCsbli3iz7XG76_9multiaddr9MultiaddrENCNvMs5_NtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface5queryNtB3T_8MdnsPeer3new0NCINvNtB6_3map12map_try_foldB25_INtNtNtBa_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEEuB2v_NCB3N_s_0NCINvNvMsg_NtB6_7flattenINtB74_13FlattenCompatppE13iter_try_fold7flattenB5C_uB2v_NCINvNvXsi_B74_B7h_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB5C_uB2v_NCINvNvB8v_8find_map5checkRB62_B3a_QNCB3N_s0_0E0E0E0E0E0B3Z_.exit.thread13.i.i: ; preds = %bb.d, %_RNCNvMs5_NtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface5queryNtB7_8MdnsPeer3new0Bd_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !56
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordRNtNtNtB1j_5rdata3txt3TXTuINtNtNtBa_3ops12control_flow11ControlFlowNtCsbli3iz7XG76_9multiaddr9MultiaddrENCNvMs5_NtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface5queryNtB3T_8MdnsPeer3new0NCINvNtB6_3map12map_try_foldB25_INtNtNtBa_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEEuB2v_NCB3N_s_0NCINvNvMsg_NtB6_7flattenINtB74_13FlattenCompatppE13iter_try_fold7flattenB5C_uB2v_NCINvNvXsi_B74_B7h_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB5C_uB2v_NCINvNvB8v_8find_map5checkRB62_B3a_QNCB3N_s0_0E0E0E0E0E0B3Z_.exit.thread.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.sroa.7.0..sroa_idx5.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx5.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !56
  %4 = ptrtoint ptr %i.v to i64
  br label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENCNvMs5_NtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface5queryNtB2A_8MdnsPeer3new0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldRNtNtNtB1F_5rdata3txt3TXTIB1c_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEEuINtNtNtBc_3ops12control_flow11ControlFlowNtCsbli3iz7XG76_9multiaddr9MultiaddrENCB2u_s_0NCINvNvMsg_NtB8_7flattenINtB7G_13FlattenCompatppE13iter_try_fold7flattenB5n_uB66_NCINvNvXsi_B7G_B7T_B3O_8try_fold7flattenB5n_uB66_NCINvNvB3O_8find_map5checkRB5s_B6L_QNCB2u_s0_0E0E0E0E0B66_EB2G_.exit

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordRNtNtNtB1j_5rdata3txt3TXTuINtNtNtBa_3ops12control_flow11ControlFlowNtCsbli3iz7XG76_9multiaddr9MultiaddrENCNvMs5_NtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface5queryNtB3T_8MdnsPeer3new0NCINvNtB6_3map12map_try_foldB25_INtNtNtBa_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEEuB2v_NCB3N_s_0NCINvNvMsg_NtB6_7flattenINtB74_13FlattenCompatppE13iter_try_fold7flattenB5C_uB2v_NCINvNvXsi_B74_B7h_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB5C_uB2v_NCINvNvB8v_8find_map5checkRB62_B3a_QNCB3N_s0_0E0E0E0E0E0B3Z_.exit.thread.i.i: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordRNtNtNtB1j_5rdata3txt3TXTuINtNtNtBa_3ops12control_flow11ControlFlowNtCsbli3iz7XG76_9multiaddr9MultiaddrENCNvMs5_NtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface5queryNtB3T_8MdnsPeer3new0NCINvNtB6_3map12map_try_foldB25_INtNtNtBa_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEEuB2v_NCB3N_s_0NCINvNvMsg_NtB6_7flattenINtB74_13FlattenCompatppE13iter_try_fold7flattenB5C_uB2v_NCINvNvXsi_B74_B7h_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB5C_uB2v_NCINvNvB8v_8find_map5checkRB62_B3a_QNCB3N_s0_0E0E0E0E0E0B3Z_.exit.thread13.i.i, %bb.c, %bb.b
  %i.x = icmp eq ptr %i.i, %i.d
  br i1 %i.x, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENCNvMs5_NtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface5queryNtB2A_8MdnsPeer3new0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldRNtNtNtB1F_5rdata3txt3TXTIB1c_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEEuINtNtNtBc_3ops12control_flow11ControlFlowNtCsbli3iz7XG76_9multiaddr9MultiaddrENCB2u_s_0NCINvNvMsg_NtB8_7flattenINtB7G_13FlattenCompatppE13iter_try_fold7flattenB5n_uB66_NCINvNvXsi_B7G_B7T_B3O_8try_fold7flattenB5n_uB66_NCINvNvB3O_8find_map5checkRB5s_B6L_QNCB2u_s0_0E0E0E0E0B66_EB2G_.exit, label %bb.b

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENCNvMs5_NtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface5queryNtB2A_8MdnsPeer3new0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldRNtNtNtB1F_5rdata3txt3TXTIB1c_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEEuINtNtNtBc_3ops12control_flow11ControlFlowNtCsbli3iz7XG76_9multiaddr9MultiaddrENCB2u_s_0NCINvNvMsg_NtB8_7flattenINtB7G_13FlattenCompatppE13iter_try_fold7flattenB5n_uB66_NCINvNvXsi_B7G_B7T_B3O_8try_fold7flattenB5n_uB66_NCINvNvB3O_8find_map5checkRB5s_B6L_QNCB2u_s0_0E0E0E0E0B66_EB2G_.exit: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordRNtNtNtB1j_5rdata3txt3TXTuINtNtNtBa_3ops12control_flow11ControlFlowNtCsbli3iz7XG76_9multiaddr9MultiaddrENCNvMs5_NtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface5queryNtB3T_8MdnsPeer3new0NCINvNtB6_3map12map_try_foldB25_INtNtNtBa_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEEuB2v_NCB3N_s_0NCINvNvMsg_NtB6_7flattenINtB74_13FlattenCompatppE13iter_try_fold7flattenB5C_uB2v_NCINvNvXsi_B74_B7h_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB5C_uB2v_NCINvNvB8v_8find_map5checkRB62_B3a_QNCB3N_s0_0E0E0E0E0E0B3Z_.exit.thread.i.i, %bb.a, %bb.e
  %storemerge.i.i = phi i64 [ %4, %bb.e ], [ 0, %bb.a ], [ 0, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordRNtNtNtB1j_5rdata3txt3TXTuINtNtNtBa_3ops12control_flow11ControlFlowNtCsbli3iz7XG76_9multiaddr9MultiaddrENCNvMs5_NtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface5queryNtB3T_8MdnsPeer3new0NCINvNtB6_3map12map_try_foldB25_INtNtNtBa_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEEuB2v_NCB3N_s_0NCINvNvMsg_NtB6_7flattenINtB74_13FlattenCompatppE13iter_try_fold7flattenB5C_uB2v_NCINvNvXsi_B74_B7h_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB5C_uB2v_NCINvNvB8v_8find_map5checkRB62_B3a_QNCB3N_s0_0E0E0E0E0E0B3Z_.exit.thread.i.i ]
  store i64 %storemerge.i.i, ptr %0, align 8, !alias.scope !73, !noalias !72
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_4take4TakeINtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtB1k_5other12AlphanumericNtNtNtB1m_4rngs6thread9ThreadRnghEENvYcINtNtBc_7convert4FromhE4fromENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3D_8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB4Q_6StringINtNtB3H_7collect6ExtendcE6extendBN_E0E0ECs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !89, !noalias !90, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtB13_5other12AlphanumericNtNtNtB15_4rngs6thread9ThreadRnghEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvMNtNtBb_3ops9try_traitINtB3D_17NeverShortCircuituE10wrap_mut_2uhNCINvNtB7_3map8map_foldhcuNvYcINtNtBb_7convert4FromhE4fromNCINvNvB2P_8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB69_6StringINtNtB2T_7collect6ExtendcE6extendINtB4J_3MapBN_B54_EE0E0E0E0B3Y_ECs6sOsJPswu84_11libp2p_mdns.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkhuINtNtNtBf_3ops9try_trait17NeverShortCircuituENCINvMB1W_B1T_10wrap_mut_2uhNCINvNtBb_3map8map_foldhcuNvYcINtNtBf_7convert4FromhE4fromNCINvNvB14_8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB4z_6StringINtNtB18_7collect6ExtendcE6extendINtB39_3MapIBS_INtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtB66_5other12AlphanumericNtNtNtB68_4rngs6thread9ThreadRnghEEB3u_EE0E0E0E0E0Cs6sOsJPswu84_11libp2p_mdns.exit.i.i.i.i, %bb.b
  %i.h = phi i64 [ %i.j, %_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkhuINtNtNtBf_3ops9try_trait17NeverShortCircuituENCINvMB1W_B1T_10wrap_mut_2uhNCINvNtBb_3map8map_foldhcuNvYcINtNtBf_7convert4FromhE4fromNCINvNvB14_8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB4z_6StringINtNtB18_7collect6ExtendcE6extendINtB39_3MapIBS_INtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtB66_5other12AlphanumericNtNtNtB68_4rngs6thread9ThreadRnghEEB3u_EE0E0E0E0E0Cs6sOsJPswu84_11libp2p_mdns.exit.i.i.i.i ], [ %i.c, %bb.b ]
  %i.i = invoke noundef i8 @_RINvXNtNtCshhqnaxk4GqT_4rand5distr12distributionRNtNtB5_5other12AlphanumericINtB3_12DistributionhE6sampleNtNtNtB7_4rngs6thread9ThreadRngECs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc.i.i unwind label %bb.e ; 4 uses

.noexc.i.i:                                       ; preds = %bb.c
  %i.j = add i64 %i.h, -1                         ; 3 uses
  store i64 %i.j, ptr %i.b, align 8, !alias.scope !96, !noalias !97
  %i.k = load i64, ptr %i.f, align 8, !alias.scope !99, !noalias !102, !noundef !4 ; 3 uses
  %i.l = icmp sgt i64 %i.k, -1
  call void @llvm.assume(i1 %i.l)
  %i.m = icmp sgt i8 %i.i, -1                     ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = select i1 %i.m, i64 1, i64 2 ; 2 uses
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.sroa.0.0.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc1.i.i unwind label %bb.e

.noexc1.i.i:                                      ; preds = %.noexc.i.i
  %i.n = load ptr, ptr %i.g, align 8, !alias.scope !99, !noalias !102, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k ; 2 uses
  br i1 %i.m, label %_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkhuINtNtNtBf_3ops9try_trait17NeverShortCircuituENCINvMB1W_B1T_10wrap_mut_2uhNCINvNtBb_3map8map_foldhcuNvYcINtNtBf_7convert4FromhE4fromNCINvNvB14_8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB4z_6StringINtNtB18_7collect6ExtendcE6extendINtB39_3MapIBS_INtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtB66_5other12AlphanumericNtNtNtB68_4rngs6thread9ThreadRnghEEB3u_EE0E0E0E0E0Cs6sOsJPswu84_11libp2p_mdns.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.noexc1.i.i
  %i.p = and i8 %i.i, -65
  %i.q = lshr i8 %i.i, 6
  %i.r = or disjoint i8 %i.q, -64
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 %i.p, ptr %i.s, align 1, !noalias !91
  br label %_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkhuINtNtNtBf_3ops9try_trait17NeverShortCircuituENCINvMB1W_B1T_10wrap_mut_2uhNCINvNtBb_3map8map_foldhcuNvYcINtNtBf_7convert4FromhE4fromNCINvNvB14_8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB4z_6StringINtNtB18_7collect6ExtendcE6extendINtB39_3MapIBS_INtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtB66_5other12AlphanumericNtNtNtB68_4rngs6thread9ThreadRnghEEB3u_EE0E0E0E0E0Cs6sOsJPswu84_11libp2p_mdns.exit.i.i.i.i

_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkhuINtNtNtBf_3ops9try_trait17NeverShortCircuituENCINvMB1W_B1T_10wrap_mut_2uhNCINvNtBb_3map8map_foldhcuNvYcINtNtBf_7convert4FromhE4fromNCINvNvB14_8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB4z_6StringINtNtB18_7collect6ExtendcE6extendINtB39_3MapIBS_INtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtB66_5other12AlphanumericNtNtNtB68_4rngs6thread9ThreadRnghEEB3u_EE0E0E0E0E0Cs6sOsJPswu84_11libp2p_mdns.exit.i.i.i.i: ; preds = %bb.d, %.noexc1.i.i
  %.sink.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.r, %bb.d ], [ %i.i, %.noexc1.i.i ]
  store i8 %.sink.i.i.i.i.i.i.i.i.i.i, ptr %i.o, align 1, !noalias !91
  %i.t = add nuw i64 %i.k, %.sroa.0.0.i.i.i.i.i.i.i.i.i.i
  store i64 %i.t, ptr %i.f, align 8, !alias.scope !99, !noalias !102
  %i.u = icmp eq i64 %i.j, 0
  br i1 %i.u, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtB13_5other12AlphanumericNtNtNtB15_4rngs6thread9ThreadRnghEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvMNtNtBb_3ops9try_traitINtB3D_17NeverShortCircuituE10wrap_mut_2uhNCINvNtB7_3map8map_foldhcuNvYcINtNtBb_7convert4FromhE4fromNCINvNvB2P_8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB69_6StringINtNtB2T_7collect6ExtendcE6extendINtB4J_3MapBN_B54_EE0E0E0E0B3Y_ECs6sOsJPswu84_11libp2p_mdns.exit.i.i, label %bb.c

bb.e:                                             ; preds = %.noexc.i.i, %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.w = load ptr, ptr %i.e, align 8, !alias.scope !118, !noalias !119, !nonnull !4, !noundef !4 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !noalias !120, !noundef !4
  %i.y = add i64 %i.x, -1                         ; 2 uses
  store i64 %i.y, ptr %i.w, align 8, !noalias !120
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4take4TakeINtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtB1g_5other12AlphanumericNtNtNtB1i_4rngs6thread9ThreadRnghEEECs6sOsJPswu84_11libp2p_mdns.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #13
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4take4TakeINtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtB1g_5other12AlphanumericNtNtNtB1i_4rngs6thread9ThreadRnghEEECs6sOsJPswu84_11libp2p_mdns.exit.i.i unwind label %bb.h

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtB13_5other12AlphanumericNtNtNtB15_4rngs6thread9ThreadRnghEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvMNtNtBb_3ops9try_traitINtB3D_17NeverShortCircuituE10wrap_mut_2uhNCINvNtB7_3map8map_foldhcuNvYcINtNtBb_7convert4FromhE4fromNCINvNvB2P_8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB69_6StringINtNtB2T_7collect6ExtendcE6extendINtB4J_3MapBN_B54_EE0E0E0E0B3Y_ECs6sOsJPswu84_11libp2p_mdns.exit.i.i: ; preds = %_RNCINvNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkhuINtNtNtBf_3ops9try_trait17NeverShortCircuituENCINvMB1W_B1T_10wrap_mut_2uhNCINvNtBb_3map8map_foldhcuNvYcINtNtBf_7convert4FromhE4fromNCINvNvB14_8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB4z_6StringINtNtB18_7collect6ExtendcE6extendINtB39_3MapIBS_INtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtB66_5other12AlphanumericNtNtNtB68_4rngs6thread9ThreadRnghEEB3u_EE0E0E0E0E0Cs6sOsJPswu84_11libp2p_mdns.exit.i.i.i.i, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !136, !noalias !119, !nonnull !4, !noundef !4 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !137, !noundef !4
  %i.ad = add i64 %i.ac, -1                       ; 2 uses
  store i64 %i.ad, ptr %i.ab, align 8, !noalias !137
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtB13_5other12AlphanumericNtNtNtB15_4rngs6thread9ThreadRnghEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldhcuNvYcINtNtBb_7convert4FromhE4fromNCINvNvB2P_8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB4Y_6StringINtNtB2T_7collect6ExtendcE6extendINtB3y_3MapBN_B3T_EE0E0E0ECs6sOsJPswu84_11libp2p_mdns.exit

bb.g:                                             ; preds = %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtB13_5other12AlphanumericNtNtNtB15_4rngs6thread9ThreadRnghEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvMNtNtBb_3ops9try_traitINtB3D_17NeverShortCircuituE10wrap_mut_2uhNCINvNtB7_3map8map_foldhcuNvYcINtNtBb_7convert4FromhE4fromNCINvNvB2P_8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB69_6StringINtNtB2T_7collect6ExtendcE6extendINtB4J_3MapBN_B54_EE0E0E0E0B3Y_ECs6sOsJPswu84_11libp2p_mdns.exit.i.i
  call void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa) #13
  br label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtB13_5other12AlphanumericNtNtNtB15_4rngs6thread9ThreadRnghEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldhcuNvYcINtNtBb_7convert4FromhE4fromNCINvNvB2P_8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB4Y_6StringINtNtB2T_7collect6ExtendcE6extendINtB3y_3MapBN_B3T_EE0E0E0ECs6sOsJPswu84_11libp2p_mdns.exit

bb.h:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4take4TakeINtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtB1g_5other12AlphanumericNtNtNtB1i_4rngs6thread9ThreadRnghEEECs6sOsJPswu84_11libp2p_mdns.exit.i.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.v

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtB13_5other12AlphanumericNtNtNtB15_4rngs6thread9ThreadRnghEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldhcuNvYcINtNtBb_7convert4FromhE4fromNCINvNvB2P_8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB4Y_6StringINtNtB2T_7collect6ExtendcE6extendINtB3y_3MapBN_B3T_EE0E0E0ECs6sOsJPswu84_11libp2p_mdns.exit: ; preds = %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB5_4TakeINtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtB13_5other12AlphanumericNtNtNtB15_4rngs6thread9ThreadRnghEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvMNtNtBb_3ops9try_traitINtB3D_17NeverShortCircuituE10wrap_mut_2uhNCINvNtB7_3map8map_foldhcuNvYcINtNtBb_7convert4FromhE4fromNCINvNvB2P_8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB69_6StringINtNtB2T_7collect6ExtendcE6extendINtB4J_3MapBN_B54_EE0E0E0E0B3Y_ECs6sOsJPswu84_11libp2p_mdns.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = tail call fastcc noundef ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs6sOsJPswu84_11libp2p_mdns.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6sOsJPswu84_11libp2p_mdns.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6sOsJPswu84_11libp2p_mdns.exit.i
    i64 1, label %bb.e
  ], !prof !5

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.j)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6sOsJPswu84_11libp2p_mdns.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !138
  store i8 3, ptr %i.a, align 8, !alias.scope !138
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6sOsJPswu84_11libp2p_mdns.exit.i unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6sOsJPswu84_11libp2p_mdns.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs6sOsJPswu84_11libp2p_mdns.exit

bb.f:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs6sOsJPswu84_11libp2p_mdns.exit
  ret i1 %.not

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  store ptr %i.c, ptr %i.d, align 8
  resume { ptr, i32 } %i.m

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs6sOsJPswu84_11libp2p_mdns.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6sOsJPswu84_11libp2p_mdns.exit.i, %bb.b
  store ptr %i.c, ptr %i.d, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCsl9hx9jpF0W9_12futures_util6stream10try_stream11into_streamINtB5_10IntoStreamINtB7_5MapOkINtNtNtBb_6future6either6EitherINtNtB7_10try_filter9TryFilterINtNtNtB9_6stream3map3MapINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc17UnboundedReceiverINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEENCNvMNtNtCsg1Z0Dwl4khT_9rtnetlink4addr3getNtB6f_17AddressGetRequest7execute0EINtNtB1I_5ready5ReadybENCB6c_s_0EINtNtB1I_6future10IntoStreamIB7q_INtNtCskKLDkoKarTP_4core6result6ResultNtNtNtB55_7address7message14AddressMessageNtNtB6j_6errors5ErrorEEEENcNtB51_10NewAddress0EENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9size_hintCs6sOsJPswu84_11libp2p_mdns(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs1_NtNtNtCsl9hx9jpF0W9_12futures_util6stream6stream3mapINtB5_3MapINtNtNtB9_10try_stream11into_stream10IntoStreamINtNtNtBb_6future6either6EitherINtNtB1a_10try_filter9TryFilterIBW_INtNtCsgV0iE8Xkxiy_15futures_channel4mpsc17UnboundedReceiverINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEENCNvMNtNtCsg1Z0Dwl4khT_9rtnetlink4addr3getNtB68_17AddressGetRequest7execute0EINtNtB1V_5ready5ReadybENCB65_s_0EINtNtB1V_6future10IntoStreamIB7j_INtNtCskKLDkoKarTP_4core6result6ResultNtNtNtB4Y_7address7message14AddressMessageNtNtB6c_6errors5ErrorEEEEEINtNtBb_3fns7MapOkFnNcNtB4U_10NewAddress0EENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9size_hintCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCsl9hx9jpF0W9_12futures_util6stream10try_stream11into_streamINtB5_10IntoStreamINtNtNtBb_6future6either6EitherINtNtB7_10try_filter9TryFilterINtNtNtB9_6stream3map3MapINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc17UnboundedReceiverINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEENCNvMNtNtCsg1Z0Dwl4khT_9rtnetlink4addr3getNtB63_17AddressGetRequest7execute0EINtNtB1w_5ready5ReadybENCB60_s_0EINtNtB1w_6future10IntoStreamIB7e_INtNtCskKLDkoKarTP_4core6result6ResultNtNtNtB4T_7address7message14AddressMessageNtNtB67_6errors5ErrorEEEEENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9size_hintCs6sOsJPswu84_11libp2p_mdns(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs4_NtNtCsl9hx9jpF0W9_12futures_util6future6eitherINtB5_6EitherINtNtNtNtB9_6stream10try_stream10try_filter9TryFilterINtNtNtB19_6stream3map3MapINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc17UnboundedReceiverINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEENCNvMNtNtCsg1Z0Dwl4khT_9rtnetlink4addr3getNtB5x_17AddressGetRequest7execute0EINtNtB7_5ready5ReadybENCB5u_s_0EINtNtB7_6future10IntoStreamIB6I_INtNtCskKLDkoKarTP_4core6result6ResultNtNtNtB4n_7address7message14AddressMessageNtNtB5B_6errors5ErrorEEEENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9size_hintCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsgUwh0qa7Dto_19netlink_packet_core7payload14NetlinkPayloadNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageENtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
end_hunk_0

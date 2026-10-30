Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/autonatv2_client.autonatv2_client.d4707b358e500bd8-cgu.13?download=true
inline.NumInlined: 1189
inline.NumDeleted: 729
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr5rdata4svcb11SvcParamKeyINtNtNtBa_5slice4iter4IterB14_EECsieOd0lErO6i_16autonatv2_client:bb.a
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !16
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @82) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route2tc7filters6flower4mpls24TcFilterFlowerMplsOptionINtNtNtBa_5slice4iter4IterB14_EECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !16
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @83) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route2tc7filters6flower4mpls27TcFilterFlowerMplsLseOptionINtNtNtBa_5slice4iter4IterB14_EECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !16
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @84) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info3gre8info_gre7InfoGreINtNtNtBa_5slice4iter4IterB14_EECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !16
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @85) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info3gre9info_gre68InfoGre6INtNtNtBa_5slice4iter4IterB14_EECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !16
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @86) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRTNtCsbli3iz7XG76_9multiaddr9MultiaddrINtNtCsdTHTBGblh3Z_11libp2p_core9transport14TransportErrorNtNtNtBa_2io5error5ErrorEEINtNtNtBa_5slice4iter4IterB14_EECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @87) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRTNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr5rdata3opt8EdnsCodeNtB17_10EdnsOptionEINtNtNtBa_5slice4iter4IterB14_EECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !16
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRTNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr5rdata4svcb11SvcParamKeyNtB17_13SvcParamValueEINtNtNtBa_5slice4iter4IterB14_EECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !16
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.05, ptr %i.a, align 8, !captures !16
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @90) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6Recordj1_ECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4name4NameECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordECsieOd0lErO6i_16autonatv2_client.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_data5RDataECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(184) %i.b) #27
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordECsieOd0lErO6i_16autonatv2_client.exit: ; preds = %bb.a
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_data5RDataECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(184) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_IBC_NtNtNtB4_2io5error5ErrorINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB1D_B1e_EENtCs5xzCmWPONXx_11libp2p_quic5ErrorEECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = load i8, ptr %0, align 8, !range !134, !noundef !8 ; 4 uses
  %.not = icmp eq i8 %i.f, -4
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %.not.i = icmp eq i8 %i.f, -3
  br i1 %.not.i, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.g = icmp eq i8 %i.f, -2
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %.val.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !138, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !138
  %i.i = ptrtoint ptr %.val.i.i.i to i64          ; 2 uses
  %i.j = and i64 %i.i, 3
  switch i64 %i.j, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsieOd0lErO6i_16autonatv2_client.exit.i.i
    i64 3, label %bb.e
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsieOd0lErO6i_16autonatv2_client.exit.i.i
    i64 1, label %bb.f
  ], !prof !14

default.unreachable:                              ; preds = %bb.af, %bb.r, %bb.o, %bb.j, %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.k = icmp ult ptr %.val.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.l = and i64 %i.i, 1095216660480
  %i.m = icmp ne i64 %i.l, 1095216660480
  tail call void @llvm.assume(i1 %i.k)
  tail call void @llvm.assume(i1 %i.m)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsieOd0lErO6i_16autonatv2_client.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %.val.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !alias.scope !139, !noalias !138
  store i8 3, ptr %i.e, align 8, !alias.scope !139, !noalias !138
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o), !noalias !138
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsieOd0lErO6i_16autonatv2_client.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsieOd0lErO6i_16autonatv2_client.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !138
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_NtNtNtB4_2io5error5ErrorINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB1z_B1a_EEECsieOd0lErO6i_16autonatv2_client.exit

bb.g:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.p = icmp eq i8 %i.f, -1
  br i1 %i.p, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.r = load i64, ptr %i.q, align 8, !range !17, !alias.scope !142, !noundef !8 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.r, -1
  br i1 %.not.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_NtNtNtB4_2io5error5ErrorINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB1z_B1a_EEECsieOd0lErO6i_16autonatv2_client.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_NtNtNtB4_2io5error5ErrorINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB1z_B1a_EEECsieOd0lErO6i_16autonatv2_client.exit

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !145, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !145
  %i.u = ptrtoint ptr %.val.i.i.i.i.i.i to i64    ; 2 uses
  %i.v = and i64 %i.u, 3
  switch i64 %i.v, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsieOd0lErO6i_16autonatv2_client.exit.i.i.i.i.i
    i64 3, label %bb.k
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsieOd0lErO6i_16autonatv2_client.exit.i.i.i.i.i
    i64 1, label %bb.l
  ], !prof !14

bb.k:                                             ; preds = %bb.j
  %i.w = icmp ult ptr %.val.i.i.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.x = and i64 %i.u, 1095216660480
  %i.y = icmp ne i64 %i.x, 1095216660480
  tail call void @llvm.assume(i1 %i.w)
  tail call void @llvm.assume(i1 %i.y)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsieOd0lErO6i_16autonatv2_client.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.z = getelementptr i8, ptr %.val.i.i.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !alias.scope !146, !noalias !145
  store i8 3, ptr %i.d, align 8, !alias.scope !146, !noalias !145
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa), !noalias !145
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsieOd0lErO6i_16autonatv2_client.exit.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsieOd0lErO6i_16autonatv2_client.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !145
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_NtNtNtB4_2io5error5ErrorINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB1z_B1a_EEECsieOd0lErO6i_16autonatv2_client.exit

bb.m:                                             ; preds = %bb.g
  tail call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCshuexzQAPOo_12libp2p_noise5ErrorECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_NtNtNtB4_2io5error5ErrorINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB1z_B1a_EEECsieOd0lErO6i_16autonatv2_client.exit

bb.n:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.ab, align 8, !range !18, !alias.scope !135, !noundef !8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.ac, align 8, !alias.scope !135 ; 8 uses
  switch i64 %.val.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_NtNtNtB4_2io5error5ErrorINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB1z_B1a_EEECsieOd0lErO6i_16autonatv2_client.exit [
    i64 -2, label %bb.r
    i64 0, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !147
  %i.ad = ptrtoint ptr %.val1.i to i64            ; 2 uses
  %i.ae = and i64 %i.ad, 3
  switch i64 %i.ae, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsieOd0lErO6i_16autonatv2_client.exit.i.i.i.i
    i64 3, label %bb.p
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsieOd0lErO6i_16autonatv2_client.exit.i.i.i.i
    i64 1, label %bb.q
  ], !prof !14

bb.p:                                             ; preds = %bb.o
  %i.af = icmp ult ptr %.val1.i, inttoptr (i64 188978561024 to ptr)
  %i.ag = and i64 %i.ad, 1095216660480
  %i.ah = icmp ne i64 %i.ag, 1095216660480
  tail call void @llvm.assume(i1 %i.af)
  tail call void @llvm.assume(i1 %i.ah)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsieOd0lErO6i_16autonatv2_client.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.ai = getelementptr i8, ptr %.val1.i, i64 -1  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !alias.scope !148, !noalias !147
  store i8 3, ptr %i.c, align 8, !alias.scope !148, !noalias !147
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aj), !noalias !147
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsieOd0lErO6i_16autonatv2_client.exit.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsieOd0lErO6i_16autonatv2_client.exit.i.i.i.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !147
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_NtNtNtB4_2io5error5ErrorINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB1z_B1a_EEECsieOd0lErO6i_16autonatv2_client.exit

bb.r:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !149
  %i.ak = ptrtoint ptr %.val1.i to i64            ; 2 uses
  %i.al = and i64 %i.ak, 3
  switch i64 %i.al, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsieOd0lErO6i_16autonatv2_client.exit.i3.i
    i64 3, label %bb.s
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsieOd0lErO6i_16autonatv2_client.exit.i3.i
    i64 1, label %bb.t
  ], !prof !14

bb.s:                                             ; preds = %bb.r
  %i.am = icmp ult ptr %.val1.i, inttoptr (i64 188978561024 to ptr)
  %i.an = and i64 %i.ak, 1095216660480
  %i.ao = icmp ne i64 %i.an, 1095216660480
  tail call void @llvm.assume(i1 %i.am)
  tail call void @llvm.assume(i1 %i.ao)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsieOd0lErO6i_16autonatv2_client.exit.i3.i

bb.t:                                             ; preds = %bb.r
  %i.ap = getelementptr i8, ptr %.val1.i, i64 -1  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8, !alias.scope !150, !noalias !149
  store i8 3, ptr %i.b, align 8, !alias.scope !150, !noalias !149
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aq), !noalias !149
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsieOd0lErO6i_16autonatv2_client.exit.i3.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsieOd0lErO6i_16autonatv2_client.exit.i3.i: ; preds = %bb.t, %bb.s, %bb.r, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !149
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCscu2bAJ62uie_6either6EitherIBC_NtNtNtB4_2io5error5ErrorINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5error12UpgradeErrorNtCshuexzQAPOo_12libp2p_noise5ErrorEEIB1z_B1a_EEECsieOd0lErO6i_16autonatv2_client.exit

bb.u:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %i.as = load i64, ptr %i.ar, align 8, !range !152, !alias.scope !151, !noundef !8 ; 6 uses
  %i.at = icmp ne i64 %i.as, 11
  tail call void @llvm.assume(i1 %i.at)
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterTReNtNtCsbVDXp34Q3tF_18multistream_select8protocol8ProtocolEENCNvXNtB1O_15listener_selectINtB2L_20ListenerSelectFutureNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamB1I_ENtNtNtBa_6future6future6Future4poll0EENtNtNtB8_6traits8iterator8Iterator9size_hintCsieOd0lErO6i_16autonatv2_client:bb.a
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !1439
  ret void
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef ptr @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEENtNtNtB8_6traits8iterator8Iterator4nextCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1442, !nonnull !8, !noundef !8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1442, !nonnull !8, !noundef !8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsieOd0lErO6i_16autonatv2_client.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %0, align 8, !alias.scope !1442
  %.val = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.f = atomicrmw add ptr %.val, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsieOd0lErO6i_16autonatv2_client.exit

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsieOd0lErO6i_16autonatv2_client.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %.val, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsieOd0lErO6i_16autonatv2_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !1445
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !1445
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !1445
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordEENtNtNtB8_6traits8iterator8Iterator4nextCsieOd0lErO6i_16autonatv2_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([280 x i8]) align 8 captures(none) dereferenceable(280) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !alias.scope !1448, !nonnull !8, !noundef !8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1448, !nonnull !8, !noundef !8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store ptr %i.e, ptr %1, align 8, !alias.scope !1448
  tail call fastcc void @_RNvXsd_NtNtCsbTgMbcnmcyu_13hickory_proto2rr6recordNtB5_6RecordNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 captures(none) dereferenceable(280) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(280) %i.a) #32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i16 2, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !1453, !nonnull !8, !noundef !8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1453, !nonnull !8, !noundef !8
  %i.d = icmp ne ptr %i.a, %i.c                   ; 2 uses
  br i1 %i.d, label %bb.b, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsieOd0lErO6i_16autonatv2_client.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.e, ptr %0, align 8, !alias.scope !1453
  %i.f = load i8, ptr %i.a, align 1, !alias.scope !1454, !noundef !8
  br label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsieOd0lErO6i_16autonatv2_client.exit

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsieOd0lErO6i_16autonatv2_client.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i8 [ %i.f, %bb.b ], [ undef, %bb.a ]
  %i.g = insertvalue { i1, i8 } poison, i1 %i.d, 0
  %i.h = insertvalue { i1, i8 } %i.g, i8 %.sroa.3.0, 1
  ret { i1, i8 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB1U_4pool21EstablishedConnectionINtCscu2bAJ62uie_6either6EitherIB3q_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v28protocol11DialRequestzENtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEEEENtNtNtB8_6traits8iterator8Iterator4nextCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtBM_4pool21EstablishedConnectionINtCscu2bAJ62uie_6either6EitherIB2h_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v28protocol11DialRequestzENtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %i.b, align 8, !noundef !8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %.val, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.c = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.d = insertvalue { i64, i64 } %i.c, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB1U_4pool21EstablishedConnectionINtCscu2bAJ62uie_6either6EitherIB3q_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v28protocol11DialRequestzENtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsieOd0lErO6i_16autonatv2_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.a, align 8, !noundef !8 ; 2 uses
  store i64 %.val, ptr %0, align 8, !alias.scope !1457
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8, !alias.scope !1457
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val, ptr %i.c, align 8, !alias.scope !1457
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB1U_4pool21EstablishedConnectionINtCscu2bAJ62uie_6either6EitherIB3q_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v28protocol11DialRequestzENtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEEEENtNtNtB8_6traits8iterator8Iterator4nextCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtBM_4pool21EstablishedConnectionINtCscu2bAJ62uie_6either6EitherIB2h_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v28protocol11DialRequestzENtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.b, align 8, !noundef !8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.c, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.d = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.e = insertvalue { i64, i64 } %i.d, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB1U_4pool21EstablishedConnectionINtCscu2bAJ62uie_6either6EitherIB3q_NtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v28protocol11DialRequestzENtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsieOd0lErO6i_16autonatv2_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.a, align 8, !noundef !8 ; 2 uses
  store i64 %.val, ptr %0, align 8, !alias.scope !1460
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8, !alias.scope !1460
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val, ptr %i.c, align 8, !alias.scope !1460
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordEj1_NtB4_11PartialDrop12partial_dropCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(280) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, %1
  br i1 %i.a, label %_RNvXNtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENtB2_11PartialDrop12partial_dropCsieOd0lErO6i_16autonatv2_client.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1                       ; 3 uses
  %i.c = getelementptr inbounds nuw [280 x i8], ptr %0, i64 %1 ; 2 uses
  br label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordECsieOd0lErO6i_16autonatv2_client.exit.i.i: ; preds = %bb.d
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RNvXNtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENtB2_11PartialDrop12partial_dropCsieOd0lErO6i_16autonatv2_client.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordECsieOd0lErO6i_16autonatv2_client.exit.i.i
  %.sroa.0.0.i.i15 = phi i64 [ 0, %.lr.ph ], [ %i.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordECsieOd0lErO6i_16autonatv2_client.exit.i.i ] ; 2 uses
  %i.e = getelementptr inbounds nuw [280 x i8], ptr %i.c, i64 %.sroa.0.0.i.i15 ; 3 uses
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i15, 1      ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4name4NameECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %i.e)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_data5RDataECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(184) %i.h) #27
          to label %.body.i.i unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_data5RDataECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(184) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordECsieOd0lErO6i_16autonatv2_client.exit.i.i unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.f:                                             ; preds = %.lr.ph17
  %i.k = add nuw nsw i64 %.sroa.0.1.i.i16, 1      ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.b
  br i1 %i.l, label %._crit_edge, label %.lr.ph17

bb.g:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.g, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.g, %bb.c ]
  %i.n = icmp eq i64 %i.f, %i.b
  br i1 %i.n, label %._crit_edge, label %.lr.ph17

.lr.ph17:                                         ; preds = %.body.i.i, %bb.f
  %.sroa.0.1.i.i16 = phi i64 [ %i.k, %bb.f ], [ %i.f, %.body.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [280 x i8], ptr %i.c, i64 %.sroa.0.1.i.i16
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(280) %i.o) #27
          to label %bb.f unwind label %bb.h

._crit_edge:                                      ; preds = %bb.f, %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

bb.h:                                             ; preds = %.lr.ph17
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RNvXNtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENtB2_11PartialDrop12partial_dropCsieOd0lErO6i_16autonatv2_client.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordECsieOd0lErO6i_16autonatv2_client.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitTNtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocolINtNtB1z_12dns_exchange11DnsExchangeNtNtNtB1B_7runtime13tokio_runtime20TokioRuntimeProviderEEEj0_NtB4_11PartialDrop12partial_dropCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, %1
  br i1 %i.a, label %_RNvXNtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitTNtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocolINtNtB1x_12dns_exchange11DnsExchangeNtNtNtB1z_7runtime13tokio_runtime20TokioRuntimeProviderEEENtB2_11PartialDrop12partial_dropCsieOd0lErO6i_16autonatv2_client.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1                       ; 3 uses
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RNvXNtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitTNtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocolINtNtB1x_12dns_exchange11DnsExchangeNtNtNtB1z_7runtime13tokio_runtime20TokioRuntimeProviderEEENtB2_11PartialDrop12partial_dropCsieOd0lErO6i_16autonatv2_client.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.i.i3 = phi i64 [ 0, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %.sroa.0.0.i.i3
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i3, 1       ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocolINtNtBE_12dns_exchange11DnsExchangeNtNtNtBG_7runtime13tokio_runtime20TokioRuntimeProviderEEECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e)
          to label %bb.b unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph5
  %i.g = add nuw nsw i64 %.sroa.0.1.i.i4, 1       ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.b
  br i1 %i.h, label %._crit_edge, label %.lr.ph5

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.b
  br i1 %i.j, label %._crit_edge, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i4 = phi i64 [ %i.g, %bb.d ], [ %i.f, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %.sroa.0.1.i.i4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocolINtNtBE_12dns_exchange11DnsExchangeNtNtNtBG_7runtime13tokio_runtime20TokioRuntimeProviderEEECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k) #27
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.i

bb.f:                                             ; preds = %.lr.ph5
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RNvXNtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitTNtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocolINtNtB1x_12dns_exchange11DnsExchangeNtNtNtB1z_7runtime13tokio_runtime20TokioRuntimeProviderEEENtB2_11PartialDrop12partial_dropCsieOd0lErO6i_16autonatv2_client.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsa_NtCsbVDXp34Q3tF_18multistream_select10negotiatedNtB5_16NegotiationErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !17, !noundef !8
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @358, i64 noundef 6)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @357, i64 noundef 13, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @356)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtNtCsbTgMbcnmcyu_13hickory_proto2op11dns_requestNtB5_10DnsRequestNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(280) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.sroa.4.i = alloca [28 x i8], align 4   ; 3 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.5.sroa.0.sroa.0 = alloca [38 x i8], align 2 ; 4 uses
  %i.c = alloca [152 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvXs4_NtNtCsbTgMbcnmcyu_13hickory_proto2op7messageNtB5_7MessageNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(152) %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %1) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.0.sroa.0)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.e = load i16, ptr %i.d, align 8, !range !22, !noundef !8 ; 2 uses
  %.not = icmp eq i16 %i.e, 2
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1464)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.g = load i8, ptr %i.f, align 8, !range !7, !alias.scope !1464, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1465
  %i.h = trunc nuw i16 %i.e to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %.noexc unwind label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 186
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 188
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !1466
  %i.m = load i16, ptr %i.k, align 2, !alias.scope !1464, !noundef !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i16 %i.m, ptr %i.n, align 2, !noalias !1465
  br label %.noexc

.noexc:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.0.copyload = phi i16 [ 0, %bb.d ], [ 1, %bb.c ] ; 2 uses
  store i16 %.sroa.0.0.copyload, ptr %i.b, align 8, !noalias !1465
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.p = load i16, ptr %i.o, align 8, !range !9, !alias.scope !1464, !noundef !8
  %i.q = trunc nuw i16 %i.p to i1
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1465
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r)
          to label %bb.h unwind label %bb.g, !noalias !1466

bb.f:                                             ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 226
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.5.sroa.4.i, ptr noundef nonnull readonly align 4 dereferenceable(24) %i.t, i64 24, i1 false)
  %i.u = load i16, ptr %i.s, align 2, !alias.scope !1464, !noundef !8
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs1oStim3y6Gv_7tinyvec7tinyvec7TinyVecAhj20_EECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(40) %i.b) #27
          to label %.body unwind label %bb.i, !noalias !1466

bb.h:                                             ; preds = %bb.e
  %.sroa.5.sroa.4.6..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.5.sroa.4.6..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1465
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !1466
  unreachable

bb.j:                                             ; preds = %bb.a, %bb.l
  %.sroa.5.sroa.0.sroa.7.0 = phi i8 [ undef, %bb.a ], [ %i.g, %bb.l ]
  %.sroa.5.sroa.0.sroa.5.0 = phi i16 [ undef, %bb.a ], [ %.sroa.5.sroa.0.0.i, %bb.l ]
  %.sroa.5.sroa.0.sroa.4.0 = phi i16 [ undef, %bb.a ], [ %.sroa.0.0.i, %bb.l ]
  %.sroa.5.sroa.8.0 = phi i8 [ undef, %bb.a ], [ %i.af, %bb.l ]
  %.sroa.0.0 = phi i16 [ 2, %bb.a ], [ %.sroa.0.0.copyload, %bb.l ]
  %i.x = phi <4 x i16> [ undef, %bb.a ], [ %i.ad, %bb.l ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %i.c, i64 152, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i16 %.sroa.0.0, ptr %i.aa, align 8
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
  store <4 x i16> %i.x, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i8 %.sroa.5.sroa.8.0, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.k:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.ab, %bb.k ], [ %i.v, %bb.g ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2op7message7MessageECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(152) %i.c) #27
          to label %bb.n unwind label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.f
  %.sroa.5.sroa.0.0.i = phi i16 [ undef, %bb.h ], [ %i.u, %bb.f ]
  %.sroa.0.0.i = phi i16 [ 1, %bb.h ], [ 0, %bb.f ]
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %.sroa.5.sroa.0.sroa.0, ptr noundef nonnull align 2 dereferenceable(38) %.sroa.48.0..sroa_idx, i64 38, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1465
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ad = load <4 x i16>, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.af = load i8, ptr %i.ae, align 8, !range !7, !noundef !8
  br label %bb.j

bb.m:                                             ; preds = %.body
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.n:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_dataNtB5_5RDataNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(184) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.sroa.4.i84 = alloca [28 x i8], align 4 ; 3 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.15?download=true
inline.NumInlined: 991
inline.NumDeleted: 375
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs8g3Ec4JUrHS_9daemonize5error9ErrorKindNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core:bb.a
  br label %_RNvXsg_NtCs8g3Ec4JUrHS_9daemonize5errorNtB5_9ErrorKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1118
  store ptr %i.t, ptr %i.g, align 8, !noalias !1118
  %i.aj = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @259, i64 noundef 12, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @243)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1118
  br label %_RNvXsg_NtCs8g3Ec4JUrHS_9daemonize5errorNtB5_9ErrorKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1118
  store ptr %i.t, ptr %i.f, align 8, !noalias !1118
  %i.ak = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @260, i64 noundef 11, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @243)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1118
  br label %_RNvXsg_NtCs8g3Ec4JUrHS_9daemonize5errorNtB5_9ErrorKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1118
  store ptr %i.t, ptr %i.e, align 8, !noalias !1118
  %i.al = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 15, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @243)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1118
  br label %_RNvXsg_NtCs8g3Ec4JUrHS_9daemonize5errorNtB5_9ErrorKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1118
  store ptr %i.t, ptr %i.d, align 8, !noalias !1118
  %i.am = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @262, i64 noundef 12, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @243)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1118
  br label %_RNvXsg_NtCs8g3Ec4JUrHS_9daemonize5errorNtB5_9ErrorKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1118
  store ptr %i.t, ptr %i.c, align 8, !noalias !1118
  %i.an = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @263, i64 noundef 15, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @243)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1118
  br label %_RNvXsg_NtCs8g3Ec4JUrHS_9daemonize5errorNtB5_9ErrorKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1118
  store ptr %i.t, ptr %i.b, align 8, !noalias !1118
  %i.ao = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @264, i64 noundef 8, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @243)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1118
  br label %_RNvXsg_NtCs8g3Ec4JUrHS_9daemonize5errorNtB5_9ErrorKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.w:                                             ; preds = %bb.a
  %i.ap = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @265, i64 noundef 24), !noalias !1113
  br label %_RNvXsg_NtCs8g3Ec4JUrHS_9daemonize5errorNtB5_9ErrorKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.x:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1118
  store ptr %i.t, ptr %i.a, align 8, !noalias !1118
  %i.aq = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @266, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @243)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1118
  br label %_RNvXsg_NtCs8g3Ec4JUrHS_9daemonize5errorNtB5_9ErrorKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

_RNvXsg_NtCs8g3Ec4JUrHS_9daemonize5errorNtB5_9ErrorKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x
  %.sroa.0.0.in.i = phi i1 [ %i.u, %bb.b ], [ %i.v, %bb.c ], [ %i.w, %bb.d ], [ %i.x, %bb.e ], [ %i.y, %bb.f ], [ %i.z, %bb.g ], [ %i.aa, %bb.h ], [ %i.ab, %bb.i ], [ %i.ac, %bb.j ], [ %i.ad, %bb.k ], [ %i.ae, %bb.l ], [ %i.af, %bb.m ], [ %i.ag, %bb.n ], [ %i.ah, %bb.o ], [ %i.ai, %bb.p ], [ %i.aj, %bb.q ], [ %i.ak, %bb.r ], [ %i.al, %bb.s ], [ %i.am, %bb.t ], [ %i.an, %bb.u ], [ %i.ao, %bb.v ], [ %i.ap, %bb.w ], [ %i.aq, %bb.x ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsG258MDvU3F_3std2fs11PermissionsNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !8, !align !400, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1119
  store ptr %i.b, ptr %i.a, align 8, !noalias !1119
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @239, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @238)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1119
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3net6parser8AddrKindNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %.val = load i8, ptr %i.a, align 1, !range !1123, !noundef !8 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3net6parser8AddrKindNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3net6parser8AddrKindNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core.229, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls10CustomALPNNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !8, !align !36, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1124
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.c, ptr %i.a, align 8, !noalias !1124
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @233, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @234, i64 noundef 4, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @231, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @235, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @232)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1124
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCskeugdADtBsi_12pingora_core9protocols3tls4ALPNNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !8, !align !36, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  %i.c = load i64, ptr %i.b, align 8, !range !1131, !alias.scope !1128, !noalias !1132, !noundef !8 ; 2 uses
  %i.d = xor i64 %i.c, -9223372036854775808
  %i.e = icmp slt i64 %i.c, 0
  %i.f = select i1 %i.e, i64 %i.d, i64 3
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @223, i64 noundef 2), !noalias !1128
  br label %_RNvXs3_NtNtCskeugdADtBsi_12pingora_core9protocols3tlsNtB5_4ALPNNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @224, i64 noundef 2), !noalias !1128
  br label %_RNvXs3_NtNtCskeugdADtBsi_12pingora_core9protocols3tlsNtB5_4ALPNNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @225, i64 noundef 4), !noalias !1128
  br label %_RNvXs3_NtNtCskeugdADtBsi_12pingora_core9protocols3tlsNtB5_4ALPNNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1134
  store ptr %i.b, ptr %i.a, align 8, !noalias !1134
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @227, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @226)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1134
  br label %_RNvXs3_NtNtCskeugdADtBsi_12pingora_core9protocols3tlsNtB5_4ALPNNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

_RNvXs3_NtNtCskeugdADtBsi_12pingora_core9protocols3tlsNtB5_4ALPNNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.in.i = phi i1 [ %i.g, %bb.c ], [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.j, %bb.f ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtNtCsG258MDvU3F_3std2os4unix3net4addr10SocketAddrNtB6_5Debug3fmtCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !400, !noundef !8
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtNtNtNtCsG258MDvU3F_3std2os4unix3net4addrNtB5_10SocketAddrNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(116) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 4294967296) i64 @_RNvXs3_NtCs6jFIAG93R3W_8petgraph10graph_implNtB5_9NodeIndexNtB5_9IndexType5indexCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !alias.scope !1135, !noundef !8
  %i.b = zext i32 %i.a to i64
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtCskKLDkoKarTP_4core5sliceSINtNtNtCsiRgJJXJ4lb7_6brotli3enc9interface7CommandNtBA_11SliceOffsetEINtB5_13CloneFromSpecBx_E15spec_clone_fromCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull writeonly align 8 captures(none) %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 230584300921369396) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, %3
  br i1 %i.a, label %.preheader, label %bb.b, !prof !232

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @222, ptr noundef nonnull inttoptr (i64 105 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #29
  unreachable

._crit_edge:                                      ; preds = %_RNvYINtNtNtCsiRgJJXJ4lb7_6brotli3enc9interface7CommandNtB5_11SliceOffsetENtNtCskKLDkoKarTP_4core5clone5Clone10clone_fromCskeugdADtBsi_12pingora_core.exit, %.preheader
  ret void

.lr.ph:                                           ; preds = %.preheader, %_RNvYINtNtNtCsiRgJJXJ4lb7_6brotli3enc9interface7CommandNtB5_11SliceOffsetENtNtCskKLDkoKarTP_4core5clone5Clone10clone_fromCskeugdADtBsi_12pingora_core.exit
  %.sroa.0.06 = phi i64 [ %i.w, %_RNvYINtNtNtCsiRgJJXJ4lb7_6brotli3enc9interface7CommandNtB5_11SliceOffsetENtNtCskKLDkoKarTP_4core5clone5Clone10clone_fromCskeugdADtBsi_12pingora_core.exit ], [ 0, %.preheader ] ; 3 uses
  %i.b = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.0.06 ; 8 uses
  %i.c = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %.sroa.0.06 ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  %i.d = load i8, ptr %i.c, align 8, !range !51, !alias.scope !1143, !noalias !1146, !noundef !8 ; 2 uses
  switch i8 %i.d, label %default.unreachable [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
    i8 6, label %bb.i
  ]

default.unreachable:                              ; preds = %.lr.ph
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %5 = load i64, ptr %i.e, align 4, !alias.scope !1143, !noalias !1146
  br label %_RNvYINtNtNtCsiRgJJXJ4lb7_6brotli3enc9interface7CommandNtB5_11SliceOffsetENtNtCskKLDkoKarTP_4core5clone5Clone10clone_fromCskeugdADtBsi_12pingora_core.exit

bb.d:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.f, align 4, !alias.scope !1143, !noalias !1146
  br label %_RNvYINtNtNtCsiRgJJXJ4lb7_6brotli3enc9interface7CommandNtB5_11SliceOffsetENtNtCskKLDkoKarTP_4core5clone5Clone10clone_fromCskeugdADtBsi_12pingora_core.exit

bb.e:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val7.i.i12 = load i32, ptr %i.g, align 8
  %.sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.val7.i.i14 = load i32, ptr %.sroa_idx13, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val8.i.i = load i32, ptr %i.h, align 8, !alias.scope !1143, !noalias !1146, !noundef !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.j = load i8, ptr %i.i, align 8, !range !231, !alias.scope !1143, !noalias !1146, !noundef !8
  %.sroa.81.i.sroa.0.4.insert.ext16 = zext i32 %.val7.i.i12 to i64
  %.sroa.81.i.sroa.0.4.insert.shift17 = shl nuw i64 %.sroa.81.i.sroa.0.4.insert.ext16, 32
  br label %_RNvYINtNtNtCsiRgJJXJ4lb7_6brotli3enc9interface7CommandNtB5_11SliceOffsetENtNtCskKLDkoKarTP_4core5clone5Clone10clone_fromCskeugdADtBsi_12pingora_core.exit

bb.f:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !1143, !noalias !1146, !noundef !8
  br label %_RNvYINtNtNtCsiRgJJXJ4lb7_6brotli3enc9interface7CommandNtB5_11SliceOffsetENtNtCskKLDkoKarTP_4core5clone5Clone10clone_fromCskeugdADtBsi_12pingora_core.exit

bb.g:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !1143, !noalias !1146, !noundef !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.p = load i8, ptr %i.o, align 2, !alias.scope !1143, !noalias !1146, !noundef !8
  br label %_RNvYINtNtNtCsiRgJJXJ4lb7_6brotli3enc9interface7CommandNtB5_11SliceOffsetENtNtCskKLDkoKarTP_4core5clone5Clone10clone_fromCskeugdADtBsi_12pingora_core.exit

bb.h:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !1143, !noalias !1146, !noundef !8
  br label %_RNvYINtNtNtCsiRgJJXJ4lb7_6brotli3enc9interface7CommandNtB5_11SliceOffsetENtNtCskKLDkoKarTP_4core5clone5Clone10clone_fromCskeugdADtBsi_12pingora_core.exit

bb.i:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val5.i.i10 = load i32, ptr %i.s, align 8
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.val5.i.i11 = load i32, ptr %.sroa_idx, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val6.i.i = load i32, ptr %i.t, align 8, !alias.scope !1143, !noalias !1146, !noundef !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.val.i.i = load i64, ptr %i.u, align 8, !alias.scope !1143, !noalias !1146, !noundef !8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.val4.i.i = load i32, ptr %i.v, align 8, !alias.scope !1143, !noalias !1146, !noundef !8
  %.sroa.81.i.sroa.0.4.insert.ext = zext i32 %.val5.i.i10 to i64
  %.sroa.81.i.sroa.0.4.insert.shift = shl nuw i64 %.sroa.81.i.sroa.0.4.insert.ext, 32
  %.sroa.154.sroa.0.0.extract.trunc.i = trunc i64 %.val.i.i to i8
  %.sroa.154.sroa.5.0.extract.shift.i = and i64 %.val.i.i, -256
  br label %_RNvYINtNtNtCsiRgJJXJ4lb7_6brotli3enc9interface7CommandNtB5_11SliceOffsetENtNtCskKLDkoKarTP_4core5clone5Clone10clone_fromCskeugdADtBsi_12pingora_core.exit

_RNvYINtNtNtCsiRgJJXJ4lb7_6brotli3enc9interface7CommandNtB5_11SliceOffsetENtNtCskKLDkoKarTP_4core5clone5Clone10clone_fromCskeugdADtBsi_12pingora_core.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.sroa.81.i.sroa.7.0 = phi i32 [ undef, %bb.c ], [ undef, %bb.d ], [ %.val7.i.i14, %bb.e ], [ undef, %bb.f ], [ undef, %bb.g ], [ undef, %bb.h ], [ %.val5.i.i11, %bb.i ]
  %.sroa.81.i.sroa.0.0 = phi i64 [ %5, %bb.c ], [ %.sroa.0.0.copyload.i.i, %bb.d ], [ %.sroa.81.i.sroa.0.4.insert.shift17, %bb.e ], [ undef, %bb.f ], [ undef, %bb.g ], [ undef, %bb.h ], [ %.sroa.81.i.sroa.0.4.insert.shift, %bb.i ]
  %.sroa.154.sroa.5.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ %.sroa.154.sroa.5.0.extract.shift.i, %bb.i ]
  %.sroa.154.sroa.0.0.i = phi i8 [ undef, %bb.c ], [ undef, %bb.d ], [ %i.j, %bb.e ], [ undef, %bb.f ], [ undef, %bb.g ], [ undef, %bb.h ], [ %.sroa.154.sroa.0.0.extract.trunc.i, %bb.i ]
  %.sroa.17.0.i = phi i32 [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.f ], [ undef, %bb.g ], [ undef, %bb.h ], [ %.val4.i.i, %bb.i ]
  %.sroa.13.0.i = phi i32 [ undef, %bb.c ], [ undef, %bb.d ], [ %.val8.i.i, %bb.e ], [ undef, %bb.f ], [ undef, %bb.g ], [ undef, %bb.h ], [ %.val6.i.i, %bb.i ]
  %.sroa.7.0.i = phi i8 [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.f ], [ %i.p, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ]
  %.sroa.4.0.i = phi i8 [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.e ], [ %i.l, %bb.f ], [ %i.n, %bb.g ], [ %i.r, %bb.h ], [ undef, %bb.i ]
  store i8 %i.d, ptr %i.b, align 8, !alias.scope !1138, !noalias !1141
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %.sroa.4.0.i, ptr %.sroa.4.0..sroa_idx.i, align 1, !alias.scope !1138, !noalias !1141
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx.i, align 2, !alias.scope !1138, !noalias !1141
  %.sroa.81.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i64 %.sroa.81.i.sroa.0.0, ptr %.sroa.81.0..sroa_idx.i, align 4, !noalias !1141
  %.sroa.81.i.sroa.7.0..sroa.81.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %.sroa.81.i.sroa.7.0, ptr %.sroa.81.i.sroa.7.0..sroa.81.0..sroa_idx.i.sroa_idx, align 4, !noalias !1141
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %.sroa.13.0.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !alias.scope !1138, !noalias !1141
  %.sroa.154.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.154.sroa.0.0.insert.ext.i = zext i8 %.sroa.154.sroa.0.0.i to i64
  %.sroa.154.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.154.sroa.5.sroa.0.0.i, %.sroa.154.sroa.0.0.insert.ext.i
  store i64 %.sroa.154.sroa.0.0.insert.insert.i, ptr %.sroa.154.0..sroa_idx.i, align 8, !alias.scope !1138, !noalias !1141
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %.sroa.17.0.i, ptr %.sroa.17.0..sroa_idx.i, align 8, !alias.scope !1138, !noalias !1141
  %i.w = add nuw nsw i64 %.sroa.0.06, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtCs2awuzAz5vY4_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !noundef !8 ; 2 uses
  store i32 -1, ptr %i.d, align 8
  %.not = icmp eq i32 %i.e, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.e, ptr %i.c, align 4
  %i.f = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime2io12registrationNtB5_12Registration6handle(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
          to label %bb.e unwind label %bb.d       ; 4 uses

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskeugdADtBsi_12pingora_core.exit, %bb.a
  ret void

bb.d:                                             ; preds = %bb.x, %bb.e, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.e:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.j = invoke noundef ptr @_RNvXs3_NtNtNtCsc2nZRnW43Xw_3mio3net3tcp6streamNtB5_9TcpStreamNtNtNtBb_5event6source6Source10deregister(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.i)
          to label %.noexc unwind label %bb.d     ; 5 uses

.noexc:                                           ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1148
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCs2awuzAz5vY4_5tokio7runtime2io16registration_set6SyncedE4lockCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.k)
          to label %bb.h unwind label %bb.g, !noalias !1152

bb.f:                                             ; preds = %bb.i, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.l, %bb.g ], [ %i.s, %bb.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskeugdADtBsi_12pingora_core(ptr %i.j) #30
          to label %bb.y unwind label %bb.u

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs2awuzAz5vY4_5tokio7runtime2io16registration_set6SyncedEECskeugdADtBsi_12pingora_core.exit12.i, %bb.t, %bb.r, %bb.o, %bb.m, %.noexc
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !1148, !nonnull !8, !align !36 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = load i8, ptr %i.o, align 8, !range !231, !noalias !1148 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1148
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = invoke noundef zeroext i1 @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime2io16registration_setNtB2_15RegistrationSet10deregister(ptr noundef nonnull align 8 %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs2awuzAz5vY4_5tokio7runtime2io16registration_set6SyncedEECskeugdADtBsi_12pingora_core(ptr nonnull %i.n, i8 %i.p) #30
          to label %bb.f unwind label %bb.u

bb.j:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.u = trunc nuw i8 %i.p to i1                  ; 2 uses
  br i1 %i.r, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.u, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1148
  %i.w = and i64 %i.v, 9223372036854775807
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.m, !prof !232

bb.m:                                             ; preds = %bb.l
  %i.y = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #33
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %bb.m
  br i1 %i.y, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc.i
  store atomic i8 1, ptr %i.t monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.n, %.noexc.i, %bb.l, %bb.k
  %i.z = atomicrmw xchg ptr %i.n, i32 0 release, align 4
  %i.aa = icmp eq i32 %i.z, 2
  br i1 %i.aa, label %bb.o, label %_RINvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime2io6driverNtB6_6Handle17deregister_sourceNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamECskeugdADtBsi_12pingora_core.exit, !prof !22

bb.o:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.n)
          to label %_RINvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime2io6driverNtB6_6Handle17deregister_sourceNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamECskeugdADtBsi_12pingora_core.exit unwind label %bb.g

bb.p:                                             ; preds = %bb.j
  br i1 %i.u, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i9.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1148
  %i.ac = and i64 %i.ab, 9223372036854775807
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i9.i, label %bb.r, !prof !232

bb.r:                                             ; preds = %bb.q
  %i.ae = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #33
          to label %.noexc10.i unwind label %bb.g

.noexc10.i:                                       ; preds = %bb.r
  br i1 %i.ae, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i9.i, label %bb.s

bb.s:                                             ; preds = %.noexc10.i
  store atomic i8 1, ptr %i.t monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i9.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i9.i: ; preds = %bb.s, %.noexc10.i, %bb.q, %bb.p
  %i.af = atomicrmw xchg ptr %i.n, i32 0 release, align 4
  %i.ag = icmp eq i32 %i.af, 2
  br i1 %i.ag, label %bb.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs2awuzAz5vY4_5tokio7runtime2io16registration_set6SyncedEECskeugdADtBsi_12pingora_core.exit12.i, !prof !22

bb.t:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i9.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs2awuzAz5vY4_5tokio7runtime2io16registration_set6SyncedEECskeugdADtBsi_12pingora_core.exit12.i unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs2awuzAz5vY4_5tokio7runtime2io16registration_set6SyncedEECskeugdADtBsi_12pingora_core.exit12.i: ; preds = %bb.t, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i9.i
  invoke void @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime2io6driverNtB5_6Handle6unpark(ptr noundef nonnull align 8 %i.f)
          to label %_RINvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime2io6driverNtB6_6Handle17deregister_sourceNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamECskeugdADtBsi_12pingora_core.exit unwind label %bb.g

bb.u:                                             ; preds = %bb.i, %bb.f
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime2io6driverNtB6_6Handle17deregister_sourceNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamECskeugdADtBsi_12pingora_core.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs2awuzAz5vY4_5tokio7runtime2io16registration_set6SyncedEECskeugdADtBsi_12pingora_core.exit12.i, %bb.o, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  %i.ai = icmp eq ptr %i.j, null
  br i1 %i.ai, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskeugdADtBsi_12pingora_core.exit, label %bb.v

bb.v:                                             ; preds = %_RINvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime2io6driverNtB6_6Handle17deregister_sourceNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamECskeugdADtBsi_12pingora_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aj = ptrtoint ptr %i.j to i64                ; 2 uses
  %i.ak = and i64 %i.aj, 3
  switch i64 %i.ak, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskeugdADtBsi_12pingora_core.exit.i
    i64 3, label %bb.w
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskeugdADtBsi_12pingora_core.exit.i
    i64 1, label %bb.x
  ], !prof !181

default.unreachable:                              ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.al = icmp ult ptr %i.j, inttoptr (i64 188978561024 to ptr)
  %i.am = and i64 %i.aj, 1095216660480
  %i.an = icmp ne i64 %i.am, 1095216660480
  call void @llvm.assume(i1 %i.al)
  call void @llvm.assume(i1 %i.an)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskeugdADtBsi_12pingora_core.exit.i

bb.x:                                             ; preds = %bb.v
  %i.ao = getelementptr i8, ptr %i.j, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !alias.scope !1153
  store i8 3, ptr %i.a, align 8, !alias.scope !1153
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskeugdADtBsi_12pingora_core.exit.i unwind label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.x, %bb.w, %bb.v, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskeugdADtBsi_12pingora_core.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskeugdADtBsi_12pingora_core.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskeugdADtBsi_12pingora_core.exit.i, %_RINvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime2io6driverNtB6_6Handle17deregister_sourceNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamECskeugdADtBsi_12pingora_core.exit
  %.val = load i32, ptr %i.c, align 4, !range !1156, !noundef !8
  %i.aq = call noundef i32 @close(i32 noundef %.val) #31 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.c

bb.y:                                             ; preds = %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.d ], [ %.pn.i, %bb.f ]
  %.val3 = load i32, ptr %i.c, align 4, !range !1156, !noundef !8
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/_iceoryx2._iceoryx2.76e6eba86560f5d9-cgu.08?download=true
inline.NumInlined: 2072
inline.NumDeleted: 1093
begin_hunk_0_@_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6clientINtB5_17PortFactoryClientNtNtB9_16local_threadsafe7ServiceSNtNtB9_7builder19CustomPayloadMarkerNtB20_18CustomHeaderMarkerB1X_B2y_E6createCsacUAxWRcRNR_9__iceoryx2:.split
; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_17PortFactoryServerNtNtB9_14ipc_threadsafe7ServiceSNtNtB9_7builder19CustomPayloadMarkerNtB1Y_18CustomHeaderMarkerB1V_B2w_E24___internal_partial_cloneCsacUAxWRcRNR_9__iceoryx2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([240 x i8]) align 16 captures(none) dereferenceable(240) initializes((208, 232)) %0, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(240) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !11, !align !12, !noundef !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.d, ptr noundef nonnull align 16 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_RNvMs6_NtCsg6ZEkMtNi4J_8iceoryx24portINtB5_18DegradationHandlerKj18_E8new_with(ptr noalias nofree noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.e, i8 noundef 1) #18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_RNvMs6_NtCsg6ZEkMtNi4J_8iceoryx24portINtB5_18DegradationHandlerKj18_E8new_with(ptr noalias nofree noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.f, i8 noundef 1) #18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.b, ptr %i.g, align 8
  store i128 0, ptr %0, align 16
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr @16, ptr %.sroa.42.0..sroa_idx, align 16
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_17PortFactoryServerNtNtB9_14ipc_threadsafe7ServiceSNtNtB9_7builder19CustomPayloadMarkerNtB1Y_18CustomHeaderMarkerB1V_B2w_E32max_loaned_responses_per_requestCsacUAxWRcRNR_9__iceoryx2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([240 x i8]) align 16 captures(none) dereferenceable(240) initializes((0, 240)) %0, ptr noalias nofree noundef align 16 captures(address) dead_on_return dereferenceable(240) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsg_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_17PortFactoryServerNtNtB9_14ipc_threadsafe7ServiceSNtNtB9_7builder19CustomPayloadMarkerNtB1Y_18CustomHeaderMarkerB1V_B2w_ENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCsacUAxWRcRNR_9__iceoryx2, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @1, ptr noundef nonnull %i.a, ptr noundef nonnull @93, ptr noundef nonnull inttoptr (i64 169 to ptr)) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = call i64 @llvm.umax.i64(i64 %2, i64 1)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 216
  store i64 %i.c, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %0, ptr noundef nonnull align 16 dereferenceable(240) %1, i64 240, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_17PortFactoryServerNtNtB9_14ipc_threadsafe7ServiceSNtNtB9_7builder19CustomPayloadMarkerNtB1Y_18CustomHeaderMarkerB1V_B2w_E3newCsacUAxWRcRNR_9__iceoryx2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([240 x i8]) align 16 captures(none) dereferenceable(240) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7280
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 269
  %i.e = load i8, ptr %i.d, align 1, !range !16, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 265
  %i.g = load i8, ptr %i.f, align 1, !range !26, !noundef !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.i = load i64, ptr %i.h, align 8, !noundef !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_RNvMs6_NtCsg6ZEkMtNi4J_8iceoryx24portINtB5_18DegradationHandlerKj18_E8new_with(ptr noalias nofree noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.j, i8 noundef 1) #18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_RNvMs6_NtCsg6ZEkMtNi4J_8iceoryx24portINtB5_18DegradationHandlerKj18_E8new_with(ptr noalias nofree noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.k, i8 noundef 1) #18
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 1, ptr %i.m, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 %i.g, ptr %.sroa.5.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 225
  store i8 %i.e, ptr %.sroa.6.0..sroa_idx, align 1
  store i128 0, ptr %0, align 16
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr @17, ptr %.sroa.45.0..sroa_idx, align 16
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_17PortFactoryServerNtNtB9_14ipc_threadsafe7ServiceSNtNtB9_7builder19CustomPayloadMarkerNtB1Y_18CustomHeaderMarkerB1V_B2w_E6createCsacUAxWRcRNR_9__iceoryx2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 16 captures(address) dead_on_return dereferenceable(240) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [2 x i8], align 1                 ; 6 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [64 x i8], align 8                ; 10 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [2 x i8], align 1                 ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 14 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [1 x i8], align 1                 ; 4 uses
  %i.s = alloca [64 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [6400 x i8], align 16             ; 29 uses
  %i.v = alloca [16 x i8], align 8                ; 7 uses
  %i.w = alloca [64 x i8], align 16               ; 4 uses
  %i.x = alloca [48 x i8], align 16               ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [32 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.04.i = alloca [64 x i8], align 16        ; 5 uses
  %.sroa.6.i = alloca [48 x i8], align 16         ; 5 uses
  %i.ac = alloca [2488 x i8], align 16            ; 8 uses
  %.sroa.8.i = alloca [24 x i8], align 8          ; 5 uses
  %.sroa.9.i = alloca [24 x i8], align 16         ; 5 uses
  %.sroa.10.i = alloca [888 x i8], align 8        ; 5 uses
  %i.ad = alloca [2488 x i8], align 8             ; 6 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [264 x i8], align 8              ; 7 uses
  %i.ah = alloca [32 x i8], align 8               ; 6 uses
  %.sroa.5.i = alloca [32 x i8], align 8          ; 4 uses
  %i.ai = alloca [888 x i8], align 8              ; 4 uses
  %i.aj = alloca [32 x i8], align 8               ; 6 uses
  %i.ak = alloca [32 x i8], align 8               ; 4 uses
  %i.al = alloca [1280 x i8], align 16            ; 20 uses
  %i.am = alloca [32 x i8], align 8               ; 7 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [1 x i8], align 1                ; 4 uses
  %i.ap = alloca [1360 x i8], align 8             ; 7 uses
  %i.aq = alloca [1360 x i8], align 8             ; 10 uses
  %i.ar = alloca [16 x i8], align 16              ; 8 uses
  %i.as = alloca [16 x i8], align 8               ; 11 uses
  %i.at = alloca [16 x i8], align 8               ; 11 uses
  %i.au = alloca [240 x i8], align 16             ; 23 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %.sroa.10 = alloca [15 x i8], align 1           ; 5 uses
  %.sroa.15 = alloca [7 x i8], align 1            ; 5 uses
  %i.aw = alloca [16 x i8], align 8               ; 5 uses
  %i.ax = alloca [24 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store ptr %1, ptr %i.aw, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr @_RNvXsg_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_17PortFactoryServerNtNtB9_14ipc_threadsafe7ServiceSNtNtB9_7builder19CustomPayloadMarkerNtB1Y_18CustomHeaderMarkerB1V_B2w_ENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCsacUAxWRcRNR_9__iceoryx2, ptr %.sroa.45.0..sroa_idx, align 8
  call void @_RNvNvNtCsbqH9stoieM8_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ax, ptr noundef nonnull @1, ptr noundef nonnull %i.aw) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.au, ptr noundef nonnull align 16 dereferenceable(240) %1, i64 240, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !1283
  store ptr @123, ptr %i.at, align 8, !noalias !1283, !captures !15
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 28, ptr %i.ay, align 8, !noalias !1283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !1283
  store ptr @124, ptr %i.as, align 8, !noalias !1283, !captures !15
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 13, ptr %i.az, align 8, !noalias !1283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !1283
  call void @_RNvMs15_NtCsg6ZEkMtNi4J_8iceoryx211identifiersNtB6_14UniqueServerId3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.ar) #18, !noalias !1283
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 232
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !1282, !noalias !1284, !nonnull !11, !align !12, !noundef !11 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !1283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !1283
  %.val84.i = load ptr, ptr %i.bb, align 8, !noalias !1283, !nonnull !11, !noundef !11
  %i.bc = getelementptr inbounds nuw i8, ptr %.val84.i, i64 7280
  %.sroa.014.0.copyload.i = load i128, ptr %i.ar, align 16, !noalias !1283 ; 4 uses
  call void @_RNvMsn_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB5_10SharedNodeNtNtNtB7_7service14ipc_threadsafe7ServiceE15create_port_tagCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull sret([1360 x i8]) align 8 captures(address) dereferenceable(1360) %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @124, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @123, i64 noundef 28, i128 noundef %.sroa.014.0.copyload.i) #18, !noalias !1283
  %i.bd = load i64, ptr %i.ap, align 8, !range !24, !noalias !1283, !noundef !11
  %i.be = icmp eq i64 %i.bd, 2
  br i1 %i.be, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !1283
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bg = load i8, ptr %i.bf, align 8, !range !39, !noalias !1283, !noundef !11
  store i8 %i.bg, ptr %i.ao, align 1, !noalias !1283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !1283
  store ptr %i.as, ptr %i.an, align 8, !noalias !1283
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCsacUAxWRcRNR_9__iceoryx2, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !1283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !1283
  store ptr %i.at, ptr %i.am, align 8, !noalias !1283
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsacUAxWRcRNR_9__iceoryx2, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !1283
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %i.ao, ptr %i.bh, align 8, !noalias !1283
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr @_RNvXs6_NtCs7gufeB8TUC6_12iceoryx2_cal14static_storageNtB5_24StaticStorageCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.426.0..sroa_idx.i, align 8, !noalias !1283
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.an, ptr noundef nonnull @116, ptr noundef nonnull %i.am) #18, !noalias !1284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !1283
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.bi) #18, !noalias !1284
  br label %.critedge.i

bb.b:                                             ; preds = %.split
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1360) %i.aq, ptr noundef nonnull align 8 dereferenceable(1360) %i.ap, i64 1360, i1 false), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1283
  %.val85.i = load ptr, ptr %i.bb, align 8, !noalias !1284, !nonnull !11, !noundef !11
  %i.bj = getelementptr inbounds nuw i8, ptr %.val85.i, i64 2248
  %i.bk = call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.bj) #18, !noalias !1284 ; 16 uses
  %.val89.i = load ptr, ptr %i.bb, align 8, !noalias !1284, !nonnull !11, !noundef !11
  %i.bl = getelementptr inbounds nuw i8, ptr %.val89.i, i64 5432
  %i.bm = call noundef nonnull align 8 ptr @_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config17messaging_patternNtB4_16MessagingPattern16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1848) %i.bl) #18, !noalias !1284 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !1284, !noundef !11
  %i.bp = getelementptr i8, ptr %i.bm, i64 8
  %.val90.i = load i64, ptr %i.bp, align 8, !noalias !1284, !noundef !11
  %i.bq = getelementptr i8, ptr %i.bm, i64 32
  %.val91.i = load i64, ptr %i.bq, align 8, !noalias !1284, !noundef !11
  %i.br = shl i64 %.val90.i, 1
  %i.bs = mul i64 %i.br, %.val91.i
  %i.bt = add i64 %i.bs, %i.bo
  %.val88.i = load ptr, ptr %i.bb, align 8, !noalias !1284, !nonnull !11, !noundef !11
  %i.bu = getelementptr inbounds nuw i8, ptr %.val88.i, i64 5432
  %i.bv = call noundef nonnull align 8 ptr @_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config17messaging_patternNtB4_16MessagingPattern16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1848) %i.bu) #18, !noalias !1284 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.au, i64 208 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.au, i64 216 ; 3 uses
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !1282, !noalias !1284, !noundef !11
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !1285, !noalias !1284, !noundef !11
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !1285, !noalias !1284, !noundef !11
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !1285, !noalias !1284, !noundef !11
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !1285, !noalias !1284, !noundef !11
  %i.ch = add i64 %i.ce, %i.by
  %i.ci = add i64 %i.ch, %i.cg
  %i.cj = shl i64 %i.ca, 1
  %i.ck = mul i64 %i.cj, %i.cc
  %i.cl = mul i64 %i.ck, %i.ci                    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.au, i64 160 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1286)
  call void @llvm.experimental.noalias.scope.decl(metadata !1287)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.au, i64 192 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 16, !alias.scope !1288, !noalias !1284, !align !12, !noundef !11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !1289, !nonnull !11, !noundef !11
  %i.cr = call noundef i64 %i.cq(ptr noundef nonnull readonly align 16 dereferenceable(48) %i.cm, i64 noundef %i.cl) #18, !noalias !1284, !inline_history !1244
  br label %_RNvMsf_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_28PreallocatedResponseOverrideKj18_E4callCsacUAxWRcRNR_9__iceoryx2.exit.i

bb.d:                                             ; preds = %bb.b
  %i.cs = load ptr, ptr %i.cm, align 16, !alias.scope !1288, !noalias !1284, !nonnull !11, !noundef !11
  %i.ct = getelementptr inbounds nuw i8, ptr %i.au, i64 168
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !1288, !noalias !1284, !nonnull !11, !align !12, !noundef !11
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8, !invariant.load !11, !noalias !1289, !nonnull !11
  %i.cx = call noundef i64 %i.cw(ptr noundef nonnull %i.cs, i64 noundef %i.cl) #19, !noalias !1289, !inline_history !1244
  br label %_RNvMsf_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_28PreallocatedResponseOverrideKj18_E4callCsacUAxWRcRNR_9__iceoryx2.exit.i

_RNvMsf_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_28PreallocatedResponseOverrideKj18_E4callCsacUAxWRcRNR_9__iceoryx2.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi i64 [ %i.cr, %bb.c ], [ %i.cx, %bb.d ] ; 5 uses
  %.val93.i = load ptr, ptr %i.bb, align 8, !noalias !1284, !nonnull !11, !noundef !11
  %i.cy = getelementptr inbounds nuw i8, ptr %.val93.i, i64 16
  %i.cz = call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigEINtB7_14DynamicStorageB1r_E3getCsacUAxWRcRNR_9__iceoryx2(ptr noundef nonnull align 8 %i.cy) #18, !noalias !1284
  %i.da = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig16request_response(ptr noundef nonnull align 8 %i.cz) #18, !noalias !1284 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 80
  %.val83.i = load ptr, ptr %i.bb, align 8, !noalias !1284, !nonnull !11, !noundef !11
  %i.dc = getelementptr inbounds nuw i8, ptr %.val83.i, i64 7280
  %.val79.i = load ptr, ptr %i.dc, align 8, !noalias !1284, !nonnull !11, !noundef !11
  %i.dd = getelementptr inbounds nuw i8, ptr %.val79.i, i64 256
  %i.de = load i64, ptr %i.dd, align 8, !noalias !1284, !noundef !11 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 96 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !noalias !1284, !noundef !11 ; 2 uses
  %i.dh = add i64 %i.dg, %i.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !1283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !1283
  call void @_RINvMs5_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB6_14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtBa_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorE7from_fnNCNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB4X_6ServerNtNtNtB51_7service14ipc_threadsafe7ServiceSNtNtB5S_7builder19CustomPayloadMarkerNtB6x_18CustomHeaderMarkerB6u_B76_E3new0ECsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @_RNvNvMs_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB6_13HeapAllocator6global9ALLOCATOR, i64 noundef %i.dg) #18, !noalias !1284
  call void @llvm.experimental.noalias.scope.decl(metadata !1290)
  call void @llvm.experimental.noalias.scope.decl(metadata !1291)
  %i.di = load ptr, ptr %i.aj, align 8, !alias.scope !1291, !noalias !1292, !noundef !11
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.e, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2.exit.i, !prof !33

bb.e:                                             ; preds = %_RNvMsf_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_28PreallocatedResponseOverrideKj18_E4callCsacUAxWRcRNR_9__iceoryx2.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1293
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.dl = load i8, ptr %i.dk, align 8, !range !39, !alias.scope !1291, !noalias !1292, !noundef !11
  store i8 %i.dl, ptr %i.c, align 1, !noalias !1293
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 31, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #20, !noalias !1294
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2.exit.i: ; preds = %_RNvMsf_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_28PreallocatedResponseOverrideKj18_E4callCsacUAxWRcRNR_9__iceoryx2.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.aj, i64 32, i1 false), !alias.scope !1295, !noalias !1296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1283
  %.val97.i = load ptr, ptr %i.bb, align 8, !noalias !1284, !nonnull !11, !noundef !11 ; 2 uses
  %i.dm = atomicrmw add ptr %.val97.i, i64 1 monotonic, align 8, !noalias !1284
  %i.dn = icmp slt i64 %i.dm, 0
  br i1 %i.dn, label %bb.f, label %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsacUAxWRcRNR_9__iceoryx2.exit.i

bb.f:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2.exit.i
  call void @llvm.trap()
  unreachable

_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsacUAxWRcRNR_9__iceoryx2.exit.i: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.do = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(888) %i.ai, ptr noundef nonnull align 8 dereferenceable(888) %i.do, i64 888, i1 false), !noalias !1284
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !noalias !1284, !noundef !11 ; 4 uses
  %i.dr = load i8, ptr %i.bk, align 8, !range !16, !noalias !1284, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.dt = load i8, ptr %i.ds, align 2, !range !16, !noalias !1284, !noundef !11
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsacUAxWRcRNR_9__iceoryx2.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1283
  call void @_RNvMs5_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB5_14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorE3newCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @_RNvNvMs_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB6_13HeapAllocator6global9ALLOCATOR, i64 noundef %i.de) #18, !noalias !1284
  call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  %i.dv = load ptr, ptr %i.ah, align 8, !alias.scope !1297, !noalias !1298, !noundef !11
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %bb.h, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2.exit.i, !prof !33

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1299
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.dy = load i8, ptr %i.dx, align 8, !range !39, !alias.scope !1297, !noalias !1298, !noundef !11
  store i8 %i.dy, ptr %i.b, align 1, !noalias !1299
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 31, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #20, !noalias !1300
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2.exit.i: ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ah, i64 32, i1 false), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1283
  br label %bb.i

bb.i:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2.exit.i, %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsacUAxWRcRNR_9__iceoryx2.exit.i
  %.sroa.03.0.i = phi i64 [ 1, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2.exit.i ], [ 0, %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsacUAxWRcRNR_9__iceoryx2.exit.i ]
  %i.dz = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ea, ptr noundef nonnull align 16 dereferenceable(48) %i.dz, i64 48, i1 false), !noalias !1284
  %i.eb = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  call void @_RNvMs3_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service14ipc_threadsafe7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE3newCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.eb, i64 noundef %i.dh) #18, !noalias !1284
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false), !noalias !1283
  %i.ec = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store i128 %.sroa.014.0.copyload.i, ptr %i.ec, align 16, !noalias !1283
  %i.ed = getelementptr inbounds nuw i8, ptr %i.al, i64 328
  store ptr %.val97.i, ptr %i.ed, align 8, !noalias !1283
  %i.ee = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  store i64 %i.dq, ptr %i.ee, align 16, !noalias !1283
  %i.ef = getelementptr inbounds nuw i8, ptr %i.al, i64 1264
  store i8 0, ptr %i.ef, align 16, !noalias !1283
  %i.eg = getelementptr inbounds nuw i8, ptr %i.al, i64 1224
  store i64 %.sroa.03.0.i, ptr %i.eg, align 8, !noalias !1283
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 1232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i, i64 32, i1 false), !noalias !1283
  %i.eh = getelementptr inbounds nuw i8, ptr %i.al, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(888) %i.eh, ptr noundef nonnull align 8 dereferenceable(888) %i.ai, i64 888, i1 false), !noalias !1283
  %i.ei = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  store i64 %i.dq, ptr %i.ei, align 8, !noalias !1283
  %i.ej = getelementptr inbounds nuw i8, ptr %i.al, i64 1265
  store i8 %i.dr, ptr %i.ej, align 1, !noalias !1283
  %i.ek = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  store i64 1, ptr %i.ek, align 16, !noalias !1283
  %i.el = getelementptr inbounds nuw i8, ptr %i.al, i64 320
  store i64 0, ptr %i.el, align 16, !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %.val82.i = load ptr, ptr %i.bb, align 8, !noalias !1284, !nonnull !11, !noundef !11
  %i.em = getelementptr inbounds nuw i8, ptr %.val82.i, i64 7280
  %.val78.i = load ptr, ptr %i.em, align 8, !noalias !1284, !nonnull !11, !noundef !11
  %i.en = getelementptr inbounds nuw i8, ptr %.val78.i, i64 16 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.au, i64 224 ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 16, !range !26, !alias.scope !1282, !noalias !1284, !noundef !11
  %i.eq = icmp eq i8 %i.ep, 2                     ; 2 uses
  %..i.i = zext i1 %i.eq to i32                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !1283
  call void @_RNvNtNtCsg6ZEkMtNi4J_8iceoryx27service13naming_scheme17data_segment_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(none) dereferenceable(264) %i.ag, i128 noundef %.sroa.014.0.copyload.i) #18, !noalias !1284
  %i.er = call noundef i8 @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service14ipc_threadsafe7ServiceE22max_number_of_segmentsCsacUAxWRcRNR_9__iceoryx2(i32 noundef %..i.i) #18, !noalias !1284 ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.bk, i64 952
  %i.et = load i64, ptr %i.bw, align 16, !alias.scope !1282, !noalias !1284, !noundef !11
  call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bk, i64 1240
  %i.ev = load i64, ptr %i.eu, align 8, !alias.scope !1301, !noalias !1284, !noundef !11 ; 6 uses
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %bb.j, label %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit.i

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtNtCs8Chj7Szqq0n_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #20, !noalias !1302
  unreachable

_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit.i: ; preds = %bb.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bk, i64 1232
  %i.ey = load i64, ptr %i.ex, align 8, !alias.scope !1301, !noalias !1284, !noundef !11
  %i.ez = getelementptr inbounds nuw i8, ptr %i.bk, i64 1528
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !1301, !noalias !1284, !noundef !11
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bk, i64 1536
  %i.fc = load i64, ptr %i.fb, align 8, !alias.scope !1301, !noalias !1284, !noundef !11
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bk, i64 1824
  %i.fe = load i64, ptr %i.fd, align 8, !alias.scope !1301, !noalias !1284, !noundef !11
  %i.ff = mul i64 %i.fe, %i.et
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bk, i64 1832
  %i.fh = load i64, ptr %i.fg, align 8, !alias.scope !1301, !noalias !1284, !noundef !11
  %i.fi = add i64 %i.ey, -2
  %i.fj = add i64 %i.fi, %i.fa
  %i.fk = add i64 %i.fj, %i.fc
  %i.fl = add i64 %i.fk, %i.ff
  %i.fm = add i64 %i.fl, %i.fh                    ; 2 uses
  %i.fn = urem i64 %i.fm, %i.ev                   ; 2 uses
  %i.fo = icmp eq i64 %i.fn, 0
  %i.fp = sub i64 %i.ev, %i.fn
  %i.fq = select i1 %i.fo, i64 0, i64 %i.fp
  %.sroa.0.0.i.i = add i64 %i.fq, %i.fm           ; 2 uses
  %i.fr = icmp ult i64 %i.ev, -9223372036854775807
  call void @llvm.assume(i1 %i.fr)
  br i1 %i.eq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit.i
  call void @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service14ipc_threadsafe7ServiceE21create_static_segmentCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull sret([2488 x i8]) align 8 captures(none) dereferenceable(2488) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.ag, i64 noundef %i.ev, i64 noundef %.sroa.0.0.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4528) %i.en, i64 noundef %.sroa.0.0.i.i.i) #18, !noalias !1284
  br label %bb.m

bb.l:                                             ; preds = %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit.i
  %i.fs = load i8, ptr %i.eo, align 16, !range !26, !alias.scope !1282, !noalias !1284, !noundef !11
  call void @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service14ipc_threadsafe7ServiceE22create_dynamic_segmentCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull sret([2488 x i8]) align 8 captures(none) dereferenceable(2488) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.ag, i64 noundef %i.ev, i64 noundef %.sroa.0.0.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4528) %i.en, i64 noundef %.sroa.0.0.i.i.i, i8 noundef %i.fs) #18, !noalias !1284
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.026.0.copyload = load i64, ptr %i.ac, align 16, !noalias !1283
  %.not.i = icmp eq i64 %.sroa.026.0.copyload, -1
  br i1 %.not.i, label %.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1283
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2488) %i.ad, ptr noundef nonnull align 16 dereferenceable(2488) %i.ac, i64 2488, i1 false), !noalias !1283
  %i.ft = load i64, ptr %i.ad, align 8, !range !27, !noalias !1283, !noundef !11
  %i.fu = icmp eq i64 %i.ft, -1
  br i1 %i.fu, label %2, label %bb.o, !prof !33

.thread.i:                                        ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !1283
  store ptr %i.as, ptr %i.af, align 8, !noalias !1283
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCsacUAxWRcRNR_9__iceoryx2, ptr %.sroa.433.0..sroa_idx.i, align 8, !noalias !1283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1283
  store ptr %i.at, ptr %i.ae, align 8, !noalias !1283
  %.sroa.437.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsacUAxWRcRNR_9__iceoryx2, ptr %.sroa.437.0..sroa_idx.i, align 8, !noalias !1283
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.af, ptr noundef nonnull @130, ptr noundef nonnull %i.ae) #18, !noalias !1284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1283
  call void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBK_7service14ipc_threadsafe7ServiceEECsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 16 dereferenceable(1280) %i.al) #18, !noalias !1284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1283
  call void @_RNvXs5_NtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage4fileNtB5_7StorageNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(1360) %i.aq) #18, !noalias !1284
  call void @_RNvXs2_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix4fileNtB5_4FileNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(1360) %i.aq) #18, !noalias !1284
  %i.fv = getelementptr inbounds nuw i8, ptr %i.aq, i64 272
  call void @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptorNtB5_14FileDescriptorNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(8) %i.fv) #18, !noalias !1284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !1283
  br label %.critedge.i

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1283
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1283
  %i.fw = zext i8 %i.er to i64                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1283
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.fw, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32) #18, !noalias !1284
  %i.fx = load i64, ptr %i.d, align 8, !range !22, !noalias !1283, !noundef !11
  %i.fy = trunc nuw i64 %i.fx to i1
  %i.fz = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ga = load i64, ptr %i.fz, align 8, !range !40, !noalias !1283, !noundef !11 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.fy, label %bb.p, label %bb.q, !prof !33

bb.p:                                             ; preds = %bb.o
  %i.gc = load i64, ptr %i.gb, align 8, !noalias !1283
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.ga, i64 %i.gc) #22, !noalias !1284
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.gd = load ptr, ptr %i.gb, align 8, !noalias !1283, !nonnull !11, !noundef !11
  %i.ge = icmp samesign uge i64 %i.ga, %i.fw
  call void @llvm.assume(i1 %i.ge)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1283
  store i64 %i.ga, ptr %i.aa, align 8, !noalias !1283
  %i.gf = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store ptr %i.gd, ptr %i.gf, align 8, !noalias !1283
  %i.gg = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  store i64 0, ptr %i.gg, align 8, !noalias !1283
  %.not116.i = icmp eq i8 %i.er, 0
  br i1 %.not116.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCsacUAxWRcRNR_9__iceoryx2.exit.i, %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1283
  %i.gh = load i64, ptr %i.df, align 8, !noalias !1284, !noundef !11
  call void @_RNvXNtNtCsbqH9stoieM8_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender10ConnectionNtNtNtB2E_7service14ipc_threadsafe7ServiceEEEEINtB2_12SpecFromIterBU_INtNtNtNtB1Y_4iter8adapters3map3MapINtNtNtB1Y_3ops5range5RangejENCNvMs5_NtB2C_6serverINtB5O_6ServerB3x_SNtNtB3B_7builder19CustomPayloadMarkerNtB6m_18CustomHeaderMarkerB6j_B6V_E3news_0EE9from_iterCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, i64 noundef 0, i64 noundef %i.gh) #18, !noalias !1284
  %.val81.i = load ptr, ptr %i.bb, align 8, !noalias !1284, !nonnull !11, !noundef !11
  %i.gi = getelementptr inbounds nuw i8, ptr %.val81.i, i64 7280
  %.val.i = load ptr, ptr %i.gi, align 8, !noalias !1284, !nonnull !11, !noundef !11 ; 2 uses
  %i.gj = atomicrmw add ptr %.val.i, i64 1 monotonic, align 8, !noalias !1284
  %i.gk = icmp slt i64 %i.gj, 0
  br i1 %i.gk, label %bb.r, label %_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service14ipc_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsacUAxWRcRNR_9__iceoryx2.exit.i

bb.r:                                             ; preds = %._crit_edge.i
  call void @llvm.trap()
  unreachable

_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service14ipc_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsacUAxWRcRNR_9__iceoryx2.exit.i: ; preds = %._crit_edge.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.gm = load i64, ptr %i.gl, align 8, !noalias !1284, !noundef !11
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.go = load i64, ptr %i.gn, align 8, !noalias !1284, !noundef !11
  %i.gp = load i64, ptr %i.bx, align 8, !alias.scope !1282, !noalias !1284, !noundef !11
  %i.gq = mul i64 %i.gp, %i.dq
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.gs = load i64, ptr %i.gr, align 8, !noalias !1284, !noundef !11
  %i.gt = mul i64 %i.gq, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.gv = load i8, ptr %i.gu, align 1, !range !16, !noalias !1284, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.au, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.x, ptr noundef nonnull align 16 dereferenceable(48) %i.gw, i64 48, i1 false), !noalias !1284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.w, ptr noundef nonnull align 16 dereferenceable(240) %i.au, i64 64, i1 false), !noalias !1284
  %.val96.i = load ptr, ptr %i.bb, align 8, !noalias !1284, !nonnull !11, !noundef !11 ; 2 uses
  %i.gx = atomicrmw add ptr %.val96.i, i64 1 monotonic, align 8, !noalias !1284
  %i.gy = icmp slt i64 %i.gx, 0
  br i1 %i.gy, label %bb.s, label %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsacUAxWRcRNR_9__iceoryx2.exit104.i

bb.s:                                             ; preds = %_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service14ipc_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsacUAxWRcRNR_9__iceoryx2.exit.i
  call void @llvm.trap()
  unreachable

_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsacUAxWRcRNR_9__iceoryx2.exit104.i: ; preds = %_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service14ipc_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsacUAxWRcRNR_9__iceoryx2.exit.i
  %i.gz = getelementptr inbounds nuw i8, ptr %i.au, i64 225
  %i.ha = load i8, ptr %i.gz, align 1, !range !16, !alias.scope !1282, !noalias !1284, !noundef !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(888) %.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(888) %i.es, i64 888, i1 false), !noalias !1284
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !1283
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !1283
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.6.i, ptr noundef nonnull align 16 dereferenceable(48) %i.x, i64 48, i1 false), !noalias !1283
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.04.i, ptr noundef nonnull align 16 dereferenceable(64) %i.w, i64 64, i1 false), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 16 dereferenceable(24) %i.bw, i64 24, i1 false), !noalias !1284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1283
  call void @_RNvMs4_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB5_9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ClientDetailsE9get_stateCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.s, ptr noundef nonnull align 8 %i.db) #18, !noalias !1284
  %.val95.i = load ptr, ptr %i.bb, align 8, !noalias !1284, !nonnull !11, !noundef !11 ; 2 uses
  %i.hb = atomicrmw add ptr %.val95.i, i64 1 monotonic, align 8, !noalias !1284
  %i.hc = icmp slt i64 %i.hb, 0
  br i1 %i.hc, label %bb.t, label %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsacUAxWRcRNR_9__iceoryx2.exit105.i

bb.t:                                             ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsacUAxWRcRNR_9__iceoryx2.exit104.i
  call void @llvm.trap()
  unreachable

_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsacUAxWRcRNR_9__iceoryx2.exit105.i: ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsacUAxWRcRNR_9__iceoryx2.exit104.i
  %i.hd = getelementptr inbounds nuw i8, ptr %i.u, i64 6368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.hd, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !1283
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.u, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.04.i, i64 64, i1 false), !noalias !1283
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store i128 %.sroa.014.0.copyload.i, ptr %.sroa.55.0..sroa_idx.i, align 16, !noalias !1283
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.6.i, i64 48, i1 false), !noalias !1283
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2488) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(2488) %i.ac, i64 2488, i1 false), !noalias !1283
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 2616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, i64 24, i1 false), !noalias !1283
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 2640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.9.i, i64 24, i1 false), !noalias !1283
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 2664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(888) %.sroa.10.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(888) %.sroa.10.i, i64 888, i1 false), !noalias !1283
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 3552
  store ptr %.val.i, ptr %.sroa.11.0..sroa_idx.i, align 16, !noalias !1283
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 3560
  store ptr %.val96.i, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !1283
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 3568
  store i64 %i.gm, ptr %.sroa.13.0..sroa_idx.i, align 16, !noalias !1283
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 3576
  store i64 %i.go, ptr %.sroa.14.0..sroa_idx.i, align 8, !noalias !1283
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 3584
  store i64 %i.gt, ptr %.sroa.15.0..sroa_idx.i, align 16, !noalias !1283
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 3592
  store i64 %.sroa.0.0.i.i.i, ptr %.sroa.16.0..sroa_idx.i, align 8, !noalias !1283
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 3600
  store i64 0, ptr %.sroa.17.0..sroa_idx.i, align 16, !noalias !1283
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 3608
  store i64 %i.bt, ptr %.sroa.18.0..sroa_idx.i, align 8, !noalias !1283
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 3616
  store i64 -1, ptr %.sroa.19.0..sroa_idx.i, align 16, !noalias !1283
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 3624
  store i8 %i.gv, ptr %.sroa.20.0..sroa_idx.i, align 8, !noalias !1283
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 3625
  store i8 %i.ha, ptr %.sroa.21.0..sroa_idx.i, align 1, !noalias !1283
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 3626
  store i8 %i.er, ptr %.sroa.22.0..sroa_idx.i, align 2, !noalias !1283
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 3627
  store i8 0, ptr %.sroa.23.0..sroa_idx.i, align 1, !noalias !1283
  %i.he = getelementptr inbounds nuw i8, ptr %i.u, i64 6272
  store i64 0, ptr %i.he, align 16, !noalias !1283
  %i.hf = getelementptr inbounds nuw i8, ptr %i.u, i64 4992
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1280) %i.hf, ptr noundef nonnull align 16 dereferenceable(1280) %i.al, i64 1280, i1 false), !noalias !1283
  %i.hg = getelementptr inbounds nuw i8, ptr %i.u, i64 6304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.hg, ptr noundef nonnull align 8 dereferenceable(64) %i.s, i64 64, i1 false), !noalias !1283
  %i.hh = getelementptr inbounds nuw i8, ptr %i.u, i64 6392
  store ptr %.val95.i, ptr %i.hh, align 8, !noalias !1283
  %i.hi = getelementptr inbounds nuw i8, ptr %i.u, i64 3632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1360) %i.hi, ptr noundef nonnull align 8 dereferenceable(1360) %i.aq, i64 1360, i1 false), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E3newCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.v, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(6400) %i.u) #18, !noalias !1284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1283
  %i.hj = load i8, ptr %i.v, align 8, !range !16, !noalias !1283, !noundef !11
  %i.hk = trunc nuw i8 %i.hj to i1
  br i1 %i.hk, label %bb.v, label %bb.w

.lr.ph.i:                                         ; preds = %bb.q, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCsacUAxWRcRNR_9__iceoryx2.exit.i
  %.sroa.075.0115.i = phi i8 [ %i.hl, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCsacUAxWRcRNR_9__iceoryx2.exit.i ], [ 0, %bb.q ]
  %i.hl = add nuw i8 %.sroa.075.0115.i, 1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1283
  call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_stateNtB2_12SegmentState3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.z, i64 noundef %.sroa.0.0.i.i.i) #18, !noalias !1284
  %i.hm = load i64, ptr %i.gg, align 8, !alias.scope !1303, !noalias !1304, !noundef !11 ; 3 uses
  %i.hn = load i64, ptr %i.aa, align 8, !range !13, !alias.scope !1303, !noalias !1304, !noundef !11
  %i.ho = icmp eq i64 %i.hm, %i.hn
  br i1 %i.ho, label %bb.u, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCsacUAxWRcRNR_9__iceoryx2.exit.i

bb.u:                                             ; preds = %.lr.ph.i
  call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8grow_oneCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa) #21, !noalias !1305
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCsacUAxWRcRNR_9__iceoryx2.exit.i

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCsacUAxWRcRNR_9__iceoryx2.exit.i: ; preds = %bb.u, %.lr.ph.i
  %i.hp = load ptr, ptr %i.gf, align 8, !alias.scope !1303, !noalias !1304, !nonnull !11, !noundef !11
  %i.hq = getelementptr inbounds nuw [32 x i8], ptr %i.hp, i64 %i.hm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hq, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.z, i64 32, i1 false), !noalias !1284
  %i.hr = add i64 %i.hm, 1
  store i64 %i.hr, ptr %i.gg, align 8, !alias.scope !1303, !noalias !1304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1283
  %exitcond.not.i = icmp eq i8 %i.hl, %i.er
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.v:                                             ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsacUAxWRcRNR_9__iceoryx2.exit105.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1283
  %i.hs = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.ht = load i8, ptr %i.hs, align 1, !range !16, !noalias !1283, !noundef !11
  store i8 %i.ht, ptr %i.r, align 1, !noalias !1283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1283
  store ptr %i.as, ptr %i.q, align 8, !noalias !1283
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
end_hunk_0
begin_hunk_1_@_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_17PortFactoryServerNtNtB9_14ipc_threadsafe7ServiceSNtNtB9_7builder19CustomPayloadMarkerNtB1Y_18CustomHeaderMarkerB1V_B2w_E6createCsacUAxWRcRNR_9__iceoryx2:.split
bb.w:                                             ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsacUAxWRcRNR_9__iceoryx2.exit105.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !noalias !1283, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1283
  %i.hx = load i64, ptr %i.bx, align 8, !alias.scope !1282, !noalias !1284, !noundef !11
  %.val87.i = load ptr, ptr %i.bb, align 8, !noalias !1284, !nonnull !11, !noundef !11
  %i.hy = getelementptr inbounds nuw i8, ptr %.val87.i, i64 2248
  %i.hz = call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.hy) #18, !noalias !1284
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 2
  %i.ib = load i8, ptr %i.ia, align 2, !range !16, !noalias !1284, !noundef !11
  store ptr %i.hw, ptr %i.o, align 8, !noalias !1283
  %i.ic = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.hx, ptr %i.ic, align 8, !noalias !1283
  %i.id = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store i8 %i.ib, ptr %i.id, align 8, !noalias !1283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1283
  %i.ie = call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o) #18, !noalias !1284
  store ptr %i.ie, ptr %i.n, align 8, !noalias !1283
  %i.if = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n) #18, !noalias !1284 ; 6 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 4992
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 6256
  %i.ii = atomicrmw add ptr %i.ih, i8 1 monotonic, align 1, !noalias !1284 ; 0 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 3627
  %i.ik = atomicrmw add ptr %i.ij, i8 1 monotonic, align 1, !noalias !1284 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1283
  store i8 2, ptr %i.a, align 1, !noalias !1283
  %i.il = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.im = getelementptr inbounds nuw i8, ptr %i.if, i64 6304
  call void @_RINvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_14ContainerStateNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ClientDetailsE8for_eachNCNvMs0_NtNtB1u_4port6serverINtB34_17SharedServerStateNtNtB1s_14ipc_threadsafe7ServiceE24force_update_connections0ECsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.im, ptr noundef nonnull align 16 %i.if, ptr noalias nofree noundef nonnull dereferenceable(2) %i.a) #18, !noalias !1284
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE30finish_update_connection_cycleCsacUAxWRcRNR_9__iceoryx2(ptr noundef nonnull align 16 %i.if) #18, !noalias !1284
  call fastcc void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service14ipc_threadsafe7ServiceE30finish_update_connection_cycleCsacUAxWRcRNR_9__iceoryx2(ptr noundef nonnull align 16 %i.ig) #18, !noalias !1284
  %i.in = load i8, ptr %i.a, align 1, !range !26, !noalias !1283, !noundef !11 ; 2 uses
  %i.io = load i8, ptr %i.il, align 1, !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1283
  %.not77.i = icmp eq i8 %i.in, 2
  br i1 %.not77.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1283
  store i8 %i.in, ptr %i.m, align 1, !noalias !1283
  %i.ip = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store i8 %i.io, ptr %i.ip, align 1, !noalias !1283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1283
  store ptr %i.o, ptr %i.l, align 8, !noalias !1283
  %.sroa.458.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXsb_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1D_18CustomHeaderMarkerB1A_B2b_ENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCsacUAxWRcRNR_9__iceoryx2, ptr %.sroa.458.0..sroa_idx.i, align 8, !noalias !1283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1283
  store ptr %i.m, ptr %i.k, align 8, !noalias !1283
  %.sroa.462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs2_NtNtCsg6ZEkMtNi4J_8iceoryx24port18update_connectionsNtB5_17ConnectionFailureNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.462.0..sroa_idx.i, align 8, !noalias !1283
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @1, ptr noundef nonnull %i.l, ptr noundef nonnull @127, ptr noundef nonnull %i.k) #18, !noalias !1284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1283
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #18, !noalias !1284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1283
  fence syncscope("singlethread") seq_cst
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1283
  %.val92.i = load ptr, ptr %i.bb, align 8, !noalias !1284, !nonnull !11, !noundef !11
  %i.iq = getelementptr inbounds nuw i8, ptr %.val92.i, i64 16
  %i.ir = call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigEINtB7_14DynamicStorageB1r_E3getCsacUAxWRcRNR_9__iceoryx2(ptr noundef nonnull align 8 %i.iq) #18, !noalias !1284
  %i.is = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig16request_response(ptr noundef nonnull align 8 %i.ir) #18, !noalias !1284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1283
  %.val80.i = load ptr, ptr %i.bb, align 8, !noalias !1284, !nonnull !11, !noundef !11
  %i.it = getelementptr inbounds nuw i8, ptr %.val80.i, i64 7280
  %.val94.i = load ptr, ptr %i.it, align 8, !noalias !1284, !nonnull !11, !noundef !11
  %i.iu = getelementptr inbounds nuw i8, ptr %.val94.i, i64 6312
  %i.iv = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iv, ptr noundef nonnull align 4 dereferenceable(16) %i.iu, i64 16, i1 false), !noalias !1284
  %i.iw = load i64, ptr %i.bw, align 16, !alias.scope !1282, !noalias !1284, !noundef !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.ar, i64 16, i1 false), !noalias !1283
  %i.ix = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %i.dq, ptr %i.ix, align 8, !noalias !1283
  %i.iy = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %.sroa.0.0.i.i.i, ptr %i.iy, align 8, !noalias !1283
  %i.iz = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i64 %i.iw, ptr %i.iz, align 8, !noalias !1283
  %i.ja = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i32 %..i.i, ptr %i.ja, align 8, !noalias !1283
  %i.jb = getelementptr inbounds nuw i8, ptr %i.i, i64 60
  store i8 %i.er, ptr %i.jb, align 4, !noalias !1283
  call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_responseNtB2_13DynamicConfig13add_server_id(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noundef nonnull align 8 %i.is, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.i) #18, !noalias !1284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1283
  %i.jc = load i64, ptr %i.j, align 8, !range !22, !noalias !1283, !noundef !11
  %i.jd = trunc nuw i64 %i.jc to i1
  br i1 %i.jd, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1283
  %i.je = call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o) #18, !noalias !1284
  store ptr %i.je, ptr %i.e, align 8, !noalias !1283
  %i.jf = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e) #18, !noalias !1284
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 6272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.jg, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !1284
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #18, !noalias !1284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1283
  %.sroa.019.0.copyload20 = load i8, ptr %i.o, align 8, !noalias !1282 ; 2 uses
  %.sroa.10.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.10, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.10.0..sroa_idx21, i64 15, i1 false), !noalias !1282
  %.sroa.1022.0.copyload24 = load i8, ptr %i.id, align 8, !noalias !1282 ; 2 uses
  %.sroa.15.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.o, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.0..sroa_idx25, i64 7, i1 false), !noalias !1282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !1283
  call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  %i.jh = load ptr, ptr %i.cn, align 16, !alias.scope !1309, !noalias !1284, !align !12, !noundef !11 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ji = load ptr, ptr %i.jh, align 8, !noalias !1310, !nonnull !11, !noundef !11
  call void %i.ji(ptr noundef nonnull align 16 dereferenceable(48) %i.cm) #18, !noalias !1284, !inline_history !1264
  br label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1D_18CustomHeaderMarkerB1A_B2b_E3newCsacUAxWRcRNR_9__iceoryx2.exit

bb.ab:                                            ; preds = %bb.z
  %.val.i.i.i.i = load ptr, ptr %i.cm, align 16, !alias.scope !1309, !noalias !1284 ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.au, i64 168
  %.val1.i.i.i.i = load ptr, ptr %i.jj, align 8, !alias.scope !1309, !noalias !1284, !nonnull !11, !align !12, !noundef !11 ; 3 uses
  %i.jk = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !11, !noalias !1310 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.jk, null
  br i1 %.not.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  call void %i.jk(ptr noundef nonnull %.val.i.i.i.i) #19, !noalias !1310, !inline_history !1265
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.jl = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.jm = load i64, ptr %i.jl, align 8, !range !13, !invariant.load !11, !noalias !1310 ; 2 uses
  %i.jn = icmp eq i64 %i.jm, 0
  br i1 %i.jn, label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1D_18CustomHeaderMarkerB1A_B2b_E3newCsacUAxWRcRNR_9__iceoryx2.exit, label %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.ad
  %i.jo = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.jp = load i64, ptr %i.jo, align 8, !range !14, !invariant.load !11, !noalias !1310
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 0, -9223372036317904881) %i.jm, i64 noundef range(i64 1, 536870913) %i.jp) #18, !noalias !1310
  br label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1D_18CustomHeaderMarkerB1A_B2b_E3newCsacUAxWRcRNR_9__iceoryx2.exit

bb.ae:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1283
  store ptr %i.as, ptr %i.h, align 8, !noalias !1283
  %.sroa.466.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCsacUAxWRcRNR_9__iceoryx2, ptr %.sroa.466.0..sroa_idx.i, align 8, !noalias !1283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1283
  %.val86.i = load ptr, ptr %i.bb, align 8, !noalias !1284, !nonnull !11, !noundef !11
  %i.jq = getelementptr inbounds nuw i8, ptr %.val86.i, i64 2248
  %i.jr = call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.jq) #18, !noalias !1284
  %i.js = getelementptr i8, ptr %i.jr, i64 32
  %.val101.i = load i64, ptr %i.js, align 8, !noalias !1284, !noundef !11
  store i64 %.val101.i, ptr %i.g, align 8, !noalias !1283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1283
  store ptr %i.at, ptr %i.f, align 8, !noalias !1283
  %.sroa.470.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsacUAxWRcRNR_9__iceoryx2, ptr %.sroa.470.0..sroa_idx.i, align 8, !noalias !1283
  %i.jt = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.jt, align 8, !noalias !1283
  %.sroa.474.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.474.0..sroa_idx.i, align 8, !noalias !1283
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.h, ptr noundef nonnull @128, ptr noundef nonnull %i.f) #18, !noalias !1284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1283
  call void @llvm.experimental.noalias.scope.decl(metadata !1311)
  call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  %i.ju = load ptr, ptr %i.o, align 8, !alias.scope !1315, !noalias !1283, !nonnull !11, !noundef !11
  %i.jv = atomicrmw sub ptr %i.ju, i64 1 release, align 8, !noalias !1316
  %i.jw = icmp eq i64 %i.jv, 1
  br i1 %i.jw, label %bb.af, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBI_7service14ipc_threadsafe7ServiceSNtNtB1s_7builder19CustomPayloadMarkerNtB26_18CustomHeaderMarkerB23_B2F_EECsacUAxWRcRNR_9__iceoryx2.exit.i

bb.af:                                            ; preds = %bb.ae
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1I_7service14ipc_threadsafe7ServiceEEE9drop_slowCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.o) #21, !noalias !1284
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBI_7service14ipc_threadsafe7ServiceSNtNtB1s_7builder19CustomPayloadMarkerNtB26_18CustomHeaderMarkerB23_B2F_EECsacUAxWRcRNR_9__iceoryx2.exit.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBI_7service14ipc_threadsafe7ServiceSNtNtB1s_7builder19CustomPayloadMarkerNtB26_18CustomHeaderMarkerB23_B2F_EECsacUAxWRcRNR_9__iceoryx2.exit.i: ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1283
  br label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBI_7service14ipc_threadsafe7ServiceSNtNtB1s_7builder19CustomPayloadMarkerNtB26_18CustomHeaderMarkerB23_B2F_EECsacUAxWRcRNR_9__iceoryx2.exit.i, %bb.v
  %.sroa.019.0 = phi i8 [ 2, %bb.v ], [ 0, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBI_7service14ipc_threadsafe7ServiceSNtNtB1s_7builder19CustomPayloadMarkerNtB26_18CustomHeaderMarkerB23_B2F_EECsacUAxWRcRNR_9__iceoryx2.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !1283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !1283
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsacUAxWRcRNR_9__iceoryx2.exit.i

2:                                                ; preds = %bb.n
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment11DataSegmentNtNtNtB16_7service14ipc_threadsafe7ServiceENtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory23SharedMemoryCreateErrorEECsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef align 8 dereferenceable(2488) %i.ad) #18, !noalias !1284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1283
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #20, !noalias !1284
  unreachable

.critedge.i:                                      ; preds = %.thread.i, %bb.a
  %.sroa.019.2 = phi i8 [ 3, %bb.a ], [ 1, %.thread.i ] ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.au, i64 112
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %3) #18, !noalias !1284
  %4 = load i128, ptr %i.au, align 16, !range !23, !alias.scope !1317, !noalias !1284, !noundef !11
  %5 = icmp eq i128 %4, 0
  br i1 %5, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsacUAxWRcRNR_9__iceoryx2.exit.i, label %6

6:                                                ; preds = %.critedge.i
  %7 = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24port1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %7) #18, !noalias !1284
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsacUAxWRcRNR_9__iceoryx2.exit.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsacUAxWRcRNR_9__iceoryx2.exit.i: ; preds = %6, %.critedge.i, %bb.ag
  %.sroa.019.1 = phi i8 [ %.sroa.019.2, %.critedge.i ], [ %.sroa.019.2, %6 ], [ %.sroa.019.0, %bb.ag ]
  %i.jx = getelementptr inbounds nuw i8, ptr %i.au, i64 160 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  call void @llvm.experimental.noalias.scope.decl(metadata !1320)
  %i.jy = getelementptr inbounds nuw i8, ptr %i.au, i64 192
  %i.jz = load ptr, ptr %i.jy, align 16, !alias.scope !1321, !noalias !1284, !align !12, !noundef !11 ; 2 uses
  %.not.i.i.i106.i = icmp eq ptr %i.jz, null
  br i1 %.not.i.i.i106.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsacUAxWRcRNR_9__iceoryx2.exit.i
  %i.ka = load ptr, ptr %i.jz, align 8, !noalias !1322, !nonnull !11, !noundef !11
  call void %i.ka(ptr noundef nonnull align 16 dereferenceable(48) %i.jx) #18, !noalias !1284, !inline_history !1264
  br label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1D_18CustomHeaderMarkerB1A_B2b_E3newCsacUAxWRcRNR_9__iceoryx2.exit.thread

bb.ai:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsacUAxWRcRNR_9__iceoryx2.exit.i
  %.val.i.i.i107.i = load ptr, ptr %i.jx, align 16, !alias.scope !1321, !noalias !1284 ; 4 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.au, i64 168
  %.val1.i.i.i108.i = load ptr, ptr %i.kb, align 8, !alias.scope !1321, !noalias !1284, !nonnull !11, !align !12, !noundef !11 ; 3 uses
  %i.kc = load ptr, ptr %.val1.i.i.i108.i, align 8, !invariant.load !11, !noalias !1322 ; 2 uses
  %.not.i.i.i.i109.i = icmp eq ptr %i.kc, null
  br i1 %.not.i.i.i.i109.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i107.i) ]
  call void %i.kc(ptr noundef nonnull %.val.i.i.i107.i) #19, !noalias !1322, !inline_history !1265
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.kd = getelementptr inbounds nuw i8, ptr %.val1.i.i.i108.i, i64 8
  %i.ke = load i64, ptr %i.kd, align 8, !range !13, !invariant.load !11, !noalias !1322 ; 2 uses
  %i.kf = icmp eq i64 %i.ke, 0
  br i1 %i.kf, label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1D_18CustomHeaderMarkerB1A_B2b_E3newCsacUAxWRcRNR_9__iceoryx2.exit.thread, label %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i110.i

_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i110.i: ; preds = %bb.ak
  %i.kg = getelementptr inbounds nuw i8, ptr %.val1.i.i.i108.i, i64 16
  %i.kh = load i64, ptr %i.kg, align 8, !range !14, !invariant.load !11, !noalias !1322
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i107.i) ]
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i107.i, i64 noundef range(i64 0, -9223372036317904881) %i.ke, i64 noundef range(i64 1, 536870913) %i.kh) #18, !noalias !1322
  br label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1D_18CustomHeaderMarkerB1A_B2b_E3newCsacUAxWRcRNR_9__iceoryx2.exit.thread

_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1D_18CustomHeaderMarkerB1A_B2b_E3newCsacUAxWRcRNR_9__iceoryx2.exit.thread: ; preds = %bb.ak, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i110.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.al

_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1D_18CustomHeaderMarkerB1A_B2b_E3newCsacUAxWRcRNR_9__iceoryx2.exit: ; preds = %bb.aa, %bb.ad, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %.not = icmp eq i8 %.sroa.1022.0.copyload24, 2
  br i1 %.not, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1D_18CustomHeaderMarkerB1A_B2b_E3newCsacUAxWRcRNR_9__iceoryx2.exit.thread, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1D_18CustomHeaderMarkerB1A_B2b_E3newCsacUAxWRcRNR_9__iceoryx2.exit
  %.sroa.019.330 = phi i8 [ %.sroa.019.1, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1D_18CustomHeaderMarkerB1A_B2b_E3newCsacUAxWRcRNR_9__iceoryx2.exit.thread ], [ %.sroa.019.0.copyload20, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1D_18CustomHeaderMarkerB1A_B2b_E3newCsacUAxWRcRNR_9__iceoryx2.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store ptr %i.ax, ptr %i.av, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr @_RNvXsr_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.av, ptr noundef nonnull @94, ptr noundef nonnull inttoptr (i64 67 to ptr)) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  store i8 %.sroa.019.330, ptr %0, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.ki, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  br label %bb.an

bb.am:                                            ; preds = %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1D_18CustomHeaderMarkerB1A_B2b_E3newCsacUAxWRcRNR_9__iceoryx2.exit
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.10, i64 15, i1 false)
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.440.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  store i8 %.sroa.019.0.copyload20, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.1022.0.copyload24, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax) #18
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_17PortFactoryServerNtNtB9_16local_threadsafe7ServiceSNtNtB9_7builder19CustomPayloadMarkerNtB20_18CustomHeaderMarkerB1X_B2y_E24___internal_partial_cloneCsacUAxWRcRNR_9__iceoryx2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([240 x i8]) align 16 captures(none) dereferenceable(240) initializes((208, 232)) %0, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(240) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !11, !align !12, !noundef !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.d, ptr noundef nonnull align 16 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_RNvMs6_NtCsg6ZEkMtNi4J_8iceoryx24portINtB5_18DegradationHandlerKj18_E8new_with(ptr noalias nofree noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.e, i8 noundef 1) #18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_RNvMs6_NtCsg6ZEkMtNi4J_8iceoryx24portINtB5_18DegradationHandlerKj18_E8new_with(ptr noalias nofree noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.f, i8 noundef 1) #18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.b, ptr %i.g, align 8
  store i128 0, ptr %0, align 16
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr @18, ptr %.sroa.42.0..sroa_idx, align 16
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_17PortFactoryServerNtNtB9_16local_threadsafe7ServiceSNtNtB9_7builder19CustomPayloadMarkerNtB20_18CustomHeaderMarkerB1X_B2y_E32max_loaned_responses_per_requestCsacUAxWRcRNR_9__iceoryx2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([240 x i8]) align 16 captures(none) dereferenceable(240) initializes((0, 240)) %0, ptr noalias nofree noundef align 16 captures(address) dead_on_return dereferenceable(240) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsg_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_17PortFactoryServerNtNtB9_16local_threadsafe7ServiceSNtNtB9_7builder19CustomPayloadMarkerNtB20_18CustomHeaderMarkerB1X_B2y_ENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCsacUAxWRcRNR_9__iceoryx2, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @1, ptr noundef nonnull %i.a, ptr noundef nonnull @93, ptr noundef nonnull inttoptr (i64 169 to ptr)) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = call i64 @llvm.umax.i64(i64 %2, i64 1)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 216
  store i64 %i.c, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %0, ptr noundef nonnull align 16 dereferenceable(240) %1, i64 240, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_17PortFactoryServerNtNtB9_16local_threadsafe7ServiceSNtNtB9_7builder19CustomPayloadMarkerNtB20_18CustomHeaderMarkerB1X_B2y_E3newCsacUAxWRcRNR_9__iceoryx2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([240 x i8]) align 16 captures(none) dereferenceable(240) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 6144
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 269
  %i.e = load i8, ptr %i.d, align 1, !range !16, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 265
  %i.g = load i8, ptr %i.f, align 1, !range !26, !noundef !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.i = load i64, ptr %i.h, align 8, !noundef !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_RNvMs6_NtCsg6ZEkMtNi4J_8iceoryx24portINtB5_18DegradationHandlerKj18_E8new_with(ptr noalias nofree noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.j, i8 noundef 1) #18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_RNvMs6_NtCsg6ZEkMtNi4J_8iceoryx24portINtB5_18DegradationHandlerKj18_E8new_with(ptr noalias nofree noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.k, i8 noundef 1) #18
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 1, ptr %i.m, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 %i.g, ptr %.sroa.5.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 225
  store i8 %i.e, ptr %.sroa.6.0..sroa_idx, align 1
  store i128 0, ptr %0, align 16
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr @19, ptr %.sroa.45.0..sroa_idx, align 16
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_17PortFactoryServerNtNtB9_16local_threadsafe7ServiceSNtNtB9_7builder19CustomPayloadMarkerNtB20_18CustomHeaderMarkerB1X_B2y_E6createCsacUAxWRcRNR_9__iceoryx2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 16 captures(address) dead_on_return dereferenceable(240) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [2 x i8], align 1                 ; 6 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [64 x i8], align 8                ; 10 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [2 x i8], align 1                 ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 14 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [1 x i8], align 1                 ; 4 uses
  %i.s = alloca [64 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [6336 x i8], align 16             ; 29 uses
  %i.v = alloca [16 x i8], align 8                ; 7 uses
  %i.w = alloca [64 x i8], align 16               ; 4 uses
  %i.x = alloca [48 x i8], align 16               ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [32 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.04.i = alloca [64 x i8], align 16        ; 5 uses
  %.sroa.6.i = alloca [48 x i8], align 16         ; 5 uses
  %.sroa.7.i = alloca [24 x i8], align 16         ; 5 uses
  %.sroa.8.i = alloca [24 x i8], align 8          ; 5 uses
  %i.ac = alloca [2712 x i8], align 16            ; 8 uses
  %.sroa.10.i = alloca [888 x i8], align 8        ; 5 uses
  %i.ad = alloca [2712 x i8], align 8             ; 6 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [264 x i8], align 8              ; 7 uses
  %i.ah = alloca [32 x i8], align 8               ; 6 uses
  %.sroa.5.i = alloca [32 x i8], align 8          ; 4 uses
  %i.ai = alloca [888 x i8], align 8              ; 4 uses
  %i.aj = alloca [32 x i8], align 8               ; 6 uses
  %i.ak = alloca [32 x i8], align 8               ; 4 uses
  %i.al = alloca [1280 x i8], align 16            ; 20 uses
  %i.am = alloca [32 x i8], align 8               ; 7 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [1 x i8], align 1                ; 4 uses
  %i.ap = alloca [1072 x i8], align 8             ; 7 uses
  %i.aq = alloca [1072 x i8], align 8             ; 10 uses
  %i.ar = alloca [16 x i8], align 16              ; 8 uses
  %i.as = alloca [16 x i8], align 8               ; 11 uses
  %i.at = alloca [16 x i8], align 8               ; 11 uses
  %i.au = alloca [240 x i8], align 16             ; 23 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %.sroa.10 = alloca [15 x i8], align 1           ; 5 uses
  %.sroa.15 = alloca [7 x i8], align 1            ; 5 uses
  %i.aw = alloca [16 x i8], align 8               ; 5 uses
  %i.ax = alloca [24 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store ptr %1, ptr %i.aw, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr @_RNvXsg_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_17PortFactoryServerNtNtB9_16local_threadsafe7ServiceSNtNtB9_7builder19CustomPayloadMarkerNtB20_18CustomHeaderMarkerB1X_B2y_ENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCsacUAxWRcRNR_9__iceoryx2, ptr %.sroa.45.0..sroa_idx, align 8
  call void @_RNvNvNtCsbqH9stoieM8_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ax, ptr noundef nonnull @1, ptr noundef nonnull %i.aw) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.au, ptr noundef nonnull align 16 dereferenceable(240) %1, i64 240, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !1377
  store ptr @123, ptr %i.at, align 8, !noalias !1377, !captures !15
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 28, ptr %i.ay, align 8, !noalias !1377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !1377
  store ptr @124, ptr %i.as, align 8, !noalias !1377, !captures !15
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 13, ptr %i.az, align 8, !noalias !1377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !1377
  call void @_RNvMs15_NtCsg6ZEkMtNi4J_8iceoryx211identifiersNtB6_14UniqueServerId3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.ar) #18, !noalias !1377
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 232
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !1376, !noalias !1378, !nonnull !11, !align !12, !noundef !11 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !1377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !1377
  %.val88.i = load ptr, ptr %i.bb, align 8, !noalias !1377, !nonnull !11, !noundef !11
  %i.bc = getelementptr inbounds nuw i8, ptr %.val88.i, i64 6144
  %.sroa.014.0.copyload.i = load i128, ptr %i.ar, align 16, !noalias !1377 ; 4 uses
  call void @_RNvMsn_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB5_10SharedNodeNtNtNtB7_7service16local_threadsafe7ServiceE15create_port_tagCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull sret([1072 x i8]) align 8 captures(address) dereferenceable(1072) %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @124, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @123, i64 noundef 28, i128 noundef %.sroa.014.0.copyload.i) #18, !noalias !1377
  %i.bd = load ptr, ptr %i.ap, align 8, !noalias !1377, !noundef !11
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !1377
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bg = load i8, ptr %i.bf, align 8, !range !39, !noalias !1377, !noundef !11
  store i8 %i.bg, ptr %i.ao, align 1, !noalias !1377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !1377
  store ptr %i.as, ptr %i.an, align 8, !noalias !1377
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCsacUAxWRcRNR_9__iceoryx2, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !1377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !1377
  store ptr %i.at, ptr %i.am, align 8, !noalias !1377
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsacUAxWRcRNR_9__iceoryx2, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !1377
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %i.ao, ptr %i.bh, align 8, !noalias !1377
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr @_RNvXs6_NtCs7gufeB8TUC6_12iceoryx2_cal14static_storageNtB5_24StaticStorageCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.426.0..sroa_idx.i, align 8, !noalias !1377
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.an, ptr noundef nonnull @116, ptr noundef nonnull %i.am) #18, !noalias !1378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !1377
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.bi) #18, !noalias !1378
  br label %.critedge.i

bb.b:                                             ; preds = %.split
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1072) %i.aq, ptr noundef nonnull align 8 dereferenceable(1072) %i.ap, i64 1072, i1 false), !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1377
  %.val89.i = load ptr, ptr %i.bb, align 8, !noalias !1378, !nonnull !11, !noundef !11
  %i.bj = getelementptr inbounds nuw i8, ptr %.val89.i, i64 1112
  %i.bk = call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.bj) #18, !noalias !1378 ; 16 uses
  %.val93.i = load ptr, ptr %i.bb, align 8, !noalias !1378, !nonnull !11, !noundef !11
  %i.bl = getelementptr inbounds nuw i8, ptr %.val93.i, i64 4296
  %i.bm = call noundef nonnull align 8 ptr @_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config17messaging_patternNtB4_16MessagingPattern16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1848) %i.bl) #18, !noalias !1378 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !1378, !noundef !11
  %i.bp = getelementptr i8, ptr %i.bm, i64 8
  %.val82.i = load i64, ptr %i.bp, align 8, !noalias !1378, !noundef !11
  %i.bq = getelementptr i8, ptr %i.bm, i64 32
  %.val83.i = load i64, ptr %i.bq, align 8, !noalias !1378, !noundef !11
  %i.br = shl i64 %.val82.i, 1
  %i.bs = mul i64 %i.br, %.val83.i
  %i.bt = add i64 %i.bs, %i.bo
  %.val92.i = load ptr, ptr %i.bb, align 8, !noalias !1378, !nonnull !11, !noundef !11
  %i.bu = getelementptr inbounds nuw i8, ptr %.val92.i, i64 4296
  %i.bv = call noundef nonnull align 8 ptr @_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config17messaging_patternNtB4_16MessagingPattern16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1848) %i.bu) #18, !noalias !1378 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.au, i64 208 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.au, i64 216 ; 3 uses
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !1376, !noalias !1378, !noundef !11
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !1379, !noalias !1378, !noundef !11
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !1379, !noalias !1378, !noundef !11
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !1379, !noalias !1378, !noundef !11
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !1379, !noalias !1378, !noundef !11
  %i.ch = add i64 %i.ce, %i.by
  %i.ci = add i64 %i.ch, %i.cg
  %i.cj = shl i64 %i.ca, 1
  %i.ck = mul i64 %i.cj, %i.cc
  %i.cl = mul i64 %i.ck, %i.ci                    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.au, i64 160 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1380)
  call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.au, i64 192 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 16, !alias.scope !1382, !noalias !1378, !align !12, !noundef !11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !1383, !nonnull !11, !noundef !11
  %i.cr = call noundef i64 %i.cq(ptr noundef nonnull readonly align 16 dereferenceable(48) %i.cm, i64 noundef %i.cl) #18, !noalias !1378, !inline_history !1332
  br label %_RNvMsf_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_28PreallocatedResponseOverrideKj18_E4callCsacUAxWRcRNR_9__iceoryx2.exit.i

bb.d:                                             ; preds = %bb.b
  %i.cs = load ptr, ptr %i.cm, align 16, !alias.scope !1382, !noalias !1378, !nonnull !11, !noundef !11
  %i.ct = getelementptr inbounds nuw i8, ptr %i.au, i64 168
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !1382, !noalias !1378, !nonnull !11, !align !12, !noundef !11
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8, !invariant.load !11, !noalias !1383, !nonnull !11
  %i.cx = call noundef i64 %i.cw(ptr noundef nonnull %i.cs, i64 noundef %i.cl) #19, !noalias !1383, !inline_history !1332
  br label %_RNvMsf_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_28PreallocatedResponseOverrideKj18_E4callCsacUAxWRcRNR_9__iceoryx2.exit.i

_RNvMsf_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_28PreallocatedResponseOverrideKj18_E4callCsacUAxWRcRNR_9__iceoryx2.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi i64 [ %i.cr, %bb.c ], [ %i.cx, %bb.d ] ; 5 uses
  %.val95.i = load ptr, ptr %i.bb, align 8, !noalias !1378, !nonnull !11, !noundef !11
  %i.cy = getelementptr i8, ptr %.val95.i, i64 832
  %.val78.i = load ptr, ptr %i.cy, align 8, !noalias !1378, !nonnull !11, !noundef !11
  %i.cz = getelementptr inbounds nuw i8, ptr %.val78.i, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !1378, !noundef !11
  %i.db = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig16request_response(ptr noundef nonnull align 8 %i.da) #18, !noalias !1378 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 80
  %.val87.i = load ptr, ptr %i.bb, align 8, !noalias !1378, !nonnull !11, !noundef !11
  %i.dd = getelementptr inbounds nuw i8, ptr %.val87.i, i64 6144
  %.val81.i = load ptr, ptr %i.dd, align 8, !noalias !1378, !nonnull !11, !noundef !11
  %i.de = getelementptr inbounds nuw i8, ptr %.val81.i, i64 256
  %i.df = load i64, ptr %i.de, align 8, !noalias !1378, !noundef !11 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 96 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !noalias !1378, !noundef !11 ; 2 uses
  %i.di = add i64 %i.dh, %i.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !1377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !1377
  call void @_RINvMs5_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB6_14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtBa_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorE7from_fnNCNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB4X_6ServerNtNtNtB51_7service16local_threadsafe7ServiceSNtNtB5S_7builder19CustomPayloadMarkerNtB6z_18CustomHeaderMarkerB6w_B78_E3new0ECsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @_RNvNvMs_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB6_13HeapAllocator6global9ALLOCATOR, i64 noundef %i.dh) #18, !noalias !1378
  call void @llvm.experimental.noalias.scope.decl(metadata !1384)
  call void @llvm.experimental.noalias.scope.decl(metadata !1385)
  %i.dj = load ptr, ptr %i.aj, align 8, !alias.scope !1385, !noalias !1386, !noundef !11
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.e, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2.exit.i, !prof !33

bb.e:                                             ; preds = %_RNvMsf_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_28PreallocatedResponseOverrideKj18_E4callCsacUAxWRcRNR_9__iceoryx2.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1387
  %i.dl = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.dm = load i8, ptr %i.dl, align 8, !range !39, !alias.scope !1385, !noalias !1386, !noundef !11
  store i8 %i.dm, ptr %i.c, align 1, !noalias !1387
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 31, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #20, !noalias !1388
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2.exit.i: ; preds = %_RNvMsf_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_28PreallocatedResponseOverrideKj18_E4callCsacUAxWRcRNR_9__iceoryx2.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.aj, i64 32, i1 false), !alias.scope !1389, !noalias !1390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1377
  %.val99.i = load ptr, ptr %i.bb, align 8, !noalias !1378, !nonnull !11, !noundef !11 ; 2 uses
  %i.dn = atomicrmw add ptr %.val99.i, i64 1 monotonic, align 8, !noalias !1378
  %i.do = icmp slt i64 %i.dn, 0
  br i1 %i.do, label %bb.f, label %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_16local_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsacUAxWRcRNR_9__iceoryx2.exit.i

bb.f:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2.exit.i
  call void @llvm.trap()
  unreachable

_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_16local_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsacUAxWRcRNR_9__iceoryx2.exit.i: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(888) %i.ai, ptr noundef nonnull align 8 dereferenceable(888) %i.dp, i64 888, i1 false), !noalias !1378
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !noalias !1378, !noundef !11 ; 4 uses
  %i.ds = load i8, ptr %i.bk, align 8, !range !16, !noalias !1378, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.du = load i8, ptr %i.dt, align 2, !range !16, !noalias !1378, !noundef !11
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_16local_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsacUAxWRcRNR_9__iceoryx2.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1377
  call void @_RNvMs5_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB5_14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorE3newCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @_RNvNvMs_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB6_13HeapAllocator6global9ALLOCATOR, i64 noundef %i.df) #18, !noalias !1378
  call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  %i.dw = load ptr, ptr %i.ah, align 8, !alias.scope !1391, !noalias !1392, !noundef !11
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.h, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2.exit.i, !prof !33

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1393
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.dz = load i8, ptr %i.dy, align 8, !range !39, !alias.scope !1391, !noalias !1392, !noundef !11
  store i8 %i.dz, ptr %i.b, align 1, !noalias !1393
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 31, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #20, !noalias !1394
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2.exit.i: ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ah, i64 32, i1 false), !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1377
  br label %bb.i

bb.i:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2.exit.i, %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_16local_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsacUAxWRcRNR_9__iceoryx2.exit.i
  %.sroa.03.0.i = phi i64 [ 1, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2.exit.i ], [ 0, %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_16local_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCsacUAxWRcRNR_9__iceoryx2.exit.i ]
  %i.ea = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.eb, ptr noundef nonnull align 16 dereferenceable(48) %i.ea, i64 48, i1 false), !noalias !1378
  %i.ec = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  call void @_RNvMs3_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service16local_threadsafe7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE3newCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.ec, i64 noundef %i.di) #18, !noalias !1378
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false), !noalias !1377
  %i.ed = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store i128 %.sroa.014.0.copyload.i, ptr %i.ed, align 16, !noalias !1377
  %i.ee = getelementptr inbounds nuw i8, ptr %i.al, i64 328
  store ptr %.val99.i, ptr %i.ee, align 8, !noalias !1377
  %i.ef = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  store i64 %i.dr, ptr %i.ef, align 16, !noalias !1377
  %i.eg = getelementptr inbounds nuw i8, ptr %i.al, i64 1264
  store i8 0, ptr %i.eg, align 16, !noalias !1377
  %i.eh = getelementptr inbounds nuw i8, ptr %i.al, i64 1224
  store i64 %.sroa.03.0.i, ptr %i.eh, align 8, !noalias !1377
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 1232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i, i64 32, i1 false), !noalias !1377
  %i.ei = getelementptr inbounds nuw i8, ptr %i.al, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(888) %i.ei, ptr noundef nonnull align 8 dereferenceable(888) %i.ai, i64 888, i1 false), !noalias !1377
  %i.ej = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  store i64 %i.dr, ptr %i.ej, align 8, !noalias !1377
  %i.ek = getelementptr inbounds nuw i8, ptr %i.al, i64 1265
  store i8 %i.ds, ptr %i.ek, align 1, !noalias !1377
  %i.el = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  store i64 1, ptr %i.el, align 16, !noalias !1377
  %i.em = getelementptr inbounds nuw i8, ptr %i.al, i64 320
  store i64 0, ptr %i.em, align 16, !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %.val86.i = load ptr, ptr %i.bb, align 8, !noalias !1378, !nonnull !11, !noundef !11
  %i.en = getelementptr inbounds nuw i8, ptr %.val86.i, i64 6144
  %.val80.i = load ptr, ptr %i.en, align 8, !noalias !1378, !nonnull !11, !noundef !11
  %i.eo = getelementptr inbounds nuw i8, ptr %.val80.i, i64 16 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.au, i64 224 ; 2 uses
  %i.eq = load i8, ptr %i.ep, align 16, !range !26, !alias.scope !1376, !noalias !1378, !noundef !11
  %i.er = icmp eq i8 %i.eq, 2                     ; 2 uses
  %..i.i = zext i1 %i.er to i32                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !1377
  call void @_RNvNtNtCsg6ZEkMtNi4J_8iceoryx27service13naming_scheme17data_segment_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(none) dereferenceable(264) %i.ag, i128 noundef %.sroa.014.0.copyload.i) #18, !noalias !1378
  %i.es = call noundef i8 @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service16local_threadsafe7ServiceE22max_number_of_segmentsCsacUAxWRcRNR_9__iceoryx2(i32 noundef %..i.i) #18, !noalias !1378 ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.bk, i64 952
  %i.eu = load i64, ptr %i.bw, align 16, !alias.scope !1376, !noalias !1378, !noundef !11
  call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bk, i64 1240
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !1395, !noalias !1378, !noundef !11 ; 6 uses
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %bb.j, label %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit.i

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtNtCs8Chj7Szqq0n_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #20, !noalias !1396
  unreachable

_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit.i: ; preds = %bb.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bk, i64 1232
end_hunk_1
begin_hunk_2_@_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_17PortFactoryServerNtNtB9_16local_threadsafe7ServiceSNtNtB9_7builder19CustomPayloadMarkerNtB20_18CustomHeaderMarkerB1X_B2y_E6createCsacUAxWRcRNR_9__iceoryx2:.split
  %i.ic = call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.ib) #18, !noalias !1378
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 2
  %i.ie = load i8, ptr %i.id, align 2, !range !16, !noalias !1378, !noundef !11
  store ptr %i.hz, ptr %i.o, align 8, !noalias !1377
  %i.if = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.ia, ptr %i.if, align 8, !noalias !1377
  %i.ig = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store i8 %i.ie, ptr %i.ig, align 8, !noalias !1377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1377
  %i.ih = call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service16local_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o) #18, !noalias !1378
  store ptr %i.ih, ptr %i.n, align 8, !noalias !1377
  %i.ii = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n) #18, !noalias !1378 ; 6 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 3856
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 5120
  %i.il = atomicrmw add ptr %i.ik, i8 1 monotonic, align 1, !noalias !1378 ; 0 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, i64 3851
  %i.in = atomicrmw add ptr %i.im, i8 1 monotonic, align 1, !noalias !1378 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1377
  store i8 2, ptr %i.a, align 1, !noalias !1377
  %i.io = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ii, i64 6240
  call void @_RINvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_14ContainerStateNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ClientDetailsE8for_eachNCNvMs0_NtNtB1u_4port6serverINtB34_17SharedServerStateNtNtB1s_16local_threadsafe7ServiceE24force_update_connections0ECsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ip, ptr noundef nonnull align 16 %i.ii, ptr noalias nofree noundef nonnull dereferenceable(2) %i.a) #18, !noalias !1378
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service16local_threadsafe7ServiceE30finish_update_connection_cycleCsacUAxWRcRNR_9__iceoryx2(ptr noundef nonnull align 16 %i.ii) #18, !noalias !1378
  call fastcc void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service16local_threadsafe7ServiceE30finish_update_connection_cycleCsacUAxWRcRNR_9__iceoryx2(ptr noundef nonnull align 16 %i.ij) #18, !noalias !1378
  %i.iq = load i8, ptr %i.a, align 1, !range !26, !noalias !1377, !noundef !11 ; 2 uses
  %i.ir = load i8, ptr %i.io, align 1, !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1377
  %.not77.i = icmp eq i8 %i.iq, 2
  br i1 %.not77.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1377
  store i8 %i.iq, ptr %i.m, align 1, !noalias !1377
  %i.is = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store i8 %i.ir, ptr %i.is, align 1, !noalias !1377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1377
  store ptr %i.o, ptr %i.l, align 8, !noalias !1377
  %.sroa.458.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXsb_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1F_18CustomHeaderMarkerB1C_B2d_ENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCsacUAxWRcRNR_9__iceoryx2, ptr %.sroa.458.0..sroa_idx.i, align 8, !noalias !1377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1377
  store ptr %i.m, ptr %i.k, align 8, !noalias !1377
  %.sroa.462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs2_NtNtCsg6ZEkMtNi4J_8iceoryx24port18update_connectionsNtB5_17ConnectionFailureNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.462.0..sroa_idx.i, align 8, !noalias !1377
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @1, ptr noundef nonnull %i.l, ptr noundef nonnull @127, ptr noundef nonnull %i.k) #18, !noalias !1378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1377
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #18, !noalias !1378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1377
  fence syncscope("singlethread") seq_cst
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1377
  %.val94.i = load ptr, ptr %i.bb, align 8, !noalias !1378, !nonnull !11, !noundef !11
  %i.it = getelementptr i8, ptr %.val94.i, i64 832
  %.val.i = load ptr, ptr %i.it, align 8, !noalias !1378, !nonnull !11, !noundef !11
  %i.iu = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  %i.iv = load ptr, ptr %i.iu, align 8, !noalias !1378, !noundef !11
  %i.iw = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig16request_response(ptr noundef nonnull align 8 %i.iv) #18, !noalias !1378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1377
  %.val84.i = load ptr, ptr %i.bb, align 8, !noalias !1378, !nonnull !11, !noundef !11
  %i.ix = getelementptr inbounds nuw i8, ptr %.val84.i, i64 6144
  %.val96.i = load ptr, ptr %i.ix, align 8, !noalias !1378, !nonnull !11, !noundef !11
  %i.iy = getelementptr inbounds nuw i8, ptr %.val96.i, i64 6024
  %i.iz = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iz, ptr noundef nonnull align 4 dereferenceable(16) %i.iy, i64 16, i1 false), !noalias !1378
  %i.ja = load i64, ptr %i.bw, align 16, !alias.scope !1376, !noalias !1378, !noundef !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.ar, i64 16, i1 false), !noalias !1377
  %i.jb = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %i.dr, ptr %i.jb, align 8, !noalias !1377
  %i.jc = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %.sroa.0.0.i.i.i, ptr %i.jc, align 8, !noalias !1377
  %i.jd = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i64 %i.ja, ptr %i.jd, align 8, !noalias !1377
  %i.je = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i32 %..i.i, ptr %i.je, align 8, !noalias !1377
  %i.jf = getelementptr inbounds nuw i8, ptr %i.i, i64 60
  store i8 %i.es, ptr %i.jf, align 4, !noalias !1377
  call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_responseNtB2_13DynamicConfig13add_server_id(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noundef nonnull align 8 %i.iw, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.i) #18, !noalias !1378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1377
  %i.jg = load i64, ptr %i.j, align 8, !range !22, !noalias !1377, !noundef !11
  %i.jh = trunc nuw i64 %i.jg to i1
  br i1 %i.jh, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1377
  %i.ji = call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service16local_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o) #18, !noalias !1378
  store ptr %i.ji, ptr %i.e, align 8, !noalias !1377
  %i.jj = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e) #18, !noalias !1378
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 6208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.jk, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !1378
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #18, !noalias !1378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1377
  %.sroa.019.0.copyload20 = load i8, ptr %i.o, align 8, !noalias !1376 ; 2 uses
  %.sroa.10.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.10, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.10.0..sroa_idx21, i64 15, i1 false), !noalias !1376
  %.sroa.1022.0.copyload24 = load i8, ptr %i.ig, align 8, !noalias !1376 ; 2 uses
  %.sroa.15.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.o, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.0..sroa_idx25, i64 7, i1 false), !noalias !1376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !1377
  call void @llvm.experimental.noalias.scope.decl(metadata !1404)
  call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  %i.jl = load ptr, ptr %i.cn, align 16, !alias.scope !1407, !noalias !1378, !align !12, !noundef !11 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.jl, null
  br i1 %.not.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.jm = load ptr, ptr %i.jl, align 8, !noalias !1408, !nonnull !11, !noundef !11
  call void %i.jm(ptr noundef nonnull align 16 dereferenceable(48) %i.cm) #18, !noalias !1378, !inline_history !1358
  br label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1F_18CustomHeaderMarkerB1C_B2d_E3newCsacUAxWRcRNR_9__iceoryx2.exit

bb.ac:                                            ; preds = %bb.aa
  %.val.i.i.i.i = load ptr, ptr %i.cm, align 16, !alias.scope !1407, !noalias !1378 ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.au, i64 168
  %.val1.i.i.i.i = load ptr, ptr %i.jn, align 8, !alias.scope !1407, !noalias !1378, !nonnull !11, !align !12, !noundef !11 ; 3 uses
  %i.jo = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !11, !noalias !1408 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.jo, null
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  call void %i.jo(ptr noundef nonnull %.val.i.i.i.i) #19, !noalias !1408, !inline_history !1359
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.jp = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.jq = load i64, ptr %i.jp, align 8, !range !13, !invariant.load !11, !noalias !1408 ; 2 uses
  %i.jr = icmp eq i64 %i.jq, 0
  br i1 %i.jr, label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1F_18CustomHeaderMarkerB1C_B2d_E3newCsacUAxWRcRNR_9__iceoryx2.exit, label %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.ae
  %i.js = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.jt = load i64, ptr %i.js, align 8, !range !14, !invariant.load !11, !noalias !1408
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 0, -9223372036317904881) %i.jq, i64 noundef range(i64 1, 536870913) %i.jt) #18, !noalias !1408
  br label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1F_18CustomHeaderMarkerB1C_B2d_E3newCsacUAxWRcRNR_9__iceoryx2.exit

bb.af:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1377
  store ptr %i.as, ptr %i.h, align 8, !noalias !1377
  %.sroa.466.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCsacUAxWRcRNR_9__iceoryx2, ptr %.sroa.466.0..sroa_idx.i, align 8, !noalias !1377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1377
  %.val90.i = load ptr, ptr %i.bb, align 8, !noalias !1378, !nonnull !11, !noundef !11
  %i.ju = getelementptr inbounds nuw i8, ptr %.val90.i, i64 1112
  %i.jv = call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.ju) #18, !noalias !1378
  %i.jw = getelementptr i8, ptr %i.jv, i64 32
  %.val103.i = load i64, ptr %i.jw, align 8, !noalias !1378, !noundef !11
  store i64 %.val103.i, ptr %i.g, align 8, !noalias !1377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1377
  store ptr %i.at, ptr %i.f, align 8, !noalias !1377
  %.sroa.470.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsacUAxWRcRNR_9__iceoryx2, ptr %.sroa.470.0..sroa_idx.i, align 8, !noalias !1377
  %i.jx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.jx, align 8, !noalias !1377
  %.sroa.474.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.474.0..sroa_idx.i, align 8, !noalias !1377
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.h, ptr noundef nonnull @128, ptr noundef nonnull %i.f) #18, !noalias !1378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1377
  call void @llvm.experimental.noalias.scope.decl(metadata !1409)
  call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  call void @llvm.experimental.noalias.scope.decl(metadata !1411)
  call void @llvm.experimental.noalias.scope.decl(metadata !1412)
  %i.jy = load ptr, ptr %i.o, align 8, !alias.scope !1413, !noalias !1377, !nonnull !11, !noundef !11
  %i.jz = atomicrmw sub ptr %i.jy, i64 1 release, align 8, !noalias !1414
  %i.ka = icmp eq i64 %i.jz, 1
  br i1 %i.ka, label %bb.ag, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBI_7service16local_threadsafe7ServiceSNtNtB1s_7builder19CustomPayloadMarkerNtB28_18CustomHeaderMarkerB25_B2H_EECsacUAxWRcRNR_9__iceoryx2.exit.i

bb.ag:                                            ; preds = %bb.af
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1I_7service16local_threadsafe7ServiceEEE9drop_slowCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.o) #21, !noalias !1378
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBI_7service16local_threadsafe7ServiceSNtNtB1s_7builder19CustomPayloadMarkerNtB28_18CustomHeaderMarkerB25_B2H_EECsacUAxWRcRNR_9__iceoryx2.exit.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBI_7service16local_threadsafe7ServiceSNtNtB1s_7builder19CustomPayloadMarkerNtB28_18CustomHeaderMarkerB25_B2H_EECsacUAxWRcRNR_9__iceoryx2.exit.i: ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1377
  br label %bb.ah

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local7StorageECsacUAxWRcRNR_9__iceoryx2.exit.thread.i: ; preds = %bb.o, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment11DataSegmentNtNtNtB16_7service16local_threadsafe7ServiceENtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory23SharedMemoryCreateErrorEECsacUAxWRcRNR_9__iceoryx2.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !1377
  br label %.critedge.i

bb.ah:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBI_7service16local_threadsafe7ServiceSNtNtB1s_7builder19CustomPayloadMarkerNtB28_18CustomHeaderMarkerB25_B2H_EECsacUAxWRcRNR_9__iceoryx2.exit.i, %bb.w
  %.sroa.019.0 = phi i8 [ 2, %bb.w ], [ 0, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBI_7service16local_threadsafe7ServiceSNtNtB1s_7builder19CustomPayloadMarkerNtB28_18CustomHeaderMarkerB25_B2H_EECsacUAxWRcRNR_9__iceoryx2.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !1377
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsacUAxWRcRNR_9__iceoryx2.exit.i

2:                                                ; preds = %bb.n
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment11DataSegmentNtNtNtB16_7service16local_threadsafe7ServiceENtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory23SharedMemoryCreateErrorEECsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef align 8 dereferenceable(2712) %i.ad) #18, !noalias !1378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1377
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #20, !noalias !1378
  unreachable

.critedge.i:                                      ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local7StorageECsacUAxWRcRNR_9__iceoryx2.exit.thread.i, %bb.a
  %.sroa.019.2 = phi i8 [ 3, %bb.a ], [ 1, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local7StorageECsacUAxWRcRNR_9__iceoryx2.exit.thread.i ] ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.au, i64 112
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %3) #18, !noalias !1378
  %4 = load i128, ptr %i.au, align 16, !range !23, !alias.scope !1415, !noalias !1378, !noundef !11
  %5 = icmp eq i128 %4, 0
  br i1 %5, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsacUAxWRcRNR_9__iceoryx2.exit.i, label %6

6:                                                ; preds = %.critedge.i
  %7 = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24port1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %7) #18, !noalias !1378
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsacUAxWRcRNR_9__iceoryx2.exit.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsacUAxWRcRNR_9__iceoryx2.exit.i: ; preds = %6, %.critedge.i, %bb.ah
  %.sroa.019.1 = phi i8 [ %.sroa.019.2, %.critedge.i ], [ %.sroa.019.2, %6 ], [ %.sroa.019.0, %bb.ah ]
  %i.kb = getelementptr inbounds nuw i8, ptr %i.au, i64 160 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1416)
  call void @llvm.experimental.noalias.scope.decl(metadata !1417)
  call void @llvm.experimental.noalias.scope.decl(metadata !1418)
  %i.kc = getelementptr inbounds nuw i8, ptr %i.au, i64 192
  %i.kd = load ptr, ptr %i.kc, align 16, !alias.scope !1419, !noalias !1378, !align !12, !noundef !11 ; 2 uses
  %.not.i.i.i108.i = icmp eq ptr %i.kd, null
  br i1 %.not.i.i.i108.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsacUAxWRcRNR_9__iceoryx2.exit.i
  %i.ke = load ptr, ptr %i.kd, align 8, !noalias !1420, !nonnull !11, !noundef !11
  call void %i.ke(ptr noundef nonnull align 16 dereferenceable(48) %i.kb) #18, !noalias !1378, !inline_history !1358
  br label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1F_18CustomHeaderMarkerB1C_B2d_E3newCsacUAxWRcRNR_9__iceoryx2.exit.thread

bb.aj:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsacUAxWRcRNR_9__iceoryx2.exit.i
  %.val.i.i.i109.i = load ptr, ptr %i.kb, align 16, !alias.scope !1419, !noalias !1378 ; 4 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.au, i64 168
  %.val1.i.i.i110.i = load ptr, ptr %i.kf, align 8, !alias.scope !1419, !noalias !1378, !nonnull !11, !align !12, !noundef !11 ; 3 uses
  %i.kg = load ptr, ptr %.val1.i.i.i110.i, align 8, !invariant.load !11, !noalias !1420 ; 2 uses
  %.not.i.i.i.i111.i = icmp eq ptr %i.kg, null
  br i1 %.not.i.i.i.i111.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i109.i) ]
  call void %i.kg(ptr noundef nonnull %.val.i.i.i109.i) #19, !noalias !1420, !inline_history !1359
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.kh = getelementptr inbounds nuw i8, ptr %.val1.i.i.i110.i, i64 8
  %i.ki = load i64, ptr %i.kh, align 8, !range !13, !invariant.load !11, !noalias !1420 ; 2 uses
  %i.kj = icmp eq i64 %i.ki, 0
  br i1 %i.kj, label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1F_18CustomHeaderMarkerB1C_B2d_E3newCsacUAxWRcRNR_9__iceoryx2.exit.thread, label %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i112.i

_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i112.i: ; preds = %bb.al
  %i.kk = getelementptr inbounds nuw i8, ptr %.val1.i.i.i110.i, i64 16
  %i.kl = load i64, ptr %i.kk, align 8, !range !14, !invariant.load !11, !noalias !1420
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i109.i) ]
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i109.i, i64 noundef range(i64 0, -9223372036317904881) %i.ki, i64 noundef range(i64 1, 536870913) %i.kl) #18, !noalias !1420
  br label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1F_18CustomHeaderMarkerB1C_B2d_E3newCsacUAxWRcRNR_9__iceoryx2.exit.thread

_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1F_18CustomHeaderMarkerB1C_B2d_E3newCsacUAxWRcRNR_9__iceoryx2.exit.thread: ; preds = %bb.al, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i112.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.am

_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1F_18CustomHeaderMarkerB1C_B2d_E3newCsacUAxWRcRNR_9__iceoryx2.exit: ; preds = %bb.ab, %bb.ae, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %.not = icmp eq i8 %.sroa.1022.0.copyload24, 2
  br i1 %.not, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1F_18CustomHeaderMarkerB1C_B2d_E3newCsacUAxWRcRNR_9__iceoryx2.exit.thread, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1F_18CustomHeaderMarkerB1C_B2d_E3newCsacUAxWRcRNR_9__iceoryx2.exit
  %.sroa.019.330 = phi i8 [ %.sroa.019.1, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1F_18CustomHeaderMarkerB1C_B2d_E3newCsacUAxWRcRNR_9__iceoryx2.exit.thread ], [ %.sroa.019.0.copyload20, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1F_18CustomHeaderMarkerB1C_B2d_E3newCsacUAxWRcRNR_9__iceoryx2.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store ptr %i.ax, ptr %i.av, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr @_RNvXsr_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.av, ptr noundef nonnull @94, ptr noundef nonnull inttoptr (i64 67 to ptr)) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  store i8 %.sroa.019.330, ptr %0, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.km, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  br label %bb.ao

bb.an:                                            ; preds = %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1F_18CustomHeaderMarkerB1C_B2d_E3newCsacUAxWRcRNR_9__iceoryx2.exit
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.10, i64 15, i1 false)
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.440.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  store i8 %.sroa.019.0.copyload20, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.1022.0.copyload24, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax) #18
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs3_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service14ipc_threadsafe7ServiceSNtNtB19_7builder19CustomPayloadMarkerNtB1N_18CustomHeaderMarkerB1K_B2m_E12is_connectedCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i64, ptr %i.b, align 8, !noundef !11 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = tail call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e) #18
  store ptr %i.f, ptr %i.a, align 8
  %i.g = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) #18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.01.0.copyload = load i64, ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.03.0.copyload = load i64, ptr %i.i, align 8
  %i.j = call noundef zeroext i1 @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE17has_channel_stateCsacUAxWRcRNR_9__iceoryx2(ptr noundef nonnull align 16 %i.g, i64 noundef %.sroa.01.0.copyload, i64 noundef %i.c, i64 noundef %.sroa.03.0.copyload) #18
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.j, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs3_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service14ipc_threadsafe7ServiceSNtNtB19_7builder19CustomPayloadMarkerNtB1N_18CustomHeaderMarkerB1K_B2m_E19has_disconnect_hintCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i64, ptr %i.b, align 8, !noundef !11 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = tail call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e) #18
  store ptr %i.f, ptr %i.a, align 8
  %i.g = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) #18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.01.0.copyload = load i64, ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.03.0.copyload = load i64, ptr %i.i, align 8
  %i.j = call noundef zeroext i1 @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE19has_disconnect_hintCsacUAxWRcRNR_9__iceoryx2(ptr noundef nonnull align 16 %i.g, i64 noundef %.sroa.01.0.copyload, i64 noundef %i.c, i64 noundef %.sroa.03.0.copyload) #18
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.j, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs3_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service16local_threadsafe7ServiceSNtNtB19_7builder19CustomPayloadMarkerNtB1P_18CustomHeaderMarkerB1M_B2o_E12is_connectedCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i64, ptr %i.b, align 8, !noundef !11 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = tail call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service16local_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e) #18
  store ptr %i.f, ptr %i.a, align 8
  %i.g = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) #18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.01.0.copyload = load i64, ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.03.0.copyload = load i64, ptr %i.i, align 8
  %i.j = call noundef zeroext i1 @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service16local_threadsafe7ServiceE17has_channel_stateCsacUAxWRcRNR_9__iceoryx2(ptr noundef nonnull align 16 %i.g, i64 noundef %.sroa.01.0.copyload, i64 noundef %i.c, i64 noundef %.sroa.03.0.copyload) #18
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.j, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs3_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service16local_threadsafe7ServiceSNtNtB19_7builder19CustomPayloadMarkerNtB1P_18CustomHeaderMarkerB1M_B2o_E19has_disconnect_hintCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i64, ptr %i.b, align 8, !noundef !11 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = tail call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service16local_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e) #18
  store ptr %i.f, ptr %i.a, align 8
  %i.g = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) #18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.01.0.copyload = load i64, ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.03.0.copyload = load i64, ptr %i.i, align 8
  %i.j = call noundef zeroext i1 @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service16local_threadsafe7ServiceE19has_disconnect_hintCsacUAxWRcRNR_9__iceoryx2(ptr noundef nonnull align 16 %i.g, i64 noundef %.sroa.01.0.copyload, i64 noundef %i.c, i64 noundef %.sroa.03.0.copyload) #18
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.j, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtNtCsg6ZEkMtNi4J_8iceoryx24port8notifierINtB5_19ListenerConnectionsNtNtNtB9_7service14ipc_threadsafe7ServiceE26populate_listener_channelsCsacUAxWRcRNR_9__iceoryx2(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [576 x i8], align 8               ; 6 uses
  %i.j = alloca [1056 x i8], align 8              ; 5 uses
  %i.k = alloca [544 x i8], align 8               ; 6 uses
  %i.l = alloca [792 x i8], align 8               ; 4 uses
  %i.m = alloca [264 x i8], align 8               ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 8 uses
  %i.o = alloca [8 x i8], align 8                 ; 7 uses
  %i.p = alloca [16 x i8], align 4                ; 4 uses
  %i.q = alloca [16 x i8], align 4                ; 5 uses
  %i.r = alloca [36 x i8], align 4                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  store i64 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !11 ; 2 uses
  %i.x = icmp ult i64 %i.w, 16012798675095097
  tail call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i32 0, ptr %i.r, align 4
  call void @_RNvMs1_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config5event15ListenerDetailsEE6resizeCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %i.w, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(36) %i.r) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_RINvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_14ContainerStateNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config5event15ListenerDetailsE8for_eachNCNvMs3_NtNtB1u_4port8notifierINtB2U_19ListenerConnectionsNtNtB1s_14ipc_threadsafe7ServiceE26populate_listener_channels0ECsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s) #18
  %i.z = load ptr, ptr %i.t, align 8, !nonnull !11, !noundef !11 ; 2 uses
end_hunk_2
begin_hunk_3_@llvm.memset.p0.i64
!1074 = !{!1019, !1017, !1015, !1012}
!1075 = !{!1019, !1017, !1015, !1013}
!1076 = !{!1023}
!1077 = !{!1025}
!1078 = !{!1025, !1023, !1012}
!1079 = !{!1025, !1023, !1013}
!1080 = !{!1028}
!1081 = !{!1028, !1013}
!1082 = !{!1030}
!1083 = !{!1032}
!1084 = !{!1034}
!1085 = !{!1034, !1032, !1030, !1012}
!1086 = !{!1034, !1032, !1030, !1013}
!1087 = !{!1036}
!1088 = !{!1037}
!1089 = !{!1036, !1038, !1013, !1012}
!1090 = !{!1036, !1037, !1038, !1013, !1012}
!1091 = !{!1036, !1037, !1013}
!1092 = !{!1036, !1037}
!1093 = !{!1038, !1013, !1012}
!1094 = !{!1040}
!1095 = !{!1042, !1041, !1013, !1012}
!1096 = !{!1042, !1040, !1041, !1013, !1012}
!1097 = !{!1042, !1040, !1013}
!1098 = !{!1044}
!1099 = !{!1045, !1013, !1012}
!1100 = !{!1045, !1013}
!1101 = !{!1047}
!1102 = !{!1049}
!1103 = !{!1051}
!1104 = !{!1051, !1049, !1047, !1012}
!1105 = !{!1051, !1049, !1047, !1013}
!1106 = !{!1053}
!1107 = !{!1055}
!1108 = !{!1057}
!1109 = !{!1059}
!1110 = !{!1059, !1057, !1055, !1053}
!1111 = !{!1059, !1057, !1055, !1053, !1013}
!1112 = !{!1061}
!1113 = !{!1063}
!1114 = !{!1065}
!1115 = !{!1065, !1063, !1061, !1012}
!1116 = !{!1065, !1063, !1061, !1013}
!1117 = !{!1067, !1012}
!1118 = distinct !{!1118, i1 false, !"_RNvMs9_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service16local_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1F_18CustomHeaderMarkerB1C_B2d_E3newCsacUAxWRcRNR_9__iceoryx2"}
!1119 = distinct !{!1119, !1118, !"_RNvMs9_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service16local_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1F_18CustomHeaderMarkerB1C_B2d_E3newCsacUAxWRcRNR_9__iceoryx2: argument 1"}
!1120 = distinct !{!1120, !1118, !"_RNvMs9_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service16local_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1F_18CustomHeaderMarkerB1C_B2d_E3newCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1121 = distinct !{!1121, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client28PreallocatedRequestsOverrideKj18_EECsacUAxWRcRNR_9__iceoryx2"}
!1122 = distinct !{!1122, !1121, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client28PreallocatedRequestsOverrideKj18_EECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1123 = distinct !{!1123, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__11TinyClosureKj18_EECsacUAxWRcRNR_9__iceoryx2"}
!1124 = distinct !{!1124, !1123, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__11TinyClosureKj18_EECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1125 = distinct !{!1125, i1 false, !"_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2"}
!1126 = distinct !{!1126, !1125, !"_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1127 = distinct !{null, ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client28PreallocatedRequestsOverrideKj18_EECsacUAxWRcRNR_9__iceoryx2, null, ptr @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2}
!1128 = distinct !{null, ptr @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client28PreallocatedRequestsOverrideKj18_EECsacUAxWRcRNR_9__iceoryx2, null, ptr @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2, null}
!1129 = distinct !{!1129, i1 false, !"_RNvMsb_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6clientINtB5_28PreallocatedRequestsOverrideKj18_E4callCsacUAxWRcRNR_9__iceoryx2"}
!1130 = distinct !{!1130, !1129, !"_RNvMsb_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6clientINtB5_28PreallocatedRequestsOverrideKj18_E4callCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1131 = distinct !{!1131, i1 false, !"_RNvMs_NvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB4_11TinyClosureKj18_E4callCsacUAxWRcRNR_9__iceoryx2"}
!1132 = distinct !{!1132, !1131, !"_RNvMs_NvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB4_11TinyClosureKj18_E4callCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1133 = distinct !{null, null, null}
!1134 = distinct !{!1134, i1 false, !"_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout"}
!1135 = distinct !{!1135, !1134, !"_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout: argument 0"}
!1136 = distinct !{!1136, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local14StorageContentEECsacUAxWRcRNR_9__iceoryx2"}
!1137 = distinct !{!1137, !1136, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local14StorageContentEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1138 = distinct !{!1138, i1 false, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local14StorageContentENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2"}
!1139 = distinct !{!1139, !1138, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local14StorageContentENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1140 = distinct !{!1140, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local7StorageECsacUAxWRcRNR_9__iceoryx2"}
!1141 = distinct !{!1141, !1140, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local7StorageECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1142 = distinct !{!1142, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client28PreallocatedRequestsOverrideKj18_EECsacUAxWRcRNR_9__iceoryx2"}
!1143 = distinct !{!1143, !1142, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client28PreallocatedRequestsOverrideKj18_EECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1144 = distinct !{!1144, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__11TinyClosureKj18_EECsacUAxWRcRNR_9__iceoryx2"}
!1145 = distinct !{!1145, !1144, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__11TinyClosureKj18_EECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1146 = distinct !{!1146, i1 false, !"_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2"}
!1147 = distinct !{!1147, !1146, !"_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1148 = distinct !{!1148, i1 false, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2"}
!1149 = distinct !{!1149, !1148, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1150 = distinct !{!1150, !1148, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2: argument 1"}
!1151 = distinct !{!1151, !1148, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2: argument 2"}
!1152 = distinct !{!1152, i1 false, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2"}
!1153 = distinct !{!1153, !1152, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2: argument 1"}
!1154 = distinct !{!1154, !1152, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2: argument 2"}
!1155 = distinct !{!1155, !1152, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1156 = distinct !{!1156, i1 false, !"_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCsacUAxWRcRNR_9__iceoryx2"}
!1157 = distinct !{!1157, !1156, !"_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1158 = distinct !{!1158, !1156, !"_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCsacUAxWRcRNR_9__iceoryx2: argument 1"}
!1159 = distinct !{!1159, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client28PreallocatedRequestsOverrideKj18_EECsacUAxWRcRNR_9__iceoryx2"}
!1160 = distinct !{!1160, !1159, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client28PreallocatedRequestsOverrideKj18_EECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1161 = distinct !{!1161, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__11TinyClosureKj18_EECsacUAxWRcRNR_9__iceoryx2"}
!1162 = distinct !{!1162, !1161, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__11TinyClosureKj18_EECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1163 = distinct !{!1163, i1 false, !"_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2"}
!1164 = distinct !{!1164, !1163, !"_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1165 = distinct !{!1165, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service16local_threadsafe7ServiceSNtNtB1s_7builder19CustomPayloadMarkerNtB28_18CustomHeaderMarkerB25_B2H_EECsacUAxWRcRNR_9__iceoryx2"}
!1166 = distinct !{!1166, !1165, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service16local_threadsafe7ServiceSNtNtB1s_7builder19CustomPayloadMarkerNtB28_18CustomHeaderMarkerB25_B2H_EECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1167 = distinct !{!1167, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB25_7service16local_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2"}
!1168 = distinct !{!1168, !1167, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB25_7service16local_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1169 = distinct !{!1169, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB2b_7service16local_threadsafe7ServiceEEEECsacUAxWRcRNR_9__iceoryx2"}
!1170 = distinct !{!1170, !1169, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB2b_7service16local_threadsafe7ServiceEEEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1171 = distinct !{!1171, i1 false, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1I_7service16local_threadsafe7ServiceEEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2"}
!1172 = distinct !{!1172, !1171, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1I_7service16local_threadsafe7ServiceEEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1173 = distinct !{!1173, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client28PreallocatedRequestsOverrideKj18_EECsacUAxWRcRNR_9__iceoryx2"}
!1174 = distinct !{!1174, !1173, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client28PreallocatedRequestsOverrideKj18_EECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1175 = distinct !{!1175, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__11TinyClosureKj18_EECsacUAxWRcRNR_9__iceoryx2"}
!1176 = distinct !{!1176, !1175, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__11TinyClosureKj18_EECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1177 = distinct !{!1177, i1 false, !"_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2"}
!1178 = distinct !{!1178, !1177, !"_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1179 = distinct !{!1179, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsacUAxWRcRNR_9__iceoryx2"}
!1180 = distinct !{!1180, !1179, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1181 = !{!1119}
!1182 = !{!1120, !1119}
!1183 = !{!1120}
!1184 = !{!1122}
!1185 = !{!1124}
!1186 = !{!1126}
!1187 = !{!1126, !1124, !1122, !1119}
!1188 = !{!1126, !1124, !1122, !1120}
!1189 = !{!1130}
!1190 = !{!1132}
!1191 = !{!1132, !1130, !1119}
!1192 = !{!1132, !1130, !1120}
!1193 = !{!1135}
!1194 = !{!1135, !1120}
!1195 = !{!1137}
!1196 = !{!1139}
!1197 = !{!1139, !1137, !1141}
!1198 = !{!1139, !1137, !1120}
!1199 = !{!1143}
!1200 = !{!1145}
!1201 = !{!1147}
!1202 = !{!1147, !1145, !1143, !1119}
!1203 = !{!1147, !1145, !1143, !1120}
!1204 = !{!1149}
!1205 = !{!1150}
!1206 = !{!1149, !1151, !1120, !1119}
!1207 = !{!1149, !1150, !1151, !1120, !1119}
!1208 = !{!1149, !1150, !1120}
!1209 = !{!1149, !1150}
!1210 = !{!1151, !1120, !1119}
!1211 = !{!1153}
!1212 = !{!1155, !1154, !1120, !1119}
!1213 = !{!1155, !1153, !1154, !1120, !1119}
!1214 = !{!1155, !1153, !1120}
!1215 = !{!1157}
!1216 = !{!1158, !1120, !1119}
!1217 = !{!1158, !1120}
!1218 = !{!1160}
!1219 = !{!1162}
!1220 = !{!1164}
!1221 = !{!1164, !1162, !1160, !1119}
!1222 = !{!1164, !1162, !1160, !1120}
!1223 = !{!1166}
!1224 = !{!1168}
!1225 = !{!1170}
!1226 = !{!1172}
!1227 = !{!1172, !1170, !1168, !1166}
!1228 = !{!1172, !1170, !1168, !1166, !1120}
!1229 = !{!1174}
!1230 = !{!1176}
!1231 = !{!1178}
!1232 = !{!1178, !1176, !1174, !1119}
!1233 = !{!1178, !1176, !1174, !1120}
!1234 = !{!1180, !1119}
!1235 = distinct !{!1235, i1 false, !"_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1D_18CustomHeaderMarkerB1A_B2b_E3newCsacUAxWRcRNR_9__iceoryx2"}
!1236 = distinct !{!1236, !1235, !"_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1D_18CustomHeaderMarkerB1A_B2b_E3newCsacUAxWRcRNR_9__iceoryx2: argument 1"}
!1237 = distinct !{!1237, !1235, !"_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1D_18CustomHeaderMarkerB1A_B2b_E3newCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1238 = distinct !{!1238, i1 false, !"_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config16request_responseNtB2_12StaticConfig49required_amount_of_chunks_per_server_data_segment"}
!1239 = distinct !{!1239, !1238, !"_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config16request_responseNtB2_12StaticConfig49required_amount_of_chunks_per_server_data_segment: argument 0"}
!1240 = distinct !{!1240, i1 false, !"_RNvMsf_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_28PreallocatedResponseOverrideKj18_E4callCsacUAxWRcRNR_9__iceoryx2"}
!1241 = distinct !{!1241, !1240, !"_RNvMsf_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_28PreallocatedResponseOverrideKj18_E4callCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1242 = distinct !{!1242, i1 false, !"_RNvMs_NvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server1__INtB4_11TinyClosureKj18_E4callCsacUAxWRcRNR_9__iceoryx2"}
!1243 = distinct !{!1243, !1242, !"_RNvMs_NvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server1__INtB4_11TinyClosureKj18_E4callCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1244 = distinct !{null, null, null}
!1245 = distinct !{!1245, i1 false, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2"}
!1246 = distinct !{!1246, !1245, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1247 = distinct !{!1247, !1245, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2: argument 1"}
!1248 = distinct !{!1248, !1245, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2: argument 2"}
!1249 = distinct !{!1249, i1 false, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2"}
!1250 = distinct !{!1250, !1249, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2: argument 1"}
!1251 = distinct !{!1251, !1249, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2: argument 2"}
!1252 = distinct !{!1252, !1249, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1253 = distinct !{!1253, i1 false, !"_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout"}
!1254 = distinct !{!1254, !1253, !"_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout: argument 0"}
!1255 = distinct !{!1255, i1 false, !"_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCsacUAxWRcRNR_9__iceoryx2"}
!1256 = distinct !{!1256, !1255, !"_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1257 = distinct !{!1257, !1255, !"_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCsacUAxWRcRNR_9__iceoryx2: argument 1"}
!1258 = distinct !{!1258, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server28PreallocatedResponseOverrideKj18_EECsacUAxWRcRNR_9__iceoryx2"}
!1259 = distinct !{!1259, !1258, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server28PreallocatedResponseOverrideKj18_EECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1260 = distinct !{!1260, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server1__11TinyClosureKj18_EECsacUAxWRcRNR_9__iceoryx2"}
!1261 = distinct !{!1261, !1260, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server1__11TinyClosureKj18_EECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1262 = distinct !{!1262, i1 false, !"_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2"}
!1263 = distinct !{!1263, !1262, !"_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1264 = distinct !{null, null, null, ptr @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2}
!1265 = distinct !{null, null, null, ptr @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2, null}
!1266 = distinct !{!1266, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBI_7service14ipc_threadsafe7ServiceSNtNtB1s_7builder19CustomPayloadMarkerNtB26_18CustomHeaderMarkerB23_B2F_EECsacUAxWRcRNR_9__iceoryx2"}
!1267 = distinct !{!1267, !1266, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBI_7service14ipc_threadsafe7ServiceSNtNtB1s_7builder19CustomPayloadMarkerNtB26_18CustomHeaderMarkerB23_B2F_EECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1268 = distinct !{!1268, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service14ipc_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2"}
!1269 = distinct !{!1269, !1268, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service14ipc_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1270 = distinct !{!1270, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB2b_7service14ipc_threadsafe7ServiceEEEECsacUAxWRcRNR_9__iceoryx2"}
!1271 = distinct !{!1271, !1270, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB2b_7service14ipc_threadsafe7ServiceEEEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1272 = distinct !{!1272, i1 false, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1I_7service14ipc_threadsafe7ServiceEEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2"}
!1273 = distinct !{!1273, !1272, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1I_7service14ipc_threadsafe7ServiceEEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1274 = distinct !{!1274, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsacUAxWRcRNR_9__iceoryx2"}
!1275 = distinct !{!1275, !1274, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1276 = distinct !{!1276, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server28PreallocatedResponseOverrideKj18_EECsacUAxWRcRNR_9__iceoryx2"}
!1277 = distinct !{!1277, !1276, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server28PreallocatedResponseOverrideKj18_EECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1278 = distinct !{!1278, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server1__11TinyClosureKj18_EECsacUAxWRcRNR_9__iceoryx2"}
!1279 = distinct !{!1279, !1278, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server1__11TinyClosureKj18_EECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1280 = distinct !{!1280, i1 false, !"_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2"}
!1281 = distinct !{!1281, !1280, !"_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1282 = !{!1236}
!1283 = !{!1237, !1236}
!1284 = !{!1237}
!1285 = !{!1239}
!1286 = !{!1241}
!1287 = !{!1243}
!1288 = !{!1243, !1241, !1236}
!1289 = !{!1243, !1241, !1237}
!1290 = !{!1246}
!1291 = !{!1247}
!1292 = !{!1246, !1248, !1237, !1236}
!1293 = !{!1246, !1247, !1248, !1237, !1236}
!1294 = !{!1246, !1247, !1237}
!1295 = !{!1246, !1247}
!1296 = !{!1248, !1237, !1236}
!1297 = !{!1250}
!1298 = !{!1252, !1251, !1237, !1236}
!1299 = !{!1252, !1250, !1251, !1237, !1236}
!1300 = !{!1252, !1250, !1237}
!1301 = !{!1254}
!1302 = !{!1254, !1237}
!1303 = !{!1256}
!1304 = !{!1257, !1237, !1236}
!1305 = !{!1257, !1237}
!1306 = !{!1259}
!1307 = !{!1261}
!1308 = !{!1263}
!1309 = !{!1263, !1261, !1259, !1236}
!1310 = !{!1263, !1261, !1259, !1237}
!1311 = !{!1267}
!1312 = !{!1269}
!1313 = !{!1271}
!1314 = !{!1273}
!1315 = !{!1273, !1271, !1269, !1267}
!1316 = !{!1273, !1271, !1269, !1267, !1237}
!1317 = !{!1275, !1236}
!1318 = !{!1277}
!1319 = !{!1279}
!1320 = !{!1281}
!1321 = !{!1281, !1279, !1277, !1236}
!1322 = !{!1281, !1279, !1277, !1237}
!1323 = distinct !{!1323, i1 false, !"_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1F_18CustomHeaderMarkerB1C_B2d_E3newCsacUAxWRcRNR_9__iceoryx2"}
!1324 = distinct !{!1324, !1323, !"_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1F_18CustomHeaderMarkerB1C_B2d_E3newCsacUAxWRcRNR_9__iceoryx2: argument 1"}
!1325 = distinct !{!1325, !1323, !"_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceSNtNtBZ_7builder19CustomPayloadMarkerNtB1F_18CustomHeaderMarkerB1C_B2d_E3newCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1326 = distinct !{!1326, i1 false, !"_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config16request_responseNtB2_12StaticConfig49required_amount_of_chunks_per_server_data_segment"}
!1327 = distinct !{!1327, !1326, !"_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config16request_responseNtB2_12StaticConfig49required_amount_of_chunks_per_server_data_segment: argument 0"}
!1328 = distinct !{!1328, i1 false, !"_RNvMsf_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_28PreallocatedResponseOverrideKj18_E4callCsacUAxWRcRNR_9__iceoryx2"}
!1329 = distinct !{!1329, !1328, !"_RNvMsf_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_28PreallocatedResponseOverrideKj18_E4callCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1330 = distinct !{!1330, i1 false, !"_RNvMs_NvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server1__INtB4_11TinyClosureKj18_E4callCsacUAxWRcRNR_9__iceoryx2"}
!1331 = distinct !{!1331, !1330, !"_RNvMs_NvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server1__INtB4_11TinyClosureKj18_E4callCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1332 = distinct !{null, null, null}
!1333 = distinct !{!1333, i1 false, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2"}
!1334 = distinct !{!1334, !1333, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1335 = distinct !{!1335, !1333, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2: argument 1"}
!1336 = distinct !{!1336, !1333, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2: argument 2"}
!1337 = distinct !{!1337, i1 false, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2"}
!1338 = distinct !{!1338, !1337, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2: argument 1"}
!1339 = distinct !{!1339, !1337, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2: argument 2"}
!1340 = distinct !{!1340, !1337, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1341 = distinct !{!1341, i1 false, !"_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout"}
!1342 = distinct !{!1342, !1341, !"_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout: argument 0"}
!1343 = distinct !{!1343, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local14StorageContentEECsacUAxWRcRNR_9__iceoryx2"}
!1344 = distinct !{!1344, !1343, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local14StorageContentEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1345 = distinct !{!1345, i1 false, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local14StorageContentENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2"}
!1346 = distinct !{!1346, !1345, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local14StorageContentENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1347 = distinct !{!1347, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local7StorageECsacUAxWRcRNR_9__iceoryx2"}
!1348 = distinct !{!1348, !1347, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local7StorageECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1349 = distinct !{!1349, i1 false, !"_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCsacUAxWRcRNR_9__iceoryx2"}
!1350 = distinct !{!1350, !1349, !"_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1351 = distinct !{!1351, !1349, !"_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCsacUAxWRcRNR_9__iceoryx2: argument 1"}
!1352 = distinct !{!1352, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server28PreallocatedResponseOverrideKj18_EECsacUAxWRcRNR_9__iceoryx2"}
!1353 = distinct !{!1353, !1352, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server28PreallocatedResponseOverrideKj18_EECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1354 = distinct !{!1354, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server1__11TinyClosureKj18_EECsacUAxWRcRNR_9__iceoryx2"}
!1355 = distinct !{!1355, !1354, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server1__11TinyClosureKj18_EECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1356 = distinct !{!1356, i1 false, !"_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2"}
!1357 = distinct !{!1357, !1356, !"_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1358 = distinct !{null, null, null, ptr @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2}
!1359 = distinct !{null, null, null, ptr @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2, null}
!1360 = distinct !{!1360, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBI_7service16local_threadsafe7ServiceSNtNtB1s_7builder19CustomPayloadMarkerNtB28_18CustomHeaderMarkerB25_B2H_EECsacUAxWRcRNR_9__iceoryx2"}
!1361 = distinct !{!1361, !1360, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBI_7service16local_threadsafe7ServiceSNtNtB1s_7builder19CustomPayloadMarkerNtB28_18CustomHeaderMarkerB25_B2H_EECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1362 = distinct !{!1362, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service16local_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2"}
!1363 = distinct !{!1363, !1362, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB25_7service16local_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1364 = distinct !{!1364, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB2b_7service16local_threadsafe7ServiceEEEECsacUAxWRcRNR_9__iceoryx2"}
!1365 = distinct !{!1365, !1364, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB2b_7service16local_threadsafe7ServiceEEEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1366 = distinct !{!1366, i1 false, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1I_7service16local_threadsafe7ServiceEEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2"}
!1367 = distinct !{!1367, !1366, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1I_7service16local_threadsafe7ServiceEEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1368 = distinct !{!1368, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsacUAxWRcRNR_9__iceoryx2"}
!1369 = distinct !{!1369, !1368, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1370 = distinct !{!1370, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server28PreallocatedResponseOverrideKj18_EECsacUAxWRcRNR_9__iceoryx2"}
!1371 = distinct !{!1371, !1370, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server28PreallocatedResponseOverrideKj18_EECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1372 = distinct !{!1372, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server1__11TinyClosureKj18_EECsacUAxWRcRNR_9__iceoryx2"}
!1373 = distinct !{!1373, !1372, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server1__11TinyClosureKj18_EECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1374 = distinct !{!1374, i1 false, !"_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2"}
!1375 = distinct !{!1375, !1374, !"_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1376 = !{!1324}
!1377 = !{!1325, !1324}
!1378 = !{!1325}
!1379 = !{!1327}
!1380 = !{!1329}
!1381 = !{!1331}
!1382 = !{!1331, !1329, !1324}
!1383 = !{!1331, !1329, !1325}
!1384 = !{!1334}
!1385 = !{!1335}
!1386 = !{!1334, !1336, !1325, !1324}
!1387 = !{!1334, !1335, !1336, !1325, !1324}
!1388 = !{!1334, !1335, !1325}
!1389 = !{!1334, !1335}
!1390 = !{!1336, !1325, !1324}
!1391 = !{!1338}
!1392 = !{!1340, !1339, !1325, !1324}
!1393 = !{!1340, !1338, !1339, !1325, !1324}
!1394 = !{!1340, !1338, !1325}
!1395 = !{!1342}
!1396 = !{!1342, !1325}
!1397 = !{!1344}
!1398 = !{!1346}
!1399 = !{!1346, !1344, !1348}
!1400 = !{!1346, !1344, !1325}
!1401 = !{!1350}
!1402 = !{!1351, !1325, !1324}
!1403 = !{!1351, !1325}
!1404 = !{!1353}
!1405 = !{!1355}
!1406 = !{!1357}
!1407 = !{!1357, !1355, !1353, !1324}
!1408 = !{!1357, !1355, !1353, !1325}
!1409 = !{!1361}
!1410 = !{!1363}
!1411 = !{!1365}
!1412 = !{!1367}
!1413 = !{!1367, !1365, !1363, !1361}
!1414 = !{!1367, !1365, !1363, !1361, !1325}
!1415 = !{!1369, !1324}
!1416 = !{!1371}
!1417 = !{!1373}
!1418 = !{!1375}
!1419 = !{!1375, !1373, !1371, !1324}
!1420 = !{!1375, !1373, !1371, !1325}
!1421 = distinct !{!1421, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier10ConnectionNtNtNtB14_7service14ipc_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2"}
!1422 = distinct !{!1422, !1421, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier10ConnectionNtNtNtB14_7service14ipc_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1423 = distinct !{!1423, i1 false, !"_RNvMs3_NtNtCsg6ZEkMtNi4J_8iceoryx24port8notifierINtB5_19ListenerConnectionsNtNtNtB9_7service14ipc_threadsafe7ServiceE6createCsacUAxWRcRNR_9__iceoryx2"}
!1424 = distinct !{!1424, !1423, !"_RNvMs3_NtNtCsg6ZEkMtNi4J_8iceoryx24port8notifierINtB5_19ListenerConnectionsNtNtNtB9_7service14ipc_threadsafe7ServiceE6createCsacUAxWRcRNR_9__iceoryx2: argument 1"}
!1425 = distinct !{!1425, !1423, !"_RNvMs3_NtNtCsg6ZEkMtNi4J_8iceoryx24port8notifierINtB5_19ListenerConnectionsNtNtNtB9_7service14ipc_threadsafe7ServiceE6createCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1426 = distinct !{!1426, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier10ConnectionNtNtNtB14_7service14ipc_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2"}
!1427 = distinct !{!1427, !1426, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier10ConnectionNtNtNtB14_7service14ipc_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1428 = !{!1422}
!1429 = !{!1425, !1424}
!1430 = !{!1424}
!1431 = !{!1425}
!1432 = !{!1427}
!1433 = distinct !{!1433, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier10ConnectionNtNtNtB14_7service16local_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2"}
!1434 = distinct !{!1434, !1433, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier10ConnectionNtNtNtB14_7service16local_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1435 = distinct !{!1435, i1 false, !"_RNvMs3_NtNtCsg6ZEkMtNi4J_8iceoryx24port8notifierINtB5_19ListenerConnectionsNtNtNtB9_7service16local_threadsafe7ServiceE6createCsacUAxWRcRNR_9__iceoryx2"}
!1436 = distinct !{!1436, !1435, !"_RNvMs3_NtNtCsg6ZEkMtNi4J_8iceoryx24port8notifierINtB5_19ListenerConnectionsNtNtNtB9_7service16local_threadsafe7ServiceE6createCsacUAxWRcRNR_9__iceoryx2: argument 1"}
!1437 = distinct !{!1437, !1435, !"_RNvMs3_NtNtCsg6ZEkMtNi4J_8iceoryx24port8notifierINtB5_19ListenerConnectionsNtNtNtB9_7service16local_threadsafe7ServiceE6createCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1438 = distinct !{!1438, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier10ConnectionNtNtNtB14_7service16local_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2"}
!1439 = distinct !{!1439, !1438, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier10ConnectionNtNtNtB14_7service16local_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1440 = !{!1434}
!1441 = !{!1437, !1436}
!1442 = !{!1436}
!1443 = !{!1437}
!1444 = !{!1439}
!1445 = distinct !{!1445, i1 false, !"_RNvMNtCsbqH9stoieM8_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtB13_14ipc_threadsafe7ServiceNtB13_10NoResourceEEE3newCsacUAxWRcRNR_9__iceoryx2"}
!1446 = distinct !{!1446, !1445, !"_RNvMNtCsbqH9stoieM8_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtB13_14ipc_threadsafe7ServiceNtB13_10NoResourceEEE3newCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1447 = distinct !{!1447, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node10SharedNodeNtNtNtBG_7service14ipc_threadsafe7ServiceEECsacUAxWRcRNR_9__iceoryx2"}
!1448 = distinct !{!1448, !1447, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node10SharedNodeNtNtNtBG_7service14ipc_threadsafe7ServiceEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1449 = distinct !{!1449, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCsg6ZEkMtNi4J_8iceoryx24node15SharedNodeStateNtNtNtB1e_7service14ipc_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2"}
!1450 = distinct !{!1450, !1449, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCsg6ZEkMtNi4J_8iceoryx24node15SharedNodeStateNtNtNtB1e_7service14ipc_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1451 = distinct !{!1451, i1 false, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx24node15SharedNodeStateNtNtNtBL_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2"}
!1452 = distinct !{!1452, !1451, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx24node15SharedNodeStateNtNtNtBL_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1453 = !{!1446}
!1454 = !{!1452, !1450, !1448}
!1455 = distinct !{!1455, i1 false, !"_RNvMNtCsbqH9stoieM8_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtB13_16local_threadsafe7ServiceNtB13_10NoResourceEEE3newCsacUAxWRcRNR_9__iceoryx2"}
!1456 = distinct !{!1456, !1455, !"_RNvMNtCsbqH9stoieM8_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtB13_16local_threadsafe7ServiceNtB13_10NoResourceEEE3newCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1457 = distinct !{!1457, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node10SharedNodeNtNtNtBG_7service16local_threadsafe7ServiceEECsacUAxWRcRNR_9__iceoryx2"}
!1458 = distinct !{!1458, !1457, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx24node10SharedNodeNtNtNtBG_7service16local_threadsafe7ServiceEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1459 = distinct !{!1459, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCsg6ZEkMtNi4J_8iceoryx24node15SharedNodeStateNtNtNtB1e_7service16local_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2"}
!1460 = distinct !{!1460, !1459, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCsg6ZEkMtNi4J_8iceoryx24node15SharedNodeStateNtNtNtB1e_7service16local_threadsafe7ServiceEEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1461 = distinct !{!1461, i1 false, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx24node15SharedNodeStateNtNtNtBL_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2"}
!1462 = distinct !{!1462, !1461, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx24node15SharedNodeStateNtNtNtBL_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1463 = !{!1456}
!1464 = !{!1462, !1460, !1458}
!1465 = distinct !{!1465, i1 false, !"_RNvMs_NvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory9publisher1__INtB4_11TinyClosureKj18_E4callCsacUAxWRcRNR_9__iceoryx2"}
!1466 = distinct !{!1466, !1465, !"_RNvMs_NvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory9publisher1__INtB4_11TinyClosureKj18_E4callCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1467 = distinct !{null}
!1468 = !{!1466}
!1469 = distinct !{!1469, i1 false, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2"}
!1470 = distinct !{!1470, !1469, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1471 = distinct !{!1471, !1469, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2: argument 1"}
!1472 = distinct !{!1472, !1469, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2: argument 2"}
!1473 = distinct !{!1473, i1 false, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2"}
!1474 = distinct !{!1474, !1473, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2: argument 1"}
!1475 = distinct !{!1475, !1473, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2: argument 2"}
!1476 = distinct !{!1476, !1473, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1477 = distinct !{!1477, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_14ipc_threadsafe7ServiceNtBE_10NoResourceEECsacUAxWRcRNR_9__iceoryx2"}
!1478 = distinct !{!1478, !1477, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_14ipc_threadsafe7ServiceNtBE_10NoResourceEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1479 = distinct !{!1479, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtB1c_14ipc_threadsafe7ServiceNtB1c_10NoResourceEEECsacUAxWRcRNR_9__iceoryx2"}
!1480 = distinct !{!1480, !1479, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtB1c_14ipc_threadsafe7ServiceNtB1c_10NoResourceEEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1481 = distinct !{!1481, i1 false, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_14ipc_threadsafe7ServiceNtBJ_10NoResourceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2"}
!1482 = distinct !{!1482, !1481, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_14ipc_threadsafe7ServiceNtBJ_10NoResourceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1483 = distinct !{!1483, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_14ipc_threadsafe7ServiceNtBE_10NoResourceEECsacUAxWRcRNR_9__iceoryx2"}
!1484 = distinct !{!1484, !1483, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_14ipc_threadsafe7ServiceNtBE_10NoResourceEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1485 = distinct !{!1485, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtB1c_14ipc_threadsafe7ServiceNtB1c_10NoResourceEEECsacUAxWRcRNR_9__iceoryx2"}
!1486 = distinct !{!1486, !1485, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtB1c_14ipc_threadsafe7ServiceNtB1c_10NoResourceEEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1487 = distinct !{!1487, i1 false, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_14ipc_threadsafe7ServiceNtBJ_10NoResourceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2"}
!1488 = distinct !{!1488, !1487, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_14ipc_threadsafe7ServiceNtBJ_10NoResourceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1489 = !{!1470}
!1490 = !{!1471}
!1491 = !{!1470, !1472}
!1492 = !{!1470, !1471, !1472}
!1493 = !{!1470, !1471}
!1494 = !{!1472}
!1495 = !{!1474}
!1496 = !{!1476, !1475}
!1497 = !{!1476, !1474, !1475}
!1498 = !{!1476, !1474}
!1499 = !{!1482, !1480, !1478}
!1500 = !{!1488, !1486, !1484}
!1501 = distinct !{!1501, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local14StorageContentEECsacUAxWRcRNR_9__iceoryx2"}
!1502 = distinct !{!1502, !1501, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local14StorageContentEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1503 = distinct !{!1503, i1 false, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local14StorageContentENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2"}
!1504 = distinct !{!1504, !1503, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local14StorageContentENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1505 = distinct !{!1505, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local7StorageECsacUAxWRcRNR_9__iceoryx2"}
!1506 = distinct !{!1506, !1505, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local7StorageECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1507 = distinct !{!1507, i1 false, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2"}
!1508 = distinct !{!1508, !1507, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1509 = distinct !{!1509, !1507, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2: argument 1"}
!1510 = distinct !{!1510, !1507, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2: argument 2"}
!1511 = distinct !{!1511, i1 false, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2"}
!1512 = distinct !{!1512, !1511, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2: argument 1"}
!1513 = distinct !{!1513, !1511, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2: argument 2"}
!1514 = distinct !{!1514, !1511, !"_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1515 = distinct !{!1515, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_16local_threadsafe7ServiceNtBE_10NoResourceEECsacUAxWRcRNR_9__iceoryx2"}
!1516 = distinct !{!1516, !1515, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_16local_threadsafe7ServiceNtBE_10NoResourceEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1517 = distinct !{!1517, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtB1c_16local_threadsafe7ServiceNtB1c_10NoResourceEEECsacUAxWRcRNR_9__iceoryx2"}
!1518 = distinct !{!1518, !1517, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtB1c_16local_threadsafe7ServiceNtB1c_10NoResourceEEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1519 = distinct !{!1519, i1 false, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_16local_threadsafe7ServiceNtBJ_10NoResourceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2"}
!1520 = distinct !{!1520, !1519, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_16local_threadsafe7ServiceNtBJ_10NoResourceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1521 = distinct !{!1521, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_16local_threadsafe7ServiceNtBE_10NoResourceEECsacUAxWRcRNR_9__iceoryx2"}
!1522 = distinct !{!1522, !1521, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_16local_threadsafe7ServiceNtBE_10NoResourceEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1523 = distinct !{!1523, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtB1c_16local_threadsafe7ServiceNtB1c_10NoResourceEEECsacUAxWRcRNR_9__iceoryx2"}
!1524 = distinct !{!1524, !1523, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtB1c_16local_threadsafe7ServiceNtB1c_10NoResourceEEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1525 = distinct !{!1525, i1 false, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_16local_threadsafe7ServiceNtBJ_10NoResourceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2"}
!1526 = distinct !{!1526, !1525, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_16local_threadsafe7ServiceNtBJ_10NoResourceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1527 = !{!1502}
!1528 = !{!1504}
!1529 = !{!1504, !1502, !1506}
!1530 = !{!1504, !1502}
!1531 = !{!1508}
!1532 = !{!1509}
!1533 = !{!1508, !1510}
!1534 = !{!1508, !1509, !1510}
!1535 = !{!1508, !1509}
!1536 = !{!1510}
!1537 = !{!1512}
!1538 = !{!1514, !1513}
!1539 = !{!1514, !1512, !1513}
!1540 = !{!1514, !1512}
!1541 = !{!1520, !1518, !1516}
!1542 = !{!1526, !1524, !1522}
!1543 = distinct !{!1543, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_14ipc_threadsafe7ServiceNtBE_10NoResourceEECsacUAxWRcRNR_9__iceoryx2"}
!1544 = distinct !{!1544, !1543, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_14ipc_threadsafe7ServiceNtBE_10NoResourceEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1545 = distinct !{!1545, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtB1c_14ipc_threadsafe7ServiceNtB1c_10NoResourceEEECsacUAxWRcRNR_9__iceoryx2"}
!1546 = distinct !{!1546, !1545, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtB1c_14ipc_threadsafe7ServiceNtB1c_10NoResourceEEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1547 = distinct !{!1547, i1 false, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_14ipc_threadsafe7ServiceNtBJ_10NoResourceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2"}
!1548 = distinct !{!1548, !1547, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_14ipc_threadsafe7ServiceNtBJ_10NoResourceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1549 = distinct !{!1549, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_14ipc_threadsafe7ServiceNtBE_10NoResourceEECsacUAxWRcRNR_9__iceoryx2"}
!1550 = distinct !{!1550, !1549, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_14ipc_threadsafe7ServiceNtBE_10NoResourceEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1551 = distinct !{!1551, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtB1c_14ipc_threadsafe7ServiceNtB1c_10NoResourceEEECsacUAxWRcRNR_9__iceoryx2"}
!1552 = distinct !{!1552, !1551, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtB1c_14ipc_threadsafe7ServiceNtB1c_10NoResourceEEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1553 = distinct !{!1553, i1 false, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_14ipc_threadsafe7ServiceNtBJ_10NoResourceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2"}
!1554 = distinct !{!1554, !1553, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_14ipc_threadsafe7ServiceNtBJ_10NoResourceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1555 = !{!1548, !1546, !1544}
!1556 = !{!1554, !1552, !1550}
!1557 = distinct !{!1557, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_16local_threadsafe7ServiceNtBE_10NoResourceEECsacUAxWRcRNR_9__iceoryx2"}
!1558 = distinct !{!1558, !1557, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_16local_threadsafe7ServiceNtBE_10NoResourceEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1559 = distinct !{!1559, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtB1c_16local_threadsafe7ServiceNtB1c_10NoResourceEEECsacUAxWRcRNR_9__iceoryx2"}
!1560 = distinct !{!1560, !1559, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtB1c_16local_threadsafe7ServiceNtB1c_10NoResourceEEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1561 = distinct !{!1561, i1 false, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_16local_threadsafe7ServiceNtBJ_10NoResourceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2"}
!1562 = distinct !{!1562, !1561, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_16local_threadsafe7ServiceNtBJ_10NoResourceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1563 = distinct !{!1563, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_16local_threadsafe7ServiceNtBE_10NoResourceEECsacUAxWRcRNR_9__iceoryx2"}
!1564 = distinct !{!1564, !1563, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_16local_threadsafe7ServiceNtBE_10NoResourceEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1565 = distinct !{!1565, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtB1c_16local_threadsafe7ServiceNtB1c_10NoResourceEEECsacUAxWRcRNR_9__iceoryx2"}
!1566 = distinct !{!1566, !1565, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtB1c_16local_threadsafe7ServiceNtB1c_10NoResourceEEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1567 = distinct !{!1567, i1 false, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_16local_threadsafe7ServiceNtBJ_10NoResourceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2"}
!1568 = distinct !{!1568, !1567, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_16local_threadsafe7ServiceNtBJ_10NoResourceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1569 = distinct !{!1569, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local14StorageContentEECsacUAxWRcRNR_9__iceoryx2"}
!1570 = distinct !{!1570, !1569, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local14StorageContentEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1571 = distinct !{!1571, i1 false, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local14StorageContentENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2"}
!1572 = distinct !{!1572, !1571, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local14StorageContentENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1573 = distinct !{!1573, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local7StorageECsacUAxWRcRNR_9__iceoryx2"}
!1574 = distinct !{!1574, !1573, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local7StorageECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1575 = !{!1562, !1560, !1558}
!1576 = !{!1568, !1566, !1564}
!1577 = !{!1570}
!1578 = !{!1572}
!1579 = !{!1572, !1570, !1574}
!1580 = !{!1572, !1570}
!1581 = distinct !{!1581, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_14ipc_threadsafe7ServiceINtNtNtBE_7builder10blackboard19BlackboardResourcesB1v_EEECsacUAxWRcRNR_9__iceoryx2"}
!1582 = distinct !{!1582, !1581, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_14ipc_threadsafe7ServiceINtNtNtBE_7builder10blackboard19BlackboardResourcesB1v_EEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1583 = distinct !{!1583, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtB1c_14ipc_threadsafe7ServiceINtNtNtB1c_7builder10blackboard19BlackboardResourcesB1X_EEEECsacUAxWRcRNR_9__iceoryx2"}
!1584 = distinct !{!1584, !1583, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtB1c_14ipc_threadsafe7ServiceINtNtNtB1c_7builder10blackboard19BlackboardResourcesB1X_EEEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1585 = distinct !{!1585, i1 false, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_14ipc_threadsafe7ServiceINtNtNtBJ_7builder10blackboard19BlackboardResourcesB1u_EEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2"}
!1586 = distinct !{!1586, !1585, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_14ipc_threadsafe7ServiceINtNtNtBJ_7builder10blackboard19BlackboardResourcesB1u_EEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1587 = distinct !{!1587, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_14ipc_threadsafe7ServiceINtNtNtBE_7builder10blackboard19BlackboardResourcesB1v_EEECsacUAxWRcRNR_9__iceoryx2"}
!1588 = distinct !{!1588, !1587, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_14ipc_threadsafe7ServiceINtNtNtBE_7builder10blackboard19BlackboardResourcesB1v_EEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1589 = distinct !{!1589, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtB1c_14ipc_threadsafe7ServiceINtNtNtB1c_7builder10blackboard19BlackboardResourcesB1X_EEEECsacUAxWRcRNR_9__iceoryx2"}
!1590 = distinct !{!1590, !1589, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtB1c_14ipc_threadsafe7ServiceINtNtNtB1c_7builder10blackboard19BlackboardResourcesB1X_EEEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1591 = distinct !{!1591, i1 false, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_14ipc_threadsafe7ServiceINtNtNtBJ_7builder10blackboard19BlackboardResourcesB1u_EEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2"}
!1592 = distinct !{!1592, !1591, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_14ipc_threadsafe7ServiceINtNtNtBJ_7builder10blackboard19BlackboardResourcesB1u_EEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1593 = !{!1586, !1584, !1582}
!1594 = !{!1592, !1590, !1588}
!1595 = distinct !{!1595, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_16local_threadsafe7ServiceINtNtNtBE_7builder10blackboard19BlackboardResourcesB1v_EEECsacUAxWRcRNR_9__iceoryx2"}
!1596 = distinct !{!1596, !1595, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_16local_threadsafe7ServiceINtNtNtBE_7builder10blackboard19BlackboardResourcesB1v_EEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1597 = distinct !{!1597, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtB1c_16local_threadsafe7ServiceINtNtNtB1c_7builder10blackboard19BlackboardResourcesB1X_EEEECsacUAxWRcRNR_9__iceoryx2"}
!1598 = distinct !{!1598, !1597, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtB1c_16local_threadsafe7ServiceINtNtNtB1c_7builder10blackboard19BlackboardResourcesB1X_EEEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1599 = distinct !{!1599, i1 false, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_16local_threadsafe7ServiceINtNtNtBJ_7builder10blackboard19BlackboardResourcesB1u_EEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2"}
!1600 = distinct !{!1600, !1599, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_16local_threadsafe7ServiceINtNtNtBJ_7builder10blackboard19BlackboardResourcesB1u_EEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1601 = distinct !{!1601, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_16local_threadsafe7ServiceINtNtNtBE_7builder10blackboard19BlackboardResourcesB1v_EEECsacUAxWRcRNR_9__iceoryx2"}
!1602 = distinct !{!1602, !1601, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsg6ZEkMtNi4J_8iceoryx27service18SharedServiceStateNtNtBE_16local_threadsafe7ServiceINtNtNtBE_7builder10blackboard19BlackboardResourcesB1v_EEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1603 = distinct !{!1603, i1 false, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtB1c_16local_threadsafe7ServiceINtNtNtB1c_7builder10blackboard19BlackboardResourcesB1X_EEEECsacUAxWRcRNR_9__iceoryx2"}
!1604 = distinct !{!1604, !1603, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtB1c_16local_threadsafe7ServiceINtNtNtB1c_7builder10blackboard19BlackboardResourcesB1X_EEEECsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1605 = distinct !{!1605, i1 false, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_16local_threadsafe7ServiceINtNtNtBJ_7builder10blackboard19BlackboardResourcesB1u_EEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2"}
!1606 = distinct !{!1606, !1605, !"_RNvXsE_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCsg6ZEkMtNi4J_8iceoryx27service12ServiceStateNtNtBJ_16local_threadsafe7ServiceINtNtNtBJ_7builder10blackboard19BlackboardResourcesB1u_EEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1607 = !{!1600, !1598, !1596}
!1608 = !{!1606, !1604, !1602}
!1609 = distinct !{!1609, i1 false, !"_RNvMs7_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service14ipc_threadsafe7ServiceSNtNtB19_7builder19CustomPayloadMarkerNtB1N_18CustomHeaderMarkerB1K_B2m_E22loan_slice_uninit_implCsacUAxWRcRNR_9__iceoryx2"}
!1610 = distinct !{!1610, !1609, !"_RNvMs7_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service14ipc_threadsafe7ServiceSNtNtB19_7builder19CustomPayloadMarkerNtB1N_18CustomHeaderMarkerB1K_B2m_E22loan_slice_uninit_implCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1611 = distinct !{!1611, !1609, !"_RNvMs7_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service14ipc_threadsafe7ServiceSNtNtB19_7builder19CustomPayloadMarkerNtB1N_18CustomHeaderMarkerB1K_B2m_E22loan_slice_uninit_implCsacUAxWRcRNR_9__iceoryx2: argument 1"}
!1612 = distinct !{!1612, i1 false, !"_RNvMs3_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service14ipc_threadsafe7ServiceSNtNtB19_7builder19CustomPayloadMarkerNtB1N_18CustomHeaderMarkerB1K_B2m_E22increment_loan_counterCsacUAxWRcRNR_9__iceoryx2"}
!1613 = distinct !{!1613, !1612, !"_RNvMs3_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service14ipc_threadsafe7ServiceSNtNtB19_7builder19CustomPayloadMarkerNtB1N_18CustomHeaderMarkerB1K_B2m_E22increment_loan_counterCsacUAxWRcRNR_9__iceoryx2: argument 0"}
!1614 = distinct !{!1614, i1 false, !"_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout"}
!1615 = distinct !{!1615, !1614, !"_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout: argument 0"}
!1616 = !{!1610}
!1617 = !{!1611}
!1618 = !{!1610, !1611}
!1619 = !{!1613}
!1620 = !{!1613, !1610, !1611}
end_hunk_3

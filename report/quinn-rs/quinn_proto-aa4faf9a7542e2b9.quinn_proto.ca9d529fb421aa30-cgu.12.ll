Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.12?download=true
inline.NumInlined: 810
inline.NumDeleted: 387
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMNtCshovLROGBtMy_11quinn_proto20transport_parametersNtB3_19TransportParameters3newNtNtNtCs5Qxcy9OyWl9_4rand4rngs3std6StdRngEB5_:bb.a
    #dbg_value(ptr poison, !6940, !DIExpression(), !6941)
    #dbg_value(ptr %i.dd, !6937, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6943)
    #dbg_value(ptr %i.dd, !6944, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6950)
    #dbg_value(i64 %i.dc, !6937, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6943)
    #dbg_value(i64 %i.dc, !6944, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6950)
    #dbg_value(ptr %i.dg, !6939, !DIExpression(), !6943)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !6952, !noalias !6953
  %i.dk = load i32, ptr %i.dg, align 4, !dbg !6952, !noalias !6958, !noundef !30
  store i32 %i.dk, ptr %i.c, align 4, !dbg !6959, !noalias !6953
    #dbg_value(ptr %i.c, !6949, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6950)
    #dbg_value(i64 4, !6949, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6950)
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull %i.dd, i64 noundef %i.dc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19), !dbg !6960, !noalias !6958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !6961, !noalias !6953
    #dbg_value(ptr undef, !6679, !DIExpression(), !6707)
    #dbg_value(ptr undef, !6672, !DIExpression(), !6706)
    #dbg_value(ptr undef, !6654, !DIExpression(), !6662)
    #dbg_value(ptr undef, !6661, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6766)
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.da, %.sroa.0.032.i.i.i.i.i, !dbg !6767
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !dbg !6768

_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsiNSaSRGY86g_9rand_core5blockINtB3r_8BlockRngINtCshJYlBnZeDKb_8chacha2010ChaChaCoreNtB4g_3R12NtNtB4g_8variants6LegacyEE10fill_bytes0E0ECshovLROGBtMy_11quinn_proto.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCshovLROGBtMy_11quinn_proto.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !6637, !noalias !6341
  %i.dl = add i64 %.sroa.7.0.i.i.i.i, %.sroa.05.2.i.i.i, !dbg !6962 ; 4 uses
    #dbg_value(i64 %i.dl, !5992, !DIExpression(), !6285)
    #dbg_value(i64 %i.dl, !6078, !DIExpression(), !6079)
    #dbg_value(!DIArgList(i64 %.sroa.0.073.i.i.i, i64 %..i.i.i.i.i), !5990, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_plus, DW_OP_stack_value), !6231)
    #dbg_value(ptr %i.n, !6200, !DIExpression(), !6963)
  %i.dm = load ptr, ptr %i.n, align 8, !dbg !6964, !noalias !6341, !nonnull !30, !noundef !30 ; 3 uses
    #dbg_value(ptr %i.dm, !6201, !DIExpression(), !6965)
    #dbg_value(ptr %i.dm, !6178, !DIExpression(), !6179)
  %i.dn = load ptr, ptr %i.bi, align 8, !dbg !6966, !noalias !6341, !nonnull !30, !noundef !30
    #dbg_value(ptr %i.dn, !6202, !DIExpression(), !6967)
    #dbg_value(ptr poison, !6968, !DIExpression(), !6972)
    #dbg_value(ptr poison, !6971, !DIExpression(), !6974)
  %i.do = icmp eq ptr %i.dm, %i.dn, !dbg !6975
  br i1 %i.do, label %bb.w, label %bb.r, !dbg !6976

bb.r:                                             ; preds = %_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsiNSaSRGY86g_9rand_core5blockINtB3r_8BlockRngINtCshJYlBnZeDKb_8chacha2010ChaChaCoreNtB4g_3R12NtNtB4g_8variants6LegacyEE10fill_bytes0E0ECshovLROGBtMy_11quinn_proto.exit.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 4, !dbg !6977
  store ptr %i.dp, ptr %i.n, align 8, !dbg !6978, !noalias !6341
    #dbg_value(ptr %i.dm, !6046, !DIExpression(), !6979)
  %i.dq = load ptr, ptr %i.o, align 8, !dbg !6980, !noalias !6341, !nonnull !30, !noundef !30
  %i.dr = load i64, ptr %i.bg, align 8, !dbg !6980, !noalias !6341, !noundef !30 ; 5 uses
    #dbg_value(ptr %i.dq, !6048, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6981)
    #dbg_value(ptr %i.dq, !6982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6990)
    #dbg_value(i64 %i.dr, !6048, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6981)
    #dbg_value(i64 %i.dr, !6982, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6990)
    #dbg_value(i64 %i.dr, !6050, !DIExpression(), !6992)
    #dbg_value(i64 %i.dr, !6229, !DIExpression(), !6993)
    #dbg_value(i64 %i.dr, !6219, !DIExpression(), !6994)
    #dbg_value(i64 %i.dr, !6206, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6213)
    #dbg_value(i64 %i.dr, !6212, !DIExpression(), !6213)
  %.not.i.i.i = icmp eq i64 %i.dr, 0, !dbg !6995
  br i1 %.not.i.i.i, label %bb.s, label %bb.t, !dbg !6995

bb.s:                                             ; preds = %bb.u, %bb.r
  %.sroa.05.3.i.i.i = phi i64 [ %i.du, %bb.u ], [ %i.dl, %bb.r ], !dbg !6615
    #dbg_value(i64 %.sroa.05.3.i.i.i, !6078, !DIExpression(), !6079)
    #dbg_value(i64 %.sroa.05.3.i.i.i, !5992, !DIExpression(), !6285)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !6996, !noalias !6341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !6997, !noalias !6341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !6998, !noalias !6341
  br label %.loopexit.i.i.i, !dbg !6999

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !7002, !noalias !6341
  %i.ds = load i32, ptr %i.dm, align 4, !dbg !7002, !noalias !5905, !noundef !30
  store i32 %i.ds, ptr %i.l, align 4, !dbg !7003, !noalias !6341
    #dbg_value(ptr poison, !6228, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6993)
    #dbg_value(ptr poison, !6220, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6994)
    #dbg_value(ptr poison, !6211, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6213)
    #dbg_value(i64 4, !6228, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6993)
    #dbg_value(i64 4, !6220, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6994)
    #dbg_value(i64 4, !6211, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6213)
  %i.dt = icmp ult i64 %i.dr, 5, !dbg !7004
  br i1 %i.dt, label %bb.u, label %bb.v, !dbg !7004, !prof !7005

bb.u:                                             ; preds = %bb.t
    #dbg_value(ptr %i.l, !6228, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6993)
    #dbg_value(ptr %i.l, !6220, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6994)
    #dbg_value(ptr %i.l, !6211, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6213)
    #dbg_value(ptr %i.l, !6985, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6990)
    #dbg_value(i64 %i.dr, !6985, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6990)
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull %i.dq, i64 noundef %i.dr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.dr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45), !dbg !7006, !noalias !5905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !7007, !noalias !6341
  %i.du = add i64 %i.dl, 1, !dbg !7008
    #dbg_value(i64 %i.du, !5992, !DIExpression(), !6285)
    #dbg_value(i64 %i.du, !6078, !DIExpression(), !6079)
  br label %bb.s, !dbg !7009

bb.v:                                             ; preds = %bb.t
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dr, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #27, !dbg !7010, !noalias !5905
  unreachable, !dbg !7010

bb.w:                                             ; preds = %_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsiNSaSRGY86g_9rand_core5blockINtB3r_8BlockRngINtCshJYlBnZeDKb_8chacha2010ChaChaCoreNtB4g_3R12NtNtB4g_8variants6LegacyEE10fill_bytes0E0ECshovLROGBtMy_11quinn_proto.exit.i.i.i
  %i.dv = shl i64 %.sroa.7.0.i.i.i.i, 2, !dbg !7011
    #dbg_value(!DIArgList(i64 %.sroa.0.073.i.i.i, i64 %i.dv), !5990, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6231)
  %i.dw = add i64 %i.dv, %.sroa.0.073.i.i.i, !dbg !7012 ; 2 uses
    #dbg_value(i64 %i.dw, !5990, !DIExpression(), !6231)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !6996, !noalias !6341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !6997, !noalias !6341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !6998, !noalias !6341
    #dbg_value(i64 %i.dl, !6078, !DIExpression(), !6079)
    #dbg_value(i64 %i.dl, !5992, !DIExpression(), !6285)
  %i.dx = icmp ult i64 %i.dw, %i.ay, !dbg !6286
  br i1 %i.dx, label %bb.f, label %.loopexit.i.i.i, !dbg !6286

bb.x:                                             ; preds = %_RINvMs3_NtCshovLROGBtMy_11quinn_proto20transport_parametersNtB6_26ReservedTransportParameter20generate_reserved_idNtNtNtCs5Qxcy9OyWl9_4rand4rngs3std6StdRngEB8_.exit.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ay, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #27, !dbg !7013, !noalias !5905
  unreachable, !dbg !7013

_RINvMs3_NtCshovLROGBtMy_11quinn_proto20transport_parametersNtB6_26ReservedTransportParameter6randomNtNtNtCs5Qxcy9OyWl9_4rand4rngs3std6StdRngEB8_.exit: ; preds = %.loopexit.i.i.i
    #dbg_value(i64 poison, !5912, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5924)
    #dbg_value(i64 poison, !5826, !DIExpression(), !5929)
  %.sroa.6.0.extract.shift.i.i.i.i.i = lshr i64 %.sroa.03.0.insert.insert.i.i.i.i, 32
    #dbg_value(i64 %.sroa.6.0.extract.shift.i.i.i.i.i, !6325, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !6335)
  %.sroa.6.0.extract.trunc.i.i.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i.i to i32
    #dbg_value(i32 %.sroa.6.0.extract.trunc.i.i.i.i.i, !6325, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !6335)
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i, ptr %7, align 4, !dbg !7014, !alias.scope !6233, !noalias !6234
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.414.sroa.0, ptr noundef nonnull align 1 dereferenceable(16) %i.p, i64 16, i1 false), !dbg !7015
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !7016, !noalias !5936
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !7017
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.q, align 16, !dbg !7018
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !7018
  store <4 x i8> <i8 16, i8 17, i8 18, i8 19>, ptr %.sroa.19.0..sroa_idx, align 16, !dbg !7018
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 20, !dbg !7018
  store i8 20, ptr %.sroa.23.0..sroa_idx, align 4, !dbg !7018
    #dbg_value(ptr %i.q, !5692, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5695)
    #dbg_value(i64 21, !5692, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5695)
  call void @llvm.experimental.noalias.scope.decl(metadata !7019), !dbg !7022
    #dbg_value(ptr poison, !7023, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !7031)
    #dbg_value(ptr poison, !7029, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !7112)
    #dbg_value(ptr poison, !7023, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !7114)
    #dbg_value(ptr poison, !7029, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !7119)
    #dbg_value(ptr poison, !7121, !DIExpression(), !7125)
    #dbg_value(ptr poison, !7130, !DIExpression(), !7142)
    #dbg_value(ptr poison, !7139, !DIExpression(), !7143)
    #dbg_value(ptr poison, !7121, !DIExpression(), !7144)
    #dbg_value(ptr poison, !7130, !DIExpression(), !7149)
    #dbg_value(ptr poison, !7139, !DIExpression(), !7150)
    #dbg_value(ptr %i.q, !7085, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7151)
    #dbg_value(ptr %i.q, !7073, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7152)
    #dbg_value(ptr %i.q, !7063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7153)
    #dbg_value(ptr %i.q, !7073, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7154)
    #dbg_value(ptr %i.q, !7063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7155)
    #dbg_value(i64 21, !7085, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7151)
    #dbg_value(i64 21, !7073, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7152)
    #dbg_value(i64 21, !7063, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7153)
    #dbg_value(i64 21, !7073, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7154)
    #dbg_value(i64 21, !7063, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7155)
    #dbg_value(ptr %7, !7086, !DIExpression(), !7151)
    #dbg_value(ptr %7, !7156, !DIExpression(), !7166)
    #dbg_value(i64 21, !7087, !DIExpression(), !7151)
    #dbg_declare(ptr %i.b, !7089, !DIExpression(), !7168)
    #dbg_value(i64 1, !7169, !DIExpression(), !7173)
    #dbg_value(i64 1, !7175, !DIExpression(), !7179)
    #dbg_value(i64 1, !7030, !DIExpression(), !7114)
    #dbg_value(i64 1, !7181, !DIExpression(), !7186)
    #dbg_value(i64 1, !7030, !DIExpression(), !7119)
    #dbg_value(i64 1, !7169, !DIExpression(), !7188)
    #dbg_value(i64 1, !7175, !DIExpression(), !7191)
    #dbg_value(i64 1, !7030, !DIExpression(), !7031)
    #dbg_value(i64 1, !7181, !DIExpression(), !7194)
    #dbg_value(i64 1, !7030, !DIExpression(), !7112)
    #dbg_value(i64 0, !7088, !DIExpression(), !7196)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !7197, !noalias !7198
    #dbg_value(i32 0, !7163, !DIExpression(), !7166)
    #dbg_value(i8 1, !7164, !DIExpression(), !7201)
  store ptr %7, ptr %i.b, align 8, !dbg !7202, !noalias !7198
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !7202 ; 2 uses
  store i32 0, ptr %i.dy, align 8, !dbg !7202, !noalias !7198
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !7202 ; 3 uses
  store i32 0, ptr %i.dz, align 4, !dbg !7202, !noalias !7198
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !7202 ; 2 uses
  store i8 1, ptr %i.ea, align 8, !dbg !7202, !noalias !7198
    #dbg_value(i64 0, !7100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7203)
    #dbg_value(i64 21, !7100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7203)
    #dbg_value(ptr undef, !7139, !DIExpression(), !7150)
    #dbg_value(ptr undef, !7130, !DIExpression(), !7149)
    #dbg_value(ptr undef, !7121, !DIExpression(), !7144)
    #dbg_value(ptr undef, !7124, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7204)
  br label %bb.y, !dbg !7205

bb.y:                                             ; preds = %bb.ad, %_RINvMs3_NtCshovLROGBtMy_11quinn_proto20transport_parametersNtB6_26ReservedTransportParameter6randomNtNtNtCs5Qxcy9OyWl9_4rand4rngs3std6StdRngEB8_.exit
  %i.eb = phi i32 [ 0, %_RINvMs3_NtCshovLROGBtMy_11quinn_proto20transport_parametersNtB6_26ReservedTransportParameter6randomNtNtNtCs5Qxcy9OyWl9_4rand4rngs3std6StdRngEB8_.exit ], [ %i.ev, %bb.ad ]
  %i.ec = phi i8 [ 1, %_RINvMs3_NtCshovLROGBtMy_11quinn_proto20transport_parametersNtB6_26ReservedTransportParameter6randomNtNtNtCs5Qxcy9OyWl9_4rand4rngs3std6StdRngEB8_.exit ], [ %.sroa.01.0.i.i, %bb.ad ], !dbg !7206 ; 2 uses
  %i.ed = phi i32 [ 0, %_RINvMs3_NtCshovLROGBtMy_11quinn_proto20transport_parametersNtB6_26ReservedTransportParameter6randomNtNtNtCs5Qxcy9OyWl9_4rand4rngs3std6StdRngEB8_.exit ], [ %i.ef, %bb.ad ], !dbg !7223 ; 2 uses
  %.sroa.0.052.i = phi i64 [ 0, %_RINvMs3_NtCshovLROGBtMy_11quinn_proto20transport_parametersNtB6_26ReservedTransportParameter6randomNtNtNtCs5Qxcy9OyWl9_4rand4rngs3std6StdRngEB8_.exit ], [ %i.ee, %bb.ad ] ; 2 uses
    #dbg_value(i64 %.sroa.0.052.i, !7131, !DIExpression(), !7224)
    #dbg_value(i64 %.sroa.0.052.i, !7172, !DIExpression(), !7173)
    #dbg_value(i64 %.sroa.0.052.i, !7178, !DIExpression(), !7179)
  %i.ee = add nuw nsw i64 %.sroa.0.052.i, 1, !dbg !7225 ; 2 uses
    #dbg_value(i64 %i.ee, !7100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7203)
    #dbg_value(i64 %.sroa.0.052.i, !7102, !DIExpression(), !7226)
    #dbg_value(i64 %.sroa.0.052.i, !7074, !DIExpression(), !7152)
    #dbg_value(i64 %.sroa.0.052.i, !7064, !DIExpression(), !7153)
    #dbg_value(i64 %.sroa.0.052.i, !7227, !DIExpression(), !7231)
    #dbg_value(ptr poison, !7233, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7264)
    #dbg_value(ptr %i.b, !7214, !DIExpression(), !7266)
    #dbg_value(i8 1, !7267, !DIExpression(), !7274)
  %i.ef = add nuw nsw i32 %i.ed, 1, !dbg !7223    ; 8 uses
    #dbg_value(i32 %i.ef, !7215, !DIExpression(), !7276)
    #dbg_value(i8 %i.ec, !7273, !DIExpression(), !7274)
  %i.eg = icmp eq i8 %i.ec, 0, !dbg !7277
  br i1 %i.eg, label %bb.aa, label %bb.z, !dbg !7277

bb.z:                                             ; preds = %bb.y
  %i.eh = add i8 %i.ec, -1, !dbg !7278
    #dbg_value(i8 %i.eh, !7261, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !7264)
    #dbg_value(i8 1, !7261, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !7264)
    #dbg_value(ptr undef, !7233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7264)
    #dbg_value(ptr undef, !7279, !DIExpression(DW_OP_deref), !7289)
    #dbg_value(ptr %i.b, !7233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7264)
    #dbg_value(ptr %i.b, !7284, !DIExpression(DW_OP_deref), !7289)
    #dbg_value(ptr %i.b, !7233, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !7264)
    #dbg_value(ptr %i.b, !7285, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_deref, DW_OP_stack_value), !7289)
    #dbg_value(i8 %i.eh, !7216, !DIExpression(), !7291)
  br label %bb.ab, !dbg !7292

bb.aa:                                            ; preds = %bb.y
    #dbg_value(i1 false, !7261, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !7264)
    #dbg_value(i8 poison, !7261, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !7264)
    #dbg_value(ptr undef, !7233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7264)
    #dbg_value(ptr undef, !7279, !DIExpression(DW_OP_deref), !7289)
    #dbg_value(ptr %i.b, !7233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7264)
    #dbg_value(ptr %i.b, !7284, !DIExpression(DW_OP_deref), !7289)
    #dbg_value(ptr %i.dz, !7233, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !7264)
    #dbg_value(ptr %i.dz, !7285, !DIExpression(DW_OP_deref), !7289)
    #dbg_value(i32 %i.ef, !7293, !DIExpression(), !7302)
    #dbg_value(i32 %i.ef, !7304, !DIExpression(), !7316)
  %i.ei = icmp eq i32 %i.ef, 2, !dbg !7318
  br i1 %i.ei, label %_RNCNvMNtNtCs5Qxcy9OyWl9_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtNtB8_4rngs3std6StdRngE10next_index0CshovLROGBtMy_11quinn_proto.exit.i.i, label %.preheader.i.i.i, !dbg !7318

.preheader.i.i.i:                                 ; preds = %bb.aa
  %.sroa.0.011.i.i.i = add nuw nsw i32 %i.ed, 2, !dbg !7319 ; 3 uses
  %i.ej = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ef, i32 %.sroa.0.011.i.i.i), !dbg !7320 ; 2 uses
  %i.ek = extractvalue { i32, i1 } %i.ej, 1, !dbg !7320
  br i1 %i.ek, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i48, !dbg !7354, !prof !7363

.lr.ph.i.i.i48:                                   ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i48
  %8 = phi { i32, i1 } [ %i.el, %.lr.ph.i.i.i48 ], [ %i.ej, %.preheader.i.i.i ]
  %.sroa.0.012.i.i.i = phi i32 [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i48 ], [ %.sroa.0.011.i.i.i, %.preheader.i.i.i ]
  %9 = extractvalue { i32, i1 } %8, 0, !dbg !7320 ; 2 uses
    #dbg_value(i32 %9, !7350, !DIExpression(), !7364)
    #dbg_value(i32 %9, !7286, !DIExpression(), !7365)
    #dbg_value(i32 %9, !7308, !DIExpression(), !7319)
    #dbg_value(i32 %9, !7312, !DIExpression(), !7366)
    #dbg_value(i32 %.sroa.0.012.i.i.i, !7310, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !7367)
  %.sroa.0.0.i.i.i = add i32 %.sroa.0.012.i.i.i, 1, !dbg !7319 ; 3 uses
    #dbg_value(i32 %.sroa.0.0.i.i.i, !7310, !DIExpression(), !7367)
    #dbg_value(i32 %9, !7348, !DIExpression(), !7368)
    #dbg_value(i32 %9, !7330, !DIExpression(), !7369)
    #dbg_value(i32 %.sroa.0.0.i.i.i, !7349, !DIExpression(), !7368)
    #dbg_value(i32 %.sroa.0.0.i.i.i, !7331, !DIExpression(), !7369)
  %i.el = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 %.sroa.0.0.i.i.i), !dbg !7320 ; 2 uses
  %i.em = extractvalue { i32, i1 } %i.el, 1, !dbg !7320
    #dbg_value(i32 poison, !7350, !DIExpression(), !7364)
    #dbg_value(i1 %i.em, !7352, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7364)
    #dbg_value(i1 %i.em, !7361, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !7370)
  br i1 %i.em, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i48, !dbg !7354, !prof !7371

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i48, %.preheader.i.i.i
  %.sroa.03.1.lcssa.i.i.i = phi i32 [ %i.ef, %.preheader.i.i.i ], [ %9, %.lr.ph.i.i.i48 ], !dbg !7316
  %.sroa.0.0.lcssa.i.i.i = phi i32 [ %.sroa.0.011.i.i.i, %.preheader.i.i.i ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i48 ], !dbg !7319
  %i.en = sub i32 %.sroa.0.0.lcssa.i.i.i, %i.ef, !dbg !7372
  %i.eo = trunc i32 %i.en to i8, !dbg !7372
    #dbg_value(i8 %i.eo, !7288, !DIExpression(), !7365)
  %i.ep = add i8 %i.eo, -1, !dbg !7373
  br label %_RNCNvMNtNtCs5Qxcy9OyWl9_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtNtB8_4rngs3std6StdRngE10next_index0CshovLROGBtMy_11quinn_proto.exit.i.i, !dbg !7374

_RNCNvMNtNtCs5Qxcy9OyWl9_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtNtB8_4rngs3std6StdRngE10next_index0CshovLROGBtMy_11quinn_proto.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.aa
  %.sroa.05.0.i.i.i = phi i8 [ %i.ep, %._crit_edge.i.i.i ], [ 10, %bb.aa ], !dbg !7302
  %.sroa.03.0.i.i.i = phi i32 [ %.sroa.03.1.lcssa.i.i.i, %._crit_edge.i.i.i ], [ 479001600, %bb.aa ], !dbg !7302
    #dbg_value(i32 %.sroa.03.0.i.i.i, !7312, !DIExpression(), !7366)
    #dbg_value(i32 %.sroa.03.0.i.i.i, !7308, !DIExpression(), !7319)
    #dbg_value(i32 %.sroa.03.0.i.i.i, !7286, !DIExpression(), !7365)
    #dbg_value(i8 %.sroa.05.0.i.i.i, !7288, !DIExpression(), !7365)
  %i.eq = call noundef i32 @_RINvYQNtNtNtCs5Qxcy9OyWl9_4rand4rngs3std6StdRngNtNtBa_3rng6RngExt12random_rangemINtNtNtCskKLDkoKarTP_4core3ops5range7RangeTomEECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i32 noundef %.sroa.03.0.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17), !dbg !7375, !noalias !7376 ; 2 uses
  store i32 %i.eq, ptr %i.dz, align 4, !dbg !7379, !alias.scope !7380, !noalias !7383
    #dbg_value(i8 %.sroa.05.0.i.i.i, !7216, !DIExpression(), !7291)
  br label %bb.ab, !dbg !7384

bb.ab:                                            ; preds = %_RNCNvMNtNtCs5Qxcy9OyWl9_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtNtB8_4rngs3std6StdRngE10next_index0CshovLROGBtMy_11quinn_proto.exit.i.i, %bb.z
  %i.er = phi i32 [ %i.eq, %_RNCNvMNtNtCs5Qxcy9OyWl9_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtNtB8_4rngs3std6StdRngE10next_index0CshovLROGBtMy_11quinn_proto.exit.i.i ], [ %i.eb, %bb.z ] ; 4 uses
  %.sroa.01.0.i.i = phi i8 [ %.sroa.05.0.i.i.i, %_RNCNvMNtNtCs5Qxcy9OyWl9_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtNtB8_4rngs3std6StdRngE10next_index0CshovLROGBtMy_11quinn_proto.exit.i.i ], [ %i.eh, %bb.z ], !dbg !7264 ; 3 uses
    #dbg_value(i8 %.sroa.01.0.i.i, !7216, !DIExpression(), !7291)
  %i.es = icmp eq i8 %.sroa.01.0.i.i, 0, !dbg !7385
  br i1 %i.es, label %_RNvMNtNtCs5Qxcy9OyWl9_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtNtB6_4rngs3std6StdRngE10next_indexCshovLROGBtMy_11quinn_proto.exit.i, label %bb.ac, !dbg !7385

bb.ac:                                            ; preds = %bb.ab
    #dbg_value(i32 %i.ef, !7215, !DIExpression(), !7276)
  %i.et = urem i32 %i.er, %i.ef, !dbg !7386
    #dbg_value(i32 %i.et, !7220, !DIExpression(), !7387)
  %i.eu = udiv i32 %i.er, %i.ef, !dbg !7388       ; 2 uses
  store i32 %i.eu, ptr %i.dz, align 4, !dbg !7388, !alias.scope !7380, !noalias !7198
    #dbg_value(i32 %i.et, !7218, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7389)
  br label %_RNvMNtNtCs5Qxcy9OyWl9_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtNtB6_4rngs3std6StdRngE10next_indexCshovLROGBtMy_11quinn_proto.exit.i, !dbg !7390

_RNvMNtNtCs5Qxcy9OyWl9_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtNtB6_4rngs3std6StdRngE10next_indexCshovLROGBtMy_11quinn_proto.exit.i: ; preds = %bb.ac, %bb.ab
  %i.ev = phi i32 [ %i.eu, %bb.ac ], [ %i.er, %bb.ab ]
  %.sroa.0.0.in.i.i = phi i32 [ %i.et, %bb.ac ], [ %i.er, %bb.ab ] ; 2 uses
  %.sroa.0.0.i.i = zext i32 %.sroa.0.0.in.i.i to i64, !dbg !7291 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.i.i, !7218, !DIExpression(), !7389)
  store i8 %.sroa.01.0.i.i, ptr %i.ea, align 8, !dbg !7391, !alias.scope !7380, !noalias !7198
    #dbg_value(i32 %i.ef, !7215, !DIExpression(), !7276)
  store i32 %i.ef, ptr %i.dy, align 8, !dbg !7392, !alias.scope !7380, !noalias !7198
    #dbg_value(i64 %.sroa.0.0.i.i, !7104, !DIExpression(), !7393)
    #dbg_value(i64 %.sroa.0.0.i.i, !7075, !DIExpression(), !7152)
    #dbg_value(i64 %.sroa.0.0.i.i, !7065, !DIExpression(), !7153)
    #dbg_value(i64 %.sroa.0.0.i.i, !7227, !DIExpression(), !7394)
  %i.ew = icmp ult i32 %.sroa.0.0.in.i.i, 21, !dbg !7396
  br i1 %i.ew, label %bb.ad, label %bb.ae, !dbg !7396

bb.ad:                                            ; preds = %_RNvMNtNtCs5Qxcy9OyWl9_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtNtB6_4rngs3std6StdRngE10next_indexCshovLROGBtMy_11quinn_proto.exit.i
    #dbg_value(ptr %i.q, !7066, !DIExpression(), !7397)
    #dbg_value(ptr %i.q, !7230, !DIExpression(), !7231)
    #dbg_value(ptr %i.q, !7230, !DIExpression(), !7394)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.052.i, !dbg !7398 ; 2 uses
    #dbg_value(ptr %i.ex, !7039, !DIExpression(), !7399)
    #dbg_value(ptr %i.ex, !7185, !DIExpression(), !7186)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i.i, !dbg !7400 ; 2 uses
    #dbg_value(ptr %i.ey, !7040, !DIExpression(), !7399)
    #dbg_value(ptr %i.ey, !7023, !DIExpression(), !7119)
    #dbg_value(ptr %i.ex, !7029, !DIExpression(), !7114)
    #dbg_value(ptr undef, !7023, !DIExpression(), !7114)
  %.sroa.0.0.copyload.i = load i8, ptr %i.ex, align 1, !dbg !7401, !alias.scope !7019, !noalias !7402
    #dbg_value(i8 %.sroa.0.0.copyload.i, !7041, !DIExpression(), !7403)
    #dbg_value(ptr %i.ey, !7184, !DIExpression(), !7186)
  %i.ez = load i8, ptr %i.ey, align 1, !dbg !7404, !alias.scope !7019, !noalias !7402
  store i8 %i.ez, ptr %i.ex, align 1, !dbg !7404, !alias.scope !7019, !noalias !7402
    #dbg_value(ptr undef, !7029, !DIExpression(), !7119)
  store i8 %.sroa.0.0.copyload.i, ptr %i.ey, align 1, !dbg !7405, !alias.scope !7019, !noalias !7402
    #dbg_value(i64 %i.ee, !7100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7203)
    #dbg_value(ptr undef, !7139, !DIExpression(), !7150)
    #dbg_value(ptr undef, !7130, !DIExpression(), !7149)
    #dbg_value(ptr undef, !7121, !DIExpression(), !7144)
    #dbg_value(ptr undef, !7124, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7204)
  %exitcond.not.i = icmp eq i64 %i.ee, 21, !dbg !7406
  br i1 %exitcond.not.i, label %_RINvXs0_NtNtCs5Qxcy9OyWl9_4rand3seq5sliceShNtB6_11SliceRandom15partial_shuffleNtNtNtBa_4rngs3std6StdRngECshovLROGBtMy_11quinn_proto.exit, label %bb.y, !dbg !7205

bb.ae:                                            ; preds = %_RNvMNtNtCs5Qxcy9OyWl9_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtNtB6_4rngs3std6StdRngE10next_indexCshovLROGBtMy_11quinn_proto.exit.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i.i, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #27, !dbg !7396, !noalias !7407
  unreachable, !dbg !7396

_RINvXs0_NtNtCs5Qxcy9OyWl9_4rand3seq5sliceShNtB6_11SliceRandom15partial_shuffleNtNtNtBa_4rngs3std6StdRngECshovLROGBtMy_11quinn_proto.exit: ; preds = %bb.ad
  %i.fa = extractvalue { i64, i64 } %i.av, 1, !dbg !5911
    #dbg_value(i64 %i.fa, !5912, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5924)
    #dbg_value(i64 %i.fa, !5826, !DIExpression(), !5929)
  %i.fb = extractvalue { i64, i64 } %i.ao, 1, !dbg !5763
    #dbg_value(i64 %i.fb, !5764, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5809)
  %i.fc = trunc nuw i64 %i.aj to i1, !dbg !5761
  %..i = call i64 @llvm.umin.i64(i64 %i.al, i64 65535), !dbg !5761
  %.sroa.5.0 = select i1 %i.fc, i64 %..i, i64 undef, !dbg !5761
  %i.fd = icmp eq i64 %i.ah, 0, !dbg !5757
  %. = select i1 %i.fd, i64 2, i64 5, !dbg !7408
  %i.fe = trunc nuw i64 %i.z to i1, !dbg !5742
  %.sroa.03.0 = select i1 %i.fe, i64 %i.ab, i64 0, !dbg !5742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7409, !noalias !7198
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 307, !dbg !7410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %.sroa.416.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(21) %i.q, i64 21, i1 false), !dbg !7411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !7412
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !7410
  store i64 %.sroa.03.0, ptr %i.ff, align 8, !dbg !7410
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !7410
  store i64 %i.y, ptr %i.fg, align 8, !dbg !7410
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 168, !dbg !7410
  store i64 %i.u, ptr %i.fh, align 8, !dbg !7410
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !7410
  store i64 %i.w, ptr %i.fi, align 8, !dbg !7410
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 184, !dbg !7410
  store i64 %i.w, ptr %i.fj, align 8, !dbg !7410
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 192, !dbg !7410
  store i64 %i.w, ptr %i.fk, align 8, !dbg !7410
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !7410
  store <2 x i64> %i.s, ptr %i.fl, align 8, !dbg !7410
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 216, !dbg !7410
  store i64 3, ptr %i.fm, align 8, !dbg !7410
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 224, !dbg !7410
  store i64 25, ptr %i.fn, align 8, !dbg !7410
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 232, !dbg !7410
  store i64 %., ptr %i.fo, align 8, !dbg !7410
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 328, !dbg !7410
  store i8 %.sroa.07.0, ptr %i.fp, align 8, !dbg !7410
  store i64 %i.aj, ptr %0, align 8, !dbg !7410
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7410
  store i64 %.sroa.5.0, ptr %i.fq, align 8, !dbg !7410
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 240, !dbg !7410
  store i8 1, ptr %i.fr, align 8, !dbg !7410
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 241, !dbg !7410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(21) %5, i64 21, i1 false), !dbg !7410
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 329, !dbg !7410
  store i8 %i.an, ptr %i.fs, align 1, !dbg !7410
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7410
  store i64 1, ptr %i.ft, align 8, !dbg !7410
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !7410
  store i64 %i.fb, ptr %i.fu, align 8, !dbg !7410
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 262, !dbg !7410
  store i8 0, ptr %i.fv, align 2, !dbg !7410
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 284, !dbg !7410
  store i8 0, ptr %i.fw, align 4, !dbg !7410
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 330, !dbg !7410
  store i8 0, ptr %i.fx, align 2, !dbg !7410
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !7410
  store i32 2, ptr %i.fy, align 8, !dbg !7410
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !7410
  store i64 1, ptr %i.fz, align 8, !dbg !7410
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !7410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.414.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.414.sroa.0, i64 16, i1 false), !dbg !7410
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !7410
  store i64 %i.fa, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx, align 8, !dbg !7410
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !7410
  store i64 %i.ay, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx, align 8, !dbg !7410
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 306, !dbg !7410
  store i8 1, ptr %i.ga, align 2, !dbg !7410
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.414.sroa.0), !dbg !7413
  ret void, !dbg !7414
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offseteECshovLROGBtMy_11quinn_proto(ptr nofree noundef readnone captures(none) %0, i64 noundef %1) unnamed_addr #1 !dbg !7415 {
bb.a:
    #dbg_value(ptr %0, !7420, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7421)
    #dbg_value(i64 %1, !7420, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7421)
  ret i64 16, !dbg !7422
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEEB1a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7423 {
bb.a:
    #dbg_value(ptr %0, !7428, !DIExpression(), !7431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7432), !dbg !7435
    #dbg_value(ptr %0, !7436, !DIExpression(), !7444)
  %i.a = load i64, ptr %0, align 8, !dbg !7446, !range !7447, !alias.scope !7432, !noundef !30
  %i.b = icmp eq i64 %i.a, -1, !dbg !7446
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEEB11_.exit, label %bb.b, !dbg !7446

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7448), !dbg !7446
    #dbg_value(ptr %0, !7451, !DIExpression(), !7457)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !7459 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7460), !dbg !7459
    #dbg_value(ptr %i.c, !7463, !DIExpression(), !7471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7473), !dbg !7476
    #dbg_value(ptr %i.c, !7477, !DIExpression(), !7481)
    #dbg_value(ptr %i.c, !7483, !DIExpression(), !7494)
    #dbg_value(i64 1, !7496, !DIExpression(), !7506)
    #dbg_value(i8 1, !7505, !DIExpression(), !7506)
    #dbg_value(i64 1, !7508, !DIExpression(), !7517)
    #dbg_value(i8 1, !7515, !DIExpression(), !7517)
  %i.d = load ptr, ptr %i.c, align 8, !dbg !7519, !alias.scope !7526, !nonnull !30, !noundef !30
    #dbg_value(ptr %i.d, !7504, !DIExpression(), !7527)
    #dbg_value(ptr %i.d, !7514, !DIExpression(), !7517)
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !dbg !7528, !noalias !7526
  %i.f = icmp eq i64 %i.e, 1, !dbg !7529
  br i1 %i.f, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECshovLROGBtMy_11quinn_proto.exit.i.i, !dbg !7529

bb.c:                                             ; preds = %bb.b
    #dbg_value(i8 2, !7530, !DIExpression(), !7535)
  fence acquire, !dbg !7537
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.c) #28, !dbg !7538
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECshovLROGBtMy_11quinn_proto.exit.i.i, !dbg !7538

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECshovLROGBtMy_11quinn_proto.exit.i.i: ; preds = %bb.c, %bb.b
    #dbg_value(ptr %0, !7539, !DIExpression(), !7547)
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsdIYt8sV98we_5bytes5bytes5BytesENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEBF_.exit.i unwind label %bb.d, !dbg !7549

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECshovLROGBtMy_11quinn_proto.exit.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !7550, !DIExpression(), !7558)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsdIYt8sV98we_5bytes5bytes5BytesENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCsdIYt8sV98we_5bytes5bytes5BytesEECshovLROGBtMy_11quinn_proto.exit.i.i.i unwind label %bb.e, !dbg !7560

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
begin_hunk_1_@llvm.experimental.noalias.scope.decl
!7164 = !DILocalVariable(name: "chunk_remaining", scope: !7165, file: !7158, line: 27, type: !103, align: 8)
!7165 = distinct !DILexicalBlock(scope: !7157, file: !7158, line: 27, column: 9)
!7166 = !DILocation(line: 0, scope: !7157, inlinedAt: !7167)
!7167 = distinct !DILocation(line: 486, column: 31, scope: !7080, inlinedAt: !7111)
!7168 = !DILocation(line: 486, column: 17, scope: !7090, inlinedAt: !7111)
!7169 = !DILocalVariable(name: "n", scope: !7170, file: !6665, line: 263, type: !9, align: 64)
!7170 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsL_NtNtCskKLDkoKarTP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !6714, file: !6665, line: 263, type: !6582, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5127, templateParams: !30, retainedNodes: !7171)
!7171 = !{!7172, !7169}
!7172 = !DILocalVariable(name: "start", arg: 1, scope: !7170, file: !6665, line: 263, type: !9)
!7173 = !DILocation(line: 0, scope: !7170, inlinedAt: !7174)
!7174 = distinct !DILocation(line: 1103, column: 35, scope: !7132, inlinedAt: !7146)
!7175 = !DILocalVariable(name: "rhs", scope: !7176, file: !5882, line: 1031, type: !9, align: 64)
!7176 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCskKLDkoKarTP_4core3numj13unchecked_add", scope: !5883, file: !5882, line: 1031, type: !6721, scopeLine: 1031, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5127, templateParams: !30, retainedNodes: !7177)
!7177 = !{!7178, !7175}
!7178 = !DILocalVariable(name: "self", arg: 1, scope: !7176, file: !5882, line: 1031, type: !9)
!7179 = !DILocation(line: 0, scope: !7176, inlinedAt: !7180)
!7180 = distinct !DILocation(line: 265, column: 28, scope: !7170, inlinedAt: !7174)
!7181 = !DILocalVariable(name: "count", scope: !7182, file: !7025, line: 650, type: !9, align: 64)
!7182 = distinct !DISubprogram(name: "copy<u8>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr4copyhECshovLROGBtMy_11quinn_proto", scope: !95, file: !7025, line: 650, type: !7026, scopeLine: 650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5127, templateParams: !104, retainedNodes: !7183)
!7183 = !{!7184, !7185, !7181}
!7184 = !DILocalVariable(name: "src", arg: 1, scope: !7182, file: !7025, line: 650, type: !102)
!7185 = !DILocalVariable(name: "dst", arg: 2, scope: !7182, file: !7025, line: 650, type: !6402)
!7186 = !DILocation(line: 0, scope: !7182, inlinedAt: !7187)
!7187 = distinct !DILocation(line: 1351, column: 9, scope: !7042, inlinedAt: !7116)
!7188 = !DILocation(line: 0, scope: !7170, inlinedAt: !7189)
!7189 = distinct !DILocation(line: 1103, column: 35, scope: !7190, inlinedAt: !7135)
!7190 = !DILexicalBlockFile(scope: !7134, file: !6665, discriminator: 2)
!7191 = !DILocation(line: 0, scope: !7176, inlinedAt: !7192)
!7192 = distinct !DILocation(line: 265, column: 28, scope: !7193, inlinedAt: !7189)
!7193 = !DILexicalBlockFile(scope: !7170, file: !6665, discriminator: 2)
!7194 = !DILocation(line: 0, scope: !7182, inlinedAt: !7195)
!7195 = distinct !DILocation(line: 1351, column: 9, scope: !7033, inlinedAt: !7056)
!7196 = !DILocation(line: 0, scope: !7080, inlinedAt: !7111)
!7197 = !DILocation(line: 486, column: 17, scope: !7080, inlinedAt: !7111)
!7198 = !{!7199, !7020, !7200}
!7199 = distinct !{!7199, !7021, !"_RINvXs0_NtNtCs5Qxcy9OyWl9_4rand3seq5sliceShNtB6_11SliceRandom15partial_shuffleNtNtNtBa_4rngs3std6StdRngECshovLROGBtMy_11quinn_proto: argument 0"}
!7200 = distinct !{!7200, !7021, !"_RINvXs0_NtNtCs5Qxcy9OyWl9_4rand3seq5sliceShNtB6_11SliceRandom15partial_shuffleNtNtNtBa_4rngs3std6StdRngECshovLROGBtMy_11quinn_proto: argument 2"}
!7201 = !DILocation(line: 0, scope: !7165, inlinedAt: !7167)
!7202 = !DILocation(line: 28, column: 9, scope: !7165, inlinedAt: !7167)
!7203 = !DILocation(line: 0, scope: !7101, inlinedAt: !7111)
!7204 = !DILocation(line: 2192, column: 26, scope: !7122, inlinedAt: !7145)
!7205 = !DILocation(line: 1100, column: 12, scope: !7128, inlinedAt: !7146)
!7206 = !DILocation(line: 49, column: 36, scope: !7207, inlinedAt: !7222)
!7207 = distinct !DILexicalBlock(scope: !7208, file: !7158, line: 41, column: 9)
!7208 = distinct !DISubprogram(name: "next_index<&mut rand::rngs::std::StdRng>", linkageName: "_RNvMNtNtCs5Qxcy9OyWl9_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtNtB6_4rngs3std6StdRngE10next_indexCshovLROGBtMy_11quinn_proto", scope: !7091, file: !7158, line: 40, type: !7209, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5127, templateParams: !7098, declaration: !7212, retainedNodes: !7213)
!7209 = !DISubroutineType(types: !7210)
!7210 = !{!9, !7211}
!7211 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut rand::seq::increasing_uniform::IncreasingUniform<&mut rand::rngs::std::StdRng>", baseType: !7091, size: 64, align: 64, dwarfAddressSpace: 0)
!7212 = !DISubprogram(name: "next_index<&mut rand::rngs::std::StdRng>", linkageName: "_RNvMNtNtCs5Qxcy9OyWl9_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtNtB6_4rngs3std6StdRngE10next_indexCshovLROGBtMy_11quinn_proto", scope: !7091, file: !7158, line: 40, type: !7209, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !7098)
!7213 = !{!7214, !7215, !7216, !7218, !7220}
!7214 = !DILocalVariable(name: "self", arg: 1, scope: !7208, file: !7158, line: 40, type: !7211)
!7215 = !DILocalVariable(name: "next_n", scope: !7207, file: !7158, line: 41, type: !43, align: 32)
!7216 = !DILocalVariable(name: "next_chunk_remaining", scope: !7217, file: !7158, line: 49, type: !103, align: 8)
!7217 = distinct !DILexicalBlock(scope: !7207, file: !7158, line: 49, column: 9)
!7218 = !DILocalVariable(name: "result", scope: !7219, file: !7158, line: 60, type: !9, align: 64)
!7219 = distinct !DILexicalBlock(scope: !7217, file: !7158, line: 60, column: 9)
!7220 = !DILocalVariable(name: "r", scope: !7221, file: !7158, line: 68, type: !43, align: 32)
!7221 = distinct !DILexicalBlock(scope: !7217, file: !7158, line: 68, column: 13)
!7222 = distinct !DILocation(line: 488, column: 37, scope: !7103, inlinedAt: !7111)
!7223 = !DILocation(line: 41, column: 22, scope: !7208, inlinedAt: !7222)
!7224 = !DILocation(line: 0, scope: !7132, inlinedAt: !7146)
!7225 = !DILocation(line: 1043, column: 17, scope: !7176, inlinedAt: !7180)
!7226 = !DILocation(line: 0, scope: !7103, inlinedAt: !7111)
!7227 = !DILocalVariable(name: "count", arg: 2, scope: !7228, file: !6407, line: 937, type: !9)
!7228 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOh3addCshovLROGBtMy_11quinn_proto", scope: !6408, file: !6407, line: 937, type: !6410, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5127, templateParams: !104, retainedNodes: !7229)
!7229 = !{!7230, !7227}
!7230 = !DILocalVariable(name: "self", arg: 1, scope: !7228, file: !6407, line: 937, type: !6402)
!7231 = !DILocation(line: 0, scope: !7228, inlinedAt: !7232)
!7232 = distinct !DILocation(line: 961, column: 27, scope: !7067, inlinedAt: !7117)
!7233 = !DILocalVariable(name: "f", arg: 2, scope: !7234, file: !5663, line: 1061, type: !7248)
!7234 = distinct !DISubprogram(name: "unwrap_or_else<u8, rand::seq::increasing_uniform::{impl#0}::next_index::{closure_env#0}<&mut rand::rngs::std::StdRng>>", linkageName: "_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionhE14unwrap_or_elseNCNvMNtNtCs5Qxcy9OyWl9_4rand3seq18increasing_uniformINtB15_17IncreasingUniformQNtNtNtB19_4rngs3std6StdRngE10next_index0ECshovLROGBtMy_11quinn_proto", scope: !7235, file: !5663, line: 1061, type: !7246, scopeLine: 1061, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5127, templateParams: !7258, declaration: !7257, retainedNodes: !7260)
!7235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<u8>", scope: !23, file: !2, size: 16, align: 8, flags: DIFlagPublic, elements: !7236, templateParams: !30, identifier: "42d0ade6ec740cb18258e87e48dd932c")
!7236 = !{!7237}
!7237 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !7235, file: !2, size: 16, align: 8, elements: !7238, templateParams: !30, identifier: "e83f64ad84dcac42c695210f92b302d7", discriminator: !7245)
!7238 = !{!7239, !7241}
!7239 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !7237, file: !2, baseType: !7240, size: 16, align: 8, extraData: i8 0)
!7240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !7235, file: !2, size: 16, align: 8, flags: DIFlagPublic, elements: !30, templateParams: !104, identifier: "be0c1203d281f414f2c3ab40d41a92fc")
!7241 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !7237, file: !2, baseType: !7242, size: 16, align: 8, extraData: i8 1)
!7242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !7235, file: !2, size: 16, align: 8, flags: DIFlagPublic, elements: !7243, templateParams: !104, identifier: "a153455f6ea8209ac3d4e0f07f6e4305")
!7243 = !{!7244}
!7244 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !7242, file: !2, baseType: !103, size: 8, align: 8, offset: 8, flags: DIFlagPublic)
!7245 = !DIDerivedType(tag: DW_TAG_member, scope: !7235, file: !2, baseType: !103, size: 8, align: 8, flags: DIFlagArtificial)
!7246 = !DISubroutineType(types: !7247)
!7247 = !{!103, !7235, !7248, !5784}
!7248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<&mut rand::rngs::std::StdRng>", scope: !7249, file: !2, size: 192, align: 64, elements: !7251, templateParams: !30, identifier: "10f90219b15ebc09285549cd37fb39b6")
!7249 = !DINamespace(name: "next_index", scope: !7250)
!7250 = !DINamespace(name: "{impl#0}", scope: !7092)
!7251 = !{!7252, !7253, !7255}
!7252 = !DIDerivedType(tag: DW_TAG_member, name: "_ref__next_n", scope: !7248, file: !2, baseType: !6027, size: 64, align: 64)
!7253 = !DIDerivedType(tag: DW_TAG_member, name: "_ref__self__rng", scope: !7248, file: !2, baseType: !7254, size: 64, align: 64, offset: 64)
!7254 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut &mut rand::rngs::std::StdRng", baseType: !5595, size: 64, align: 64, dwarfAddressSpace: 0)
!7255 = !DIDerivedType(tag: DW_TAG_member, name: "_ref__self__chunk", scope: !7248, file: !2, baseType: !7256, size: 64, align: 64, offset: 128)
!7256 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut u32", baseType: !43, size: 64, align: 64, dwarfAddressSpace: 0)
!7257 = !DISubprogram(name: "unwrap_or_else<u8, rand::seq::increasing_uniform::{impl#0}::next_index::{closure_env#0}<&mut rand::rngs::std::StdRng>>", linkageName: "_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionhE14unwrap_or_elseNCNvMNtNtCs5Qxcy9OyWl9_4rand3seq18increasing_uniformINtB15_17IncreasingUniformQNtNtNtB19_4rngs3std6StdRngE10next_index0ECshovLROGBtMy_11quinn_proto", scope: !7235, file: !5663, line: 1061, type: !7246, scopeLine: 1061, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !7258)
!7258 = !{!105, !7259}
!7259 = !DITemplateTypeParameter(name: "F", type: !7248)
!7260 = !{!7261, !7233, !7262}
!7261 = !DILocalVariable(name: "self", arg: 1, scope: !7234, file: !5663, line: 1061, type: !7235)
!7262 = !DILocalVariable(name: "x", scope: !7263, file: !5663, line: 1066, type: !103, align: 8)
!7263 = distinct !DILexicalBlock(scope: !7234, file: !5663, line: 1066, column: 13)
!7264 = !DILocation(line: 0, scope: !7234, inlinedAt: !7265)
!7265 = distinct !DILocation(line: 49, column: 72, scope: !7207, inlinedAt: !7222)
!7266 = !DILocation(line: 0, scope: !7208, inlinedAt: !7222)
!7267 = !DILocalVariable(name: "rhs", scope: !7268, file: !5882, line: 1116, type: !103, align: 8)
!7268 = distinct !DISubprogram(name: "checked_sub", linkageName: "_RNvMs4_NtCskKLDkoKarTP_4core3numh11checked_sub", scope: !7269, file: !5882, line: 1116, type: !7270, scopeLine: 1116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5127, templateParams: !30, retainedNodes: !7272)
!7269 = !DINamespace(name: "{impl#6}", scope: !40)
!7270 = !DISubroutineType(types: !7271)
!7271 = !{!7235, !103, !103}
!7272 = !{!7273, !7267}
!7273 = !DILocalVariable(name: "self", arg: 1, scope: !7268, file: !5882, line: 1116, type: !103)
!7274 = !DILocation(line: 0, scope: !7268, inlinedAt: !7275)
!7275 = distinct !DILocation(line: 49, column: 57, scope: !7207, inlinedAt: !7222)
!7276 = !DILocation(line: 0, scope: !7207, inlinedAt: !7222)
!7277 = !DILocation(line: 1122, column: 16, scope: !7268, inlinedAt: !7275)
!7278 = !DILocation(line: 1126, column: 31, scope: !7268, inlinedAt: !7275)
!7279 = !DILocalVariable(name: "next_n", scope: !7280, file: !7158, line: 41, type: !43, align: 32)
!7280 = distinct !DISubprogram(name: "{closure#0}<&mut rand::rngs::std::StdRng>", linkageName: "_RNCNvMNtNtCs5Qxcy9OyWl9_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtNtB8_4rngs3std6StdRngE10next_index0CshovLROGBtMy_11quinn_proto", scope: !7249, file: !7158, line: 49, type: !7281, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5127, templateParams: !7098, retainedNodes: !7283)
!7281 = !DISubroutineType(types: !7282)
!7282 = !{!103, !7248}
!7283 = !{!7279, !7284, !7285, !7286, !7288}
!7284 = !DILocalVariable(name: "self__rng", scope: !7280, file: !7158, line: 40, type: !5595, align: 64)
!7285 = !DILocalVariable(name: "self__chunk", scope: !7280, file: !7158, line: 40, type: !43, align: 32)
!7286 = !DILocalVariable(name: "bound", scope: !7287, file: !7158, line: 51, type: !43, align: 32)
!7287 = distinct !DILexicalBlock(scope: !7280, file: !7158, line: 51, column: 13)
!7288 = !DILocalVariable(name: "remaining", scope: !7287, file: !7158, line: 51, type: !103, align: 8)
!7289 = !DILocation(line: 0, scope: !7280, inlinedAt: !7290)
!7290 = distinct !DILocation(line: 1067, column: 21, scope: !7234, inlinedAt: !7265)
!7291 = !DILocation(line: 0, scope: !7217, inlinedAt: !7222)
!7292 = !DILocation(line: 1069, column: 5, scope: !7234, inlinedAt: !7265)
!7293 = !DILocalVariable(name: "m", arg: 1, scope: !7294, file: !7158, line: 81, type: !43)
!7294 = distinct !DISubprogram(name: "calculate_bound_u32", linkageName: "_RNvNtNtCs5Qxcy9OyWl9_4rand3seq18increasing_uniform19calculate_bound_u32", scope: !7092, file: !7158, line: 81, type: !7295, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5127, templateParams: !30, retainedNodes: !7301)
!7295 = !DISubroutineType(types: !7296)
!7296 = !{!7297, !43}
!7297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(u32, u8)", file: !2, size: 64, align: 32, elements: !7298, templateParams: !30, identifier: "e1537940986e1ac52117ac2e74afd1f2")
!7298 = !{!7299, !7300}
!7299 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !7297, file: !2, baseType: !43, size: 32, align: 32)
!7300 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !7297, file: !2, baseType: !103, size: 8, align: 8, offset: 32)
!7301 = !{!7293}
!7302 = !DILocation(line: 0, scope: !7294, inlinedAt: !7303)
!7303 = distinct !DILocation(line: 51, column: 38, scope: !7280, inlinedAt: !7290)
!7304 = !DILocalVariable(name: "m", arg: 1, scope: !7305, file: !7158, line: 84, type: !43)
!7305 = distinct !DISubprogram(name: "inner", linkageName: "_RNvNvNtNtCs5Qxcy9OyWl9_4rand3seq18increasing_uniform19calculate_bound_u325inner", scope: !7306, file: !7158, line: 84, type: !7295, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5127, templateParams: !30, retainedNodes: !7307)
!7306 = !DINamespace(name: "calculate_bound_u32", scope: !7092)
!7307 = !{!7304, !7308, !7310, !7312, !7314}
!7308 = !DILocalVariable(name: "product", scope: !7309, file: !7158, line: 85, type: !43, align: 32)
!7309 = distinct !DILexicalBlock(scope: !7305, file: !7158, line: 85, column: 9)
!7310 = !DILocalVariable(name: "current", scope: !7311, file: !7158, line: 86, type: !43, align: 32)
!7311 = distinct !DILexicalBlock(scope: !7309, file: !7158, line: 86, column: 9)
!7312 = !DILocalVariable(name: "p", scope: !7313, file: !7158, line: 89, type: !43, align: 32)
!7313 = distinct !DILexicalBlock(scope: !7311, file: !7158, line: 89, column: 65)
!7314 = !DILocalVariable(name: "count", scope: !7315, file: !7158, line: 94, type: !103, align: 8)
!7315 = distinct !DILexicalBlock(scope: !7311, file: !7158, line: 94, column: 17)
!7316 = !DILocation(line: 0, scope: !7305, inlinedAt: !7317)
!7317 = distinct !DILocation(line: 107, column: 5, scope: !7294, inlinedAt: !7303)
!7318 = !DILocation(line: 101, column: 8, scope: !7294, inlinedAt: !7303)
!7319 = !DILocation(line: 0, scope: !7309, inlinedAt: !7317)
!7320 = !DILocation(line: 3242, column: 26, scope: !7321, inlinedAt: !7332)
!7321 = distinct !DISubprogram(name: "overflowing_mul", linkageName: "_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_mul", scope: !7322, file: !5882, line: 3241, type: !7323, scopeLine: 3241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5127, templateParams: !30, retainedNodes: !7329)
!7322 = !DINamespace(name: "{impl#8}", scope: !40)
!7323 = !DISubroutineType(types: !7324)
!7324 = !{!7325, !43, !43}
!7325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(u32, bool)", file: !2, size: 64, align: 32, elements: !7326, templateParams: !30, identifier: "207aae7b51c398d54b045bc76bc3c2be")
!7326 = !{!7327, !7328}
!7327 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !7325, file: !2, baseType: !43, size: 32, align: 32)
!7328 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !7325, file: !2, baseType: !2233, size: 8, align: 8, offset: 32)
!7329 = !{!7330, !7331}
!7330 = !DILocalVariable(name: "self", arg: 1, scope: !7321, file: !5882, line: 3241, type: !43)
!7331 = !DILocalVariable(name: "rhs", arg: 2, scope: !7321, file: !5882, line: 3241, type: !43)
!7332 = distinct !DILocation(line: 1360, column: 31, scope: !7333, inlinedAt: !7353)
!7333 = distinct !DISubprogram(name: "checked_mul", linkageName: "_RNvMs6_NtCskKLDkoKarTP_4core3numm11checked_mul", scope: !7322, file: !5882, line: 1359, type: !7334, scopeLine: 1359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5127, templateParams: !30, retainedNodes: !7347)
!7334 = !DISubroutineType(types: !7335)
!7335 = !{!7336, !43, !43}
!7336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<u32>", scope: !23, file: !2, size: 64, align: 32, flags: DIFlagPublic, elements: !7337, templateParams: !30, identifier: "9b9f1fb788bd171be490b0e7f8abbd38")
!7337 = !{!7338}
!7338 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !7336, file: !2, size: 64, align: 32, elements: !7339, templateParams: !30, identifier: "57b507855eb095a2cf142068dc31964a", discriminator: !7346)
!7339 = !{!7340, !7342}
!7340 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !7338, file: !2, baseType: !7341, size: 64, align: 32, extraData: i32 0)
!7341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !7336, file: !2, size: 64, align: 32, flags: DIFlagPublic, elements: !30, templateParams: !2546, identifier: "5eaae949bd77b6fac213e9e3302e6c56")
!7342 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !7338, file: !2, baseType: !7343, size: 64, align: 32, extraData: i32 1)
!7343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !7336, file: !2, size: 64, align: 32, flags: DIFlagPublic, elements: !7344, templateParams: !2546, identifier: "a0cbec274959a13d919ac25aa95163f")
!7344 = !{!7345}
!7345 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !7343, file: !2, baseType: !43, size: 32, align: 32, offset: 32, flags: DIFlagPublic)
!7346 = !DIDerivedType(tag: DW_TAG_member, scope: !7336, file: !2, baseType: !43, size: 32, align: 32, flags: DIFlagArtificial)
!7347 = !{!7348, !7349, !7350, !7352}
!7348 = !DILocalVariable(name: "self", arg: 1, scope: !7333, file: !5882, line: 1359, type: !43)
!7349 = !DILocalVariable(name: "rhs", arg: 2, scope: !7333, file: !5882, line: 1359, type: !43)
!7350 = !DILocalVariable(name: "a", scope: !7351, file: !5882, line: 1360, type: !43, align: 32)
!7351 = distinct !DILexicalBlock(scope: !7333, file: !5882, line: 1360, column: 13)
!7352 = !DILocalVariable(name: "b", scope: !7351, file: !5882, line: 1360, type: !2233, align: 8)
!7353 = distinct !DILocation(line: 89, column: 30, scope: !7313, inlinedAt: !7317)
!7354 = !DILocation(line: 483, column: 8, scope: !7355, inlinedAt: !7362)
!7355 = distinct !DISubprogram(name: "unlikely", linkageName: "_RNvNtCskKLDkoKarTP_4core10intrinsics8unlikely", scope: !7357, file: !7356, line: 482, type: !7358, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5127, templateParams: !30, retainedNodes: !7360)
!7356 = !DIFile(filename: "library/core/src/intrinsics/mod.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "16ead05bef3b7ceee3d4f588370db512")
!7357 = !DINamespace(name: "intrinsics", scope: !24)
!7358 = !DISubroutineType(types: !7359)
!7359 = !{!2233, !2233}
!7360 = !{!7361}
!7361 = !DILocalVariable(name: "b", arg: 1, scope: !7355, file: !7356, line: 482, type: !2233)
!7362 = distinct !DILocation(line: 1361, column: 16, scope: !7351, inlinedAt: !7353)
!7363 = !{!"branch_weights", i32 1, i32 127}
!7364 = !DILocation(line: 0, scope: !7351, inlinedAt: !7353)
!7365 = !DILocation(line: 0, scope: !7287, inlinedAt: !7290)
!7366 = !DILocation(line: 0, scope: !7313, inlinedAt: !7317)
!7367 = !DILocation(line: 0, scope: !7311, inlinedAt: !7317)
!7368 = !DILocation(line: 0, scope: !7333, inlinedAt: !7353)
!7369 = !DILocation(line: 0, scope: !7321, inlinedAt: !7332)
!7370 = !DILocation(line: 0, scope: !7355, inlinedAt: !7362)
!7371 = !{!"branch_weights", i32 127, i32 255873}
!7372 = !DILocation(line: 94, column: 29, scope: !7311, inlinedAt: !7317)
!7373 = !DILocation(line: 57, column: 13, scope: !7287, inlinedAt: !7290)
!7374 = !DILocation(line: 108, column: 2, scope: !7294, inlinedAt: !7303)
!7375 = !DILocation(line: 53, column: 35, scope: !7287, inlinedAt: !7290)
!7376 = !{!7377, !7199, !7020}
!7377 = distinct !{!7377, !7378, !"_RNCNvMNtNtCs5Qxcy9OyWl9_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtNtB8_4rngs3std6StdRngE10next_index0CshovLROGBtMy_11quinn_proto: argument 0"}
!7378 = distinct !{!7378, !"_RNCNvMNtNtCs5Qxcy9OyWl9_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtNtB8_4rngs3std6StdRngE10next_index0CshovLROGBtMy_11quinn_proto"}
!7379 = !DILocation(line: 53, column: 13, scope: !7287, inlinedAt: !7290)
!7380 = !{!7381}
!7381 = distinct !{!7381, !7382, !"_RNvMNtNtCs5Qxcy9OyWl9_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtNtB6_4rngs3std6StdRngE10next_indexCshovLROGBtMy_11quinn_proto: argument 0"}
!7382 = distinct !{!7382, !"_RNvMNtNtCs5Qxcy9OyWl9_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtNtB6_4rngs3std6StdRngE10next_indexCshovLROGBtMy_11quinn_proto"}
!7383 = !{!7377, !7199, !7020, !7200}
!7384 = !DILocation(line: 1067, column: 21, scope: !7234, inlinedAt: !7265)
!7385 = !DILocation(line: 60, column: 25, scope: !7217, inlinedAt: !7222)
!7386 = !DILocation(line: 68, column: 21, scope: !7217, inlinedAt: !7222)
!7387 = !DILocation(line: 0, scope: !7221, inlinedAt: !7222)
!7388 = !DILocation(line: 69, column: 13, scope: !7221, inlinedAt: !7222)
!7389 = !DILocation(line: 0, scope: !7219, inlinedAt: !7222)
!7390 = !DILocation(line: 60, column: 22, scope: !7217, inlinedAt: !7222)
!7391 = !DILocation(line: 73, column: 9, scope: !7219, inlinedAt: !7222)
!7392 = !DILocation(line: 74, column: 9, scope: !7219, inlinedAt: !7222)
!7393 = !DILocation(line: 0, scope: !7105, inlinedAt: !7111)
!7394 = !DILocation(line: 0, scope: !7228, inlinedAt: !7395)
!7395 = distinct !DILocation(line: 961, column: 39, scope: !7067, inlinedAt: !7117)
!7396 = !DILocation(line: 911, column: 18, scope: !7071, inlinedAt: !7118)
!7397 = !DILocation(line: 0, scope: !7067, inlinedAt: !7117)
!7398 = !DILocation(line: 971, column: 18, scope: !7228, inlinedAt: !7232)
!7399 = !DILocation(line: 0, scope: !7035, inlinedAt: !7116)
!7400 = !DILocation(line: 971, column: 18, scope: !7228, inlinedAt: !7395)
!7401 = !DILocation(line: 574, column: 14, scope: !7024, inlinedAt: !7115)
!7402 = !{!7199, !7200}
!7403 = !DILocation(line: 0, scope: !7042, inlinedAt: !7116)
!7404 = !DILocation(line: 665, column: 9, scope: !7182, inlinedAt: !7187)
!7405 = !DILocation(line: 574, column: 14, scope: !7024, inlinedAt: !7120)
!7406 = !DILocation(line: 2192, column: 50, scope: !7122, inlinedAt: !7145)
!7407 = !{!7199, !7020}
!7408 = !DILocation(line: 164, column: 41, scope: !5306)
!7409 = !DILocation(line: 491, column: 9, scope: !7080, inlinedAt: !7111)
!7410 = !DILocation(line: 153, column: 9, scope: !5306)
!7411 = !DILocation(line: 181, column: 17, scope: !5659)
!7412 = !DILocation(line: 182, column: 13, scope: !5306)
!7413 = !DILocation(line: 184, column: 9, scope: !5306)
!7414 = !DILocation(line: 185, column: 6, scope: !5306)
!7415 = distinct !DISubprogram(name: "data_offset<str>", linkageName: "_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offseteECshovLROGBtMy_11quinn_proto", scope: !1038, file: !7416, line: 4328, type: !7417, scopeLine: 4328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5127, templateParams: !2857, retainedNodes: !7419)
!7416 = !DIFile(filename: "library/alloc/src/sync.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "44a21b82c74301fa481c4c3e2d15b5c4")
!7417 = !DISubroutineType(types: !7418)
!7418 = !{!9, !5793}
!7419 = !{!7420}
!7420 = !DILocalVariable(name: "ptr", arg: 1, scope: !7415, file: !7416, line: 4328, type: !5793)
!7421 = !DILocation(line: 0, scope: !7415)
!7422 = !DILocation(line: 4336, column: 2, scope: !7415)
!7423 = distinct !DISubprogram(name: "drop_glue<lru_slab::Slot<quinn_proto::token_memory_cache::CacheEntry>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs9JJQt12aL8S_8lru_slab4SlotNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEEB1a_", scope: !95, file: !7025, line: 848, type: !7424, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5127, templateParams: !7429, retainedNodes: !7427)
!7424 = !DISubroutineType(types: !7425)
!7425 = !{null, !7426}
!7426 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut lru_slab::Slot<quinn_proto::token_memory_cache::CacheEntry>", baseType: !2881, size: 64, align: 64, dwarfAddressSpace: 0)
!7427 = !{!7428}
!7428 = !DILocalVariable(arg: 1, scope: !7423, file: !7025, line: 848, type: !7426)
!7429 = !{!7430}
!7430 = !DITemplateTypeParameter(name: "T", type: !2881)
!7431 = !DILocation(line: 0, scope: !7423)
!7432 = !{!7433}
!7433 = distinct !{!7433, !7434, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEEB11_: argument 0"}
!7434 = distinct !{!7434, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEEB11_"}
!7435 = !DILocation(line: 848, column: 1, scope: !7423)
!7436 = !DILocalVariable(arg: 1, scope: !7437, file: !7025, line: 848, type: !7440)
!7437 = distinct !DISubprogram(name: "drop_glue<core::option::Option<quinn_proto::token_memory_cache::CacheEntry>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEEB11_", scope: !95, file: !7025, line: 848, type: !7438, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5127, templateParams: !7442, retainedNodes: !7441)
!7438 = !DISubroutineType(types: !7439)
!7439 = !{null, !7440}
!7440 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::option::Option<quinn_proto::token_memory_cache::CacheEntry>", baseType: !2884, size: 64, align: 64, dwarfAddressSpace: 0)
!7441 = !{!7436}
!7442 = !{!7443}
!7443 = !DITemplateTypeParameter(name: "T", type: !2884)
!7444 = !DILocation(line: 0, scope: !7437, inlinedAt: !7445)
!7445 = distinct !DILocation(line: 848, column: 1, scope: !7423)
!7446 = !DILocation(line: 848, column: 1, scope: !7437, inlinedAt: !7445)
!7447 = !{i64 -1, i64 -9223372036854775808}
!7448 = !{!7449}
!7449 = distinct !{!7449, !7450, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEBF_: argument 0"}
!7450 = distinct !{!7450, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEBF_"}
!7451 = !DILocalVariable(arg: 1, scope: !7452, file: !7025, line: 848, type: !7455)
!7452 = distinct !DISubprogram(name: "drop_glue<quinn_proto::token_memory_cache::CacheEntry>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEBF_", scope: !95, file: !7025, line: 848, type: !7453, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5127, templateParams: !2890, retainedNodes: !7456)
!7453 = !DISubroutineType(types: !7454)
!7454 = !{null, !7455}
!7455 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut quinn_proto::token_memory_cache::CacheEntry", baseType: !2892, size: 64, align: 64, dwarfAddressSpace: 0)
!7456 = !{!7451}
!7457 = !DILocation(line: 0, scope: !7452, inlinedAt: !7458)
!7458 = distinct !DILocation(line: 848, column: 1, scope: !7437, inlinedAt: !7445)
!7459 = !DILocation(line: 848, column: 1, scope: !7452, inlinedAt: !7458)
!7460 = !{!7461}
!7461 = distinct !{!7461, !7462, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECshovLROGBtMy_11quinn_proto: argument 0"}
!7462 = distinct !{!7462, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECshovLROGBtMy_11quinn_proto"}
!7463 = !DILocalVariable(arg: 1, scope: !7464, file: !7025, line: 848, type: !7467)
!7464 = distinct !DISubprogram(name: "drop_glue<alloc::sync::Arc<str, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArceEECshovLROGBtMy_11quinn_proto", scope: !95, file: !7025, line: 848, type: !7465, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5127, templateParams: !7469, retainedNodes: !7468)
!7465 = !DISubroutineType(types: !7466)
!7466 = !{null, !7467}
!7467 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut alloc::sync::Arc<str, alloc::alloc::Global>", baseType: !2839, size: 64, align: 64, dwarfAddressSpace: 0)
!7468 = !{!7463}
!7469 = !{!7470}
!7470 = !DITemplateTypeParameter(name: "T", type: !2839)
!7471 = !DILocation(line: 0, scope: !7464, inlinedAt: !7472)
!7472 = distinct !DILocation(line: 848, column: 1, scope: !7452, inlinedAt: !7458)
!7473 = !{!7474}
!7474 = distinct !{!7474, !7475, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto: argument 0"}
!7475 = distinct !{!7475, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto"}
!7476 = !DILocation(line: 848, column: 1, scope: !7464, inlinedAt: !7472)
!7477 = !DILocalVariable(name: "self", arg: 1, scope: !7478, file: !7416, line: 2923, type: !7467)
!7478 = distinct !DISubprogram(name: "drop<str, alloc::alloc::Global>", linkageName: "_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto", scope: !7479, file: !7416, line: 2923, type: !7465, scopeLine: 2923, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5127, templateParams: !2865, retainedNodes: !7480)
!7479 = !DINamespace(name: "{impl#42}", scope: !1038)
!7480 = !{!7477}
!7481 = !DILocation(line: 0, scope: !7478, inlinedAt: !7482)
!7482 = distinct !DILocation(line: 848, column: 1, scope: !7464, inlinedAt: !7472)
!7483 = !DILocalVariable(name: "self", arg: 1, scope: !7484, file: !7416, line: 2186, type: !7467)
!7484 = distinct !DISubprogram(name: "inner<str, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE5innerCshovLROGBtMy_11quinn_proto", scope: !2839, file: !7416, line: 2186, type: !7485, scopeLine: 2186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5127, templateParams: !2865, declaration: !7492, retainedNodes: !7493)
!7485 = !DISubroutineType(types: !7486)
!7486 = !{!7487, !7491}
!7487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&alloc::sync::ArcInner<str>", file: !2, size: 128, align: 64, elements: !7488, templateParams: !30, identifier: "e4e3021a4559322189e8aea5db3e8bec")
!7488 = !{!7489, !7490}
!7489 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !7487, file: !2, baseType: !2848, size: 64, align: 64)
!7490 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !7487, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!7491 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::sync::Arc<str, alloc::alloc::Global>", baseType: !2839, size: 64, align: 64, dwarfAddressSpace: 0)
!7492 = !DISubprogram(name: "inner<str, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE5innerCshovLROGBtMy_11quinn_proto", scope: !2839, file: !7416, line: 2186, type: !7485, scopeLine: 2186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2865)
!7493 = !{!7483}
!7494 = !DILocation(line: 0, scope: !7484, inlinedAt: !7495)
!7495 = distinct !DILocation(line: 2927, column: 17, scope: !7478, inlinedAt: !7482)
!7496 = !DILocalVariable(name: "val", scope: !7497, file: !7498, line: 3256, type: !9, align: 64)
!7497 = distinct !DISubprogram(name: "fetch_sub", linkageName: "_RNvMs16_NtNtCskKLDkoKarTP_4core4sync6atomicINtB6_6AtomicjE9fetch_sub", scope: !1051, file: !7498, line: 3256, type: !7499, scopeLine: 3256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5127, templateParams: !30, declaration: !7502, retainedNodes: !7503)
!7498 = !DIFile(filename: "library/core/src/sync/atomic.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "03ba1813c57010cfba40bc633b3fd36f")
!7499 = !DISubroutineType(types: !7500)
!7500 = !{!9, !7501, !9, !5258}
!7501 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::sync::atomic::Atomic<usize>", baseType: !1051, size: 64, align: 64, dwarfAddressSpace: 0)
!7502 = !DISubprogram(name: "fetch_sub", linkageName: "_RNvMs16_NtNtCskKLDkoKarTP_4core4sync6atomicINtB6_6AtomicjE9fetch_sub", scope: !1051, file: !7498, line: 3256, type: !7499, scopeLine: 3256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !30)
!7503 = !{!7504, !7496, !7505}
!7504 = !DILocalVariable(name: "self", arg: 1, scope: !7497, file: !7498, line: 3256, type: !7501)
!7505 = !DILocalVariable(name: "order", scope: !7497, file: !7498, line: 3256, type: !5258, align: 8)
!7506 = !DILocation(line: 0, scope: !7497, inlinedAt: !7507)
!7507 = distinct !DILocation(line: 2927, column: 32, scope: !7478, inlinedAt: !7482)
!7508 = !DILocalVariable(name: "val", scope: !7509, file: !7498, line: 4050, type: !9, align: 64)
!7509 = distinct !DISubprogram(name: "atomic_sub<usize, usize>", linkageName: "_RINvNtNtCskKLDkoKarTP_4core4sync6atomic10atomic_subjjECshovLROGBtMy_11quinn_proto", scope: !1052, file: !7498, line: 4050, type: !7510, scopeLine: 4050, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5127, templateParams: !7516, retainedNodes: !7513)
!7510 = !DISubroutineType(types: !7511)
!7511 = !{!9, !7512, !9, !5258}
!7512 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut usize", baseType: !9, size: 64, align: 64, dwarfAddressSpace: 0)
!7513 = !{!7514, !7508, !7515}
!7514 = !DILocalVariable(name: "dst", arg: 1, scope: !7509, file: !7498, line: 4050, type: !7512)
!7515 = !DILocalVariable(name: "order", scope: !7509, file: !7498, line: 4050, type: !5258, align: 8)
!7516 = !{!1008, !6272}
!7517 = !DILocation(line: 0, scope: !7509, inlinedAt: !7518)
!7518 = distinct !DILocation(line: 3258, column: 26, scope: !7497, inlinedAt: !7507)
!7519 = !DILocation(line: 454, column: 20, scope: !7520, inlinedAt: !7525)
!7520 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<str>>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNullINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnereEE6as_refCshovLROGBtMy_11quinn_proto", scope: !2842, file: !6173, line: 450, type: !7521, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5127, templateParams: !2860, declaration: !7524)
!7521 = !DISubroutineType(types: !7522)
!7522 = !{!7487, !7523}
!7523 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::ptr::non_null::NonNull<alloc::sync::ArcInner<str>>", baseType: !2842, size: 64, align: 64, dwarfAddressSpace: 0)
!7524 = !DISubprogram(name: "as_ref<alloc::sync::ArcInner<str>>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNullINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnereEE6as_refCshovLROGBtMy_11quinn_proto", scope: !2842, file: !6173, line: 450, type: !7521, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2860)
!7525 = distinct !DILocation(line: 2192, column: 27, scope: !7484, inlinedAt: !7495)
!7526 = !{!7474, !7461, !7449, !7433}
!7527 = !DILocation(line: 3256, column: 36, scope: !7497, inlinedAt: !7507)
!7528 = !DILocation(line: 4056, column: 24, scope: !7509, inlinedAt: !7518)
!7529 = !DILocation(line: 2927, column: 12, scope: !7478, inlinedAt: !7482)
!7530 = !DILocalVariable(name: "order", arg: 1, scope: !7531, file: !7498, line: 4496, type: !5258)
!7531 = distinct !DISubprogram(name: "fence", linkageName: "_RNvNtNtCskKLDkoKarTP_4core4sync6atomic5fence", scope: !1052, file: !7498, line: 4496, type: !7532, scopeLine: 4496, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5127, templateParams: !30, retainedNodes: !7534)
!7532 = !DISubroutineType(types: !7533)
!7533 = !{null, !5258}
!7534 = !{!7530}
!7535 = !DILocation(line: 0, scope: !7531, inlinedAt: !7536)
!7536 = distinct !DILocation(line: 69, column: 9, scope: !7478, inlinedAt: !7482)
!7537 = !DILocation(line: 4500, column: 24, scope: !7531, inlinedAt: !7536)
!7538 = !DILocation(line: 2970, column: 18, scope: !7478, inlinedAt: !7482)
!7539 = !DILocalVariable(arg: 1, scope: !7540, file: !7025, line: 848, type: !7543)
!7540 = distinct !DISubprogram(name: "drop_glue<alloc::collections::vec_deque::VecDeque<bytes::bytes::Bytes, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCsdIYt8sV98we_5bytes5bytes5BytesEECshovLROGBtMy_11quinn_proto", scope: !95, file: !7025, line: 848, type: !7541, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5127, templateParams: !7545, retainedNodes: !7544)
!7541 = !DISubroutineType(types: !7542)
!7542 = !{null, !7543}
!7543 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut alloc::collections::vec_deque::VecDeque<bytes::bytes::Bytes, alloc::alloc::Global>", baseType: !2896, size: 64, align: 64, dwarfAddressSpace: 0)
!7544 = !{!7539}
!7545 = !{!7546}
!7546 = !DITemplateTypeParameter(name: "T", type: !2896)
!7547 = !DILocation(line: 0, scope: !7540, inlinedAt: !7548)
!7548 = distinct !DILocation(line: 848, column: 1, scope: !7452, inlinedAt: !7458)
!7549 = !DILocation(line: 848, column: 1, scope: !7540, inlinedAt: !7548)
!7550 = !DILocalVariable(arg: 1, scope: !7551, file: !7025, line: 848, type: !7554)
!7551 = distinct !DISubprogram(name: "drop_glue<alloc::raw_vec::RawVec<bytes::bytes::Bytes, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCsdIYt8sV98we_5bytes5bytes5BytesEECshovLROGBtMy_11quinn_proto", scope: !95, file: !7025, line: 848, type: !7552, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5127, templateParams: !7556, retainedNodes: !7555)
!7552 = !DISubroutineType(types: !7553)
!7553 = !{null, !7554}
!7554 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut alloc::raw_vec::RawVec<bytes::bytes::Bytes, alloc::alloc::Global>", baseType: !2901, size: 64, align: 64, dwarfAddressSpace: 0)
!7555 = !{!7550}
!7556 = !{!7557}
!7557 = !DITemplateTypeParameter(name: "T", type: !2901)
!7558 = !DILocation(line: 0, scope: !7551, inlinedAt: !7559)
!7559 = distinct !DILocation(line: 848, column: 1, scope: !7540, inlinedAt: !7548)
!7560 = !DILocation(line: 848, column: 1, scope: !7551, inlinedAt: !7559)
!7561 = !DILocation(line: 0, scope: !7551, inlinedAt: !7562)
!7562 = distinct !DILocation(line: 848, column: 1, scope: !7540, inlinedAt: !7548)
!7563 = !DILocation(line: 848, column: 1, scope: !7551, inlinedAt: !7562)
!7564 = distinct !DISubprogram(name: "drop_glue<lru_slab::LruSlab<quinn_proto::token_memory_cache::CacheEntry>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs9JJQt12aL8S_8lru_slab7LruSlabNtNtCshovLROGBtMy_11quinn_proto18token_memory_cache10CacheEntryEEB1d_", scope: !95, file: !7025, line: 848, type: !7565, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5127, templateParams: !7570, retainedNodes: !7568)
!7565 = !DISubroutineType(cc: DW_CC_nocall, types: !7566)
!7566 = !{null, !7567}
end_hunk_1

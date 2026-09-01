Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/anstream-27f4ccabf1a3a2f1.anstream.2ab96d6329211188-cgu.0?download=true
inline.NumInlined: 162
inline.NumDeleted: 100
begin_hunk_0_@_RNvNtNtCs3Fq4IkdSWsS_8anstream7adapter5strip10next_bytes:bb.a
    i8 12, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs3Fq4IkdSWsS_8anstream7adapter5strip10next_bytess_0E0E0B2P_.exit.i
    i8 13, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs3Fq4IkdSWsS_8anstream7adapter5strip10next_bytess_0E0E0B2P_.exit.i
    i8 32, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs3Fq4IkdSWsS_8anstream7adapter5strip10next_bytess_0E0E0B2P_.exit.i
  ], !dbg !4396

bb.p:                                             ; preds = %bb.l
  store i8 12, ptr %1, align 1, !dbg !4398, !noalias !4258
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs3Fq4IkdSWsS_8anstream7adapter5strip10next_bytess_0E0E0B2P_.exit.i, !dbg !4399

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs3Fq4IkdSWsS_8anstream7adapter5strip10next_bytess_0E0E0B2P_.exit.i: ; preds = %bb.p, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.n, %bb.m, %thread-pre-split.thread.i.i.i.i, %bb.l
  %i.at = phi i8 [ 12, %bb.p ], [ %i.aq, %bb.o ], [ %i.aq, %bb.o ], [ %i.aq, %bb.o ], [ %i.aq, %bb.o ], [ %i.aq, %bb.o ], [ %i.aq, %bb.n ], [ 15, %bb.m ], [ %i.aq, %thread-pre-split.thread.i.i.i.i ], [ 15, %bb.l ]
  %i.au = add nuw i64 %.sroa.0.0, 1, !dbg !4400
    #dbg_value(ptr undef, !3888, !DIExpression(), !3912)
    #dbg_value(i64 1, !3971, !DIExpression(), !4237)
    #dbg_value(ptr %i.ae, !3906, !DIExpression(), !4239)
    #dbg_value(ptr %i.ae, !3977, !DIExpression(), !4237)
    #dbg_value(ptr %i.d, !3908, !DIExpression(), !4240)
    #dbg_value(ptr poison, !3982, !DIExpression(), !4241)
    #dbg_value(ptr poison, !3989, !DIExpression(), !4243)
  %i.av = icmp eq ptr %i.ae, %i.d, !dbg !4257
  br i1 %i.av, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs3Fq4IkdSWsS_8anstream.exit73, label %.lr.ph.i63, !dbg !4244

bb.q:                                             ; preds = %bb.n, %bb.o, %thread-pre-split.thread.i.i.i.i
    #dbg_value(ptr %i.z, !4205, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4401)
    #dbg_value(ptr %i.z, !4199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4403)
    #dbg_value(i64 %i.aa, !4205, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4401)
    #dbg_value(i64 %i.aa, !4199, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4403)
    #dbg_value(i64 %.sroa.0.0, !4206, !DIExpression(), !4401)
    #dbg_value(i64 %.sroa.0.0, !4200, !DIExpression(), !4403)
  %.not.i69 = icmp ugt i64 %.sroa.0.0, %i.aa, !dbg !4405
  br i1 %.not.i69, label %bb.r, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs3Fq4IkdSWsS_8anstream.exit73, !dbg !4405, !prof !4406

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @10, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #23, !dbg !4407, !noalias !4408
  unreachable, !dbg !4407

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs3Fq4IkdSWsS_8anstream.exit73.thread: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs3Fq4IkdSWsS_8anstream.exit, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs3Fq4IkdSWsS_8anstream.exit.thread
  %.ph116 = phi ptr [ %i.y, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs3Fq4IkdSWsS_8anstream.exit.thread ], [ %i.z, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs3Fq4IkdSWsS_8anstream.exit ]
    #dbg_value(ptr %.ph116, !4166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4412)
    #dbg_value(i64 0, !4166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4412)
    #dbg_value(i64 0, !4175, !DIExpression(), !4412)
    #dbg_value(i64 0, !4210, !DIExpression(), !4414)
    #dbg_value(i64 0, !4176, !DIExpression(), !4416)
    #dbg_value(ptr %.ph116, !4178, !DIExpression(), !4417)
    #dbg_value(ptr %.ph116, !4218, !DIExpression(), !4414)
    #dbg_value(ptr %.ph116, !3722, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4418)
    #dbg_value(ptr %.ph116, !4419, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4424)
    #dbg_value(i64 0, !3722, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4418)
    #dbg_value(i64 0, !4419, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4424)
    #dbg_value(ptr %.ph116, !3724, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4418)
    #dbg_value(i64 0, !3724, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4418)
  store ptr %.ph116, ptr %0, align 8, !dbg !4426, !captures !4256
  store i64 0, ptr %i.b, align 8, !dbg !4426
  br label %bb.s, !dbg !4427

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs3Fq4IkdSWsS_8anstream.exit73: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs3Fq4IkdSWsS_8anstream7adapter5strip10next_bytess_0E0E0B2P_.exit.i, %bb.q
  %.sroa.05.0101 = phi i64 [ %.sroa.0.0, %bb.q ], [ %i.aa, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNCNvNtNtCs3Fq4IkdSWsS_8anstream7adapter5strip10next_bytess_0E0E0B2P_.exit.i ]
    #dbg_value(ptr %i.z, !4166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4412)
    #dbg_value(i64 %i.aa, !4166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4412)
    #dbg_value(i64 %.sroa.05.0101, !4175, !DIExpression(), !4412)
    #dbg_value(i64 %.sroa.05.0101, !4210, !DIExpression(), !4414)
    #dbg_value(i64 %i.aa, !4176, !DIExpression(), !4416)
    #dbg_value(ptr %i.z, !4178, !DIExpression(), !4417)
    #dbg_value(ptr %i.z, !4218, !DIExpression(), !4414)
  %.sroa.05.0101.fr = freeze i64 %.sroa.05.0101, !dbg !4428 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sroa.05.0101.fr, !dbg !4429
  %i.ax = sub nuw nsw i64 %i.aa, %.sroa.05.0101.fr, !dbg !4430
    #dbg_value(ptr %i.z, !3722, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4418)
    #dbg_value(ptr %i.z, !4419, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4424)
    #dbg_value(i64 %.sroa.05.0101, !3722, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4418)
    #dbg_value(i64 %.sroa.05.0101, !4419, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4424)
    #dbg_value(ptr %i.aw, !3724, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4418)
    #dbg_value(i64 %i.ax, !3724, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4418)
  store ptr %i.aw, ptr %0, align 8, !dbg !4426, !captures !4256
  store i64 %i.ax, ptr %i.b, align 8, !dbg !4426
  %i.ay = icmp eq i64 %.sroa.05.0101.fr, 0, !dbg !4428
  %spec.select = select i1 %i.ay, ptr null, ptr %i.z, !dbg !4427
  br label %bb.s, !dbg !4427

bb.s:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs3Fq4IkdSWsS_8anstream.exit73, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs3Fq4IkdSWsS_8anstream.exit73.thread
  %.sroa.05.0101119 = phi i64 [ %.sroa.05.0101.fr, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs3Fq4IkdSWsS_8anstream.exit73 ], [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs3Fq4IkdSWsS_8anstream.exit73.thread ]
  %i.az = phi ptr [ %spec.select, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs3Fq4IkdSWsS_8anstream.exit73 ], [ null, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs3Fq4IkdSWsS_8anstream.exit73.thread ], !dbg !4427
  %i.ba = insertvalue { ptr, i64 } poison, ptr %i.az, 0, !dbg !4431
  %i.bb = insertvalue { ptr, i64 } %i.ba, i64 %.sroa.05.0101119, 1, !dbg !4431
  ret { ptr, i64 } %i.bb, !dbg !4431
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtCs3Fq4IkdSWsS_8anstream7adapter6winconNtB5_13WinconCaptureNtCshSYD73oCB2Y_13anstyle_parse7Perform12csi_dispatch(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i1 noundef zeroext %4, i8 noundef %5) unnamed_addr #0 !dbg !4432 {
bb.a:
    #dbg_value(ptr poison, !4515, !DIExpression(), !4538)
  %i.a = alloca [16 x i8], align 8                ; 12 uses
    #dbg_value(ptr poison, !4541, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4550)
    #dbg_value(ptr poison, !4541, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4550)
    #dbg_value(ptr poison, !4541, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4550)
    #dbg_value(ptr poison, !4541, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4550)
    #dbg_value(ptr poison, !4552, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4562)
    #dbg_value(ptr poison, !4552, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4562)
    #dbg_value(ptr poison, !4552, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4562)
    #dbg_value(ptr poison, !4552, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4562)
    #dbg_value(ptr poison, !4564, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4569)
    #dbg_value(ptr poison, !4564, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4569)
    #dbg_value(ptr poison, !4564, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4569)
    #dbg_value(ptr poison, !4564, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4569)
    #dbg_value(ptr poison, !4571, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4589)
    #dbg_value(ptr poison, !4571, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4589)
    #dbg_value(ptr poison, !4571, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4589)
    #dbg_value(ptr poison, !4571, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4589)
    #dbg_value(ptr poison, !4579, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4591)
    #dbg_value(ptr poison, !4579, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4591)
    #dbg_value(ptr poison, !4579, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4591)
    #dbg_value(ptr poison, !4579, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4591)
    #dbg_value(ptr poison, !4592, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4616)
    #dbg_value(ptr poison, !4592, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4616)
    #dbg_value(ptr poison, !4592, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4616)
    #dbg_value(ptr poison, !4592, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4616)
    #dbg_value(ptr poison, !4541, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !4550)
    #dbg_value(ptr poison, !4541, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !4550)
    #dbg_value(ptr poison, !4541, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !4550)
    #dbg_value(ptr poison, !4541, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !4550)
    #dbg_value(ptr poison, !4552, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !4562)
    #dbg_value(ptr poison, !4552, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !4562)
    #dbg_value(ptr poison, !4552, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !4562)
    #dbg_value(ptr poison, !4552, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !4562)
    #dbg_value(ptr poison, !4564, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !4569)
    #dbg_value(ptr poison, !4564, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !4569)
    #dbg_value(ptr poison, !4564, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !4569)
    #dbg_value(ptr poison, !4564, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !4569)
    #dbg_value(ptr poison, !4571, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !4589)
    #dbg_value(ptr poison, !4571, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !4589)
    #dbg_value(ptr poison, !4571, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !4589)
    #dbg_value(ptr poison, !4571, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !4589)
    #dbg_value(ptr poison, !4579, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !4591)
    #dbg_value(ptr poison, !4579, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !4591)
    #dbg_value(ptr poison, !4579, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !4591)
    #dbg_value(ptr poison, !4579, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !4591)
    #dbg_value(ptr poison, !4592, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !4616)
    #dbg_value(ptr poison, !4592, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !4616)
    #dbg_value(ptr poison, !4592, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !4616)
    #dbg_value(ptr poison, !4592, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !4616)
    #dbg_value(ptr undef, !4592, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4616)
    #dbg_value(ptr undef, !4592, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4616)
    #dbg_value(ptr undef, !4579, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4591)
    #dbg_value(ptr undef, !4579, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4591)
    #dbg_value(ptr undef, !4571, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4589)
    #dbg_value(ptr undef, !4571, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4589)
    #dbg_value(ptr undef, !4564, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4569)
    #dbg_value(ptr undef, !4564, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4569)
    #dbg_value(ptr undef, !4552, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4562)
    #dbg_value(ptr undef, !4552, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4562)
    #dbg_value(ptr undef, !4541, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4550)
    #dbg_value(ptr undef, !4541, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4550)
    #dbg_value(ptr %0, !4438, !DIExpression(), !4618)
    #dbg_value(ptr %1, !4439, !DIExpression(), !4618)
    #dbg_value(ptr %2, !4440, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4618)
    #dbg_value(i64 %3, !4440, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4618)
    #dbg_value(i1 %4, !4441, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4618)
    #dbg_value(i8 %5, !4442, !DIExpression(), !4618)
    #dbg_declare(ptr %i.a, !4466, !DIExpression(), !4619)
    #dbg_value(i64 1, !4620, !DIExpression(), !4627)
    #dbg_value(i16 2048, !4629, !DIExpression(), !4637)
    #dbg_value(i16 1024, !4629, !DIExpression(), !4646)
    #dbg_value(i16 512, !4629, !DIExpression(), !4653)
    #dbg_value(i16 16, !4549, !DIExpression(), !4660)
    #dbg_value(i16 16, !4661, !DIExpression(), !4669)
    #dbg_value(i16 16, !4629, !DIExpression(), !4671)
    #dbg_value(i16 8, !4629, !DIExpression(), !4673)
    #dbg_value(i16 4, !4629, !DIExpression(), !4680)
    #dbg_value(i16 2, !4629, !DIExpression(), !4687)
    #dbg_value(i16 1, !4629, !DIExpression(), !4694)
    #dbg_value(i16 8, !4701, !DIExpression(), !4706)
    #dbg_value(i16 8, !4701, !DIExpression(), !4708)
    #dbg_value(i16 16, !4710, !DIExpression(), !4717)
    #dbg_value(i16 16, !4661, !DIExpression(), !4719)
    #dbg_value(i16 16, !4629, !DIExpression(), !4721)
    #dbg_value(i16 8, !4701, !DIExpression(), !4724)
    #dbg_value(i16 32, !4710, !DIExpression(), !4726)
    #dbg_value(i16 32, !4661, !DIExpression(), !4728)
    #dbg_value(i16 32, !4629, !DIExpression(), !4731)
    #dbg_value(i16 8, !4701, !DIExpression(), !4734)
    #dbg_value(i16 64, !4710, !DIExpression(), !4736)
    #dbg_value(i16 64, !4661, !DIExpression(), !4738)
    #dbg_value(i16 64, !4629, !DIExpression(), !4741)
    #dbg_value(i16 8, !4701, !DIExpression(), !4744)
    #dbg_value(i16 128, !4710, !DIExpression(), !4746)
    #dbg_value(i16 128, !4661, !DIExpression(), !4748)
    #dbg_value(i16 128, !4629, !DIExpression(), !4751)
  %i.b = icmp ne i8 %5, 109
  %or.cond4.not = or i1 %4, %i.b, !dbg !4754
  br i1 %or.cond4.not, label %bb.b, label %bb.c, !dbg !4754

bb.b:                                             ; preds = %bb.r, %bb.a
  ret void, !dbg !4755

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !4756 ; 3 uses
  %.sroa.0.0.copyload = load i32, ptr %i.c, align 8, !dbg !4756 ; 4 uses
  %.sroa.0.sroa.0.0.extract.trunc1441 = trunc i32 %.sroa.0.0.copyload to i8, !dbg !4756 ; 5 uses
    #dbg_value(i8 %.sroa.0.sroa.0.0.extract.trunc1441, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4757)
  %.sroa.0.sroa.45.0.extract.shift1529 = lshr i32 %.sroa.0.0.copyload, 8, !dbg !4756
  %.sroa.0.sroa.45.0.extract.trunc1530 = trunc i32 %.sroa.0.sroa.45.0.extract.shift1529 to i8, !dbg !4756 ; 4 uses
    #dbg_value(i8 %.sroa.0.sroa.45.0.extract.trunc1530, !4443, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4757)
  %.sroa.0.sroa.48.0.extract.shift1644 = lshr i32 %.sroa.0.0.copyload, 16, !dbg !4756
  %.sroa.0.sroa.48.0.extract.trunc1645 = trunc i32 %.sroa.0.sroa.48.0.extract.shift1644 to i8, !dbg !4756 ; 3 uses
    #dbg_value(i8 %.sroa.0.sroa.48.0.extract.trunc1645, !4443, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4757)
  %.sroa.0.sroa.49.0.extract.shift1760 = lshr i32 %.sroa.0.0.copyload, 24, !dbg !4756
  %.sroa.0.sroa.49.0.extract.trunc1761 = trunc nuw i32 %.sroa.0.sroa.49.0.extract.shift1760 to i8, !dbg !4756 ; 3 uses
    #dbg_value(i8 %.sroa.0.sroa.49.0.extract.trunc1761, !4443, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4757)
  %.sroa.50.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28, !dbg !4756 ; 2 uses
  %.sroa.50.0.copyload = load i32, ptr %.sroa.50.0..sroa_idx, align 4, !dbg !4756 ; 4 uses
  %.sroa.50.sroa.0.0.extract.trunc = trunc i32 %.sroa.50.0.copyload to i8, !dbg !4756 ; 5 uses
    #dbg_value(i8 %.sroa.50.sroa.0.0.extract.trunc, !4443, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !4757)
  %.sroa.50.sroa.45.0.extract.shift = lshr i32 %.sroa.50.0.copyload, 8, !dbg !4756
  %.sroa.50.sroa.45.0.extract.trunc = trunc i32 %.sroa.50.sroa.45.0.extract.shift to i8, !dbg !4756 ; 4 uses
    #dbg_value(i8 %.sroa.50.sroa.45.0.extract.trunc, !4443, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !4757)
  %.sroa.50.sroa.48.0.extract.shift = lshr i32 %.sroa.50.0.copyload, 16, !dbg !4756
  %.sroa.50.sroa.48.0.extract.trunc = trunc i32 %.sroa.50.sroa.48.0.extract.shift to i8, !dbg !4756 ; 3 uses
    #dbg_value(i8 %.sroa.50.sroa.48.0.extract.trunc, !4443, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !4757)
  %.sroa.50.sroa.49.0.extract.shift = lshr i32 %.sroa.50.0.copyload, 24, !dbg !4756
  %.sroa.50.sroa.49.0.extract.trunc = trunc nuw i32 %.sroa.50.sroa.49.0.extract.shift to i8, !dbg !4756 ; 3 uses
    #dbg_value(i8 %.sroa.50.sroa.49.0.extract.trunc, !4443, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !4757)
  %.sroa.72.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !4756 ; 2 uses
  %.sroa.72.0.copyload = load i32, ptr %.sroa.72.0..sroa_idx, align 8, !dbg !4756 ; 4 uses
  %.sroa.72.sroa.0.0.extract.trunc = trunc i32 %.sroa.72.0.copyload to i8, !dbg !4756 ; 6 uses
    #dbg_value(i8 %.sroa.72.sroa.0.0.extract.trunc, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !4757)
  %.sroa.72.sroa.48.0.extract.shift = lshr i32 %.sroa.72.0.copyload, 8, !dbg !4756
  %.sroa.72.sroa.48.0.extract.trunc = trunc i32 %.sroa.72.sroa.48.0.extract.shift to i8, !dbg !4756 ; 4 uses
    #dbg_value(i8 %.sroa.72.sroa.48.0.extract.trunc, !4443, !DIExpression(DW_OP_LLVM_fragment, 72, 8), !4757)
  %.sroa.72.sroa.49.0.extract.shift = lshr i32 %.sroa.72.0.copyload, 16, !dbg !4756
  %.sroa.72.sroa.49.0.extract.trunc = trunc i32 %.sroa.72.sroa.49.0.extract.shift to i8, !dbg !4756 ; 3 uses
    #dbg_value(i8 %.sroa.72.sroa.49.0.extract.trunc, !4443, !DIExpression(DW_OP_LLVM_fragment, 80, 8), !4757)
  %.sroa.72.sroa.50.0.extract.shift = lshr i32 %.sroa.72.0.copyload, 24, !dbg !4756
  %.sroa.72.sroa.50.0.extract.trunc = trunc nuw i32 %.sroa.72.sroa.50.0.extract.shift to i8, !dbg !4756 ; 3 uses
    #dbg_value(i8 %.sroa.72.sroa.50.0.extract.trunc, !4443, !DIExpression(DW_OP_LLVM_fragment, 88, 8), !4757)
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36, !dbg !4756 ; 2 uses
  %.sroa.89.0.copyload = load i16, ptr %.sroa.89.0..sroa_idx, align 4, !dbg !4756 ; 5 uses
    #dbg_value(i16 %.sroa.89.0.copyload, !4443, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4757)
    #dbg_value(i8 0, !4445, !DIExpression(), !4758)
    #dbg_value(i16 0, !4447, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !4759)
    #dbg_value(i16 undef, !4447, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4759)
    #dbg_value(i16 0, !4462, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !4760)
    #dbg_value(i16 undef, !4462, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4760)
    #dbg_value(i8 0, !4464, !DIExpression(), !4761)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4762
  store ptr %1, ptr %i.a, align 8, !dbg !4762
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4762
  store i64 0, ptr %i.d, align 8, !dbg !4762
    #dbg_value(i8 %.sroa.72.sroa.0.0.extract.trunc, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !4757)
    #dbg_value(i8 %.sroa.72.sroa.48.0.extract.trunc, !4443, !DIExpression(DW_OP_LLVM_fragment, 72, 8), !4757)
    #dbg_value(i8 %.sroa.72.sroa.49.0.extract.trunc, !4443, !DIExpression(DW_OP_LLVM_fragment, 80, 8), !4757)
    #dbg_value(i8 %.sroa.72.sroa.50.0.extract.trunc, !4443, !DIExpression(DW_OP_LLVM_fragment, 88, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.0.0.extract.trunc, !4443, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.45.0.extract.trunc, !4443, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.48.0.extract.trunc, !4443, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.49.0.extract.trunc, !4443, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.0.0.extract.trunc1441, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.45.0.extract.trunc1530, !4443, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.48.0.extract.trunc1645, !4443, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.49.0.extract.trunc1761, !4443, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4757)
    #dbg_value(i16 poison, !4462, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !4760)
    #dbg_value(i16 poison, !4447, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !4759)
  %i.e = call { ptr, i64 } @_RNvXs1_NtCshSYD73oCB2Y_13anstyle_parse6paramsNtB5_10ParamsIterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !4619 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0, !dbg !4619 ; 2 uses
  %.not2067 = icmp eq ptr %i.f, null, !dbg !4619
  br i1 %.not2067, label %._crit_edge, label %.lr.ph2087, !dbg !4619

.lr.ph2087:                                       ; preds = %bb.c, %.loopexit2103
  %i.g = phi ptr [ %i.cl, %.loopexit2103 ], [ %i.f, %bb.c ] ; 2 uses
  %i.h = phi { ptr, i64 } [ %i.ck, %.loopexit2103 ], [ %i.e, %bb.c ]
  %.sroa.0.02086 = phi i8 [ %.sroa.0.11877, %.loopexit2103 ], [ 0, %bb.c ] ; 2 uses
  %.sroa.05.02085 = phi i8 [ %.sroa.05.11891, %.loopexit2103 ], [ 0, %bb.c ] ; 2 uses
  %.sroa.4150.02084 = phi i16 [ %.sroa.4150.11905, %.loopexit2103 ], [ undef, %bb.c ] ; 2 uses
  %.sroa.0149.02083 = phi i1 [ %.sroa.0149.11919, %.loopexit2103 ], [ false, %bb.c ] ; 2 uses
  %.sroa.4148.02082 = phi i16 [ %.sroa.4148.11933, %.loopexit2103 ], [ undef, %bb.c ] ; 2 uses
  %.sroa.0147.02081 = phi i1 [ %.sroa.0147.11947, %.loopexit2103 ], [ false, %bb.c ] ; 2 uses
  %.sroa.89.02080 = phi i16 [ %.sroa.89.2, %.loopexit2103 ], [ %.sroa.89.0.copyload, %bb.c ] ; 2 uses
  %.sroa.72.sroa.0.02079 = phi i8 [ %.sroa.72.sroa.0.2, %.loopexit2103 ], [ %.sroa.72.sroa.0.0.extract.trunc, %bb.c ] ; 2 uses
  %.sroa.72.sroa.48.02078 = phi i8 [ %.sroa.72.sroa.48.2, %.loopexit2103 ], [ %.sroa.72.sroa.48.0.extract.trunc, %bb.c ] ; 11 uses
  %.sroa.72.sroa.49.02077 = phi i8 [ %.sroa.72.sroa.49.2, %.loopexit2103 ], [ %.sroa.72.sroa.49.0.extract.trunc, %bb.c ] ; 11 uses
  %.sroa.72.sroa.50.02076 = phi i8 [ %.sroa.72.sroa.50.2, %.loopexit2103 ], [ %.sroa.72.sroa.50.0.extract.trunc, %bb.c ] ; 11 uses
  %.sroa.50.sroa.0.02075 = phi i8 [ %.sroa.50.sroa.0.2, %.loopexit2103 ], [ %.sroa.50.sroa.0.0.extract.trunc, %bb.c ] ; 2 uses
  %.sroa.50.sroa.45.02074 = phi i8 [ %.sroa.50.sroa.45.2, %.loopexit2103 ], [ %.sroa.50.sroa.45.0.extract.trunc, %bb.c ] ; 2 uses
  %.sroa.50.sroa.48.02073 = phi i8 [ %.sroa.50.sroa.48.2, %.loopexit2103 ], [ %.sroa.50.sroa.48.0.extract.trunc, %bb.c ] ; 2 uses
  %.sroa.50.sroa.49.02072 = phi i8 [ %.sroa.50.sroa.49.2, %.loopexit2103 ], [ %.sroa.50.sroa.49.0.extract.trunc, %bb.c ] ; 2 uses
  %.sroa.0.sroa.0.02071 = phi i8 [ %.sroa.0.sroa.0.2, %.loopexit2103 ], [ %.sroa.0.sroa.0.0.extract.trunc1441, %bb.c ] ; 2 uses
  %.sroa.0.sroa.45.02070 = phi i8 [ %.sroa.0.sroa.45.2, %.loopexit2103 ], [ %.sroa.0.sroa.45.0.extract.trunc1530, %bb.c ] ; 2 uses
  %.sroa.0.sroa.48.02069 = phi i8 [ %.sroa.0.sroa.48.2, %.loopexit2103 ], [ %.sroa.0.sroa.48.0.extract.trunc1645, %bb.c ] ; 2 uses
  %.sroa.0.sroa.49.02068 = phi i8 [ %.sroa.0.sroa.49.2, %.loopexit2103 ], [ %.sroa.0.sroa.49.0.extract.trunc1761, %bb.c ] ; 2 uses
    #dbg_value(i8 %.sroa.0.02086, !4445, !DIExpression(), !4758)
    #dbg_value(i8 %.sroa.05.02085, !4464, !DIExpression(), !4761)
    #dbg_value(i16 %.sroa.4150.02084, !4462, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4760)
    #dbg_value(i16 %.sroa.4148.02082, !4447, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4759)
    #dbg_value(i16 %.sroa.89.02080, !4443, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4757)
    #dbg_value(i8 %.sroa.72.sroa.0.02079, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !4757)
    #dbg_value(i8 %.sroa.72.sroa.48.02078, !4443, !DIExpression(DW_OP_LLVM_fragment, 72, 8), !4757)
    #dbg_value(i8 %.sroa.72.sroa.49.02077, !4443, !DIExpression(DW_OP_LLVM_fragment, 80, 8), !4757)
    #dbg_value(i8 %.sroa.72.sroa.50.02076, !4443, !DIExpression(DW_OP_LLVM_fragment, 88, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.0.02075, !4443, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.45.02074, !4443, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.48.02073, !4443, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.49.02072, !4443, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.0.02071, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.45.02070, !4443, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.48.02069, !4443, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.49.02068, !4443, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4757)
  %i.i = extractvalue { ptr, i64 } %i.h, 1, !dbg !4619 ; 2 uses
    #dbg_value(ptr %i.g, !4472, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4763)
    #dbg_value(ptr %i.g, !4764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4770)
    #dbg_value(ptr %i.g, !4772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4775)
    #dbg_value(ptr %i.g, !4777, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4787)
    #dbg_value(i64 %i.i, !4472, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4763)
    #dbg_value(i64 %i.i, !4764, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4770)
    #dbg_value(i64 %i.i, !4772, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4775)
    #dbg_value(i64 %i.i, !4777, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4787)
    #dbg_value(i64 %i.i, !4781, !DIExpression(), !4789)
    #dbg_value(i64 %i.i, !4790, !DIExpression(), !4797)
    #dbg_value(ptr %i.g, !4783, !DIExpression(), !4799)
    #dbg_value(ptr %i.g, !4796, !DIExpression(), !4797)
    #dbg_value(ptr %i.g, !4479, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4800)
    #dbg_value(!DIArgList(ptr %i.g, i64 %i.i), !4479, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !4800)
    #dbg_value(i16 %.sroa.89.02080, !4443, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4757)
    #dbg_value(i8 %.sroa.72.sroa.0.02079, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !4757)
    #dbg_value(i8 %.sroa.72.sroa.48.02078, !4443, !DIExpression(DW_OP_LLVM_fragment, 72, 8), !4757)
    #dbg_value(i8 %.sroa.72.sroa.49.02077, !4443, !DIExpression(DW_OP_LLVM_fragment, 80, 8), !4757)
    #dbg_value(i8 %.sroa.72.sroa.50.02076, !4443, !DIExpression(DW_OP_LLVM_fragment, 88, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.0.02075, !4443, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.45.02074, !4443, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.48.02073, !4443, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.49.02072, !4443, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.0.02071, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.45.02070, !4443, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.48.02069, !4443, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.49.02068, !4443, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4757)
    #dbg_value(i16 poison, !4462, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !4760)
    #dbg_value(i16 poison, !4447, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !4759)
    #dbg_value(ptr undef, !4515, !DIExpression(), !4538)
    #dbg_value(ptr %i.g, !4532, !DIExpression(), !4801)
    #dbg_value(ptr %i.g, !4626, !DIExpression(), !4627)
    #dbg_value(!DIArgList(ptr %i.g, i64 %i.i), !4534, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_plus, DW_OP_stack_value), !4802)
    #dbg_value(ptr poison, !4803, !DIExpression(), !4810)
    #dbg_value(ptr poison, !4809, !DIExpression(), !4812)
  %i.j = icmp eq i64 %i.i, 0, !dbg !4813
  br i1 %i.j, label %.loopexit2103, label %.lr.ph.preheader, !dbg !4811

.lr.ph.preheader:                                 ; preds = %.lr.ph2087
  %.idx = shl nuw nsw i64 %i.i, 1, !dbg !4814
    #dbg_value(!DIArgList(ptr %i.g, i64 %.idx), !4534, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !4802)
    #dbg_value(!DIArgList(ptr %i.g, i64 %.idx), !4479, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !4800)
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx, !dbg !4814
    #dbg_value(ptr %i.k, !4479, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4800)
    #dbg_value(ptr %i.k, !4534, !DIExpression(), !4802)
  %.sroa.72.sroa.50.0.insert.ext970.peel = zext i8 %.sroa.72.sroa.50.02076 to i32
  %.sroa.72.sroa.50.0.insert.shift971.peel = shl nuw i32 %.sroa.72.sroa.50.0.insert.ext970.peel, 24
  %.sroa.72.sroa.49.0.insert.ext842.peel = zext i8 %.sroa.72.sroa.49.02077 to i32
  %.sroa.72.sroa.49.0.insert.shift843.peel = shl nuw nsw i32 %.sroa.72.sroa.49.0.insert.ext842.peel, 16
  %.sroa.72.sroa.49.0.insert.insert845.peel = or disjoint i32 %.sroa.72.sroa.49.0.insert.shift843.peel, %.sroa.72.sroa.50.0.insert.shift971.peel
  %.sroa.72.sroa.48.0.insert.ext714.peel = zext i8 %.sroa.72.sroa.48.02078 to i32
  %.sroa.72.sroa.48.0.insert.shift715.peel = shl nuw nsw i32 %.sroa.72.sroa.48.0.insert.ext714.peel, 8
  %.sroa.72.sroa.48.0.insert.insert717.peel = or disjoint i32 %.sroa.72.sroa.49.0.insert.insert845.peel, %.sroa.72.sroa.48.0.insert.shift715.peel
  %.sroa.72.sroa.50.0.insert.ext966.peel = zext i8 %.sroa.72.sroa.50.02076 to i32
  %.sroa.72.sroa.50.0.insert.shift967.peel = shl nuw i32 %.sroa.72.sroa.50.0.insert.ext966.peel, 24
  %.sroa.72.sroa.49.0.insert.ext838.peel = zext i8 %.sroa.72.sroa.49.02077 to i32
  %.sroa.72.sroa.49.0.insert.shift839.peel = shl nuw nsw i32 %.sroa.72.sroa.49.0.insert.ext838.peel, 16
  %.sroa.72.sroa.49.0.insert.insert841.peel = or disjoint i32 %.sroa.72.sroa.49.0.insert.shift839.peel, %.sroa.72.sroa.50.0.insert.shift967.peel
  %.sroa.72.sroa.48.0.insert.ext710.peel = zext i8 %.sroa.72.sroa.48.02078 to i32
  %.sroa.72.sroa.48.0.insert.shift711.peel = shl nuw nsw i32 %.sroa.72.sroa.48.0.insert.ext710.peel, 8
  %.sroa.72.sroa.48.0.insert.insert713.peel = or disjoint i32 %.sroa.72.sroa.49.0.insert.insert841.peel, %.sroa.72.sroa.48.0.insert.shift711.peel
  br label %.lr.ph, !dbg !4815

.lr.ph2087.jt1:                                   ; preds = %.loopexit2103.jt1
    #dbg_value(i8 %.sroa.0.02086, !4445, !DIExpression(), !4758)
    #dbg_value(i8 %.sroa.05.02085, !4464, !DIExpression(), !4761)
    #dbg_value(i16 %.sroa.4150.02084, !4462, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4760)
    #dbg_value(i16 %.sroa.4148.02082, !4447, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4759)
    #dbg_value(i16 %.sroa.89.02080, !4443, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4757)
    #dbg_value(i8 %.sroa.72.sroa.0.02079, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !4757)
    #dbg_value(i8 %.sroa.72.sroa.48.02078, !4443, !DIExpression(DW_OP_LLVM_fragment, 72, 8), !4757)
    #dbg_value(i8 %.sroa.72.sroa.49.02077, !4443, !DIExpression(DW_OP_LLVM_fragment, 80, 8), !4757)
    #dbg_value(i8 %.sroa.72.sroa.50.02076, !4443, !DIExpression(DW_OP_LLVM_fragment, 88, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.0.02075, !4443, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.45.02074, !4443, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.48.02073, !4443, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.49.02072, !4443, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.0.02071, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.45.02070, !4443, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.48.02069, !4443, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.49.02068, !4443, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4757)
  %i.l = extractvalue { ptr, i64 } %i.cm, 1, !dbg !4619 ; 2 uses
    #dbg_value(ptr %i.g, !4472, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4763)
    #dbg_value(ptr %i.g, !4764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4770)
    #dbg_value(ptr %i.g, !4772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4775)
    #dbg_value(ptr %i.g, !4777, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4787)
    #dbg_value(i64 %i.i, !4472, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4763)
    #dbg_value(i64 %i.i, !4764, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4770)
    #dbg_value(i64 %i.i, !4772, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4775)
    #dbg_value(i64 %i.i, !4777, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4787)
    #dbg_value(i64 %i.i, !4781, !DIExpression(), !4789)
    #dbg_value(i64 %i.i, !4790, !DIExpression(), !4797)
    #dbg_value(ptr %i.g, !4783, !DIExpression(), !4799)
    #dbg_value(ptr %i.g, !4796, !DIExpression(), !4797)
    #dbg_value(ptr %i.g, !4479, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4800)
    #dbg_value(!DIArgList(ptr %i.g, i64 %i.i), !4479, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !4800)
    #dbg_value(i16 %.sroa.89.02080, !4443, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4757)
    #dbg_value(i8 %.sroa.72.sroa.0.02079, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !4757)
    #dbg_value(i8 %.sroa.72.sroa.48.02078, !4443, !DIExpression(DW_OP_LLVM_fragment, 72, 8), !4757)
    #dbg_value(i8 %.sroa.72.sroa.49.02077, !4443, !DIExpression(DW_OP_LLVM_fragment, 80, 8), !4757)
    #dbg_value(i8 %.sroa.72.sroa.50.02076, !4443, !DIExpression(DW_OP_LLVM_fragment, 88, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.0.02075, !4443, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.45.02074, !4443, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.48.02073, !4443, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.49.02072, !4443, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.0.02071, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.45.02070, !4443, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.48.02069, !4443, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.49.02068, !4443, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4757)
    #dbg_value(i16 poison, !4462, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !4760)
    #dbg_value(i16 poison, !4447, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !4759)
    #dbg_value(ptr undef, !4515, !DIExpression(), !4538)
    #dbg_value(ptr %i.g, !4532, !DIExpression(), !4801)
    #dbg_value(ptr %i.g, !4626, !DIExpression(), !4627)
    #dbg_value(!DIArgList(ptr %i.g, i64 %i.i), !4534, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_plus, DW_OP_stack_value), !4802)
    #dbg_value(ptr poison, !4803, !DIExpression(), !4810)
    #dbg_value(ptr poison, !4809, !DIExpression(), !4812)
  %i.m = icmp eq i64 %i.l, 0, !dbg !4813
  br i1 %i.m, label %.loopexit2103, label %.lr.ph.jt1, !dbg !4811

.lr.ph2087.jt4:                                   ; preds = %.loopexit2103.jt4
end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtCs3Fq4IkdSWsS_8anstream7adapter6winconNtB5_13WinconCaptureNtCshSYD73oCB2Y_13anstyle_parse7Perform12csi_dispatch:bb.a
    #dbg_value(ptr %i.g, !4532, !DIExpression(), !4801)
    #dbg_value(ptr %i.g, !4626, !DIExpression(), !4627)
    #dbg_value(!DIArgList(ptr %i.g, i64 %i.i), !4534, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_plus, DW_OP_stack_value), !4802)
    #dbg_value(ptr poison, !4803, !DIExpression(), !4810)
    #dbg_value(ptr poison, !4809, !DIExpression(), !4812)
  %i.o = icmp eq i64 %i.n, 0, !dbg !4813
  br i1 %i.o, label %.loopexit2103, label %.lr.ph.jt4, !dbg !4811

.lr.ph2087.jt3:                                   ; preds = %bb.ai
    #dbg_value(i8 %.sroa.0.02086, !4445, !DIExpression(), !4758)
    #dbg_value(i8 %.sroa.05.02085, !4464, !DIExpression(), !4761)
    #dbg_value(i16 %.sroa.4150.02084, !4462, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4760)
    #dbg_value(i16 %.sroa.4148.02082, !4447, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4759)
    #dbg_value(i16 %.sroa.89.02080, !4443, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4757)
    #dbg_value(i8 %.sroa.72.sroa.0.02079, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !4757)
    #dbg_value(i8 %.sroa.72.sroa.48.02078, !4443, !DIExpression(DW_OP_LLVM_fragment, 72, 8), !4757)
    #dbg_value(i8 %.sroa.72.sroa.49.02077, !4443, !DIExpression(DW_OP_LLVM_fragment, 80, 8), !4757)
    #dbg_value(i8 %.sroa.72.sroa.50.02076, !4443, !DIExpression(DW_OP_LLVM_fragment, 88, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.0.02075, !4443, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.45.02074, !4443, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.48.02073, !4443, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.49.02072, !4443, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.0.02071, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.45.02070, !4443, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.48.02069, !4443, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.49.02068, !4443, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4757)
  %i.p = extractvalue { ptr, i64 } %i.cq, 1, !dbg !4619
    #dbg_value(ptr %i.g, !4472, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4763)
    #dbg_value(ptr %i.g, !4764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4770)
    #dbg_value(ptr %i.g, !4772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4775)
    #dbg_value(ptr %i.g, !4777, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4787)
    #dbg_value(i64 %i.i, !4472, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4763)
    #dbg_value(i64 %i.i, !4764, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4770)
    #dbg_value(i64 %i.i, !4772, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4775)
    #dbg_value(i64 %i.i, !4777, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4787)
    #dbg_value(i64 %i.i, !4781, !DIExpression(), !4789)
    #dbg_value(i64 %i.i, !4790, !DIExpression(), !4797)
    #dbg_value(ptr %i.g, !4783, !DIExpression(), !4799)
    #dbg_value(ptr %i.g, !4796, !DIExpression(), !4797)
    #dbg_value(ptr %i.g, !4479, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4800)
    #dbg_value(!DIArgList(ptr %i.g, i64 %i.i), !4479, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !4800)
    #dbg_value(i16 %.sroa.89.02080, !4443, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4757)
    #dbg_value(i8 %.sroa.72.sroa.0.02079, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !4757)
    #dbg_value(i8 %.sroa.72.sroa.48.02078, !4443, !DIExpression(DW_OP_LLVM_fragment, 72, 8), !4757)
    #dbg_value(i8 %.sroa.72.sroa.49.02077, !4443, !DIExpression(DW_OP_LLVM_fragment, 80, 8), !4757)
    #dbg_value(i8 %.sroa.72.sroa.50.02076, !4443, !DIExpression(DW_OP_LLVM_fragment, 88, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.0.02075, !4443, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.45.02074, !4443, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.48.02073, !4443, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.49.02072, !4443, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.0.02071, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.45.02070, !4443, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.48.02069, !4443, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.49.02068, !4443, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4757)
    #dbg_value(i16 poison, !4462, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !4760)
    #dbg_value(i16 poison, !4447, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !4759)
    #dbg_value(ptr undef, !4515, !DIExpression(), !4538)
    #dbg_value(ptr %i.g, !4532, !DIExpression(), !4801)
    #dbg_value(ptr %i.g, !4626, !DIExpression(), !4627)
    #dbg_value(!DIArgList(ptr %i.g, i64 %i.i), !4534, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_plus, DW_OP_stack_value), !4802)
    #dbg_value(ptr poison, !4803, !DIExpression(), !4810)
    #dbg_value(ptr poison, !4809, !DIExpression(), !4812)
  %i.q = icmp eq i64 %i.p, 0, !dbg !4813
  br i1 %i.q, label %.loopexit2103.loopexit3278.loopexit, label %.lr.ph.jt3, !dbg !4811

.lr.ph2087.jt2:                                   ; preds = %bb.aj
    #dbg_value(i8 %.sroa.0.02086, !4445, !DIExpression(), !4758)
    #dbg_value(i8 %.sroa.05.02085, !4464, !DIExpression(), !4761)
    #dbg_value(i16 %.sroa.4150.02084, !4462, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4760)
    #dbg_value(i16 %.sroa.4148.02082, !4447, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4759)
    #dbg_value(i16 %.sroa.89.02080, !4443, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4757)
    #dbg_value(i8 %.sroa.72.sroa.0.02079, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !4757)
    #dbg_value(i8 %.sroa.72.sroa.48.02078, !4443, !DIExpression(DW_OP_LLVM_fragment, 72, 8), !4757)
    #dbg_value(i8 %.sroa.72.sroa.49.02077, !4443, !DIExpression(DW_OP_LLVM_fragment, 80, 8), !4757)
    #dbg_value(i8 %.sroa.72.sroa.50.02076, !4443, !DIExpression(DW_OP_LLVM_fragment, 88, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.0.02075, !4443, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.45.02074, !4443, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.48.02073, !4443, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.49.02072, !4443, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.0.02071, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.45.02070, !4443, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.48.02069, !4443, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.49.02068, !4443, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4757)
  %i.r = extractvalue { ptr, i64 } %i.cs, 1, !dbg !4619
    #dbg_value(ptr %i.g, !4472, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4763)
    #dbg_value(ptr %i.g, !4764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4770)
    #dbg_value(ptr %i.g, !4772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4775)
    #dbg_value(ptr %i.g, !4777, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4787)
    #dbg_value(i64 %i.i, !4472, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4763)
    #dbg_value(i64 %i.i, !4764, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4770)
    #dbg_value(i64 %i.i, !4772, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4775)
    #dbg_value(i64 %i.i, !4777, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4787)
    #dbg_value(i64 %i.i, !4781, !DIExpression(), !4789)
    #dbg_value(i64 %i.i, !4790, !DIExpression(), !4797)
    #dbg_value(ptr %i.g, !4783, !DIExpression(), !4799)
    #dbg_value(ptr %i.g, !4796, !DIExpression(), !4797)
    #dbg_value(ptr %i.g, !4479, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4800)
    #dbg_value(!DIArgList(ptr %i.g, i64 %i.i), !4479, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !4800)
    #dbg_value(i16 %.sroa.89.02080, !4443, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4757)
    #dbg_value(i8 %.sroa.72.sroa.0.02079, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !4757)
    #dbg_value(i8 %.sroa.72.sroa.48.02078, !4443, !DIExpression(DW_OP_LLVM_fragment, 72, 8), !4757)
    #dbg_value(i8 %.sroa.72.sroa.49.02077, !4443, !DIExpression(DW_OP_LLVM_fragment, 80, 8), !4757)
    #dbg_value(i8 %.sroa.72.sroa.50.02076, !4443, !DIExpression(DW_OP_LLVM_fragment, 88, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.0.02075, !4443, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.45.02074, !4443, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.48.02073, !4443, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.49.02072, !4443, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.0.02071, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.45.02070, !4443, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.48.02069, !4443, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.49.02068, !4443, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4757)
    #dbg_value(i16 poison, !4462, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !4760)
    #dbg_value(i16 poison, !4447, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !4759)
    #dbg_value(ptr undef, !4515, !DIExpression(), !4538)
    #dbg_value(ptr %i.g, !4532, !DIExpression(), !4801)
    #dbg_value(ptr %i.g, !4626, !DIExpression(), !4627)
    #dbg_value(!DIArgList(ptr %i.g, i64 %i.i), !4534, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_plus, DW_OP_stack_value), !4802)
    #dbg_value(ptr poison, !4803, !DIExpression(), !4810)
    #dbg_value(ptr poison, !4809, !DIExpression(), !4812)
  %i.s = icmp eq i64 %i.r, 0, !dbg !4813
  br i1 %i.s, label %.loopexit2103.loopexit3284, label %.lr.ph.jt2, !dbg !4811

.lr.ph2087.jt0:                                   ; preds = %bb.ak
    #dbg_value(i8 %.sroa.0.02086, !4445, !DIExpression(), !4758)
    #dbg_value(i8 %.sroa.05.02085, !4464, !DIExpression(), !4761)
    #dbg_value(i16 %.sroa.4150.02084, !4462, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4760)
    #dbg_value(i16 %.sroa.4148.02082, !4447, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4759)
    #dbg_value(i16 %.sroa.89.02080, !4443, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4757)
    #dbg_value(i8 %.sroa.72.sroa.0.02079, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !4757)
    #dbg_value(i8 %.sroa.72.sroa.48.02078, !4443, !DIExpression(DW_OP_LLVM_fragment, 72, 8), !4757)
    #dbg_value(i8 %.sroa.72.sroa.49.02077, !4443, !DIExpression(DW_OP_LLVM_fragment, 80, 8), !4757)
    #dbg_value(i8 %.sroa.72.sroa.50.02076, !4443, !DIExpression(DW_OP_LLVM_fragment, 88, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.0.02075, !4443, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.45.02074, !4443, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.48.02073, !4443, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.49.02072, !4443, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.0.02071, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.45.02070, !4443, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.48.02069, !4443, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.49.02068, !4443, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4757)
  %i.t = extractvalue { ptr, i64 } %i.cu, 1, !dbg !4619 ; 2 uses
    #dbg_value(ptr %i.g, !4472, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4763)
    #dbg_value(ptr %i.g, !4764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4770)
    #dbg_value(ptr %i.g, !4772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4775)
    #dbg_value(ptr %i.g, !4777, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4787)
    #dbg_value(i64 %i.i, !4472, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4763)
    #dbg_value(i64 %i.i, !4764, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4770)
    #dbg_value(i64 %i.i, !4772, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4775)
    #dbg_value(i64 %i.i, !4777, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4787)
    #dbg_value(i64 %i.i, !4781, !DIExpression(), !4789)
    #dbg_value(i64 %i.i, !4790, !DIExpression(), !4797)
    #dbg_value(ptr %i.g, !4783, !DIExpression(), !4799)
    #dbg_value(ptr %i.g, !4796, !DIExpression(), !4797)
    #dbg_value(ptr %i.g, !4479, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4800)
    #dbg_value(!DIArgList(ptr %i.g, i64 %i.i), !4479, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !4800)
    #dbg_value(i16 %.sroa.89.02080, !4443, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4757)
    #dbg_value(i8 %.sroa.72.sroa.0.02079, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !4757)
    #dbg_value(i8 %.sroa.72.sroa.48.02078, !4443, !DIExpression(DW_OP_LLVM_fragment, 72, 8), !4757)
    #dbg_value(i8 %.sroa.72.sroa.49.02077, !4443, !DIExpression(DW_OP_LLVM_fragment, 80, 8), !4757)
    #dbg_value(i8 %.sroa.72.sroa.50.02076, !4443, !DIExpression(DW_OP_LLVM_fragment, 88, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.0.02075, !4443, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.45.02074, !4443, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.48.02073, !4443, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !4757)
    #dbg_value(i8 %.sroa.50.sroa.49.02072, !4443, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.0.02071, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.45.02070, !4443, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.48.02069, !4443, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4757)
    #dbg_value(i8 %.sroa.0.sroa.49.02068, !4443, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4757)
    #dbg_value(i16 poison, !4462, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !4760)
    #dbg_value(i16 poison, !4447, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !4759)
    #dbg_value(ptr undef, !4515, !DIExpression(), !4538)
    #dbg_value(ptr %i.g, !4532, !DIExpression(), !4801)
    #dbg_value(ptr %i.g, !4626, !DIExpression(), !4627)
    #dbg_value(!DIArgList(ptr %i.g, i64 %i.i), !4534, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_plus, DW_OP_stack_value), !4802)
    #dbg_value(ptr poison, !4803, !DIExpression(), !4810)
    #dbg_value(ptr poison, !4809, !DIExpression(), !4812)
  %i.u = icmp eq i64 %i.t, 0, !dbg !4813
  br i1 %i.u, label %.loopexit2103, label %.lr.ph.jt0, !dbg !4811

._crit_edge.loopexit3277.loopexit:                ; preds = %bb.ai
  %.sroa.0.sroa.49.0.extract.trunc1759.le4205 = trunc nuw i32 %.sroa.0.sroa.49.0.extract.shift1758 to i8
  %.sroa.50.sroa.49.0.extract.trunc1396.le4203 = trunc nuw i32 %.sroa.50.sroa.49.0.extract.shift1395 to i8
  %.sroa.72.sroa.50.0.extract.trunc975.le4201 = trunc nuw i32 %.sroa.72.sroa.50.0.extract.shift974 to i8
  br label %._crit_edge, !dbg !4816

._crit_edge.loopexit3277.loopexit3699:            ; preds = %bb.x
  %.sroa.0.sroa.49.0.extract.trunc1759.peel.le4211 = trunc nuw i32 %.sroa.0.sroa.49.0.extract.shift1758.peel to i8
  %.sroa.50.sroa.49.0.extract.trunc1396.peel.le4209 = trunc nuw i32 %.sroa.50.sroa.49.0.extract.shift1395.peel to i8
  %.sroa.72.sroa.50.0.extract.trunc975.peel.le4207 = trunc nuw i32 %.sroa.72.sroa.50.0.extract.shift974.peel to i8
  br label %._crit_edge, !dbg !4816

._crit_edge.loopexit3283:                         ; preds = %bb.aj
  %.sroa.0.sroa.49.0.extract.trunc1749.le4217 = trunc nuw i32 %.sroa.0.sroa.49.0.extract.shift1748 to i8
  %.sroa.50.sroa.49.0.extract.trunc1386.le4215 = trunc nuw i32 %.sroa.50.sroa.49.0.extract.shift1385 to i8
  %.sroa.72.sroa.50.0.extract.trunc965.le4213 = trunc nuw i32 %.sroa.72.sroa.50.0.extract.shift964 to i8
  br label %._crit_edge, !dbg !4816

._crit_edge:                                      ; preds = %.loopexit2103, %.loopexit2103.jt4, %._crit_edge.loopexit3277.loopexit, %._crit_edge.loopexit3277.loopexit3699, %.loopexit2103.jt1, %bb.ak, %._crit_edge.loopexit3283, %bb.c
  %.sroa.0.sroa.49.0.lcssa = phi i8 [ %.sroa.0.sroa.49.0.extract.trunc1761, %bb.c ], [ %.sroa.0.sroa.49.2.jt0, %bb.ak ], [ %.sroa.0.sroa.49.0.extract.trunc1759.peel.le4211, %._crit_edge.loopexit3277.loopexit3699 ], [ %.sroa.0.sroa.49.020682308, %.loopexit2103.jt1 ], [ %.sroa.0.sroa.49.0.extract.trunc1749.le4217, %._crit_edge.loopexit3283 ], [ %.sroa.0.sroa.49.020682308, %.loopexit2103.jt4 ], [ %.sroa.0.sroa.49.0.extract.trunc1759.le4205, %._crit_edge.loopexit3277.loopexit ], [ %.sroa.0.sroa.49.2, %.loopexit2103 ], !dbg !4756 ; 2 uses
  %.sroa.0.sroa.48.0.lcssa = phi i8 [ %.sroa.0.sroa.48.0.extract.trunc1645, %bb.c ], [ %.sroa.0.sroa.48.2.jt0, %bb.ak ], [ %.sroa.0.sroa.48.0.extract.trunc1643.peel, %._crit_edge.loopexit3277.loopexit3699 ], [ %.sroa.0.sroa.48.020692301, %.loopexit2103.jt1 ], [ %.sroa.0.sroa.48.0.extract.trunc1633, %._crit_edge.loopexit3283 ], [ %.sroa.0.sroa.48.020692301, %.loopexit2103.jt4 ], [ %.sroa.0.sroa.48.0.extract.trunc1643, %._crit_edge.loopexit3277.loopexit ], [ %.sroa.0.sroa.48.2, %.loopexit2103 ], !dbg !4756 ; 2 uses
  %.sroa.0.sroa.45.0.lcssa = phi i8 [ %.sroa.0.sroa.45.0.extract.trunc1530, %bb.c ], [ %.sroa.0.sroa.45.2.jt0, %bb.ak ], [ %.sroa.0.sroa.45.0.extract.trunc1528.peel, %._crit_edge.loopexit3277.loopexit3699 ], [ %.sroa.0.sroa.45.020702294, %.loopexit2103.jt1 ], [ %.sroa.0.sroa.45.0.extract.trunc1518, %._crit_edge.loopexit3283 ], [ %.sroa.0.sroa.45.020702294, %.loopexit2103.jt4 ], [ %.sroa.0.sroa.45.0.extract.trunc1528, %._crit_edge.loopexit3277.loopexit ], [ %.sroa.0.sroa.45.2, %.loopexit2103 ], !dbg !4756 ; 3 uses
  %.sroa.0.sroa.0.0.lcssa = phi i8 [ %.sroa.0.sroa.0.0.extract.trunc1441, %bb.c ], [ %.sroa.0.sroa.0.2.jt0, %bb.ak ], [ %.sroa.0.sroa.0.0.extract.trunc1440.peel, %._crit_edge.loopexit3277.loopexit3699 ], [ %.sroa.0.sroa.0.020712287, %.loopexit2103.jt1 ], [ %.sroa.0.sroa.0.0.extract.trunc1433, %._crit_edge.loopexit3283 ], [ %.sroa.0.sroa.0.020712287, %.loopexit2103.jt4 ], [ %.sroa.0.sroa.0.0.extract.trunc1440, %._crit_edge.loopexit3277.loopexit ], [ %.sroa.0.sroa.0.2, %.loopexit2103 ], !dbg !4756 ; 3 uses
  %.sroa.50.sroa.49.0.lcssa = phi i8 [ %.sroa.50.sroa.49.0.extract.trunc, %bb.c ], [ %.sroa.50.sroa.49.2.jt0, %bb.ak ], [ %.sroa.50.sroa.49.0.extract.trunc1396.peel.le4209, %._crit_edge.loopexit3277.loopexit3699 ], [ %.sroa.50.sroa.49.020722280, %.loopexit2103.jt1 ], [ %.sroa.50.sroa.49.0.extract.trunc1386.le4215, %._crit_edge.loopexit3283 ], [ %.sroa.50.sroa.49.020722280, %.loopexit2103.jt4 ], [ %.sroa.50.sroa.49.0.extract.trunc1396.le4203, %._crit_edge.loopexit3277.loopexit ], [ %.sroa.50.sroa.49.2, %.loopexit2103 ], !dbg !4756 ; 2 uses
  %.sroa.50.sroa.48.0.lcssa = phi i8 [ %.sroa.50.sroa.48.0.extract.trunc, %bb.c ], [ %.sroa.50.sroa.48.2.jt0, %bb.ak ], [ %.sroa.50.sroa.48.0.extract.trunc1280.peel, %._crit_edge.loopexit3277.loopexit3699 ], [ %.sroa.50.sroa.48.020732273, %.loopexit2103.jt1 ], [ %.sroa.50.sroa.48.0.extract.trunc1270, %._crit_edge.loopexit3283 ], [ %.sroa.50.sroa.48.020732273, %.loopexit2103.jt4 ], [ %.sroa.50.sroa.48.0.extract.trunc1280, %._crit_edge.loopexit3277.loopexit ], [ %.sroa.50.sroa.48.2, %.loopexit2103 ], !dbg !4756 ; 2 uses
  %.sroa.50.sroa.45.0.lcssa = phi i8 [ %.sroa.50.sroa.45.0.extract.trunc, %bb.c ], [ %.sroa.50.sroa.45.2.jt0, %bb.ak ], [ %.sroa.50.sroa.45.0.extract.trunc1165.peel, %._crit_edge.loopexit3277.loopexit3699 ], [ %.sroa.50.sroa.45.020742266, %.loopexit2103.jt1 ], [ %.sroa.50.sroa.45.0.extract.trunc1155, %._crit_edge.loopexit3283 ], [ %.sroa.50.sroa.45.020742266, %.loopexit2103.jt4 ], [ %.sroa.50.sroa.45.0.extract.trunc1165, %._crit_edge.loopexit3277.loopexit ], [ %.sroa.50.sroa.45.2, %.loopexit2103 ], !dbg !4756 ; 3 uses
  %.sroa.50.sroa.0.0.lcssa = phi i8 [ %.sroa.50.sroa.0.0.extract.trunc, %bb.c ], [ %.sroa.50.sroa.0.2.jt0, %bb.ak ], [ %.sroa.50.sroa.0.0.extract.trunc1057.peel, %._crit_edge.loopexit3277.loopexit3699 ], [ %.sroa.50.sroa.0.020752259, %.loopexit2103.jt1 ], [ %.sroa.50.sroa.0.0.extract.trunc1050, %._crit_edge.loopexit3283 ], [ %.sroa.50.sroa.0.020752259, %.loopexit2103.jt4 ], [ %.sroa.50.sroa.0.0.extract.trunc1057, %._crit_edge.loopexit3277.loopexit ], [ %.sroa.50.sroa.0.2, %.loopexit2103 ], !dbg !4756 ; 3 uses
  %.sroa.72.sroa.50.0.lcssa = phi i8 [ %.sroa.72.sroa.50.0.extract.trunc, %bb.c ], [ %.sroa.72.sroa.50.02076, %bb.ak ], [ %.sroa.72.sroa.50.0.extract.trunc975.peel.le4207, %._crit_edge.loopexit3277.loopexit3699 ], [ %.sroa.72.sroa.50.02076, %.loopexit2103.jt1 ], [ %.sroa.72.sroa.50.0.extract.trunc965.le4213, %._crit_edge.loopexit3283 ], [ %.sroa.72.sroa.50.02076, %.loopexit2103.jt4 ], [ %.sroa.72.sroa.50.0.extract.trunc975.le4201, %._crit_edge.loopexit3277.loopexit ], [ %.sroa.72.sroa.50.2, %.loopexit2103 ], !dbg !4756 ; 2 uses
  %.sroa.72.sroa.49.0.lcssa = phi i8 [ %.sroa.72.sroa.49.0.extract.trunc, %bb.c ], [ %.sroa.72.sroa.49.02077, %bb.ak ], [ %.sroa.72.sroa.49.0.extract.trunc847.peel, %._crit_edge.loopexit3277.loopexit3699 ], [ %.sroa.72.sroa.49.02077, %.loopexit2103.jt1 ], [ %.sroa.72.sroa.49.0.extract.trunc837, %._crit_edge.loopexit3283 ], [ %.sroa.72.sroa.49.02077, %.loopexit2103.jt4 ], [ %.sroa.72.sroa.49.0.extract.trunc847, %._crit_edge.loopexit3277.loopexit ], [ %.sroa.72.sroa.49.2, %.loopexit2103 ], !dbg !4756 ; 2 uses
  %.sroa.72.sroa.48.0.lcssa = phi i8 [ %.sroa.72.sroa.48.0.extract.trunc, %bb.c ], [ %.sroa.72.sroa.48.02078, %bb.ak ], [ %.sroa.72.sroa.48.0.extract.trunc719.peel, %._crit_edge.loopexit3277.loopexit3699 ], [ %.sroa.72.sroa.48.02078, %.loopexit2103.jt1 ], [ %.sroa.72.sroa.48.0.extract.trunc709, %._crit_edge.loopexit3283 ], [ %.sroa.72.sroa.48.02078, %.loopexit2103.jt4 ], [ %.sroa.72.sroa.48.0.extract.trunc719, %._crit_edge.loopexit3277.loopexit ], [ %.sroa.72.sroa.48.2, %.loopexit2103 ], !dbg !4756 ; 3 uses
  %.sroa.72.sroa.0.0.lcssa = phi i8 [ %.sroa.72.sroa.0.0.extract.trunc, %bb.c ], [ %.sroa.72.sroa.0.2.jt0, %bb.ak ], [ %.sroa.72.sroa.0.0.extract.trunc597.peel, %._crit_edge.loopexit3277.loopexit3699 ], [ %.sroa.72.sroa.0.020792231, %.loopexit2103.jt1 ], [ %.sroa.72.sroa.0.0.extract.trunc590, %._crit_edge.loopexit3283 ], [ %.sroa.72.sroa.0.020792231, %.loopexit2103.jt4 ], [ %.sroa.72.sroa.0.0.extract.trunc597, %._crit_edge.loopexit3277.loopexit ], [ %.sroa.72.sroa.0.2, %.loopexit2103 ], !dbg !4756 ; 3 uses
  %.sroa.89.0.lcssa = phi i16 [ %.sroa.89.0.copyload, %bb.c ], [ %.sroa.89.2.jt0, %bb.ak ], [ %.sroa.89.12017, %._crit_edge.loopexit3277.loopexit ], [ %.sroa.89.12017, %.loopexit2103.jt1 ], [ %.sroa.89.12017, %._crit_edge.loopexit3283 ], [ %.sroa.89.12017, %.loopexit2103.jt4 ], [ %.sroa.89.12017, %._crit_edge.loopexit3277.loopexit3699 ], [ %.sroa.89.2, %.loopexit2103 ], !dbg !4756 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4816
    #dbg_value(ptr undef, !4552, !DIExpression(), !4562)
    #dbg_value(ptr %i.c, !4558, !DIExpression(), !4562)
    #dbg_value(ptr undef, !4564, !DIExpression(), !4569)
    #dbg_value(ptr %i.c, !4568, !DIExpression(), !4569)
    #dbg_value(ptr undef, !4571, !DIExpression(), !4589)
    #dbg_value(ptr %i.c, !4578, !DIExpression(), !4817)
  %.not.i = icmp eq i8 %.sroa.0.sroa.0.0.lcssa, -1, !dbg !4818
  br i1 %.not.i, label %bb.e, label %bb.d, !dbg !4819

bb.d:                                             ; preds = %._crit_edge
    #dbg_value(ptr undef, !4579, !DIExpression(), !4591)
    #dbg_value(ptr %i.c, !4582, !DIExpression(), !4591)
    #dbg_value(ptr undef, !4592, !DIExpression(), !4616)
    #dbg_value(ptr %i.c, !4599, !DIExpression(), !4616)
    #dbg_value(i8 %.sroa.0.sroa.0.0.lcssa, !4600, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !4820)
    #dbg_value(i8 %.sroa.0.sroa.0.0.extract.trunc1441, !4602, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !4821)
  %i.v = icmp eq i8 %.sroa.0.sroa.0.0.lcssa, %.sroa.0.sroa.0.0.extract.trunc1441
  br i1 %i.v, label %bb.f, label %_RNvXsf_NtCs2Skuq3AeSHR_7anstyle5styleNtB5_5StyleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, !dbg !4819

bb.e:                                             ; preds = %._crit_edge
  %.not2101 = icmp eq i8 %.sroa.0.sroa.0.0.extract.trunc1441, -1, !dbg !4818
  br i1 %.not2101, label %bb.h, label %_RNvXsf_NtCs2Skuq3AeSHR_7anstyle5styleNtB5_5StyleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, !dbg !4822

bb.f:                                             ; preds = %bb.d
    #dbg_value(i8 %.sroa.0.sroa.0.0.lcssa, !4600, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !4820)
  %i.w = icmp ne i8 %.sroa.0.sroa.0.0.extract.trunc1441, 2, !dbg !4823 ; 2 uses
  %.not9.i.i = icmp ne i8 %.sroa.0.sroa.45.0.lcssa, %.sroa.0.sroa.45.0.extract.trunc1530, !dbg !4823
  %brmerge.i.i = or i1 %i.w, %.not9.i.i, !dbg !4823
  br i1 %brmerge.i.i, label %_RNvXsi_NtCs2Skuq3AeSHR_7anstyle5colorNtB5_5ColorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i, label %bb.g, !dbg !4823

bb.g:                                             ; preds = %bb.f
  %i.x = icmp eq i8 %.sroa.0.sroa.48.0.lcssa, %.sroa.0.sroa.48.0.extract.trunc1645, !dbg !4824
  %i.y = icmp eq i8 %.sroa.0.sroa.49.0.lcssa, %.sroa.0.sroa.49.0.extract.trunc1761, !dbg !4824
  %or.cond1844 = select i1 %i.x, i1 %i.y, i1 false, !dbg !4824
  br i1 %or.cond1844, label %bb.h, label %_RNvXsf_NtCs2Skuq3AeSHR_7anstyle5styleNtB5_5StyleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, !dbg !4824

_RNvXsi_NtCs2Skuq3AeSHR_7anstyle5colorNtB5_5ColorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.f
  %6 = icmp eq i8 %.sroa.0.sroa.45.0.lcssa, %.sroa.0.sroa.45.0.extract.trunc1530, !dbg !4821
  %.mux.i.i = and i1 %i.w, %6, !dbg !4823
  br i1 %.mux.i.i, label %bb.h, label %_RNvXsf_NtCs2Skuq3AeSHR_7anstyle5styleNtB5_5StyleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, !dbg !4822

bb.h:                                             ; preds = %bb.g, %_RNvXsi_NtCs2Skuq3AeSHR_7anstyle5colorNtB5_5ColorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i, %bb.e
    #dbg_value(ptr undef, !4571, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !4846)
    #dbg_value(ptr %i.c, !4578, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !4848)
  %.not13.i = icmp eq i8 %.sroa.50.sroa.0.0.lcssa, -1, !dbg !4849
  %i.z = icmp ne i8 %.sroa.50.sroa.0.0.extract.trunc, -1, !dbg !4849 ; 2 uses
  br i1 %.not13.i, label %bb.j, label %bb.i, !dbg !4850

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr undef, !4583, !DIExpression(), !4851)
    #dbg_value(ptr %.sroa.50.0..sroa_idx, !4585, !DIExpression(), !4851)
    #dbg_value(ptr undef, !4592, !DIExpression(), !4852)
    #dbg_value(ptr %.sroa.50.0..sroa_idx, !4599, !DIExpression(), !4852)
    #dbg_value(i8 %.sroa.50.sroa.0.0.lcssa, !4600, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !4854)
    #dbg_value(i8 %.sroa.50.sroa.0.0.extract.trunc, !4602, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !4855)
  %i.aa = icmp eq i8 %.sroa.50.sroa.0.0.lcssa, %.sroa.50.sroa.0.0.extract.trunc
  %or.cond1859 = select i1 %i.z, i1 %i.aa, i1 false, !dbg !4850
  br i1 %or.cond1859, label %bb.k, label %_RNvXsf_NtCs2Skuq3AeSHR_7anstyle5styleNtB5_5StyleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, !dbg !4850

bb.j:                                             ; preds = %bb.h
  br i1 %i.z, label %_RNvXsf_NtCs2Skuq3AeSHR_7anstyle5styleNtB5_5StyleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, label %bb.m, !dbg !4856

bb.k:                                             ; preds = %bb.i
    #dbg_value(i8 %.sroa.50.sroa.0.0.lcssa, !4600, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !4854)
  %i.ab = icmp ne i8 %.sroa.50.sroa.0.0.extract.trunc, 2, !dbg !4857 ; 2 uses
  %.not9.i18.i = icmp ne i8 %.sroa.50.sroa.45.0.lcssa, %.sroa.50.sroa.45.0.extract.trunc, !dbg !4857
  %brmerge.i19.i = or i1 %i.ab, %.not9.i18.i, !dbg !4857
  br i1 %brmerge.i19.i, label %_RNvXsi_NtCs2Skuq3AeSHR_7anstyle5colorNtB5_5ColorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit21.i, label %bb.l, !dbg !4857

bb.l:                                             ; preds = %bb.k
  %i.ac = icmp eq i8 %.sroa.50.sroa.48.0.lcssa, %.sroa.50.sroa.48.0.extract.trunc, !dbg !4858
  %i.ad = icmp eq i8 %.sroa.50.sroa.49.0.lcssa, %.sroa.50.sroa.49.0.extract.trunc, !dbg !4858
  %or.cond1847 = select i1 %i.ac, i1 %i.ad, i1 false, !dbg !4858
  br i1 %or.cond1847, label %bb.m, label %_RNvXsf_NtCs2Skuq3AeSHR_7anstyle5styleNtB5_5StyleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, !dbg !4858

_RNvXsi_NtCs2Skuq3AeSHR_7anstyle5colorNtB5_5ColorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit21.i: ; preds = %bb.k
  %7 = icmp eq i8 %.sroa.50.sroa.45.0.lcssa, %.sroa.50.sroa.45.0.extract.trunc, !dbg !4855
  %.mux.i20.i = and i1 %i.ab, %7, !dbg !4857
  br i1 %.mux.i20.i, label %bb.m, label %_RNvXsf_NtCs2Skuq3AeSHR_7anstyle5styleNtB5_5StyleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, !dbg !4856

bb.m:                                             ; preds = %bb.l, %_RNvXsi_NtCs2Skuq3AeSHR_7anstyle5colorNtB5_5ColorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit21.i, %bb.j
    #dbg_value(ptr undef, !4571, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4861)
    #dbg_value(ptr %i.c, !4578, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4863)
  %.not15.i = icmp eq i8 %.sroa.72.sroa.0.0.lcssa, -1, !dbg !4864
  br i1 %.not15.i, label %bb.o, label %bb.n, !dbg !4865

bb.n:                                             ; preds = %bb.m
  %i.ae = icmp ne i8 %.sroa.72.sroa.0.0.extract.trunc, -1, !dbg !4865
    #dbg_value(ptr undef, !4586, !DIExpression(), !4866)
    #dbg_value(ptr %.sroa.72.0..sroa_idx, !4588, !DIExpression(), !4866)
    #dbg_value(ptr undef, !4592, !DIExpression(), !4867)
    #dbg_value(ptr %.sroa.72.0..sroa_idx, !4599, !DIExpression(), !4867)
    #dbg_value(i8 %.sroa.72.sroa.0.0.lcssa, !4600, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !4869)
    #dbg_value(i8 %.sroa.72.sroa.0.0.extract.trunc, !4602, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !4870)
  %8 = icmp eq i8 %.sroa.72.sroa.0.0.lcssa, %.sroa.72.sroa.0.0.extract.trunc
  %or.cond1862.not = select i1 %i.ae, i1 %8, i1 false, !dbg !4865
  br i1 %or.cond1862.not, label %bb.p, label %_RNvXsf_NtCs2Skuq3AeSHR_7anstyle5styleNtB5_5StyleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, !dbg !4865

bb.o:                                             ; preds = %bb.m
  %9 = icmp eq i8 %.sroa.72.sroa.0.0.extract.trunc, -1, !dbg !4864
  %.old = icmp eq i16 %.sroa.89.0.lcssa, %.sroa.89.0.copyload
  %or.cond1852 = select i1 %9, i1 %.old, i1 false, !dbg !4871
  br i1 %or.cond1852, label %bb.r, label %_RNvXsf_NtCs2Skuq3AeSHR_7anstyle5styleNtB5_5StyleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, !dbg !4871

bb.p:                                             ; preds = %bb.n
    #dbg_value(i8 %.sroa.72.sroa.0.0.lcssa, !4600, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !4869)
  %i.af = icmp ne i8 %.sroa.72.sroa.0.0.extract.trunc, 2, !dbg !4872 ; 2 uses
  %.not9.i23.i = icmp ne i8 %.sroa.72.sroa.48.0.lcssa, %.sroa.72.sroa.48.0.extract.trunc, !dbg !4872
  %brmerge.i24.i = or i1 %i.af, %.not9.i23.i, !dbg !4872
  br i1 %brmerge.i24.i, label %_RNvXsi_NtCs2Skuq3AeSHR_7anstyle5colorNtB5_5ColorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit26.i, label %bb.q, !dbg !4872

bb.q:                                             ; preds = %bb.p
  %i.ag = icmp eq i8 %.sroa.72.sroa.49.0.lcssa, %.sroa.72.sroa.49.0.extract.trunc, !dbg !4873
  %i.ah = icmp eq i8 %.sroa.72.sroa.50.0.lcssa, %.sroa.72.sroa.50.0.extract.trunc, !dbg !4873
  %or.cond1850 = select i1 %i.ag, i1 %i.ah, i1 false, !dbg !4873
  %i.ai = icmp eq i16 %.sroa.89.0.lcssa, %.sroa.89.0.copyload
  %or.cond1851 = select i1 %or.cond1850, i1 %i.ai, i1 false, !dbg !4873
  br i1 %or.cond1851, label %bb.r, label %_RNvXsf_NtCs2Skuq3AeSHR_7anstyle5styleNtB5_5StyleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, !dbg !4873

_RNvXsi_NtCs2Skuq3AeSHR_7anstyle5colorNtB5_5ColorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit26.i: ; preds = %bb.p
  %10 = icmp eq i8 %.sroa.72.sroa.48.0.lcssa, %.sroa.72.sroa.48.0.extract.trunc, !dbg !4870
  %.mux.i25.i = and i1 %i.af, %10, !dbg !4872
  %.old.old = icmp eq i16 %.sroa.89.0.lcssa, %.sroa.89.0.copyload
  %or.cond1853 = select i1 %.mux.i25.i, i1 %.old.old, i1 false, !dbg !4871
  br i1 %or.cond1853, label %bb.r, label %_RNvXsf_NtCs2Skuq3AeSHR_7anstyle5styleNtB5_5StyleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, !dbg !4871

_RNvXsf_NtCs2Skuq3AeSHR_7anstyle5styleNtB5_5StyleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.q, %bb.l, %bb.g, %_RNvXsi_NtCs2Skuq3AeSHR_7anstyle5colorNtB5_5ColorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit26.i, %_RNvXsi_NtCs2Skuq3AeSHR_7anstyle5colorNtB5_5ColorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit21.i, %_RNvXsi_NtCs2Skuq3AeSHR_7anstyle5colorNtB5_5ColorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i, %bb.e, %bb.j, %bb.o, %bb.d, %bb.i, %bb.n
    #dbg_value(ptr %0, !4876, !DIExpression(), !4883)
    #dbg_value(ptr %0, !4885, !DIExpression(), !4891)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4893
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !4893, !noundef !29 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, -1, !dbg !4900
  call void @llvm.assume(i1 %i.al), !dbg !4901
  %i.am = icmp eq i64 %i.ak, 0, !dbg !4902
  br i1 %i.am, label %bb.r, label %bb.s, !dbg !4903

bb.r:                                             ; preds = %_RNvXsi_NtCs2Skuq3AeSHR_7anstyle5colorNtB5_5ColorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit26.i, %bb.o, %bb.q, %bb.s, %_RNvXsf_NtCs2Skuq3AeSHR_7anstyle5styleNtB5_5StyleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread
  %.sroa.0.sroa.49.0.insert.ext1762 = zext i8 %.sroa.0.sroa.49.0.lcssa to i32, !dbg !4904
  %.sroa.0.sroa.49.0.insert.shift1763 = shl nuw i32 %.sroa.0.sroa.49.0.insert.ext1762, 24, !dbg !4904
  %.sroa.0.sroa.48.0.insert.ext1646 = zext i8 %.sroa.0.sroa.48.0.lcssa to i32, !dbg !4904
  %.sroa.0.sroa.48.0.insert.shift1647 = shl nuw nsw i32 %.sroa.0.sroa.48.0.insert.ext1646, 16, !dbg !4904
  %.sroa.0.sroa.48.0.insert.insert1649 = or disjoint i32 %.sroa.0.sroa.48.0.insert.shift1647, %.sroa.0.sroa.49.0.insert.shift1763, !dbg !4904
  %.sroa.0.sroa.45.0.insert.ext1531 = zext i8 %.sroa.0.sroa.45.0.lcssa to i32, !dbg !4904
  %.sroa.0.sroa.45.0.insert.shift1532 = shl nuw nsw i32 %.sroa.0.sroa.45.0.insert.ext1531, 8, !dbg !4904
  %.sroa.0.sroa.45.0.insert.insert1534 = or disjoint i32 %.sroa.0.sroa.48.0.insert.insert1649, %.sroa.0.sroa.45.0.insert.shift1532, !dbg !4904
  %.sroa.0.sroa.0.0.insert.ext1442 = zext i8 %.sroa.0.sroa.0.0.lcssa to i32, !dbg !4904
  %.sroa.0.sroa.0.0.insert.insert1444 = or disjoint i32 %.sroa.0.sroa.45.0.insert.insert1534, %.sroa.0.sroa.0.0.insert.ext1442, !dbg !4904
  %.sroa.50.sroa.49.0.insert.ext = zext i8 %.sroa.50.sroa.49.0.lcssa to i32, !dbg !4904
  %.sroa.50.sroa.49.0.insert.shift = shl nuw i32 %.sroa.50.sroa.49.0.insert.ext, 24, !dbg !4904
  %.sroa.50.sroa.48.0.insert.ext = zext i8 %.sroa.50.sroa.48.0.lcssa to i32, !dbg !4904
  %.sroa.50.sroa.48.0.insert.shift = shl nuw nsw i32 %.sroa.50.sroa.48.0.insert.ext, 16, !dbg !4904
  %.sroa.50.sroa.48.0.insert.insert = or disjoint i32 %.sroa.50.sroa.48.0.insert.shift, %.sroa.50.sroa.49.0.insert.shift, !dbg !4904
  %.sroa.50.sroa.45.0.insert.ext = zext i8 %.sroa.50.sroa.45.0.lcssa to i32, !dbg !4904
  %.sroa.50.sroa.45.0.insert.shift = shl nuw nsw i32 %.sroa.50.sroa.45.0.insert.ext, 8, !dbg !4904
  %.sroa.50.sroa.45.0.insert.insert = or disjoint i32 %.sroa.50.sroa.48.0.insert.insert, %.sroa.50.sroa.45.0.insert.shift, !dbg !4904
  %.sroa.50.sroa.0.0.insert.ext = zext i8 %.sroa.50.sroa.0.0.lcssa to i32, !dbg !4904
  %.sroa.50.sroa.0.0.insert.insert = or disjoint i32 %.sroa.50.sroa.45.0.insert.insert, %.sroa.50.sroa.0.0.insert.ext, !dbg !4904
  %.sroa.72.sroa.50.0.insert.ext = zext i8 %.sroa.72.sroa.50.0.lcssa to i32, !dbg !4904
  %.sroa.72.sroa.50.0.insert.shift = shl nuw i32 %.sroa.72.sroa.50.0.insert.ext, 24, !dbg !4904
  %.sroa.72.sroa.49.0.insert.ext = zext i8 %.sroa.72.sroa.49.0.lcssa to i32, !dbg !4904
  %.sroa.72.sroa.49.0.insert.shift = shl nuw nsw i32 %.sroa.72.sroa.49.0.insert.ext, 16, !dbg !4904
  %.sroa.72.sroa.49.0.insert.insert = or disjoint i32 %.sroa.72.sroa.49.0.insert.shift, %.sroa.72.sroa.50.0.insert.shift, !dbg !4904
  %.sroa.72.sroa.48.0.insert.ext = zext i8 %.sroa.72.sroa.48.0.lcssa to i32, !dbg !4904
  %.sroa.72.sroa.48.0.insert.shift = shl nuw nsw i32 %.sroa.72.sroa.48.0.insert.ext, 8, !dbg !4904
  %.sroa.72.sroa.48.0.insert.insert = or disjoint i32 %.sroa.72.sroa.49.0.insert.insert, %.sroa.72.sroa.48.0.insert.shift, !dbg !4904
  %.sroa.72.sroa.0.0.insert.ext = zext i8 %.sroa.72.sroa.0.0.lcssa to i32, !dbg !4904
  %.sroa.72.sroa.0.0.insert.insert = or disjoint i32 %.sroa.72.sroa.48.0.insert.insert, %.sroa.72.sroa.0.0.insert.ext, !dbg !4904
  store i32 %.sroa.0.sroa.0.0.insert.insert1444, ptr %i.c, align 8, !dbg !4905
  store i32 %.sroa.50.sroa.0.0.insert.insert, ptr %.sroa.50.0..sroa_idx, align 4, !dbg !4905
  store i32 %.sroa.72.sroa.0.0.insert.insert, ptr %.sroa.72.0..sroa_idx, align 8, !dbg !4905
  store i16 %.sroa.89.0.lcssa, ptr %.sroa.89.0..sroa_idx, align 4, !dbg !4905
  br label %bb.b, !dbg !4755

bb.s:                                             ; preds = %_RNvXsf_NtCs2Skuq3AeSHR_7anstyle5styleNtB5_5StyleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 38, !dbg !4906
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.an, ptr noundef nonnull align 8 dereferenceable(14) %i.c, i64 14, i1 false), !dbg !4907
  br label %bb.r, !dbg !4908

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit2341
  %i.ao = phi ptr [ %i.cx, %.loopexit2341 ], [ %i.k, %.lr.ph.preheader ] ; 5 uses
  %.sroa.0.sroa.49.020682308 = phi i8 [ %.sroa.0.sroa.49.020682307, %.loopexit2341 ], [ %.sroa.0.sroa.49.02068, %.lr.ph.preheader ] ; 18 uses
  %.sroa.0.sroa.48.020692301 = phi i8 [ %.sroa.0.sroa.48.020692300, %.loopexit2341 ], [ %.sroa.0.sroa.48.02069, %.lr.ph.preheader ] ; 18 uses
  %.sroa.0.sroa.45.020702294 = phi i8 [ %.sroa.0.sroa.45.020702293, %.loopexit2341 ], [ %.sroa.0.sroa.45.02070, %.lr.ph.preheader ] ; 18 uses
  %.sroa.0.sroa.0.020712287 = phi i8 [ %.sroa.0.sroa.0.020712286, %.loopexit2341 ], [ %.sroa.0.sroa.0.02071, %.lr.ph.preheader ] ; 18 uses
  %.sroa.50.sroa.49.020722280 = phi i8 [ %.sroa.50.sroa.49.020722279, %.loopexit2341 ], [ %.sroa.50.sroa.49.02072, %.lr.ph.preheader ] ; 18 uses
  %.sroa.50.sroa.48.020732273 = phi i8 [ %.sroa.50.sroa.48.020732272, %.loopexit2341 ], [ %.sroa.50.sroa.48.02073, %.lr.ph.preheader ] ; 18 uses
  %.sroa.50.sroa.45.020742266 = phi i8 [ %.sroa.50.sroa.45.020742265, %.loopexit2341 ], [ %.sroa.50.sroa.45.02074, %.lr.ph.preheader ] ; 18 uses
  %.sroa.50.sroa.0.020752259 = phi i8 [ %.sroa.50.sroa.0.020752258, %.loopexit2341 ], [ %.sroa.50.sroa.0.02075, %.lr.ph.preheader ] ; 18 uses
  %.sroa.72.sroa.0.020792231 = phi i8 [ %.sroa.72.sroa.0.020792230, %.loopexit2341 ], [ %.sroa.72.sroa.0.02079, %.lr.ph.preheader ] ; 18 uses
  %.sroa.0.12024 = phi i8 [ %.sroa.0.2, %.loopexit2341 ], [ %.sroa.0.02086, %.lr.ph.preheader ]
  %.sroa.05.12023 = phi i8 [ %.sroa.05.2, %.loopexit2341 ], [ %.sroa.05.02085, %.lr.ph.preheader ] ; 20 uses
  %.sroa.010.02022 = phi ptr [ %i.cw, %.loopexit2341 ], [ %i.g, %.lr.ph.preheader ] ; 2 uses
  %.sroa.4150.12021 = phi i16 [ %.sroa.4150.2, %.loopexit2341 ], [ %.sroa.4150.02084, %.lr.ph.preheader ] ; 21 uses
  %.sroa.0149.12020 = phi i1 [ %.sroa.0149.2, %.loopexit2341 ], [ %.sroa.0149.02083, %.lr.ph.preheader ] ; 17 uses
  %.sroa.4148.12019 = phi i16 [ %.sroa.4148.2, %.loopexit2341 ], [ %.sroa.4148.02082, %.lr.ph.preheader ] ; 21 uses
  %.sroa.0147.12018 = phi i1 [ %.sroa.0147.2, %.loopexit2341 ], [ %.sroa.0147.02081, %.lr.ph.preheader ] ; 16 uses
  %.sroa.89.12017 = phi i16 [ %.sroa.89.3, %.loopexit2341 ], [ %.sroa.89.02080, %.lr.ph.preheader ] ; 21 uses
    #dbg_value(i8 %.sroa.0.12024, !4445, !DIExpression(), !4758)
    #dbg_value(i8 %.sroa.05.12023, !4464, !DIExpression(), !4761)
    #dbg_value(ptr %.sroa.010.02022, !4479, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4800)
    #dbg_value(i16 %.sroa.4150.12021, !4462, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4760)
    #dbg_value(i16 %.sroa.4148.12019, !4447, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4759)
    #dbg_value(i16 %.sroa.89.12017, !4443, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4757)
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.010.02022, i64 2, !dbg !4909 ; 5 uses
    #dbg_value(ptr %i.ap, !4479, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4800)
    #dbg_value(ptr %.sroa.010.02022, !4494, !DIExpression(), !4910)
  %i.aq = load i16, ptr %.sroa.010.02022, align 2, !dbg !4911, !noundef !29 ; 7 uses
    #dbg_value(i16 %i.aq, !4504, !DIExpression(), !4912)
    #dbg_value(i16 %i.aq, !4508, !DIExpression(), !4913)
  switch i8 %.sroa.0.12024, label %default.unreachable2211 [
    i8 0, label %.preheader
    i8 1, label %.preheader2340
    i8 2, label %.preheader2352
    i8 3, label %.preheader2344
    i8 4, label %.preheader2348
  ], !dbg !4815

.preheader2352:                                   ; preds = %.lr.ph
  %i.ar = zext i8 %.sroa.0.sroa.49.020682308 to i32, !dbg !4914
  %i.as = zext i8 %.sroa.50.sroa.49.020722280 to i32, !dbg !4914
  %i.at = zext i8 %.sroa.72.sroa.50.02076 to i32, !dbg !4915
  br label %bb.y, !dbg !4916

.preheader2344:                                   ; preds = %.lr.ph
  %.mask356 = and i16 %.sroa.4150.12021, 255
  %.sroa.5203.0.insert.ext = zext nneg i16 %.mask356 to i32
  %.sroa.5203.0.insert.shift = shl nuw nsw i32 %.sroa.5203.0.insert.ext, 16
  %i.au = shl i16 %.sroa.4148.12019, 8
  %.sroa.4202.0.insert.shift = zext i16 %i.au to i32
  %invariant.op = or disjoint i32 %.sroa.5203.0.insert.shift, %.sroa.4202.0.insert.shift, !dbg !4917
  %invariant.op2799.a = or disjoint i32 %invariant.op, 2, !dbg !4917 ; 2 uses
  %.mask359 = and i16 %.sroa.4150.12021, 255
  %.sroa.5198.0.insert.ext = zext nneg i16 %.mask359 to i32
  %.sroa.5198.0.insert.shift = shl nuw nsw i32 %.sroa.5198.0.insert.ext, 16
  %i.av = shl i16 %.sroa.4148.12019, 8
  %.sroa.4197.0.insert.shift = zext i16 %i.av to i32
  %invariant.op2800.a = or disjoint i32 %.sroa.5198.0.insert.shift, %.sroa.4197.0.insert.shift, !dbg !4917
  %invariant.op2801.a = or disjoint i32 %invariant.op2800.a, 2, !dbg !4917 ; 2 uses
  %i.aw = and i16 %.sroa.4150.12021, 255
  %.sroa.5193.0.insert.ext = zext nneg i16 %i.aw to i32
  %.sroa.5193.0.insert.shift = shl nuw nsw i32 %.sroa.5193.0.insert.ext, 16
  %i.ax = shl i16 %.sroa.4148.12019, 8
  %.sroa.4192.0.insert.shift = zext i16 %i.ax to i32
  %invariant.op2802 = or disjoint i32 %.sroa.5193.0.insert.shift, %.sroa.4192.0.insert.shift, !dbg !4917
  %invariant.op2803 = or disjoint i32 %invariant.op2802, 2, !dbg !4917 ; 2 uses
  br i1 %.sroa.0147.12018, label %.lr.ph3237.peel, label %.loopexit2341, !dbg !4917

.lr.ph3237.peel:                                  ; preds = %.preheader2344
  br i1 %.sroa.0149.12020, label %bb.t, label %.loopexit2341, !dbg !4917

bb.t:                                             ; preds = %.lr.ph3237.peel
    #dbg_value(i16 %.sroa.4148.12019, !4510, !DIExpression(), !4918)
    #dbg_value(i16 %.sroa.4150.12021, !4512, !DIExpression(), !4918)
    #dbg_value(i16 %.sroa.4148.12019, !4513, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !4919)
    #dbg_value(i16 %.sroa.4150.12021, !4513, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !4919)
    #dbg_value(i16 %i.aq, !4513, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 8), !4919)
  %i.ay = and i16 %i.aq, 255, !dbg !4919
  %.sroa.6194.0.insert.ext.peel = zext nneg i16 %i.ay to i32, !dbg !4919
  %.sroa.6194.0.insert.shift.peel = shl nuw i32 %.sroa.6194.0.insert.ext.peel, 24, !dbg !4919 ; 3 uses
  switch i8 %.sroa.05.12023, label %.unreachabledefault [
    i8 0, label %bb.w
    i8 1, label %bb.v
    i8 2, label %bb.u
  ], !dbg !4920

bb.u:                                             ; preds = %bb.t
  %.sroa.0.sroa.49.0.insert.ext1754.peel = zext i8 %.sroa.0.sroa.49.020682308 to i32, !dbg !4921
  %.sroa.0.sroa.49.0.insert.shift1755.peel = shl nuw i32 %.sroa.0.sroa.49.0.insert.ext1754.peel, 24, !dbg !4921
  %.sroa.0.sroa.48.0.insert.ext1638.peel = zext i8 %.sroa.0.sroa.48.020692301 to i32, !dbg !4921
  %.sroa.0.sroa.48.0.insert.shift1639.peel = shl nuw nsw i32 %.sroa.0.sroa.48.0.insert.ext1638.peel, 16, !dbg !4921
  %.sroa.0.sroa.48.0.insert.insert1641.peel = or disjoint i32 %.sroa.0.sroa.48.0.insert.shift1639.peel, %.sroa.0.sroa.49.0.insert.shift1755.peel, !dbg !4921
  %.sroa.0.sroa.45.0.insert.ext1523.peel = zext i8 %.sroa.0.sroa.45.020702294 to i32, !dbg !4921
  %.sroa.0.sroa.45.0.insert.shift1524.peel = shl nuw nsw i32 %.sroa.0.sroa.45.0.insert.ext1523.peel, 8, !dbg !4921
  %.sroa.0.sroa.45.0.insert.insert1526.peel = or disjoint i32 %.sroa.0.sroa.48.0.insert.insert1641.peel, %.sroa.0.sroa.45.0.insert.shift1524.peel, !dbg !4921
  %.sroa.0.sroa.0.0.insert.ext1437.peel = zext i8 %.sroa.0.sroa.0.020712287 to i32, !dbg !4921
  %.sroa.0.sroa.0.0.insert.insert1439.peel = or disjoint i32 %.sroa.0.sroa.45.0.insert.insert1526.peel, %.sroa.0.sroa.0.0.insert.ext1437.peel, !dbg !4921
  %.sroa.50.sroa.49.0.insert.ext1391.peel = zext i8 %.sroa.50.sroa.49.020722280 to i32, !dbg !4921
  %.sroa.50.sroa.49.0.insert.shift1392.peel = shl nuw i32 %.sroa.50.sroa.49.0.insert.ext1391.peel, 24, !dbg !4921
  %.sroa.50.sroa.48.0.insert.ext1275.peel = zext i8 %.sroa.50.sroa.48.020732273 to i32, !dbg !4921
  %.sroa.50.sroa.48.0.insert.shift1276.peel = shl nuw nsw i32 %.sroa.50.sroa.48.0.insert.ext1275.peel, 16, !dbg !4921
  %.sroa.50.sroa.48.0.insert.insert1278.peel = or disjoint i32 %.sroa.50.sroa.48.0.insert.shift1276.peel, %.sroa.50.sroa.49.0.insert.shift1392.peel, !dbg !4921
  %.sroa.50.sroa.45.0.insert.ext1160.peel = zext i8 %.sroa.50.sroa.45.020742266 to i32, !dbg !4921
  %.sroa.50.sroa.45.0.insert.shift1161.peel = shl nuw nsw i32 %.sroa.50.sroa.45.0.insert.ext1160.peel, 8, !dbg !4921
  %.sroa.50.sroa.45.0.insert.insert1163.peel = or disjoint i32 %.sroa.50.sroa.48.0.insert.insert1278.peel, %.sroa.50.sroa.45.0.insert.shift1161.peel, !dbg !4921
  %.sroa.50.sroa.0.0.insert.ext1054.peel = zext i8 %.sroa.50.sroa.0.020752259 to i32, !dbg !4921
  %.sroa.50.sroa.0.0.insert.insert1056.peel = or disjoint i32 %.sroa.50.sroa.45.0.insert.insert1163.peel, %.sroa.50.sroa.0.0.insert.ext1054.peel, !dbg !4921
  %.sroa.0201.0.insert.insert.reass.peel = or disjoint i32 %.sroa.6194.0.insert.shift.peel, %invariant.op2799.a
  br label %bb.x, !dbg !4922

bb.v:                                             ; preds = %bb.t
  %.sroa.0.sroa.49.0.insert.ext1750.peel = zext i8 %.sroa.0.sroa.49.020682308 to i32, !dbg !4923
  %.sroa.0.sroa.49.0.insert.shift1751.peel = shl nuw i32 %.sroa.0.sroa.49.0.insert.ext1750.peel, 24, !dbg !4923
  %.sroa.0.sroa.48.0.insert.ext1634.peel = zext i8 %.sroa.0.sroa.48.020692301 to i32, !dbg !4923
  %.sroa.0.sroa.48.0.insert.shift1635.peel = shl nuw nsw i32 %.sroa.0.sroa.48.0.insert.ext1634.peel, 16, !dbg !4923
  %.sroa.0.sroa.48.0.insert.insert1637.peel = or disjoint i32 %.sroa.0.sroa.48.0.insert.shift1635.peel, %.sroa.0.sroa.49.0.insert.shift1751.peel, !dbg !4923
  %.sroa.0.sroa.45.0.insert.ext1519.peel = zext i8 %.sroa.0.sroa.45.020702294 to i32, !dbg !4923
  %.sroa.0.sroa.45.0.insert.shift1520.peel = shl nuw nsw i32 %.sroa.0.sroa.45.0.insert.ext1519.peel, 8, !dbg !4923
  %.sroa.0.sroa.45.0.insert.insert1522.peel = or disjoint i32 %.sroa.0.sroa.48.0.insert.insert1637.peel, %.sroa.0.sroa.45.0.insert.shift1520.peel, !dbg !4923
  %.sroa.0.sroa.0.0.insert.ext1434.peel = zext i8 %.sroa.0.sroa.0.020712287 to i32, !dbg !4923
  %.sroa.0.sroa.0.0.insert.insert1436.peel = or disjoint i32 %.sroa.0.sroa.45.0.insert.insert1522.peel, %.sroa.0.sroa.0.0.insert.ext1434.peel, !dbg !4923
  %.sroa.72.sroa.0.0.insert.ext594.peel = zext i8 %.sroa.72.sroa.0.020792231 to i32, !dbg !4923
  %.sroa.72.sroa.0.0.insert.insert596.peel = or disjoint i32 %.sroa.72.sroa.48.0.insert.insert717.peel, %.sroa.72.sroa.0.0.insert.ext594.peel, !dbg !4923
  %.sroa.0196.0.insert.insert.reass.peel = or disjoint i32 %.sroa.6194.0.insert.shift.peel, %invariant.op2801.a
  br label %bb.x, !dbg !4924

bb.w:                                             ; preds = %bb.t
    #dbg_value(i16 %.sroa.4148.12019, !4513, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !4919)
    #dbg_value(i16 %.sroa.4150.12021, !4513, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !4919)
    #dbg_value(i16 %i.aq, !4513, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 8), !4919)
  %.sroa.50.sroa.49.0.insert.ext1387.peel = zext i8 %.sroa.50.sroa.49.020722280 to i32, !dbg !4925
  %.sroa.50.sroa.49.0.insert.shift1388.peel = shl nuw i32 %.sroa.50.sroa.49.0.insert.ext1387.peel, 24, !dbg !4925
  %.sroa.50.sroa.48.0.insert.ext1271.peel = zext i8 %.sroa.50.sroa.48.020732273 to i32, !dbg !4925
  %.sroa.50.sroa.48.0.insert.shift1272.peel = shl nuw nsw i32 %.sroa.50.sroa.48.0.insert.ext1271.peel, 16, !dbg !4925
  %.sroa.50.sroa.48.0.insert.insert1274.peel = or disjoint i32 %.sroa.50.sroa.48.0.insert.shift1272.peel, %.sroa.50.sroa.49.0.insert.shift1388.peel, !dbg !4925
  %.sroa.50.sroa.45.0.insert.ext1156.peel = zext i8 %.sroa.50.sroa.45.020742266 to i32, !dbg !4925
  %.sroa.50.sroa.45.0.insert.shift1157.peel = shl nuw nsw i32 %.sroa.50.sroa.45.0.insert.ext1156.peel, 8, !dbg !4925
  %.sroa.50.sroa.45.0.insert.insert1159.peel = or disjoint i32 %.sroa.50.sroa.48.0.insert.insert1274.peel, %.sroa.50.sroa.45.0.insert.shift1157.peel, !dbg !4925
  %.sroa.50.sroa.0.0.insert.ext1051.peel = zext i8 %.sroa.50.sroa.0.020752259 to i32, !dbg !4925
  %.sroa.50.sroa.0.0.insert.insert1053.peel = or disjoint i32 %.sroa.50.sroa.45.0.insert.insert1159.peel, %.sroa.50.sroa.0.0.insert.ext1051.peel, !dbg !4925
  %.sroa.72.sroa.0.0.insert.ext591.peel = zext i8 %.sroa.72.sroa.0.020792231 to i32, !dbg !4925
  %.sroa.72.sroa.0.0.insert.insert593.peel = or disjoint i32 %.sroa.72.sroa.48.0.insert.insert713.peel, %.sroa.72.sroa.0.0.insert.ext591.peel, !dbg !4925
  %.sroa.0191.0.insert.insert.reass.peel = or disjoint i32 %.sroa.6194.0.insert.shift.peel, %invariant.op2803
end_hunk_1

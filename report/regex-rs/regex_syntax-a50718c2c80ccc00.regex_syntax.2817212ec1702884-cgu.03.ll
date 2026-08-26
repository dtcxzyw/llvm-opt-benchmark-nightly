Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_syntax-a50718c2c80ccc00.regex_syntax.2817212ec1702884-cgu.03?download=true
inline.NumInlined: 244
inline.NumDeleted: 145
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor7extract:bb.a
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val13.i = load i8, ptr %i.id, align 8
  br label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit, !dbg !5662

bb.bs:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralEEB1e_.exit.i.i189
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.lr.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal3SeqEBH_.exit193
  %.sroa.0.0308 = phi ptr [ %i.hx, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.lr.ph ], [ %i.if, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal3SeqEBH_.exit193 ] ; 2 uses
    #dbg_value(ptr %.sroa.0.0308, !4245, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5642)
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0.0308, i64 48, !dbg !5663 ; 2 uses
    #dbg_value(ptr %i.if, !4245, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5642)
    #dbg_value(ptr %.sroa.0.0308, !4246, !DIExpression(), !5664)
  %i.ig = load i64, ptr %i.ab, align 8, !range !480, !noalias !5632
  %.not11.i = icmp eq i64 %i.ig, -1
  br i1 %.not11.i, label %_RINvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB3_9Extractor19extract_alternationINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_3HirEEB7_.exit, label %bb.bt, !dbg !5665

bb.bt:                                            ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !5666, !noalias !5632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !5667, !noalias !5632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !dbg !5667, !noalias !5632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !5668, !noalias !5632
  invoke void @_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor7extract(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0.0308)
          to label %bb.bv unwind label %bb.bu, !dbg !5669, !noalias !5670, !inline_history !5671

bb.bu:                                            ; preds = %bb.bt
  %i.ih = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal3SeqEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z) #16
          to label %common.resume unwind label %bb.cb, !dbg !5672, !noalias !5670, !inline_history !5671

bb.bv:                                            ; preds = %bb.bt
  invoke fastcc void @_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor5union(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.aa, i64 %.val.i61, i8 %.val13.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef align 8 dereferenceable(24) %i.y)
          to label %bb.bx unwind label %bb.bw, !dbg !5673, !noalias !5670, !inline_history !5671

bb.bw:                                            ; preds = %bb.bv
  %i.ii = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal3SeqEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #16
          to label %common.resume unwind label %bb.cb, !dbg !5674, !noalias !5670, !inline_history !5671

bb.bx:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !5672, !noalias !5632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !dbg !5675, !noalias !5632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !5672, !noalias !5632
    #dbg_value(ptr %i.y, !465, !DIExpression(), !5676)
    #dbg_value(ptr %i.y, !469, !DIExpression(), !5678)
  %i.ij = load i64, ptr %i.y, align 8, !dbg !5680, !range !480, !alias.scope !5681, !noalias !5670, !noundef !15
  %i.ik = icmp eq i64 %i.ij, -1, !dbg !5680
  br i1 %i.ik, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal3SeqEBH_.exit193, label %bb.by, !dbg !5680

bb.by:                                            ; preds = %bb.bx
    #dbg_value(ptr %i.y, !484, !DIExpression(), !5686)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralEEB1e_.exit.i.i189 unwind label %bb.bz, !dbg !5688, !noalias !5670

bb.bz:                                            ; preds = %bb.by
  %i.il = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.y, !493, !DIExpression(), !5689)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.cc unwind label %bb.ca, !dbg !5691, !noalias !5670

bb.ca:                                            ; preds = %bb.bz
  %i.im = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !dbg !5688, !noalias !5670
  unreachable, !dbg !5688

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralEEB1e_.exit.i.i189: ; preds = %bb.by
    #dbg_value(ptr %i.y, !493, !DIExpression(), !5692)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal3SeqEBH_.exit193 unwind label %bb.bs, !dbg !5694

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal3SeqEBH_.exit193: ; preds = %bb.bx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralEEB1e_.exit.i.i189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !5674, !noalias !5632
    #dbg_value(ptr %i.if, !4245, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5642)
    #dbg_value(ptr undef, !3855, !DIExpression(), !4235)
    #dbg_value(i64 1, !5643, !DIExpression(), !5650)
    #dbg_value(ptr %i.if, !3884, !DIExpression(), !5652)
    #dbg_value(ptr %i.if, !5649, !DIExpression(), !5650)
    #dbg_value(ptr %i.ia, !3886, !DIExpression(), !5653)
    #dbg_value(ptr poison, !5654, !DIExpression(), !5658)
    #dbg_value(ptr poison, !5657, !DIExpression(), !5660)
  %i.in = icmp eq ptr %i.if, %i.ia, !dbg !5661
  br i1 %i.in, label %_RINvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB3_9Extractor19extract_alternationINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_3HirEEB7_.exit, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit, !dbg !5662

bb.cb:                                            ; preds = %bb.cc, %bb.bw, %bb.bu
  %i.io = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !dbg !5695, !noalias !5670, !inline_history !5671
  unreachable, !dbg !5695

bb.cc:                                            ; preds = %bb.bs, %bb.bz
  %.pn.i58.ph = phi { ptr, i32 } [ %i.il, %bb.bz ], [ %i.ie, %bb.bs ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal3SeqEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ab) #16
          to label %common.resume unwind label %bb.cb, !dbg !5696, !noalias !5670, !inline_history !5671

_RINvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB3_9Extractor19extract_alternationINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_3HirEEB7_.exit: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal3SeqEBH_.exit193, %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !dbg !5697, !noalias !5698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !5696, !noalias !5632
  br label %_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor19extract_class_bytes.exit, !dbg !5699

bb.cd:                                            ; preds = %bb.g
  %i.ip = load i64, ptr %i.bn, align 8, !dbg !5700
    #dbg_value(i64 %i.bm, !4405, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5701)
    #dbg_value(i64 %i.ip, !4405, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5701)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.bm, i64 %i.ip) #17, !dbg !5702
  unreachable, !dbg !5702

bb.ce:                                            ; preds = %bb.g
  %i.iq = load ptr, ptr %i.bn, align 8, !dbg !5703, !nonnull !15, !noundef !15 ; 2 uses
    #dbg_value(i64 %i.bm, !4403, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5704)
    #dbg_value(ptr %i.iq, !4403, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5704)
    #dbg_value(ptr poison, !4412, !DIExpression(), !5705)
  %i.ir = icmp ule i64 %i.bi, %i.bm, !dbg !5706
    #dbg_value(i1 true, !5707, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5710)
  tail call void @llvm.assume(i1 %i.ir), !dbg !5712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !5713
    #dbg_value(i64 %i.bm, !4382, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5714)
    #dbg_value(i64 %i.bm, !4423, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5715)
    #dbg_value(ptr %i.iq, !4382, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5714)
    #dbg_value(ptr %i.iq, !4423, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5715)
    #dbg_value(i64 0, !4382, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5714)
    #dbg_value(i64 0, !4423, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5715)
  %.not = icmp eq i64 %i.bi, 0, !dbg !5716
  br i1 %.not, label %bb.cf, label %bb.cl, !dbg !5716

bb.cf:                                            ; preds = %bb.cl, %bb.ce
    #dbg_value(i64 %i.bi, !4423, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5715)
    #dbg_value(i64 %i.bi, !4382, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5714)
  store i64 %i.bm, ptr %i.at, align 8, !dbg !5717
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8, !dbg !5717
  store ptr %i.iq, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !5717
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16, !dbg !5717
  store i64 %i.bi, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !5717
  %i.is = getelementptr inbounds nuw i8, ptr %i.at, i64 24, !dbg !5717
  store i8 1, ptr %i.is, align 8, !dbg !5717
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5718), !dbg !5721
    #dbg_declare(ptr %i.at, !4432, !DIExpression(), !5722)
    #dbg_value(i64 8, !4440, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5724)
    #dbg_value(i64 8, !4478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5727)
    #dbg_value(i64 8, !4507, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5729)
    #dbg_value(i64 32, !4440, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5724)
    #dbg_value(i64 32, !4478, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5727)
    #dbg_value(i64 32, !4507, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5729)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !4504, !DIExpression(), !5727)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !4513, !DIExpression(), !5729)
    #dbg_value(i8 0, !4514, !DIExpression(), !5729)
    #dbg_value(i64 8, !4517, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5731)
    #dbg_value(i64 8, !4549, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5733)
    #dbg_value(i64 32, !4517, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5731)
    #dbg_value(i64 32, !4549, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5733)
    #dbg_value(i1 false, !4523, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5731)
    #dbg_value(i64 32, !4524, !DIExpression(), !5735)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !dbg !5736, !noalias !5737
  %i.it = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 1, 33) 32, i64 noundef range(i64 1, 9) 8) #18, !dbg !5739, !noalias !5737 ; 8 uses
  %i.iu = icmp eq ptr %i.it, null, !dbg !5740
  br i1 %i.iu, label %bb.cg, label %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB5_3Seq9singleton.exit65, !dbg !5741, !prof !994

bb.cg:                                            ; preds = %bb.cf
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #17
          to label %.noexc.i64 unwind label %bb.ch, !dbg !5742, !noalias !5737

.noexc.i64:                                       ; preds = %bb.cg
  unreachable, !dbg !5742

bb.ch:                                            ; preds = %bb.cg
  %i.iv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.at) #16
          to label %common.resume unwind label %bb.ci, !dbg !5743, !noalias !5718

bb.ci:                                            ; preds = %bb.ch
  %i.iw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !dbg !5744, !noalias !5718
  unreachable, !dbg !5744

_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB5_3Seq9singleton.exit65: ; preds = %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.it, ptr noundef nonnull align 8 dereferenceable(32) %i.at, i64 32, i1 false), !dbg !5745, !noalias !5718
  store i64 1, ptr %i.au, align 8, !dbg !5746, !alias.scope !5718, !noalias !5747
  %.sroa.42.0..sroa_idx.i62 = getelementptr inbounds nuw i8, ptr %i.au, i64 8, !dbg !5746
  store ptr %i.it, ptr %.sroa.42.0..sroa_idx.i62, align 8, !dbg !5746, !alias.scope !5718, !noalias !5747
  %.sroa.53.0..sroa_idx.i63 = getelementptr inbounds nuw i8, ptr %i.au, i64 16, !dbg !5746
  store i64 1, ptr %.sroa.53.0..sroa_idx.i63, align 8, !dbg !5746, !alias.scope !5718, !noalias !5747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !dbg !5748
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !5749
  %.val = load i64, ptr %i.ix, align 8, !dbg !5749, !noundef !15 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !5749
  %.val53 = load i8, ptr %i.iy, align 8, !dbg !5749, !range !1011, !noundef !15
    #dbg_value(ptr poison, !2686, !DIExpression(), !5750)
    #dbg_value(ptr %i.au, !2693, !DIExpression(), !5750)
    #dbg_value(i64 %.val, !2694, !DIExpression(), !5752)
  %i.iz = trunc nuw i8 %.val53 to i1, !dbg !5753
  %i.ja = getelementptr inbounds nuw i8, ptr %i.it, i64 16, !dbg !5752
  %i.jb = load i64, ptr %i.ja, align 8, !dbg !5752, !noalias !5754, !noundef !15 ; 2 uses
  %.not16.i.i = icmp ult i64 %.val, %i.jb, !dbg !5752 ; 2 uses
  br i1 %i.iz, label %.lr.ph.i.i.preheader, label %.lr.ph.i5.i.preheader, !dbg !5757

.lr.ph.i5.i.preheader:                            ; preds = %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB5_3Seq9singleton.exit65
    #dbg_value(ptr %i.it, !2938, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !5758)
    #dbg_value(ptr %i.it, !2939, !DIExpression(), !5760)
    #dbg_value(ptr %i.it, !2947, !DIExpression(), !5761)
    #dbg_value(ptr %i.it, !3021, !DIExpression(), !5763)
    #dbg_value(ptr %i.it, !3026, !DIExpression(), !5765)
    #dbg_value(ptr %i.it, !3031, !DIExpression(), !5767)
    #dbg_value(ptr %i.it, !3036, !DIExpression(), !5769)
    #dbg_value(ptr %i.it, !3041, !DIExpression(), !5771)
  br i1 %.not16.i.i, label %bb.ck, label %_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor19enforce_literal_len.exit, !dbg !5773

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB5_3Seq9singleton.exit65
    #dbg_value(ptr %i.it, !2753, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !5774)
    #dbg_value(ptr %i.it, !2754, !DIExpression(), !5776)
    #dbg_value(ptr %i.it, !2764, !DIExpression(), !5777)
    #dbg_value(ptr %i.it, !2849, !DIExpression(), !5779)
    #dbg_value(ptr %i.it, !2854, !DIExpression(), !5781)
    #dbg_value(ptr %i.it, !2859, !DIExpression(), !5783)
    #dbg_value(ptr %i.it, !2849, !DIExpression(), !5785)
    #dbg_value(ptr %i.it, !2854, !DIExpression(), !5787)
    #dbg_value(ptr %i.it, !2869, !DIExpression(), !5789)
    #dbg_value(ptr %i.it, !2874, !DIExpression(), !5791)
  br i1 %.not16.i.i, label %bb.cj, label %_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor19enforce_literal_len.exit, !dbg !5793

bb.cj:                                            ; preds = %.lr.ph.i.i.preheader
  %i.jc = getelementptr inbounds nuw i8, ptr %i.it, i64 24, !dbg !5794
  store i8 0, ptr %i.jc, align 8, !dbg !5794, !noalias !5795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !5798, !noalias !5795
    #dbg_value(ptr %i.it, !2869, !DIExpression(), !5799)
    #dbg_value(ptr %i.it, !2874, !DIExpression(), !5801)
  %i.jd = sub nuw i64 %i.jb, %.val, !dbg !5803
  invoke void @_RINvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE5drainINtNtNtCsj6eKBz9Db1c_4core3ops5range7RangeTojEECs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.it, i64 noundef %i.jd)
          to label %.noexc unwind label %.loopexit, !dbg !5804

.noexc:                                           ; preds = %bb.cj
    #dbg_value(ptr %i.x, !2891, !DIExpression(), !5805)
  invoke void @_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc3vec5drainINtB5_5DrainhENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x)
          to label %.noexc66 unwind label %.loopexit, !dbg !5807

.noexc66:                                         ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !5808, !noalias !5795
  br label %_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor19enforce_literal_len.exit, !dbg !5809

bb.ck:                                            ; preds = %.lr.ph.i5.i.preheader
  %i.je = getelementptr inbounds nuw i8, ptr %i.it, i64 24, !dbg !5810
  store i8 0, ptr %i.je, align 8, !dbg !5810, !noalias !5811
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE8truncateCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.it, i64 noundef %.val)
          to label %_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor19enforce_literal_len.exit unwind label %.loopexit.split-lp, !dbg !5814

bb.cl:                                            ; preds = %bb.ce
    #dbg_value(ptr %i.bg, !4586, !DIExpression(), !4588)
    #dbg_value(ptr %i.bg, !4593, !DIExpression(), !4595)
    #dbg_value(ptr %i.iq, !4587, !DIExpression(), !4588)
    #dbg_value(ptr %i.iq, !4594, !DIExpression(), !4595)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iq, ptr nonnull align 1 %i.bg, i64 %i.bi, i1 false), !dbg !5815
    #dbg_value(i64 %i.bi, !4382, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5714)
    #dbg_value(i64 %i.bi, !4423, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5715)
  br label %bb.cf, !dbg !5816

.loopexit:                                        ; preds = %bb.cj, %.noexc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

.loopexit.split-lp:                               ; preds = %bb.ck
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.cm:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal3SeqEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.au) #16
          to label %common.resume unwind label %bb.cn, !dbg !5817

_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor19enforce_literal_len.exit: ; preds = %.lr.ph.i5.i.preheader, %bb.ck, %.lr.ph.i.i.preheader, %.noexc66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false), !dbg !5818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !dbg !5817
  br label %_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor19extract_class_bytes.exit, !dbg !5819

_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor19extract_class_bytes.exit: ; preds = %_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor19enforce_literal_len.exit.i102, %_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor24class_over_limit_unicode.exit.thread.i, %_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor19enforce_literal_len.exit.i, %_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes.exit.thread.i, %_RINvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB3_9Extractor14extract_concatINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3rev3RevINtNtNtB1p_5slice4iter4IterNtB5_3HirEEEB7_.exit, %_RINvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB3_9Extractor14extract_concatINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_3HirEEB7_.exit, %_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor19enforce_literal_len.exit, %_RINvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB3_9Extractor19extract_alternationINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_3HirEEB7_.exit, %_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor18extract_repetition.exit, %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB5_3Seq9singleton.exit
  ret void, !dbg !5820

bb.cn:                                            ; preds = %bb.cm
  %i.jf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !dbg !5821
  unreachable, !dbg !5821

bb.co:                                            ; preds = %bb.h
    #dbg_value(ptr %.tr286, !3841, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5823), !dbg !5826
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5827), !dbg !5826
    #dbg_value(ptr %1, !4163, !DIExpression(), !5829)
    #dbg_value(ptr poison, !4164, !DIExpression(), !5829)
    #dbg_declare(ptr %i.w, !4165, !DIExpression(), !5830)
    #dbg_value(i64 1, !5831, !DIExpression(), !5838)
  %.val33.i = load i64, ptr %1, align 8, !dbg !5840, !alias.scope !5827, !noalias !5823 ; 2 uses
    #dbg_value(ptr poison, !5841, !DIExpression(), !5850)
    #dbg_value(ptr poison, !5854, !DIExpression(), !5876)
    #dbg_value(ptr poison, !5858, !DIExpression(), !5877)
    #dbg_value(ptr poison, !5869, !DIExpression(), !5878)
    #dbg_value(ptr poison, !5870, !DIExpression(), !5878)
    #dbg_value(ptr poison, !5879, !DIExpression(), !5885)
    #dbg_value(i64 1, !5887, !DIExpression(), !5891)
    #dbg_value(i64 0, !5871, !DIExpression(), !5893)
    #dbg_value(ptr poison, !5894, !DIExpression(), !5901)
    #dbg_value(i64 %.val55, !5903, !DIExpression(), !5924)
    #dbg_value(i64 %.val55, !5930, !DIExpression(), !5937)
    #dbg_value(ptr %.val54, !5928, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5939)
    #dbg_value(ptr %.val54, !5915, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5940)
    #dbg_value(i64 %.val55, !5928, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5939)
    #dbg_value(i64 %.val55, !5915, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5940)
    #dbg_value(ptr %.val54, !5920, !DIExpression(), !5941)
    #dbg_value(ptr %.val54, !5936, !DIExpression(), !5937)
  %.idx.i.i68 = shl nuw nsw i64 %.val55, 1, !dbg !5942
  %i.jg = getelementptr inbounds nuw i8, ptr %.val54, i64 %.idx.i.i68, !dbg !5942 ; 2 uses
    #dbg_value(ptr %.val54, !5872, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5943)
    #dbg_value(ptr %i.jg, !5872, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5943)
    #dbg_value(ptr undef, !5858, !DIExpression(), !5877)
    #dbg_value(ptr undef, !5854, !DIExpression(), !5876)
    #dbg_value(ptr undef, !5841, !DIExpression(), !5850)
    #dbg_value(ptr %.val54, !5844, !DIExpression(), !5944)
    #dbg_value(ptr %.val54, !5890, !DIExpression(), !5891)
    #dbg_value(ptr %i.jg, !5846, !DIExpression(), !5945)
    #dbg_value(ptr poison, !5946, !DIExpression(), !5953)
    #dbg_value(ptr poison, !5952, !DIExpression(), !5955)
  br i1 %i.br, label %_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes.exit.thread3.thread.i, label %.lr.ph.i.i69, !dbg !5956

_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes.exit.thread3.thread.i: ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !5957, !noalias !5958
  store i64 0, ptr %i.w, align 8, !dbg !5959, !noalias !5958
  %.sroa.411.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !5959 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.411.0..sroa_idx30.i, align 8, !dbg !5959, !noalias !5958
  %.sroa.512.0..sroa_idx31.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !5959 ; 2 uses
  store i64 0, ptr %.sroa.512.0..sroa_idx31.i, align 8, !dbg !5959, !noalias !5958
    #dbg_value(ptr %.val54, !4166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5962)
    #dbg_value(ptr %i.jg, !4166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5962)
    #dbg_value(ptr undef, !4230, !DIExpression(), !4234)
    #dbg_value(ptr undef, !4222, !DIExpression(), !4233)
    #dbg_value(ptr undef, !4192, !DIExpression(), !4215)
    #dbg_value(ptr %.val54, !4209, !DIExpression(), !5963)
    #dbg_value(ptr %.val54, !5837, !DIExpression(), !5838)
    #dbg_value(ptr %i.jg, !4211, !DIExpression(), !5964)
    #dbg_value(ptr poison, !5965, !DIExpression(), !5969)
    #dbg_value(ptr poison, !5968, !DIExpression(), !5971)
  br label %._crit_edge.i, !dbg !5972

.lr.ph.i.i69:                                     ; preds = %bb.co, %bb.cp
  %.sroa.01.03.i.i = phi i64 [ %i.jk, %bb.cp ], [ 0, %bb.co ] ; 2 uses
  %.sroa.04.02.i.i = phi ptr [ %i.ji, %bb.cp ], [ %.val54, %bb.co ] ; 2 uses
    #dbg_value(i64 %.sroa.01.03.i.i, !5871, !DIExpression(), !5893)
    #dbg_value(ptr %.sroa.04.02.i.i, !5872, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !5943)
    #dbg_value(ptr %.sroa.04.02.i.i, !5873, !DIExpression(), !5973)
  %i.jh = icmp ugt i64 %.sroa.01.03.i.i, %.val33.i, !dbg !5974
  br i1 %i.jh, label %_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes.exit.thread.i, label %bb.cp, !dbg !5974

bb.cp:                                            ; preds = %.lr.ph.i.i69
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.04.02.i.i, i64 2, !dbg !5975 ; 2 uses
    #dbg_value(ptr %i.ji, !5872, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5943)
  %i.jj = tail call noundef i64 @_RNvMsi_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_15ClassBytesRange3len(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %.sroa.04.02.i.i), !dbg !5976, !noalias !5958
  %i.jk = add i64 %i.jj, %.sroa.01.03.i.i, !dbg !5977 ; 2 uses
    #dbg_value(i64 %i.jk, !5871, !DIExpression(), !5893)
    #dbg_value(ptr undef, !5858, !DIExpression(), !5877)
    #dbg_value(ptr undef, !5854, !DIExpression(), !5876)
    #dbg_value(ptr undef, !5841, !DIExpression(), !5850)
    #dbg_value(ptr %i.ji, !5844, !DIExpression(), !5944)
    #dbg_value(ptr %i.ji, !5890, !DIExpression(), !5891)
    #dbg_value(ptr %i.jg, !5846, !DIExpression(), !5945)
    #dbg_value(ptr poison, !5946, !DIExpression(), !5953)
    #dbg_value(ptr poison, !5952, !DIExpression(), !5955)
  %i.jl = icmp eq ptr %i.ji, %i.jg, !dbg !5978
  br i1 %i.jl, label %_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes.exit.i, label %.lr.ph.i.i69, !dbg !5956

_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes.exit.i: ; preds = %bb.cp
  %i.jm = icmp ugt i64 %i.jk, %.val33.i, !dbg !5979
  br i1 %i.jm, label %_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes.exit.thread.i, label %_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes.exit.thread3.i, !dbg !5980

_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes.exit.thread3.i: ; preds = %_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !5957, !noalias !5958
  store i64 0, ptr %i.w, align 8, !dbg !5959, !noalias !5958
  %.sroa.411.0..sroa_idx.i70 = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !5959 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.411.0..sroa_idx.i70, align 8, !dbg !5959, !noalias !5958
  %.sroa.512.0..sroa_idx.i71 = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !5959 ; 4 uses
  store i64 0, ptr %.sroa.512.0..sroa_idx.i71, align 8, !dbg !5959, !noalias !5958
    #dbg_value(ptr %.val54, !4166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5962)
    #dbg_value(ptr %i.jg, !4166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5962)
    #dbg_value(ptr undef, !4230, !DIExpression(), !4234)
    #dbg_value(ptr undef, !4222, !DIExpression(), !4233)
    #dbg_value(ptr undef, !4192, !DIExpression(), !4215)
    #dbg_value(ptr %.val54, !4209, !DIExpression(), !5963)
    #dbg_value(ptr %.val54, !5837, !DIExpression(), !5838)
    #dbg_value(ptr %i.jg, !4211, !DIExpression(), !5964)
    #dbg_value(ptr poison, !5965, !DIExpression(), !5969)
    #dbg_value(ptr poison, !5968, !DIExpression(), !5971)
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.jn = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  br label %bb.cq, !dbg !5972

_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes.exit.thread.i: ; preds = %.lr.ph.i.i69, %_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes.exit.i
  store i64 -1, ptr %0, align 8, !dbg !5981, !alias.scope !5823, !noalias !5827
  br label %_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor19extract_class_bytes.exit, !dbg !5985

.loopexit13.i:                                    ; preds = %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB5_3Seq4push.exit.i, %bb.cq
    #dbg_value(ptr %i.jp, !4166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5962)
    #dbg_value(ptr undef, !4230, !DIExpression(), !4234)
    #dbg_value(ptr undef, !4222, !DIExpression(), !4233)
    #dbg_value(ptr undef, !4192, !DIExpression(), !4215)
    #dbg_value(ptr %i.jp, !4209, !DIExpression(), !5963)
    #dbg_value(ptr %i.jp, !5837, !DIExpression(), !5838)
    #dbg_value(ptr %i.jg, !4211, !DIExpression(), !5964)
    #dbg_value(ptr poison, !5965, !DIExpression(), !5969)
    #dbg_value(ptr poison, !5968, !DIExpression(), !5971)
  %i.jo = icmp eq ptr %i.jp, %i.jg, !dbg !5986
  br i1 %i.jo, label %._crit_edge.i, label %bb.cq, !dbg !5972

bb.cq:                                            ; preds = %.loopexit13.i, %_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes.exit.thread3.i
  %.sroa.0.018.i = phi ptr [ %.val54, %_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes.exit.thread3.i ], [ %i.jp, %.loopexit13.i ] ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i, i64 2, !dbg !5987 ; 2 uses
    #dbg_value(ptr %i.jp, !4166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5962)
    #dbg_value(ptr %.sroa.0.018.i, !4186, !DIExpression(), !5988)
    #dbg_value(ptr %.sroa.0.018.i, !5989, !DIExpression(), !5995)
    #dbg_value(ptr %.sroa.0.018.i, !5997, !DIExpression(), !6001)
  %i.jq = load i8, ptr %.sroa.0.018.i, align 1, !dbg !6003, !noalias !5958, !noundef !15 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i, i64 1, !dbg !6004
  %i.js = load i8, ptr %i.jr, align 1, !dbg !6004, !noalias !5958, !noundef !15 ; 2 uses
    #dbg_value(i8 %i.jq, !4187, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !6005)
    #dbg_value(i8 %i.js, !4187, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !6005)
    #dbg_value(i8 poison, !4187, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !6005)
    #dbg_value(ptr undef, !4146, !DIExpression(), !4191)
    #dbg_value(ptr undef, !4114, !DIExpression(), !4129)
  %.not.i16.i = icmp ugt i8 %i.jq, %i.js
  br i1 %.not.i16.i, label %.loopexit13.i, label %.lr.ph.i, !dbg !6006

._crit_edge.i:                                    ; preds = %.loopexit13.i, %_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes.exit.thread3.thread.i
  %.sroa.512.0..sroa_idx33.i = phi ptr [ %.sroa.512.0..sroa_idx31.i, %_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes.exit.thread3.thread.i ], [ %.sroa.512.0..sroa_idx.i71, %.loopexit13.i ] ; 2 uses
  %.sroa.411.0..sroa_idx32.i = phi ptr [ %.sroa.411.0..sroa_idx30.i, %_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes.exit.thread3.thread.i ], [ %.sroa.411.0..sroa_idx.i70, %.loopexit13.i ] ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !6007
  %.val.i73 = load i64, ptr %i.jt, align 8, !dbg !6007, !alias.scope !5827, !noalias !5823, !noundef !15 ; 4 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !6007
  %.val32.i = load i8, ptr %i.ju, align 8, !dbg !6007, !range !1011, !alias.scope !5827, !noalias !5823, !noundef !15
  call void @llvm.experimental.noalias.scope.decl(metadata !6008), !dbg !6007
    #dbg_value(ptr poison, !2686, !DIExpression(), !6011)
    #dbg_value(ptr %i.w, !2693, !DIExpression(), !6011)
    #dbg_value(i64 %.val.i73, !2694, !DIExpression(), !6013)
  %i.jv = trunc nuw i8 %.val32.i to i1, !dbg !6014
  br i1 %i.jv, label %bb.cr, label %bb.cv, !dbg !6015

bb.cr:                                            ; preds = %._crit_edge.i
  call void @llvm.experimental.noalias.scope.decl(metadata !6016), !dbg !6019
    #dbg_value(ptr poison, !2708, !DIExpression(), !6020)
    #dbg_value(ptr %i.w, !2750, !DIExpression(), !6023)
    #dbg_value(i64 %.val.i73, !2751, !DIExpression(), !6023)
    #dbg_value(i64 %.val.i73, !2758, !DIExpression(), !6024)
    #dbg_value(i64 1, !2767, !DIExpression(), !6026)
  %i.jw = load i64, ptr %i.w, align 8, !dbg !6028, !range !480, !alias.scope !6029, !noalias !5958, !noundef !15
  %.not.i.i.i = icmp eq i64 %i.jw, -1, !dbg !6028
  br i1 %.not.i.i.i, label %_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor19enforce_literal_len.exit.i, label %bb.cs, !dbg !6030

bb.cs:                                            ; preds = %bb.cr
    #dbg_value(ptr %i.w, !2752, !DIExpression(), !6031)
    #dbg_value(ptr %i.w, !2775, !DIExpression(), !6032)
    #dbg_value(ptr %i.w, !2787, !DIExpression(), !6034)
    #dbg_value(ptr %i.w, !2793, !DIExpression(), !6036)
  %i.jx = load ptr, ptr %.sroa.411.0..sroa_idx32.i, align 8, !dbg !6038, !alias.scope !6029, !noalias !5958, !nonnull !15, !noundef !15 ; 2 uses
  %i.jy = load i64, ptr %.sroa.512.0..sroa_idx33.i, align 8, !dbg !6042, !alias.scope !6029, !noalias !5958, !noundef !15 ; 2 uses
    #dbg_value(i64 %i.jy, !2807, !DIExpression(), !6043)
    #dbg_value(i64 %i.jy, !2825, !DIExpression(), !6046)
    #dbg_value(ptr %i.jx, !2823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6048)
    #dbg_value(ptr %i.jx, !2814, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6049)
    #dbg_value(i64 %i.jy, !2823, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6048)
    #dbg_value(i64 %i.jy, !2814, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6049)
    #dbg_value(ptr %i.jx, !2815, !DIExpression(), !6050)
    #dbg_value(ptr %i.jx, !2828, !DIExpression(), !6046)
  %.idx.i.i.i = shl nuw nsw i64 %i.jy, 5, !dbg !6051
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!5558 = distinct !DISubprogram(name: "ptr<regex_syntax::hir::Hir, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE3ptrBQ_", scope: !3793, file: !577, line: 295, type: !5559, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, templateParams: !3800, declaration: !5562)
!5559 = !DISubroutineType(types: !5560)
!5560 = !{!5555, !5561}
!5561 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::raw_vec::RawVec<regex_syntax::hir::Hir, alloc::alloc::Global>", baseType: !3793, size: 64, align: 64, dwarfAddressSpace: 0)
!5562 = !DISubprogram(name: "ptr<regex_syntax::hir::Hir, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE3ptrBQ_", scope: !3793, file: !577, line: 295, type: !5559, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !3800)
!5563 = !DILocation(line: 1969, column: 18, scope: !5528, inlinedAt: !5564)
!5564 = !DILocation(line: 1865, column: 76, scope: !5521, inlinedAt: !5565)
!5565 = !DILocation(line: 3855, column: 14, scope: !5509, inlinedAt: !5566)
!5566 = !DILocation(line: 0, scope: !3851)
!5567 = !DILocation(line: 1865, column: 86, scope: !5521, inlinedAt: !5565)
!5568 = !DILocation(line: 188, column: 33, scope: !3851)
!5569 = !DILocation(line: 192, column: 25, scope: !3854)
!5570 = !DILocation(line: 3854, column: 14, scope: !5509, inlinedAt: !5571)
!5571 = !DILocation(line: 196, column: 42, scope: !3854)
!5572 = !DILocation(line: 1848, column: 27, scope: !5521, inlinedAt: !5573)
!5573 = !DILocation(line: 3855, column: 14, scope: !5509, inlinedAt: !5571)
!5574 = !DILocation(line: 1966, column: 25, scope: !5528, inlinedAt: !5575)
!5575 = !DILocation(line: 1865, column: 76, scope: !5521, inlinedAt: !5573)
!5576 = !DILocation(line: 611, column: 9, scope: !5546, inlinedAt: !5577)
!5577 = !DILocation(line: 606, column: 14, scope: !5552, inlinedAt: !5578)
!5578 = !DILocation(line: 296, column: 20, scope: !5558, inlinedAt: !5579)
!5579 = !DILocation(line: 1969, column: 18, scope: !5528, inlinedAt: !5575)
!5580 = !DILocation(line: 1865, column: 86, scope: !5521, inlinedAt: !5573)
!5581 = !DILocalVariable(name: "len", scope: !5582, file: !1550, line: 95, type: !9, align: 64)
!5582 = distinct !DILexicalBlock(scope: !5583, file: !1550, line: 95, column: 9)
!5583 = distinct !DISubprogram(name: "new<regex_syntax::hir::Hir>", linkageName: "_RNvMs4_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB5_4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE3newBS_", scope: !3873, file: !1550, line: 94, type: !5584, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, templateParams: !3798, declaration: !5586, retainedNodes: !5587)
!5584 = !DISubroutineType(types: !5585)
!5585 = !{!3873, !5512}
!5586 = !DISubprogram(name: "new<regex_syntax::hir::Hir>", linkageName: "_RNvMs4_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB5_4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE3newBS_", scope: !3873, file: !1550, line: 94, type: !5584, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !3798)
!5587 = !{!5588, !5593, !5595, !5597, !5599, !5601, !5603, !5581, !5605, !5607}
!5588 = !DILocalVariable(name: "slice", arg: 1, scope: !5583, file: !1550, line: 94, type: !5589)
!5589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "*const [regex_syntax::hir::Hir]", file: !2, size: 128, align: 64, elements: !5590, templateParams: !15, identifier: "95cd538ee5d2600dcad37e9d1b5170fc")
!5590 = !{!5591, !5592}
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !5589, file: !2, baseType: !5515, size: 64, align: 64)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5589, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!5593 = !DILocalVariable(name: "len", scope: !5594, file: !1550, line: 95, type: !9, align: 64)
!5594 = distinct !DILexicalBlock(scope: !5583, file: !1550, line: 95, column: 9)
!5595 = !DILocalVariable(name: "ptr", scope: !5596, file: !1550, line: 96, type: !3876, align: 64)
!5596 = distinct !DILexicalBlock(scope: !5594, file: !1550, line: 96, column: 9)
!5597 = !DILocalVariable(name: "end_or_len", scope: !5598, file: !1550, line: 99, type: !3879, align: 64)
!5598 = distinct !DILexicalBlock(scope: !5596, file: !1550, line: 99, column: 13)
!5599 = !DILocalVariable(name: "len", scope: !5600, file: !1550, line: 95, type: !9, align: 64)
!5600 = distinct !DILexicalBlock(scope: !5583, file: !1550, line: 95, column: 9)
!5601 = !DILocalVariable(name: "ptr", scope: !5602, file: !1550, line: 96, type: !3876, align: 64)
!5602 = distinct !DILexicalBlock(scope: !5600, file: !1550, line: 96, column: 9)
!5603 = !DILocalVariable(name: "end_or_len", scope: !5604, file: !1550, line: 99, type: !3879, align: 64)
!5604 = distinct !DILexicalBlock(scope: !5602, file: !1550, line: 99, column: 13)
!5605 = !DILocalVariable(name: "ptr", scope: !5606, file: !1550, line: 96, type: !3876, align: 64)
!5606 = distinct !DILexicalBlock(scope: !5582, file: !1550, line: 96, column: 9)
!5607 = !DILocalVariable(name: "end_or_len", scope: !5608, file: !1550, line: 99, type: !3879, align: 64)
!5608 = distinct !DILexicalBlock(scope: !5606, file: !1550, line: 99, column: 13)
!5609 = !DILocation(line: 0, scope: !5582, inlinedAt: !5610)
!5610 = !DILocation(line: 1040, column: 9, scope: !5611, inlinedAt: !5615)
!5611 = !DILexicalBlockFile(scope: !5612, file: !1568, discriminator: 4)
!5612 = distinct !DISubprogram(name: "iter<regex_syntax::hir::Hir>", linkageName: "_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCs3roNzt6HBWW_12regex_syntax3hir3Hir4iterBy_", scope: !1569, file: !1568, line: 1039, type: !5584, scopeLine: 1039, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, templateParams: !3798, retainedNodes: !5613)
!5613 = !{!5614}
!5614 = !DILocalVariable(name: "self", arg: 1, scope: !5612, file: !1568, line: 1039, type: !5589)
!5615 = !DILocation(line: 196, column: 47, scope: !3854)
!5616 = !DILocalVariable(name: "count", arg: 2, scope: !5617, file: !1575, line: 936, type: !9)
!5617 = distinct !DISubprogram(name: "add<regex_syntax::hir::Hir>", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core3ptr7mut_ptrONtNtCs3roNzt6HBWW_12regex_syntax3hir3Hir3addBG_", scope: !1576, file: !1575, line: 936, type: !5618, scopeLine: 936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, templateParams: !3798, retainedNodes: !5620)
!5618 = !DISubroutineType(types: !5619)
!5619 = !{!5555, !5555, !9, !1264}
!5620 = !{!5621, !5616}
!5621 = !DILocalVariable(name: "self", arg: 1, scope: !5617, file: !1575, line: 936, type: !5555)
!5622 = !DILocation(line: 0, scope: !5617, inlinedAt: !5623)
!5623 = !DILocation(line: 100, column: 78, scope: !5624, inlinedAt: !5610)
!5624 = !DILexicalBlockFile(scope: !5606, file: !1550, discriminator: 4)
!5625 = !DILocation(line: 0, scope: !5612, inlinedAt: !5615)
!5626 = !DILocation(line: 0, scope: !5583, inlinedAt: !5610)
!5627 = !DILocation(line: 0, scope: !5606, inlinedAt: !5610)
!5628 = !DILocation(line: 970, column: 18, scope: !5617, inlinedAt: !5623)
!5629 = !DILocation(line: 0, scope: !4239, inlinedAt: !4248)
!5630 = !DILocation(line: 419, column: 13, scope: !4238, inlinedAt: !4248)
!5631 = !DILocation(line: 419, column: 13, scope: !4239, inlinedAt: !4248)
!5632 = !{!5633, !5635}
!5633 = distinct !{!5633, !5634, !"_RINvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB3_9Extractor19extract_alternationINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_3HirEEB7_: argument 0"}
!5634 = distinct !{!5634, !"_RINvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB3_9Extractor19extract_alternationINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_3HirEEB7_"}
!5635 = distinct !{!5635, !5634, !"_RINvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB3_9Extractor19extract_alternationINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtB5_3HirEEB7_: argument 1"}
!5636 = !DILocation(line: 754, column: 9, scope: !5637, inlinedAt: !5641)
!5637 = distinct !DISubprogram(name: "empty", linkageName: "_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB5_3Seq5empty", scope: !431, file: !559, line: 753, type: !5638, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, templateParams: !15, declaration: !5640)
!5638 = !DISubroutineType(types: !5639)
!5639 = !{!431}
!5640 = !DISubprogram(name: "empty", linkageName: "_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB5_3Seq5empty", scope: !431, file: !559, line: 753, type: !5638, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !15)
!5641 = distinct !DILocation(line: 419, column: 23, scope: !4239, inlinedAt: !4248)
!5642 = !DILocation(line: 0, scope: !4237, inlinedAt: !4248)
!5643 = !DILocalVariable(name: "count", scope: !5644, file: !1138, line: 619, type: !9, align: 64)
!5644 = distinct !DISubprogram(name: "add<regex_syntax::hir::Hir>", linkageName: "_RNvMs1_NtNtCsj6eKBz9Db1c_4core3ptr8non_nullINtB5_7NonNullNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE3addBX_", scope: !3876, file: !1138, line: 619, type: !5645, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, templateParams: !3798, declaration: !5647, retainedNodes: !5648)
!5645 = !DISubroutineType(types: !5646)
!5646 = !{!3876, !3876, !9}
!5647 = !DISubprogram(name: "add<regex_syntax::hir::Hir>", linkageName: "_RNvMs1_NtNtCsj6eKBz9Db1c_4core3ptr8non_nullINtB5_7NonNullNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE3addBX_", scope: !3876, file: !1138, line: 619, type: !5645, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !3798)
!5648 = !{!5649, !5643}
!5649 = !DILocalVariable(name: "self", arg: 1, scope: !5644, file: !1138, line: 619, type: !3876)
!5650 = !DILocation(line: 0, scope: !5644, inlinedAt: !5651)
!5651 = distinct !DILocation(line: 185, column: 40, scope: !3887, inlinedAt: !4236)
!5652 = !DILocation(line: 0, scope: !3885, inlinedAt: !4236)
!5653 = !DILocation(line: 0, scope: !3887, inlinedAt: !4236)
!5654 = !DILocalVariable(name: "self", arg: 1, scope: !5655, file: !1138, line: 1662, type: !3912)
!5655 = distinct !DISubprogram(name: "eq<regex_syntax::hir::Hir>", linkageName: "_RNvXsd_NtNtCsj6eKBz9Db1c_4core3ptr8non_nullINtB5_7NonNullNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtB9_3cmp9PartialEq2eqBX_", scope: !1391, file: !1138, line: 1662, type: !3910, scopeLine: 1662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, templateParams: !3798, retainedNodes: !5656)
!5656 = !{!5654, !5657}
!5657 = !DILocalVariable(name: "other", arg: 2, scope: !5655, file: !1138, line: 1662, type: !3912)
!5658 = !DILocation(line: 1662, column: 11, scope: !5655, inlinedAt: !5659)
!5659 = distinct !DILocation(line: 180, column: 28, scope: !3887, inlinedAt: !4236)
!5660 = !DILocation(line: 1662, column: 18, scope: !5655, inlinedAt: !5659)
!5661 = !DILocation(line: 1663, column: 9, scope: !5655, inlinedAt: !5659)
!5662 = !DILocation(line: 180, column: 28, scope: !3887, inlinedAt: !4236)
!5663 = !DILocation(line: 627, column: 28, scope: !5644, inlinedAt: !5651)
!5664 = !DILocation(line: 0, scope: !4247, inlinedAt: !4248)
!5665 = !DILocation(line: 420, column: 20, scope: !4237, inlinedAt: !4248)
!5666 = !DILocation(line: 428, column: 19, scope: !4247, inlinedAt: !4248)
!5667 = !DILocation(line: 428, column: 30, scope: !4247, inlinedAt: !4248)
!5668 = !DILocation(line: 428, column: 40, scope: !4247, inlinedAt: !4248)
!5669 = !DILocation(line: 428, column: 45, scope: !4247, inlinedAt: !4248)
!5670 = !{!5633}
!5671 = distinct !{null}
!5672 = !DILocation(line: 428, column: 57, scope: !4247, inlinedAt: !4248)
!5673 = !DILocation(line: 428, column: 24, scope: !4247, inlinedAt: !4248)
!5674 = !DILocation(line: 428, column: 58, scope: !4247, inlinedAt: !4248)
!5675 = !DILocation(line: 428, column: 13, scope: !4247, inlinedAt: !4248)
!5676 = !DILocation(line: 0, scope: !427, inlinedAt: !5677)
!5677 = distinct !DILocation(line: 428, column: 58, scope: !4247, inlinedAt: !4248)
!5678 = !DILocation(line: 0, scope: !470, inlinedAt: !5679)
!5679 = distinct !DILocation(line: 847, column: 1, scope: !427, inlinedAt: !5677)
!5680 = !DILocation(line: 847, column: 1, scope: !470, inlinedAt: !5679)
!5681 = !{!5682, !5684}
!5682 = distinct !{!5682, !5683, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralEEEB1A_: argument 0"}
!5683 = distinct !{!5683, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralEEEB1A_"}
!5684 = distinct !{!5684, !5685, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal3SeqEBH_: argument 0"}
!5685 = distinct !{!5685, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal3SeqEBH_"}
!5686 = !DILocation(line: 0, scope: !485, inlinedAt: !5687)
!5687 = distinct !DILocation(line: 847, column: 1, scope: !470, inlinedAt: !5679)
!5688 = !DILocation(line: 847, column: 1, scope: !485, inlinedAt: !5687)
!5689 = !DILocation(line: 0, scope: !494, inlinedAt: !5690)
!5690 = distinct !DILocation(line: 847, column: 1, scope: !485, inlinedAt: !5687)
!5691 = !DILocation(line: 847, column: 1, scope: !494, inlinedAt: !5690)
!5692 = !DILocation(line: 0, scope: !494, inlinedAt: !5693)
!5693 = distinct !DILocation(line: 847, column: 1, scope: !485, inlinedAt: !5687)
!5694 = !DILocation(line: 847, column: 1, scope: !494, inlinedAt: !5693)
!5695 = !DILocation(line: 415, column: 5, scope: !4239, inlinedAt: !4248)
!5696 = !DILocation(line: 431, column: 5, scope: !4239, inlinedAt: !4248)
!5697 = !DILocation(line: 430, column: 9, scope: !4238, inlinedAt: !4248)
!5698 = !{!5635}
!5699 = !DILocation(line: 197, column: 13, scope: !3639)
!5700 = !DILocation(line: 443, column: 17, scope: !4399, inlinedAt: !4408)
!5701 = !DILocation(line: 0, scope: !4406, inlinedAt: !4408)
!5702 = !DILocation(line: 443, column: 25, scope: !4406, inlinedAt: !4408)
!5703 = !DILocation(line: 436, column: 16, scope: !4399, inlinedAt: !4408)
!5704 = !DILocation(line: 0, scope: !4404, inlinedAt: !4408)
!5705 = !DILocation(line: 763, column: 28, scope: !4410, inlinedAt: !4416)
!5706 = !DILocation(line: 764, column: 9, scope: !4410, inlinedAt: !4416)
!5707 = !DILocalVariable(name: "cond", arg: 1, scope: !5708, file: !1260, line: 202, type: !456)
!5708 = distinct !DISubprogram(name: "assert_unchecked", linkageName: "_RNvNtCsj6eKBz9Db1c_4core4hint16assert_unchecked", scope: !1261, file: !1260, line: 202, type: !1262, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, templateParams: !15, retainedNodes: !5709)
!5709 = !{!5707}
!5710 = !DILocation(line: 0, scope: !5708, inlinedAt: !5711)
!5711 = !DILocation(line: 439, column: 21, scope: !4404, inlinedAt: !4408)
!5712 = !DILocation(line: 210, column: 9, scope: !5708, inlinedAt: !5711)
!5713 = !DILocation(line: 444, column: 9, scope: !4399, inlinedAt: !4408)
!5714 = !DILocation(line: 0, scope: !4383, inlinedAt: !4385)
!5715 = !DILocation(line: 0, scope: !4424, inlinedAt: !4570)
!5716 = !DILocation(line: 452, column: 20, scope: !4383, inlinedAt: !4385)
!5717 = !DILocation(line: 2058, column: 9, scope: !4424, inlinedAt: !4570)
!5718 = !{!5719}
!5719 = distinct !{!5719, !5720, !"_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB5_3Seq9singleton: argument 0"}
!5720 = distinct !{!5720, !"_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB5_3Seq9singleton"}
!5721 = !DILocation(line: 178, column: 21, scope: !3834)
!5722 = !DILocation(line: 782, column: 22, scope: !4433, inlinedAt: !5723)
!5723 = distinct !DILocation(line: 178, column: 21, scope: !3834)
!5724 = !DILocation(line: 0, scope: !4441, inlinedAt: !5725)
!5725 = distinct !DILocation(line: 322, column: 33, scope: !4454, inlinedAt: !5726)
!5726 = distinct !DILocation(line: 783, column: 30, scope: !4433, inlinedAt: !5723)
!5727 = !DILocation(line: 0, scope: !4479, inlinedAt: !5728)
!5728 = distinct !DILocation(line: 251, column: 18, scope: !4441, inlinedAt: !5725)
!5729 = !DILocation(line: 0, scope: !4508, inlinedAt: !5730)
!5730 = distinct !DILocation(line: 541, column: 14, scope: !4479, inlinedAt: !5728)
!5731 = !DILocation(line: 0, scope: !4518, inlinedAt: !5732)
!5732 = distinct !DILocation(line: 424, column: 9, scope: !4508, inlinedAt: !5730)
!5733 = !DILocation(line: 0, scope: !4550, inlinedAt: !5734)
!5734 = distinct !DILocation(line: 302, column: 73, scope: !4525, inlinedAt: !5732)
!5735 = !DILocation(line: 0, scope: !4525, inlinedAt: !5732)
!5736 = !DILocation(line: 128, column: 9, scope: !4550, inlinedAt: !5734)
!5737 = !{!5719, !5738}
!5738 = distinct !{!5738, !5720, !"_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB5_3Seq9singleton: argument 1"}
!5739 = !DILocation(line: 130, column: 9, scope: !4550, inlinedAt: !5734)
!5740 = !DILocation(line: 251, column: 11, scope: !4441, inlinedAt: !5725)
!5741 = !DILocation(line: 251, column: 5, scope: !4441, inlinedAt: !5725)
!5742 = !DILocation(line: 253, column: 19, scope: !4441, inlinedAt: !5725)
!5743 = !DILocation(line: 784, column: 5, scope: !4433, inlinedAt: !5723)
!5744 = !DILocation(line: 782, column: 5, scope: !4433, inlinedAt: !5723)
!5745 = !DILocation(line: 783, column: 35, scope: !4433, inlinedAt: !5723)
!5746 = !DILocation(line: 783, column: 9, scope: !4433, inlinedAt: !5723)
!5747 = !{!5738}
!5748 = !DILocation(line: 178, column: 72, scope: !3834)
!5749 = !DILocation(line: 179, column: 22, scope: !3837)
!5750 = !DILocation(line: 0, scope: !2687, inlinedAt: !5751)
!5751 = distinct !DILocation(line: 179, column: 22, scope: !3837)
!5752 = !DILocation(line: 0, scope: !2695, inlinedAt: !5751)
!5753 = !DILocation(line: 622, column: 15, scope: !2695, inlinedAt: !5751)
!5754 = !{!5755}
!5755 = distinct !{!5755, !5756, !"_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor19enforce_literal_len: argument 0"}
!5756 = distinct !{!5756, !"_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor19enforce_literal_len"}
!5757 = !DILocation(line: 622, column: 9, scope: !2695, inlinedAt: !5751)
!5758 = !DILocation(line: 0, scope: !2930, inlinedAt: !5759)
!5759 = distinct !DILocation(line: 623, column: 40, scope: !2695, inlinedAt: !5751)
!5760 = !DILocation(line: 0, scope: !2940, inlinedAt: !5759)
!5761 = !DILocation(line: 0, scope: !2944, inlinedAt: !5762)
!5762 = distinct !DILocation(line: 1492, column: 19, scope: !2940, inlinedAt: !5759)
!5763 = !DILocation(line: 0, scope: !3022, inlinedAt: !5764)
!5764 = distinct !DILocation(line: 2130, column: 24, scope: !2944, inlinedAt: !5762)
!5765 = !DILocation(line: 0, scope: !3027, inlinedAt: !5766)
!5766 = distinct !DILocation(line: 2084, column: 14, scope: !3022, inlinedAt: !5764)
!5767 = !DILocation(line: 0, scope: !3032, inlinedAt: !5768)
!5768 = distinct !DILocation(line: 2133, column: 14, scope: !2944, inlinedAt: !5762)
!5769 = !DILocation(line: 3854, column: 14, scope: !3037, inlinedAt: !5770)
!5770 = distinct !DILocation(line: 2070, column: 9, scope: !3027, inlinedAt: !5766)
!5771 = !DILocation(line: 1848, column: 27, scope: !3042, inlinedAt: !5772)
!5772 = distinct !DILocation(line: 3855, column: 14, scope: !3037, inlinedAt: !5770)
!5773 = !DILocation(line: 2130, column: 12, scope: !2944, inlinedAt: !5762)
!5774 = !DILocation(line: 0, scope: !2743, inlinedAt: !5775)
!5775 = distinct !DILocation(line: 624, column: 40, scope: !2695, inlinedAt: !5751)
!5776 = !DILocation(line: 0, scope: !2755, inlinedAt: !5775)
!5777 = !DILocation(line: 0, scope: !2759, inlinedAt: !5778)
!5778 = distinct !DILocation(line: 1520, column: 19, scope: !2755, inlinedAt: !5775)
!5779 = !DILocation(line: 0, scope: !2850, inlinedAt: !5780)
!5780 = distinct !DILocation(line: 2142, column: 24, scope: !2759, inlinedAt: !5778)
!5781 = !DILocation(line: 0, scope: !2855, inlinedAt: !5782)
!5782 = distinct !DILocation(line: 2084, column: 14, scope: !2850, inlinedAt: !5780)
!5783 = !DILocation(line: 0, scope: !2860, inlinedAt: !5784)
!5784 = distinct !DILocation(line: 2145, column: 14, scope: !2759, inlinedAt: !5778)
!5785 = !DILocation(line: 0, scope: !2850, inlinedAt: !5786)
!5786 = distinct !DILocation(line: 2146, column: 33, scope: !2759, inlinedAt: !5778)
!5787 = !DILocation(line: 0, scope: !2855, inlinedAt: !5788)
!5788 = distinct !DILocation(line: 2084, column: 14, scope: !2868, inlinedAt: !5786)
!5789 = !DILocation(line: 3854, column: 14, scope: !2870, inlinedAt: !5790)
!5790 = distinct !DILocation(line: 2070, column: 9, scope: !2855, inlinedAt: !5782)
!5791 = !DILocation(line: 1848, column: 27, scope: !2875, inlinedAt: !5792)
!5792 = distinct !DILocation(line: 3855, column: 14, scope: !2870, inlinedAt: !5790)
!5793 = !DILocation(line: 2142, column: 12, scope: !2759, inlinedAt: !5778)
!5794 = !DILocation(line: 2105, column: 9, scope: !2860, inlinedAt: !5784)
!5795 = !{!5796, !5755}
!5796 = distinct !{!5796, !5797, !"_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB5_3Seq15keep_last_bytes: argument 0"}
!5797 = distinct !{!5797, !"_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB5_3Seq15keep_last_bytes"}
!5798 = !DILocation(line: 2146, column: 9, scope: !2759, inlinedAt: !5778)
!5799 = !DILocation(line: 3854, column: 14, scope: !2870, inlinedAt: !5800)
!5800 = distinct !DILocation(line: 2070, column: 9, scope: !2885, inlinedAt: !5788)
!5801 = !DILocation(line: 1848, column: 27, scope: !2875, inlinedAt: !5802)
!5802 = distinct !DILocation(line: 3855, column: 14, scope: !2888, inlinedAt: !5800)
!5803 = !DILocation(line: 2146, column: 28, scope: !2759, inlinedAt: !5778)
!5804 = !DILocation(line: 2146, column: 20, scope: !2759, inlinedAt: !5778)
!5805 = !DILocation(line: 0, scope: !2892, inlinedAt: !5806)
!5806 = distinct !DILocation(line: 2146, column: 45, scope: !2759, inlinedAt: !5778)
!5807 = !DILocation(line: 847, column: 1, scope: !2892, inlinedAt: !5806)
!5808 = !DILocation(line: 2146, column: 45, scope: !2759, inlinedAt: !5778)
!5809 = !DILocation(line: 2147, column: 6, scope: !2759, inlinedAt: !5778)
!5810 = !DILocation(line: 2105, column: 9, scope: !3032, inlinedAt: !5768)
!5811 = !{!5812, !5755}
!5812 = distinct !{!5812, !5813, !"_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB5_3Seq16keep_first_bytes: argument 0"}
!5813 = distinct !{!5813, !"_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB5_3Seq16keep_first_bytes"}
!5814 = !DILocation(line: 2134, column: 20, scope: !2944, inlinedAt: !5762)
!5815 = !DILocation(line: 573, column: 14, scope: !4591, inlinedAt: !4596)
!5816 = !DILocation(line: 452, column: 17, scope: !4383, inlinedAt: !4385)
!5817 = !DILocation(line: 181, column: 13, scope: !3834)
!5818 = !DILocation(line: 180, column: 17, scope: !3837)
!5819 = !DILocation(line: 181, column: 13, scope: !3639)
!5820 = !DILocation(line: 199, column: 6, scope: !3639)
!5821 = !DILocation(line: 171, column: 5, scope: !3639)
!5822 = !DILocation(line: 0, scope: !3842)
!5823 = !{!5824}
!5824 = distinct !{!5824, !5825, !"_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor19extract_class_bytes: argument 0"}
!5825 = distinct !{!5825, !"_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor19extract_class_bytes"}
!5826 = !DILocation(line: 185, column: 55, scope: !3842)
!5827 = !{!5828}
!5828 = distinct !{!5828, !5825, !"_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor19extract_class_bytes: argument 1"}
!5829 = !DILocation(line: 0, scope: !4157, inlinedAt: !4190)
!5830 = !DILocation(line: 520, column: 13, scope: !4156, inlinedAt: !4190)
!5831 = !DILocalVariable(name: "count", scope: !5832, file: !1138, line: 619, type: !9, align: 64)
!5832 = distinct !DISubprogram(name: "add<regex_syntax::hir::ClassBytesRange>", linkageName: "_RNvMs1_NtNtCsj6eKBz9Db1c_4core3ptr8non_nullINtB5_7NonNullNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE3addBX_", scope: !4176, file: !1138, line: 619, type: !5833, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, templateParams: !3720, declaration: !5835, retainedNodes: !5836)
!5833 = !DISubroutineType(types: !5834)
!5834 = !{!4176, !4176, !9}
!5835 = !DISubprogram(name: "add<regex_syntax::hir::ClassBytesRange>", linkageName: "_RNvMs1_NtNtCsj6eKBz9Db1c_4core3ptr8non_nullINtB5_7NonNullNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE3addBX_", scope: !4176, file: !1138, line: 619, type: !5833, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !3720)
!5836 = !{!5837, !5831}
!5837 = !DILocalVariable(name: "self", arg: 1, scope: !5832, file: !1138, line: 619, type: !4176)
!5838 = !DILocation(line: 0, scope: !5832, inlinedAt: !5839)
!5839 = distinct !DILocation(line: 185, column: 40, scope: !4212, inlinedAt: !4216)
!5840 = !DILocation(line: 517, column: 17, scope: !4157, inlinedAt: !4190)
!5841 = !DILocalVariable(name: "self", arg: 1, scope: !5842, file: !698, line: 157, type: !4207)
!5842 = distinct !DISubprogram(name: "next<regex_syntax::hir::ClassBytesRange>", linkageName: "_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_", scope: !699, file: !698, line: 157, type: !4194, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, templateParams: !3720, retainedNodes: !5843)
!5843 = !{!5841, !5844, !5846, !5848}
!5844 = !DILocalVariable(name: "ptr", scope: !5845, file: !698, line: 161, type: !4176, align: 64)
!5845 = distinct !DILexicalBlock(scope: !5842, file: !698, line: 161, column: 17)
!5846 = !DILocalVariable(name: "end_or_len", scope: !5847, file: !698, line: 162, type: !4179, align: 64)
!5847 = distinct !DILexicalBlock(scope: !5845, file: !698, line: 162, column: 17)
!5848 = !DILocalVariable(name: "len", scope: !5849, file: !698, line: 167, type: !9, align: 64)
!5849 = distinct !DILexicalBlock(scope: !5847, file: !698, line: 167, column: 25)
!5850 = !DILocation(line: 157, column: 21, scope: !5842, inlinedAt: !5851)
!5851 = distinct !DILocation(line: 419, column: 16, scope: !5852, inlinedAt: !5855)
!5852 = distinct !DISubprogram(name: "next<regex_syntax::hir::ClassBytesRange>", linkageName: "_RNvXs1_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_15IntervalSetIterNtB7_15ClassBytesRangeENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB9_", scope: !4095, file: !4094, line: 418, type: !4218, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, templateParams: !3729, retainedNodes: !5853)
!5853 = !{!5854}
!5854 = !DILocalVariable(name: "self", arg: 1, scope: !5852, file: !4094, line: 418, type: !4220)
!5855 = distinct !DILocation(line: 1510, column: 16, scope: !5856, inlinedAt: !5859)
!5856 = distinct !DISubprogram(name: "next", linkageName: "_RNvXsg_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_14ClassBytesIterNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next", scope: !4225, file: !4103, line: 1509, type: !4226, scopeLine: 1509, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, templateParams: !15, retainedNodes: !5857)
!5857 = !{!5858}
!5858 = !DILocalVariable(name: "self", arg: 1, scope: !5856, file: !4103, line: 1509, type: !4228)
!5859 = distinct !DILocation(line: 547, column: 18, scope: !5860, inlinedAt: !5875)
!5860 = !DILexicalBlockFile(scope: !5861, file: !559, discriminator: 2)
!5861 = distinct !DILexicalBlock(scope: !5862, file: !559, line: 547, column: 9)
!5862 = distinct !DILexicalBlock(scope: !5863, file: !559, line: 546, column: 9)
!5863 = distinct !DISubprogram(name: "class_over_limit_bytes", linkageName: "_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes", scope: !560, file: !559, line: 545, type: !5864, scopeLine: 545, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, templateParams: !15, declaration: !5866, retainedNodes: !5868)
!5864 = !DISubroutineType(cc: DW_CC_nocall, types: !5865)
!5865 = !{!456, !569, !3843}
!5866 = !DISubprogram(name: "class_over_limit_bytes", linkageName: "_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor22class_over_limit_bytes", scope: !560, file: !559, line: 545, type: !5867, scopeLine: 545, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !15)
!5867 = !DISubroutineType(types: !5865)
!5868 = !{!5869, !5870, !5871, !5872, !5873}
!5869 = !DILocalVariable(name: "self", arg: 1, scope: !5863, file: !559, line: 545, type: !569)
!5870 = !DILocalVariable(name: "cls", arg: 2, scope: !5863, file: !559, line: 545, type: !3843)
!5871 = !DILocalVariable(name: "count", scope: !5862, file: !559, line: 546, type: !9, align: 64)
!5872 = !DILocalVariable(name: "iter", scope: !5861, file: !559, line: 547, type: !4167, align: 64)
!5873 = !DILocalVariable(name: "r", scope: !5874, file: !559, line: 547, type: !4185, align: 64)
!5874 = distinct !DILexicalBlock(scope: !5861, file: !559, line: 547, column: 9)
!5875 = distinct !DILocation(line: 517, column: 17, scope: !4157, inlinedAt: !4190)
!5876 = !DILocation(line: 418, column: 13, scope: !5852, inlinedAt: !5855)
!5877 = !DILocation(line: 1509, column: 13, scope: !5856, inlinedAt: !5859)
!5878 = !DILocation(line: 0, scope: !5863, inlinedAt: !5875)
!5879 = !DILocalVariable(name: "self", arg: 1, scope: !5880, file: !4103, line: 1383, type: !3843)
!5880 = distinct !DISubprogram(name: "iter", linkageName: "_RNvMsf_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_10ClassBytes4iter", scope: !3706, file: !4103, line: 1383, type: !5881, scopeLine: 1383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, templateParams: !15, declaration: !5883, retainedNodes: !5884)
!5881 = !DISubroutineType(types: !5882)
!5882 = !{!4167, !3843}
!5883 = !DISubprogram(name: "iter", linkageName: "_RNvMsf_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_10ClassBytes4iter", scope: !3706, file: !4103, line: 1383, type: !5881, scopeLine: 1383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !15)
!5884 = !{!5879}
!5885 = !DILocation(line: 0, scope: !5880, inlinedAt: !5886)
!5886 = distinct !DILocation(line: 547, column: 22, scope: !5862, inlinedAt: !5875)
!5887 = !DILocalVariable(name: "count", scope: !5888, file: !1138, line: 619, type: !9, align: 64)
!5888 = distinct !DISubprogram(name: "add<regex_syntax::hir::ClassBytesRange>", linkageName: "_RNvMs1_NtNtCsj6eKBz9Db1c_4core3ptr8non_nullINtB5_7NonNullNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE3addBX_", scope: !4176, file: !1138, line: 619, type: !5833, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, templateParams: !3720, declaration: !5835, retainedNodes: !5889)
!5889 = !{!5890, !5887}
!5890 = !DILocalVariable(name: "self", arg: 1, scope: !5888, file: !1138, line: 619, type: !4176)
!5891 = !DILocation(line: 0, scope: !5888, inlinedAt: !5892)
!5892 = distinct !DILocation(line: 185, column: 40, scope: !5847, inlinedAt: !5851)
!5893 = !DILocation(line: 0, scope: !5862, inlinedAt: !5875)
!5894 = !DILocalVariable(name: "self", arg: 1, scope: !5895, file: !4094, line: 124, type: !5898)
!5895 = distinct !DISubprogram(name: "iter<regex_syntax::hir::ClassBytesRange>", linkageName: "_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_15ClassBytesRangeE4iterB9_", scope: !3709, file: !4094, line: 124, type: !5896, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, templateParams: !3729, declaration: !5899, retainedNodes: !5900)
!5896 = !DISubroutineType(types: !5897)
!5897 = !{!4170, !5898}
!5898 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&regex_syntax::hir::interval::IntervalSet<regex_syntax::hir::ClassBytesRange>", baseType: !3709, size: 64, align: 64, dwarfAddressSpace: 0)
!5899 = !DISubprogram(name: "iter<regex_syntax::hir::ClassBytesRange>", linkageName: "_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_15ClassBytesRangeE4iterB9_", scope: !3709, file: !4094, line: 124, type: !5896, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !3729)
!5900 = !{!5894}
!5901 = !DILocation(line: 124, column: 17, scope: !5895, inlinedAt: !5902)
!5902 = distinct !DILocation(line: 1384, column: 33, scope: !5880, inlinedAt: !5886)
!5903 = !DILocalVariable(name: "len", scope: !5904, file: !1550, line: 95, type: !9, align: 64)
!5904 = distinct !DILexicalBlock(scope: !5905, file: !1550, line: 95, column: 9)
!5905 = distinct !DISubprogram(name: "new<regex_syntax::hir::ClassBytesRange>", linkageName: "_RNvMs4_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB5_4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE3newBS_", scope: !4173, file: !1550, line: 94, type: !5906, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, templateParams: !3720, declaration: !5913, retainedNodes: !5914)
!5906 = !DISubroutineType(types: !5907)
!5907 = !{!4173, !5908}
!5908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&[regex_syntax::hir::ClassBytesRange]", file: !2, size: 128, align: 64, elements: !5909, templateParams: !15, identifier: "abd2e248cf10c496e1f895a98a4dbb30")
!5909 = !{!5910, !5912}
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !5908, file: !2, baseType: !5911, size: 64, align: 64)
!5911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64, align: 64, dwarfAddressSpace: 0)
!5912 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5908, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!5913 = !DISubprogram(name: "new<regex_syntax::hir::ClassBytesRange>", linkageName: "_RNvMs4_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB5_4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE3newBS_", scope: !4173, file: !1550, line: 94, type: !5906, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !3720)
!5914 = !{!5915, !5903, !5920, !5922}
!5915 = !DILocalVariable(name: "slice", arg: 1, scope: !5905, file: !1550, line: 94, type: !5916)
!5916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "*const [regex_syntax::hir::ClassBytesRange]", file: !2, size: 128, align: 64, elements: !5917, templateParams: !15, identifier: "9d1674abff48154bfeb4c514d8c820d")
!5917 = !{!5918, !5919}
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !5916, file: !2, baseType: !5911, size: 64, align: 64)
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5916, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!5920 = !DILocalVariable(name: "ptr", scope: !5921, file: !1550, line: 96, type: !4176, align: 64)
!5921 = distinct !DILexicalBlock(scope: !5904, file: !1550, line: 96, column: 9)
!5922 = !DILocalVariable(name: "end_or_len", scope: !5923, file: !1550, line: 99, type: !4179, align: 64)
!5923 = distinct !DILexicalBlock(scope: !5921, file: !1550, line: 99, column: 13)
!5924 = !DILocation(line: 0, scope: !5904, inlinedAt: !5925)
!5925 = distinct !DILocation(line: 1040, column: 9, scope: !5926, inlinedAt: !5929)
!5926 = distinct !DISubprogram(name: "iter<regex_syntax::hir::ClassBytesRange>", linkageName: "_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRange4iterBy_", scope: !1569, file: !1568, line: 1039, type: !5906, scopeLine: 1039, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, templateParams: !3720, retainedNodes: !5927)
!5927 = !{!5928}
!5928 = !DILocalVariable(name: "self", arg: 1, scope: !5926, file: !1568, line: 1039, type: !5916)
!5929 = distinct !DILocation(line: 125, column: 37, scope: !5895, inlinedAt: !5902)
!5930 = !DILocalVariable(name: "count", arg: 2, scope: !5931, file: !1575, line: 936, type: !9)
!5931 = distinct !DISubprogram(name: "add<regex_syntax::hir::ClassBytesRange>", linkageName: "_RNvMNtNtCsj6eKBz9Db1c_4core3ptr7mut_ptrONtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRange3addBG_", scope: !1576, file: !1575, line: 936, type: !5932, scopeLine: 936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, templateParams: !3720, retainedNodes: !5935)
!5932 = !DISubroutineType(types: !5933)
!5933 = !{!5934, !5934, !9, !1264}
!5934 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut regex_syntax::hir::ClassBytesRange", baseType: !3722, size: 64, align: 64, dwarfAddressSpace: 0)
!5935 = !{!5936, !5930}
!5936 = !DILocalVariable(name: "self", arg: 1, scope: !5931, file: !1575, line: 936, type: !5934)
!5937 = !DILocation(line: 0, scope: !5931, inlinedAt: !5938)
!5938 = distinct !DILocation(line: 100, column: 78, scope: !5921, inlinedAt: !5925)
!5939 = !DILocation(line: 0, scope: !5926, inlinedAt: !5929)
!5940 = !DILocation(line: 0, scope: !5905, inlinedAt: !5925)
!5941 = !DILocation(line: 0, scope: !5921, inlinedAt: !5925)
!5942 = !DILocation(line: 970, column: 18, scope: !5931, inlinedAt: !5938)
!5943 = !DILocation(line: 0, scope: !5861, inlinedAt: !5875)
!5944 = !DILocation(line: 0, scope: !5845, inlinedAt: !5851)
!5945 = !DILocation(line: 0, scope: !5847, inlinedAt: !5851)
!5946 = !DILocalVariable(name: "self", arg: 1, scope: !5947, file: !1138, line: 1662, type: !5950)
!5947 = distinct !DISubprogram(name: "eq<regex_syntax::hir::ClassBytesRange>", linkageName: "_RNvXsd_NtNtCsj6eKBz9Db1c_4core3ptr8non_nullINtB5_7NonNullNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtB9_3cmp9PartialEq2eqBX_", scope: !1391, file: !1138, line: 1662, type: !5948, scopeLine: 1662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, templateParams: !3720, retainedNodes: !5951)
!5948 = !DISubroutineType(types: !5949)
!5949 = !{!456, !5950, !5950}
!5950 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::ptr::non_null::NonNull<regex_syntax::hir::ClassBytesRange>", baseType: !4176, size: 64, align: 64, dwarfAddressSpace: 0)
!5951 = !{!5946, !5952}
!5952 = !DILocalVariable(name: "other", arg: 2, scope: !5947, file: !1138, line: 1662, type: !5950)
!5953 = !DILocation(line: 1662, column: 11, scope: !5947, inlinedAt: !5954)
!5954 = distinct !DILocation(line: 180, column: 28, scope: !5847, inlinedAt: !5851)
!5955 = !DILocation(line: 1662, column: 18, scope: !5947, inlinedAt: !5954)
!5956 = !DILocation(line: 180, column: 28, scope: !5847, inlinedAt: !5851)
!5957 = !DILocation(line: 520, column: 13, scope: !4157, inlinedAt: !4190)
!5958 = !{!5824, !5828}
!5959 = !DILocation(line: 754, column: 9, scope: !5960, inlinedAt: !5961)
!5960 = distinct !DISubprogram(name: "empty", linkageName: "_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB5_3Seq5empty", scope: !431, file: !559, line: 753, type: !5638, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, templateParams: !15, declaration: !5640)
!5961 = distinct !DILocation(line: 520, column: 23, scope: !4157, inlinedAt: !4190)
!5962 = !DILocation(line: 0, scope: !4155, inlinedAt: !4190)
!5963 = !DILocation(line: 0, scope: !4210, inlinedAt: !4216)
!5964 = !DILocation(line: 0, scope: !4212, inlinedAt: !4216)
!5965 = !DILocalVariable(name: "self", arg: 1, scope: !5966, file: !1138, line: 1662, type: !5950)
!5966 = distinct !DISubprogram(name: "eq<regex_syntax::hir::ClassBytesRange>", linkageName: "_RNvXsd_NtNtCsj6eKBz9Db1c_4core3ptr8non_nullINtB5_7NonNullNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtB9_3cmp9PartialEq2eqBX_", scope: !1391, file: !1138, line: 1662, type: !5948, scopeLine: 1662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, templateParams: !3720, retainedNodes: !5967)
!5967 = !{!5965, !5968}
!5968 = !DILocalVariable(name: "other", arg: 2, scope: !5966, file: !1138, line: 1662, type: !5950)
!5969 = !DILocation(line: 1662, column: 11, scope: !5966, inlinedAt: !5970)
!5970 = distinct !DILocation(line: 180, column: 28, scope: !4212, inlinedAt: !4216)
!5971 = !DILocation(line: 1662, column: 18, scope: !5966, inlinedAt: !5970)
!5972 = !DILocation(line: 180, column: 28, scope: !4212, inlinedAt: !4216)
!5973 = !DILocation(line: 0, scope: !5874, inlinedAt: !5875)
!5974 = !DILocation(line: 548, column: 16, scope: !5874, inlinedAt: !5875)
!5975 = !DILocation(line: 627, column: 28, scope: !5888, inlinedAt: !5892)
!5976 = !DILocation(line: 551, column: 24, scope: !5874, inlinedAt: !5875)
!5977 = !DILocation(line: 551, column: 13, scope: !5874, inlinedAt: !5875)
!5978 = !DILocation(line: 1663, column: 9, scope: !5947, inlinedAt: !5954)
!5979 = !DILocation(line: 553, column: 9, scope: !5862, inlinedAt: !5875)
!5980 = !DILocation(line: 517, column: 12, scope: !4157, inlinedAt: !4190)
!5981 = !DILocation(line: 777, column: 9, scope: !5982, inlinedAt: !5984)
!5982 = distinct !DISubprogram(name: "infinite", linkageName: "_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB5_3Seq8infinite", scope: !431, file: !559, line: 776, type: !5638, scopeLine: 776, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, templateParams: !15, declaration: !5983)
!5983 = !DISubprogram(name: "infinite", linkageName: "_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB5_3Seq8infinite", scope: !431, file: !559, line: 776, type: !5638, scopeLine: 776, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !15)
!5984 = distinct !DILocation(line: 518, column: 20, scope: !4157, inlinedAt: !4190)
!5985 = !DILocation(line: 528, column: 6, scope: !4157, inlinedAt: !4190)
!5986 = !DILocation(line: 1663, column: 9, scope: !5966, inlinedAt: !5970)
!5987 = !DILocation(line: 627, column: 28, scope: !5832, inlinedAt: !5839)
!5988 = !DILocation(line: 0, scope: !4154, inlinedAt: !4190)
!5989 = !DILocalVariable(name: "self", arg: 1, scope: !5990, file: !4103, line: 1580, type: !4185)
!5990 = distinct !DISubprogram(name: "start", linkageName: "_RNvMsi_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_15ClassBytesRange5start", scope: !3722, file: !4103, line: 1580, type: !5991, scopeLine: 1580, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, templateParams: !15, declaration: !5993, retainedNodes: !5994)
!5991 = !DISubroutineType(types: !5992)
!5992 = !{!33, !4185}
!5993 = !DISubprogram(name: "start", linkageName: "_RNvMsi_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_15ClassBytesRange5start", scope: !3722, file: !4103, line: 1580, type: !5991, scopeLine: 1580, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !15)
!5994 = !{!5989}
!5995 = !DILocation(line: 0, scope: !5990, inlinedAt: !5996)
!5996 = distinct !DILocation(line: 522, column: 24, scope: !4154, inlinedAt: !4190)
!5997 = !DILocalVariable(name: "self", arg: 1, scope: !5998, file: !4103, line: 1588, type: !4185)
!5998 = distinct !DISubprogram(name: "end", linkageName: "_RNvMsi_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_15ClassBytesRange3end", scope: !3722, file: !4103, line: 1588, type: !5991, scopeLine: 1588, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !96, templateParams: !15, declaration: !5999, retainedNodes: !6000)
!5999 = !DISubprogram(name: "end", linkageName: "_RNvMsi_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_15ClassBytesRange3end", scope: !3722, file: !4103, line: 1588, type: !5991, scopeLine: 1588, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !15)
!6000 = !{!5997}
!6001 = !DILocation(line: 0, scope: !5998, inlinedAt: !6002)
!6002 = distinct !DILocation(line: 522, column: 36, scope: !4154, inlinedAt: !4190)
!6003 = !DILocation(line: 1581, column: 9, scope: !5990, inlinedAt: !5996)
!6004 = !DILocation(line: 1589, column: 9, scope: !5998, inlinedAt: !6002)
!6005 = !DILocation(line: 0, scope: !4153, inlinedAt: !4190)
!6006 = !DILocation(line: 575, column: 9, scope: !4115, inlinedAt: !4130)
!6007 = !DILocation(line: 526, column: 14, scope: !4156, inlinedAt: !4190)
!6008 = !{!6009}
!6009 = distinct !{!6009, !6010, !"_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor19enforce_literal_len: argument 0"}
!6010 = distinct !{!6010, !"_RNvMNtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2_9Extractor19enforce_literal_len"}
!6011 = !DILocation(line: 0, scope: !2687, inlinedAt: !6012)
!6012 = distinct !DILocation(line: 526, column: 14, scope: !4156, inlinedAt: !4190)
!6013 = !DILocation(line: 0, scope: !2695, inlinedAt: !6012)
!6014 = !DILocation(line: 622, column: 15, scope: !2695, inlinedAt: !6012)
end_hunk_1

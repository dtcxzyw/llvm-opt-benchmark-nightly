Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.09?download=true
inline.NumInlined: 672
inline.NumDeleted: 189
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMs1_NtCshovLROGBtMy_11quinn_proto6packetNtB5_6Header6encode:bb.a
  tail call void @_RNvXs5_NtCshovLROGBtMy_11quinn_proto6codingINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_9BufMutExt9write_varB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.r), !dbg !13475
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !13476
  %i.t = load ptr, ptr %i.s, align 8, !dbg !13476, !nonnull !1053, !noundef !1053
  %i.u = load i64, ptr %i.q, align 8, !dbg !13477, !noundef !1053 ; 4 uses
    #dbg_value(ptr %i.t, !13261, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13264)
    #dbg_value(ptr %i.t, !13267, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13270)
    #dbg_value(i64 %i.u, !13261, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13264)
    #dbg_value(i64 %i.u, !13267, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13270)
    #dbg_value(ptr %i.t, !13283, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13288)
    #dbg_value(!DIArgList(ptr %i.t, i64 %i.u), !13283, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13288)
    #dbg_value(ptr %i.t, !13284, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13348)
    #dbg_value(i64 %i.u, !13284, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13348)
    #dbg_value(ptr %2, !13349, !DIExpression(), !13062)
    #dbg_value(ptr %2, !13355, !DIExpression(), !13067)
    #dbg_value(ptr %2, !13361, !DIExpression(), !13070)
    #dbg_value(ptr %2, !13363, !DIExpression(), !13073)
    #dbg_value(ptr %i.t, !13353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13062)
    #dbg_value(ptr %i.t, !13357, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13067)
    #dbg_value(i64 %i.u, !13353, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13062)
    #dbg_value(i64 %i.u, !13357, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13067)
    #dbg_value(i64 %i.u, !13358, !DIExpression(), !13074)
    #dbg_value(i64 %i.u, !13368, !DIExpression(), !13077)
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.u), !dbg !13478
  %i.v = load i64, ptr %i.d, align 8, !dbg !13479, !alias.scope !13372, !noundef !1053 ; 3 uses
    #dbg_value(i64 %i.v, !13359, !DIExpression(), !13080)
    #dbg_value(i64 %i.v, !13373, !DIExpression(), !13083)
  %i.w = icmp sgt i64 %i.v, -1, !dbg !13480
  tail call void @llvm.assume(i1 %i.w), !dbg !13481
  %.not.i = icmp eq i64 %i.u, 0, !dbg !13482
  br i1 %.not.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCshovLROGBtMy_11quinn_proto.exit, label %bb.d, !dbg !13482

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %i.t, !13369, !DIExpression(), !13077)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !13483
  %i.y = load ptr, ptr %i.x, align 8, !dbg !13483, !alias.scope !13372, !nonnull !1053, !noundef !1053
    #dbg_value(ptr %i.y, !13374, !DIExpression(), !13083)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v, !dbg !13484
    #dbg_value(ptr %i.z, !13370, !DIExpression(), !13077)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %i.t, i64 %i.u, i1 false), !dbg !13485
  %.pre.i = load i64, ptr %i.d, align 8, !dbg !13486, !alias.scope !13372
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCshovLROGBtMy_11quinn_proto.exit, !dbg !13487

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCshovLROGBtMy_11quinn_proto.exit: ; preds = %bb.c, %bb.d
  %i.aa = phi i64 [ %.pre.i, %bb.d ], [ %i.v, %bb.c ], !dbg !13486
  %i.ab = add i64 %i.aa, %i.u, !dbg !13486
  store i64 %i.ab, ptr %i.d, align 8, !dbg !13486, !alias.scope !13372
  tail call void @_RINvXs5_NtCshovLROGBtMy_11quinn_proto6codingINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_9BufMutExt5writetEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i16 noundef 0), !dbg !13488
  %.sroa.4.0.insert.ext = zext i56 %.sroa.5.sroa.0.0.copyload to i64, !dbg !13489 ; 2 uses
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.4.0.insert.ext, 24 ; 2 uses
    #dbg_value(!DIArgList(i64 %.sroa.4.0.insert.ext, i8 undef), !13377, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !13096)
    #dbg_value(!DIArgList(i64 %.sroa.4.0.insert.ext, i8 undef), !13377, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !13096)
    #dbg_value(!DIArgList(i64 %.sroa.4.0.insert.ext, i8 undef), !13377, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 16), !13096)
    #dbg_value(i64 %.sroa.6.0.extract.shift.i, !13377, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !13096)
    #dbg_value(ptr %2, !13383, !DIExpression(), !13096)
  switch i8 %i.g, label %bb.e [
    i8 0, label %_RINvMs4_NtCshovLROGBtMy_11quinn_proto6packetNtB6_12PacketNumber6encodeINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB8_.exit.thread
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
  ], !dbg !13490

bb.e:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCshovLROGBtMy_11quinn_proto.exit
  unreachable, !dbg !13491

_RINvMs4_NtCshovLROGBtMy_11quinn_proto6packetNtB6_12PacketNumber6encodeINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB8_.exit.thread: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCshovLROGBtMy_11quinn_proto.exit
    #dbg_value(i64 %.sroa.4.0.insert.ext, !13377, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !13096)
  %.sroa.43.0.extract.trunc.i = trunc i56 %.sroa.5.sroa.0.0.copyload to i8
    #dbg_value(i8 %.sroa.43.0.extract.trunc.i, !13377, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13096)
    #dbg_value(i8 %.sroa.43.0.extract.trunc.i, !13384, !DIExpression(), !13097)
  tail call void @_RINvXs5_NtCshovLROGBtMy_11quinn_proto6codingINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_9BufMutExt5writehEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %.sroa.43.0.extract.trunc.i), !dbg !13492
  br label %bb.p, !dbg !13493

bb.f:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 58, !dbg !13494
  %i.ad = load i8, ptr %i.ac, align 2, !dbg !13494, !range !1633, !noundef !1053
  %i.ae = trunc nuw i8 %i.ad to i1, !dbg !13494
    #dbg_value(i1 %i.ae, !13236, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13393)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !13495
    #dbg_value(ptr %i.af, !13237, !DIExpression(), !13393)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 37, !dbg !13496
    #dbg_value(ptr %i.ag, !13238, !DIExpression(), !13393)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !13497
  %.sroa.04.0.copyload = load i8, ptr %i.ah, align 4, !dbg !13497 ; 2 uses
    #dbg_value(i8 %.sroa.04.0.copyload, !13239, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13393)
    #dbg_value(i8 %.sroa.04.0.copyload, !13334, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13395)
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 5, !dbg !13497
  %.sroa.56.sroa.0.0.copyload = load i56, ptr %.sroa.56.0..sroa_idx, align 1, !dbg !13497 ; 2 uses
    #dbg_value(i56 %.sroa.56.sroa.0.0.copyload, !13334, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !13395)
    #dbg_value(i56 %.sroa.56.sroa.0.0.copyload, !13239, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !13393)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12, !dbg !13498
  %i.aj = load i32, ptr %i.ai, align 4, !dbg !13498, !noundef !1053
    #dbg_value(i32 %i.aj, !13240, !DIExpression(), !13393)
    #dbg_value(i8 %i.ad, !13341, !DIExpression(), !13397)
  %. = select i1 %i.ae, i8 -48, i8 -32, !dbg !13397
  %i.ak = or i8 %., %.sroa.04.0.copyload, !dbg !13396
  tail call void @_RINvXs5_NtCshovLROGBtMy_11quinn_proto6codingINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_9BufMutExt5writehEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %i.ak), !dbg !13499
  tail call void @_RINvXs5_NtCshovLROGBtMy_11quinn_proto6codingINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_9BufMutExt5writemEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.aj), !dbg !13500
  tail call void @_RINvMs_NtCshovLROGBtMy_11quinn_proto6sharedNtB5_12ConnectionId11encode_longINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB7_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(21) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !13501
  tail call void @_RINvMs_NtCshovLROGBtMy_11quinn_proto6sharedNtB5_12ConnectionId11encode_longINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB7_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(21) %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !13502
  tail call void @_RINvXs5_NtCshovLROGBtMy_11quinn_proto6codingINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_9BufMutExt5writetEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i16 noundef 0), !dbg !13503
  %.sroa.4.0.insert.ext51 = zext i56 %.sroa.56.sroa.0.0.copyload to i64, !dbg !13504 ; 2 uses
  %.sroa.6.0.extract.shift.i89 = lshr i64 %.sroa.4.0.insert.ext51, 24 ; 2 uses
    #dbg_value(!DIArgList(i64 %.sroa.4.0.insert.ext51, i8 %.sroa.04.0.copyload), !13377, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !13099)
    #dbg_value(!DIArgList(i64 %.sroa.4.0.insert.ext51, i8 %.sroa.04.0.copyload), !13377, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !13099)
    #dbg_value(!DIArgList(i64 %.sroa.4.0.insert.ext51, i8 %.sroa.04.0.copyload), !13377, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 16), !13099)
    #dbg_value(i64 %.sroa.6.0.extract.shift.i89, !13377, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !13099)
    #dbg_value(ptr %2, !13383, !DIExpression(), !13099)
  switch i8 %.sroa.04.0.copyload, label %bb.g [
    i8 0, label %_RINvMs4_NtCshovLROGBtMy_11quinn_proto6packetNtB6_12PacketNumber6encodeINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB8_.exit95.thread
    i8 1, label %bb.r
    i8 2, label %bb.s
    i8 3, label %bb.t
  ], !dbg !13505

bb.g:                                             ; preds = %bb.f
  unreachable, !dbg !13506

_RINvMs4_NtCshovLROGBtMy_11quinn_proto6packetNtB6_12PacketNumber6encodeINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB8_.exit95.thread: ; preds = %bb.f
    #dbg_value(i64 %.sroa.4.0.insert.ext51, !13377, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !13099)
  %.sroa.43.0.extract.trunc.i94 = trunc i56 %.sroa.56.sroa.0.0.copyload to i8
    #dbg_value(i8 %.sroa.43.0.extract.trunc.i94, !13377, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13099)
    #dbg_value(i8 %.sroa.43.0.extract.trunc.i94, !13384, !DIExpression(), !13100)
  tail call void @_RINvXs5_NtCshovLROGBtMy_11quinn_proto6codingINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_9BufMutExt5writehEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %.sroa.43.0.extract.trunc.i94), !dbg !13507
  br label %bb.u, !dbg !13508

bb.h:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13509
    #dbg_value(ptr %i.al, !13241, !DIExpression(), !13398)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 29, !dbg !13510
    #dbg_value(ptr %i.am, !13242, !DIExpression(), !13398)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !13511
  %i.ao = load i32, ptr %i.an, align 4, !dbg !13511, !noundef !1053
    #dbg_value(i32 %i.ao, !13243, !DIExpression(), !13398)
    #dbg_value(i8 3, !13341, !DIExpression(), !13400)
  tail call void @_RINvXs5_NtCshovLROGBtMy_11quinn_proto6codingINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_9BufMutExt5writehEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i8 noundef -16), !dbg !13512
  tail call void @_RINvXs5_NtCshovLROGBtMy_11quinn_proto6codingINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_9BufMutExt5writemEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.ao), !dbg !13513
  tail call void @_RINvMs_NtCshovLROGBtMy_11quinn_proto6sharedNtB5_12ConnectionId11encode_longINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB7_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(21) %i.al, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !13514
  tail call void @_RINvMs_NtCshovLROGBtMy_11quinn_proto6sharedNtB5_12ConnectionId11encode_longINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB7_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(21) %i.am, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !13515
  %i.ap = load i64, ptr %i.d, align 8, !dbg !13516, !noundef !1053 ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, -1, !dbg !13517
  tail call void @llvm.assume(i1 %i.aq), !dbg !13518
  %i.ar = sub nsw i64 %i.ap, %i.e, !dbg !13519
  store i64 %i.e, ptr %0, align 8, !dbg !13520
  br label %bb.q, !dbg !13521

bb.i:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 33, !dbg !13522
  %i.at = load i8, ptr %i.as, align 1, !dbg !13522, !range !1633, !noundef !1053
    #dbg_value(i8 %i.at, !13244, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13401)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 34, !dbg !13523
  %i.av = load i8, ptr %i.au, align 2, !dbg !13523, !range !1633, !noundef !1053
  %i.aw = trunc nuw i8 %i.av to i1, !dbg !13523
    #dbg_value(i1 %i.aw, !13245, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13401)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 12, !dbg !13524
    #dbg_value(ptr %i.ax, !13246, !DIExpression(), !13401)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !13525
  %.sroa.010.0.copyload = load i8, ptr %i.ay, align 4, !dbg !13525 ; 2 uses
    #dbg_value(i8 %.sroa.010.0.copyload, !13247, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13401)
    #dbg_value(i8 %.sroa.010.0.copyload, !13334, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13403)
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 5, !dbg !13525
  %.sroa.512.sroa.0.0.copyload = load i56, ptr %.sroa.512.0..sroa_idx, align 1, !dbg !13525 ; 2 uses
    #dbg_value(i56 %.sroa.512.sroa.0.0.copyload, !13334, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !13403)
    #dbg_value(i56 %.sroa.512.sroa.0.0.copyload, !13247, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !13401)
  %.88 = select i1 %i.aw, i8 68, i8 64, !dbg !13526
  %i.az = shl nuw nsw i8 %i.at, 5, !dbg !13527
  %.sroa.015.0 = or disjoint i8 %.88, %i.az, !dbg !13527
  %i.ba = or i8 %.sroa.015.0, %.sroa.010.0.copyload, !dbg !13528
  tail call void @_RINvXs5_NtCshovLROGBtMy_11quinn_proto6codingINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_9BufMutExt5writehEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %i.ba), !dbg !13529
  %i.bb = tail call { ptr, i64 } @_RNvXs0_NtCshovLROGBtMy_11quinn_proto6sharedNtB5_12ConnectionIdNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(21) %i.ax), !dbg !13530 ; 2 uses
  %i.bc = extractvalue { ptr, i64 } %i.bb, 1, !dbg !13530 ; 4 uses
    #dbg_value(ptr poison, !13261, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13296)
    #dbg_value(ptr poison, !13267, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13299)
    #dbg_value(i64 %i.bc, !13261, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13296)
    #dbg_value(i64 %i.bc, !13267, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13299)
    #dbg_value(ptr poison, !13283, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13302)
    #dbg_value(!DIArgList(ptr poison, i64 poison), !13283, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13302)
    #dbg_value(ptr poison, !13285, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13404)
    #dbg_value(i64 %i.bc, !13285, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13404)
    #dbg_value(ptr %2, !13349, !DIExpression(), !13102)
    #dbg_value(ptr %2, !13355, !DIExpression(), !13104)
    #dbg_value(ptr %2, !13361, !DIExpression(), !13106)
    #dbg_value(ptr %2, !13363, !DIExpression(), !13108)
    #dbg_value(ptr poison, !13353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13102)
    #dbg_value(ptr poison, !13357, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13104)
    #dbg_value(i64 %i.bc, !13353, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13102)
    #dbg_value(i64 %i.bc, !13357, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13104)
    #dbg_value(i64 %i.bc, !13358, !DIExpression(), !13109)
    #dbg_value(i64 %i.bc, !13368, !DIExpression(), !13111)
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bc), !dbg !13531
  %i.bd = load i64, ptr %i.d, align 8, !dbg !13532, !alias.scope !13405, !noundef !1053 ; 3 uses
    #dbg_value(i64 %i.bd, !13359, !DIExpression(), !13114)
    #dbg_value(i64 %i.bd, !13373, !DIExpression(), !13116)
  %i.be = icmp sgt i64 %i.bd, -1, !dbg !13533
  tail call void @llvm.assume(i1 %i.be), !dbg !13534
  %.not.i96 = icmp eq i64 %i.bc, 0, !dbg !13535
  br i1 %.not.i96, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCshovLROGBtMy_11quinn_proto.exit98, label %bb.j, !dbg !13535

bb.j:                                             ; preds = %bb.i
  %i.bf = extractvalue { ptr, i64 } %i.bb, 0, !dbg !13530
    #dbg_value(!DIArgList(ptr %i.bf, i64 %i.bc), !13283, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13302)
    #dbg_value(ptr %i.bf, !13283, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13302)
    #dbg_value(ptr %i.bf, !13261, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13296)
    #dbg_value(ptr %i.bf, !13267, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13299)
    #dbg_value(ptr %i.bf, !13285, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13404)
    #dbg_value(ptr %i.bf, !13353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13102)
    #dbg_value(ptr %i.bf, !13357, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13104)
    #dbg_value(ptr %i.bf, !13369, !DIExpression(), !13111)
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !13536
  %i.bh = load ptr, ptr %i.bg, align 8, !dbg !13536, !alias.scope !13405, !nonnull !1053, !noundef !1053
    #dbg_value(ptr %i.bh, !13374, !DIExpression(), !13116)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bd, !dbg !13537
    #dbg_value(ptr %i.bi, !13370, !DIExpression(), !13111)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr nonnull readonly align 1 %i.bf, i64 %i.bc, i1 false), !dbg !13538
  %.pre.i97 = load i64, ptr %i.d, align 8, !dbg !13539, !alias.scope !13405
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCshovLROGBtMy_11quinn_proto.exit98, !dbg !13540

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCshovLROGBtMy_11quinn_proto.exit98: ; preds = %bb.i, %bb.j
  %i.bj = phi i64 [ %.pre.i97, %bb.j ], [ %i.bd, %bb.i ], !dbg !13539
  %i.bk = add i64 %i.bj, %i.bc, !dbg !13539
  store i64 %i.bk, ptr %i.d, align 8, !dbg !13539, !alias.scope !13405
  %.sroa.4.0.insert.ext81 = zext i56 %.sroa.512.sroa.0.0.copyload to i64, !dbg !13541 ; 2 uses
  %.sroa.6.0.extract.shift.i99 = lshr i64 %.sroa.4.0.insert.ext81, 24 ; 2 uses
    #dbg_value(!DIArgList(i64 %.sroa.4.0.insert.ext81, i8 undef), !13377, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !13121)
    #dbg_value(!DIArgList(i64 %.sroa.4.0.insert.ext81, i8 undef), !13377, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !13121)
    #dbg_value(!DIArgList(i64 %.sroa.4.0.insert.ext81, i8 undef), !13377, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 16), !13121)
    #dbg_value(i64 %.sroa.6.0.extract.shift.i99, !13377, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !13121)
    #dbg_value(ptr %2, !13383, !DIExpression(), !13121)
  switch i8 %.sroa.010.0.copyload, label %bb.k [
    i8 0, label %_RINvMs4_NtCshovLROGBtMy_11quinn_proto6packetNtB6_12PacketNumber6encodeINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB8_.exit105.thread
    i8 1, label %bb.v
    i8 2, label %bb.w
    i8 3, label %bb.x
  ], !dbg !13542

bb.k:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCshovLROGBtMy_11quinn_proto.exit98
  unreachable, !dbg !13543

_RINvMs4_NtCshovLROGBtMy_11quinn_proto6packetNtB6_12PacketNumber6encodeINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB8_.exit105.thread: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCshovLROGBtMy_11quinn_proto.exit98
    #dbg_value(i64 %.sroa.4.0.insert.ext81, !13377, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !13121)
  %.sroa.43.0.extract.trunc.i104 = trunc i56 %.sroa.512.sroa.0.0.copyload to i8
    #dbg_value(i8 %.sroa.43.0.extract.trunc.i104, !13377, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13121)
    #dbg_value(i8 %.sroa.43.0.extract.trunc.i104, !13384, !DIExpression(), !13122)
  tail call void @_RINvXs5_NtCshovLROGBtMy_11quinn_proto6codingINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_9BufMutExt5writehEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %.sroa.43.0.extract.trunc.i104), !dbg !13544
  br label %bb.y, !dbg !13545

bb.l:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !13248, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13406)
    #dbg_value(ptr %1, !13313, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13407)
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 23, !dbg !13546
    #dbg_value(ptr %i.bl, !13249, !DIExpression(), !13408)
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 2, !dbg !13547
    #dbg_value(ptr %i.bm, !13250, !DIExpression(), !13408)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !13548
  %i.bo = load i8, ptr %i.bn, align 1, !dbg !13548, !noundef !1053
  %i.bp = or i8 %i.bo, -128, !dbg !13549
  tail call void @_RINvXs5_NtCshovLROGBtMy_11quinn_proto6codingINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_9BufMutExt5writehEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %i.bp), !dbg !13550
  tail call void @_RINvXs5_NtCshovLROGBtMy_11quinn_proto6codingINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_9BufMutExt5writemEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0), !dbg !13551
  tail call void @_RINvMs_NtCshovLROGBtMy_11quinn_proto6sharedNtB5_12ConnectionId11encode_longINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB7_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(21) %i.bl, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !13552
  tail call void @_RINvMs_NtCshovLROGBtMy_11quinn_proto6sharedNtB5_12ConnectionId11encode_longINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB7_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(21) %i.bm, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !13553
  %i.bq = load i64, ptr %i.d, align 8, !dbg !13554, !noundef !1053 ; 2 uses
  %i.br = icmp sgt i64 %i.bq, -1, !dbg !13555
  tail call void @llvm.assume(i1 %i.br), !dbg !13556
  %i.bs = sub nsw i64 %i.bq, %i.e, !dbg !13557
  store i64 %i.e, ptr %0, align 8, !dbg !13558
  br label %bb.q, !dbg !13559

bb.m:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCshovLROGBtMy_11quinn_proto.exit
    #dbg_value(!DIArgList(i64 %.sroa.4.0.insert.ext, i8 undef), !13377, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 16), !13096)
    #dbg_value(!DIArgList(i64 %.sroa.4.0.insert.ext, i8 undef), !13377, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !13096)
    #dbg_value(!DIArgList(i64 %.sroa.4.0.insert.ext, i8 undef), !13377, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !13096)
  %.sroa.5.0.extract.shift.i = lshr i64 %.sroa.4.0.insert.ext, 8
    #dbg_value(i64 %.sroa.5.0.extract.shift.i, !13377, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 16), !13096)
  %.sroa.5.0.extract.trunc.i = trunc i64 %.sroa.5.0.extract.shift.i to i16
    #dbg_value(i16 %.sroa.5.0.extract.trunc.i, !13377, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !13096)
    #dbg_value(i16 %.sroa.5.0.extract.trunc.i, !13385, !DIExpression(), !13124)
  tail call void @_RINvXs5_NtCshovLROGBtMy_11quinn_proto6codingINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_9BufMutExt5writetEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i16 noundef %.sroa.5.0.extract.trunc.i), !dbg !13560
  br label %bb.p, !dbg !13561

bb.n:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCshovLROGBtMy_11quinn_proto.exit
    #dbg_value(i64 %.sroa.6.0.extract.shift.i, !13386, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !13125)
    #dbg_value(ptr %2, !13416, !DIExpression(), !13130)
    #dbg_value(i64 %.sroa.6.0.extract.shift.i, !13419, !DIExpression(), !13130)
    #dbg_value(i64 %.sroa.6.0.extract.shift.i, !13426, !DIExpression(), !13133)
    #dbg_value(i64 %.sroa.6.0.extract.shift.i, !13430, !DIExpression(), !13136)
    #dbg_value(i64 %.sroa.6.0.extract.shift.i, !13432, !DIExpression(), !13139)
    #dbg_value(i64 3, !13420, !DIExpression(), !13130)
    #dbg_value(i64 5, !13421, !DIExpression(), !13140)
    #dbg_value(i64 5, !13434, !DIExpression(), !13143)
    #dbg_value(i64 5, !13441, !DIExpression(), !13146)
    #dbg_value(i64 5, !13444, !DIExpression(), !13150)
    #dbg_value(i64 5, !13448, !DIExpression(), !13153)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13562, !noalias !13452
  %i.bt = tail call i64 @llvm.bswap.i64(i64 range(i64 0, 4294967296) %.sroa.6.0.extract.shift.i), !dbg !13563
    #dbg_value(i64 %i.bt, !13453, !DIExpression(), !13160)
  store i64 %i.bt, ptr %i.c, align 8, !dbg !13564, !noalias !13452
    #dbg_value(ptr %i.c, !13439, !DIExpression(), !13143)
    #dbg_value(ptr %i.c, !13442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13146)
    #dbg_value(ptr %i.c, !13445, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13150)
    #dbg_value(ptr %i.c, !13449, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13153)
    #dbg_value(i64 8, !13442, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13146)
    #dbg_value(i64 8, !13445, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13150)
    #dbg_value(i64 8, !13449, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13153)
    #dbg_value(i64 3, !13446, !DIExpression(), !13161)
    #dbg_value(i64 3, !13450, !DIExpression(), !13153)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 5, !dbg !13565
    #dbg_value(ptr %2, !13455, !DIExpression(), !13164)
    #dbg_value(ptr %i.bu, !13456, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13164)
    #dbg_value(i64 3, !13456, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13164)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bu, i64 noundef 3), !dbg !13566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13567, !noalias !13452
  br label %bb.p, !dbg !13568

bb.o:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCshovLROGBtMy_11quinn_proto.exit
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32
    #dbg_value(i32 %.sroa.6.0.extract.trunc.i, !13377, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !13096)
    #dbg_value(i32 %.sroa.6.0.extract.trunc.i, !13387, !DIExpression(), !13165)
  tail call void @_RINvXs5_NtCshovLROGBtMy_11quinn_proto6codingINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_9BufMutExt5writemEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %.sroa.6.0.extract.trunc.i), !dbg !13569
  br label %bb.p, !dbg !13570

bb.p:                                             ; preds = %_RINvMs4_NtCshovLROGBtMy_11quinn_proto6packetNtB6_12PacketNumber6encodeINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB8_.exit.thread, %bb.o, %bb.n, %bb.m
  %.sroa.03.0 = phi i64 [ 4, %bb.o ], [ 2, %bb.m ], [ 3, %bb.n ], [ 1, %_RINvMs4_NtCshovLROGBtMy_11quinn_proto6packetNtB6_12PacketNumber6encodeINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB8_.exit.thread ], !dbg !13340
  %i.bv = load i64, ptr %i.d, align 8, !dbg !13571, !noundef !1053 ; 2 uses
  %i.bw = icmp sgt i64 %i.bv, -1, !dbg !13572
  call void @llvm.assume(i1 %i.bw), !dbg !13573
  %i.bx = sub nsw i64 %i.bv, %i.e, !dbg !13574
  store i64 %i.e, ptr %0, align 8, !dbg !13575
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13575
  store i64 %i.bx, ptr %i.by, align 8, !dbg !13575
  br label %bb.q, !dbg !13576

bb.q:                                             ; preds = %bb.y, %bb.u, %bb.p, %bb.l, %bb.h
  %.sink117 = phi i64 [ 16, %bb.y ], [ 16, %bb.u ], [ 16, %bb.p ], [ 8, %bb.l ], [ 8, %bb.h ]
  %.sroa.016.0.sink = phi i64 [ %.sroa.016.0, %bb.y ], [ %.sroa.09.0, %bb.u ], [ %.sroa.03.0, %bb.p ], [ %i.bs, %bb.l ], [ %i.ar, %bb.h ]
  %.sink = phi i8 [ 0, %bb.y ], [ 1, %bb.u ], [ 1, %bb.p ], [ 2, %bb.l ], [ 2, %bb.h ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 %.sink117, !dbg !13317
  store i64 %.sroa.016.0.sink, ptr %i.bz, align 8, !dbg !13317
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !13317
  store i8 %.sink, ptr %i.ca, align 8, !dbg !13317
  ret void, !dbg !13577

bb.r:                                             ; preds = %bb.f
    #dbg_value(!DIArgList(i64 %.sroa.4.0.insert.ext51, i8 undef), !13377, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 16), !13099)
    #dbg_value(!DIArgList(i64 %.sroa.4.0.insert.ext51, i8 undef), !13377, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !13099)
    #dbg_value(!DIArgList(i64 %.sroa.4.0.insert.ext51, i8 undef), !13377, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 8, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !13099)
  %.sroa.5.0.extract.shift.i92 = lshr i64 %.sroa.4.0.insert.ext51, 8
    #dbg_value(i64 %.sroa.5.0.extract.shift.i92, !13377, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 16), !13099)
  %.sroa.5.0.extract.trunc.i93 = trunc i64 %.sroa.5.0.extract.shift.i92 to i16
    #dbg_value(i16 %.sroa.5.0.extract.trunc.i93, !13377, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !13099)
    #dbg_value(i16 %.sroa.5.0.extract.trunc.i93, !13385, !DIExpression(), !13166)
  tail call void @_RINvXs5_NtCshovLROGBtMy_11quinn_proto6codingINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_9BufMutExt5writetEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i16 noundef %.sroa.5.0.extract.trunc.i93), !dbg !13578
  br label %bb.u, !dbg !13579

bb.s:                                             ; preds = %bb.f
    #dbg_value(i64 %.sroa.6.0.extract.shift.i89, !13386, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !13167)
    #dbg_value(ptr %2, !13416, !DIExpression(), !13169)
    #dbg_value(i64 %.sroa.6.0.extract.shift.i89, !13419, !DIExpression(), !13169)
    #dbg_value(i64 %.sroa.6.0.extract.shift.i89, !13426, !DIExpression(), !13171)
    #dbg_value(i64 %.sroa.6.0.extract.shift.i89, !13430, !DIExpression(), !13173)
    #dbg_value(i64 %.sroa.6.0.extract.shift.i89, !13432, !DIExpression(), !13175)
    #dbg_value(i64 3, !13420, !DIExpression(), !13169)
    #dbg_value(i64 5, !13421, !DIExpression(), !13176)
    #dbg_value(i64 5, !13434, !DIExpression(), !13178)
    #dbg_value(i64 5, !13441, !DIExpression(), !13180)
    #dbg_value(i64 5, !13444, !DIExpression(), !13182)
    #dbg_value(i64 5, !13448, !DIExpression(), !13184)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13580, !noalias !13458
  %i.cb = tail call i64 @llvm.bswap.i64(i64 range(i64 0, 4294967296) %.sroa.6.0.extract.shift.i89), !dbg !13581
    #dbg_value(i64 %i.cb, !13453, !DIExpression(), !13190)
  store i64 %i.cb, ptr %i.b, align 8, !dbg !13582, !noalias !13458
    #dbg_value(ptr %i.b, !13439, !DIExpression(), !13178)
    #dbg_value(ptr %i.b, !13442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13180)
    #dbg_value(ptr %i.b, !13445, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13182)
    #dbg_value(ptr %i.b, !13449, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13184)
    #dbg_value(i64 8, !13442, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13180)
    #dbg_value(i64 8, !13445, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13182)
    #dbg_value(i64 8, !13449, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13184)
    #dbg_value(i64 3, !13446, !DIExpression(), !13191)
    #dbg_value(i64 3, !13450, !DIExpression(), !13184)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 5, !dbg !13583
    #dbg_value(ptr %2, !13455, !DIExpression(), !13193)
    #dbg_value(ptr %i.cc, !13456, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13193)
    #dbg_value(i64 3, !13456, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13193)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cc, i64 noundef 3), !dbg !13584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13585, !noalias !13458
  br label %bb.u, !dbg !13586

bb.t:                                             ; preds = %bb.f
  %.sroa.6.0.extract.trunc.i91 = trunc nuw i64 %.sroa.6.0.extract.shift.i89 to i32
    #dbg_value(i32 %.sroa.6.0.extract.trunc.i91, !13377, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !13099)
    #dbg_value(i32 %.sroa.6.0.extract.trunc.i91, !13387, !DIExpression(), !13194)
  tail call void @_RINvXs5_NtCshovLROGBtMy_11quinn_proto6codingINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_9BufMutExt5writemEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %.sroa.6.0.extract.trunc.i91), !dbg !13587
  br label %bb.u, !dbg !13588

bb.u:                                             ; preds = %_RINvMs4_NtCshovLROGBtMy_11quinn_proto6packetNtB6_12PacketNumber6encodeINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB8_.exit95.thread, %bb.t, %bb.s, %bb.r
  %.sroa.09.0 = phi i64 [ 4, %bb.t ], [ 2, %bb.r ], [ 3, %bb.s ], [ 1, %_RINvMs4_NtCshovLROGBtMy_11quinn_proto6packetNtB6_12PacketNumber6encodeINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB8_.exit95.thread ], !dbg !13395
  %i.cd = load i64, ptr %i.d, align 8, !dbg !13589, !noundef !1053 ; 2 uses
  %i.ce = icmp sgt i64 %i.cd, -1, !dbg !13590
  call void @llvm.assume(i1 %i.ce), !dbg !13591
  %i.cf = sub nsw i64 %i.cd, %i.e, !dbg !13592
  store i64 %i.e, ptr %0, align 8, !dbg !13593
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13593
  store i64 %i.cf, ptr %i.cg, align 8, !dbg !13593
  br label %bb.q, !dbg !13594

end_hunk_0
begin_hunk_1_@_RNvYINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtCsdIYt8sV98we_5bytes9bytes_mut8BytesMutENtNtNtBN_3buf8buf_impl3Buf13copy_to_bytesCshovLROGBtMy_11quinn_proto:bb.a
    #dbg_value(ptr %1, !1600, !DIExpression(), !26798)
    #dbg_value(ptr %1, !1602, !DIExpression(), !26800)
  %.val.i.i.i.pre = load ptr, ptr %1, align 8, !dbg !27071, !alias.scope !27010
  br label %.lr.ph, !dbg !27072

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.noexc8
  %i.ag = phi i64 [ %i.aq, %.noexc8 ], [ %i.s, %.lr.ph.preheader ], !dbg !27073
  %i.ah = phi i64 [ %i.au, %.noexc8 ], [ 0, %.lr.ph.preheader ], !dbg !27074 ; 2 uses
  %i.ai = phi i64 [ %i.ax, %.noexc8 ], [ %i.m, %.lr.ph.preheader ] ; 3 uses
  %.sroa.11.074 = phi i64 [ %i.ay, %.noexc8 ], [ %2, %.lr.ph.preheader ] ; 2 uses
    #dbg_value(i64 %.sroa.11.074, !26973, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26992)
    #dbg_value(ptr poison, !27016, !DIExpression(), !26813)
    #dbg_value(ptr poison, !27012, !DIExpression(), !26814)
    #dbg_value(ptr %1, !2756, !DIExpression(), !26815)
    #dbg_value(ptr poison, !2759, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26816)
    #dbg_value(ptr poison, !2762, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26818)
    #dbg_value(ptr poison, !2768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26820)
    #dbg_value(ptr poison, !2774, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26822)
    #dbg_value(i64 %.val4.i, !2759, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26816)
    #dbg_value(i64 %.val4.i, !2762, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26818)
    #dbg_value(i64 %.val4.i, !2768, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26820)
    #dbg_value(i64 %.val4.i, !2774, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26822)
    #dbg_value(i64 %i.ai, !2783, !DIExpression(), !26824)
    #dbg_value(i64 %.val4.i, !2786, !DIExpression(), !26824)
    #dbg_value(i64 %i.ai, !2787, !DIExpression(), !26825)
    #dbg_value(ptr undef, !2789, !DIExpression(DW_OP_deref), !26827)
    #dbg_value(ptr undef, !2791, !DIExpression(DW_OP_deref), !26827)
  %..i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.val4.i, i64 %i.ai), !dbg !27075 ; 2 uses
    #dbg_value(i64 %..i.i.i.i, !2760, !DIExpression(), !26828)
    #dbg_value(i64 %..i.i.i.i, !2766, !DIExpression(), !26818)
    #dbg_value(i64 %..i.i.i.i, !2771, !DIExpression(), !26820)
    #dbg_value(i64 %..i.i.i.i, !2780, !DIExpression(), !26822)
    #dbg_value(ptr %.val.i.i.i.pre, !2759, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26816)
    #dbg_value(ptr %.val.i.i.i.pre, !2762, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26818)
    #dbg_value(ptr %.val.i.i.i.pre, !2768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26820)
    #dbg_value(ptr %.val.i.i.i.pre, !2774, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26822)
  %i.aj = sub nuw i64 %.val4.i, %..i.i.i.i, !dbg !27076
    #dbg_value(i64 %i.aj, !2772, !DIExpression(), !26829)
    #dbg_value(i64 %i.aj, !2781, !DIExpression(), !26822)
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i.i.pre, i64 %..i.i.i.i, !dbg !27077
    #dbg_value(ptr poison, !27017, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26830)
    #dbg_value(i64 %i.aj, !27017, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26830)
    #dbg_value(i64 %i.aj, !27019, !DIExpression(), !26833)
    #dbg_value(i64 %.sroa.11.074, !27020, !DIExpression(), !26833)
    #dbg_value(ptr undef, !2789, !DIExpression(DW_OP_deref), !26835)
    #dbg_value(ptr undef, !2791, !DIExpression(DW_OP_deref), !26835)
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.11.074, i64 %i.aj), !dbg !27078 ; 9 uses
    #dbg_value(ptr %i.ak, !26977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26836)
    #dbg_value(i64 %..i.i, !26977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26836)
    #dbg_value(i64 %..i.i, !26978, !DIExpression(), !26837)
  call void @llvm.experimental.noalias.scope.decl(metadata !27022), !dbg !27079
    #dbg_value(ptr %i.i, !3314, !DIExpression(), !26840)
    #dbg_value(ptr %i.i, !3306, !DIExpression(), !26841)
    #dbg_value(ptr %i.i, !3301, !DIExpression(), !26842)
    #dbg_value(ptr %i.i, !3332, !DIExpression(), !26843)
    #dbg_value(ptr %i.i, !3335, !DIExpression(), !26845)
    #dbg_value(ptr %i.i, !3345, !DIExpression(), !26847)
    #dbg_value(ptr %i.i, !3301, !DIExpression(), !26849)
    #dbg_value(ptr %i.i, !3301, !DIExpression(), !26851)
    #dbg_value(ptr %i.ak, !3315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26840)
    #dbg_value(i64 %..i.i, !3315, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26840)
    #dbg_value(i64 %..i.i, !3316, !DIExpression(), !26852)
    #dbg_value(i64 %..i.i, !3307, !DIExpression(), !26841)
    #dbg_value(i64 %..i.i, !3350, !DIExpression(), !26854)
    #dbg_value(i64 %..i.i, !3347, !DIExpression(), !26847)
    #dbg_value(i64 %i.ah, !3308, !DIExpression(), !26855)
  %i.al = sub i64 %i.ag, %i.ah, !dbg !27080
    #dbg_value(i64 %i.al, !3309, !DIExpression(), !26856)
  %.not.i20 = icmp ugt i64 %..i.i, %i.al, !dbg !27072
  br i1 %.not.i20, label %bb.d, label %bb.e, !dbg !27072

bb.d:                                             ; preds = %.lr.ph
  %i.am = invoke noundef zeroext i1 @_RNvMNtCsdIYt8sV98we_5bytes9bytes_mutNtB2_8BytesMut13reserve_inner(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef range(i64 0, -9223372036854775808) %..i.i, i1 noundef zeroext true)
          to label %.noexc21 unwind label %.body.thread63.loopexit, !dbg !27081 ; 0 uses

.noexc21:                                         ; preds = %bb.d
  %.pre.i = load i64, ptr %i.ad, align 8, !dbg !27082, !alias.scope !27022, !noalias !27023
  br label %bb.e, !dbg !27083

bb.e:                                             ; preds = %.noexc21, %.lr.ph
  %i.an = phi i64 [ %i.ah, %.lr.ph ], [ %.pre.i, %.noexc21 ], !dbg !27082
  %i.ao = load ptr, ptr %i.i, align 8, !dbg !27084, !alias.scope !27022, !noalias !27023, !nonnull !1053, !noundef !1053
    #dbg_value(ptr %i.ao, !3354, !DIExpression(), !26859)
    #dbg_value(i64 %i.an, !3355, !DIExpression(), !26859)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an, !dbg !27085
    #dbg_value(ptr %i.ap, !3317, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26860)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3317, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !26860)
    #dbg_value(ptr %i.ak, !3351, !DIExpression(), !26854)
    #dbg_value(ptr %i.ap, !3352, !DIExpression(), !26854)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr nonnull readonly align 1 %i.ak, i64 range(i64 0, -9223372036854775808) %..i.i, i1 false), !dbg !27086
  %i.aq = load i64, ptr %i.ae, align 8, !dbg !27087, !alias.scope !27022, !noalias !27023, !noundef !1053 ; 3 uses
  %i.ar = load i64, ptr %i.ad, align 8, !dbg !27088, !alias.scope !27022, !noalias !27023, !noundef !1053 ; 2 uses
  %i.as = sub i64 %i.aq, %i.ar, !dbg !27087       ; 2 uses
    #dbg_value(i64 %i.as, !3348, !DIExpression(), !26861)
  %i.at = icmp ugt i64 %..i.i, %i.as, !dbg !27089
  br i1 %i.at, label %bb.f, label %bb.g, !dbg !27089, !prof !1845

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !27090, !noalias !27024
  br label %.invoke, !dbg !27091

.invoke:                                          ; preds = %bb.h, %bb.f
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.h ], [ %.sink.sroa.gep132, %bb.f ]
  %.sink = phi ptr [ %i.b, %bb.h ], [ %i.a, %bb.f ] ; 2 uses
  %.lcssa102.sink = phi i64 [ %i.av, %bb.h ], [ %i.as, %bb.f ]
  store i64 %..i.i, ptr %.sink, align 8, !dbg !27092, !noalias !1053
  store i64 %.lcssa102.sink, ptr %.sink.sroa.phi, align 8, !dbg !27092, !noalias !1053
  invoke void @_RNvCsdIYt8sV98we_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sink) #30
          to label %.cont unwind label %.body.thread63.loopexit.split-lp, !dbg !27092

.cont:                                            ; preds = %.invoke
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.au = add i64 %i.ar, %..i.i, !dbg !27093      ; 3 uses
  store i64 %i.au, ptr %i.ad, align 8, !dbg !27093, !alias.scope !27022, !noalias !27023
    #dbg_value(ptr undef, !26960, !DIExpression(), !26701)
    #dbg_value(i64 %..i.i, !26968, !DIExpression(), !26701)
    #dbg_value(ptr poison, !27025, !DIExpression(), !26864)
    #dbg_value(i64 %..i.i, !27028, !DIExpression(), !26864)
  call void @llvm.experimental.noalias.scope.decl(metadata !27030), !dbg !27094
    #dbg_value(ptr %1, !1688, !DIExpression(), !26868)
    #dbg_value(ptr %1, !1696, !DIExpression(), !26870)
    #dbg_value(i64 %..i.i, !1691, !DIExpression(), !26868)
    #dbg_value(i64 %.val4.i, !1692, !DIExpression(), !26871)
    #dbg_value(i64 %.val4.i, !2801, !DIExpression(), !26873)
    #dbg_value(i64 %.val4.i, !2805, !DIExpression(), !26875)
    #dbg_value(i64 %i.ai, !1693, !DIExpression(), !26876)
    #dbg_value(i64 %i.ai, !2802, !DIExpression(), !26873)
    #dbg_value(i64 %i.ai, !2803, !DIExpression(), !26877)
    #dbg_value(i64 %i.ai, !2806, !DIExpression(), !26875)
  %i.av = call i64 @llvm.usub.sat.i64(i64 %.val4.i, i64 %i.ai), !dbg !27095 ; 2 uses
    #dbg_value(i64 %i.av, !1694, !DIExpression(), !26878)
  %i.aw = icmp ugt i64 %..i.i, %i.av, !dbg !27096
  br i1 %i.aw, label %bb.h, label %.noexc8, !dbg !27096, !prof !1845

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !27097, !noalias !27031
  br label %.invoke, !dbg !27098

.noexc8:                                          ; preds = %bb.g
  %i.ax = add i64 %i.ai, %..i.i, !dbg !27099      ; 3 uses
    #dbg_value(i64 %i.ax, !1700, !DIExpression(), !26870)
  store i64 %i.ax, ptr %i.l, align 8, !dbg !27100, !alias.scope !27030, !noalias !27032
  %i.ay = sub nuw i64 %.sroa.11.074, %..i.i, !dbg !27101 ; 2 uses
    #dbg_value(i64 %i.ay, !26973, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26992)
    #dbg_value(ptr poison, !26994, !DIExpression(), !26792)
    #dbg_value(ptr poison, !27000, !DIExpression(), !26794)
    #dbg_value(ptr poison, !27004, !DIExpression(), !26796)
    #dbg_value(ptr %1, !1600, !DIExpression(), !26798)
    #dbg_value(ptr %1, !1602, !DIExpression(), !26800)
    #dbg_value(i64 %.val4.i, !1605, !DIExpression(), !26882)
    #dbg_value(i64 %.val4.i, !1612, !DIExpression(), !26884)
    #dbg_value(i64 %i.ax, !1608, !DIExpression(), !26882)
    #dbg_value(i64 %i.ax, !1609, !DIExpression(), !26885)
    #dbg_value(i64 %i.ax, !1616, !DIExpression(), !26884)
  %i.az = call noundef i64 @llvm.usub.sat.i64(i64 %.val4.i, i64 %i.ax), !dbg !27102
    #dbg_value(i64 %i.az, !27007, !DIExpression(), !26887)
    #dbg_value(i64 %i.ay, !27008, !DIExpression(), !26887)
    #dbg_value(ptr undef, !2789, !DIExpression(DW_OP_deref), !26889)
    #dbg_value(ptr undef, !2791, !DIExpression(DW_OP_deref), !26889)
  %..i.i.i23 = call noundef i64 @llvm.umin.i64(i64 %i.ay, i64 %i.az), !dbg !27103
  %.not66 = icmp eq i64 %..i.i.i23, 0, !dbg !27104
  br i1 %.not66, label %_RINvXs1_NtCsdIYt8sV98we_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putINtNtBU_4take4TakeQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorBC_EEECshovLROGBtMy_11quinn_proto.exit.loopexit, label %.lr.ph, !dbg !27105

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !27106
    #dbg_value(ptr poison, !26984, !DIExpression(), !27034)
    #dbg_value(ptr %1, !1600, !DIExpression(), !26891)
    #dbg_value(ptr %1, !1602, !DIExpression(), !26893)
    #dbg_value(i64 %.val4.i, !1605, !DIExpression(), !26895)
    #dbg_value(i64 %.val4.i, !1612, !DIExpression(), !26897)
    #dbg_value(i64 %i.m, !1608, !DIExpression(), !26895)
    #dbg_value(i64 %i.m, !1609, !DIExpression(), !26898)
    #dbg_value(i64 %i.m, !1616, !DIExpression(), !26897)
  store i64 %2, ptr %i.j, align 8, !dbg !27106
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !27106
  store i64 %i.n, ptr %i.ba, align 8, !dbg !27106
  call void @_RNvCsdIYt8sV98we_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j) #30, !dbg !27107
  unreachable, !dbg !27107

.body.thread63.loopexit:                          ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread63.loopexit.split-lp:                 ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RINvXs1_NtCsdIYt8sV98we_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putINtNtBU_4take4TakeQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorBC_EEECshovLROGBtMy_11quinn_proto.exit.loopexit: ; preds = %.noexc8
  %.sroa.0.0.copyload.pre = load ptr, ptr %i.i, align 8, !dbg !27108
  %.sroa.8.0.copyload.pre = load ptr, ptr %i.af, align 8, !dbg !27108
  br label %_RINvXs1_NtCsdIYt8sV98we_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putINtNtBU_4take4TakeQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorBC_EEECshovLROGBtMy_11quinn_proto.exit, !dbg !27108

_RINvXs1_NtCsdIYt8sV98we_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putINtNtBU_4take4TakeQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorBC_EEECshovLROGBtMy_11quinn_proto.exit: ; preds = %_RINvXs1_NtCsdIYt8sV98we_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putINtNtBU_4take4TakeQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorBC_EEECshovLROGBtMy_11quinn_proto.exit.loopexit, %_RNvMNtCsdIYt8sV98we_5bytes9bytes_mutNtB2_8BytesMut13with_capacity.exit
  %.sroa.8.0.copyload = phi ptr [ %i.ac, %_RNvMNtCsdIYt8sV98we_5bytes9bytes_mutNtB2_8BytesMut13with_capacity.exit ], [ %.sroa.8.0.copyload.pre, %_RINvXs1_NtCsdIYt8sV98we_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putINtNtBU_4take4TakeQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorBC_EEECshovLROGBtMy_11quinn_proto.exit.loopexit ], !dbg !27108 ; 2 uses
  %.sroa.7.0.copyload = phi i64 [ %i.s, %_RNvMNtCsdIYt8sV98we_5bytes9bytes_mutNtB2_8BytesMut13with_capacity.exit ], [ %i.aq, %_RINvXs1_NtCsdIYt8sV98we_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putINtNtBU_4take4TakeQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorBC_EEECshovLROGBtMy_11quinn_proto.exit.loopexit ], !dbg !27108
  %.sroa.5.0.copyload = phi i64 [ 0, %_RNvMNtCsdIYt8sV98we_5bytes9bytes_mutNtB2_8BytesMut13with_capacity.exit ], [ %i.au, %_RINvXs1_NtCsdIYt8sV98we_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putINtNtBU_4take4TakeQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorBC_EEECshovLROGBtMy_11quinn_proto.exit.loopexit ], !dbg !27108 ; 2 uses
  %.sroa.0.0.copyload = phi ptr [ %i.v, %_RNvMNtCsdIYt8sV98we_5bytes9bytes_mutNtB2_8BytesMut13with_capacity.exit ], [ %.sroa.0.0.copyload.pre, %_RINvXs1_NtCsdIYt8sV98we_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putINtNtBU_4take4TakeQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorBC_EEECshovLROGBtMy_11quinn_proto.exit.loopexit ], !dbg !27108 ; 4 uses
    #dbg_value(ptr %.sroa.0.0.copyload, !2853, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27035)
    #dbg_value(ptr %.sroa.0.0.copyload, !2857, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27036)
    #dbg_value(i64 %.sroa.5.0.copyload, !2853, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27035)
    #dbg_value(i64 %.sroa.5.0.copyload, !2857, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27036)
    #dbg_value(i64 %.sroa.7.0.copyload, !2853, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !27035)
    #dbg_value(i64 %.sroa.7.0.copyload, !2857, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !27036)
    #dbg_value(ptr %.sroa.8.0.copyload, !2853, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !27035)
    #dbg_value(ptr %.sroa.8.0.copyload, !2857, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !27036)
  call void @llvm.experimental.noalias.scope.decl(metadata !27037), !dbg !27109
    #dbg_declare(ptr %i.g, !2859, !DIExpression(), !26901)
    #dbg_declare(ptr %i.g, !2877, !DIExpression(), !26903)
    #dbg_declare(ptr %i.f, !2860, !DIExpression(), !26904)
    #dbg_declare(ptr poison, !2884, !DIExpression(), !26908)
    #dbg_declare(ptr poison, !2907, !DIExpression(), !26910)
    #dbg_value(ptr @_RNvNtCsdIYt8sV98we_5bytes9bytes_mut13SHARED_VTABLE, !2917, !DIExpression(), !26912)
    #dbg_value(ptr undef, !2925, !DIExpression(), !26706)
  %i.bb = ptrtoint ptr %.sroa.8.0.copyload to i64, !dbg !27110 ; 2 uses
  %i.bc = and i64 %i.bb, 1, !dbg !27110
  %.not.i10 = icmp eq i64 %i.bc, 0, !dbg !27111
  br i1 %.not.i10, label %bb.k, label %.noexc11, !dbg !27111

.noexc11:                                         ; preds = %_RINvXs1_NtCsdIYt8sV98we_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putINtNtBU_4take4TakeQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorBC_EEECshovLROGBtMy_11quinn_proto.exit
    #dbg_value(ptr undef, !2928, !DIExpression(), !26704)
  %i.bd = lshr i64 %i.bb, 5, !dbg !27112          ; 7 uses
    #dbg_value(i64 %i.bd, !2858, !DIExpression(), !26913)
    #dbg_value(i64 %i.bd, !2904, !DIExpression(), !26914)
    #dbg_value(i64 %i.bd, !2936, !DIExpression(), !26916)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !27113, !noalias !27038
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
    #dbg_value(ptr %.sroa.0.0.copyload, !2901, !DIExpression(), !26914)
    #dbg_value(ptr %.sroa.0.0.copyload, !2939, !DIExpression(), !26916)
    #dbg_value(i64 %.sroa.5.0.copyload, !2902, !DIExpression(), !26914)
    #dbg_value(i64 %.sroa.5.0.copyload, !2896, !DIExpression(), !26918)
    #dbg_value(i64 %.sroa.5.0.copyload, !2889, !DIExpression(), !26919)
    #dbg_value(i64 %.sroa.7.0.copyload, !2903, !DIExpression(), !26914)
    #dbg_value(i64 %.sroa.7.0.copyload, !2897, !DIExpression(), !26918)
    #dbg_value(i64 %.sroa.7.0.copyload, !2890, !DIExpression(), !26919)
    #dbg_value(i64 %.sroa.7.0.copyload, !2912, !DIExpression(), !26920)
    #dbg_value(i64 %.sroa.7.0.copyload, !2941, !DIExpression(), !26922)
    #dbg_value(i64 %.sroa.7.0.copyload, !2946, !DIExpression(), !26924)
  %i.be = sub nsw i64 0, %i.bd, !dbg !27114
  %i.bf = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 %i.be, !dbg !27115
    #dbg_value(ptr %i.bf, !2905, !DIExpression(), !26925)
    #dbg_value(ptr %i.bf, !2895, !DIExpression(), !26918)
    #dbg_value(ptr %i.bf, !2888, !DIExpression(), !26919)
    #dbg_value(ptr %i.bf, !2911, !DIExpression(), !26920)
    #dbg_value(ptr %i.bf, !2913, !DIExpression(), !26926)
  %i.bg = add i64 %i.bd, %.sroa.5.0.copyload, !dbg !27116
    #dbg_value(i64 %i.bg, !2902, !DIExpression(), !26914)
    #dbg_value(i64 %i.bg, !2896, !DIExpression(), !26918)
    #dbg_value(i64 %i.bg, !2889, !DIExpression(), !26919)
  %i.bh = add i64 %i.bd, %.sroa.7.0.copyload, !dbg !27117 ; 2 uses
    #dbg_value(i64 %i.bh, !2903, !DIExpression(), !26914)
    #dbg_value(i64 %i.bh, !2897, !DIExpression(), !26918)
    #dbg_value(i64 %i.bh, !2890, !DIExpression(), !26919)
    #dbg_value(i64 %i.bh, !2912, !DIExpression(), !26920)
    #dbg_value(i64 %i.bh, !2941, !DIExpression(), !26922)
    #dbg_value(i64 %i.bh, !2946, !DIExpression(), !26924)
  %i.bi = icmp sgt i64 %i.bh, -1, !dbg !27118
  call void @llvm.assume(i1 %i.bi), !dbg !27118
  store i64 %i.bh, ptr %i.g, align 8, !dbg !27119, !noalias !27038
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !27119
  store ptr %i.bf, ptr %i.bj, align 8, !dbg !27119, !noalias !27038
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !27119
  store i64 %i.bg, ptr %i.bk, align 8, !dbg !27119, !noalias !27038
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !27120, !noalias !27038
  call void @_RNvXsE_NtCsdIYt8sV98we_5bytes5bytesNtB5_5BytesINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g), !dbg !27121
  call void @llvm.experimental.noalias.scope.decl(metadata !27039), !dbg !27122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !27038
    #dbg_value(i64 %i.bd, !2949, !DIExpression(), !26930)
    #dbg_value(i64 %i.bd, !2959, !DIExpression(), !26932)
    #dbg_value(i64 %i.bd, !2963, !DIExpression(), !26934)
  store i64 %i.bd, ptr %i.e, align 8, !noalias !27040
    #dbg_value(ptr %i.f, !2953, !DIExpression(), !26930)
    #dbg_value(ptr %i.f, !2968, !DIExpression(), !26936)
    #dbg_value(ptr %i.f, !2961, !DIExpression(), !26932)
    #dbg_value(ptr %i.f, !2968, !DIExpression(), !26938)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !27123 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !27123, !alias.scope !27039, !noalias !27038, !noundef !1053 ; 4 uses
  %.not.i.i = icmp ugt i64 %i.bd, %i.bm, !dbg !27124
  br i1 %.not.i.i, label %bb.j, label %bb.m, !dbg !27124, !prof !1845

bb.j:                                             ; preds = %.noexc11
    #dbg_value(ptr %i.e, !2955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26939)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !27125, !noalias !27040
  store i64 %i.bm, ptr %i.d, align 8, !dbg !27126, !noalias !27040
    #dbg_value(ptr %i.d, !2955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26939)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !27127, !noalias !27040
  store ptr %i.e, ptr %i.c, align 8, !dbg !27127, !noalias !27040
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !27127
  store ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !27127, !noalias !27040
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !27127
  store ptr %i.d, ptr %i.bn, align 8, !dbg !27127, !noalias !27040
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !27127
  store ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !dbg !27127, !noalias !27040
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @59, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #31
          to label %.noexc.i unwind label %bb.l, !dbg !27128, !noalias !27038

.noexc.i:                                         ; preds = %bb.j
  unreachable, !dbg !27128

bb.k:                                             ; preds = %_RINvXs1_NtCsdIYt8sV98we_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putINtNtBU_4take4TakeQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorBC_EEECshovLROGBtMy_11quinn_proto.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
    #dbg_value(ptr %.sroa.0.0.copyload, !2866, !DIExpression(), !26940)
    #dbg_value(i64 %.sroa.5.0.copyload, !2867, !DIExpression(), !26941)
    #dbg_value(i64 %.sroa.5.0.copyload, !2922, !DIExpression(), !26912)
    #dbg_value(ptr %.sroa.8.0.copyload, !2868, !DIExpression(), !26942)
    #dbg_value(ptr %.sroa.8.0.copyload, !2923, !DIExpression(), !26912)
    #dbg_value(ptr %.sroa.0.0.copyload, !2921, !DIExpression(), !26912)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27129
  store ptr %.sroa.0.0.copyload, ptr %i.bo, align 8, !dbg !27129, !alias.scope !27037, !noalias !27041
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !27129
  store i64 %.sroa.5.0.copyload, ptr %i.bp, align 8, !dbg !27129, !alias.scope !27037, !noalias !27041
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !27129
  store ptr %.sroa.8.0.copyload, ptr %i.bq, align 8, !dbg !27129, !alias.scope !27037, !noalias !27041
  store ptr @_RNvNtCsdIYt8sV98we_5bytes9bytes_mut13SHARED_VTABLE, ptr %0, align 8, !dbg !27129, !alias.scope !27037, !noalias !27041
  br label %_RNvMNtCsdIYt8sV98we_5bytes9bytes_mutNtB2_8BytesMut6freeze.exit, !dbg !27130

bb.l:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !27042), !dbg !27131
    #dbg_value(ptr %i.f, !2974, !DIExpression(), !26946)
  call void @llvm.experimental.noalias.scope.decl(metadata !27043), !dbg !27132
    #dbg_value(ptr %i.f, !2978, !DIExpression(), !26950)
  %i.bs = load ptr, ptr %i.f, align 8, !dbg !27133, !alias.scope !27044, !noalias !27038, !nonnull !1053, !align !2981, !noundef !1053
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32, !dbg !27133
  %i.bu = load ptr, ptr %i.bt, align 8, !dbg !27133, !noalias !27045, !nonnull !1053, !noundef !1053
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !27134
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !27135
  %i.bx = load ptr, ptr %i.bw, align 8, !dbg !27135, !alias.scope !27044, !noalias !27038, !noundef !1053
  invoke void %i.bu(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef %i.bx, i64 noundef %i.bm)
          to label %.body.thread59 unwind label %bb.n, !dbg !27133, !noalias !27038, !inline_history !444

bb.m:                                             ; preds = %.noexc11
  %i.by = sub nuw i64 %i.bm, %i.bd, !dbg !27136
  store i64 %i.by, ptr %i.bl, align 8, !dbg !27136, !alias.scope !27039, !noalias !27038
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !27137 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !dbg !27137, !alias.scope !27039, !noalias !27038, !noundef !1053
    #dbg_value(ptr %i.ca, !2966, !DIExpression(), !26934)
    #dbg_value(i64 %i.bd, !2963, !DIExpression(), !26934)
    #dbg_value(i64 %i.bd, !2959, !DIExpression(), !26932)
    #dbg_value(i64 %i.bd, !2949, !DIExpression(), !26930)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bd, !dbg !27138
  store ptr %i.cb, ptr %i.bz, align 8, !dbg !27139, !alias.scope !27039, !noalias !27038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !27140, !noalias !27038
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !dbg !27141, !noalias !27041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !27131, !noalias !27038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !27142, !noalias !27038
  br label %_RNvMNtCsdIYt8sV98we_5bytes9bytes_mutNtB2_8BytesMut6freeze.exit, !dbg !27130

bb.n:                                             ; preds = %bb.l
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !dbg !27143, !noalias !27038
  unreachable, !dbg !27143

_RNvMNtCsdIYt8sV98we_5bytes9bytes_mutNtB2_8BytesMut6freeze.exit: ; preds = %bb.m, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !27144
  ret void, !dbg !27145

.body.thread59:                                   ; preds = %.body.thread, %bb.l
  %eh.lpad-body57 = phi { ptr, i32 } [ %i.br, %bb.l ], [ %lpad.phi, %.body.thread ]
  resume { ptr, i32 } %eh.lpad-body57, !dbg !27146

.body.thread:                                     ; preds = %.body.thread63.loopexit, %.body.thread63.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.body.thread63.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread63.loopexit.split-lp ]
    #dbg_value(ptr %i.i, !1709, !DIExpression(), !26952)
  invoke void @_RNvXs_NtCsdIYt8sV98we_5bytes9bytes_mutNtB4_8BytesMutNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %.body.thread59 unwind label %bb.o, !dbg !27147

bb.o:                                             ; preds = %.body.thread
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !dbg !27146
  unreachable, !dbg !27146
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtCsdIYt8sV98we_5bytes9bytes_mut8BytesMutENtNtNtBN_3buf8buf_impl3Buf13copy_to_sliceCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !724 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !4099, !DIExpression(), !27226)
    #dbg_value(ptr %1, !4102, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27226)
    #dbg_value(i64 %2, !4102, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27226)
    #dbg_declare(ptr %i.b, !27227, !DIExpression(), !27233)
    #dbg_declare(ptr poison, !27240, !DIExpression(), !27244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27245), !dbg !27256
    #dbg_value(ptr %1, !2699, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27156)
    #dbg_value(ptr %1, !2716, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27158)
    #dbg_value(ptr %1, !2719, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27160)
    #dbg_value(i64 %2, !2699, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27156)
    #dbg_value(i64 %2, !2716, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27158)
    #dbg_value(i64 %2, !2719, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27160)
    #dbg_value(ptr %0, !2712, !DIExpression(), !27156)
    #dbg_value(i64 0, !2724, !DIExpression(), !27165)
    #dbg_value(ptr poison, !2746, !DIExpression(), !27167)
    #dbg_value(ptr %0, !1600, !DIExpression(), !27169)
    #dbg_value(ptr %0, !1602, !DIExpression(), !27171)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27257
  %.val4.i.i = load i64, ptr %i.c, align 8, !dbg !27257, !alias.scope !27246, !noalias !27247, !noundef !1053 ; 4 uses
    #dbg_value(i64 %.val4.i.i, !1605, !DIExpression(), !27177)
    #dbg_value(i64 %.val4.i.i, !1612, !DIExpression(), !27179)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !27258 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !27258, !alias.scope !27246, !noalias !27247, !noundef !1053 ; 2 uses
    #dbg_value(i64 %i.e, !1608, !DIExpression(), !27177)
    #dbg_value(i64 %i.e, !1609, !DIExpression(), !27180)
    #dbg_value(i64 %i.e, !1616, !DIExpression(), !27179)
  %i.f = tail call noundef i64 @llvm.usub.sat.i64(i64 %.val4.i.i, i64 %i.e), !dbg !27259 ; 2 uses
  %i.g = icmp ult i64 %i.f, %2, !dbg !27260
  br i1 %i.g, label %_RNvYINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtCsdIYt8sV98we_5bytes9bytes_mut8BytesMutENtNtNtBN_3buf8buf_impl3Buf17try_copy_to_sliceCshovLROGBtMy_11quinn_proto.exit, label %.preheader.i, !dbg !27260

.preheader.i:                                     ; preds = %bb.a
    #dbg_value(ptr %1, !2719, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27160)
    #dbg_value(ptr %1, !2716, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27158)
    #dbg_value(ptr %1, !2699, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27156)
    #dbg_value(i64 %2, !2719, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27160)
    #dbg_value(i64 %2, !2716, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27158)
    #dbg_value(i64 %2, !2699, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27156)
    #dbg_value(ptr %1, !2748, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27182)
    #dbg_value(i64 %2, !2748, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27182)
  %i.h = icmp eq i64 %2, 0, !dbg !27261
  br i1 %i.h, label %.loopexit, label %.lr.ph.i, !dbg !27262

.lr.ph.i:                                         ; preds = %.preheader.i
  %.val.i.i = load ptr, ptr %0, align 8, !alias.scope !27248, !noalias !27247, !nonnull !1053, !noundef !1053
  br label %bb.b, !dbg !27262

bb.b:                                             ; preds = %_RNvXs1_NtNtCsdIYt8sV98we_5bytes3buf8buf_implINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB9_9bytes_mut8BytesMutENtB5_3Buf7advanceCshovLROGBtMy_11quinn_proto.exit.i, %.lr.ph.i
  %.sroa.0.040.i = phi ptr [ %1, %.lr.ph.i ], [ %i.o, %_RNvXs1_NtNtCsdIYt8sV98we_5bytes3buf8buf_implINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB9_9bytes_mut8BytesMutENtB5_3Buf7advanceCshovLROGBtMy_11quinn_proto.exit.i ] ; 2 uses
  %.sroa.9.039.i = phi i64 [ %2, %.lr.ph.i ], [ %i.p, %_RNvXs1_NtNtCsdIYt8sV98we_5bytes3buf8buf_implINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB9_9bytes_mut8BytesMutENtB5_3Buf7advanceCshovLROGBtMy_11quinn_proto.exit.i ] ; 2 uses
  %i.i = phi i64 [ %i.e, %.lr.ph.i ], [ %i.q, %_RNvXs1_NtNtCsdIYt8sV98we_5bytes3buf8buf_implINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB9_9bytes_mut8BytesMutENtB5_3Buf7advanceCshovLROGBtMy_11quinn_proto.exit.i ] ; 3 uses
    #dbg_value(ptr %.sroa.0.040.i, !2719, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27160)
    #dbg_value(i64 %.sroa.9.039.i, !2719, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27160)
    #dbg_value(ptr poison, !2752, !DIExpression(), !27186)
    #dbg_value(ptr %0, !2756, !DIExpression(), !27188)
    #dbg_value(ptr poison, !2759, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27189)
    #dbg_value(ptr poison, !2762, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27191)
    #dbg_value(ptr poison, !2768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27193)
    #dbg_value(ptr poison, !2774, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27195)
    #dbg_value(i64 %.val4.i.i, !2759, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27189)
    #dbg_value(i64 %.val4.i.i, !2762, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27191)
    #dbg_value(i64 %.val4.i.i, !2768, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27193)
    #dbg_value(i64 %.val4.i.i, !2774, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27195)
    #dbg_value(i64 %i.i, !2783, !DIExpression(), !27197)
    #dbg_value(i64 %.val4.i.i, !2786, !DIExpression(), !27197)
    #dbg_value(i64 %i.i, !2787, !DIExpression(), !27198)
    #dbg_value(ptr undef, !2789, !DIExpression(DW_OP_deref), !27200)
    #dbg_value(ptr undef, !2791, !DIExpression(DW_OP_deref), !27200)
  %..i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val4.i.i, i64 %i.i), !dbg !27263 ; 2 uses
    #dbg_value(i64 %..i.i.i, !2760, !DIExpression(), !27201)
    #dbg_value(i64 %..i.i.i, !2766, !DIExpression(), !27191)
    #dbg_value(i64 %..i.i.i, !2771, !DIExpression(), !27193)
    #dbg_value(i64 %..i.i.i, !2780, !DIExpression(), !27195)
    #dbg_value(ptr %.val.i.i, !2759, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27189)
    #dbg_value(ptr %.val.i.i, !2762, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27191)
    #dbg_value(ptr %.val.i.i, !2768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27193)
    #dbg_value(ptr %.val.i.i, !2774, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27195)
  %i.j = sub nuw i64 %.val4.i.i, %..i.i.i, !dbg !27264
    #dbg_value(i64 %i.j, !2772, !DIExpression(), !27202)
    #dbg_value(i64 %i.j, !2781, !DIExpression(), !27195)
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %..i.i.i, !dbg !27265
    #dbg_value(ptr %i.k, !2713, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27203)
    #dbg_value(i64 %i.j, !2713, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27203)
    #dbg_value(ptr undef, !2789, !DIExpression(DW_OP_deref), !27205)
    #dbg_value(ptr undef, !2791, !DIExpression(DW_OP_deref), !27205)
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.9.039.i, i64 %i.j), !dbg !27266 ; 7 uses
    #dbg_value(i64 %..i.i, !2714, !DIExpression(), !27206)
    #dbg_value(i64 %..i.i, !2726, !DIExpression(), !27165)
    #dbg_value(i64 %..i.i, !2717, !DIExpression(), !27158)
    #dbg_value(i64 %..i.i, !2720, !DIExpression(), !27160)
    #dbg_value(i64 %..i.i, !2727, !DIExpression(), !27208)
    #dbg_value(ptr %.sroa.0.040.i, !2725, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27165)
    #dbg_value(i64 %.sroa.9.039.i, !2725, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27165)
    #dbg_value(ptr %.sroa.0.040.i, !2795, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27210)
    #dbg_value(i64 %..i.i, !2795, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27210)
    #dbg_value(ptr %i.k, !2798, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27210)
    #dbg_value(i64 %..i.i, !2798, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27210)
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull %.sroa.0.040.i, i64 noundef %..i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %..i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115), !dbg !27267, !noalias !27249
    #dbg_value(!DIArgList(i64 %.sroa.9.039.i, i64 %..i.i), !2721, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !27211)
    #dbg_value(!DIArgList(i64 %.sroa.9.039.i, i64 %..i.i), !2726, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !27208)
    #dbg_value(ptr %.sroa.0.040.i, !2725, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27208)
    #dbg_value(i64 %.sroa.9.039.i, !2725, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27208)
    #dbg_value(!DIArgList(ptr %.sroa.0.040.i, i64 %..i.i), !2699, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !27156)
    #dbg_value(!DIArgList(ptr %.sroa.0.040.i, i64 %..i.i), !2716, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !27158)
    #dbg_value(!DIArgList(ptr %.sroa.0.040.i, i64 %..i.i), !2719, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !27160)
    #dbg_value(!DIArgList(i64 %.sroa.9.039.i, i64 %..i.i), !2699, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !27156)
    #dbg_value(!DIArgList(i64 %.sroa.9.039.i, i64 %..i.i), !2716, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !27158)
    #dbg_value(!DIArgList(i64 %.sroa.9.039.i, i64 %..i.i), !2719, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !27160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27250), !dbg !27268
    #dbg_value(ptr %0, !1688, !DIExpression(), !27215)
    #dbg_value(ptr %0, !1696, !DIExpression(), !27217)
    #dbg_value(i64 %..i.i, !1691, !DIExpression(), !27215)
    #dbg_value(i64 %.val4.i.i, !1692, !DIExpression(), !27218)
    #dbg_value(i64 %.val4.i.i, !2801, !DIExpression(), !27220)
    #dbg_value(i64 %.val4.i.i, !2805, !DIExpression(), !27222)
    #dbg_value(i64 %i.i, !1693, !DIExpression(), !27223)
    #dbg_value(i64 %i.i, !2802, !DIExpression(), !27220)
    #dbg_value(i64 %i.i, !2803, !DIExpression(), !27224)
    #dbg_value(i64 %i.i, !2806, !DIExpression(), !27222)
  %i.l = tail call i64 @llvm.usub.sat.i64(i64 %.val4.i.i, i64 %i.i), !dbg !27269 ; 2 uses
    #dbg_value(i64 %i.l, !1694, !DIExpression(), !27225)
end_hunk_1

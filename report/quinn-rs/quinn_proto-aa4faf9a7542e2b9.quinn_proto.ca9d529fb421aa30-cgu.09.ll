Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.09?download=true
inline.NumInlined: 672
inline.NumDeleted: 189
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMs1_NtCshovLROGBtMy_11quinn_proto6packetNtB5_6Header6encode:bb.a
    #dbg_value(ptr %2, !13253, !DIExpression(), !13306)
    #dbg_value(i8 -128, !13308, !DIExpression(), !13316)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !13460 ; 12 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !13460, !noundef !1053 ; 11 uses
    #dbg_value(i64 %i.e, !13230, !DIExpression(), !13317)
  %i.f = icmp sgt i64 %i.e, -1, !dbg !13461
  tail call void @llvm.assume(i1 %i.f), !dbg !13462
  %i.g = load i8, ptr %1, align 8, !dbg !13463, !range !13318, !noundef !1053 ; 4 uses
  %i.h = icmp samesign ugt i8 %i.g, 3, !dbg !13463
  %i.i = zext nneg i8 %i.g to i64, !dbg !13463
  %i.j = add nsw i64 %i.i, -3, !dbg !13463
  %i.k = select i1 %i.h, i64 %i.j, i64 0, !dbg !13463
  switch i64 %i.k, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.f
    i64 2, label %bb.h
    i64 3, label %bb.i
    i64 4, label %bb.l
  ], !dbg !13464

bb.b:                                             ; preds = %bb.a
  unreachable, !dbg !13465

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 44, !dbg !13466
    #dbg_value(ptr %i.l, !13231, !DIExpression(), !13320)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 65, !dbg !13467
    #dbg_value(ptr %i.m, !13232, !DIExpression(), !13320)
    #dbg_value(ptr %1, !13233, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !13321)
    #dbg_value(ptr %1, !13322, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !13325)
    #dbg_value(ptr %1, !13326, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !13329)
    #dbg_value(ptr %1, !13330, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !13333)
    #dbg_value(i8 %i.g, !13334, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13340)
    #dbg_value(i8 %i.g, !13234, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13320)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !13468
  %.sroa.5.sroa.0.0.copyload = load i56, ptr %.sroa.5.0..sroa_idx, align 1, !dbg !13468 ; 2 uses
    #dbg_value(i56 %.sroa.5.sroa.0.0.copyload, !13234, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !13320)
    #dbg_value(i56 %.sroa.5.sroa.0.0.copyload, !13334, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !13340)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !13469
  %i.o = load i32, ptr %i.n, align 8, !dbg !13469, !noundef !1053
    #dbg_value(i32 %i.o, !13235, !DIExpression(), !13320)
    #dbg_value(i8 2, !13341, !DIExpression(), !13347)
  %i.p = or disjoint i8 %i.g, -64, !dbg !13346
  tail call void @_RINvXs5_NtCshovLROGBtMy_11quinn_proto6codingINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_9BufMutExt5writehEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %i.p), !dbg !13470
  tail call void @_RINvXs5_NtCshovLROGBtMy_11quinn_proto6codingINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_9BufMutExt5writemEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.o), !dbg !13471
  tail call void @_RINvMs_NtCshovLROGBtMy_11quinn_proto6sharedNtB5_12ConnectionId11encode_longINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB7_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(21) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !13472
  tail call void @_RINvMs_NtCshovLROGBtMy_11quinn_proto6sharedNtB5_12ConnectionId11encode_longINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB7_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(21) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !13473
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !13474 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !dbg !13474, !noundef !1053
  tail call void @_RNvXs5_NtCshovLROGBtMy_11quinn_proto6codingINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_9BufMutExt9write_varB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.r), !dbg !13475
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !13476
  %i.t = load ptr, ptr %i.s, align 8, !dbg !13476, !nonnull !1053, !noundef !1053
  %i.u = load i64, ptr %i.q, align 8, !dbg !13477, !noundef !1053 ; 4 uses
    #dbg_value(ptr %i.t, !13263, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13266)
    #dbg_value(ptr %i.t, !13269, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13272)
    #dbg_value(i64 %i.u, !13263, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13266)
    #dbg_value(i64 %i.u, !13269, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13272)
    #dbg_value(ptr %i.t, !13285, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13290)
    #dbg_value(!DIArgList(ptr %i.t, i64 %i.u), !13285, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13290)
    #dbg_value(ptr %i.t, !13286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13348)
    #dbg_value(i64 %i.u, !13286, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13348)
    #dbg_value(ptr %2, !13349, !DIExpression(), !13068)
    #dbg_value(ptr %2, !13363, !DIExpression(), !13069)
    #dbg_value(ptr %2, !13357, !DIExpression(), !13070)
    #dbg_value(ptr %2, !13366, !DIExpression(), !13073)
    #dbg_value(ptr %i.t, !13364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13069)
    #dbg_value(ptr %i.t, !13358, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13070)
    #dbg_value(i64 %i.u, !13364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13069)
    #dbg_value(i64 %i.u, !13358, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13070)
    #dbg_value(i64 %i.u, !13368, !DIExpression(), !13076)
    #dbg_value(i64 %i.u, !13359, !DIExpression(), !13077)
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.u), !dbg !13478
  %i.v = load i64, ptr %i.d, align 8, !dbg !13479, !alias.scope !13372, !noundef !1053 ; 3 uses
    #dbg_value(i64 %i.v, !13373, !DIExpression(), !13082)
    #dbg_value(i64 %i.v, !13360, !DIExpression(), !13083)
  %i.w = icmp sgt i64 %i.v, -1, !dbg !13480
  tail call void @llvm.assume(i1 %i.w), !dbg !13481
  %.not.i = icmp eq i64 %i.u, 0, !dbg !13482
  br i1 %.not.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCshovLROGBtMy_11quinn_proto.exit, label %bb.d, !dbg !13482

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %i.t, !13369, !DIExpression(), !13076)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !13483
  %i.y = load ptr, ptr %i.x, align 8, !dbg !13483, !alias.scope !13372, !nonnull !1053, !noundef !1053
    #dbg_value(ptr %i.y, !13374, !DIExpression(), !13082)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v, !dbg !13484
    #dbg_value(ptr %i.z, !13370, !DIExpression(), !13076)
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
    #dbg_value(i8 %.sroa.04.0.copyload, !13334, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13395)
    #dbg_value(i8 %.sroa.04.0.copyload, !13239, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13393)
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 5, !dbg !13497
  %.sroa.56.sroa.0.0.copyload = load i56, ptr %.sroa.56.0..sroa_idx, align 1, !dbg !13497 ; 2 uses
    #dbg_value(i56 %.sroa.56.sroa.0.0.copyload, !13239, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !13393)
    #dbg_value(i56 %.sroa.56.sroa.0.0.copyload, !13334, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !13395)
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
  %3 = trunc nuw i8 %i.av to i1, !dbg !13523
    #dbg_value(i1 %3, !13245, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13401)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 12, !dbg !13524
    #dbg_value(ptr %i.aw, !13246, !DIExpression(), !13401)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !13525
  %.sroa.010.0.copyload = load i8, ptr %i.ax, align 4, !dbg !13525 ; 2 uses
    #dbg_value(i8 %.sroa.010.0.copyload, !13334, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13403)
    #dbg_value(i8 %.sroa.010.0.copyload, !13247, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13401)
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 5, !dbg !13525
  %.sroa.512.sroa.0.0.copyload = load i56, ptr %.sroa.512.0..sroa_idx, align 1, !dbg !13525 ; 2 uses
    #dbg_value(i56 %.sroa.512.sroa.0.0.copyload, !13247, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !13401)
    #dbg_value(i56 %.sroa.512.sroa.0.0.copyload, !13334, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !13403)
  %.88 = select i1 %3, i8 68, i8 64, !dbg !13526
  %i.ay = shl nuw nsw i8 %i.at, 5, !dbg !13527
  %.sroa.015.0 = or disjoint i8 %.88, %i.ay, !dbg !13527
  %i.az = or i8 %.sroa.015.0, %.sroa.010.0.copyload, !dbg !13528
  tail call void @_RINvXs5_NtCshovLROGBtMy_11quinn_proto6codingINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_9BufMutExt5writehEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %i.az), !dbg !13529
  %i.ba = tail call { ptr, i64 } @_RNvXs0_NtCshovLROGBtMy_11quinn_proto6sharedNtB5_12ConnectionIdNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(21) %i.aw), !dbg !13530 ; 2 uses
  %i.bb = extractvalue { ptr, i64 } %i.ba, 1, !dbg !13530 ; 4 uses
    #dbg_value(ptr poison, !13263, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13298)
    #dbg_value(ptr poison, !13269, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13301)
    #dbg_value(i64 %i.bb, !13263, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13298)
    #dbg_value(i64 %i.bb, !13269, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13301)
    #dbg_value(ptr poison, !13285, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13304)
    #dbg_value(!DIArgList(ptr poison, i64 poison), !13285, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13304)
    #dbg_value(ptr poison, !13287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13404)
    #dbg_value(i64 %i.bb, !13287, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13404)
    #dbg_value(ptr %2, !13349, !DIExpression(), !13104)
    #dbg_value(ptr %2, !13363, !DIExpression(), !13105)
    #dbg_value(ptr %2, !13357, !DIExpression(), !13106)
    #dbg_value(ptr %2, !13366, !DIExpression(), !13108)
    #dbg_value(ptr poison, !13364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13105)
    #dbg_value(ptr poison, !13358, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13106)
    #dbg_value(i64 %i.bb, !13364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13105)
    #dbg_value(i64 %i.bb, !13358, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13106)
    #dbg_value(i64 %i.bb, !13368, !DIExpression(), !13110)
    #dbg_value(i64 %i.bb, !13359, !DIExpression(), !13111)
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bb), !dbg !13531
  %i.bc = load i64, ptr %i.d, align 8, !dbg !13532, !alias.scope !13405, !noundef !1053 ; 3 uses
    #dbg_value(i64 %i.bc, !13373, !DIExpression(), !13115)
    #dbg_value(i64 %i.bc, !13360, !DIExpression(), !13116)
  %i.bd = icmp sgt i64 %i.bc, -1, !dbg !13533
  tail call void @llvm.assume(i1 %i.bd), !dbg !13534
  %.not.i96 = icmp eq i64 %i.bb, 0, !dbg !13535
  br i1 %.not.i96, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCshovLROGBtMy_11quinn_proto.exit98, label %bb.j, !dbg !13535

bb.j:                                             ; preds = %bb.i
  %i.be = extractvalue { ptr, i64 } %i.ba, 0, !dbg !13530
    #dbg_value(!DIArgList(ptr %i.be, i64 %i.bb), !13285, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !13304)
    #dbg_value(ptr %i.be, !13285, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13304)
    #dbg_value(ptr %i.be, !13263, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13298)
    #dbg_value(ptr %i.be, !13269, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13301)
    #dbg_value(ptr %i.be, !13287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13404)
    #dbg_value(ptr %i.be, !13364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13105)
    #dbg_value(ptr %i.be, !13358, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13106)
    #dbg_value(ptr %i.be, !13369, !DIExpression(), !13110)
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !13536
  %i.bg = load ptr, ptr %i.bf, align 8, !dbg !13536, !alias.scope !13405, !nonnull !1053, !noundef !1053
    #dbg_value(ptr %i.bg, !13374, !DIExpression(), !13115)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bc, !dbg !13537
    #dbg_value(ptr %i.bh, !13370, !DIExpression(), !13110)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bh, ptr nonnull readonly align 1 %i.be, i64 %i.bb, i1 false), !dbg !13538
  %.pre.i97 = load i64, ptr %i.d, align 8, !dbg !13539, !alias.scope !13405
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCshovLROGBtMy_11quinn_proto.exit98, !dbg !13540

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCshovLROGBtMy_11quinn_proto.exit98: ; preds = %bb.i, %bb.j
  %i.bi = phi i64 [ %.pre.i97, %bb.j ], [ %i.bc, %bb.i ], !dbg !13539
  %i.bj = add i64 %i.bi, %i.bb, !dbg !13539
  store i64 %i.bj, ptr %i.d, align 8, !dbg !13539, !alias.scope !13405
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
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 23, !dbg !13546
    #dbg_value(ptr %i.bk, !13249, !DIExpression(), !13408)
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 2, !dbg !13547
    #dbg_value(ptr %i.bl, !13250, !DIExpression(), !13408)
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !13548
  %i.bn = load i8, ptr %i.bm, align 1, !dbg !13548, !noundef !1053
  %i.bo = or i8 %i.bn, -128, !dbg !13549
  tail call void @_RINvXs5_NtCshovLROGBtMy_11quinn_proto6codingINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_9BufMutExt5writehEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %i.bo), !dbg !13550
  tail call void @_RINvXs5_NtCshovLROGBtMy_11quinn_proto6codingINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_9BufMutExt5writemEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0), !dbg !13551
  tail call void @_RINvMs_NtCshovLROGBtMy_11quinn_proto6sharedNtB5_12ConnectionId11encode_longINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB7_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(21) %i.bk, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !13552
  tail call void @_RINvMs_NtCshovLROGBtMy_11quinn_proto6sharedNtB5_12ConnectionId11encode_longINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB7_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(21) %i.bl, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !13553
  %i.bp = load i64, ptr %i.d, align 8, !dbg !13554, !noundef !1053 ; 2 uses
  %i.bq = icmp sgt i64 %i.bp, -1, !dbg !13555
  tail call void @llvm.assume(i1 %i.bq), !dbg !13556
  %i.br = sub nsw i64 %i.bp, %i.e, !dbg !13557
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
    #dbg_value(i64 %.sroa.6.0.extract.shift.i, !13426, !DIExpression(), !13137)
    #dbg_value(i64 %.sroa.6.0.extract.shift.i, !13419, !DIExpression(), !13130)
    #dbg_value(i64 %.sroa.6.0.extract.shift.i, !13432, !DIExpression(), !13138)
    #dbg_value(i64 %.sroa.6.0.extract.shift.i, !13428, !DIExpression(), !13139)
    #dbg_value(i64 3, !13420, !DIExpression(), !13130)
    #dbg_value(i64 5, !13434, !DIExpression(), !13149)
    #dbg_value(i64 5, !13421, !DIExpression(), !13150)
    #dbg_value(i64 5, !13450, !DIExpression(), !13151)
    #dbg_value(i64 5, !13443, !DIExpression(), !13152)
    #dbg_value(i64 5, !13438, !DIExpression(), !13153)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13562, !noalias !13452
  %i.bs = tail call i64 @llvm.bswap.i64(i64 range(i64 0, 4294967296) %.sroa.6.0.extract.shift.i), !dbg !13563
    #dbg_value(i64 %i.bs, !13453, !DIExpression(), !13160)
  store i64 %i.bs, ptr %i.c, align 8, !dbg !13564, !noalias !13452
    #dbg_value(ptr %i.c, !13449, !DIExpression(), !13151)
    #dbg_value(ptr %i.c, !13435, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13149)
    #dbg_value(ptr %i.c, !13442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13152)
    #dbg_value(ptr %i.c, !13439, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13153)
    #dbg_value(i64 8, !13435, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13149)
    #dbg_value(i64 8, !13442, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13152)
    #dbg_value(i64 8, !13439, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13153)
    #dbg_value(i64 3, !13436, !DIExpression(), !13149)
    #dbg_value(i64 3, !13440, !DIExpression(), !13161)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 5, !dbg !13565
    #dbg_value(ptr %2, !13455, !DIExpression(), !13164)
    #dbg_value(ptr %i.bt, !13456, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13164)
    #dbg_value(i64 3, !13456, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13164)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bt, i64 noundef 3), !dbg !13566
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
  %i.bu = load i64, ptr %i.d, align 8, !dbg !13571, !noundef !1053 ; 2 uses
  %i.bv = icmp sgt i64 %i.bu, -1, !dbg !13572
  call void @llvm.assume(i1 %i.bv), !dbg !13573
  %i.bw = sub nsw i64 %i.bu, %i.e, !dbg !13574
  store i64 %i.e, ptr %0, align 8, !dbg !13575
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13575
  store i64 %i.bw, ptr %i.bx, align 8, !dbg !13575
  br label %bb.q, !dbg !13576

bb.q:                                             ; preds = %bb.y, %bb.u, %bb.p, %bb.l, %bb.h
  %.sink117 = phi i64 [ 16, %bb.y ], [ 16, %bb.u ], [ 16, %bb.p ], [ 8, %bb.l ], [ 8, %bb.h ]
  %.sroa.016.0.sink = phi i64 [ %.sroa.016.0, %bb.y ], [ %.sroa.09.0, %bb.u ], [ %.sroa.03.0, %bb.p ], [ %i.br, %bb.l ], [ %i.ar, %bb.h ]
  %.sink = phi i8 [ 0, %bb.y ], [ 1, %bb.u ], [ 1, %bb.p ], [ 2, %bb.l ], [ 2, %bb.h ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %.sink117, !dbg !13317
  store i64 %.sroa.016.0.sink, ptr %i.by, align 8, !dbg !13317
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !13317
  store i8 %.sink, ptr %i.bz, align 8, !dbg !13317
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
    #dbg_value(i64 %.sroa.6.0.extract.shift.i89, !13426, !DIExpression(), !13173)
    #dbg_value(i64 %.sroa.6.0.extract.shift.i89, !13419, !DIExpression(), !13169)
    #dbg_value(i64 %.sroa.6.0.extract.shift.i89, !13432, !DIExpression(), !13174)
    #dbg_value(i64 %.sroa.6.0.extract.shift.i89, !13428, !DIExpression(), !13175)
    #dbg_value(i64 3, !13420, !DIExpression(), !13169)
    #dbg_value(i64 5, !13434, !DIExpression(), !13180)
    #dbg_value(i64 5, !13421, !DIExpression(), !13181)
    #dbg_value(i64 5, !13450, !DIExpression(), !13182)
    #dbg_value(i64 5, !13443, !DIExpression(), !13183)
    #dbg_value(i64 5, !13438, !DIExpression(), !13184)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13580, !noalias !13458
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.00?download=true
inline.NumInlined: 1353
inline.NumDeleted: 355
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection21set_key_discard_timer:bb.a
    #dbg_value(i32 %i.k, !8535, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52224)
  br label %bb.h, !dbg !52254

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.3.0.i = phi i32 [ %i.k, %bb.g ], [ 0, %bb.f ], !dbg !52221
  %.sroa.0.0.i = phi i64 [ %i.j, %bb.g ], [ 0, %bb.f ], !dbg !52221
    #dbg_value(i64 %.sroa.0.0.i, !8535, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !52224)
    #dbg_value(i64 %.sroa.0.0.i, !8542, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !52223)
    #dbg_value(i32 %.sroa.3.0.i, !8535, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52224)
    #dbg_value(i32 %.sroa.3.0.i, !8542, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52223)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 384, !dbg !52255
  %i.m = tail call { i64, i32 } @_RNvMs0_NtNtCshovLROGBtMy_11quinn_proto10connection5pathsNtB5_12RttEstimator8pto_base(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.l), !dbg !52256 ; 2 uses
  %i.n = extractvalue { i64, i32 } %i.m, 0, !dbg !52256 ; 2 uses
    #dbg_value(i64 %i.n, !8534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !52224)
    #dbg_value(i32 poison, !8534, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52224)
    #dbg_value(i64 %i.n, !8544, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !52225)
    #dbg_value(i32 poison, !8544, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52225)
    #dbg_value(i64 %.sroa.0.0.i, !8548, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !52225)
    #dbg_value(i32 %.sroa.3.0.i, !8548, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52225)
    #dbg_value(i64 1, !8553, !DIExpression(), !52226)
    #dbg_value(i64 %i.n, !8554, !DIExpression(), !52227)
    #dbg_value(i64 %.sroa.0.0.i, !8555, !DIExpression(), !52227)
  %i.o = add i64 %i.n, %.sroa.0.0.i, !dbg !52257  ; 4 uses
  %i.p = icmp ult i64 %i.o, %i.n, !dbg !52257
    #dbg_value(i1 %i.p, !8558, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !52228)
  br i1 %i.p, label %bb.l, label %bb.i, !dbg !52258, !prof !6298

bb.i:                                             ; preds = %bb.h
  %i.q = extractvalue { i64, i32 } %i.m, 1, !dbg !52256
    #dbg_value(i32 %i.q, !8534, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52224)
    #dbg_value(i32 %i.q, !8544, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52225)
    #dbg_value(i64 %i.o, !8549, !DIExpression(), !52229)
    #dbg_value(i64 %i.o, !8554, !DIExpression(), !52226)
  %i.r = add nuw nsw i32 %i.q, %.sroa.3.0.i, !dbg !52259 ; 3 uses
    #dbg_value(i32 %i.r, !8550, !DIExpression(), !52230)
  %i.s = icmp samesign ugt i32 %i.r, 999999999, !dbg !52260
  br i1 %i.s, label %bb.j, label %_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection3pto.exit, !dbg !52260

bb.j:                                             ; preds = %bb.i
    #dbg_value(i32 %i.r, !8550, !DIExpression(DW_OP_constu, 1000000000, DW_OP_minus, DW_OP_stack_value), !52230)
  %i.t = icmp eq i64 %i.o, -1, !dbg !52261
    #dbg_value(i1 %i.t, !8558, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !52231)
  br i1 %i.t, label %bb.l, label %bb.k, !dbg !52262, !prof !6298

bb.k:                                             ; preds = %bb.j
  %i.u = add nuw i64 %i.o, 1, !dbg !52261
  %i.v = add nsw i32 %i.r, -1000000000, !dbg !52263
    #dbg_value(i32 %i.v, !8550, !DIExpression(), !52230)
    #dbg_value(i64 %i.u, !8549, !DIExpression(), !52229)
    #dbg_value(i64 %i.u, !8554, !DIExpression(), !52226)
  br label %_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection3pto.exit, !dbg !52264

bb.l:                                             ; preds = %bb.j, %bb.h
    #dbg_value(i64 poison, !8529, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !52222)
    #dbg_value(i32 -1, !8529, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52222)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #30, !dbg !52265
  unreachable, !dbg !52265

_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection3pto.exit: ; preds = %bb.i, %bb.k
  %.sroa.4.0.i.i = phi i32 [ %i.v, %bb.k ], [ %i.r, %bb.i ], !dbg !52225
  %.sroa.0.0.i.i = phi i64 [ %i.u, %bb.k ], [ %i.o, %bb.i ], !dbg !52225
    #dbg_value(i64 poison, !8529, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !52222)
    #dbg_value(i32 %.sroa.4.0.i.i, !8529, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52222)
    #dbg_value(i64 %.sroa.0.0.i.i, !52167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !52200)
    #dbg_value(i32 %.sroa.4.0.i.i, !52167, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52200)
    #dbg_value(i64 %.sroa.0.0.i.i, !8568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !52232)
    #dbg_value(i32 %.sroa.4.0.i.i, !8568, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52232)
    #dbg_value(i32 3, !8572, !DIExpression(), !52232)
    #dbg_value(i64 3, !8579, !DIExpression(), !52233)
    #dbg_value(i64 3, !8584, !DIExpression(), !52234)
    #dbg_value(!DIArgList(i32 %.sroa.4.0.i.i, i64 3), !8573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !52235)
    #dbg_value(i64 poison, !8574, !DIExpression(), !52236)
    #dbg_value(i64 poison, !8593, !DIExpression(), !52237)
    #dbg_value(i64 poison, !8575, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !52238)
    #dbg_value(i64 %.sroa.0.0.i.i, !8580, !DIExpression(), !52233)
    #dbg_value(i64 %.sroa.0.0.i.i, !8590, !DIExpression(), !52234)
  %i.w = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.0.0.i.i, i64 3), !dbg !52266 ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 1, !dbg !52266
    #dbg_value(i64 poison, !8581, !DIExpression(), !52239)
    #dbg_value(i1 %i.x, !8582, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !52239)
    #dbg_value(i1 %i.x, !8597, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !52240)
  br i1 %i.x, label %select.unfold, label %bb.m, !dbg !52267, !prof !6298

bb.m:                                             ; preds = %_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection3pto.exit
  %i.y = zext nneg i32 %.sroa.4.0.i.i to i64, !dbg !52268
    #dbg_value(!DIArgList(i64 %i.y, i64 3), !8573, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !52235)
  %i.z = mul nuw nsw i64 %i.y, 3, !dbg !52268     ; 2 uses
    #dbg_value(i64 %i.z, !8573, !DIExpression(), !52235)
    #dbg_value(i64 poison, !8575, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !52238)
    #dbg_value(i64 poison, !8575, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !52238)
  %i.aa = extractvalue { i64, i1 } %i.w, 0, !dbg !52266 ; 2 uses
    #dbg_value(i64 %i.aa, !8581, !DIExpression(), !52239)
  %i.ab = udiv i64 %i.z, 1000000000, !dbg !52269
  %i.ac = urem i64 %i.z, 1000000000, !dbg !52270
    #dbg_value(i64 %i.ab, !8574, !DIExpression(), !52236)
    #dbg_value(i64 %i.ab, !8593, !DIExpression(), !52237)
    #dbg_value(i64 %i.aa, !8576, !DIExpression(), !52241)
    #dbg_value(i64 %i.aa, !8594, !DIExpression(), !52237)
  %i.ad = add i64 %i.aa, %i.ab, !dbg !52271       ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.aa, !dbg !52271
    #dbg_value(i1 %i.ae, !8597, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !52242)
  br i1 %i.ae, label %select.unfold, label %bb.n, !dbg !52272, !prof !6298

bb.n:                                             ; preds = %bb.m
    #dbg_value(i64 %i.ac, !8575, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !52238)
  %i.af = trunc nuw nsw i64 %i.ac to i32, !dbg !52270
    #dbg_value(i32 %i.af, !8575, !DIExpression(), !52238)
    #dbg_value(i32 %i.af, !52160, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52201)
    #dbg_value(i64 %i.ad, !52160, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !52201)
  %i.ag = tail call { i64, i32 } @_RNvXs_NtCsG258MDvU3F_3std4timeNtB4_7InstantINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtBM_4time8DurationE3add(i64 noundef %.sroa.0.0, i32 noundef %.sroa.3.0, i64 noundef %i.ad, i32 noundef %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159), !dbg !52273 ; 2 uses
  %i.ah = extractvalue { i64, i32 } %i.ag, 0, !dbg !52273
  %i.ai = extractvalue { i64, i32 } %i.ag, 1, !dbg !52273 ; 2 uses
    #dbg_value(i64 %i.ah, !52204, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !52207)
    #dbg_value(i32 %i.ai, !52204, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52207)
  %i.aj = icmp ult i32 %i.ai, 1000000000, !dbg !52274
  tail call void @llvm.assume(i1 %i.aj), !dbg !52274
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 3472, !dbg !52275
  store i64 %i.ah, ptr %i.ak, align 16, !dbg !52275
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3480, !dbg !52275
  store i32 %i.ai, ptr %i.al, align 8, !dbg !52275
  ret void, !dbg !52276

select.unfold:                                    ; preds = %bb.m, %_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection3pto.exit
    #dbg_value(i64 poison, !52160, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !52201)
    #dbg_value(i32 -1, !52160, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52201)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @124, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #30, !dbg !52277
  unreachable, !dbg !52277
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection23has_pending_retransmits(ptr noundef nonnull align 16 captures(address, read_provenance) %0) unnamed_addr #1 !dbg !52278 {
bb.a:
    #dbg_value(ptr %0, !52280, !DIExpression(), !52282)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2560, !dbg !52283
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4256, !dbg !52284
  %i.c = tail call noundef zeroext i1 @_RNvMs1_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB5_11Retransmits8is_empty(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(456) %i.b), !dbg !52285
  %i.d = xor i1 %i.c, true, !dbg !52286
  ret i1 %i.d, !dbg !52287
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection23on_packet_authenticated(ptr noalias nofree noundef nonnull align 16 dereferenceable(6320) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2, i8 noundef range(i8 0, 3) %3, i8 noundef range(i8 0, 4) %4, i64 noundef range(i64 0, 2) %5, i64 %6, i1 noundef zeroext %7, i1 noundef zeroext %8) unnamed_addr #1 !dbg !52293 {
bb.a:
  %i.a = alloca [21 x i8], align 1                ; 4 uses
    #dbg_value(ptr poison, !52337, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !52343)
    #dbg_value(i8 %3, !52325, !DIExpression(), !52344)
    #dbg_value(i8 %4, !52326, !DIExpression(), !52344)
    #dbg_value(i64 %5, !52327, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !52344)
    #dbg_value(i64 %6, !52327, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !52344)
    #dbg_value(ptr %0, !52323, !DIExpression(), !52344)
    #dbg_value(i64 %1, !52324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !52344)
    #dbg_value(i32 %2, !52324, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52344)
    #dbg_value(i1 %7, !52328, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !52344)
    #dbg_value(i1 %8, !52329, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !52344)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6168, !dbg !52392 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !52392, !noundef !2226
  %i.d = add i64 %i.c, 1, !dbg !52392
  store i64 %i.d, ptr %i.b, align 8, !dbg !52392
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52345), !dbg !52393
    #dbg_value(ptr %0, !8674, !DIExpression(), !52346)
    #dbg_value(i64 %1, !8675, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !52346)
    #dbg_value(i32 %2, !8675, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52346)
    #dbg_value(i8 5, !8680, !DIExpression(), !52347)
    #dbg_value(ptr %0, !8684, !DIExpression(DW_OP_plus_uconst, 6136, DW_OP_stack_value), !52348)
    #dbg_value(ptr %0, !8686, !DIExpression(DW_OP_plus_uconst, 6136, DW_OP_stack_value), !52349)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 6136, !dbg !52394 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !dbg !52394, !alias.scope !52345, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112, !dbg !52395
  %i.h = load i32, ptr %i.g, align 8, !dbg !52395, !range !6750, !noalias !52345, !noundef !2226 ; 2 uses
  %.not.i = icmp ne i32 %i.h, -1, !dbg !52395
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6120
  %i.j = load i8, ptr %i.i, align 8, !range !5448, !alias.scope !52345
  %i.k = icmp eq i8 %i.j, 2
  %or.cond.i = select i1 %.not.i, i1 %i.k, i1 false, !dbg !52396
  br i1 %or.cond.i, label %bb.b, label %_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection16reset_keep_alive.exit, !dbg !52396

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 104, !dbg !52395
  %i.m = load i64, ptr %i.l, align 8, !dbg !52397, !noalias !52345, !noundef !2226
    #dbg_value(i64 %i.m, !8676, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !52350)
    #dbg_value(i32 %i.h, !8676, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52350)
    #dbg_value(ptr %0, !8681, !DIExpression(DW_OP_plus_uconst, 3424, DW_OP_stack_value), !52351)
  %i.n = tail call { i64, i32 } @_RNvXs_NtCsG258MDvU3F_3std4timeNtB4_7InstantINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtBM_4time8DurationE3add(i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2, i64 noundef %i.m, i32 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @134), !dbg !52398, !noalias !52345 ; 2 uses
  %i.o = extractvalue { i64, i32 } %i.n, 0, !dbg !52398
  %i.p = extractvalue { i64, i32 } %i.n, 1, !dbg !52398 ; 2 uses
    #dbg_value(i64 %i.o, !8682, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !52347)
    #dbg_value(i32 %i.p, !8682, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !52347)
  %i.q = icmp ult i32 %i.p, 1000000000, !dbg !52399
  tail call void @llvm.assume(i1 %i.q), !dbg !52399
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3504, !dbg !52400
  store i64 %i.o, ptr %i.r, align 16, !dbg !52400, !alias.scope !52345
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3512, !dbg !52400
  store i32 %i.p, ptr %i.s, align 8, !dbg !52400, !alias.scope !52345
  br label %_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection16reset_keep_alive.exit, !dbg !52401

_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection16reset_keep_alive.exit: ; preds = %bb.a, %bb.b
  tail call void @_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection18reset_idle_timeout(ptr noalias nofree noundef nonnull align 16 dereferenceable(6320) %0, i64 noundef %1, i32 noundef %2, i8 noundef %3), !dbg !52402
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 6212, !dbg !52403
  store i8 1, ptr %i.t, align 4, !dbg !52403
    #dbg_value(ptr undef, !52337, !DIExpression(), !52343)
  %9 = icmp ne i8 %4, 0, !dbg !52404              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 6214, !dbg !52405 ; 2 uses
  %i.v = load i8, ptr %i.u, align 2, !dbg !52405, !range !6644, !noundef !2226
  %10 = zext i1 %9 to i8, !dbg !52405
  %11 = or i8 %i.v, %10, !dbg !52405
  store i8 %11, ptr %i.u, align 2, !dbg !52405
  br i1 %9, label %bb.c, label %_RNvXsh_NtCshovLROGBtMy_11quinn_proto5frameNtB5_9EcnCountsINtNtNtCskKLDkoKarTP_4core3ops5arith9AddAssignNtNtB7_6shared12EcnCodepointE10add_assign.exit.thread, !dbg !52406

bb.c:                                             ; preds = %_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection16reset_keep_alive.exit
    #dbg_value(i8 %4, !52330, !DIExpression(), !52352)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 912, !dbg !52407
    #dbg_value(ptr %i.w, !7432, !DIExpression(), !52353)
    #dbg_value(i8 %3, !7434, !DIExpression(), !52353)
  %i.x = zext nneg i8 %3 to i64, !dbg !52408
  %i.y = getelementptr inbounds nuw [736 x i8], ptr %i.w, i64 %i.x, !dbg !52409 ; 4 uses
    #dbg_value(ptr %i.y, !52331, !DIExpression(), !52354)
    #dbg_value(ptr %i.y, !52357, !DIExpression(DW_OP_plus_uconst, 656, DW_OP_stack_value), !52363)
    #dbg_value(i8 %4, !52361, !DIExpression(), !52363)
  switch i8 %4, label %default.unreachable [
    i8 2, label %bb.d
    i8 1, label %bb.e
    i8 3, label %bb.f
  ], !dbg !52410

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 656, !dbg !52411 ; 2 uses
    #dbg_value(ptr %i.z, !52357, !DIExpression(), !52363)
  %i.aa = load i64, ptr %i.z, align 16, !dbg !52412, !alias.scope !52364, !noundef !2226
  %i.ab = add i64 %i.aa, 1, !dbg !52412
  store i64 %i.ab, ptr %i.z, align 16, !dbg !52412, !alias.scope !52364
  br label %_RNvXsh_NtCshovLROGBtMy_11quinn_proto5frameNtB5_9EcnCountsINtNtNtCskKLDkoKarTP_4core3ops5arith9AddAssignNtNtB7_6shared12EcnCodepointE10add_assign.exit.thread, !dbg !52413

bb.e:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 664, !dbg !52414 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !52414, !alias.scope !52364, !noundef !2226
  %i.ae = add i64 %i.ad, 1, !dbg !52414
  store i64 %i.ae, ptr %i.ac, align 8, !dbg !52414, !alias.scope !52364
  br label %_RNvXsh_NtCshovLROGBtMy_11quinn_proto5frameNtB5_9EcnCountsINtNtNtCskKLDkoKarTP_4core3ops5arith9AddAssignNtNtB7_6shared12EcnCodepointE10add_assign.exit.thread, !dbg !52415

_RNvXsh_NtCshovLROGBtMy_11quinn_proto5frameNtB5_9EcnCountsINtNtNtCskKLDkoKarTP_4core3ops5arith9AddAssignNtNtB7_6shared12EcnCodepointE10add_assign.exit.thread: ; preds = %bb.e, %bb.d, %bb.f, %_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection16reset_keep_alive.exit
  %i.af = trunc nuw i64 %5 to i1, !dbg !52416
  br i1 %i.af, label %bb.g, label %bb.h, !dbg !52416

bb.f:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 672, !dbg !52417 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 16, !dbg !52417, !alias.scope !52364, !noundef !2226
  %i.ai = add i64 %i.ah, 1, !dbg !52417
  store i64 %i.ai, ptr %i.ag, align 16, !dbg !52417, !alias.scope !52364
    #dbg_value(ptr %i.y, !8664, !DIExpression(), !52365)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 152, !dbg !52418
  store i8 1, ptr %i.aj, align 8, !dbg !52418, !alias.scope !52366
  br label %_RNvXsh_NtCshovLROGBtMy_11quinn_proto5frameNtB5_9EcnCountsINtNtNtCskKLDkoKarTP_4core3ops5arith9AddAssignNtNtB7_6shared12EcnCodepointE10add_assign.exit.thread, !dbg !52419

bb.g:                                             ; preds = %_RNvXsh_NtCshovLROGBtMy_11quinn_proto5frameNtB5_9EcnCountsINtNtNtCskKLDkoKarTP_4core3ops5arith9AddAssignNtNtB7_6shared12EcnCodepointE10add_assign.exit.thread
    #dbg_value(i64 %6, !52332, !DIExpression(), !52367)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 5464, !dbg !52420 ; 2 uses
  %.val = load i64, ptr %i.ak, align 8, !dbg !52421, !range !5627, !noundef !2226
    #dbg_value(ptr poison, !8660, !DIExpression(), !52368)
    #dbg_value(ptr poison, !8662, !DIExpression(), !52369)
  %i.al = icmp eq i64 %.val, -1, !dbg !52422
  br i1 %i.al, label %bb.i, label %bb.j, !dbg !52420

bb.h:                                             ; preds = %_RNvXsh_NtCshovLROGBtMy_11quinn_proto5frameNtB5_9EcnCountsINtNtNtCskKLDkoKarTP_4core3ops5arith9AddAssignNtNtB7_6shared12EcnCodepointE10add_assign.exit.thread, %bb.o
  ret void, !dbg !52423

bb.i:                                             ; preds = %bb.g
    #dbg_value(ptr %0, !52371, !DIExpression(DW_OP_plus_uconst, 1328, DW_OP_stack_value), !52374)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1328, !dbg !52424
  %i.an = load ptr, ptr %i.am, align 16, !dbg !52424, !noundef !2226
  %.not13.a = icmp ne ptr %i.an, null, !dbg !52424
  %i.ao = icmp eq i8 %3, 1
  %or.cond = and i1 %i.ao, %.not13.a, !dbg !52425
  br i1 %or.cond, label %bb.l, label %bb.k, !dbg !52425

bb.j:                                             ; preds = %bb.k, %bb.m, %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 912, !dbg !52426
    #dbg_value(ptr %i.ap, !7432, !DIExpression(), !52375)
    #dbg_value(i8 %3, !7434, !DIExpression(), !52375)
  %i.aq = zext nneg i8 %3 to i64, !dbg !52427
  %i.ar = getelementptr inbounds nuw [736 x i8], ptr %i.ap, i64 %i.aq, !dbg !52428 ; 2 uses
    #dbg_value(ptr %i.ar, !52334, !DIExpression(), !52376)
  tail call void @_RNvMs8_NtNtCshovLROGBtMy_11quinn_proto10connection6spacesNtB5_11PendingAcks10insert_one(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.ar, i64 noundef %6, i64 noundef %1, i32 noundef %2), !dbg !52429
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 600, !dbg !52430 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !dbg !52430, !noundef !2226
  %.not = icmp ult i64 %6, %i.at, !dbg !52431
  br i1 %.not, label %bb.o, label %bb.n, !dbg !52431

bb.k:                                             ; preds = %bb.l, %bb.i
    #dbg_value(ptr %0, !52377, !DIExpression(DW_OP_plus_uconst, 4192, DW_OP_stack_value), !52380)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4192, !dbg !52432
  %i.av = load ptr, ptr %i.au, align 16, !dbg !52432, !noundef !2226
  %.not14 = icmp ne ptr %i.av, null, !dbg !52432
  %brmerge.not = and i1 %8, %.not14, !dbg !52433
  br i1 %brmerge.not, label %bb.m, label %bb.j, !dbg !52433

bb.l:                                             ; preds = %bb.i
  tail call fastcc void @_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection13discard_space(ptr noalias nofree noundef align 16 dereferenceable(6320) %0, i64 noundef %1, i32 noundef %2, i8 noundef 0), !dbg !52434
  br label %bb.k, !dbg !52434

bb.m:                                             ; preds = %bb.k
  tail call fastcc void @_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection21set_key_discard_timer(ptr noalias nofree noundef align 16 dereferenceable(6320) %0, i64 noundef %1, i32 noundef %2, i8 noundef %3), !dbg !52435
  br label %bb.j, !dbg !52435

bb.n:                                             ; preds = %bb.j
  store i64 %6, ptr %i.as, align 8, !dbg !52436
  %.val17 = load i64, ptr %i.ak, align 8, !dbg !52437, !range !5627, !noundef !2226
    #dbg_value(ptr poison, !8753, !DIExpression(), !52381)
    #dbg_value(ptr poison, !8755, !DIExpression(), !52382)
  %i.aw = icmp ne i64 %.val17, -1, !dbg !52438
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 6210, !dbg !52439
  %i.ay = xor i1 %7, %i.aw, !dbg !52439
  %i.az = zext i1 %i.ay to i8, !dbg !52439
  store i8 %i.az, ptr %i.ax, align 2, !dbg !52439
  br label %bb.o, !dbg !52440

bb.o:                                             ; preds = %bb.j, %bb.n
    #dbg_value(ptr %0, !52383, !DIExpression(DW_OP_plus_uconst, 6136, DW_OP_stack_value), !52386)
    #dbg_value(ptr %0, !52387, !DIExpression(DW_OP_plus_uconst, 6136, DW_OP_stack_value), !52390)
  %i.ba = load ptr, ptr %i.e, align 8, !dbg !52441, !nonnull !2226, !noundef !2226
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 224, !dbg !52385
  %i.bc = xor i1 %8, true, !dbg !52442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !52443
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 6276, !dbg !52443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.a, ptr noundef nonnull align 4 dereferenceable(21) %i.bd, i64 21, i1 false), !dbg !52443
  call void @_RNvMs_NtNtCshovLROGBtMy_11quinn_proto10connection4qlogNtB4_8QlogSink20emit_packet_received(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bb, i64 noundef %6, i8 noundef %3, i1 noundef zeroext %i.bc, i64 noundef %1, i32 noundef %2, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(21) %i.a), !dbg !52444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !52445
  br label %bb.h, !dbg !52423
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCshovLROGBtMy_11quinn_proto10connectionNtB2_10Connection24process_decrypted_packet(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 16 dereferenceable(6320) %1, i64 noundef %2, i32 noundef range(i32 0, 1000000000) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(32) %4, i64 noundef range(i64 0, 2) %5, i64 %6, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(152) %7) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !52594 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [24 x i8], align 8          ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
    #dbg_declare(ptr poison, !53530, !DIExpression(DW_OP_LLVM_fragment, 64, 384), !53561)
    #dbg_declare(ptr poison, !53530, !DIExpression(DW_OP_LLVM_fragment, 448, 2368), !53561)
    #dbg_declare(ptr poison, !53563, !DIExpression(DW_OP_LLVM_fragment, 64, 384), !53573)
    #dbg_declare(ptr poison, !53563, !DIExpression(DW_OP_LLVM_fragment, 448, 2368), !53573)
    #dbg_declare(ptr poison, !53574, !DIExpression(DW_OP_LLVM_fragment, 64, 384), !53605)
    #dbg_declare(ptr poison, !53574, !DIExpression(DW_OP_LLVM_fragment, 448, 2368), !53605)
    #dbg_declare(ptr poison, !53555, !DIExpression(DW_OP_LLVM_fragment, 64, 384), !53608)
    #dbg_declare(ptr poison, !53555, !DIExpression(DW_OP_LLVM_fragment, 448, 2368), !53608)
    #dbg_declare(ptr poison, !53609, !DIExpression(DW_OP_LLVM_fragment, 64, 384), !53619)
    #dbg_declare(ptr poison, !53609, !DIExpression(DW_OP_LLVM_fragment, 448, 2368), !53619)
    #dbg_declare(ptr poison, !53600, !DIExpression(DW_OP_LLVM_fragment, 64, 384), !53621)
    #dbg_declare(ptr poison, !53600, !DIExpression(DW_OP_LLVM_fragment, 448, 2368), !53621)
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
    #dbg_value(ptr poison, !53622, !DIExpression(), !53628)
    #dbg_value(ptr poison, !53629, !DIExpression(), !53631)
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
    #dbg_value(ptr poison, !53632, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !53636)
    #dbg_value(ptr poison, !53638, !DIExpression(), !53658)
    #dbg_value(ptr poison, !53677, !DIExpression(), !53707)
    #dbg_value(ptr poison, !53701, !DIExpression(), !53708)
  %i.u = alloca [152 x i8], align 8               ; 4 uses
  %i.v = alloca [48 x i8], align 8                ; 6 uses
  %i.w = alloca [48 x i8], align 8                ; 6 uses
  %i.x = alloca [352 x i8], align 8               ; 4 uses
  %.sroa.6188 = alloca [48 x i8], align 8         ; 3 uses
  %.sroa.4194 = alloca [296 x i8], align 8        ; 2 uses
    #dbg_declare(ptr %.sroa.6188, !53569, !DIExpression(DW_OP_LLVM_fragment, 64, 384), !53709)
    #dbg_declare(ptr %.sroa.4194, !53569, !DIExpression(DW_OP_LLVM_fragment, 448, 2368), !53709)
  %i.y = alloca [352 x i8], align 8               ; 7 uses
  %.sroa.7182 = alloca [48 x i8], align 8         ; 6 uses
    #dbg_declare(ptr %.sroa.7182, !53554, !DIExpression(DW_OP_LLVM_fragment, 64, 384), !53710)
    #dbg_declare(ptr poison, !53554, !DIExpression(DW_OP_LLVM_fragment, 448, 2368), !53710)
  %.sroa.6176 = alloca [48 x i8], align 8         ; 5 uses
  %i.z = alloca [152 x i8], align 8               ; 4 uses
  %i.aa = alloca [48 x i8], align 8               ; 6 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
    #dbg_value(ptr poison, !53622, !DIExpression(), !53715)
    #dbg_value(ptr poison, !53629, !DIExpression(), !53716)
  %i.af = alloca [24 x i8], align 8               ; 7 uses
  %i.ag = alloca [32 x i8], align 8               ; 7 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [32 x i8], align 8               ; 7 uses
    #dbg_value(ptr poison, !53632, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !53719)
  %i.ak = alloca [72 x i8], align 8               ; 9 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [16 x i8], align 8               ; 5 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [32 x i8], align 8               ; 7 uses
    #dbg_value(ptr poison, !53622, !DIExpression(), !53724)
end_hunk_0

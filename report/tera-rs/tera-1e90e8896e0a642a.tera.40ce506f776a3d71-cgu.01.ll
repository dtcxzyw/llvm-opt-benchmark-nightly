Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.01?download=true
inline.NumInlined: 2035
inline.NumDeleted: 262
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss0_0Cs5yXxDE1DkoT_4tera:bb.a
_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs5yXxDE1DkoT_4tera.exit.i.us.preheader: ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us), "nonnull"(ptr %.sroa.546.0.copyload.i.us) ]
  br label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs5yXxDE1DkoT_4tera.exit.i.us, !dbg !71375

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs5yXxDE1DkoT_4tera.exit.i.us
  %i.p = add nuw i64 %.sroa.647.0.i.us34, 1, !dbg !71376 ; 2 uses
    #dbg_value(i64 %i.p, !71270, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !71143)
    #dbg_value(i64 %i.p, !71270, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !71143)
    #dbg_value(ptr undef, !71312, !DIExpression(), !71130)
    #dbg_value(ptr undef, !71293, !DIExpression(), !71129)
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us, !dbg !71374
  br i1 %exitcond.not.i.us, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread21, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs5yXxDE1DkoT_4tera.exit.i.us, !dbg !71374

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs5yXxDE1DkoT_4tera.exit.i.us: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs5yXxDE1DkoT_4tera.exit.i.us.preheader, %bb.b
  %.sroa.647.0.i.us34 = phi i64 [ %i.p, %bb.b ], [ %.sroa.647.0.copyload.i.us, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs5yXxDE1DkoT_4tera.exit.i.us.preheader ] ; 3 uses
    #dbg_value(i64 %.sroa.647.0.i.us34, !71270, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !71143)
    #dbg_value(i64 %.sroa.647.0.i.us34, !71309, !DIExpression(), !71144)
    #dbg_value(i64 %.sroa.647.0.i.us34, !71270, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64), !71143)
    #dbg_value(ptr poison, !71336, !DIExpression(), !71147)
    #dbg_value(i64 %.sroa.647.0.i.us34, !71339, !DIExpression(), !71147)
    #dbg_value(ptr poison, !71336, !DIExpression(), !71149)
    #dbg_value(i64 %.sroa.647.0.i.us34, !71339, !DIExpression(), !71149)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.647.0.i.us34, !dbg !71377
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.546.0.copyload.i.us, i64 %.sroa.647.0.i.us34, !dbg !71378
    #dbg_value(i64 %.sroa.647.0.i.us34, !71270, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64), !71143)
  %i.s = load i8, ptr %i.q, align 1, !dbg !71379, !noundef !1852
    #dbg_value(i8 %i.s, !71271, !DIExpression(), !71153)
  %i.t = load i8, ptr %i.r, align 1, !dbg !71380, !noundef !1852
    #dbg_value(i8 %i.t, !71272, !DIExpression(), !71153)
  %.not45.i.us = icmp eq i8 %i.s, %i.t, !dbg !71375
  br i1 %.not45.i.us, label %bb.b, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us, !dbg !71375

_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs5yXxDE1DkoT_4tera.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !71381
    #dbg_value(i16 %i.k, !71197, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !71239)
  %i.u = shl nuw i16 1, %i.k, !dbg !71382
  %i.v = xor i16 %i.u, -1, !dbg !71383
  %i.w = and i16 %.sroa.0.024.us, %i.v, !dbg !71384 ; 2 uses
    #dbg_value(i16 %i.w, !71196, !DIExpression(), !71202)
    #dbg_value(i16 %i.w, !71192, !DIExpression(), !71201)
  %i.x = icmp eq i16 %i.w, 0, !dbg !71385
  br i1 %i.x, label %.loopexit, label %.preheader.split.us, !dbg !71385

.preheader.split:                                 ; preds = %.preheader, %bb.d
  %.sroa.0.024 = phi i16 [ %i.al, %bb.d ], [ %2, %.preheader ] ; 2 uses
    #dbg_value(i16 %.sroa.0.024, !71196, !DIExpression(), !71202)
    #dbg_value(i16 %.sroa.0.024, !71231, !DIExpression(), !71237)
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.024, i1 true), !dbg !71365 ; 2 uses
    #dbg_value(i16 %i.y, !71197, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !71239)
  %i.z = zext nneg i16 %i.y to i64, !dbg !71366
    #dbg_value(!DIArgList(i64 %1, i64 %i.z), !71198, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_stack_value), !71241)
    #dbg_value(!DIArgList(i64 %1, i64 %i.z), !71242, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_stack_value), !71246)
    #dbg_value(!DIArgList(i64 %1, i64 %i.z), !71247, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_stack_value), !71253)
    #dbg_value(!DIArgList(i64 %1, i64 %i.z), !71203, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !71256)
    #dbg_value(!DIArgList(i64 %1, i64 %i.z), !71225, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_stack_value), !71258)
    #dbg_value(ptr %i.b, !71243, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !71246)
    #dbg_value(ptr %i.b, !71250, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !71253)
    #dbg_value(ptr %i.b, !71206, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !71256)
    #dbg_value(ptr %i.b, !71224, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !71258)
    #dbg_value(i64 poison, !71243, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !71246)
    #dbg_value(i64 poison, !71250, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !71253)
    #dbg_value(i64 poison, !71206, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !71256)
    #dbg_value(i64 poison, !71224, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !71258)
    #dbg_value(i64 poison, !71203, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !71256)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !71207, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !71260)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !71226, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !71258)
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.z, !dbg !71367
  %i.ab = getelementptr i8, ptr %i.aa, i64 1, !dbg !71367 ; 3 uses
    #dbg_value(ptr %i.ab, !71206, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !71214)
    #dbg_value(ptr %i.ab, !71224, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !71230)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !71206, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !71214)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !71224, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !71230)
    #dbg_value(i64 %i.f, !71203, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !71214)
    #dbg_value(i64 %i.f, !71226, !DIExpression(), !71230)
    #dbg_value(ptr %i.ab, !71199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !71262)
    #dbg_value(i64 %i.f, !71199, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !71262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71263), !dbg !71368
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71264), !dbg !71368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !71369
    #dbg_value(ptr poison, !71293, !DIExpression(), !71129)
    #dbg_value(ptr poison, !71312, !DIExpression(), !71130)
    #dbg_value(ptr %i.ab, !71265, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !71131)
    #dbg_value(i64 %i.f, !71265, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !71131)
    #dbg_value(ptr %i.g, !71266, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !71131)
    #dbg_value(i64 %i.f, !71266, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !71131)
    #dbg_value(i64 4, !71315, !DIExpression(), !71134)
    #dbg_value(i64 4, !71315, !DIExpression(), !71136)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.f, !dbg !71370
    #dbg_value(ptr %i.ab, !71273, !DIExpression(), !71154)
    #dbg_value(ptr %i.ab, !71316, !DIExpression(), !71134)
    #dbg_value(ptr %i.g, !71274, !DIExpression(), !71154)
    #dbg_value(ptr %i.g, !71316, !DIExpression(), !71136)
    #dbg_value(ptr %i.ab, !71316, !DIExpression(), !71156)
    #dbg_value(i64 %i.f, !71317, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value), !71156)
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4, !dbg !71386 ; 3 uses
    #dbg_value(ptr %i.ad, !71275, !DIExpression(), !71157)
    #dbg_value(ptr %i.g, !71316, !DIExpression(), !71159)
    #dbg_value(i64 %i.f, !71317, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value), !71159)
    #dbg_value(ptr %i.j, !71276, !DIExpression(), !71157)
  %i.ae = icmp ult ptr %i.ab, %i.ad, !dbg !71387
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit, !dbg !71387

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.04.054.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.08.053.i = phi ptr [ %i.ag, %bb.c ], [ %i.g, %.preheader.split ] ; 2 uses
    #dbg_value(ptr %.sroa.04.054.i, !71316, !DIExpression(), !71134)
    #dbg_value(ptr %.sroa.08.053.i, !71316, !DIExpression(), !71136)
    #dbg_value(ptr %.sroa.04.054.i, !71343, !DIExpression(), !71162)
    #dbg_value(ptr %.sroa.04.054.i, !71349, !DIExpression(), !71165)
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.054.i, align 1, !dbg !71388, !alias.scope !71263
    #dbg_value(i32 %.sroa.011.0.copyload.i, !71277, !DIExpression(), !71169)
    #dbg_value(ptr %.sroa.08.053.i, !71343, !DIExpression(), !71171)
    #dbg_value(ptr %.sroa.08.053.i, !71349, !DIExpression(), !71173)
  %.sroa.012.0.copyload.i = load i32, ptr %.sroa.08.053.i, align 1, !dbg !71389, !alias.scope !71264
    #dbg_value(i32 %.sroa.012.0.copyload.i, !71278, !DIExpression(), !71175)
  %.not.i = icmp eq i32 %.sroa.011.0.copyload.i, %.sroa.012.0.copyload.i, !dbg !71390
  br i1 %.not.i, label %bb.c, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread.loopexit23, !dbg !71390

bb.c:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.054.i, i64 4, !dbg !71391 ; 2 uses
    #dbg_value(ptr %i.af, !71273, !DIExpression(), !71154)
    #dbg_value(ptr %i.af, !71316, !DIExpression(), !71134)
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.053.i, i64 4, !dbg !71392
    #dbg_value(ptr %i.ag, !71316, !DIExpression(), !71136)
    #dbg_value(ptr %i.ag, !71274, !DIExpression(), !71154)
  %i.ah = icmp ult ptr %i.af, %i.ad, !dbg !71387
  br i1 %i.ah, label %.lr.ph.i, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit, !dbg !71387

_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread21: ; preds = %.preheader.split.us, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !71381
  br label %.loopexit, !dbg !71368

_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread.loopexit23: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !71381
  br label %bb.d, !dbg !71368

_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit: ; preds = %bb.c, %.preheader.split
    #dbg_value(ptr %i.ad, !71343, !DIExpression(), !71177)
    #dbg_value(ptr %i.ad, !71349, !DIExpression(), !71179)
  %.sroa.013.0.copyload.i = load i32, ptr %i.ad, align 1, !dbg !71393, !alias.scope !71263
    #dbg_value(i32 %.sroa.013.0.copyload.i, !71279, !DIExpression(), !71181)
    #dbg_value(ptr %i.j, !71343, !DIExpression(), !71183)
    #dbg_value(ptr %i.j, !71349, !DIExpression(), !71185)
  %.sroa.014.0.copyload.i = load i32, ptr %i.j, align 1, !dbg !71394, !alias.scope !71264
    #dbg_value(i32 %.sroa.014.0.copyload.i, !71280, !DIExpression(), !71187)
  %i.ai = icmp eq i32 %.sroa.013.0.copyload.i, %.sroa.014.0.copyload.i, !dbg !71395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !71381
  br i1 %i.ai, label %.loopexit, label %bb.d, !dbg !71368

.loopexit:                                        ; preds = %bb.d, %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit, %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us, %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread21, %bb.a
  %.sroa.03.0 = phi i1 [ true, %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread21 ], [ false, %bb.a ], [ false, %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ true, %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit ], [ false, %bb.d ], !dbg !71201
  ret i1 %.sroa.03.0, !dbg !71396

bb.d:                                             ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread.loopexit23, %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit
    #dbg_value(i16 %i.y, !71197, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !71239)
  %i.aj = shl nuw i16 1, %i.y, !dbg !71382
  %i.ak = xor i16 %i.aj, -1, !dbg !71383
  %i.al = and i16 %.sroa.0.024, %i.ak, !dbg !71384 ; 2 uses
    #dbg_value(i16 %i.al, !71196, !DIExpression(), !71202)
    #dbg_value(i16 %i.al, !71192, !DIExpression(), !71201)
  %i.am = icmp eq i16 %i.al, 0, !dbg !71385
  br i1 %i.am, label %.loopexit, label %.preheader.split, !dbg !71385
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB2_14VirtualMachine12render_block(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !71402 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !71470, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !71475)
    #dbg_declare(ptr poison, !71472, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !71476)
  %i.c = alloca [24 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !71467, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !71477)
    #dbg_declare(ptr poison, !71478, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !71483)
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.7.sroa.0 = alloca [16 x i8], align 8     ; 7 uses
    #dbg_declare(ptr %.sroa.7.sroa.0, !71471, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !71484)
  %.sroa.6.sroa.0 = alloca [16 x i8], align 8     ; 7 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
    #dbg_value(ptr %1, !71460, !DIExpression(), !71485)
    #dbg_value(ptr %2, !71461, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !71485)
    #dbg_value(i64 %3, !71461, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !71485)
    #dbg_value(ptr %4, !71462, !DIExpression(), !71485)
    #dbg_value(ptr %5, !71463, !DIExpression(), !71485)
    #dbg_declare(ptr %i.f, !71464, !DIExpression(), !71486)
    #dbg_declare(ptr %i.e, !71487, !DIExpression(), !71492)
    #dbg_declare(ptr poison, !71465, !DIExpression(), !71493)
    #dbg_declare(ptr poison, !71494, !DIExpression(), !71499)
    #dbg_declare(ptr poison, !71489, !DIExpression(), !71500)
    #dbg_declare(ptr poison, !71495, !DIExpression(), !71501)
    #dbg_declare(ptr %i.b, !71479, !DIExpression(), !71502)
    #dbg_value(i64 0, !71503, !DIExpression(), !71513)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !71548
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !71549
  %i.h = load ptr, ptr %i.g, align 8, !dbg !71549, !nonnull !1852, !align !3836, !noundef !1852
  %i.i = getelementptr i8, ptr %i.h, i64 648, !dbg !71550
  %.val = load i64, ptr %i.i, align 8, !dbg !71550, !noundef !1852
    #dbg_value(ptr poison, !7870, !DIExpression(), !71421)
    #dbg_value(i64 1, !7876, !DIExpression(), !71425)
  %i.j = shl i64 %.val, 1, !dbg !71551
    #dbg_value(i64 %i.j, !7887, !DIExpression(), !71426)
    #dbg_value(i64 %i.j, !7881, !DIExpression(), !71427)
    #dbg_value(i64 %i.j, !7877, !DIExpression(), !71425)
  %6 = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 1), !dbg !71552 ; 2 uses
    #dbg_value(i64 %6, !7882, !DIExpression(), !71428)
    #dbg_value(i64 %6, !7890, !DIExpression(), !71430)
    #dbg_value(i64 %6, !7894, !DIExpression(), !71432)
  %7 = icmp sgt i64 %6, -1, !dbg !71553
  br i1 %7, label %bb.b, label %_RNvMNtCs5yXxDE1DkoT_4tera8templateNtB2_8Template9size_hint.exit, !dbg !71553

bb.b:                                             ; preds = %bb.a
  %i.k = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %6, i1 false), !dbg !71554
  %i.l = sub nuw nsw i64 64, %i.k, !dbg !71555
    #dbg_value(i64 %i.l, !7883, !DIExpression(), !71433)
  %i.m = shl nuw i64 1, %i.l, !dbg !71556
    #dbg_value(i64 %i.m, !7888, !DIExpression(), !71434)
  br label %_RNvMNtCs5yXxDE1DkoT_4tera8templateNtB2_8Template9size_hint.exit, !dbg !71557

_RNvMNtCs5yXxDE1DkoT_4tera8templateNtB2_8Template9size_hint.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i64 [ %i.m, %bb.b ], [ 0, %bb.a ], !dbg !71558 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.i, !7888, !DIExpression(), !71434)
    #dbg_value(i64 %.sroa.0.0.i, !71514, !DIExpression(), !71528)
    #dbg_value(i64 %.sroa.0.0.i, !71516, !DIExpression(), !71529)
    #dbg_value(i64 %.sroa.0.0.i, !71519, !DIExpression(), !71530)
    #dbg_value(i64 %.sroa.0.0.i, !71522, !DIExpression(), !71531)
    #dbg_value(i64 %.sroa.0.0.i, !71505, !DIExpression(), !71513)
    #dbg_value(i64 1, !71524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !71531)
    #dbg_value(i64 1, !71506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !71513)
    #dbg_value(i64 1, !71524, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !71531)
    #dbg_value(i64 1, !71506, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !71513)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !71559
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !71559
  %i.n = load i64, ptr %i.c, align 8, !dbg !71559, !range !5358, !noundef !1852
  %i.o = trunc nuw i64 %i.n to i1, !dbg !71560
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !71531
  %i.q = load i64, ptr %i.p, align 8, !dbg !71531, !range !5359, !noundef !1852 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !71531 ; 2 uses
  br i1 %i.o, label %bb.c, label %bb.d, !dbg !71560, !prof !5306

bb.c:                                             ; preds = %_RNvMNtCs5yXxDE1DkoT_4tera8templateNtB2_8Template9size_hint.exit
  %i.s = load i64, ptr %i.r, align 8, !dbg !71561
    #dbg_value(i64 %i.q, !71526, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !71532)
    #dbg_value(i64 %i.s, !71526, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !71532)
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #27, !dbg !71562
  unreachable, !dbg !71562

bb.d:                                             ; preds = %_RNvMNtCs5yXxDE1DkoT_4tera8templateNtB2_8Template9size_hint.exit
  %i.t = load ptr, ptr %i.r, align 8, !dbg !71563, !nonnull !1852, !noundef !1852
    #dbg_value(i64 %i.q, !71525, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !71533)
    #dbg_value(ptr %i.t, !71525, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !71533)
    #dbg_value(ptr poison, !71504, !DIExpression(), !71534)
  %i.u = icmp ule i64 %.sroa.0.0.i, %i.q, !dbg !71564
    #dbg_value(i1 true, !71535, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !71538)
  tail call void @llvm.assume(i1 %i.u), !dbg !71565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !71566
  store i64 %i.q, ptr %i.f, align 8, !dbg !71567
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !71567
  store ptr %i.t, ptr %i.v, align 8, !dbg !71567
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !71567
  store i64 0, ptr %i.w, align 8, !dbg !71567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !71491
  invoke void @_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine9render_toQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.e unwind label %bb.q, !dbg !71568

bb.e:                                             ; preds = %bb.d
  %i.x = load i8, ptr %i.e, align 8, !dbg !71569, !range !3904, !noundef !1852
  %.not = icmp eq i8 %i.x, -1, !dbg !71569
  br i1 %.not, label %bb.i, label %bb.f, !dbg !71570

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false), !dbg !71571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !71572
    #dbg_value(ptr %i.f, !6400, !DIExpression(), !71437)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit unwind label %bb.g, !dbg !71573

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.f, !6403, !DIExpression(), !71439)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.h, !dbg !71574

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !71573
  unreachable, !dbg !71573

common.resume:                                    ; preds = %bb.q, %bb.j, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.g ], [ %i.ae, %bb.j ], [ %i.am, %bb.q ]
  resume { ptr, i32 } %common.resume.op, !dbg !71485

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.f
    #dbg_value(ptr %i.f, !6403, !DIExpression(), !71441)
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f), !dbg !71575
  br label %bb.p, !dbg !71576

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !71572
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.0), !dbg !71474
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.0), !dbg !71474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !71577
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !71577
  call void @llvm.experimental.noalias.scope.decl(metadata !71539), !dbg !71474
  call void @llvm.experimental.noalias.scope.decl(metadata !71540), !dbg !71474
    #dbg_declare(ptr %i.d, !7143, !DIExpression(), !71446)
    #dbg_declare(ptr poison, !7147, !DIExpression(), !71447)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !71578, !noalias !71541
    #dbg_value(ptr %i.d, !7149, !DIExpression(), !71449)
    #dbg_value(ptr %i.d, !7151, !DIExpression(), !71451)
    #dbg_value(ptr %i.d, !7153, !DIExpression(), !71453)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !71579 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !71579, !alias.scope !71540, !nonnull !1852, !noundef !1852
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !71580
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !71580, !alias.scope !71540, !noundef !1852 ; 2 uses
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ad)
          to label %bb.k unwind label %bb.j, !dbg !71578, !noalias !71541

bb.j:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #24
          to label %common.resume unwind label %bb.l, !dbg !71581, !noalias !71539

bb.k:                                             ; preds = %bb.i
  %i.af = load i64, ptr %i.a, align 8, !dbg !71578, !range !5358, !noalias !71541, !noundef !1852
  %i.ag = trunc nuw i64 %i.af to i1, !dbg !71582
  br i1 %i.ag, label %bb.m, label %.thread, !dbg !71582

.thread:                                          ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !dbg !71583, !alias.scope !71541
    #dbg_value(i64 %i.ad, !71471, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !71542)
    #dbg_value(i64 -1, !71471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !71542)
    #dbg_value(i64 poison, !71471, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !71542)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !71584, !noalias !71541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !71585
  br label %bb.o, !dbg !71586

bb.l:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !71587, !noalias !71539
  unreachable, !dbg !71587

bb.m:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !71588 ; 2 uses
  %i.aj = load <2 x i64>, ptr %i.ai, align 8, !dbg !71588, !noalias !71541
  %i.ak = load i64, ptr %i.ai, align 8, !dbg !71588, !noalias !71541
  %.sroa.034.0.copyload = load i64, ptr %i.d, align 8, !dbg !71589, !noalias !71539 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !dbg !71589, !noalias !1852
    #dbg_value(i64 %.sroa.034.0.copyload, !71471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !71542)
    #dbg_value(i64 %i.ak, !71471, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !71542)
    #dbg_value(i64 poison, !71471, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !71542)
    #dbg_value(i64 %.sroa.034.0.copyload, !71471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !71542)
    #dbg_value(i64 poison, !71471, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !71542)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !71584, !noalias !71541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !71585
  %.not33 = icmp eq i64 %.sroa.034.0.copyload, -1, !dbg !71590
  br i1 %.not33, label %bb.o, label %bb.n, !dbg !71586

bb.n:                                             ; preds = %bb.m
    #dbg_value(i64 %.sroa.034.0.copyload, !71470, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !71543)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, i64 16, i1 false), !dbg !71591
    #dbg_value(i64 poison, !71470, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !71543)
    #dbg_value(i64 poison, !71470, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !71543)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.0), !dbg !71592
    #dbg_value(i64 %.sroa.034.0.copyload, !71467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !71544)
    #dbg_value(i64 %.sroa.034.0.copyload, !71478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !71545)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !71593
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !71593
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, i64 16, i1 false), !dbg !71592
    #dbg_value(i64 poison, !71478, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !71545)
    #dbg_value(i64 poison, !71467, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !71544)
    #dbg_value(i64 poison, !71467, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !71544)
    #dbg_value(i64 poison, !71478, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !71545)
  store i64 %.sroa.034.0.copyload, ptr %i.b, align 8, !dbg !71593
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !71593
  store <2 x i64> %i.aj, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !dbg !71593
  call void @_RNvXs4_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCsgCecv3eZDcN_5alloc6string13FromUtf8ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.b), !dbg !71594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !71595
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0), !dbg !71596
  br label %bb.p, !dbg !71597

bb.o:                                             ; preds = %.thread, %bb.m
  %.sroa.7.sroa.7.0 = phi i64 [ %i.ak, %bb.m ], [ %i.ad, %.thread ], !dbg !71598
    #dbg_value(i64 %.sroa.7.sroa.7.0, !71471, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !71542)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, i64 16, i1 false), !dbg !71599
    #dbg_value(i64 %.sroa.7.sroa.7.0, !71472, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !71547)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.0), !dbg !71592
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !71600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, i64 16, i1 false), !dbg !71474
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !71600
  store i64 %.sroa.7.sroa.7.0, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !71600
  store i8 -1, ptr %0, align 8, !dbg !71600
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0), !dbg !71596
  br label %bb.p, !dbg !71601

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !71576
  ret void, !dbg !71601

bb.q:                                             ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #24
          to label %common.resume unwind label %bb.r, !dbg !71576

bb.r:                                             ; preds = %bb.q
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !71602
end_hunk_0
begin_hunk_1_@_RNvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB2_14VirtualMachine21undefined_field_error:bb.a
  invoke void @_RINvNtCsgCecv3eZDcN_5alloc3str17join_generic_copyehNtNtB4_6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.p, i64 noundef %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef 2)
          to label %bb.e unwind label %bb.d, !dbg !72842

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %i.g, align 8, !dbg !72843
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !72843
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !72843
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !72843
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !72843
  br label %bb.i, !dbg !72821

.body:                                            ; preds = %bb.m, %bb.g, %bb.d, %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.w, %bb.k ], [ %i.s, %bb.g ], [ %i.q, %bb.d ], [ %i.x, %bb.m ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #24
          to label %common.resume unwind label %bb.j, !dbg !72844

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit.i54, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit.i, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !72845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !72846
    #dbg_value(ptr %i.e, !72764, !DIExpression(), !72822)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !72847
  store ptr %i.e, ptr %i.d, align 8, !dbg !72847
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !72847
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !72847
    #dbg_value(ptr @114, !72823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !72827)
    #dbg_value(ptr %i.d, !72823, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !72827)
    #dbg_value(ptr null, !6195, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !72724)
    #dbg_value(i64 undef, !6195, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !72724)
    #dbg_value(ptr poison, !6209, !DIExpression(), !72724)
    #dbg_value(ptr poison, !6213, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !72726)
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @114, ptr noundef nonnull %i.d)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit unwind label %bb.f, !dbg !72848

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #24
          to label %.body unwind label %bb.j, !dbg !72840

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !72840
    #dbg_value(ptr %i.e, !7156, !DIExpression(), !72728)
    #dbg_value(ptr %i.e, !6400, !DIExpression(), !72730)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit.i unwind label %bb.g, !dbg !72849

bb.g:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.e, !6403, !DIExpression(), !72732)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.h, !dbg !72850

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !72849
  unreachable, !dbg !72849

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit.i: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit
    #dbg_value(ptr %i.e, !6403, !DIExpression(), !72734)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit unwind label %bb.d, !dbg !72851

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !72840
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !72852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !72840
  br label %bb.i, !dbg !72853

bb.i:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit, %bb.c
    #dbg_value(ptr %i.i, !72768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !72828)
    #dbg_value(ptr %i.g, !72768, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !72828)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !72854
  store ptr %i.i, ptr %i.b, align 8, !dbg !72854
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !72854
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCs5yXxDE1DkoT_4tera, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !72854
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !72854
  store ptr %i.g, ptr %i.u, align 8, !dbg !72854
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !72854
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.414.0..sroa_idx, align 8, !dbg !72854
    #dbg_value(ptr @115, !72823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !72831)
    #dbg_value(ptr %i.b, !72823, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !72831)
    #dbg_value(ptr null, !6195, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !72736)
    #dbg_value(i64 undef, !6195, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !72736)
    #dbg_value(ptr poison, !6209, !DIExpression(), !72736)
    #dbg_value(ptr poison, !6213, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !72738)
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @115, ptr noundef nonnull %i.b)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit52 unwind label %bb.k, !dbg !72855

bb.j:                                             ; preds = %bb.k, %bb.f, %.body
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !72856
  unreachable, !dbg !72856

bb.k:                                             ; preds = %bb.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit52
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #24
          to label %.body unwind label %bb.j, !dbg !72857

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit52: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !72858
  invoke fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB2_14VirtualMachine15rendering_error(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %5)
          to label %bb.l unwind label %bb.k, !dbg !72859

bb.l:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit52
    #dbg_value(ptr %i.g, !7156, !DIExpression(), !72740)
    #dbg_value(ptr %i.g, !6400, !DIExpression(), !72742)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit.i54 unwind label %bb.m, !dbg !72860

bb.m:                                             ; preds = %bb.l
  %i.x = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.g, !6403, !DIExpression(), !72744)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body unwind label %bb.n, !dbg !72861

bb.n:                                             ; preds = %bb.m
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !72860
  unreachable, !dbg !72860

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit.i54: ; preds = %bb.l
    #dbg_value(ptr %i.g, !6403, !DIExpression(), !72746)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit57 unwind label %bb.d, !dbg !72862

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit57: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !72857
    #dbg_value(ptr %i.h, !7728, !DIExpression(), !72748)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECs5yXxDE1DkoT_4tera.exit unwind label %bb.o, !dbg !72863

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit57
  %i.z = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.h, !7733, !DIExpression(), !72750)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.p, !dbg !72864

bb.p:                                             ; preds = %bb.o
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !72863
  unreachable, !dbg !72863

common.resume:                                    ; preds = %.body, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.z, %bb.o ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op, !dbg !72772

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECs5yXxDE1DkoT_4tera.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit57
    #dbg_value(ptr %i.h, !7733, !DIExpression(), !72752)
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h), !dbg !72865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !72844
  ret void, !dbg !72866
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB2_14VirtualMachine6render(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !72872 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !72939, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !72944)
    #dbg_declare(ptr poison, !72941, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !72945)
  %i.c = alloca [24 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !72936, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !72946)
    #dbg_declare(ptr poison, !72947, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !72952)
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.7.sroa.0 = alloca [16 x i8], align 8     ; 7 uses
    #dbg_declare(ptr %.sroa.7.sroa.0, !72940, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !72953)
  %.sroa.6.sroa.0 = alloca [16 x i8], align 8     ; 7 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
    #dbg_value(ptr %1, !72930, !DIExpression(), !72954)
    #dbg_value(ptr %2, !72931, !DIExpression(), !72954)
    #dbg_value(ptr %3, !72932, !DIExpression(), !72954)
    #dbg_declare(ptr %i.f, !72933, !DIExpression(), !72955)
    #dbg_declare(ptr %i.e, !72956, !DIExpression(), !72961)
    #dbg_declare(ptr poison, !72934, !DIExpression(), !72962)
    #dbg_declare(ptr poison, !72963, !DIExpression(), !72968)
    #dbg_declare(ptr poison, !72958, !DIExpression(), !72969)
    #dbg_declare(ptr poison, !72964, !DIExpression(), !72970)
    #dbg_declare(ptr %i.b, !72948, !DIExpression(), !72971)
    #dbg_value(i64 0, !72972, !DIExpression(), !72982)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !73017
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !73018
  %i.h = load ptr, ptr %i.g, align 8, !dbg !73018, !nonnull !1852, !align !3836, !noundef !1852
  %i.i = getelementptr i8, ptr %i.h, i64 648, !dbg !73019
  %.val = load i64, ptr %i.i, align 8, !dbg !73019, !noundef !1852
    #dbg_value(ptr poison, !7870, !DIExpression(), !72891)
    #dbg_value(i64 1, !7876, !DIExpression(), !72895)
  %i.j = shl i64 %.val, 1, !dbg !73020
    #dbg_value(i64 %i.j, !7887, !DIExpression(), !72896)
    #dbg_value(i64 %i.j, !7881, !DIExpression(), !72897)
    #dbg_value(i64 %i.j, !7877, !DIExpression(), !72895)
  %4 = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 1), !dbg !73021 ; 2 uses
    #dbg_value(i64 %4, !7882, !DIExpression(), !72898)
    #dbg_value(i64 %4, !7890, !DIExpression(), !72900)
    #dbg_value(i64 %4, !7894, !DIExpression(), !72902)
  %5 = icmp sgt i64 %4, -1, !dbg !73022
  br i1 %5, label %bb.b, label %_RNvMNtCs5yXxDE1DkoT_4tera8templateNtB2_8Template9size_hint.exit, !dbg !73022

bb.b:                                             ; preds = %bb.a
  %i.k = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %4, i1 false), !dbg !73023
  %i.l = sub nuw nsw i64 64, %i.k, !dbg !73024
    #dbg_value(i64 %i.l, !7883, !DIExpression(), !72903)
  %i.m = shl nuw i64 1, %i.l, !dbg !73025
    #dbg_value(i64 %i.m, !7888, !DIExpression(), !72904)
  br label %_RNvMNtCs5yXxDE1DkoT_4tera8templateNtB2_8Template9size_hint.exit, !dbg !73026

_RNvMNtCs5yXxDE1DkoT_4tera8templateNtB2_8Template9size_hint.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i64 [ %i.m, %bb.b ], [ 0, %bb.a ], !dbg !73027 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.i, !7888, !DIExpression(), !72904)
    #dbg_value(i64 %.sroa.0.0.i, !72983, !DIExpression(), !72997)
    #dbg_value(i64 %.sroa.0.0.i, !72985, !DIExpression(), !72998)
    #dbg_value(i64 %.sroa.0.0.i, !72988, !DIExpression(), !72999)
    #dbg_value(i64 %.sroa.0.0.i, !72991, !DIExpression(), !73000)
    #dbg_value(i64 %.sroa.0.0.i, !72974, !DIExpression(), !72982)
    #dbg_value(i64 1, !72993, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73000)
    #dbg_value(i64 1, !72975, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !72982)
    #dbg_value(i64 1, !72993, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !73000)
    #dbg_value(i64 1, !72975, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !72982)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !73028
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !73028
  %i.n = load i64, ptr %i.c, align 8, !dbg !73028, !range !5358, !noundef !1852
  %i.o = trunc nuw i64 %i.n to i1, !dbg !73029
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !73000
  %i.q = load i64, ptr %i.p, align 8, !dbg !73000, !range !5359, !noundef !1852 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !73000 ; 2 uses
  br i1 %i.o, label %bb.c, label %bb.d, !dbg !73029, !prof !5306

bb.c:                                             ; preds = %_RNvMNtCs5yXxDE1DkoT_4tera8templateNtB2_8Template9size_hint.exit
  %i.s = load i64, ptr %i.r, align 8, !dbg !73030
    #dbg_value(i64 %i.q, !72995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73001)
    #dbg_value(i64 %i.s, !72995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !73001)
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #27, !dbg !73031
  unreachable, !dbg !73031

bb.d:                                             ; preds = %_RNvMNtCs5yXxDE1DkoT_4tera8templateNtB2_8Template9size_hint.exit
  %i.t = load ptr, ptr %i.r, align 8, !dbg !73032, !nonnull !1852, !noundef !1852
    #dbg_value(i64 %i.q, !72994, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73002)
    #dbg_value(ptr %i.t, !72994, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !73002)
    #dbg_value(ptr poison, !72973, !DIExpression(), !73003)
  %i.u = icmp ule i64 %.sroa.0.0.i, %i.q, !dbg !73033
    #dbg_value(i1 true, !73004, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !73007)
  tail call void @llvm.assume(i1 %i.u), !dbg !73034
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !73035
  store i64 %i.q, ptr %i.f, align 8, !dbg !73036
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !73036
  store ptr %i.t, ptr %i.v, align 8, !dbg !73036
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !73036
  store i64 0, ptr %i.w, align 8, !dbg !73036
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !72960
  invoke void @_RINvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB3_14VirtualMachine9render_toQINtNtCsgCecv3eZDcN_5alloc3vec3VechEEB7_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef readonly captures(address, read_provenance) null, i64 undef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.e unwind label %bb.q, !dbg !73037

bb.e:                                             ; preds = %bb.d
  %i.x = load i8, ptr %i.e, align 8, !dbg !73038, !range !3904, !noundef !1852
  %.not = icmp eq i8 %i.x, -1, !dbg !73038
  br i1 %.not, label %bb.i, label %bb.f, !dbg !73039

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false), !dbg !73040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !73041
    #dbg_value(ptr %i.f, !6400, !DIExpression(), !72907)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit unwind label %bb.g, !dbg !73042

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.f, !6403, !DIExpression(), !72909)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.h, !dbg !73043

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !73042
  unreachable, !dbg !73042

common.resume:                                    ; preds = %bb.q, %bb.j, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.g ], [ %i.ae, %bb.j ], [ %i.am, %bb.q ]
  resume { ptr, i32 } %common.resume.op, !dbg !72954

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.f
    #dbg_value(ptr %i.f, !6403, !DIExpression(), !72911)
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f), !dbg !73044
  br label %bb.p, !dbg !73045

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !73041
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.0), !dbg !72943
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.0), !dbg !72943
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !73046
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !73046
  call void @llvm.experimental.noalias.scope.decl(metadata !73008), !dbg !72943
  call void @llvm.experimental.noalias.scope.decl(metadata !73009), !dbg !72943
    #dbg_declare(ptr %i.d, !7143, !DIExpression(), !72916)
    #dbg_declare(ptr poison, !7147, !DIExpression(), !72917)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !73047, !noalias !73010
    #dbg_value(ptr %i.d, !7149, !DIExpression(), !72919)
    #dbg_value(ptr %i.d, !7151, !DIExpression(), !72921)
    #dbg_value(ptr %i.d, !7153, !DIExpression(), !72923)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !73048 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !73048, !alias.scope !73009, !nonnull !1852, !noundef !1852
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !73049
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !73049, !alias.scope !73009, !noundef !1852 ; 2 uses
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ad)
          to label %bb.k unwind label %bb.j, !dbg !73047, !noalias !73010

bb.j:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #24
          to label %common.resume unwind label %bb.l, !dbg !73050, !noalias !73008

bb.k:                                             ; preds = %bb.i
  %i.af = load i64, ptr %i.a, align 8, !dbg !73047, !range !5358, !noalias !73010, !noundef !1852
  %i.ag = trunc nuw i64 %i.af to i1, !dbg !73051
  br i1 %i.ag, label %bb.m, label %.thread, !dbg !73051

.thread:                                          ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !dbg !73052, !alias.scope !73010
    #dbg_value(i64 %i.ad, !72940, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !73011)
    #dbg_value(i64 -1, !72940, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73011)
    #dbg_value(i64 poison, !72940, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !73011)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !73053, !noalias !73010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !73054
  br label %bb.o, !dbg !73055

bb.l:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !73056, !noalias !73008
  unreachable, !dbg !73056

bb.m:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !73057 ; 2 uses
  %i.aj = load <2 x i64>, ptr %i.ai, align 8, !dbg !73057, !noalias !73010
  %i.ak = load i64, ptr %i.ai, align 8, !dbg !73057, !noalias !73010
  %.sroa.032.0.copyload = load i64, ptr %i.d, align 8, !dbg !73058, !noalias !73008 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !dbg !73058, !noalias !1852
    #dbg_value(i64 %.sroa.032.0.copyload, !72940, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73011)
    #dbg_value(i64 %i.ak, !72940, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !73011)
    #dbg_value(i64 poison, !72940, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !73011)
    #dbg_value(i64 %.sroa.032.0.copyload, !72940, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73011)
    #dbg_value(i64 poison, !72940, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !73011)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !73053, !noalias !73010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !73054
  %.not31 = icmp eq i64 %.sroa.032.0.copyload, -1, !dbg !73059
  br i1 %.not31, label %bb.o, label %bb.n, !dbg !73055

bb.n:                                             ; preds = %bb.m
    #dbg_value(i64 %.sroa.032.0.copyload, !72939, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73012)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, i64 16, i1 false), !dbg !73060
    #dbg_value(i64 poison, !72939, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !73012)
    #dbg_value(i64 poison, !72939, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !73012)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.0), !dbg !73061
    #dbg_value(i64 %.sroa.032.0.copyload, !72936, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73013)
    #dbg_value(i64 %.sroa.032.0.copyload, !72947, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !73014)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !73062
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !73062
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, i64 16, i1 false), !dbg !73061
    #dbg_value(i64 poison, !72947, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !73014)
    #dbg_value(i64 poison, !72936, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !73013)
    #dbg_value(i64 poison, !72936, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !73013)
    #dbg_value(i64 poison, !72947, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !73014)
  store i64 %.sroa.032.0.copyload, ptr %i.b, align 8, !dbg !73062
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !73062
  store <2 x i64> %i.aj, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !dbg !73062
  call void @_RNvXs4_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCsgCecv3eZDcN_5alloc6string13FromUtf8ErrorE4from(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.b), !dbg !73063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !73064
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0), !dbg !73065
  br label %bb.p, !dbg !73066

bb.o:                                             ; preds = %.thread, %bb.m
  %.sroa.7.sroa.7.0 = phi i64 [ %i.ak, %bb.m ], [ %i.ad, %.thread ], !dbg !73067
    #dbg_value(i64 %.sroa.7.sroa.7.0, !72940, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !73011)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, i64 16, i1 false), !dbg !73068
    #dbg_value(i64 %.sroa.7.sroa.7.0, !72941, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !73016)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.0), !dbg !73061
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !73069
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, i64 16, i1 false), !dbg !72943
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !73069
  store i64 %.sroa.7.sroa.7.0, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !73069
  store i8 -1, ptr %0, align 8, !dbg !73069
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0), !dbg !73065
  br label %bb.p, !dbg !73070

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !73045
  ret void, !dbg !73070

bb.q:                                             ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #24
          to label %common.resume unwind label %bb.r, !dbg !73045

bb.r:                                             ; preds = %bb.q
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !73071
end_hunk_1
begin_hunk_2_@llvm.vector.reduce.add.v2i64
!71352 = !{!71166, !71351, !3776}
!71353 = !DISubroutineType(types: !71352)
!71354 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !71166, file: !1601, baseType: !3659, size: 32, align: 32, flags: DIFlagPrivate)
!71355 = !{!71354}
!71356 = !DITemplateTypeParameter(name: "T", type: !71166)
!71357 = !{!71356}
!71358 = !DILexicalBlockFile(scope: !71160, file: !5315, discriminator: 2)
!71359 = !DILexicalBlockFile(scope: !71163, file: !3911, discriminator: 2)
!71360 = !DILexicalBlockFile(scope: !71160, file: !5315, discriminator: 4)
!71361 = !DILexicalBlockFile(scope: !71163, file: !3911, discriminator: 4)
!71362 = !DILexicalBlockFile(scope: !71160, file: !5315, discriminator: 6)
!71363 = !DILexicalBlockFile(scope: !71163, file: !3911, discriminator: 6)
!71364 = !DILocation(line: 1938, column: 12, scope: !71093)
!71365 = !DILocation(line: 178, column: 20, scope: !71100, inlinedAt: !71236)
!71366 = !DILocation(line: 1947, column: 32, scope: !71091)
!71367 = !DILocation(line: 90, column: 24, scope: !71099, inlinedAt: !71257)
!71368 = !DILocation(line: 1952, column: 20, scope: !71089)
!71369 = !DILocation(line: 2038, column: 8, scope: !71117, inlinedAt: !71118)
!71370 = !DILocation(line: 0, scope: !71117, inlinedAt: !71118)
!71371 = !DILocation(line: 22, column: 9, scope: !71140, inlinedAt: !71141)
!71372 = !DILocation(line: 2039, column: 27, scope: !71117, inlinedAt: !71118)
!71373 = !DILocation(line: 2039, column: 9, scope: !71114, inlinedAt: !71118)
!71374 = !DILocation(line: 300, column: 12, scope: !71125, inlinedAt: !71128)
!71375 = !DILocation(line: 2040, column: 16, scope: !71112, inlinedAt: !71118)
!71376 = !DILocation(line: 304, column: 13, scope: !71124, inlinedAt: !71128)
!71377 = !DILocation(line: 971, column: 18, scope: !71150, inlinedAt: !71151)
!71378 = !DILocation(line: 971, column: 18, scope: !71150, inlinedAt: !71152)
!71379 = !DILocation(line: 2039, column: 15, scope: !71114, inlinedAt: !71118)
!71380 = !DILocation(line: 2039, column: 20, scope: !71114, inlinedAt: !71118)
!71381 = !DILocation(line: 2085, column: 2, scope: !71117, inlinedAt: !71118)
!71382 = !DILocation(line: 1956, column: 22, scope: !71090)
!71383 = !DILocation(line: 1956, column: 21, scope: !71090)
!71384 = !DILocation(line: 1956, column: 13, scope: !71090)
!71385 = !DILocation(line: 1945, column: 15, scope: !71092)
!71386 = !DILocation(line: 872, column: 18, scope: !71132, inlinedAt: !71155)
!71387 = !DILocation(line: 2072, column: 15, scope: !71110, inlinedAt: !71118)
!71388 = !DILocation(line: 1758, column: 9, scope: !71167, inlinedAt: !71168)
!71389 = !DILocation(line: 1758, column: 9, scope: !71167, inlinedAt: !71174)
!71390 = !DILocation(line: 2075, column: 16, scope: !71108, inlinedAt: !71118)
!71391 = !DILocation(line: 872, column: 18, scope: !71132, inlinedAt: !71133)
!71392 = !DILocation(line: 872, column: 18, scope: !71132, inlinedAt: !71135)
!71393 = !DILocation(line: 1758, column: 9, scope: !71167, inlinedAt: !71180)
!71394 = !DILocation(line: 1758, column: 9, scope: !71167, inlinedAt: !71186)
!71395 = !DILocation(line: 2083, column: 9, scope: !71106, inlinedAt: !71118)
!71396 = !DILocation(line: 1959, column: 6, scope: !71093)
!71397 = distinct !DILexicalBlock(scope: !71401, file: !3254, line: 1049, column: 37)
!71398 = distinct !DILexicalBlock(scope: !71401, file: !3254, line: 1049, column: 37)
!71399 = distinct !DILexicalBlock(scope: !71401, file: !3254, line: 1048, column: 79)
!71400 = distinct !DILexicalBlock(scope: !71401, file: !3254, line: 1048, column: 79)
!71401 = distinct !DILexicalBlock(scope: !71402, file: !3254, line: 1047, column: 9)
!71402 = distinct !DISubprogram(name: "render_block", linkageName: "_RNvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB2_14VirtualMachine12render_block", scope: !491, file: !3254, line: 1041, type: !71458, scopeLine: 1041, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1852, declaration: !71459, retainedNodes: !71469)
!71403 = distinct !DILexicalBlock(scope: !71404, file: !3774, line: 2177, column: 13)
!71404 = distinct !DISubprogram(name: "branch<alloc::string::String, alloc::string::FromUtf8Error>", linkageName: "_RNvXsp_NtCsf3Ta7LF998c_4core6resultINtB5_6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtBM_13FromUtf8ErrorENtNtNtB7_3ops9try_trait3Try6branchCs5yXxDE1DkoT_4tera", scope: !3794, file: !3774, line: 2175, type: !4166, scopeLine: 2175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !4173, retainedNodes: !71473)
!71405 = distinct !DILexicalBlock(scope: !71404, file: !3774, line: 2178, column: 13)
!71406 = distinct !DILexicalBlock(scope: !71407, file: !3774, line: 2190, column: 13)
!71407 = distinct !DISubprogram(name: "from_residual<alloc::string::String, alloc::string::FromUtf8Error, tera::errors::Error>", linkageName: "_RNvXsq_NtCsf3Ta7LF998c_4core6resultINtB5_6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera6errors5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtBM_13FromUtf8ErrorEE13from_residualB1q_", scope: !3775, file: !3774, line: 2188, type: !7864, scopeLine: 2188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !7865, retainedNodes: !71480)
!71408 = distinct !DILexicalBlock(scope: !71410, file: !3774, line: 2178, column: 13)
!71409 = distinct !DILexicalBlock(scope: !71410, file: !3774, line: 2177, column: 13)
!71410 = distinct !DISubprogram(name: "branch<(), tera::errors::Error>", linkageName: "_RNvXsp_NtCsf3Ta7LF998c_4core6resultINtB5_6ResultuNtNtCs5yXxDE1DkoT_4tera6errors5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_", scope: !3794, file: !3774, line: 2175, type: !3824, scopeLine: 2175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !3756, retainedNodes: !71490)
!71411 = distinct !DILexicalBlock(scope: !71412, file: !3774, line: 2190, column: 13)
!71412 = distinct !DISubprogram(name: "from_residual<alloc::string::String, tera::errors::Error, tera::errors::Error>", linkageName: "_RNvXsq_NtCsf3Ta7LF998c_4core6resultINtB5_6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera6errors5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1m_EE13from_residualB1q_", scope: !3775, file: !3774, line: 2188, type: !7867, scopeLine: 2188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !7868, retainedNodes: !71496)
!71413 = distinct !DISubprogram(name: "needs_to_grow<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner13needs_to_growCs5yXxDE1DkoT_4tera", scope: !5, file: !4227, line: 786, type: !4697, scopeLine: 786, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1873, declaration: !4698, retainedNodes: !71507)
!71414 = distinct !DISubprogram(name: "with_capacity<u8>", linkageName: "_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VechE13with_capacityCs5yXxDE1DkoT_4tera", scope: !7, file: !4232, line: 524, type: !4675, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1854, declaration: !4676, retainedNodes: !71515)
!71415 = distinct !DISubprogram(name: "with_capacity_in<u8, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE16with_capacity_inCs5yXxDE1DkoT_4tera", scope: !7, file: !4232, line: 972, type: !4678, scopeLine: 972, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1874, declaration: !4679, retainedNodes: !71518)
!71416 = distinct !DISubprogram(name: "with_capacity_in<u8, alloc::alloc::Global>", linkageName: "_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechE16with_capacity_inCs5yXxDE1DkoT_4tera", scope: !6, file: !4227, line: 177, type: !4681, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1874, declaration: !4682, retainedNodes: !71521)
!71417 = distinct !DILexicalBlock(scope: !71418, file: !4227, line: 454, column: 13)
!71418 = distinct !DISubprogram(name: "with_capacity_in<alloc::alloc::Global>", linkageName: "_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5yXxDE1DkoT_4tera", scope: !5, file: !4227, line: 444, type: !4684, scopeLine: 444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1873, declaration: !4685, retainedNodes: !71527)
!71419 = distinct !DILexicalBlock(scope: !71418, file: !4227, line: 446, column: 13)
!71420 = distinct !DILocation(line: 1047, column: 59, scope: !71402)
!71421 = distinct !DILocation(line: 0, scope: !1507, inlinedAt: !71420)
!71422 = distinct !DILocation(line: 144, column: 44, scope: !1507, inlinedAt: !71420)
!71423 = distinct !DILocation(line: 3945, column: 38, scope: !1513, inlinedAt: !71422)
!71424 = distinct !DILocation(line: 3973, column: 27, scope: !1511, inlinedAt: !71423)
!71425 = distinct !DILocation(line: 0, scope: !1508, inlinedAt: !71424)
!71426 = distinct !DILocation(line: 0, scope: !1512, inlinedAt: !71422)
!71427 = distinct !DILocation(line: 0, scope: !1511, inlinedAt: !71423)
!71428 = distinct !DILocation(line: 0, scope: !1510, inlinedAt: !71423)
!71429 = distinct !DILocation(line: 3975, column: 30, scope: !1510, inlinedAt: !71423)
!71430 = distinct !DILocation(line: 0, scope: !1514, inlinedAt: !71429)
!71431 = distinct !DILocation(line: 246, column: 31, scope: !1514, inlinedAt: !71429)
!71432 = distinct !DILocation(line: 0, scope: !1515, inlinedAt: !71431)
!71433 = distinct !DILocation(line: 0, scope: !1509, inlinedAt: !71423)
!71434 = distinct !DILocation(line: 0, scope: !1513, inlinedAt: !71422)
!71435 = distinct !DISubprogram(name: "assert_unchecked", linkageName: "_RNvNtCsf3Ta7LF998c_4core4hint16assert_unchecked", scope: !5311, file: !5309, line: 202, type: !5313, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1852, retainedNodes: !71536)
!71436 = distinct !DILocation(line: 1050, column: 5, scope: !71402)
!71437 = distinct !DILocation(line: 0, scope: !1163, inlinedAt: !71436)
!71438 = distinct !DILocation(line: 848, column: 1, scope: !1163, inlinedAt: !71436)
!71439 = distinct !DILocation(line: 0, scope: !1164, inlinedAt: !71438)
!71440 = distinct !DILocation(line: 848, column: 1, scope: !1163, inlinedAt: !71436)
!71441 = distinct !DILocation(line: 0, scope: !1164, inlinedAt: !71440)
!71442 = distinct !{!71442, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8"}
!71443 = distinct !{!71443, !71442, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8: argument 0"}
!71444 = distinct !{!71444, !71442, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8: argument 1"}
!71445 = distinct !DILocation(line: 1049, column: 12, scope: !71401)
!71446 = distinct !DILocation(line: 569, column: 22, scope: !1336, inlinedAt: !71445)
!71447 = distinct !DILocation(line: 572, column: 17, scope: !1335, inlinedAt: !71445)
!71448 = distinct !DILocation(line: 570, column: 30, scope: !1336, inlinedAt: !71445)
!71449 = distinct !DILocation(line: 3894, column: 14, scope: !1337, inlinedAt: !71448)
!71450 = distinct !DILocation(line: 3895, column: 14, scope: !1337, inlinedAt: !71448)
!71451 = distinct !DILocation(line: 1856, column: 27, scope: !1338, inlinedAt: !71450)
!71452 = distinct !DILocation(line: 1873, column: 76, scope: !1338, inlinedAt: !71450)
!71453 = distinct !DILocation(line: 1974, column: 25, scope: !1339, inlinedAt: !71452)
!71454 = distinct !DILocation(line: 1977, column: 18, scope: !1339, inlinedAt: !71452)
!71455 = distinct !DILocation(line: 305, column: 20, scope: !1342, inlinedAt: !71454)
!71456 = distinct !DILocation(line: 622, column: 14, scope: !1341, inlinedAt: !71455)
!71457 = !{!692, !7654, !90, !3492, !3492}
!71458 = !DISubroutineType(types: !71457)
!71459 = !DISubprogram(name: "render_block", linkageName: "_RNvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB2_14VirtualMachine12render_block", scope: !491, file: !3254, line: 1041, type: !71458, scopeLine: 1041, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1852)
!71460 = !DILocalVariable(name: "self", arg: 1, scope: !71402, file: !3254, line: 1042, type: !7654)
!71461 = !DILocalVariable(name: "block_name", arg: 2, scope: !71402, file: !3254, line: 1043, type: !90)
!71462 = !DILocalVariable(name: "context", arg: 3, scope: !71402, file: !3254, line: 1044, type: !3492)
!71463 = !DILocalVariable(name: "global_context", arg: 4, scope: !71402, file: !3254, line: 1045, type: !3492)
!71464 = !DILocalVariable(name: "output", scope: !71401, file: !3254, line: 1047, type: !7, align: 64)
!71465 = !DILocalVariable(name: "residual", scope: !71400, file: !3254, line: 1048, type: !577, align: 64)
!71466 = !DILocalVariable(name: "val", scope: !71399, file: !3254, line: 1048, type: !1829, align: 8)
!71467 = !DILocalVariable(name: "residual", scope: !71398, file: !3254, line: 1049, type: !632, align: 64)
!71468 = !DILocalVariable(name: "val", scope: !71397, file: !3254, line: 1049, type: !8, align: 64)
!71469 = !{!71460, !71461, !71462, !71463, !71464, !71465, !71466, !71467, !71468}
!71470 = !DILocalVariable(name: "e", scope: !71405, file: !3774, line: 2178, type: !628, align: 64)
!71471 = !DILocalVariable(name: "self", arg: 1, scope: !71404, file: !3774, line: 2175, type: !684)
!71472 = !DILocalVariable(name: "v", scope: !71403, file: !3774, line: 2177, type: !8, align: 64)
!71473 = !{!71471, !71472, !71470}
!71474 = !DILocation(line: 1049, column: 12, scope: !71401)
!71475 = !DILocation(line: 2178, column: 17, scope: !71405, inlinedAt: !71474)
!71476 = !DILocation(line: 2177, column: 16, scope: !71403, inlinedAt: !71474)
!71477 = !DILocation(line: 1049, column: 37, scope: !71398)
!71478 = !DILocalVariable(name: "residual", arg: 1, scope: !71407, file: !3774, line: 2188, type: !632)
!71479 = !DILocalVariable(name: "e", scope: !71406, file: !3774, line: 2190, type: !628, align: 64)
!71480 = !{!71478, !71479}
!71481 = !DILexicalBlockFile(scope: !71398, file: !3254, discriminator: 2)
!71482 = !DILocation(line: 1049, column: 12, scope: !71481)
!71483 = !DILocation(line: 2188, column: 22, scope: !71407, inlinedAt: !71482)
!71484 = !DILocation(line: 2175, column: 15, scope: !71404, inlinedAt: !71474)
!71485 = !DILocation(line: 0, scope: !71402)
!71486 = !DILocation(line: 1047, column: 13, scope: !71401)
!71487 = !DILocalVariable(name: "self", arg: 1, scope: !71410, file: !3774, line: 2175, type: !573)
!71488 = !DILocalVariable(name: "v", scope: !71409, file: !3774, line: 2177, type: !1829, align: 8)
!71489 = !DILocalVariable(name: "e", scope: !71408, file: !3774, line: 2178, type: !569, align: 64)
!71490 = !{!71487, !71488, !71489}
!71491 = !DILocation(line: 1048, column: 9, scope: !71401)
!71492 = !DILocation(line: 2175, column: 15, scope: !71410, inlinedAt: !71491)
!71493 = !DILocation(line: 1048, column: 79, scope: !71400)
!71494 = !DILocalVariable(name: "residual", arg: 1, scope: !71412, file: !3774, line: 2188, type: !577)
!71495 = !DILocalVariable(name: "e", scope: !71411, file: !3774, line: 2190, type: !569, align: 64)
!71496 = !{!71494, !71495}
!71497 = !DILexicalBlockFile(scope: !71400, file: !3254, discriminator: 2)
!71498 = !DILocation(line: 1048, column: 9, scope: !71497)
!71499 = !DILocation(line: 2188, column: 22, scope: !71412, inlinedAt: !71498)
!71500 = !DILocation(line: 2178, column: 17, scope: !71408, inlinedAt: !71491)
!71501 = !DILocation(line: 2190, column: 17, scope: !71411, inlinedAt: !71498)
!71502 = !DILocation(line: 2190, column: 17, scope: !71406, inlinedAt: !71482)
!71503 = !DILocalVariable(name: "len", scope: !71413, file: !4227, line: 786, type: !1832, align: 64)
!71504 = !DILocalVariable(name: "self", arg: 1, scope: !71413, file: !4227, line: 786, type: !4228)
!71505 = !DILocalVariable(name: "additional", arg: 3, scope: !71413, file: !4227, line: 786, type: !1832)
!71506 = !DILocalVariable(name: "elem_layout", arg: 4, scope: !71413, file: !4227, line: 786, type: !637)
!71507 = !{!71504, !71503, !71505, !71506}
!71508 = !DILocation(line: 1047, column: 26, scope: !71402)
!71509 = !DILocation(line: 525, column: 9, scope: !71414, inlinedAt: !71508)
!71510 = !DILocation(line: 973, column: 20, scope: !71415, inlinedAt: !71509)
!71511 = !DILocation(line: 179, column: 20, scope: !71416, inlinedAt: !71510)
!71512 = !DILocation(line: 450, column: 50, scope: !71419, inlinedAt: !71511)
!71513 = !DILocation(line: 0, scope: !71413, inlinedAt: !71512)
!71514 = !DILocalVariable(name: "capacity", arg: 1, scope: !71414, file: !4232, line: 524, type: !1832)
!71515 = !{!71514}
!71516 = !DILocalVariable(name: "capacity", arg: 1, scope: !71415, file: !4232, line: 972, type: !1832)
!71517 = !DILocalVariable(name: "alloc", scope: !71415, file: !4232, line: 972, type: !1, align: 8)
!71518 = !{!71516, !71517}
!71519 = !DILocalVariable(name: "capacity", arg: 1, scope: !71416, file: !4227, line: 177, type: !1832)
!71520 = !DILocalVariable(name: "alloc", scope: !71416, file: !4227, line: 177, type: !1, align: 8)
!71521 = !{!71519, !71520}
!71522 = !DILocalVariable(name: "capacity", arg: 1, scope: !71418, file: !4227, line: 444, type: !1832)
!71523 = !DILocalVariable(name: "alloc", scope: !71418, file: !4227, line: 444, type: !1, align: 8)
!71524 = !DILocalVariable(name: "elem_layout", arg: 3, scope: !71418, file: !4227, line: 444, type: !637)
!71525 = !DILocalVariable(name: "this", scope: !71419, file: !4227, line: 446, type: !5, align: 64)
!71526 = !DILocalVariable(name: "err", scope: !71417, file: !4227, line: 454, type: !808, align: 64)
!71527 = !{!71522, !71523, !71524, !71525, !71526}
!71528 = !DILocation(line: 0, scope: !71414, inlinedAt: !71508)
!71529 = !DILocation(line: 0, scope: !71415, inlinedAt: !71509)
!71530 = !DILocation(line: 0, scope: !71416, inlinedAt: !71510)
!71531 = !DILocation(line: 0, scope: !71418, inlinedAt: !71511)
!71532 = !DILocation(line: 0, scope: !71417, inlinedAt: !71511)
!71533 = !DILocation(line: 0, scope: !71419, inlinedAt: !71511)
!71534 = !DILocation(line: 786, column: 28, scope: !71413, inlinedAt: !71512)
!71535 = !DILocalVariable(name: "cond", arg: 1, scope: !71435, file: !5309, line: 202, type: !2023)
!71536 = !{!71535}
!71537 = !DILocation(line: 450, column: 21, scope: !71419, inlinedAt: !71511)
!71538 = !DILocation(line: 0, scope: !71435, inlinedAt: !71537)
!71539 = !{!71443}
!71540 = !{!71444}
!71541 = !{!71443, !71444}
!71542 = !DILocation(line: 0, scope: !71404, inlinedAt: !71474)
!71543 = !DILocation(line: 0, scope: !71405, inlinedAt: !71474)
!71544 = !DILocation(line: 0, scope: !71398)
!71545 = !DILocation(line: 0, scope: !71407, inlinedAt: !71482)
!71546 = !DILexicalBlockFile(scope: !71401, file: !3872, discriminator: 0)
!71547 = !DILocation(line: 0, scope: !71403, inlinedAt: !71474)
!71548 = !DILocation(line: 1047, column: 13, scope: !71402)
!71549 = !DILocation(line: 1047, column: 45, scope: !71402)
!71550 = !DILocation(line: 1047, column: 59, scope: !71402)
!71551 = !DILocation(line: 144, column: 9, scope: !1507, inlinedAt: !71420)
!71552 = !DILocation(line: 2570, column: 13, scope: !1508, inlinedAt: !71424)
!71553 = !DILocation(line: 3974, column: 16, scope: !1510, inlinedAt: !71423)
!71554 = !DILocation(line: 154, column: 20, scope: !1515, inlinedAt: !71431)
!71555 = !DILocation(line: 246, column: 13, scope: !1514, inlinedAt: !71429)
!71556 = !DILocation(line: 3976, column: 22, scope: !1509, inlinedAt: !71423)
!71557 = !DILocation(line: 3945, column: 13, scope: !1512, inlinedAt: !71422)
!71558 = !DILocation(line: 0, scope: !1512, inlinedAt: !71422)
!71559 = !DILocation(line: 445, column: 15, scope: !71418, inlinedAt: !71511)
!71560 = !DILocation(line: 445, column: 9, scope: !71418, inlinedAt: !71511)
!71561 = !DILocation(line: 454, column: 17, scope: !71418, inlinedAt: !71511)
!71562 = !DILocation(line: 454, column: 25, scope: !71417, inlinedAt: !71511)
!71563 = !DILocation(line: 446, column: 16, scope: !71418, inlinedAt: !71511)
!71564 = !DILocation(line: 787, column: 9, scope: !71413, inlinedAt: !71512)
!71565 = !DILocation(line: 210, column: 9, scope: !71435, inlinedAt: !71537)
!71566 = !DILocation(line: 455, column: 9, scope: !71418, inlinedAt: !71511)
!71567 = !DILocation(line: 973, column: 9, scope: !71415, inlinedAt: !71509)
!71568 = !DILocation(line: 1048, column: 14, scope: !71401)
!71569 = !DILocation(line: 2176, column: 15, scope: !71410, inlinedAt: !71491)
!71570 = !DILocation(line: 2176, column: 9, scope: !71410, inlinedAt: !71491)
!71571 = !DILocation(line: 2178, column: 17, scope: !71410, inlinedAt: !71491)
!71572 = !DILocation(line: 1048, column: 79, scope: !71401)
!71573 = !DILocation(line: 848, column: 1, scope: !1163, inlinedAt: !71436)
!71574 = !DILocation(line: 848, column: 1, scope: !1164, inlinedAt: !71438)
!71575 = !DILocation(line: 848, column: 1, scope: !1164, inlinedAt: !71440)
!71576 = !DILocation(line: 1050, column: 5, scope: !71402)
!71577 = !DILocation(line: 1049, column: 30, scope: !71401)
!71578 = !DILocation(line: 570, column: 15, scope: !1336, inlinedAt: !71445)
!71579 = !DILocation(line: 627, column: 9, scope: !1340, inlinedAt: !71456)
!71580 = !DILocation(line: 1873, column: 86, scope: !1338, inlinedAt: !71450)
!71581 = !DILocation(line: 574, column: 5, scope: !1336, inlinedAt: !71445)
!71582 = !DILocation(line: 570, column: 9, scope: !1336, inlinedAt: !71445)
!71583 = !DILocation(line: 571, column: 35, scope: !1336, inlinedAt: !71445)
!71584 = !DILocation(line: 573, column: 9, scope: !1336, inlinedAt: !71445)
!71585 = !DILocation(line: 1049, column: 36, scope: !71401)
!71586 = !DILocation(line: 2176, column: 9, scope: !71404, inlinedAt: !71474)
!71587 = !DILocation(line: 569, column: 5, scope: !1336, inlinedAt: !71445)
!71588 = !DILocation(line: 572, column: 17, scope: !1336, inlinedAt: !71445)
!71589 = !DILocation(line: 572, column: 50, scope: !1335, inlinedAt: !71445)
!71590 = !DILocation(line: 2176, column: 15, scope: !71404, inlinedAt: !71474)
!71591 = !DILocation(line: 2178, column: 17, scope: !71404, inlinedAt: !71474)
!71592 = !DILocation(line: 1049, column: 37, scope: !71401)
!71593 = !DILocation(line: 2190, column: 17, scope: !71407, inlinedAt: !71482)
!71594 = !DILocation(line: 2190, column: 27, scope: !71406, inlinedAt: !71482)
!71595 = !DILocation(line: 2190, column: 40, scope: !71407, inlinedAt: !71482)
!71596 = !DILocation(line: 1049, column: 38, scope: !71401)
!71597 = !DILocation(line: 0, scope: !71546)
!71598 = !DILocation(line: 0, scope: !1336, inlinedAt: !71445)
!71599 = !DILocation(line: 2177, column: 16, scope: !71404, inlinedAt: !71474)
!71600 = !DILocation(line: 1049, column: 9, scope: !71401)
!71601 = !DILocation(line: 1050, column: 6, scope: !71402)
!71602 = !DILocation(line: 1041, column: 5, scope: !71402)
!71603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(&str, &str)", file: !1601, size: 256, align: 64, elements: !71766, templateParams: !1852, identifier: "ed8b078a01606b32140175fd604e221b")
!71604 = distinct !DILexicalBlock(scope: !71605, file: !3254, line: 952, column: 13)
!71605 = distinct !DISubprogram(name: "report_target", linkageName: "_RNvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB2_14VirtualMachine13report_target", scope: !491, file: !3254, line: 950, type: !71763, scopeLine: 950, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1852, declaration: !71767, retainedNodes: !71771)
!71606 = distinct !DILexicalBlock(scope: !71607, file: !3844, line: 970, column: 13)
!71607 = distinct !DISubprogram(name: "expect<&tera::template::Template>", linkageName: "_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionRNtNtCs5yXxDE1DkoT_4tera8template8TemplateE6expectBM_", scope: !598, file: !3844, line: 968, type: !71775, scopeLine: 968, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !3852, declaration: !71776, retainedNodes: !71779)
!71608 = distinct !DISubprogram(name: "index<alloc::string::String, alloc::string::String, tera::template::Template, std::hash::random::RandomState, alloc::alloc::Global>", linkageName: "_RNvXs8_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateEINtNtNtCsf3Ta7LF998c_4core3ops5index5IndexRB13_E5indexB1J_", scope: !4779, file: !4247, line: 1515, type: !71785, scopeLine: 1515, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !71789, retainedNodes: !71788)
!71609 = distinct !DISubprogram(name: "ne<alloc::string::String, alloc::string::String>", linkageName: "_RNvYNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCs5yXxDE1DkoT_4tera", scope: !7525, file: !4358, line: 278, type: !71792, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !71797, retainedNodes: !71794)
!71610 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXs1h_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq", scope: !71801, file: !4737, line: 350, type: !71792, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1852, retainedNodes: !71803)
!71611 = distinct !DISubprogram(name: "eq<u8, u8, alloc::alloc::Global, alloc::alloc::Global>", linkageName: "_RNvXNtNtCsgCecv3eZDcN_5alloc3vec10partial_eqINtB4_3VechENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eqCs5yXxDE1DkoT_4tera", scope: !71810, file: !71807, line: 15, type: !71812, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !71817, retainedNodes: !71814)
!71612 = distinct !DISubprogram(name: "index<u8, core::ops::range::RangeFull, alloc::alloc::Global>", linkageName: "_RNvXsd_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechEINtNtNtCsf3Ta7LF998c_4core3ops5index5IndexNtNtBM_5range9RangeFullE5indexCs5yXxDE1DkoT_4tera", scope: !4816, file: !4232, line: 3976, type: !71821, scopeLine: 3976, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !71824, retainedNodes: !71823)
!71613 = distinct !DISubprogram(name: "deref<u8, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCs5yXxDE1DkoT_4tera", scope: !5360, file: !4232, line: 3894, type: !5249, scopeLine: 3894, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1874, retainedNodes: !71828)
!71614 = distinct !DISubprogram(name: "as_slice<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE8as_sliceCs5yXxDE1DkoT_4tera", scope: !7, file: !4232, line: 1856, type: !5249, scopeLine: 1856, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1874, declaration: !5250, retainedNodes: !71832)
!71615 = distinct !DISubprogram(name: "as_ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE6as_ptrCs5yXxDE1DkoT_4tera", scope: !7, file: !4232, line: 1974, type: !5252, scopeLine: 1974, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1874, declaration: !5253, retainedNodes: !71836)
!71616 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB6_11RawVecInner8non_nullhECs5yXxDE1DkoT_4tera", scope: !5, file: !4227, line: 626, type: !5245, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !5246, declaration: !5247)
!71617 = distinct !DISubprogram(name: "ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechE3ptrCs5yXxDE1DkoT_4tera", scope: !6, file: !4227, line: 304, type: !5255, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1874, declaration: !5256)
!71618 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB6_11RawVecInner3ptrhECs5yXxDE1DkoT_4tera", scope: !5, file: !4227, line: 621, type: !5258, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !5246, declaration: !5259)
!71619 = distinct !DILexicalBlock(scope: !71620, file: !5425, line: 156, column: 13)
!71620 = distinct !DISubprogram(name: "equal_same_length<u8, u8>", linkageName: "_RNvXs3_NtNtCsf3Ta7LF998c_4core5slice3cmphINtB5_14SlicePartialEqhE17equal_same_lengthCs5yXxDE1DkoT_4tera", scope: !5435, file: !5425, line: 151, type: !5437, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !5440, retainedNodes: !71858)
!71621 = distinct !DISubprogram(name: "eq<u8, u8>", linkageName: "_RNvXNtNtCsf3Ta7LF998c_4core5slice3cmpShNtNtB6_3cmp9PartialEq2eqCs5yXxDE1DkoT_4tera", scope: !5427, file: !5425, line: 19, type: !5429, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !5431, retainedNodes: !71865)
!71622 = distinct !DILexicalBlock(scope: !71621, file: !5425, line: 20, column: 9)
!71623 = distinct !DISubprogram(name: "get<alloc::string::String, tera::template::Template, std::hash::random::RandomState, alloc::alloc::Global, alloc::string::String>", linkageName: "_RINvMs2_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateE3getB14_EB1K_", scope: !489, file: !4247, line: 1034, type: !71878, scopeLine: 1034, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !71879, declaration: !71880, retainedNodes: !71882)
!71624 = distinct !DILexicalBlock(scope: !71625, file: !5462, line: 1289, column: 17)
!71625 = distinct !DILexicalBlock(scope: !71626, file: !5462, line: 1287, column: 13)
!71626 = distinct !DISubprogram(name: "get<alloc::string::String, tera::template::Template, std::hash::random::RandomState, alloc::alloc::Global, alloc::string::String>", linkageName: "_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_EB1u_", scope: !488, file: !5462, line: 1279, type: !71890, scopeLine: 1279, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !71879, declaration: !71891, retainedNodes: !71895)
!71627 = distinct !DILocation(line: 1039, column: 19, scope: !71623, inlinedAt: !71883)
!71628 = distinct !DILocation(line: 0, scope: !71626, inlinedAt: !71627)
!71629 = distinct !DISubprogram(name: "make_hash<alloc::string::String, std::hash::random::RandomState>", linkageName: "_RINvNtCsbDKHzkXHCUM_9hashbrown3map9make_hashNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateECs5yXxDE1DkoT_4tera", scope: !2150, file: !5462, line: 236, type: !5909, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !5912, retainedNodes: !71898)
!71630 = distinct !DILocation(line: 1287, column: 24, scope: !71626, inlinedAt: !71627)
!71631 = distinct !DILocation(line: 0, scope: !71629, inlinedAt: !71630)
!71632 = distinct !DISubprogram(name: "is_empty<(alloc::string::String, tera::template::Template), alloc::alloc::Global>", linkageName: "_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateEE8is_emptyB1v_", scope: !367, file: !5479, line: 1336, type: !71901, scopeLine: 1336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !3050, declaration: !71902, retainedNodes: !71903)
!71633 = distinct !DILocation(line: 1284, column: 23, scope: !71626, inlinedAt: !71627)
!71634 = distinct !DILocation(line: 1336, column: 28, scope: !71632, inlinedAt: !71633)
!71635 = distinct !DISubprogram(name: "len<(alloc::string::String, tera::template::Template), alloc::alloc::Global>", linkageName: "_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateEE3lenB1v_", scope: !367, file: !5479, line: 1330, type: !71906, scopeLine: 1330, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !3050, declaration: !71907, retainedNodes: !71908)
!71636 = distinct !DILocation(line: 1337, column: 14, scope: !71632, inlinedAt: !71633)
!71637 = distinct !DILocation(line: 1330, column: 23, scope: !71635, inlinedAt: !71636)
!71638 = distinct !{!71638, i1 true, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_EB1u_"}
!71639 = distinct !{!71639, !71638, !"_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_EB1u_: argument 0"}
!71640 = distinct !DILocation(line: 0, scope: !71625, inlinedAt: !71627)
!71641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !71644, file: !1601, size: 64, align: 64, flags: DIFlagPublic, elements: !71919, templateParams: !71921, identifier: "90966b574ad146097262526297ef114f")
!71642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !71644, file: !1601, size: 64, align: 64, flags: DIFlagPublic, elements: !1852, templateParams: !71921, identifier: "7eaac77a9d43ea4f9f6f7383def23cad")
!71643 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !71644, file: !1601, size: 64, align: 64, elements: !71916, templateParams: !1852, identifier: "ad2e39e0d1b64422d01821cedbc0dc56", discriminator: !71922)
!71644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&(alloc::string::String, tera::template::Template)>", scope: !2403, file: !1601, size: 64, align: 64, flags: DIFlagPublic, elements: !71913, templateParams: !1852, identifier: "9dacebfb2185034e11e3cb136990ef60")
!71645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<(alloc::string::String, tera::template::Template)>", scope: !1868, file: !1601, size: 64, align: 64, flags: DIFlagPublic, elements: !71934, templateParams: !2919, identifier: "7488ca8526738c77b8c0b773fdd2797e")
!71646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Bucket<(alloc::string::String, tera::template::Template)>", scope: !1888, file: !1601, size: 64, align: 64, flags: DIFlagProtected, elements: !71931, templateParams: !2919, identifier: "3a44d5b1ab7b16254f4a696ed3e0d53")
!71647 = distinct !DILexicalBlock(scope: !71648, file: !5479, line: 1218, column: 13)
!71648 = distinct !DISubprogram(name: "get<(alloc::string::String, tera::template::Template), alloc::alloc::Global, hashbrown::map::equivalent_key::{closure_env#0}<alloc::string::String, alloc::string::String, tera::template::Template>>", linkageName: "_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateEE3getNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0EB1w_", scope: !367, file: !5479, line: 1215, type: !71912, scopeLine: 1215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !71924, declaration: !71925, retainedNodes: !71929)
!71649 = distinct !DILocation(line: 1288, column: 30, scope: !71625, inlinedAt: !71627)
!71650 = distinct !DILocation(line: 0, scope: !71648, inlinedAt: !71649)
!71651 = distinct !{!71651, i1 true, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0EB1w_"}
!71652 = distinct !{!71652, !71651, !"_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0EB1w_: argument 0"}
!71653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !71656, file: !1601, size: 64, align: 64, flags: DIFlagPublic, elements: !71943, templateParams: !71945, identifier: "c0ad0238079ca0324d68d7b2e4006feb")
!71654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !71656, file: !1601, size: 64, align: 64, flags: DIFlagPublic, elements: !1852, templateParams: !71945, identifier: "462cde6f96458186912bdf5ce2ed7a7c")
!71655 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !71656, file: !1601, size: 64, align: 64, elements: !71941, templateParams: !1852, identifier: "3777d08d46e8aaa3f9fb56859b6bf05", discriminator: !71946)
!71656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<hashbrown::raw::Bucket<(alloc::string::String, tera::template::Template)>>", scope: !2403, file: !1601, size: 64, align: 64, flags: DIFlagPublic, elements: !71938, templateParams: !1852, identifier: "58abac13f92f110a42aa5a972177c582")
!71657 = distinct !DILexicalBlock(scope: !71658, file: !5479, line: 1207, column: 17)
!71658 = distinct !DILexicalBlock(scope: !71659, file: !5479, line: 1200, column: 13)
!71659 = distinct !DISubprogram(name: "find<(alloc::string::String, tera::template::Template), alloc::alloc::Global, hashbrown::map::equivalent_key::{closure_env#0}<alloc::string::String, alloc::string::String, tera::template::Template>>", linkageName: "_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1s_E0EB1w_", scope: !367, file: !5479, line: 1192, type: !71937, scopeLine: 1192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !71924, declaration: !71947, retainedNodes: !71953)
!71660 = distinct !DILocation(line: 1217, column: 20, scope: !71648, inlinedAt: !71649)
!71661 = distinct !DILocation(line: 1202, column: 18, scope: !71659, inlinedAt: !71660)
!71662 = distinct !DILocation(line: 0, scope: !964, inlinedAt: !71661)
!71663 = distinct !DILocation(line: 0, scope: !71659, inlinedAt: !71660)
!71664 = distinct !{!71664, i1 true, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!71665 = distinct !{!71665, !71664, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!71666 = distinct !DILocation(line: 2029, column: 24, scope: !5581, inlinedAt: !71661)
!71667 = distinct !DILocation(line: 102, column: 13, scope: !975, inlinedAt: !71666)
!71668 = distinct !DILocation(line: 2043, column: 23, scope: !959, inlinedAt: !71661)
!71669 = distinct !DILocation(line: 82, column: 18, scope: !976, inlinedAt: !71668)
!71670 = distinct !DILocation(line: 2010, column: 34, scope: !963, inlinedAt: !71661)
!71671 = distinct !DILocation(line: 0, scope: !977, inlinedAt: !71670)
!71672 = distinct !DILocation(line: 2027, column: 51, scope: !961, inlinedAt: !71661)
!71673 = distinct !DILocation(line: 0, scope: !978, inlinedAt: !71672)
!71674 = distinct !DILocation(line: 2009, column: 24, scope: !964, inlinedAt: !71661)
!71675 = distinct !DILocation(line: 0, scope: !979, inlinedAt: !71674)
!71676 = distinct !DILocation(line: 2039, column: 29, scope: !959, inlinedAt: !71661)
!71677 = distinct !DILocation(line: 92, column: 14, scope: !983, inlinedAt: !71676)
!71678 = distinct !DILocation(line: 0, scope: !982, inlinedAt: !71677)
!71679 = distinct !DILocation(line: 0, scope: !963, inlinedAt: !71661)
!71680 = distinct !DILocation(line: 2029, column: 30, scope: !959, inlinedAt: !71661)
!71681 = distinct !DILocation(line: 0, scope: !982, inlinedAt: !71680)
!71682 = distinct !DILocation(line: 0, scope: !961, inlinedAt: !71661)
!71683 = distinct !DILocation(line: 2624, column: 37, scope: !978, inlinedAt: !71672)
!71684 = distinct !DILocation(line: 2027, column: 34, scope: !961, inlinedAt: !71661)
!71685 = distinct !DILocation(line: 0, scope: !985, inlinedAt: !71684)
!71686 = distinct !DILocation(line: 49, column: 24, scope: !985, inlinedAt: !71684)
!71687 = distinct !DILocation(line: 0, scope: !987, inlinedAt: !71686)
!71688 = distinct !DILocation(line: 0, scope: !986, inlinedAt: !71686)
!71689 = distinct !DILocation(line: 1341, column: 5, scope: !986, inlinedAt: !71686)
!71690 = distinct !DILocation(line: 0, scope: !988, inlinedAt: !71689)
!71691 = distinct !{!71691, !71664, !"_RNvMsa_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!71692 = distinct !{!71692, i1 true, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128"}
!71693 = distinct !{!71693, !71692, !"_RNvNtNtNtCsf3Ta7LF998c_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!71694 = distinct !DILocation(line: 0, scope: !959, inlinedAt: !71661)
!71695 = distinct !DILocation(line: 0, scope: !983, inlinedAt: !71676)
!71696 = distinct !DILocation(line: 83, column: 23, scope: !982, inlinedAt: !71680)
!71697 = distinct !DILocation(line: 919, column: 29, scope: !989, inlinedAt: !71696)
!71698 = distinct !DILocation(line: 919, column: 41, scope: !989, inlinedAt: !71696)
!71699 = distinct !DILocation(line: 0, scope: !981, inlinedAt: !71680)
!71700 = distinct !DILocation(line: 84, column: 21, scope: !981, inlinedAt: !71680)
!71701 = distinct !DILocation(line: 1566, column: 32, scope: !993, inlinedAt: !71700)
!71702 = distinct !DILocation(line: 0, scope: !992, inlinedAt: !71700)
!71703 = distinct !DILocation(line: 0, scope: !990, inlinedAt: !71700)
!71704 = distinct !DILocation(line: 0, scope: !956, inlinedAt: !71661)
!71705 = distinct !DILocation(line: 103, column: 26, scope: !975, inlinedAt: !71666)
!71706 = distinct !DILocation(line: 0, scope: !997, inlinedAt: !71705)
!71707 = distinct !DILocation(line: 0, scope: !996, inlinedAt: !71705)
!71708 = distinct !DILocation(line: 41, column: 18, scope: !996, inlinedAt: !71705)
!71709 = distinct !DILocation(line: 0, scope: !999, inlinedAt: !71708)
!71710 = distinct !DILocation(line: 70, column: 21, scope: !999, inlinedAt: !71708)
!71711 = distinct !DILocation(line: 0, scope: !1000, inlinedAt: !71710)
!71712 = distinct !DILocation(line: 628, column: 51, scope: !1000, inlinedAt: !71710)
!71713 = distinct !DILocation(line: 0, scope: !1001, inlinedAt: !71712)
!71714 = distinct !DILocation(line: 0, scope: !974, inlinedAt: !71666)
!71715 = distinct !DILocation(line: 104, column: 25, scope: !974, inlinedAt: !71666)
!71716 = distinct !DILocation(line: 0, scope: !1002, inlinedAt: !71715)
!71717 = distinct !DILocation(line: 0, scope: !955, inlinedAt: !71661)
!71718 = distinct !DILocation(line: 0, scope: !954, inlinedAt: !71661)
!71719 = distinct !DISubprogram(name: "{closure#0}<(alloc::string::String, tera::template::Template), alloc::alloc::Global, hashbrown::map::equivalent_key::{closure_env#0}<alloc::string::String, alloc::string::String, tera::template::Template>>", linkageName: "_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0B1y_", scope: !1890, file: !5479, line: 1202, type: !71960, scopeLine: 1202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !71924, retainedNodes: !71963)
!71720 = distinct !DILocation(line: 2034, column: 27, scope: !954, inlinedAt: !71661)
!71721 = distinct !DILocation(line: 0, scope: !71719, inlinedAt: !71720)
!71722 = distinct !DILexicalBlock(scope: !71723, file: !5720, line: 105, column: 21)
!71723 = distinct !DILexicalBlock(scope: !71724, file: !5720, line: 103, column: 13)
!71724 = distinct !DISubprogram(name: "bucket<(alloc::string::String, tera::template::Template), alloc::alloc::Global>", linkageName: "_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateEE6bucketB1v_", scope: !367, file: !5479, line: 738, type: !71966, scopeLine: 738, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !3050, declaration: !71967, retainedNodes: !71974)
!71725 = distinct !DILocation(line: 1202, column: 56, scope: !71719, inlinedAt: !71720)
!71726 = distinct !DILocation(line: 0, scope: !71724, inlinedAt: !71725)
!71727 = distinct !DILexicalBlock(scope: !71728, file: !5479, line: 323, column: 9)
!71728 = distinct !DISubprogram(name: "from_base_index<(alloc::string::String, tera::template::Template)>", linkageName: "_RNvMs4_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_6BucketTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateEE15from_base_indexB1t_", scope: !71646, file: !5479, line: 302, type: !71977, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !2919, declaration: !71978, retainedNodes: !71982)
!71729 = distinct !DILocation(line: 765, column: 18, scope: !71724, inlinedAt: !71725)
!71730 = distinct !DILocation(line: 0, scope: !71728, inlinedAt: !71729)
!71731 = distinct !DISubprogram(name: "sub<(alloc::string::String, tera::template::Template)>", linkageName: "_RNvMNtNtCsf3Ta7LF998c_4core3ptr7mut_ptrOTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateE3subB1j_", scope: !5213, file: !5210, line: 1016, type: !71985, scopeLine: 1016, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !2919, retainedNodes: !71988)
!71732 = distinct !DILocation(line: 329, column: 36, scope: !71728, inlinedAt: !71729)
!71733 = distinct !DILocation(line: 0, scope: !71731, inlinedAt: !71732)
!71734 = distinct !DISubprogram(name: "as_ptr<(alloc::string::String, tera::template::Template)>", linkageName: "_RNvMs4_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_6BucketTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateEE6as_ptrB1t_", scope: !71646, file: !5479, line: 412, type: !71991, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !2919, declaration: !71992, retainedNodes: !71994)
!71735 = distinct !DISubprogram(name: "as_ref<(alloc::string::String, tera::template::Template)>", linkageName: "_RNvMs4_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_6BucketTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateEE6as_refB1t_", scope: !71646, file: !5479, line: 534, type: !71996, scopeLine: 534, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !2919, declaration: !71997, retainedNodes: !71999)
!71736 = distinct !DILocation(line: 1202, column: 70, scope: !71719, inlinedAt: !71720)
!71737 = distinct !DILocation(line: 535, column: 25, scope: !71735, inlinedAt: !71736)
!71738 = distinct !DILocation(line: 418, column: 40, scope: !71734, inlinedAt: !71737)
!71739 = distinct !DILocation(line: 0, scope: !71731, inlinedAt: !71738)
!71740 = distinct !DILocation(line: 534, column: 37, scope: !71735, inlinedAt: !71736)
!71741 = distinct !DILocation(line: 412, column: 26, scope: !71734, inlinedAt: !71737)
!71742 = distinct !DISubprogram(name: "{closure#0}<alloc::string::String, alloc::string::String, tera::template::Template>", linkageName: "_RNCINvNtCsbDKHzkXHCUM_9hashbrown3map14equivalent_keyNtNtCsgCecv3eZDcN_5alloc6string6StringBO_NtNtCs5yXxDE1DkoT_4tera8template8TemplateE0B1x_", scope: !2899, file: !5462, line: 221, type: !72003, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !72006, retainedNodes: !72005)
!71743 = distinct !DILocation(line: 1202, column: 48, scope: !71719, inlinedAt: !71720)
!71744 = distinct !DILocation(line: 0, scope: !71742, inlinedAt: !71743)
!71745 = distinct !{!71745, i1 true, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0B1y_"}
!71746 = distinct !{!71746, !71745, !"_RNCINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB8_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera8template8TemplateEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0B1y_: argument 0"}
!71747 = distinct !DILocation(line: 2034, column: 20, scope: !954, inlinedAt: !71661)
!71748 = distinct !DILocation(line: 0, scope: !1013, inlinedAt: !71747)
!71749 = distinct !DILocation(line: 83, column: 23, scope: !982, inlinedAt: !71677)
!71750 = distinct !DILocation(line: 919, column: 29, scope: !989, inlinedAt: !71749)
!71751 = distinct !DILocation(line: 919, column: 41, scope: !989, inlinedAt: !71749)
!71752 = distinct !DILocation(line: 0, scope: !980, inlinedAt: !71677)
!71753 = distinct !DILocation(line: 84, column: 21, scope: !980, inlinedAt: !71677)
end_hunk_2
begin_hunk_3_@llvm.vector.reduce.add.v2i64
!72821 = !DILocation(line: 939, column: 13, scope: !72707)
!72822 = !DILocation(line: 0, scope: !72763)
!72823 = !DILocalVariable(name: "args", arg: 1, scope: !72722, file: !6183, line: 651, type: !1120)
!72824 = !{!72823}
!72825 = !DILexicalBlockFile(scope: !72707, file: !3254, discriminator: 4)
!72826 = !DILocation(line: 941, column: 13, scope: !72825)
!72827 = !DILocation(line: 0, scope: !72722, inlinedAt: !72826)
!72828 = !DILocation(line: 0, scope: !72767)
!72829 = !DILexicalBlockFile(scope: !72706, file: !3254, discriminator: 6)
!72830 = !DILocation(line: 944, column: 13, scope: !72829)
!72831 = !DILocation(line: 0, scope: !72722, inlinedAt: !72830)
!72832 = !DILocation(line: 937, column: 13, scope: !72708)
!72833 = !DILocation(line: 937, column: 39, scope: !72708)
!72834 = !DILocation(line: 938, column: 13, scope: !72707)
!72835 = !DILocation(line: 3136, column: 19, scope: !72714, inlinedAt: !72804)
!72836 = !DILocation(line: 3141, column: 37, scope: !72714, inlinedAt: !72804)
!72837 = !DILocation(line: 3141, column: 18, scope: !72714, inlinedAt: !72804)
!72838 = !DILocation(line: 3161, column: 9, scope: !72713, inlinedAt: !72800)
!72839 = !DILocation(line: 938, column: 32, scope: !72707)
!72840 = !DILocation(line: 941, column: 13, scope: !72707)
!72841 = !DILocation(line: 627, column: 9, scope: !72718, inlinedAt: !72820)
!72842 = !DILocation(line: 77, column: 46, scope: !72712, inlinedAt: !72787)
!72843 = !DILocation(line: 447, column: 9, scope: !72721, inlinedAt: !72821)
!72844 = !DILocation(line: 948, column: 5, scope: !72708)
!72845 = !DILocation(line: 1035, column: 9, scope: !72710, inlinedAt: !72788)
!72846 = !DILocation(line: 77, column: 86, scope: !72712, inlinedAt: !72787)
!72847 = !DILocation(line: 941, column: 13, scope: !72763)
!72848 = !DILocation(line: 661, column: 34, scope: !1124, inlinedAt: !72725)
!72849 = !DILocation(line: 848, column: 1, scope: !1163, inlinedAt: !72729)
!72850 = !DILocation(line: 848, column: 1, scope: !1164, inlinedAt: !72731)
!72851 = !DILocation(line: 848, column: 1, scope: !1164, inlinedAt: !72733)
!72852 = !DILocation(line: 614, column: 5, scope: !72709, inlinedAt: !72779)
!72853 = !DILocation(line: 938, column: 29, scope: !72707)
!72854 = !DILocation(line: 944, column: 13, scope: !72767)
!72855 = !DILocation(line: 661, column: 34, scope: !1124, inlinedAt: !72737)
!72856 = !DILocation(line: 930, column: 5, scope: !72708)
!72857 = !DILocation(line: 948, column: 5, scope: !72707)
!72858 = !DILocation(line: 944, column: 13, scope: !72706)
!72859 = !DILocation(line: 943, column: 14, scope: !72706)
!72860 = !DILocation(line: 848, column: 1, scope: !1163, inlinedAt: !72741)
!72861 = !DILocation(line: 848, column: 1, scope: !1164, inlinedAt: !72743)
!72862 = !DILocation(line: 848, column: 1, scope: !1164, inlinedAt: !72745)
!72863 = !DILocation(line: 848, column: 1, scope: !1478, inlinedAt: !72747)
!72864 = !DILocation(line: 848, column: 1, scope: !1479, inlinedAt: !72749)
!72865 = !DILocation(line: 848, column: 1, scope: !1479, inlinedAt: !72751)
!72866 = !DILocation(line: 948, column: 6, scope: !72708)
!72867 = distinct !DILexicalBlock(scope: !72871, file: !3254, line: 1038, column: 37)
!72868 = distinct !DILexicalBlock(scope: !72871, file: !3254, line: 1038, column: 37)
!72869 = distinct !DILexicalBlock(scope: !72871, file: !3254, line: 1037, column: 67)
!72870 = distinct !DILexicalBlock(scope: !72871, file: !3254, line: 1037, column: 67)
!72871 = distinct !DILexicalBlock(scope: !72872, file: !3254, line: 1036, column: 9)
!72872 = distinct !DISubprogram(name: "render", linkageName: "_RNvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB2_14VirtualMachine6render", scope: !491, file: !3254, line: 1031, type: !72928, scopeLine: 1031, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1852, declaration: !72929, retainedNodes: !72938)
!72873 = distinct !DILexicalBlock(scope: !72874, file: !3774, line: 2177, column: 13)
!72874 = distinct !DISubprogram(name: "branch<alloc::string::String, alloc::string::FromUtf8Error>", linkageName: "_RNvXsp_NtCsf3Ta7LF998c_4core6resultINtB5_6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtBM_13FromUtf8ErrorENtNtNtB7_3ops9try_trait3Try6branchCs5yXxDE1DkoT_4tera", scope: !3794, file: !3774, line: 2175, type: !4166, scopeLine: 2175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !4173, retainedNodes: !72942)
!72875 = distinct !DILexicalBlock(scope: !72874, file: !3774, line: 2178, column: 13)
!72876 = distinct !DILexicalBlock(scope: !72877, file: !3774, line: 2190, column: 13)
!72877 = distinct !DISubprogram(name: "from_residual<alloc::string::String, alloc::string::FromUtf8Error, tera::errors::Error>", linkageName: "_RNvXsq_NtCsf3Ta7LF998c_4core6resultINtB5_6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera6errors5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtBM_13FromUtf8ErrorEE13from_residualB1q_", scope: !3775, file: !3774, line: 2188, type: !7864, scopeLine: 2188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !7865, retainedNodes: !72949)
!72878 = distinct !DILexicalBlock(scope: !72880, file: !3774, line: 2178, column: 13)
!72879 = distinct !DILexicalBlock(scope: !72880, file: !3774, line: 2177, column: 13)
!72880 = distinct !DISubprogram(name: "branch<(), tera::errors::Error>", linkageName: "_RNvXsp_NtCsf3Ta7LF998c_4core6resultINtB5_6ResultuNtNtCs5yXxDE1DkoT_4tera6errors5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_", scope: !3794, file: !3774, line: 2175, type: !3824, scopeLine: 2175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !3756, retainedNodes: !72959)
!72881 = distinct !DILexicalBlock(scope: !72882, file: !3774, line: 2190, column: 13)
!72882 = distinct !DISubprogram(name: "from_residual<alloc::string::String, tera::errors::Error, tera::errors::Error>", linkageName: "_RNvXsq_NtCsf3Ta7LF998c_4core6resultINtB5_6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5yXxDE1DkoT_4tera6errors5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1m_EE13from_residualB1q_", scope: !3775, file: !3774, line: 2188, type: !7867, scopeLine: 2188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !7868, retainedNodes: !72965)
!72883 = distinct !DISubprogram(name: "needs_to_grow<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner13needs_to_growCs5yXxDE1DkoT_4tera", scope: !5, file: !4227, line: 786, type: !4697, scopeLine: 786, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1873, declaration: !4698, retainedNodes: !72976)
!72884 = distinct !DISubprogram(name: "with_capacity<u8>", linkageName: "_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VechE13with_capacityCs5yXxDE1DkoT_4tera", scope: !7, file: !4232, line: 524, type: !4675, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1854, declaration: !4676, retainedNodes: !72984)
!72885 = distinct !DISubprogram(name: "with_capacity_in<u8, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE16with_capacity_inCs5yXxDE1DkoT_4tera", scope: !7, file: !4232, line: 972, type: !4678, scopeLine: 972, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1874, declaration: !4679, retainedNodes: !72987)
!72886 = distinct !DISubprogram(name: "with_capacity_in<u8, alloc::alloc::Global>", linkageName: "_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechE16with_capacity_inCs5yXxDE1DkoT_4tera", scope: !6, file: !4227, line: 177, type: !4681, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1874, declaration: !4682, retainedNodes: !72990)
!72887 = distinct !DILexicalBlock(scope: !72888, file: !4227, line: 454, column: 13)
!72888 = distinct !DISubprogram(name: "with_capacity_in<alloc::alloc::Global>", linkageName: "_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5yXxDE1DkoT_4tera", scope: !5, file: !4227, line: 444, type: !4684, scopeLine: 444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1873, declaration: !4685, retainedNodes: !72996)
!72889 = distinct !DILexicalBlock(scope: !72888, file: !4227, line: 446, column: 13)
!72890 = distinct !DILocation(line: 1036, column: 59, scope: !72872)
!72891 = distinct !DILocation(line: 0, scope: !1507, inlinedAt: !72890)
!72892 = distinct !DILocation(line: 144, column: 44, scope: !1507, inlinedAt: !72890)
!72893 = distinct !DILocation(line: 3945, column: 38, scope: !1513, inlinedAt: !72892)
!72894 = distinct !DILocation(line: 3973, column: 27, scope: !1511, inlinedAt: !72893)
!72895 = distinct !DILocation(line: 0, scope: !1508, inlinedAt: !72894)
!72896 = distinct !DILocation(line: 0, scope: !1512, inlinedAt: !72892)
!72897 = distinct !DILocation(line: 0, scope: !1511, inlinedAt: !72893)
!72898 = distinct !DILocation(line: 0, scope: !1510, inlinedAt: !72893)
!72899 = distinct !DILocation(line: 3975, column: 30, scope: !1510, inlinedAt: !72893)
!72900 = distinct !DILocation(line: 0, scope: !1514, inlinedAt: !72899)
!72901 = distinct !DILocation(line: 246, column: 31, scope: !1514, inlinedAt: !72899)
!72902 = distinct !DILocation(line: 0, scope: !1515, inlinedAt: !72901)
!72903 = distinct !DILocation(line: 0, scope: !1509, inlinedAt: !72893)
!72904 = distinct !DILocation(line: 0, scope: !1513, inlinedAt: !72892)
!72905 = distinct !DISubprogram(name: "assert_unchecked", linkageName: "_RNvNtCsf3Ta7LF998c_4core4hint16assert_unchecked", scope: !5311, file: !5309, line: 202, type: !5313, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1852, retainedNodes: !73005)
!72906 = distinct !DILocation(line: 1039, column: 5, scope: !72872)
!72907 = distinct !DILocation(line: 0, scope: !1163, inlinedAt: !72906)
!72908 = distinct !DILocation(line: 848, column: 1, scope: !1163, inlinedAt: !72906)
!72909 = distinct !DILocation(line: 0, scope: !1164, inlinedAt: !72908)
!72910 = distinct !DILocation(line: 848, column: 1, scope: !1163, inlinedAt: !72906)
!72911 = distinct !DILocation(line: 0, scope: !1164, inlinedAt: !72910)
!72912 = distinct !{!72912, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8"}
!72913 = distinct !{!72913, !72912, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8: argument 0"}
!72914 = distinct !{!72914, !72912, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8: argument 1"}
!72915 = distinct !DILocation(line: 1038, column: 12, scope: !72871)
!72916 = distinct !DILocation(line: 569, column: 22, scope: !1336, inlinedAt: !72915)
!72917 = distinct !DILocation(line: 572, column: 17, scope: !1335, inlinedAt: !72915)
!72918 = distinct !DILocation(line: 570, column: 30, scope: !1336, inlinedAt: !72915)
!72919 = distinct !DILocation(line: 3894, column: 14, scope: !1337, inlinedAt: !72918)
!72920 = distinct !DILocation(line: 3895, column: 14, scope: !1337, inlinedAt: !72918)
!72921 = distinct !DILocation(line: 1856, column: 27, scope: !1338, inlinedAt: !72920)
!72922 = distinct !DILocation(line: 1873, column: 76, scope: !1338, inlinedAt: !72920)
!72923 = distinct !DILocation(line: 1974, column: 25, scope: !1339, inlinedAt: !72922)
!72924 = distinct !DILocation(line: 1977, column: 18, scope: !1339, inlinedAt: !72922)
!72925 = distinct !DILocation(line: 305, column: 20, scope: !1342, inlinedAt: !72924)
!72926 = distinct !DILocation(line: 622, column: 14, scope: !1341, inlinedAt: !72925)
!72927 = !{!692, !7654, !3492, !3492}
!72928 = !DISubroutineType(types: !72927)
!72929 = !DISubprogram(name: "render", linkageName: "_RNvMNtNtCs5yXxDE1DkoT_4tera2vm11interpreterNtB2_14VirtualMachine6render", scope: !491, file: !3254, line: 1031, type: !72928, scopeLine: 1031, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1852)
!72930 = !DILocalVariable(name: "self", arg: 1, scope: !72872, file: !3254, line: 1032, type: !7654)
!72931 = !DILocalVariable(name: "context", arg: 2, scope: !72872, file: !3254, line: 1033, type: !3492)
!72932 = !DILocalVariable(name: "global_context", arg: 3, scope: !72872, file: !3254, line: 1034, type: !3492)
!72933 = !DILocalVariable(name: "output", scope: !72871, file: !3254, line: 1036, type: !7, align: 64)
!72934 = !DILocalVariable(name: "residual", scope: !72870, file: !3254, line: 1037, type: !577, align: 64)
!72935 = !DILocalVariable(name: "val", scope: !72869, file: !3254, line: 1037, type: !1829, align: 8)
!72936 = !DILocalVariable(name: "residual", scope: !72868, file: !3254, line: 1038, type: !632, align: 64)
!72937 = !DILocalVariable(name: "val", scope: !72867, file: !3254, line: 1038, type: !8, align: 64)
!72938 = !{!72930, !72931, !72932, !72933, !72934, !72935, !72936, !72937}
!72939 = !DILocalVariable(name: "e", scope: !72875, file: !3774, line: 2178, type: !628, align: 64)
!72940 = !DILocalVariable(name: "self", arg: 1, scope: !72874, file: !3774, line: 2175, type: !684)
!72941 = !DILocalVariable(name: "v", scope: !72873, file: !3774, line: 2177, type: !8, align: 64)
!72942 = !{!72940, !72941, !72939}
!72943 = !DILocation(line: 1038, column: 12, scope: !72871)
!72944 = !DILocation(line: 2178, column: 17, scope: !72875, inlinedAt: !72943)
!72945 = !DILocation(line: 2177, column: 16, scope: !72873, inlinedAt: !72943)
!72946 = !DILocation(line: 1038, column: 37, scope: !72868)
!72947 = !DILocalVariable(name: "residual", arg: 1, scope: !72877, file: !3774, line: 2188, type: !632)
!72948 = !DILocalVariable(name: "e", scope: !72876, file: !3774, line: 2190, type: !628, align: 64)
!72949 = !{!72947, !72948}
!72950 = !DILexicalBlockFile(scope: !72868, file: !3254, discriminator: 2)
!72951 = !DILocation(line: 1038, column: 12, scope: !72950)
!72952 = !DILocation(line: 2188, column: 22, scope: !72877, inlinedAt: !72951)
!72953 = !DILocation(line: 2175, column: 15, scope: !72874, inlinedAt: !72943)
!72954 = !DILocation(line: 0, scope: !72872)
!72955 = !DILocation(line: 1036, column: 13, scope: !72871)
!72956 = !DILocalVariable(name: "self", arg: 1, scope: !72880, file: !3774, line: 2175, type: !573)
!72957 = !DILocalVariable(name: "v", scope: !72879, file: !3774, line: 2177, type: !1829, align: 8)
!72958 = !DILocalVariable(name: "e", scope: !72878, file: !3774, line: 2178, type: !569, align: 64)
!72959 = !{!72956, !72957, !72958}
!72960 = !DILocation(line: 1037, column: 9, scope: !72871)
!72961 = !DILocation(line: 2175, column: 15, scope: !72880, inlinedAt: !72960)
!72962 = !DILocation(line: 1037, column: 67, scope: !72870)
!72963 = !DILocalVariable(name: "residual", arg: 1, scope: !72882, file: !3774, line: 2188, type: !577)
!72964 = !DILocalVariable(name: "e", scope: !72881, file: !3774, line: 2190, type: !569, align: 64)
!72965 = !{!72963, !72964}
!72966 = !DILexicalBlockFile(scope: !72870, file: !3254, discriminator: 2)
!72967 = !DILocation(line: 1037, column: 9, scope: !72966)
!72968 = !DILocation(line: 2188, column: 22, scope: !72882, inlinedAt: !72967)
!72969 = !DILocation(line: 2178, column: 17, scope: !72878, inlinedAt: !72960)
!72970 = !DILocation(line: 2190, column: 17, scope: !72881, inlinedAt: !72967)
!72971 = !DILocation(line: 2190, column: 17, scope: !72876, inlinedAt: !72951)
!72972 = !DILocalVariable(name: "len", scope: !72883, file: !4227, line: 786, type: !1832, align: 64)
!72973 = !DILocalVariable(name: "self", arg: 1, scope: !72883, file: !4227, line: 786, type: !4228)
!72974 = !DILocalVariable(name: "additional", arg: 3, scope: !72883, file: !4227, line: 786, type: !1832)
!72975 = !DILocalVariable(name: "elem_layout", arg: 4, scope: !72883, file: !4227, line: 786, type: !637)
!72976 = !{!72973, !72972, !72974, !72975}
!72977 = !DILocation(line: 1036, column: 26, scope: !72872)
!72978 = !DILocation(line: 525, column: 9, scope: !72884, inlinedAt: !72977)
!72979 = !DILocation(line: 973, column: 20, scope: !72885, inlinedAt: !72978)
!72980 = !DILocation(line: 179, column: 20, scope: !72886, inlinedAt: !72979)
!72981 = !DILocation(line: 450, column: 50, scope: !72889, inlinedAt: !72980)
!72982 = !DILocation(line: 0, scope: !72883, inlinedAt: !72981)
!72983 = !DILocalVariable(name: "capacity", arg: 1, scope: !72884, file: !4232, line: 524, type: !1832)
!72984 = !{!72983}
!72985 = !DILocalVariable(name: "capacity", arg: 1, scope: !72885, file: !4232, line: 972, type: !1832)
!72986 = !DILocalVariable(name: "alloc", scope: !72885, file: !4232, line: 972, type: !1, align: 8)
!72987 = !{!72985, !72986}
!72988 = !DILocalVariable(name: "capacity", arg: 1, scope: !72886, file: !4227, line: 177, type: !1832)
!72989 = !DILocalVariable(name: "alloc", scope: !72886, file: !4227, line: 177, type: !1, align: 8)
!72990 = !{!72988, !72989}
!72991 = !DILocalVariable(name: "capacity", arg: 1, scope: !72888, file: !4227, line: 444, type: !1832)
!72992 = !DILocalVariable(name: "alloc", scope: !72888, file: !4227, line: 444, type: !1, align: 8)
!72993 = !DILocalVariable(name: "elem_layout", arg: 3, scope: !72888, file: !4227, line: 444, type: !637)
!72994 = !DILocalVariable(name: "this", scope: !72889, file: !4227, line: 446, type: !5, align: 64)
!72995 = !DILocalVariable(name: "err", scope: !72887, file: !4227, line: 454, type: !808, align: 64)
!72996 = !{!72991, !72992, !72993, !72994, !72995}
!72997 = !DILocation(line: 0, scope: !72884, inlinedAt: !72977)
!72998 = !DILocation(line: 0, scope: !72885, inlinedAt: !72978)
!72999 = !DILocation(line: 0, scope: !72886, inlinedAt: !72979)
!73000 = !DILocation(line: 0, scope: !72888, inlinedAt: !72980)
!73001 = !DILocation(line: 0, scope: !72887, inlinedAt: !72980)
!73002 = !DILocation(line: 0, scope: !72889, inlinedAt: !72980)
!73003 = !DILocation(line: 786, column: 28, scope: !72883, inlinedAt: !72981)
!73004 = !DILocalVariable(name: "cond", arg: 1, scope: !72905, file: !5309, line: 202, type: !2023)
!73005 = !{!73004}
!73006 = !DILocation(line: 450, column: 21, scope: !72889, inlinedAt: !72980)
!73007 = !DILocation(line: 0, scope: !72905, inlinedAt: !73006)
!73008 = !{!72913}
!73009 = !{!72914}
!73010 = !{!72913, !72914}
!73011 = !DILocation(line: 0, scope: !72874, inlinedAt: !72943)
!73012 = !DILocation(line: 0, scope: !72875, inlinedAt: !72943)
!73013 = !DILocation(line: 0, scope: !72868)
!73014 = !DILocation(line: 0, scope: !72877, inlinedAt: !72951)
!73015 = !DILexicalBlockFile(scope: !72871, file: !3872, discriminator: 0)
!73016 = !DILocation(line: 0, scope: !72873, inlinedAt: !72943)
!73017 = !DILocation(line: 1036, column: 13, scope: !72872)
!73018 = !DILocation(line: 1036, column: 45, scope: !72872)
!73019 = !DILocation(line: 1036, column: 59, scope: !72872)
!73020 = !DILocation(line: 144, column: 9, scope: !1507, inlinedAt: !72890)
!73021 = !DILocation(line: 2570, column: 13, scope: !1508, inlinedAt: !72894)
!73022 = !DILocation(line: 3974, column: 16, scope: !1510, inlinedAt: !72893)
!73023 = !DILocation(line: 154, column: 20, scope: !1515, inlinedAt: !72901)
!73024 = !DILocation(line: 246, column: 13, scope: !1514, inlinedAt: !72899)
!73025 = !DILocation(line: 3976, column: 22, scope: !1509, inlinedAt: !72893)
!73026 = !DILocation(line: 3945, column: 13, scope: !1512, inlinedAt: !72892)
!73027 = !DILocation(line: 0, scope: !1512, inlinedAt: !72892)
!73028 = !DILocation(line: 445, column: 15, scope: !72888, inlinedAt: !72980)
!73029 = !DILocation(line: 445, column: 9, scope: !72888, inlinedAt: !72980)
!73030 = !DILocation(line: 454, column: 17, scope: !72888, inlinedAt: !72980)
!73031 = !DILocation(line: 454, column: 25, scope: !72887, inlinedAt: !72980)
!73032 = !DILocation(line: 446, column: 16, scope: !72888, inlinedAt: !72980)
!73033 = !DILocation(line: 787, column: 9, scope: !72883, inlinedAt: !72981)
!73034 = !DILocation(line: 210, column: 9, scope: !72905, inlinedAt: !73006)
!73035 = !DILocation(line: 455, column: 9, scope: !72888, inlinedAt: !72980)
!73036 = !DILocation(line: 973, column: 9, scope: !72885, inlinedAt: !72978)
!73037 = !DILocation(line: 1037, column: 14, scope: !72871)
!73038 = !DILocation(line: 2176, column: 15, scope: !72880, inlinedAt: !72960)
!73039 = !DILocation(line: 2176, column: 9, scope: !72880, inlinedAt: !72960)
!73040 = !DILocation(line: 2178, column: 17, scope: !72880, inlinedAt: !72960)
!73041 = !DILocation(line: 1037, column: 67, scope: !72871)
!73042 = !DILocation(line: 848, column: 1, scope: !1163, inlinedAt: !72906)
!73043 = !DILocation(line: 848, column: 1, scope: !1164, inlinedAt: !72908)
!73044 = !DILocation(line: 848, column: 1, scope: !1164, inlinedAt: !72910)
!73045 = !DILocation(line: 1039, column: 5, scope: !72872)
!73046 = !DILocation(line: 1038, column: 30, scope: !72871)
!73047 = !DILocation(line: 570, column: 15, scope: !1336, inlinedAt: !72915)
!73048 = !DILocation(line: 627, column: 9, scope: !1340, inlinedAt: !72926)
!73049 = !DILocation(line: 1873, column: 86, scope: !1338, inlinedAt: !72920)
!73050 = !DILocation(line: 574, column: 5, scope: !1336, inlinedAt: !72915)
!73051 = !DILocation(line: 570, column: 9, scope: !1336, inlinedAt: !72915)
!73052 = !DILocation(line: 571, column: 35, scope: !1336, inlinedAt: !72915)
!73053 = !DILocation(line: 573, column: 9, scope: !1336, inlinedAt: !72915)
!73054 = !DILocation(line: 1038, column: 36, scope: !72871)
!73055 = !DILocation(line: 2176, column: 9, scope: !72874, inlinedAt: !72943)
!73056 = !DILocation(line: 569, column: 5, scope: !1336, inlinedAt: !72915)
!73057 = !DILocation(line: 572, column: 17, scope: !1336, inlinedAt: !72915)
!73058 = !DILocation(line: 572, column: 50, scope: !1335, inlinedAt: !72915)
!73059 = !DILocation(line: 2176, column: 15, scope: !72874, inlinedAt: !72943)
!73060 = !DILocation(line: 2178, column: 17, scope: !72874, inlinedAt: !72943)
!73061 = !DILocation(line: 1038, column: 37, scope: !72871)
!73062 = !DILocation(line: 2190, column: 17, scope: !72877, inlinedAt: !72951)
!73063 = !DILocation(line: 2190, column: 27, scope: !72876, inlinedAt: !72951)
!73064 = !DILocation(line: 2190, column: 40, scope: !72877, inlinedAt: !72951)
!73065 = !DILocation(line: 1038, column: 38, scope: !72871)
!73066 = !DILocation(line: 0, scope: !73015)
!73067 = !DILocation(line: 0, scope: !1336, inlinedAt: !72915)
!73068 = !DILocation(line: 2177, column: 16, scope: !72874, inlinedAt: !72943)
!73069 = !DILocation(line: 1038, column: 9, scope: !72871)
!73070 = !DILocation(line: 1039, column: 6, scope: !72872)
!73071 = !DILocation(line: 1031, column: 5, scope: !72872)
!73072 = !DILocation(line: 0, scope: !1249)
!73073 = !DILocation(line: 1044, column: 15, scope: !1249)
!73074 = !DILocation(line: 1044, column: 9, scope: !1249)
!73075 = !DILocation(line: 1058, column: 6, scope: !1249)
!73076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Weak<alloc::vec::Vec<tera::value::Value, alloc::alloc::Global>, alloc::alloc::Global>", scope: !2103, file: !1601, size: 64, align: 64, flags: DIFlagPublic, elements: !73154, templateParams: !2259, identifier: "1f1cb140e3d67eb76f8bd8690321c29a")
!73077 = distinct !DILexicalBlock(scope: !73083, file: !4996, line: 2714, column: 17)
!73078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !73081, file: !1601, size: 8, align: 8, flags: DIFlagPublic, elements: !73164, templateParams: !2402, identifier: "dde3aed93edb698bb3bcad8cf98217e4")
!73079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !73081, file: !1601, size: 8, align: 8, flags: DIFlagPublic, elements: !1852, templateParams: !2402, identifier: "6bb8ffcc8f640a774d318896ceafb912")
!73080 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !73081, file: !1601, size: 8, align: 8, elements: !73162, templateParams: !1852, identifier: "70fb80ad268c19b38be3997124b0cc49", discriminator: !73165)
!73081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<alloc::alloc::Global>", scope: !2403, file: !1601, size: 8, align: 8, flags: DIFlagPublic, elements: !73159, templateParams: !1852, identifier: "b4d7c5d04ab080de711c7e0ff529438e")
!73082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UniqueArcUninit<alloc::vec::Vec<tera::value::Value, alloc::alloc::Global>, alloc::alloc::Global>", scope: !2103, file: !1601, size: 256, align: 64, flags: DIFlagPrivate, elements: !73158, templateParams: !2259, identifier: "81c5b94bd527b632584fe54a686b3811")
!73083 = distinct !DILexicalBlock(scope: !73085, file: !4996, line: 2693, column: 13)
!73084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Guard<alloc::vec::Vec<tera::value::Value, alloc::alloc::Global>>", scope: !73167, file: !1601, size: 64, align: 64, flags: DIFlagProtected, elements: !73169, templateParams: !2255, identifier: "edc2203863d3948511fc111716bdce0a")
!73085 = distinct !DILexicalBlock(scope: !73086, file: !4996, line: 2687, column: 13)
!73086 = distinct !DILexicalBlock(scope: !73087, file: !4996, line: 2649, column: 9)
!73087 = distinct !DISubprogram(name: "make_mut<alloc::vec::Vec<tera::value::Value, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMsB_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEE8make_mutB10_", scope: !122, file: !4996, line: 2648, type: !73144, scopeLine: 2648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !2259, declaration: !73145, retainedNodes: !73151)
!73088 = distinct !DISubprogram(name: "deref<alloc::vec::Vec<tera::value::Value, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvXsx_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefB10_", scope: !7916, file: !4996, line: 2572, type: !73173, scopeLine: 2572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !2259, retainedNodes: !73174)
!73089 = distinct !DISubprogram(name: "inner<alloc::vec::Vec<tera::value::Value, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEE5innerB10_", scope: !122, file: !4996, line: 2232, type: !5127, scopeLine: 2232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !2259, declaration: !5128, retainedNodes: !73178)
!73090 = distinct !DISubprogram(name: "write<alloc::sync::Arc<alloc::vec::Vec<tera::value::Value, alloc::alloc::Global>, alloc::alloc::Global>>", linkageName: "_RINvNtCsf3Ta7LF998c_4core3ptr5writeINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBC_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEEEB1p_", scope: !1863, file: !3911, line: 1943, type: !73205, scopeLine: 1943, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !7828, retainedNodes: !73207)
!73091 = distinct !DISubprogram(name: "get_mut_unchecked<alloc::vec::Vec<tera::value::Value, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMsD_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEE17get_mut_uncheckedB10_", scope: !122, file: !4996, line: 2868, type: !73144, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !2259, declaration: !73213, retainedNodes: !73214)
!73092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !73095, file: !1601, size: 128, align: 64, flags: DIFlagPublic, elements: !73228, templateParams: !73230, identifier: "cbf01cac827dcdbf3fe6943c7018495")
!73093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !73095, file: !1601, size: 128, align: 64, flags: DIFlagPublic, elements: !73232, templateParams: !73230, identifier: "96d3febc070b6f14c861703f7ea30545")
!73094 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !73095, file: !1601, size: 128, align: 64, elements: !73226, templateParams: !1852, identifier: "eda380c4ba528378aa49308b3a144deb", discriminator: !73233)
!73095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Result<usize, usize>", scope: !3399, file: !1601, size: 128, align: 64, flags: DIFlagPublic, elements: !73223, templateParams: !1852, identifier: "d2a2aa712f5d1351b359857c3ef8a432")
!73096 = distinct !DISubprogram(name: "compare_exchange", linkageName: "_RNvMs16_NtNtCsf3Ta7LF998c_4core4sync6atomicINtB6_6AtomicjE16compare_exchange", scope: !84, file: !4987, line: 3436, type: !73222, scopeLine: 3436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1852, declaration: !73234, retainedNodes: !73239)
!73097 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs16_NtNtCsf3Ta7LF998c_4core4sync6atomicINtB6_6AtomicjE4load", scope: !84, file: !4987, line: 3141, type: !73244, scopeLine: 3141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1852, declaration: !73245, retainedNodes: !73247)
!73098 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs16_NtNtCsf3Ta7LF998c_4core4sync6atomicINtB6_6AtomicjE5store", scope: !84, file: !4987, line: 3220, type: !73252, scopeLine: 3220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1852, declaration: !73253, retainedNodes: !73256)
!73099 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<alloc::vec::Vec<tera::value::Value, alloc::alloc::Global>>>", linkageName: "_RNvMs1_NtNtCsf3Ta7LF998c_4core3ptr8non_nullINtB5_7NonNullINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerINtNtBY_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEEE6as_refB1Q_", scope: !121, file: !4396, line: 450, type: !5132, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !2240, declaration: !5133)
!73100 = distinct !DISubprogram(name: "copy_nonoverlapping<u8>", linkageName: "_RINvNtCsf3Ta7LF998c_4core3ptr19copy_nonoverlappinghECs5yXxDE1DkoT_4tera", scope: !1863, file: !3911, line: 553, type: !5641, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1854, retainedNodes: !73264)
!73101 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs16_NtNtCsf3Ta7LF998c_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !84, file: !4987, line: 4013, type: !73270, scopeLine: 4013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1852, declaration: !73271, retainedNodes: !73272)
!73102 = distinct !DILexicalBlock(scope: !73103, file: !4987, line: 4396, column: 5)
!73103 = distinct !DISubprogram(name: "atomic_compare_exchange<usize>", linkageName: "_RINvNtNtCsf3Ta7LF998c_4core4sync6atomic23atomic_compare_exchangejECs5yXxDE1DkoT_4tera", scope: !1778, file: !4987, line: 4388, type: !73277, scopeLine: 4388, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !2123, retainedNodes: !73284)
!73104 = distinct !DILocation(line: 3442, column: 26, scope: !73096, inlinedAt: !73240)
!73105 = distinct !DILocation(line: 0, scope: !73103, inlinedAt: !73104)
!73106 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCsf3Ta7LF998c_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCs5yXxDE1DkoT_4tera", scope: !83, file: !7917, line: 2434, type: !73291, scopeLine: 2434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !2125, declaration: !73292)
!73107 = distinct !DISubprogram(name: "atomic_load<usize, false>", linkageName: "_RINvNtNtCsf3Ta7LF998c_4core4sync6atomic11atomic_loadjKb0_ECs5yXxDE1DkoT_4tera", scope: !1778, file: !4987, line: 4315, type: !73298, scopeLine: 4315, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !2123, retainedNodes: !73300)
!73108 = distinct !DILocation(line: 3143, column: 26, scope: !73097, inlinedAt: !73248)
!73109 = distinct !DILocation(line: 0, scope: !73107, inlinedAt: !73108)
!73110 = distinct !DILocation(line: 2661, column: 13, scope: !73086)
!73111 = distinct !DILocation(line: 0, scope: !1499, inlinedAt: !73110)
!73112 = distinct !DILocation(line: 848, column: 1, scope: !1499, inlinedAt: !73110)
!73113 = distinct !DILocation(line: 0, scope: !1500, inlinedAt: !73112)
!73114 = distinct !DILocation(line: 2989, column: 32, scope: !1500, inlinedAt: !73112)
!73115 = distinct !DILocation(line: 0, scope: !1502, inlinedAt: !73114)
!73116 = distinct !DILocation(line: 3576, column: 26, scope: !1502, inlinedAt: !73114)
!73117 = distinct !DILocation(line: 0, scope: !1503, inlinedAt: !73116)
!73118 = distinct !DILocation(line: 3574, column: 36, scope: !1502, inlinedAt: !73114)
!73119 = distinct !{!73119, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEEEB1t_"}
!73120 = distinct !{!73120, !73119, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtBG_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEEEB1t_: argument 0"}
!73121 = distinct !{!73121, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB10_"}
!73122 = distinct !{!73122, !73121, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB10_: argument 0"}
!73123 = distinct !DILocation(line: 69, column: 9, scope: !1500, inlinedAt: !73112)
!73124 = distinct !DILocation(line: 0, scope: !1492, inlinedAt: !73123)
!73125 = distinct !DISubprogram(name: "atomic_store<usize, false>", linkageName: "_RINvNtNtCsf3Ta7LF998c_4core4sync6atomic12atomic_storejKb0_ECs5yXxDE1DkoT_4tera", scope: !1778, file: !4987, line: 4299, type: !73307, scopeLine: 4299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !2123, retainedNodes: !73310)
!73126 = distinct !DILocation(line: 3222, column: 26, scope: !73098, inlinedAt: !73257)
!73127 = distinct !DILocation(line: 0, scope: !73125, inlinedAt: !73126)
!73128 = distinct !DISubprogram(name: "data_ptr<alloc::vec::Vec<tera::value::Value, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs1m_NtCsgCecv3eZDcN_5alloc4syncINtB6_15UniqueArcUninitINtNtB8_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueENtNtB8_5alloc6GlobalE8data_ptrB1e_", scope: !73082, file: !4996, line: 4460, type: !73315, scopeLine: 4460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !2259, declaration: !73316, retainedNodes: !73317)
!73129 = distinct !DISubprogram(name: "alignment", linkageName: "_RNvMNtNtCsf3Ta7LF998c_4core5alloc6layoutNtB2_6Layout9alignment", scope: !637, file: !7676, line: 197, type: !73323, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1852, declaration: !73324)
!73130 = distinct !DISubprogram(name: "size_rounded_up_to_custom_alignment", linkageName: "_RNvMNtNtCsf3Ta7LF998c_4core5alloc6layoutNtB2_6Layout35size_rounded_up_to_custom_alignment", scope: !637, file: !7676, line: 352, type: !73327, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1852, declaration: !73328)
!73131 = distinct !DISubprogram(name: "data_offset_alignment", linkageName: "_RNvNtCsgCecv3eZDcN_5alloc4sync21data_offset_alignment", scope: !2103, file: !4996, line: 4413, type: !73333, scopeLine: 4413, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1852)
!73132 = distinct !DISubprogram(name: "padding_needed_for", linkageName: "_RNvMNtNtCsf3Ta7LF998c_4core5alloc6layoutNtB2_6Layout18padding_needed_for", scope: !637, file: !7676, line: 341, type: !73327, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1852, declaration: !73334)
!73133 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCsf3Ta7LF998c_4core3ptr7mut_ptrOh3addCs5yXxDE1DkoT_4tera", scope: !5213, file: !5210, line: 937, type: !5624, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !1854)
!73134 = distinct !DISubprogram(name: "byte_add<alloc::sync::ArcInner<alloc::vec::Vec<tera::value::Value, alloc::alloc::Global>>>", linkageName: "_RNvMNtNtCsf3Ta7LF998c_4core3ptr7mut_ptrOINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerINtNtBH_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEE8byte_addB1z_", scope: !5213, file: !5210, line: 989, type: !73339, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !2240)
!73135 = distinct !DISubprogram(name: "drop_glue<alloc::sync::Weak<alloc::vec::Vec<tera::value::Value, alloc::alloc::Global>, alloc::alloc::Global>>", linkageName: "_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakINtNtBG_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEEEB1u_", scope: !1863, file: !3911, line: 848, type: !73343, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !73346, retainedNodes: !73344)
!73136 = distinct !DILocation(line: 2717, column: 13, scope: !73083)
!73137 = distinct !DILocation(line: 0, scope: !73135, inlinedAt: !73136)
!73138 = distinct !DILocation(line: 2717, column: 13, scope: !73083)
!73139 = distinct !DILocation(line: 0, scope: !73135, inlinedAt: !73138)
!73140 = distinct !DISubprogram(name: "drop_glue<alloc::sync::{impl#39}::make_mut::Guard<alloc::vec::Vec<tera::value::Value, alloc::alloc::Global>>>", linkageName: "_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNvMsB_NtCsgCecv3eZDcN_5alloc4syncINtBK_3ArcppE8make_mut5GuardINtNtBM_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEEEB1X_", scope: !1863, file: !3911, line: 848, type: !73350, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, templateParams: !73353, retainedNodes: !73351)
!73141 = distinct !DILocation(line: 2718, column: 9, scope: !73086)
!73142 = distinct !DILocation(line: 0, scope: !73140, inlinedAt: !73141)
!73143 = !{!4590, !3947}
!73144 = !DISubroutineType(types: !73143)
!73145 = !DISubprogram(name: "make_mut<alloc::vec::Vec<tera::value::Value, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMsB_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEE8make_mutB10_", scope: !122, file: !4996, line: 2648, type: !73144, scopeLine: 2648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2259)
!73146 = !DILocalVariable(name: "this", arg: 1, scope: !73087, file: !4996, line: 2648, type: !3947)
!73147 = !DILocalVariable(name: "size_of_val", scope: !73086, file: !4996, line: 2649, type: !1832, align: 64)
!73148 = !DILocalVariable(name: "guard", scope: !73085, file: !4996, line: 2687, type: !73084, align: 64)
!73149 = !DILocalVariable(name: "in_progress", scope: !73083, file: !4996, line: 2693, type: !73082, align: 64)
!73150 = !DILocalVariable(name: "_weak", scope: !73077, file: !4996, line: 2714, type: !73076, align: 64)
!73151 = !{!73146, !73147, !73148, !73149, !73150}
!73152 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !73076, file: !1601, baseType: !121, size: 64, align: 64, flags: DIFlagPrivate)
!73153 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !73076, file: !1601, baseType: !1, align: 8, offset: 64, flags: DIFlagPrivate)
!73154 = !{!73152, !73153}
!73155 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !73082, file: !1601, baseType: !121, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!73156 = !DIDerivedType(tag: DW_TAG_member, name: "layout_for_value", scope: !73082, file: !1601, baseType: !637, size: 128, align: 64, flags: DIFlagPrivate)
!73157 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !73082, file: !1601, baseType: !73081, size: 8, align: 8, offset: 192, flags: DIFlagPrivate)
!73158 = !{!73155, !73156, !73157}
!73159 = !{!73080}
!73160 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !73080, file: !1601, baseType: !73079, size: 8, align: 8, extraData: i8 0)
!73161 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !73080, file: !1601, baseType: !73078, size: 8, align: 8, extraData: i8 1)
!73162 = !{!73160, !73161}
!73163 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !73078, file: !1601, baseType: !1, align: 8, offset: 8, flags: DIFlagPublic)
!73164 = !{!73163}
!73165 = !DIDerivedType(tag: DW_TAG_member, scope: !73081, file: !1601, baseType: !1604, size: 8, align: 8, flags: DIFlagArtificial)
!73166 = !DINamespace(name: "{impl#39}", scope: !2103)
!73167 = !DINamespace(name: "make_mut", scope: !73166)
!73168 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !73084, file: !1601, baseType: !5125, size: 64, align: 64, flags: DIFlagProtected)
!73169 = !{!73168}
!73170 = !DILocation(line: 0, scope: !73087)
!73171 = !DILocalVariable(name: "self", arg: 1, scope: !73088, file: !4996, line: 2572, type: !3947)
!73172 = !{!4243, !4980}
!73173 = !DISubroutineType(types: !73172)
!73174 = !{!73171}
!73175 = !DILocation(line: 2649, column: 45, scope: !73087)
!73176 = !DILocation(line: 0, scope: !73088, inlinedAt: !73175)
!73177 = !DILocalVariable(name: "self", arg: 1, scope: !73089, file: !4996, line: 2232, type: !3947)
!73178 = !{!73177}
!73179 = !DILocation(line: 2573, column: 15, scope: !73088, inlinedAt: !73175)
!73180 = !DILocation(line: 0, scope: !73089, inlinedAt: !73179)
!73181 = !DILocation(line: 2659, column: 17, scope: !73086)
!73182 = !DILocation(line: 0, scope: !73089, inlinedAt: !73181)
!73183 = !DILocation(line: 2661, column: 45, scope: !73086)
!73184 = !DILocation(line: 0, scope: !73088, inlinedAt: !73183)
!73185 = !DILexicalBlockFile(scope: !73088, file: !4996, discriminator: 2)
!73186 = !DILocation(line: 2573, column: 15, scope: !73185, inlinedAt: !73183)
!73187 = !DILocation(line: 0, scope: !73089, inlinedAt: !73186)
!73188 = !DILocation(line: 2662, column: 24, scope: !73086)
!73189 = !DILocation(line: 0, scope: !73089, inlinedAt: !73188)
!73190 = !DILocation(line: 2687, column: 45, scope: !73086)
!73191 = !DILocation(line: 0, scope: !73089, inlinedAt: !73190)
!73192 = !DILocation(line: 2694, column: 39, scope: !73085)
!73193 = !DILocation(line: 0, scope: !73088, inlinedAt: !73192)
!73194 = !DILexicalBlockFile(scope: !73088, file: !4996, discriminator: 4)
!73195 = !DILocation(line: 2573, column: 15, scope: !73194, inlinedAt: !73192)
!73196 = !DILocation(line: 0, scope: !73089, inlinedAt: !73195)
!73197 = !DILocation(line: 2702, column: 36, scope: !73083)
!73198 = !DILocation(line: 0, scope: !73088, inlinedAt: !73197)
!73199 = !DILexicalBlockFile(scope: !73088, file: !4996, discriminator: 6)
!73200 = !DILocation(line: 2573, column: 15, scope: !73199, inlinedAt: !73197)
!73201 = !DILocation(line: 0, scope: !73089, inlinedAt: !73200)
!73202 = !DILocalVariable(name: "dst", arg: 1, scope: !73090, file: !3911, line: 1943, type: !3947)
!73203 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut alloc::sync::Arc<alloc::vec::Vec<tera::value::Value, alloc::alloc::Global>, alloc::alloc::Global>", baseType: !122, size: 64, align: 64, dwarfAddressSpace: 0)
!73204 = !{null, !73203, !122, !3776}
!73205 = !DISubroutineType(types: !73204)
!73206 = !DILocalVariable(name: "src", arg: 2, scope: !73090, file: !3911, line: 1943, type: !122)
!73207 = !{!73202, !73206}
!73208 = !DILocation(line: 2716, column: 17, scope: !73077)
!73209 = !DILocation(line: 0, scope: !73090, inlinedAt: !73208)
!73210 = !DILocation(line: 2721, column: 18, scope: !73086)
!73211 = !DILocation(line: 0, scope: !73089, inlinedAt: !73210)
!73212 = !DILocalVariable(name: "this", arg: 1, scope: !73091, file: !4996, line: 2868, type: !3947)
!73213 = !DISubprogram(name: "get_mut_unchecked<alloc::vec::Vec<tera::value::Value, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMsD_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtCs5yXxDE1DkoT_4tera5value5ValueEE17get_mut_uncheckedB10_", scope: !122, file: !4996, line: 2868, type: !73144, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2259)
!73214 = !{!73212}
!73215 = !DILocation(line: 2726, column: 18, scope: !73086)
!73216 = !DILocation(line: 0, scope: !73091, inlinedAt: !73215)
!73217 = !DILocation(line: 2687, column: 17, scope: !73085)
!73218 = !DILocation(line: 2693, column: 17, scope: !73083)
!73219 = !DILocation(line: 2714, column: 21, scope: !73077)
!73220 = !DILocalVariable(name: "current", scope: !73096, file: !4987, line: 3437, type: !1832, align: 64)
!73221 = !{!73095, !4989, !1832, !1832, !1785, !1785}
!73222 = !DISubroutineType(types: !73221)
end_hunk_3

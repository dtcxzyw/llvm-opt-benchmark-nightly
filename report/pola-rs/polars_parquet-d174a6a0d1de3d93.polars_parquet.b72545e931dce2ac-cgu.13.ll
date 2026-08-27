Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.13?download=true
inline.NumInlined: 1332
inline.NumDeleted: 801
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_RINvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB6_22MutableBinaryViewArrayShE15extend_constantRAhj0_ECsfISxE4fmY1Y_14polars_parquet:bb.a
  ret void, !dbg !61

bb.h:                                             ; preds = %.thread20, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !dbg !62
  br label %bb.i, !dbg !64

bb.i:                                             ; preds = %bb.f, %bb.h
  store i64 %1, ptr %i.a, align 8, !dbg !65
  %.sroa.5.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false), !dbg !65
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !66
  call void @_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_n7RepeatNBG_EECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a), !dbg !67
  %i.g = load i32, ptr %i.b, align 4, !dbg !79, !noundef !15
  %i.h = zext i32 %i.g to i64, !dbg !79
  %i.i = mul i64 %1, %i.h, !dbg !79
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !80 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !dbg !80, !noundef !15
  %i.l = add i64 %i.i, %i.k, !dbg !80
  store i64 %i.l, ptr %i.j, align 8, !dbg !80
  br label %bb.g, !dbg !81
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB6_22MutableBinaryViewArrayShE15extend_constantRB1u_ECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(160) %0, i64 noundef %1, ptr noalias noundef readonly captures(address_is_null) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !82 {
bb.a:
  %.sroa.512 = alloca [16 x i8], align 8          ; 5 uses
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %.not19 = icmp eq ptr %2, null, !dbg !83        ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !range !28  ; 2 uses
  %.not = icmp eq i64 %i.d, -9223372036854775808
  %or.cond = select i1 %.not19, i1 %.not, i1 false, !dbg !90
  br i1 %or.cond, label %bb.c, label %bb.b, !dbg !90

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.e = phi i64 [ %.pre, %bb.c ], [ %i.d, %bb.a ], !dbg !91
  %.not18 = icmp eq i64 %i.e, -9223372036854775808, !dbg !91
  %i.f = icmp eq i64 %1, 0                        ; 2 uses
  %or.cond23 = or i1 %i.f, %.not18, !dbg !93
  br i1 %or.cond23, label %bb.d, label %bb.e, !dbg !93

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE13init_validityCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(160) %0, i1 noundef zeroext false), !dbg !94
  %.pre = load i64, ptr %i.c, align 8, !dbg !91, !range !28
  br label %bb.b, !dbg !94

bb.d:                                             ; preds = %bb.b
  br i1 %.not19, label %bb.g, label %bb.f, !dbg !95

bb.e:                                             ; preds = %bb.b
  br i1 %.not19, label %.thread, label %.thread27, !dbg !97

.thread:                                          ; preds = %bb.e
  tail call void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap12extend_unset(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %1), !dbg !100
  br label %bb.g, !dbg !95

.thread27:                                        ; preds = %bb.e
  tail call void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10extend_set(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %1), !dbg !101
  call void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE22push_value_into_bufferCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !102
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.512), !dbg !103
  br label %bb.h, !dbg !107

bb.f:                                             ; preds = %bb.d
  call void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE22push_value_into_bufferCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !102
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.512), !dbg !103
  br i1 %i.f, label %bb.i, label %bb.h, !dbg !107

bb.g:                                             ; preds = %.thread, %bb.i, %bb.d
  ret void, !dbg !112

bb.h:                                             ; preds = %.thread27, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !dbg !113
  br label %bb.i, !dbg !115

bb.i:                                             ; preds = %bb.f, %bb.h
  store i64 %1, ptr %i.a, align 8, !dbg !116
  %.sroa.512.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512, i64 16, i1 false), !dbg !116
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.512), !dbg !117
  call void @_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_n7RepeatNBG_EECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a), !dbg !118
  %i.g = load i32, ptr %i.b, align 4, !dbg !123, !noundef !15
  %i.h = zext i32 %i.g to i64, !dbg !123
  %i.i = mul i64 %1, %i.h, !dbg !123
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !124 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !dbg !124, !noundef !15
  %i.l = add i64 %i.i, %i.k, !dbg !124
  store i64 %i.l, ptr %i.j, align 8, !dbg !124
  br label %bb.g, !dbg !125
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB5_7Decoder13gather_n_intoNtB5_11SumGathererEBd_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(648) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %2, i64 noundef %3, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !126 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 608, !dbg !134
  %.val = load i64, ptr %i.g, align 8, !dbg !134, !noundef !15 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 632, !dbg !134 ; 4 uses
  %.val35 = load i64, ptr %i.h, align 8, !dbg !134, !noundef !15
  %i.i = add i64 %.val35, %.val, !dbg !135
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.i, i64 %3), !dbg !139 ; 4 uses
  %i.j = icmp eq i64 %.sroa.0.0.i, 0, !dbg !145
  br i1 %i.j, label %bb.b, label %bb.c, !dbg !145

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !146
  br label %bb.d, !dbg !147

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 624, !dbg !150 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 616, !dbg !151 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !dbg !151, !noundef !15 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0, !dbg !150
  br i1 %i.n, label %bb.f, label %bb.e, !dbg !150

bb.d:                                             ; preds = %bb.y, %bb.z, %bb.i, %bb.t, %bb.v, %bb.x, %bb.w, %bb.b
  ret void, !dbg !152

bb.e:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.k, align 8, !dbg !150, !noundef !15
  %i.p = udiv i64 %i.o, %i.m, !dbg !150           ; 2 uses
  %.not = icmp ugt i64 %.sroa.0.0.i, %.val, !dbg !153
  br i1 %.not, label %bb.g, label %bb.h, !dbg !153

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #29, !dbg !150
  unreachable, !dbg !150

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !156
  call fastcc void @_RINvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB5_7Decoder19gather_block_n_intoNtB5_11SumGathererEBd_(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.e, ptr noalias noundef align 8 dereferenceable(648) %1, ptr noalias noundef align 8 dereferenceable(8) %2, i64 noundef %.val, ptr noalias noundef align 8 dereferenceable(8) %4), !dbg !157
  %i.q = load i64, ptr %i.e, align 8, !dbg !158, !range !163, !noundef !15
  %.not30 = icmp eq i64 %i.q, -9223372036854775803, !dbg !158
  br i1 %.not30, label %bb.j, label %bb.i, !dbg !164

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !165
  call fastcc void @_RINvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB5_7Decoder19gather_block_n_intoNtB5_11SumGathererEBd_(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.f, ptr noalias noundef align 8 dereferenceable(648) %1, ptr noalias noundef align 8 dereferenceable(8) %2, i64 noundef %.sroa.0.0.i, ptr noalias noundef align 8 dereferenceable(8) %4), !dbg !166
  %i.r = load i64, ptr %i.f, align 8, !dbg !167, !range !163, !noundef !15
  %.not34 = icmp eq i64 %i.r, -9223372036854775803, !dbg !167
  br i1 %.not34, label %bb.z, label %bb.y, !dbg !168

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !dbg !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !170
  br label %bb.d, !dbg !171

bb.j:                                             ; preds = %bb.g
  %i.s = sub nuw i64 %.sroa.0.0.i, %.val, !dbg !173 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !170
  %i.t = load i64, ptr %i.h, align 8, !dbg !174, !noundef !15 ; 2 uses
  %.sroa.0.0.i3668 = tail call noundef i64 @llvm.umin.i64(i64 %i.t, i64 %i.s), !dbg !175
  %i.u = load i64, ptr %i.k, align 8, !dbg !177, !noundef !15 ; 2 uses
  %.not3169 = icmp ult i64 %.sroa.0.0.i3668, %i.u, !dbg !178
  br i1 %.not3169, label %._crit_edge, label %.lr.ph, !dbg !178

.lr.ph:                                           ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 640
  %.pre = load ptr, ptr %1, align 8, !dbg !179
  %.pre82 = load i64, ptr %i.v, align 8, !dbg !179
  br label %bb.k, !dbg !178

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_.exit.thread, %bb.j
  %.sroa.0.0.lcssa = phi i64 [ %i.s, %bb.j ], [ %i.cg, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_.exit.thread ], !dbg !180 ; 2 uses
  %i.x = icmp eq i64 %.sroa.0.0.lcssa, 0, !dbg !181
  br i1 %i.x, label %bb.t, label %bb.u, !dbg !181

bb.k:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_.exit.thread
  %i.y = phi i64 [ %i.t, %.lr.ph ], [ %i.ch, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_.exit.thread ]
  %i.z = phi i64 [ %i.u, %.lr.ph ], [ %i.cf, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_.exit.thread ]
  %i.aa = phi i64 [ %.pre82, %.lr.ph ], [ %.sroa.12.0.lcssa.i, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_.exit.thread ], !dbg !179 ; 6 uses
  %i.ab = phi ptr [ %.pre, %.lr.ph ], [ %.sroa.0.0.lcssa.i, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_.exit.thread ], !dbg !179 ; 3 uses
  %.sroa.0.070 = phi i64 [ %i.s, %.lr.ph ], [ %i.cg, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_.exit.thread ]
  %i.ac = load i64, ptr %i.l, align 8, !dbg !182, !noundef !15 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183), !dbg !186
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa, !dbg !187
  %i.ae = icmp samesign eq i64 %i.aa, 0, !dbg !222
  br i1 %i.ae, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread.i, label %.lr.ph.i.i.i, !dbg !236

.lr.ph.i.i.i:                                     ; preds = %bb.k, %.lr.ph.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i ], [ 0, %bb.k ]
  %.sroa.02.010.i.i.i = phi i32 [ %i.ap, %.lr.ph.i.i.i ], [ 0, %bb.k ] ; 2 uses
  %.sroa.04.09.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i ], [ 0, %bb.k ] ; 2 uses
  %.sroa.06.08.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %i.ab, %bb.k ] ; 2 uses
  %i.af = add nuw nsw i64 %.sroa.04.09.i.i.i, 1, !dbg !237 ; 3 uses
  %i.ag = load i8, ptr %.sroa.06.08.i.i.i, align 1, !dbg !239, !alias.scope !246, !noalias !251, !noundef !15 ; 2 uses
  %i.ah = and i8 %i.ag, 127, !dbg !256
  %i.ai = zext nneg i8 %i.ah to i64, !dbg !261
  %i.aj = and i32 %.sroa.02.010.i.i.i, 63, !dbg !268
  %i.ak = zext nneg i32 %i.aj to i64, !dbg !268
  %i.al = shl i64 %i.ai, %i.ak, !dbg !268
  %i.am = or i64 %i.al, %.sroa.0.011.i.i.i, !dbg !269 ; 3 uses
  %i.an = icmp sgt i8 %i.ag, -1, !dbg !270
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i, i64 1 ; 2 uses
  %i.ap = add i32 %.sroa.02.010.i.i.i, 7
  %i.aq = icmp eq ptr %i.ao, %i.ad
  %or.cond.i.i.i = select i1 %i.an, i1 true, i1 %i.aq, !dbg !270
  br i1 %or.cond.i.i.i, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.i, label %.lr.ph.i.i.i, !dbg !270

_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.i: ; preds = %.lr.ph.i.i.i
  %i.ar = lshr i64 %i.am, 1, !dbg !271
  %i.as = and i64 %i.am, 1, !dbg !273
  %i.at = sub nsw i64 0, %i.as, !dbg !274
  %i.au = xor i64 %i.ar, %i.at, !dbg !271
  %.not180.i = icmp samesign ult i64 %.sroa.04.09.i.i.i, %i.aa, !dbg !275
  br i1 %.not180.i, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread.i, label %bb.l, !dbg !275, !prof !285

_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread.i: ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.i, %bb.k
  %i.av = phi i64 [ %i.au, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.i ], [ 0, %bb.k ]
  %.sroa.04.1.i.i176.i = phi i64 [ %i.af, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.i ], [ 0, %bb.k ] ; 2 uses
  %i.aw = sub nuw nsw i64 %i.aa, %.sroa.04.1.i.i176.i, !dbg !286 ; 2 uses
  %.not.i = icmp ugt i64 %i.ac, %i.aw, !dbg !287
  br i1 %.not.i, label %bb.m, label %bb.o, !dbg !287

bb.l:                                             ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.i
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.af, i64 noundef range(i64 0, -9223372036854775808) %i.aa, i64 noundef range(i64 0, -9223372036854775808) %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #29, !dbg !291, !noalias !292
  unreachable, !dbg !291

bb.m:                                             ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !293, !noalias !344
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 48, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !293, !noalias !344
  %i.ax = load i64, ptr %i.b, align 8, !dbg !293, !range !347, !noalias !344, !noundef !15
  %i.ay = trunc nuw i64 %i.ax to i1, !dbg !348
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !349
  %i.ba = load i64, ptr %i.az, align 8, !dbg !349, !range !28, !noalias !344, !noundef !15 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !349 ; 2 uses
  br i1 %i.ay, label %bb.n, label %_RNCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB4_11SumGathererE0Bc_.exit.i, !dbg !348, !prof !350

bb.n:                                             ; preds = %bb.m
  %i.bc = load i64, ptr %i.bb, align 8, !dbg !351, !noalias !344
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ba, i64 %i.bc) #30, !dbg !352, !noalias !344
  unreachable, !dbg !352

_RNCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB4_11SumGathererE0Bc_.exit.i: ; preds = %bb.m
  %i.bd = load ptr, ptr %i.bb, align 8, !dbg !354, !noalias !344, !nonnull !15, !noundef !15 ; 2 uses
  %i.be = icmp samesign ugt i64 %i.ba, 47, !dbg !355
  tail call void @llvm.assume(i1 %i.be), !dbg !359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !364, !noalias !344
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.bd, ptr noundef nonnull align 1 dereferenceable(48) @45, i64 48, i1 false), !dbg !365, !noalias !344
  br label %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_.exit, !dbg !375

bb.o:                                             ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.04.1.i.i176.i, !dbg !377 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ac, !dbg !382 ; 3 uses
  %i.bh = sub nuw nsw i64 %i.aw, %i.ac, !dbg !389 ; 2 uses
  %i.bi = icmp samesign eq i64 %i.ac, 0, !dbg !390
  br i1 %i.bi, label %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_.exit.thread, label %.lr.ph.i, !dbg !399

.lr.ph.i:                                         ; preds = %bb.o, %bb.s
  %.sroa.0.0166.i = phi ptr [ %i.ca, %bb.s ], [ %i.bg, %bb.o ] ; 2 uses
  %.sroa.12.0165.i = phi i64 [ %i.bz, %bb.s ], [ %i.bh, %bb.o ] ; 2 uses
  %.sroa.033.0164.i = phi ptr [ %i.bj, %bb.s ], [ %i.bf, %bb.o ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.033.0164.i, i64 1, !dbg !400 ; 2 uses
  %i.bk = load i8, ptr %.sroa.033.0164.i, align 1, !dbg !404, !alias.scope !183, !noalias !251, !noundef !15 ; 2 uses
  %i.bl = zext i8 %i.bk to i64, !dbg !405
  %i.bm = mul i64 %i.p, %i.bl, !dbg !408          ; 2 uses
  %i.bn = lshr i64 %i.bm, 3, !dbg !409
  %i.bo = and i64 %i.bm, 7, !dbg !415
  %.not150.i = icmp ne i64 %i.bo, 0, !dbg !417
  %i.bp = zext i1 %.not150.i to i64, !dbg !417
  %.sroa.057.0.i = add nuw nsw i64 %i.bn, %i.bp, !dbg !417 ; 4 uses
  %.not151.i = icmp ugt i64 %.sroa.057.0.i, %.sroa.12.0165.i, !dbg !419
  br i1 %.not151.i, label %bb.p, label %bb.r, !dbg !419

bb.p:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !421, !noalias !449
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 48, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !421, !noalias !452
  %i.bq = load i64, ptr %i.a, align 8, !dbg !421, !range !347, !noalias !449, !noundef !15
  %i.br = trunc nuw i64 %i.bq to i1, !dbg !453
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !454
  %i.bt = load i64, ptr %i.bs, align 8, !dbg !454, !range !28, !noalias !449, !noundef !15 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !454 ; 2 uses
  br i1 %i.br, label %bb.q, label %_RNCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB4_11SumGathererEs_0Bc_.exit.i, !dbg !453, !prof !350

bb.q:                                             ; preds = %bb.p
  %i.bv = load i64, ptr %i.bu, align 8, !dbg !455, !noalias !449
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bt, i64 %i.bv) #30, !dbg !456, !noalias !452
  unreachable, !dbg !456

_RNCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB4_11SumGathererEs_0Bc_.exit.i: ; preds = %bb.p
  %i.bw = load ptr, ptr %i.bu, align 8, !dbg !458, !noalias !449, !nonnull !15, !noundef !15 ; 2 uses
  %i.bx = icmp samesign ugt i64 %i.bt, 47, !dbg !459
  tail call void @llvm.assume(i1 %i.bx), !dbg !463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !466, !noalias !449
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.bw, ptr noundef nonnull align 1 dereferenceable(48) @46, i64 48, i1 false), !dbg !467, !noalias !452
  br label %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_.exit, !dbg !473

bb.r:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !475, !noalias !292
  call fastcc void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder16gather_miniblockNtB2_11SumGathererEBa_(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.av, i8 noundef %i.bk, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0166.i, i64 noundef %.sroa.057.0.i, i64 noundef %i.p, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(8) %4), !dbg !475, !noalias !476
  %i.by = load i64, ptr %i.c, align 8, !dbg !477, !range !163, !noalias !292, !noundef !15 ; 2 uses
  %.not152.i = icmp eq i64 %i.by, -9223372036854775803, !dbg !477
  br i1 %.not152.i, label %bb.s, label %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_.exit.thread45, !dbg !480

_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_.exit.thread45: ; preds = %bb.r
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !481
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !481, !noalias !482
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !481
  %.sroa.13.0.copyload = load i64, ptr %.sroa.13.0..sroa_idx, align 8, !dbg !481, !noalias !482
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !481
  %.sroa.18.0.copyload = load i64, ptr %.sroa.18.0..sroa_idx, align 8, !dbg !481, !noalias !482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !483, !noalias !292
  br label %bb.x, !dbg !484

bb.s:                                             ; preds = %bb.r
  %i.bz = sub nuw nsw i64 %.sroa.12.0165.i, %.sroa.057.0.i, !dbg !486 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0166.i, i64 %.sroa.057.0.i, !dbg !491 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !483, !noalias !292
  %i.cb = icmp eq ptr %i.bj, %i.bg, !dbg !390
  br i1 %i.cb, label %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_.exit.thread.loopexit, label %.lr.ph.i, !dbg !399

_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_.exit: ; preds = %_RNCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB4_11SumGathererE0Bc_.exit.i, %_RNCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB4_11SumGathererEs_0Bc_.exit.i
  %.sroa.13.0.in = phi ptr [ %i.bd, %_RNCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB4_11SumGathererE0Bc_.exit.i ], [ %i.bw, %_RNCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB4_11SumGathererEs_0Bc_.exit.i ]
  %.sroa.8.0 = phi i64 [ %i.ba, %_RNCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB4_11SumGathererE0Bc_.exit.i ], [ %i.bt, %_RNCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB4_11SumGathererEs_0Bc_.exit.i ], !dbg !494
  %.sroa.13.0 = ptrtoint ptr %.sroa.13.0.in to i64, !dbg !495
  br label %bb.x, !dbg !484

bb.t:                                             ; preds = %._crit_edge
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !498
  br label %bb.d, !dbg !171

bb.u:                                             ; preds = %._crit_edge
  tail call void @_RNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB4_7Decoder13consume_block(ptr noalias noundef nonnull align 8 dereferenceable(648) %1), !dbg !499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !500
  call fastcc void @_RINvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB5_7Decoder19gather_block_n_intoNtB5_11SumGathererEBd_(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef align 8 dereferenceable(648) %1, ptr noalias noundef align 8 dereferenceable(8) %2, i64 noundef %.sroa.0.0.lcssa, ptr noalias noundef align 8 dereferenceable(8) %4), !dbg !501
  %i.cc = load i64, ptr %i.d, align 8, !dbg !502, !range !163, !noundef !15
  %.not32 = icmp eq i64 %i.cc, -9223372036854775803, !dbg !502
  br i1 %.not32, label %bb.w, label %bb.v, !dbg !503

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !505
  br label %bb.d, !dbg !171

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !505
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !506
  br label %bb.d, !dbg !152

bb.x:                                             ; preds = %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_.exit, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_.exit.thread45
  %.sroa.0.03754 = phi i64 [ %i.by, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_.exit.thread45 ], [ -9223372036854775808, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_.exit ]
  %.sroa.8.053 = phi i64 [ %.sroa.8.0.copyload, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_.exit.thread45 ], [ %.sroa.8.0, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_.exit ]
  %.sroa.13.052 = phi i64 [ %.sroa.13.0.copyload, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_.exit.thread45 ], [ %.sroa.13.0, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_.exit ]
  %.sroa.18.051 = phi i64 [ %.sroa.18.0.copyload, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_.exit.thread45 ], [ 48, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_.exit ]
  %i.cd = inttoptr i64 %.sroa.8.053 to ptr, !dbg !507
  store i64 %.sroa.0.03754, ptr %0, align 8, !dbg !508
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !508
  store ptr %i.cd, ptr %.sroa.225.0..sroa_idx, align 8, !dbg !508
  %.sroa.326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !508
  store i64 %.sroa.13.052, ptr %.sroa.326.0..sroa_idx, align 8, !dbg !508
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !508
  store i64 %.sroa.18.051, ptr %.sroa.427.0..sroa_idx, align 8, !dbg !508
  br label %bb.d, !dbg !171

_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_.exit.thread.loopexit: ; preds = %bb.s
  %.pre83 = load i64, ptr %i.k, align 8, !dbg !515
  %.pre84 = load i64, ptr %i.h, align 8, !dbg !516
  br label %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_.exit.thread, !dbg !517

_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_.exit.thread: ; preds = %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_.exit.thread.loopexit, %bb.o
  %i.ce = phi i64 [ %i.y, %bb.o ], [ %.pre84, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_.exit.thread.loopexit ], !dbg !516
  %i.cf = phi i64 [ %i.z, %bb.o ], [ %.pre83, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_.exit.thread.loopexit ], !dbg !515 ; 4 uses
  %.sroa.12.0.lcssa.i = phi i64 [ %i.bh, %bb.o ], [ %i.bz, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_.exit.thread.loopexit ], !dbg !494 ; 2 uses
  %.sroa.0.0.lcssa.i = phi ptr [ %i.bg, %bb.o ], [ %i.ca, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockNtB2_11SumGathererEBa_.exit.thread.loopexit ], !dbg !494 ; 2 uses
  store ptr %.sroa.0.0.lcssa.i, ptr %1, align 8, !dbg !517
  store i64 %.sroa.12.0.lcssa.i, ptr %i.v, align 8, !dbg !517
  %i.cg = sub i64 %.sroa.0.070, %i.cf, !dbg !518  ; 3 uses
  %i.ch = sub i64 %i.ce, %i.cf, !dbg !516         ; 3 uses
  store i64 %i.ch, ptr %i.h, align 8, !dbg !516
  %.sroa.0.0.i36 = tail call noundef i64 @llvm.umin.i64(i64 %i.ch, i64 %i.cg), !dbg !175
  %.not31 = icmp ult i64 %.sroa.0.0.i36, %i.cf, !dbg !178
  br i1 %.not31, label %._crit_edge, label %bb.k, !dbg !178

bb.y:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !dbg !519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !520
  br label %bb.d, !dbg !171

bb.z:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !520
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !521
  br label %bb.d, !dbg !522
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB5_7Decoder19gather_block_n_intoINtNvMs_B5_B1n_9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBd_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(648) %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !523 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 11 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [1 x i8], align 1                 ; 2 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
end_hunk_0
begin_hunk_1_@_RINvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB5_7Decoder23gather_miniblock_n_intoNtB5_11SumGathererEBd_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !dbg !2029
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !2030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !2031
  br label %bb.k, !dbg !1778

bb.af:                                            ; preds = %_RINvXs2R_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_7IterMutyENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB1R_7Decoder23gather_miniblock_n_intoNtB1R_11SumGathererEs_0EB1Z_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !2030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !2031
  %exitcond.not = icmp eq i64 %i.em, %i.eg, !dbg !1782
  br i1 %exitcond.not, label %._crit_edge, label %bb.r, !dbg !1784
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB5_7Decoder7collectINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEBd_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(648) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2032 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2033
  store i64 0, ptr %i.b, align 8, !dbg !2034, !alias.scope !2040
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !2034
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8, !dbg !2034, !alias.scope !2040
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !2034
  store i64 0, ptr %i.d, align 8, !dbg !2034, !alias.scope !2040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2043
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 608, !dbg !2045
  %.val = load i64, ptr %i.e, align 8, !dbg !2045, !noundef !15
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 632, !dbg !2045
  %.val1 = load i64, ptr %i.f, align 8, !dbg !2045, !noundef !15
  %i.g = add i64 %.val1, %.val, !dbg !2046
  invoke void @_RINvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB5_7Decoder9collect_nINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEBd_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(648) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.g)
          to label %bb.c unwind label %bb.b, !dbg !2048

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(24) %i.b) #31
          to label %common.resume unwind label %bb.i, !dbg !2049

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.a, align 8, !dbg !2050, !range !163, !noundef !15
  %.not = icmp eq i64 %i.i, -9223372036854775803, !dbg !2050
  br i1 %.not, label %bb.g, label %bb.d, !dbg !2052

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !2053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2054
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECsfISxE4fmY1Y_14polars_parquet.exit unwind label %bb.e, !dbg !2055

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.f, !dbg !2058

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !2055
  unreachable, !dbg !2055

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.h, %bb.b ]
  resume { ptr, i32 } %common.resume.op, !dbg !2061

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.d
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !dbg !2062
  br label %bb.h, !dbg !2064

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2054
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2065
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !2066
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !2065
  br label %bb.h, !dbg !2064

bb.h:                                             ; preds = %bb.g, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECsfISxE4fmY1Y_14polars_parquet.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2049
  ret void, !dbg !2064

bb.i:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !2067
  unreachable, !dbg !2067
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB5_7Decoder9collect_nINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEBd_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(648) %1, ptr noalias noundef align 8 dereferenceable(24) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2068 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !2069
  store i64 0, ptr %i.g, align 8, !dbg !2071
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !2071
  store ptr %2, ptr %i.h, align 8, !dbg !2071
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2072), !dbg !2075
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2077), !dbg !2075
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 608, !dbg !2079
  %.val.i = load i64, ptr %i.i, align 8, !dbg !2079, !alias.scope !2077, !noalias !2082, !noundef !15 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 632, !dbg !2079 ; 4 uses
  %.val35.i = load i64, ptr %i.j, align 8, !dbg !2079, !alias.scope !2077, !noalias !2082, !noundef !15
  %i.k = add i64 %.val35.i, %.val.i, !dbg !2084
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %3), !dbg !2086 ; 4 uses
  %i.l = icmp eq i64 %.sroa.0.0.i.i, 0, !dbg !2088
  br i1 %i.l, label %bb.b, label %bb.c, !dbg !2088

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !2089, !alias.scope !2072, !noalias !2090
  br label %_RINvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB5_7Decoder13gather_n_intoINtNvMs_B5_B1n_9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBd_.exit, !dbg !2091

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 624, !dbg !2093 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 616, !dbg !2094 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !dbg !2094, !alias.scope !2077, !noalias !2082, !noundef !15 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0, !dbg !2093
  br i1 %i.p, label %bb.e, label %bb.d, !dbg !2093

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.m, align 8, !dbg !2093, !alias.scope !2077, !noalias !2082, !noundef !15
  %i.r = udiv i64 %i.q, %i.o, !dbg !2093          ; 2 uses
  %.not.i = icmp ugt i64 %.sroa.0.0.i.i, %.val.i, !dbg !2095
  br i1 %.not.i, label %bb.f, label %bb.g, !dbg !2095

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #29, !dbg !2093, !noalias !2098
  unreachable, !dbg !2093

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !2099, !noalias !2098
  call fastcc void @_RINvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB5_7Decoder19gather_block_n_intoINtNvMs_B5_B1n_9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBd_(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(648) %1, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g, i64 noundef %.val.i), !dbg !2100, !noalias !2072
  %i.s = load i64, ptr %i.e, align 8, !dbg !2101, !range !163, !noalias !2098, !noundef !15
  %.not30.i = icmp eq i64 %i.s, -9223372036854775803, !dbg !2101
  br i1 %.not30.i, label %bb.i, label %bb.h, !dbg !2104

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !2105, !noalias !2098
  call fastcc void @_RINvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB5_7Decoder19gather_block_n_intoINtNvMs_B5_B1n_9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBd_(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(648) %1, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g, i64 noundef %.sroa.0.0.i.i), !dbg !2106, !noalias !2072
  %i.t = load i64, ptr %i.f, align 8, !dbg !2107, !range !163, !noalias !2098, !noundef !15
  %.not34.i = icmp eq i64 %i.t, -9223372036854775803, !dbg !2107
  br i1 %.not34.i, label %bb.y, label %bb.x, !dbg !2109

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !dbg !2110, !noalias !2090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !2111, !noalias !2098
  br label %_RINvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB5_7Decoder13gather_n_intoINtNvMs_B5_B1n_9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBd_.exit, !dbg !2112

bb.i:                                             ; preds = %bb.f
  %i.u = sub nuw i64 %.sroa.0.0.i.i, %.val.i, !dbg !2114 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !2111, !noalias !2098
  %i.v = load i64, ptr %i.j, align 8, !dbg !2115, !alias.scope !2077, !noalias !2082, !noundef !15 ; 2 uses
  %.sroa.0.0.i3632.i = tail call noundef i64 @llvm.umin.i64(i64 %i.v, i64 %i.u), !dbg !2116
  %i.w = load i64, ptr %i.m, align 8, !dbg !2118, !alias.scope !2077, !noalias !2082, !noundef !15 ; 2 uses
  %.not3133.i = icmp ult i64 %.sroa.0.0.i3632.i, %i.w, !dbg !2119
  br i1 %.not3133.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !2119

.lr.ph.i:                                         ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 640
  %.pre.i = load ptr, ptr %1, align 8, !dbg !2120, !alias.scope !2077, !noalias !2082
  %.pre46.i = load i64, ptr %i.x, align 8, !dbg !2120, !alias.scope !2077, !noalias !2082
  br label %bb.j, !dbg !2119

._crit_edge.i:                                    ; preds = %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B2_NtB2_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBa_.exit.thread.i, %bb.i
  %.sroa.0.0.lcssa.i = phi i64 [ %i.u, %bb.i ], [ %i.ci, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B2_NtB2_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBa_.exit.thread.i ], !dbg !2121 ; 2 uses
  %i.z = icmp eq i64 %.sroa.0.0.lcssa.i, 0, !dbg !2122
  br i1 %i.z, label %bb.s, label %bb.t, !dbg !2122

bb.j:                                             ; preds = %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B2_NtB2_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBa_.exit.thread.i, %.lr.ph.i
  %i.aa = phi i64 [ %i.v, %.lr.ph.i ], [ %i.cj, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B2_NtB2_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBa_.exit.thread.i ]
  %i.ab = phi i64 [ %i.w, %.lr.ph.i ], [ %i.ch, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B2_NtB2_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBa_.exit.thread.i ]
  %i.ac = phi i64 [ %.pre46.i, %.lr.ph.i ], [ %.sroa.12.0.lcssa.i.i, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B2_NtB2_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBa_.exit.thread.i ], !dbg !2120 ; 6 uses
  %i.ad = phi ptr [ %.pre.i, %.lr.ph.i ], [ %.sroa.0.0.lcssa.i.i, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B2_NtB2_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBa_.exit.thread.i ], !dbg !2120 ; 3 uses
  %.sroa.0.034.i = phi i64 [ %i.u, %.lr.ph.i ], [ %i.ci, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B2_NtB2_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBa_.exit.thread.i ]
  %i.ae = load i64, ptr %i.n, align 8, !dbg !2123, !alias.scope !2077, !noalias !2082, !noundef !15 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2124), !dbg !2127
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac, !dbg !2128
  %i.ag = icmp samesign eq i64 %i.ac, 0, !dbg !2137
  br i1 %i.ag, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread.i.i, label %.lr.ph.i.i.i.i, !dbg !2140

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %.sroa.0.011.i.i.i.i = phi i64 [ %i.ao, %.lr.ph.i.i.i.i ], [ 0, %bb.j ]
  %.sroa.02.010.i.i.i.i = phi i32 [ %i.ar, %.lr.ph.i.i.i.i ], [ 0, %bb.j ] ; 2 uses
  %.sroa.04.09.i.i.i.i = phi i64 [ %i.ah, %.lr.ph.i.i.i.i ], [ 0, %bb.j ] ; 2 uses
  %.sroa.06.08.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %i.ad, %bb.j ] ; 2 uses
  %i.ah = add nuw nsw i64 %.sroa.04.09.i.i.i.i, 1, !dbg !2141 ; 3 uses
  %i.ai = load i8, ptr %.sroa.06.08.i.i.i.i, align 1, !dbg !2142, !alias.scope !2144, !noalias !2149, !noundef !15 ; 2 uses
  %i.aj = and i8 %i.ai, 127, !dbg !2153
  %i.ak = zext nneg i8 %i.aj to i64, !dbg !2155
  %i.al = and i32 %.sroa.02.010.i.i.i.i, 63, !dbg !2157
  %i.am = zext nneg i32 %i.al to i64, !dbg !2157
  %i.an = shl i64 %i.ak, %i.am, !dbg !2157
  %i.ao = or i64 %i.an, %.sroa.0.011.i.i.i.i, !dbg !2158 ; 3 uses
  %i.ap = icmp sgt i8 %i.ai, -1, !dbg !2159
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i, i64 1 ; 2 uses
  %i.ar = add i32 %.sroa.02.010.i.i.i.i, 7
  %i.as = icmp eq ptr %i.aq, %i.af
  %or.cond.i.i.i.i = select i1 %i.ap, i1 true, i1 %i.as, !dbg !2159
  br i1 %or.cond.i.i.i.i, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.i.i, label %.lr.ph.i.i.i.i, !dbg !2159

_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.at = lshr i64 %i.ao, 1, !dbg !2160
  %i.au = and i64 %i.ao, 1, !dbg !2161
  %i.av = sub nsw i64 0, %i.au, !dbg !2162
  %i.aw = xor i64 %i.at, %i.av, !dbg !2160
  %.not26.i.i = icmp samesign ult i64 %.sroa.04.09.i.i.i.i, %i.ac, !dbg !2163
  br i1 %.not26.i.i, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread.i.i, label %bb.k, !dbg !2163, !prof !285

_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread.i.i: ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.i.i, %bb.j
  %i.ax = phi i64 [ %i.aw, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.i.i ], [ 0, %bb.j ]
  %.sroa.04.1.i.i22.i.i = phi i64 [ %i.ah, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.i.i ], [ 0, %bb.j ] ; 2 uses
  %i.ay = sub nuw nsw i64 %i.ac, %.sroa.04.1.i.i22.i.i, !dbg !2169 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.ae, %i.ay, !dbg !2170
  br i1 %.not.i.i, label %bb.l, label %bb.n, !dbg !2170

bb.k:                                             ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.i.i
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ah, i64 noundef range(i64 0, -9223372036854775808) %i.ac, i64 noundef range(i64 0, -9223372036854775808) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #29, !dbg !2174, !noalias !2175
  unreachable, !dbg !2174

bb.l:                                             ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2176, !noalias !2204
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 48, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !2176, !noalias !2207
  %i.az = load i64, ptr %i.b, align 8, !dbg !2176, !range !347, !noalias !2204, !noundef !15
  %i.ba = trunc nuw i64 %i.az to i1, !dbg !2208
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !2209
  %i.bc = load i64, ptr %i.bb, align 8, !dbg !2209, !range !28, !noalias !2204, !noundef !15 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !2209 ; 2 uses
  br i1 %i.ba, label %bb.m, label %_RNCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B4_NtB4_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEE0Bc_.exit.i.i, !dbg !2208, !prof !350

bb.m:                                             ; preds = %bb.l
  %i.be = load i64, ptr %i.bd, align 8, !dbg !2210, !noalias !2204
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bc, i64 %i.be) #30, !dbg !2211, !noalias !2207
  unreachable, !dbg !2211

_RNCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B4_NtB4_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEE0Bc_.exit.i.i: ; preds = %bb.l
  %i.bf = load ptr, ptr %i.bd, align 8, !dbg !2213, !noalias !2204, !nonnull !15, !noundef !15 ; 2 uses
  %i.bg = icmp samesign ugt i64 %i.bc, 47, !dbg !2214
  tail call void @llvm.assume(i1 %i.bg), !dbg !2218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2221, !noalias !2204
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.bf, ptr noundef nonnull align 1 dereferenceable(48) @45, i64 48, i1 false), !dbg !2222, !noalias !2207
  br label %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B2_NtB2_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBa_.exit.i, !dbg !2228

bb.n:                                             ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.sroa.04.1.i.i22.i.i, !dbg !2230 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ae, !dbg !2235 ; 3 uses
  %i.bj = sub nuw nsw i64 %i.ay, %i.ae, !dbg !2242 ; 2 uses
  %i.bk = icmp samesign eq i64 %i.ae, 0, !dbg !2243
  br i1 %i.bk, label %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B2_NtB2_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBa_.exit.thread.i, label %.lr.ph.i.i, !dbg !2252

.lr.ph.i.i:                                       ; preds = %bb.n, %bb.r
  %.sroa.0.012.i.i = phi ptr [ %i.cc, %bb.r ], [ %i.bi, %bb.n ] ; 2 uses
  %.sroa.12.011.i.i = phi i64 [ %i.cb, %bb.r ], [ %i.bj, %bb.n ] ; 2 uses
  %.sroa.033.010.i.i = phi ptr [ %i.bl, %bb.r ], [ %i.bh, %bb.n ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.033.010.i.i, i64 1, !dbg !2253 ; 2 uses
  %i.bm = load i8, ptr %.sroa.033.010.i.i, align 1, !dbg !2256, !alias.scope !2124, !noalias !2149, !noundef !15 ; 2 uses
  %i.bn = zext i8 %i.bm to i64, !dbg !2257
  %i.bo = mul i64 %i.r, %i.bn, !dbg !2260         ; 2 uses
  %i.bp = lshr i64 %i.bo, 3, !dbg !2261
  %i.bq = and i64 %i.bo, 7, !dbg !2264
  %.not150.i.i = icmp ne i64 %i.bq, 0, !dbg !2266
  %i.br = zext i1 %.not150.i.i to i64, !dbg !2266
  %.sroa.057.0.i.i = add nuw nsw i64 %i.bp, %i.br, !dbg !2266 ; 4 uses
  %.not151.i.i = icmp ugt i64 %.sroa.057.0.i.i, %.sroa.12.011.i.i, !dbg !2268
  br i1 %.not151.i.i, label %bb.o, label %bb.q, !dbg !2268

bb.o:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2270, !noalias !2298
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 48, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !2270, !noalias !2301
  %i.bs = load i64, ptr %i.a, align 8, !dbg !2270, !range !347, !noalias !2298, !noundef !15
  %i.bt = trunc nuw i64 %i.bs to i1, !dbg !2302
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2303
  %i.bv = load i64, ptr %i.bu, align 8, !dbg !2303, !range !28, !noalias !2298, !noundef !15 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !2303 ; 2 uses
  br i1 %i.bt, label %bb.p, label %_RNCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B4_NtB4_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEs_0Bc_.exit.i.i, !dbg !2302, !prof !350

bb.p:                                             ; preds = %bb.o
  %i.bx = load i64, ptr %i.bw, align 8, !dbg !2304, !noalias !2298
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bv, i64 %i.bx) #30, !dbg !2305, !noalias !2301
  unreachable, !dbg !2305

_RNCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B4_NtB4_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEs_0Bc_.exit.i.i: ; preds = %bb.o
  %i.by = load ptr, ptr %i.bw, align 8, !dbg !2307, !noalias !2298, !nonnull !15, !noundef !15 ; 2 uses
  %i.bz = icmp samesign ugt i64 %i.bv, 47, !dbg !2308
  tail call void @llvm.assume(i1 %i.bz), !dbg !2312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2315, !noalias !2298
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.by, ptr noundef nonnull align 1 dereferenceable(48) @46, i64 48, i1 false), !dbg !2316, !noalias !2301
  br label %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B2_NtB2_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBa_.exit.i, !dbg !2322

bb.q:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2324, !noalias !2325
  call fastcc void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder16gather_miniblockINtNvMs_B2_NtB2_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBa_(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g, i64 noundef %i.ax, i8 noundef %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.012.i.i, i64 noundef %.sroa.057.0.i.i, i64 noundef %i.r, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.y), !dbg !2324, !noalias !2326
  %i.ca = load i64, ptr %i.c, align 8, !dbg !2327, !range !163, !noalias !2325, !noundef !15 ; 2 uses
  %.not152.i.i = icmp eq i64 %i.ca, -9223372036854775803, !dbg !2327
  br i1 %.not152.i.i, label %bb.r, label %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B2_NtB2_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBa_.exit.thread9.i, !dbg !2330

_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B2_NtB2_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBa_.exit.thread9.i: ; preds = %bb.q
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !2331
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !2331, !noalias !2332
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !2331
  %.sroa.13.0.copyload.i = load i64, ptr %.sroa.13.0..sroa_idx.i, align 8, !dbg !2331, !noalias !2332
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !2331
  %.sroa.18.0.copyload.i = load i64, ptr %.sroa.18.0..sroa_idx.i, align 8, !dbg !2331, !noalias !2332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2333, !noalias !2325
  br label %bb.w, !dbg !2334

bb.r:                                             ; preds = %bb.q
  %i.cb = sub nuw nsw i64 %.sroa.12.011.i.i, %.sroa.057.0.i.i, !dbg !2337 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i.i, i64 %.sroa.057.0.i.i, !dbg !2342 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2333, !noalias !2325
  %i.cd = icmp eq ptr %i.bl, %i.bi, !dbg !2243
  br i1 %i.cd, label %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B2_NtB2_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBa_.exit.thread.loopexit.i, label %.lr.ph.i.i, !dbg !2252

_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B2_NtB2_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBa_.exit.i: ; preds = %_RNCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B4_NtB4_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEs_0Bc_.exit.i.i, %_RNCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B4_NtB4_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEE0Bc_.exit.i.i
  %.sroa.13.0.in.i = phi ptr [ %i.bf, %_RNCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B4_NtB4_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEE0Bc_.exit.i.i ], [ %i.by, %_RNCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B4_NtB4_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEs_0Bc_.exit.i.i ]
  %.sroa.8.0.i = phi i64 [ %i.bc, %_RNCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B4_NtB4_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEE0Bc_.exit.i.i ], [ %i.bv, %_RNCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B4_NtB4_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEs_0Bc_.exit.i.i ], !dbg !2345
  %.sroa.13.0.i = ptrtoint ptr %.sroa.13.0.in.i to i64, !dbg !2346
  br label %bb.w, !dbg !2334

bb.s:                                             ; preds = %._crit_edge.i
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !2349, !alias.scope !2072, !noalias !2090
  br label %_RINvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB5_7Decoder13gather_n_intoINtNvMs_B5_B1n_9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBd_.exit, !dbg !2112

bb.t:                                             ; preds = %._crit_edge.i
  tail call void @_RNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB4_7Decoder13consume_block(ptr noalias noundef nonnull align 8 dereferenceable(648) %1), !dbg !2350, !noalias !2082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !2351, !noalias !2098
  call fastcc void @_RINvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB5_7Decoder19gather_block_n_intoINtNvMs_B5_B1n_9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBd_(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(648) %1, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g, i64 noundef %.sroa.0.0.lcssa.i), !dbg !2352, !noalias !2072
  %i.ce = load i64, ptr %i.d, align 8, !dbg !2353, !range !163, !noalias !2098, !noundef !15
  %.not32.i = icmp eq i64 %i.ce, -9223372036854775803, !dbg !2353
  br i1 %.not32.i, label %bb.v, label %bb.u, !dbg !2355

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !2356, !noalias !2090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !2357, !noalias !2098
  br label %_RINvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB5_7Decoder13gather_n_intoINtNvMs_B5_B1n_9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBd_.exit, !dbg !2112

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !2357, !noalias !2098
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !2358, !alias.scope !2072, !noalias !2090
  br label %_RINvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB5_7Decoder13gather_n_intoINtNvMs_B5_B1n_9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBd_.exit, !dbg !2359

bb.w:                                             ; preds = %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B2_NtB2_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBa_.exit.i, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B2_NtB2_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBa_.exit.thread9.i
  %.sroa.0.0118.i = phi i64 [ %i.ca, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B2_NtB2_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBa_.exit.thread9.i ], [ -9223372036854775808, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B2_NtB2_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBa_.exit.i ]
  %.sroa.8.017.i = phi i64 [ %.sroa.8.0.copyload.i, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B2_NtB2_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBa_.exit.thread9.i ], [ %.sroa.8.0.i, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B2_NtB2_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBa_.exit.i ]
  %.sroa.13.016.i = phi i64 [ %.sroa.13.0.copyload.i, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B2_NtB2_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBa_.exit.thread9.i ], [ %.sroa.13.0.i, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B2_NtB2_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBa_.exit.i ]
  %.sroa.18.015.i = phi i64 [ %.sroa.18.0.copyload.i, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B2_NtB2_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBa_.exit.thread9.i ], [ 48, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B2_NtB2_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBa_.exit.i ]
  %i.cf = inttoptr i64 %.sroa.8.017.i to ptr, !dbg !2360
  store i64 %.sroa.0.0118.i, ptr %0, align 8, !dbg !2361, !alias.scope !2072, !noalias !2090
  %.sroa.225.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2361
  store ptr %i.cf, ptr %.sroa.225.0..sroa_idx.i, align 8, !dbg !2361, !alias.scope !2072, !noalias !2090
  %.sroa.326.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2361
  store i64 %.sroa.13.016.i, ptr %.sroa.326.0..sroa_idx.i, align 8, !dbg !2361, !alias.scope !2072, !noalias !2090
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2361
  store i64 %.sroa.18.015.i, ptr %.sroa.427.0..sroa_idx.i, align 8, !dbg !2361, !alias.scope !2072, !noalias !2090
  br label %_RINvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB5_7Decoder13gather_n_intoINtNvMs_B5_B1n_9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBd_.exit, !dbg !2112

_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B2_NtB2_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBa_.exit.thread.loopexit.i: ; preds = %bb.r
  %.pre47.i = load i64, ptr %i.m, align 8, !dbg !2368, !alias.scope !2077, !noalias !2082
  %.pre48.i = load i64, ptr %i.j, align 8, !dbg !2369, !alias.scope !2077, !noalias !2082
  br label %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B2_NtB2_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBa_.exit.thread.i, !dbg !2370

_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B2_NtB2_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBa_.exit.thread.i: ; preds = %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B2_NtB2_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBa_.exit.thread.loopexit.i, %bb.n
  %i.cg = phi i64 [ %i.aa, %bb.n ], [ %.pre48.i, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B2_NtB2_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBa_.exit.thread.loopexit.i ], !dbg !2369
  %i.ch = phi i64 [ %i.ab, %bb.n ], [ %.pre47.i, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B2_NtB2_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBa_.exit.thread.loopexit.i ], !dbg !2368 ; 4 uses
  %.sroa.12.0.lcssa.i.i = phi i64 [ %i.bj, %bb.n ], [ %i.cb, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B2_NtB2_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBa_.exit.thread.loopexit.i ], !dbg !2345 ; 2 uses
  %.sroa.0.0.lcssa.i.i = phi ptr [ %i.bi, %bb.n ], [ %i.cc, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoder12gather_blockINtNvMs_B2_NtB2_7Decoder9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBa_.exit.thread.loopexit.i ], !dbg !2345 ; 2 uses
  store ptr %.sroa.0.0.lcssa.i.i, ptr %1, align 8, !dbg !2370, !alias.scope !2077, !noalias !2082
  store i64 %.sroa.12.0.lcssa.i.i, ptr %i.x, align 8, !dbg !2370, !alias.scope !2077, !noalias !2082
  %i.ci = sub i64 %.sroa.0.034.i, %i.ch, !dbg !2371 ; 3 uses
  %i.cj = sub i64 %i.cg, %i.ch, !dbg !2369        ; 3 uses
  store i64 %i.cj, ptr %i.j, align 8, !dbg !2369, !alias.scope !2077, !noalias !2082
  %.sroa.0.0.i36.i = tail call noundef i64 @llvm.umin.i64(i64 %i.cj, i64 %i.ci), !dbg !2116
  %.not31.i = icmp ult i64 %.sroa.0.0.i36.i, %i.ch, !dbg !2119
  br i1 %.not31.i, label %._crit_edge.i, label %bb.j, !dbg !2119

bb.x:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !dbg !2372, !noalias !2090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !2373, !noalias !2098
  br label %_RINvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB5_7Decoder13gather_n_intoINtNvMs_B5_B1n_9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBd_.exit, !dbg !2112

bb.y:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !2373, !noalias !2098
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !2374, !alias.scope !2072, !noalias !2090
  br label %_RINvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB5_7Decoder13gather_n_intoINtNvMs_B5_B1n_9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBd_.exit, !dbg !2375

_RINvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB5_7Decoder13gather_n_intoINtNvMs_B5_B1n_9collect_n14ExtendGathererINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEEBd_.exit: ; preds = %bb.b, %bb.h, %bb.s, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !2376
  ret void, !dbg !2377
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2378 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !2379, !range !28, !noundef !15
  %i.b = icmp eq i64 %i.a, -9223372036854775808, !dbg !2379
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !2379

end_hunk_1
begin_hunk_2_@_RNvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap27extend_from_slice_unchecked:bb.a
  %i.rw = or i8 %i.ru, %i.rv, !dbg !16574         ; 2 uses
  store i8 %i.rw, ptr %i.nm, align 1, !dbg !16576, !alias.scope !16515, !noalias !16524
  %exitcond.not.i24.i.5 = icmp eq i64 %i.re, 8, !dbg !16577
  br i1 %exitcond.not.i24.i.5, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBL_8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB24_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB26_5utils8iterator10BitmapIterE0E0ECsfISxE4fmY1Y_14polars_parquet.exit.i, label %bb.ao, !dbg !16579

bb.ao:                                            ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i.5
  %i.rx = icmp eq i64 %i.rp, 0, !dbg !16535
  br i1 %i.rx, label %bb.ap, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i.6, !dbg !16535

bb.ap:                                            ; preds = %bb.ao
  %i.ry = icmp eq i64 %i.rj, 0, !dbg !16543
  br i1 %i.ry, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.6, !dbg !16543

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.6: ; preds = %bb.ap
  %.sroa.0.0.i.i.i.i.i.i.6 = tail call noundef i64 @llvm.umin.i64(i64 %i.rj, i64 64), !dbg !16544 ; 2 uses
  %i.rz = sub nuw i64 %i.rj, %.sroa.0.0.i.i.i.i.i.i.6, !dbg !16546
  %.sroa.02.0.copyload.i.i.i.i.i.6 = load i64, ptr %i.rk, align 1, !dbg !16547, !noalias !16551
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rk, i64 8, !dbg !16554
  br label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i.6, !dbg !16559

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i.6: ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.6, %bb.ao
  %i.sb = phi i64 [ %i.rz, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.6 ], [ %i.rj, %bb.ao ]
  %i.sc = phi ptr [ %i.sa, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.6 ], [ %i.rk, %bb.ao ]
  %i.sd = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.6, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.6 ], [ %i.rp, %bb.ao ], !dbg !16564
  %i.se = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.6, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i.i.6 ], [ %i.ro, %bb.ao ], !dbg !16565 ; 2 uses
  %i.sf = trunc i64 %i.se to i8, !dbg !16565
  %i.sg = lshr i64 %i.se, 1, !dbg !16566
  %i.sh = add i64 %i.sd, -1, !dbg !16564
  %i.si = and i8 %i.sf, 1, !dbg !16567
  %i.sj = trunc nuw nsw i64 %i.re to i8, !dbg !16568 ; 2 uses
  %i.sk = shl nuw i8 1, %i.sj, !dbg !16568
  %i.sl = xor i8 %i.sk, -1, !dbg !16571
  %i.sm = shl nuw i8 %i.si, %i.sj, !dbg !16572
  %i.sn = and i8 %i.rw, %i.sl, !dbg !16574
  %i.so = or i8 %i.sm, %i.sn, !dbg !16574
  store i8 %i.so, ptr %i.nm, align 1, !dbg !16576, !alias.scope !16515, !noalias !16524
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBL_8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB24_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB26_5utils8iterator10BitmapIterE0E0ECsfISxE4fmY1Y_14polars_parquet.exit.i, !dbg !16579

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBL_8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB24_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB26_5utils8iterator10BitmapIterE0E0ECsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i.6, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i.5, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i.4, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i.3, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i.2, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i.1, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i
  %.lcssa55 = phi i64 [ %i.ns, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %i.ol, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i.1 ], [ %i.pe, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i.2 ], [ %i.px, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i.3 ], [ %i.qq, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i.4 ], [ %i.rj, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i.5 ], [ %i.sb, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i.6 ] ; 2 uses
  %.lcssa54 = phi ptr [ %i.nt, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %i.om, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i.1 ], [ %i.pf, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i.2 ], [ %i.py, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i.3 ], [ %i.qr, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i.4 ], [ %i.rk, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i.5 ], [ %i.sc, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i.6 ]
  %.lcssa53 = phi i64 [ %i.nx, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %i.oq, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i.1 ], [ %i.pj, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i.2 ], [ %i.qc, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i.3 ], [ %i.qv, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i.4 ], [ %i.ro, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i.5 ], [ %i.sg, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i.6 ], !dbg !16566
  %.lcssa52 = phi i64 [ %i.ny, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %i.or, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i.1 ], [ %i.pk, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i.2 ], [ %i.qd, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i.3 ], [ %i.qw, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i.4 ], [ %i.rp, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i.5 ], [ %i.sh, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB1p_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB1r_5utils8iterator10BitmapIterE0E0CsfISxE4fmY1Y_14polars_parquet.exit.i.i.6 ], !dbg !16564 ; 2 uses
  %i.sp = load i64, ptr %i.e, align 8, !dbg !16580, !alias.scope !16138, !noalias !16144, !noundef !15
  %i.sq = add i64 %i.sp, %i.p, !dbg !16580
  store i64 %i.sq, ptr %i.e, align 8, !dbg !16580, !alias.scope !16138, !noalias !16144
  %i.sr = sub nuw i64 %i.m, %i.p, !dbg !16581
  %.pre61.i = add i64 %.lcssa52, %.lcssa55, !dbg !16161
  br label %bb.i, !dbg !16582

bb.aq:                                            ; preds = %bb.h
  %i.ss = load i64, ptr %0, align 8, !dbg !16583, !range !14357, !alias.scope !16589, !noalias !16144, !noundef !15
  %i.st = icmp eq i64 %i.t, %i.ss, !dbg !16592
  br i1 %i.st, label %bb.ar, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCsfISxE4fmY1Y_14polars_parquet.exit.i, !dbg !16592

bb.ar:                                            ; preds = %bb.aq
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0), !dbg !16593, !noalias !16144
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCsfISxE4fmY1Y_14polars_parquet.exit.i, !dbg !16593

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %bb.ar, %bb.aq
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16594
  %i.sv = load ptr, ptr %i.su, align 8, !dbg !16594, !alias.scope !16589, !noalias !16144, !nonnull !15, !noundef !15
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.t, !dbg !16599
  store i8 0, ptr %i.sw, align 1, !dbg !16601, !noalias !16144
  %i.sx = add i64 %i.t, 1, !dbg !16603            ; 2 uses
  store i64 %i.sx, ptr %i.s, align 8, !dbg !16603, !alias.scope !16589, !noalias !16144
  br label %._crit_edge60.i, !dbg !16604

._crit_edge60.i:                                  ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCsfISxE4fmY1Y_14polars_parquet.exit.i, %bb.h
  %i.sy = phi i64 [ %i.sx, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCsfISxE4fmY1Y_14polars_parquet.exit.i ], [ %i.t, %bb.h ], !dbg !16605 ; 2 uses
  %.not19.i = icmp eq i64 %i.sy, 0, !dbg !16608
  br i1 %.not19.i, label %bb.as, label %bb.at, !dbg !16608, !prof !350

bb.as:                                            ; preds = %._crit_edge60.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #30, !dbg !16611, !noalias !16144
  unreachable

bb.at:                                            ; preds = %._crit_edge60.i
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16613
  %i.ta = load ptr, ptr %i.sz, align 8, !dbg !16613, !alias.scope !16138, !noalias !16144, !nonnull !15, !noundef !15
  %i.tb = getelementptr i8, ptr %i.ta, i64 %i.sy, !dbg !16618
  %i.tc = getelementptr i8, ptr %i.tb, i64 -1, !dbg !16618 ; 2 uses
  %.sroa.037.0.copyload.i = load ptr, ptr %i.c, align 8, !dbg !16619, !alias.scope !16144, !noalias !16138
  %.sroa.538.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !16619
  %.sroa.538.0.copyload.i = load i64, ptr %.sroa.538.0..sroa_idx.i, align 8, !dbg !16619, !alias.scope !16144, !noalias !16138
  br label %bb.au, !dbg !16621

bb.au:                                            ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjENtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iterator10BitmapIterEINtB5_7ZipImplBW_B1s_E4nextCsfISxE4fmY1Y_14polars_parquet.exit.i, %bb.at
  %.sroa.13.0.i = phi i64 [ %i.o, %bb.at ], [ %i.td, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjENtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iterator10BitmapIterEINtB5_7ZipImplBW_B1s_E4nextCsfISxE4fmY1Y_14polars_parquet.exit.i ], !dbg !16623 ; 2 uses
  %.sroa.11.0.i = phi i64 [ %.val22.i, %bb.at ], [ %.sroa.11.1.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjENtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iterator10BitmapIterEINtB5_7ZipImplBW_B1s_E4nextCsfISxE4fmY1Y_14polars_parquet.exit.i ], !dbg !16623 ; 4 uses
  %.sroa.9.0.i = phi i64 [ %.val.i, %bb.at ], [ %i.tm, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjENtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iterator10BitmapIterEINtB5_7ZipImplBW_B1s_E4nextCsfISxE4fmY1Y_14polars_parquet.exit.i ], !dbg !16623 ; 2 uses
  %.sroa.7.0.i = phi i64 [ %.sroa.538.0.copyload.i, %bb.at ], [ %i.tl, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjENtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iterator10BitmapIterEINtB5_7ZipImplBW_B1s_E4nextCsfISxE4fmY1Y_14polars_parquet.exit.i ], !dbg !16623
  %.sroa.035.0.i = phi ptr [ %.sroa.037.0.copyload.i, %bb.at ], [ %.sroa.035.1.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjENtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iterator10BitmapIterEINtB5_7ZipImplBW_B1s_E4nextCsfISxE4fmY1Y_14polars_parquet.exit.i ], !dbg !16623 ; 4 uses
  %i.td = add i64 %.sroa.13.0.i, 1, !dbg !16624
  %i.te = icmp eq i64 %.sroa.9.0.i, 0, !dbg !16637
  br i1 %i.te, label %bb.av, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjENtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iterator10BitmapIterEINtB5_7ZipImplBW_B1s_E4nextCsfISxE4fmY1Y_14polars_parquet.exit.i, !dbg !16637

bb.av:                                            ; preds = %bb.au
  %i.tf = icmp eq i64 %.sroa.11.0.i, 0, !dbg !16640
  br i1 %i.tf, label %_RINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB6_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB8_5utils8iterator10BitmapIterECsfISxE4fmY1Y_14polars_parquet.exit, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i30.i, !dbg !16640

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i30.i: ; preds = %bb.av
  %.sroa.0.0.i.i.i31.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.11.0.i, i64 64), !dbg !16641 ; 2 uses
  %i.tg = sub nuw i64 %.sroa.11.0.i, %.sroa.0.0.i.i.i31.i, !dbg !16643
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.035.0.i) ]
  %.sroa.02.0.copyload.i.i32.i = load i64, ptr %.sroa.035.0.i, align 1, !dbg !16644, !noalias !16648
  %i.th = getelementptr inbounds nuw i8, ptr %.sroa.035.0.i, i64 8, !dbg !16653
  br label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjENtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iterator10BitmapIterEINtB5_7ZipImplBW_B1s_E4nextCsfISxE4fmY1Y_14polars_parquet.exit.i, !dbg !16658

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFromjENtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iterator10BitmapIterEINtB5_7ZipImplBW_B1s_E4nextCsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i30.i, %bb.au
  %.sroa.11.1.i = phi i64 [ %i.tg, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i30.i ], [ %.sroa.11.0.i, %bb.au ], !dbg !16623
  %.sroa.035.1.i = phi ptr [ %i.th, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i30.i ], [ %.sroa.035.0.i, %bb.au ], !dbg !16623
  %i.ti = phi i64 [ %.sroa.0.0.i.i.i31.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i30.i ], [ %.sroa.9.0.i, %bb.au ], !dbg !16659
  %i.tj = phi i64 [ %.sroa.02.0.copyload.i.i32.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i30.i ], [ %.sroa.7.0.i, %bb.au ], !dbg !16660 ; 2 uses
  %i.tk = trunc i64 %i.tj to i8, !dbg !16660
  %i.tl = lshr i64 %i.tj, 1, !dbg !16661
  %i.tm = add i64 %i.ti, -1, !dbg !16659
  %i.tn = and i8 %i.tk, 1, !dbg !16662
  %i.to = load i8, ptr %i.tc, align 1, !dbg !16663, !noalias !16144, !noundef !15
  %i.tp = trunc i64 %.sroa.13.0.i to i8, !dbg !16665
  %i.tq = and i8 %i.tp, 7, !dbg !16665            ; 2 uses
  %i.tr = shl nuw i8 1, %i.tq, !dbg !16665
  %i.ts = xor i8 %i.tr, -1, !dbg !16668
  %i.tt = shl nuw i8 %i.tn, %i.tq, !dbg !16669
  %i.tu = and i8 %i.to, %i.ts, !dbg !16671
  %i.tv = or i8 %i.tt, %i.tu, !dbg !16671
  store i8 %i.tv, ptr %i.tc, align 1, !dbg !16673, !noalias !16144
  br label %bb.au, !dbg !16621

_RINvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB6_13MutableBitmap38extend_from_trusted_len_iter_uncheckedNtNtNtB8_5utils8iterator10BitmapIterECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.av, %_RINvNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable37extend_aligned_trusted_iter_uncheckedNtNtNtB4_5utils8iterator10BitmapIterECsfISxE4fmY1Y_14polars_parquet.exit.i
  %.sink96.i = phi i64 [ %.sroa.0.0.i, %_RINvNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable37extend_aligned_trusted_iter_uncheckedNtNtNtB4_5utils8iterator10BitmapIterECsfISxE4fmY1Y_14polars_parquet.exit.i ], [ %i.m, %bb.av ]
  %i.tw = load i64, ptr %i.e, align 8, !dbg !16157, !alias.scope !16138, !noalias !16144, !noundef !15
  %i.tx = add i64 %i.tw, %.sink96.i, !dbg !16157
  store i64 %i.tx, ptr %i.e, align 8, !dbg !16157, !alias.scope !16138, !noalias !16144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16674
  br label %bb.c, !dbg !16674

bb.aw:                                            ; preds = %bb.d
  tail call void @_RNvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap16extend_unaligned(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4), !dbg !16675
  br label %bb.c, !dbg !16675

bb.ax:                                            ; preds = %bb.e
  tail call void @_RNvMs6_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap14extend_aligned(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4), !dbg !16676
  br label %bb.c, !dbg !16676
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB4_7Decoder13consume_block(ptr noalias nofree noundef align 8 captures(none) dereferenceable(648) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16677 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.08 = alloca [552 x i8], align 8          ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 616, !dbg !16678
  %i.d = load i64, ptr %i.c, align 8, !dbg !16678, !noundef !15 ; 8 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !16681
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !16681

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 624, !dbg !16681
  %i.g = load i64, ptr %i.f, align 8, !dbg !16681, !noundef !15 ; 3 uses
  %i.h = udiv i64 %i.g, %i.d, !dbg !16681         ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 632, !dbg !16682 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !16682, !noundef !15 ; 2 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.g, i64 %i.j), !dbg !16684 ; 5 uses
  %i.k = icmp ugt i64 %i.d, %i.g, !dbg !16686
  br i1 %i.k, label %bb.e, label %bb.d, !dbg !16686

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #29, !dbg !16681
  unreachable, !dbg !16681

bb.d:                                             ; preds = %bb.b
  %i.l = udiv i64 %.sroa.0.0.i, %i.h, !dbg !16686
  %i.m = urem i64 %.sroa.0.0.i, %i.h, !dbg !16690
  %.not = icmp ne i64 %i.m, 0, !dbg !16692
  %i.n = zext i1 %.not to i64, !dbg !16692
  %.sroa.0.0 = add i64 %i.l, %i.n, !dbg !16692    ; 2 uses
  %.sroa.0.0.i24 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0, i64 %i.d), !dbg !16694 ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !dbg !16696, !nonnull !15, !noundef !15 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16696 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !dbg !16696, !noundef !15 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q, !dbg !16698
  %i.s = icmp samesign eq i64 %i.q, 0, !dbg !16705
  br i1 %i.s, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread, label %.lr.ph.i.i, !dbg !16708

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.aa, %.lr.ph.i.i ], [ 0, %bb.d ]
  %.sroa.02.010.i.i = phi i32 [ %i.ad, %.lr.ph.i.i ], [ 0, %bb.d ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.t, %.lr.ph.i.i ], [ 0, %bb.d ] ; 2 uses
  %.sroa.06.08.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %i.t = add nuw nsw i64 %.sroa.04.09.i.i, 1, !dbg !16709 ; 3 uses
  %i.u = load i8, ptr %.sroa.06.08.i.i, align 1, !dbg !16710, !alias.scope !16712, !noundef !15 ; 2 uses
  %i.v = and i8 %i.u, 127, !dbg !16717
  %i.w = zext nneg i8 %i.v to i64, !dbg !16719
  %i.x = and i32 %.sroa.02.010.i.i, 63, !dbg !16721
  %i.y = zext nneg i32 %i.x to i64, !dbg !16721
  %i.z = shl i64 %i.w, %i.y, !dbg !16721
  %i.aa = or i64 %i.z, %.sroa.0.011.i.i, !dbg !16722 ; 2 uses
  %i.ab = icmp sgt i8 %i.u, -1, !dbg !16723
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 1 ; 2 uses
  %i.ad = add i32 %.sroa.02.010.i.i, 7
  %i.ae = icmp eq ptr %i.ac, %i.r
  %or.cond.i.i = select i1 %i.ab, i1 true, i1 %i.ae, !dbg !16723
  br i1 %or.cond.i.i, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit, label %.lr.ph.i.i, !dbg !16723

_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit: ; preds = %.lr.ph.i.i
  %.not45 = icmp ult i64 %.sroa.04.09.i.i, %i.q, !dbg !16724
  br i1 %.not45, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread, label %bb.g, !dbg !16724, !prof !285

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #29, !dbg !16686
  unreachable, !dbg !16686

_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread: ; preds = %bb.d, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit
  %.sroa.0.1.i.i43 = phi i64 [ %i.aa, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit ], [ 0, %bb.d ] ; 2 uses
  %.sroa.04.1.i.i42 = phi i64 [ %i.t, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit ], [ 0, %bb.d ] ; 2 uses
  %i.af = sub nuw i64 %i.q, %.sroa.04.1.i.i42, !dbg !16730 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.04.1.i.i42, !dbg !16731 ; 4 uses
  store ptr %i.ag, ptr %0, align 8, !dbg !16736
  store i64 %i.af, ptr %i.p, align 8, !dbg !16736
  %.not.i = icmp ugt i64 %i.d, %i.af, !dbg !16737
  br i1 %.not.i, label %bb.f, label %bb.h, !dbg !16737, !prof !350

bb.f:                                             ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @74, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #29, !dbg !16740, !noalias !16741
  unreachable, !dbg !16740

bb.g:                                             ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.t, i64 noundef %i.q, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #29, !dbg !16745
  unreachable, !dbg !16745

bb.h:                                             ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.d, !dbg !16746 ; 2 uses
  %i.ai = sub nuw nsw i64 %i.af, %i.d, !dbg !16749 ; 2 uses
  %i.aj = icmp eq i64 %.sroa.0.0, 0, !dbg !16750
  br i1 %i.aj, label %bb.i, label %bb.j, !dbg !16750, !prof !677

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef %.sroa.0.0.i24, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #29, !dbg !16760
  unreachable, !dbg !16760

bb.j:                                             ; preds = %bb.h
  %i.ak = load i8, ptr %i.ag, align 1, !dbg !16761, !noundef !15
  %i.al = zext i8 %i.ak to i64, !dbg !16762       ; 3 uses
  %.sroa.0.0.i25 = tail call noundef i64 @llvm.umin.i64(i64 %i.h, i64 %.sroa.0.0.i), !dbg !16764 ; 2 uses
  %i.am = mul i64 %i.h, %i.al, !dbg !16767        ; 2 uses
  %i.an = lshr i64 %i.am, 3, !dbg !16769
  %i.ao = and i64 %i.am, 7, !dbg !16771
  %.not21 = icmp ne i64 %i.ao, 0, !dbg !16773
  %i.ap = zext i1 %.not21 to i64, !dbg !16773
  %.sroa.02.0 = add nuw nsw i64 %i.an, %i.ap, !dbg !16773 ; 5 uses
  %i.aq = mul i64 %.sroa.0.0.i25, %i.al, !dbg !16775 ; 2 uses
  %i.ar = lshr i64 %i.aq, 3, !dbg !16777
  %i.as = and i64 %i.aq, 7, !dbg !16779
  %.not22 = icmp ne i64 %i.as, 0, !dbg !16781
  %i.at = zext i1 %.not22 to i64, !dbg !16781
  %.sroa.03.0 = add nuw nsw i64 %i.ar, %i.at, !dbg !16781 ; 3 uses
  %.not.i26 = icmp ugt i64 %.sroa.02.0, %i.ai, !dbg !16783
  br i1 %.not.i26, label %bb.k, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit30, !dbg !16783, !prof !350

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @74, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #29, !dbg !16787, !noalias !16788
  unreachable, !dbg !16787

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit30: ; preds = %bb.j
  %.not23 = icmp samesign ugt i64 %.sroa.03.0, %.sroa.02.0
  br i1 %.not23, label %bb.r, label %bb.l, !dbg !16792, !prof !677

bb.l:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16802
  call void @_RNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB4_7DecoderyE18try_new_allow_zeroBc_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef %.sroa.03.0, i64 noundef %i.al, i64 noundef %.sroa.0.0.i25), !dbg !16802
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16806), !dbg !16809
  %i.au = load ptr, ptr %i.b, align 8, !dbg !16810, !alias.scope !16806, !noalias !16813, !noundef !15
  %i.av = icmp eq ptr %i.au, null, !dbg !16810
  br i1 %i.av, label %bb.m, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decode7DecoderyENtNtBQ_5error12ParquetErrorE6unwrapBS_.exit, !dbg !16815, !prof !350

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16816, !noalias !16817
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !16816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.aw, i64 32, i1 false), !dbg !16816, !noalias !16813
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #30
          to label %bb.o unwind label %bb.n, !dbg !16818, !noalias !16817

bb.n:                                             ; preds = %bb.m
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5error12ParquetErrorEBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #31
          to label %bb.q unwind label %bb.p, !dbg !16820, !noalias !16817

bb.o:                                             ; preds = %bb.m
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !16821, !noalias !16817
  unreachable, !dbg !16821

bb.q:                                             ; preds = %bb.n
  resume { ptr, i32 } %i.ax, !dbg !16821

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decode7DecoderyENtNtBQ_5error12ParquetErrorE6unwrapBS_.exit: ; preds = %bb.l
  %i.az = add i64 %.sroa.0.0.i24, -1, !dbg !16822
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 1, !dbg !16823
  %i.bb = sub nuw nsw i64 %i.ai, %.sroa.02.0, !dbg !16826
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.sroa.02.0, !dbg !16828
  %i.bd = lshr i64 %.sroa.0.1.i.i43, 1, !dbg !16830
  %i.be = and i64 %.sroa.0.1.i.i43, 1, !dbg !16831
  %i.bf = sub nsw i64 0, %i.be, !dbg !16832
  %i.bg = xor i64 %i.bd, %i.bf, !dbg !16830
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.08, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.b, i64 40, i1 false), !dbg !16833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16834
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16835
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !16835
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !16835
  %.sroa.08.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.08, i64 40, !dbg !16837
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %.sroa.08.40..sroa_idx, ptr noundef nonnull align 8 dereferenceable(512) %i.bj, i64 512, i1 false), !dbg !16835
  store ptr %i.ba, ptr %i.bh, align 8, !dbg !16838
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !16838
  store i64 %i.az, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !16838
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(552) %i.bi, ptr noundef nonnull align 8 dereferenceable(552) %.sroa.08, i64 552, i1 false), !dbg !16838
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 584, !dbg !16838
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 600, !dbg !16838
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false), !dbg !16838
  store i64 %i.bg, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !16838
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 608, !dbg !16838
  store i64 %.sroa.0.0.i, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !16838
  %i.bk = sub nuw i64 %i.j, %.sroa.0.0.i, !dbg !16839
  store i64 %i.bk, ptr %i.i, align 8, !dbg !16839
  store ptr %i.bc, ptr %0, align 8, !dbg !16840
  store i64 %i.bb, ptr %i.p, align 8, !dbg !16840
  ret void, !dbg !16841

bb.r:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit30
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.03.0, i64 noundef %.sroa.02.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #29, !dbg !16842
  unreachable, !dbg !16842
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB4_7Decoder7try_new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([664 x i8]) align 8 captures(none) dereferenceable(664) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16843 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.6240 = alloca [32 x i8], align 8         ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.4176 = alloca [24 x i8], align 8         ; 4 uses
  %i.j = alloca [1 x i8], align 1                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 2 uses
  %i.l = alloca [8 x i8], align 8                 ; 2 uses
  %i.m = alloca [8 x i8], align 8                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %2, !dbg !16844 ; 2 uses
  %i.o = icmp samesign eq i64 %2, 0, !dbg !16851
  br i1 %i.o, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread.thread, label %.lr.ph.i, !dbg !16854

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.011.i = phi i64 [ %i.w, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.02.010.i = phi i32 [ %i.z, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ %i.p, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.06.08.i = phi ptr [ %i.y, %.lr.ph.i ], [ %1, %bb.a ] ; 2 uses
  %i.p = add nuw nsw i64 %.sroa.04.09.i, 1, !dbg !16855 ; 4 uses
  %i.q = load i8, ptr %.sroa.06.08.i, align 1, !dbg !16856, !alias.scope !16858, !noundef !15 ; 2 uses
  %i.r = and i8 %i.q, 127, !dbg !16861
  %i.s = zext nneg i8 %i.r to i64, !dbg !16863
  %i.t = and i32 %.sroa.02.010.i, 63, !dbg !16865
  %i.u = zext nneg i32 %i.t to i64, !dbg !16865
  %i.v = shl i64 %i.s, %i.u, !dbg !16865
  %i.w = or i64 %i.v, %.sroa.0.011.i, !dbg !16866 ; 8 uses
  %i.x = icmp sgt i8 %i.q, -1, !dbg !16867
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i, i64 1 ; 2 uses
  %i.z = add i32 %.sroa.02.010.i, 7
  %i.aa = icmp eq ptr %i.y, %i.n
  %or.cond.i = select i1 %i.x, i1 true, i1 %i.aa, !dbg !16867
  br i1 %or.cond.i, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit, label %.lr.ph.i, !dbg !16867

_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit: ; preds = %.lr.ph.i
  %.not451 = icmp samesign ugt i64 %2, %.sroa.04.09.i, !dbg !16868
  br i1 %.not451, label %bb.b, label %bb.c, !dbg !16868

bb.b:                                             ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit
  %i.ab = sub nuw nsw i64 %2, %i.p, !dbg !16879   ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.p, !dbg !16880 ; 2 uses
  %i.ad = and i64 %i.w, 127, !dbg !16884          ; 2 uses
  store i64 %i.ad, ptr %i.m, align 8, !dbg !16884
  %i.ae = icmp eq i64 %i.ad, 0, !dbg !16885
  br i1 %i.ae, label %bb.e, label %bb.f, !dbg !16885, !prof !16888

bb.c:                                             ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !16889, !noalias !16919
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 44, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !16889, !noalias !16919
  %i.af = load i64, ptr %i.d, align 8, !dbg !16889, !range !347, !noalias !16919, !noundef !15
  %i.ag = trunc nuw i64 %i.af to i1, !dbg !16924
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !16925
  %i.ai = load i64, ptr %i.ah, align 8, !dbg !16925, !range !28, !noalias !16919, !noundef !15 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !16925 ; 2 uses
  br i1 %i.ag, label %bb.d, label %_RNvYNCNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB9_7Decoder7try_new0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBh_.exit, !dbg !16924, !prof !350

bb.d:                                             ; preds = %bb.c
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !16926, !noalias !16919
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ai, i64 %i.ak) #30, !dbg !16927, !noalias !16919
  unreachable, !dbg !16927

_RNvYNCNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB9_7Decoder7try_new0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBh_.exit: ; preds = %bb.c
  %i.al = load ptr, ptr %i.aj, align 8, !dbg !16929, !noalias !16919, !nonnull !15, !noundef !15 ; 2 uses
  %i.am = icmp samesign ugt i64 %i.ai, 43, !dbg !16930
  tail call void @llvm.assume(i1 %i.am), !dbg !16934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !16937, !noalias !16919
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.al, ptr noundef nonnull align 1 dereferenceable(44) @57, i64 44, i1 false), !dbg !16938, !noalias !16919
  %i.an = ptrtoint ptr %i.al to i64, !dbg !16944
  %i.ao = inttoptr i64 %i.ai to ptr, !dbg !16945
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !16946
  store i64 -9223372036854775808, ptr %i.ap, align 8, !dbg !16946
  %.sroa.2261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16946
  store ptr %i.ao, ptr %.sroa.2261.0..sroa_idx, align 8, !dbg !16946
  %.sroa.3262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !16946
  store i64 %i.an, ptr %.sroa.3262.0..sroa_idx, align 8, !dbg !16946
  %.sroa.4263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !16946
  store i64 44, ptr %.sroa.4263.0..sroa_idx, align 8, !dbg !16946
  store ptr null, ptr %0, align 8, !dbg !16946
  br label %bb.u, !dbg !16953

bb.e:                                             ; preds = %bb.b
  %i.aq = icmp eq i64 %2, %i.p, !dbg !16955
  br i1 %i.aq, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread.thread, label %.lr.ph.i369, !dbg !16959

.lr.ph.i369:                                      ; preds = %bb.e, %.lr.ph.i369
  %.sroa.0.011.i370 = phi i64 [ %i.ay, %.lr.ph.i369 ], [ 0, %bb.e ]
  %.sroa.02.010.i371 = phi i32 [ %i.bb, %.lr.ph.i369 ], [ 0, %bb.e ] ; 2 uses
  %.sroa.04.09.i372 = phi i64 [ %i.ar, %.lr.ph.i369 ], [ 0, %bb.e ] ; 2 uses
  %.sroa.06.08.i373 = phi ptr [ %i.ba, %.lr.ph.i369 ], [ %i.ac, %bb.e ] ; 2 uses
  %i.ar = add nuw nsw i64 %.sroa.04.09.i372, 1, !dbg !16960 ; 4 uses
  %i.as = load i8, ptr %.sroa.06.08.i373, align 1, !dbg !16961, !alias.scope !16963, !noundef !15 ; 2 uses
  %i.at = and i8 %i.as, 127, !dbg !16966
  %i.au = zext nneg i8 %i.at to i64, !dbg !16968
  %i.av = and i32 %.sroa.02.010.i371, 63, !dbg !16970
  %i.aw = zext nneg i32 %i.av to i64, !dbg !16970
  %i.ax = shl i64 %i.au, %i.aw, !dbg !16970
  %i.ay = or i64 %i.ax, %.sroa.0.011.i370, !dbg !16971 ; 9 uses
  %i.az = icmp sgt i8 %i.as, -1, !dbg !16972
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i373, i64 1 ; 2 uses
  %i.bb = add i32 %.sroa.02.010.i371, 7
  %i.bc = icmp eq ptr %i.ba, %i.n
  %or.cond.i374 = select i1 %i.az, i1 true, i1 %i.bc, !dbg !16972
  br i1 %or.cond.i374, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit377, label %.lr.ph.i369, !dbg !16972

_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit377: ; preds = %.lr.ph.i369
  %.not452 = icmp samesign ugt i64 %i.ab, %.sroa.04.09.i372, !dbg !16973
  br i1 %.not452, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit377.thread, label %bb.g, !dbg !16973

bb.f:                                             ; preds = %bb.b
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @105, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #29, !dbg !16983
  unreachable, !dbg !16983

_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit377.thread: ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit377
  %i.bd = sub nuw nsw i64 %i.ab, %i.ar, !dbg !16986 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ar, !dbg !16987 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %2, !dbg !16990 ; 2 uses
  %i.bg = icmp eq i64 %i.ab, %i.ar, !dbg !16996
  br i1 %i.bg, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread, label %.lr.ph.i378, !dbg !16999

.lr.ph.i378:                                      ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit377.thread, %.lr.ph.i378
  %.sroa.0.011.i379 = phi i64 [ %i.bo, %.lr.ph.i378 ], [ 0, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit377.thread ]
  %.sroa.02.010.i380 = phi i32 [ %i.br, %.lr.ph.i378 ], [ 0, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit377.thread ] ; 2 uses
  %.sroa.04.09.i381 = phi i64 [ %i.bh, %.lr.ph.i378 ], [ 0, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit377.thread ] ; 2 uses
  %.sroa.06.08.i382 = phi ptr [ %i.bq, %.lr.ph.i378 ], [ %i.be, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit377.thread ] ; 2 uses
  %i.bh = add nuw nsw i64 %.sroa.04.09.i381, 1, !dbg !17000 ; 4 uses
  %i.bi = load i8, ptr %.sroa.06.08.i382, align 1, !dbg !17001, !alias.scope !17003, !noundef !15 ; 2 uses
  %i.bj = and i8 %i.bi, 127, !dbg !17006
  %i.bk = zext nneg i8 %i.bj to i64, !dbg !17008
  %i.bl = and i32 %.sroa.02.010.i380, 63, !dbg !17010
  %i.bm = zext nneg i32 %i.bl to i64, !dbg !17010
  %i.bn = shl i64 %i.bk, %i.bm, !dbg !17010
  %i.bo = or i64 %i.bn, %.sroa.0.011.i379, !dbg !17011 ; 3 uses
  %i.bp = icmp sgt i8 %i.bi, -1, !dbg !17012
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i382, i64 1 ; 2 uses
  %i.br = add i32 %.sroa.02.010.i380, 7
  %i.bs = icmp eq ptr %i.bq, %i.bf
  %or.cond.i383 = select i1 %i.bp, i1 true, i1 %i.bs, !dbg !17012
  br i1 %or.cond.i383, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit386, label %.lr.ph.i378, !dbg !17012

_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit386: ; preds = %.lr.ph.i378
  %.not453 = icmp samesign ugt i64 %i.bd, %.sroa.04.09.i381, !dbg !17013
  br i1 %.not453, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit386.thread, label %bb.i, !dbg !17013

bb.g:                                             ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !17023, !noalias !17038
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 44, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !17023, !noalias !17038
  %i.bt = load i64, ptr %i.c, align 8, !dbg !17023, !range !347, !noalias !17038, !noundef !15
  %i.bu = trunc nuw i64 %i.bt to i1, !dbg !17043
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !17044
  %i.bw = load i64, ptr %i.bv, align 8, !dbg !17044, !range !28, !noalias !17038, !noundef !15 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !17044 ; 2 uses
  br i1 %i.bu, label %bb.h, label %_RNvYNCNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB9_7Decoder7try_new0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBh_.exit389, !dbg !17043, !prof !350

bb.h:                                             ; preds = %bb.g
  %i.by = load i64, ptr %i.bx, align 8, !dbg !17045, !noalias !17038
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bw, i64 %i.by) #30, !dbg !17046, !noalias !17038
  unreachable, !dbg !17046

_RNvYNCNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB9_7Decoder7try_new0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBh_.exit389: ; preds = %bb.g
  %i.bz = load ptr, ptr %i.bx, align 8, !dbg !17047, !noalias !17038, !nonnull !15, !noundef !15 ; 2 uses
  %i.ca = icmp samesign ugt i64 %i.bw, 43, !dbg !17048
  tail call void @llvm.assume(i1 %i.ca), !dbg !17050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !17052, !noalias !17038
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.bz, ptr noundef nonnull align 1 dereferenceable(44) @57, i64 44, i1 false), !dbg !17053, !noalias !17038
  %i.cb = ptrtoint ptr %i.bz to i64, !dbg !17056
  %i.cc = inttoptr i64 %i.bw to ptr, !dbg !17057
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17058
  store i64 -9223372036854775808, ptr %i.cd, align 8, !dbg !17058
  %.sroa.2273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17058
  store ptr %i.cc, ptr %.sroa.2273.0..sroa_idx, align 8, !dbg !17058
  %.sroa.3274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !17058
  store i64 %i.cb, ptr %.sroa.3274.0..sroa_idx, align 8, !dbg !17058
  %.sroa.4275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !17058
  store i64 44, ptr %.sroa.4275.0..sroa_idx, align 8, !dbg !17058
  store ptr null, ptr %0, align 8, !dbg !17058
  br label %bb.u, !dbg !17064

_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit386.thread: ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit386
  %i.ce = sub nuw nsw i64 %i.bd, %i.bh, !dbg !17066 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bh, !dbg !17067 ; 3 uses
  %i.cg = icmp eq i64 %i.bd, %i.bh, !dbg !17070
  br i1 %i.cg, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread, label %.lr.ph.i.i, !dbg !17075

.lr.ph.i.i:                                       ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit386.thread, %.lr.ph.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.co, %.lr.ph.i.i ], [ 0, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit386.thread ]
  %.sroa.02.010.i.i = phi i32 [ %i.cr, %.lr.ph.i.i ], [ 0, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit386.thread ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.ch, %.lr.ph.i.i ], [ 0, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit386.thread ] ; 2 uses
  %.sroa.06.08.i.i = phi ptr [ %i.cq, %.lr.ph.i.i ], [ %i.cf, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit386.thread ] ; 2 uses
  %i.ch = add nuw nsw i64 %.sroa.04.09.i.i, 1, !dbg !17076 ; 2 uses
  %i.ci = load i8, ptr %.sroa.06.08.i.i, align 1, !dbg !17077, !alias.scope !17079, !noundef !15 ; 2 uses
  %i.cj = and i8 %i.ci, 127, !dbg !17084
  %i.ck = zext nneg i8 %i.cj to i64, !dbg !17086
  %i.cl = and i32 %.sroa.02.010.i.i, 63, !dbg !17088
  %i.cm = zext nneg i32 %i.cl to i64, !dbg !17088
  %i.cn = shl i64 %i.ck, %i.cm, !dbg !17088
  %i.co = or i64 %i.cn, %.sroa.0.011.i.i, !dbg !17089 ; 3 uses
  %i.cp = icmp sgt i8 %i.ci, -1, !dbg !17090
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 1 ; 2 uses
  %i.cr = add i32 %.sroa.02.010.i.i, 7
  %i.cs = icmp eq ptr %i.cq, %i.bf
  %or.cond.i.i = select i1 %i.cp, i1 true, i1 %i.cs, !dbg !17090
  br i1 %or.cond.i.i, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit, label %.lr.ph.i.i, !dbg !17090

_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit: ; preds = %.lr.ph.i.i
  %i.ct = lshr i64 %i.co, 1, !dbg !17091
  %i.cu = and i64 %i.co, 1, !dbg !17092
  %i.cv = sub nsw i64 0, %i.cu, !dbg !17093
  %i.cw = xor i64 %i.ct, %i.cv, !dbg !17091
  %.not = icmp samesign ugt i64 %i.ce, %.sroa.04.09.i.i, !dbg !17094
  br i1 %.not, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread, label %bb.k, !dbg !17094

bb.i:                                             ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !17103, !noalias !17118
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 44, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !17103, !noalias !17118
  %i.cx = load i64, ptr %i.b, align 8, !dbg !17103, !range !347, !noalias !17118, !noundef !15
  %i.cy = trunc nuw i64 %i.cx to i1, !dbg !17123
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !17124
  %i.da = load i64, ptr %i.cz, align 8, !dbg !17124, !range !28, !noalias !17118, !noundef !15 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !17124 ; 2 uses
  br i1 %i.cy, label %bb.j, label %_RNvYNCNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB9_7Decoder7try_new0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBh_.exit392, !dbg !17123, !prof !350

bb.j:                                             ; preds = %bb.i
  %i.dc = load i64, ptr %i.db, align 8, !dbg !17125, !noalias !17118
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.da, i64 %i.dc) #30, !dbg !17126, !noalias !17118
  unreachable, !dbg !17126

_RNvYNCNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB9_7Decoder7try_new0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBh_.exit392: ; preds = %bb.i
  %i.dd = load ptr, ptr %i.db, align 8, !dbg !17127, !noalias !17118, !nonnull !15, !noundef !15 ; 2 uses
  %i.de = icmp samesign ugt i64 %i.da, 43, !dbg !17128
  tail call void @llvm.assume(i1 %i.de), !dbg !17130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17132, !noalias !17118
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.dd, ptr noundef nonnull align 1 dereferenceable(44) @57, i64 44, i1 false), !dbg !17133, !noalias !17118
  %i.df = ptrtoint ptr %i.dd to i64, !dbg !17136
  %i.dg = inttoptr i64 %i.da to ptr, !dbg !17137
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17138
  store i64 -9223372036854775808, ptr %i.dh, align 8, !dbg !17138
  %.sroa.2285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17138
  store ptr %i.dg, ptr %.sroa.2285.0..sroa_idx, align 8, !dbg !17138
  %.sroa.3286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !17138
  store i64 %i.df, ptr %.sroa.3286.0..sroa_idx, align 8, !dbg !17138
  %.sroa.4287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !17138
  store i64 44, ptr %.sroa.4287.0..sroa_idx, align 8, !dbg !17138
  store ptr null, ptr %0, align 8, !dbg !17138
  br label %bb.u, !dbg !17144

_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread: ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit377.thread, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit386.thread, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit
  %i.di = phi i64 [ %i.cw, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit ], [ 0, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit386.thread ], [ 0, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit377.thread ]
  %.sroa.04.1.i.i520 = phi i64 [ %i.ch, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit ], [ 0, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit386.thread ], [ 0, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit377.thread ] ; 2 uses
  %.sroa.0.1.i385442509517 = phi i64 [ %i.bo, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit ], [ %i.bo, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit386.thread ], [ 0, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit377.thread ] ; 4 uses
  %i.dj = phi i64 [ %i.ce, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit ], [ 0, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit386.thread ], [ 0, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit377.thread ]
  %i.dk = phi ptr [ %i.cf, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit ], [ %i.cf, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit386.thread ], [ %i.be, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit377.thread ]
  %i.dl = sub nuw nsw i64 %i.dj, %.sroa.04.1.i.i520, !dbg !17146 ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.sroa.04.1.i.i520, !dbg !17147 ; 3 uses
  %i.dn = icmp eq i64 %i.ay, 0, !dbg !17150
  br i1 %i.dn, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread.thread, label %bb.m, !dbg !17150

bb.k:                                             ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17151, !noalias !17166
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 44, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !17151, !noalias !17166
  %i.do = load i64, ptr %i.a, align 8, !dbg !17151, !range !347, !noalias !17166, !noundef !15
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !17171
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17172
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !17172, !range !28, !noalias !17166, !noundef !15 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17172 ; 2 uses
  br i1 %i.dp, label %bb.l, label %_RNvYNCNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB9_7Decoder7try_new0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBh_.exit395, !dbg !17171, !prof !350

bb.l:                                             ; preds = %bb.k
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !17173, !noalias !17166
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #30, !dbg !17174, !noalias !17166
  unreachable, !dbg !17174

_RNvYNCNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB9_7Decoder7try_new0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBh_.exit395: ; preds = %bb.k
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !17175, !noalias !17166, !nonnull !15, !noundef !15 ; 2 uses
  %i.dv = icmp samesign ugt i64 %i.dr, 43, !dbg !17176
  tail call void @llvm.assume(i1 %i.dv), !dbg !17178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17180, !noalias !17166
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.du, ptr noundef nonnull align 1 dereferenceable(44) @57, i64 44, i1 false), !dbg !17181, !noalias !17166
  %i.dw = ptrtoint ptr %i.du to i64, !dbg !17184
  %i.dx = inttoptr i64 %i.dr to ptr, !dbg !17185
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17186
  store i64 -9223372036854775808, ptr %i.dy, align 8, !dbg !17186
  %.sroa.2297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17186
  store ptr %i.dx, ptr %.sroa.2297.0..sroa_idx, align 8, !dbg !17186
  %.sroa.3298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !17186
  store i64 %i.dw, ptr %.sroa.3298.0..sroa_idx, align 8, !dbg !17186
  %.sroa.4299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !17186
  store i64 44, ptr %.sroa.4299.0..sroa_idx, align 8, !dbg !17186
  store ptr null, ptr %0, align 8, !dbg !17186
  br label %bb.u, !dbg !17192

bb.m:                                             ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread
  %i.dz = urem i64 %i.w, %i.ay, !dbg !17150       ; 2 uses
  %i.ea = udiv i64 %i.w, %i.ay, !dbg !17194       ; 8 uses
  store i64 %i.dz, ptr %i.l, align 8, !dbg !17150
  %i.eb = icmp eq i64 %i.dz, 0, !dbg !17195
  br i1 %i.eb, label %bb.n, label %bb.o, !dbg !17195, !prof !10870

_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread.thread: ; preds = %bb.a, %bb.e, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #29, !dbg !17150
  unreachable, !dbg !17150

bb.n:                                             ; preds = %bb.m
  %i.ec = and i64 %i.ea, 31, !dbg !17194          ; 2 uses
  store i64 %i.ec, ptr %i.k, align 8, !dbg !17194
  %i.ed = icmp eq i64 %i.ec, 0, !dbg !17198
  br i1 %i.ed, label %bb.p, label %bb.q, !dbg !17198, !prof !10870

bb.o:                                             ; preds = %bb.m
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @105, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #29, !dbg !17201
  unreachable, !dbg !17201

bb.p:                                             ; preds = %bb.n
  %i.ee = icmp ugt i64 %.sroa.0.1.i385442509517, 1, !dbg !17204
  br i1 %i.ee, label %.lr.ph, label %.thread443, !dbg !17204

bb.q:                                             ; preds = %bb.n
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @105, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #29, !dbg !17207
  unreachable, !dbg !17207

._crit_edge:                                      ; preds = %bb.ac
  %i.ef = sub nsw i64 %i.dl, %i.gv, !dbg !17210   ; 2 uses
  %.not365 = icmp ugt i64 %i.gv, %i.dl
  br i1 %.not365, label %bb.r, label %.thread443, !dbg !17211, !prof !17222

.lr.ph:                                           ; preds = %bb.p
  %i.eg = icmp ugt i64 %i.ay, %i.w
  br i1 %i.eg, label %bb.v, label %.lr.ph.split.preheader, !dbg !17223

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.eh = add i64 %.sroa.0.1.i385442509517, -1, !dbg !17227
  br label %.lr.ph.split, !dbg !17228

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.ac
  %.sroa.0137.0475 = phi i64 [ %i.gx, %bb.ac ], [ %i.eh, %.lr.ph.split.preheader ] ; 4 uses
  %.sroa.0205.1474 = phi ptr [ %i.gw, %bb.ac ], [ %i.dm, %.lr.ph.split.preheader ] ; 4 uses
  %.sroa.13.1473 = phi i64 [ %i.gv, %bb.ac ], [ %i.dl, %.lr.ph.split.preheader ] ; 4 uses
  %i.ei = udiv i64 %.sroa.0137.0475, %i.ea, !dbg !17223
  %i.ej = urem i64 %.sroa.0137.0475, %i.ea, !dbg !17233
  %.not366 = icmp ne i64 %i.ej, 0, !dbg !17235
  %i.ek = zext i1 %.not366 to i64, !dbg !17235
  %.sroa.0140.0 = add nuw nsw i64 %i.ei, %i.ek, !dbg !17235 ; 2 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0140.0, i64 %i.ay), !dbg !17237 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0205.1474, i64 %.sroa.13.1473, !dbg !17239
  %i.em = icmp samesign eq i64 %.sroa.13.1473, 0, !dbg !17244
  br i1 %i.em, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit404, label %.lr.ph.i.i396, !dbg !17228

.thread443:                                       ; preds = %bb.p, %._crit_edge
  %i.en = phi i64 [ %i.ef, %._crit_edge ], [ 0, %bb.p ]
  %.sroa.0205.0448 = phi ptr [ %i.gw, %._crit_edge ], [ %i.dm, %bb.p ]
  %.sroa.13.0447 = phi i64 [ %i.gv, %._crit_edge ], [ %i.dl, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6240), !dbg !17246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !17246
  call void @_RNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB4_7DecoderyE18try_new_allow_zeroBc_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, i64 noundef 0, i64 noundef 1), !dbg !17246
  %i.eo = load ptr, ptr %i.h, align 8, !dbg !17248, !noundef !15 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, null, !dbg !17248
  br i1 %i.ep, label %bb.s, label %bb.t, !dbg !17250

bb.r:                                             ; preds = %._crit_edge
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ef, i64 noundef %i.dl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #29, !dbg !17251
  unreachable, !dbg !17251

bb.s:                                             ; preds = %.thread443
  %i.eq = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !17252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6240, ptr noundef nonnull align 8 dereferenceable(32) %i.eq, i64 32, i1 false), !dbg !17252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !17253
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17254
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.er, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6240, i64 32, i1 false), !dbg !17253
  store ptr null, ptr %0, align 8, !dbg !17254
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6240), !dbg !17260
  br label %bb.u, !dbg !17261

bb.t:                                             ; preds = %.thread443
  %i.es = icmp ne i64 %.sroa.0.1.i385442509517, 0, !dbg !17263
  %i.et = zext i1 %i.es to i64, !dbg !17264
  %i.eu = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.1.i385442509517, i64 1), !dbg !17268
  %.sroa.5344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !17271
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6240, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5344.0..sroa_idx, i64 32, i1 false), !dbg !17271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !17253
  %.sroa.8249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !17272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8249.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6240, i64 32, i1 false), !dbg !17246
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !17272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %.sroa.9.0..sroa_idx, i8 0, i64 512, i1 false), !dbg !17274
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6240), !dbg !17260
  store ptr %i.dm, ptr %0, align 8, !dbg !17272
  %.sroa.4245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17272
  store i64 %i.en, ptr %.sroa.4245.0..sroa_idx, align 8, !dbg !17272
  %.sroa.5246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17272
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5246.0..sroa_idx, align 8, !dbg !17272
  %.sroa.6247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !17272
  store i64 0, ptr %.sroa.6247.0..sroa_idx, align 8, !dbg !17272
  %.sroa.7248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !17272
  store ptr %i.eo, ptr %.sroa.7248.0..sroa_idx, align 8, !dbg !17272
  %.sroa.10250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 584, !dbg !17272
  %.sroa.13251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 608, !dbg !17272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10250.0..sroa_idx, i8 0, i64 24, i1 false), !dbg !17272
  store i64 %i.et, ptr %.sroa.13251.0..sroa_idx, align 8, !dbg !17272
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 616, !dbg !17272
  store i64 %i.ay, ptr %.sroa.14.0..sroa_idx, align 8, !dbg !17272
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 624, !dbg !17272
end_hunk_2

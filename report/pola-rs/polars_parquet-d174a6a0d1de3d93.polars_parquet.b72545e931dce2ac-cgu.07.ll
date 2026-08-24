Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.07?download=true
inline.NumInlined: 1744
inline.NumDeleted: 145
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode24DecodeBlockTypeAndLengthNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet:bb.a
  %i.ed = lshr i64 %i.dz, %i.ec, !dbg !5245
  %i.ee = trunc i64 %i.ed to i32, !dbg !5251
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr @23, i64 %i.ea, !dbg !5252
  %i.eg = load i32, ptr %i.ef, align 4, !dbg !5252, !noalias !5233, !noundef !12
  %i.eh = and i32 %i.eg, %i.ee, !dbg !5253
  %i.ei = add i32 %.lcssa7.i.i, %i.dg, !dbg !5254
  store i32 %i.ei, ptr %i.l, align 8, !dbg !5254, !alias.scope !5214, !noalias !5215
  %i.ej = load i16, ptr %i.dd, align 2, !dbg !5256, !noalias !5204, !noundef !12
  %i.ek = zext i16 %i.ej to i32, !dbg !5256
  %i.el = add i32 %i.eh, %i.ek, !dbg !5257
  store i8 0, ptr %i.cq, align 4, !dbg !5258, !alias.scope !5185, !noalias !5235
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !5259
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.c, !dbg !5259
  store i32 %i.el, ptr %i.en, align 4, !dbg !5259
  %.pre41 = load i32, ptr %i.b, align 4, !dbg !5260
  br label %bb.ad, !dbg !5157

bb.ad:                                            ; preds = %bb.p, %.loopexit
  %i.eo = phi i32 [ %i.cg, %bb.p ], [ %.pre41, %.loopexit ], !dbg !5260 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !5262
  %.idx = shl nuw nsw i64 %i.c, 3, !dbg !5263
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.idx, !dbg !5263 ; 4 uses
  switch i32 %i.eo, label %bb.ag [
    i32 1, label %bb.ae
    i32 0, label %bb.ah
  ], !dbg !5274

bb.ae:                                            ; preds = %bb.ad
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4, !dbg !5275
  %i.es = load i32, ptr %i.er, align 4, !dbg !5275, !noundef !12
  %i.et = add i32 %i.es, 1, !dbg !5277
  br label %bb.af, !dbg !5278

bb.af:                                            ; preds = %bb.ag, %bb.ah, %bb.ae
  %i.eu = phi i32 [ %i.ey, %bb.ag ], [ %i.ez, %bb.ah ], [ %i.et, %bb.ae ], !dbg !5279 ; 2 uses
  %.not = icmp ult i32 %i.eu, %i.f, !dbg !5280
  %i.ev = select i1 %.not, i32 0, i32 %i.f, !dbg !5280
  %spec.select = sub nuw i32 %i.eu, %i.ev, !dbg !5280
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 4, !dbg !5275 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !dbg !5275, !noundef !12
  store i32 %i.ex, ptr %i.eq, align 8, !dbg !5281
  store i32 %spec.select, ptr %i.ew, align 4, !dbg !5282
  br label %bb.ai, !dbg !5283

bb.ag:                                            ; preds = %bb.ad
  %i.ey = add i32 %i.eo, -2, !dbg !5284
  br label %bb.af, !dbg !5285

bb.ah:                                            ; preds = %bb.ad
  %i.ez = load i32, ptr %i.eq, align 8, !dbg !5275, !noundef !12
  br label %bb.af, !dbg !5285

bb.ai:                                            ; preds = %_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode28SafeReadBlockLengthFromIndexNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit.thread, %bb.a, %bb.r, %bb.af
  %.sroa.0.1 = phi i1 [ true, %bb.af ], [ false, %bb.r ], [ false, %bb.a ], [ false, %_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode28SafeReadBlockLengthFromIndexNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit.thread ], !dbg !5286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5287
  ret i1 %.sroa.0.1, !dbg !5283
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode28SafeReadBlockLengthFromIndexNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2, i1 noundef zeroext %3, i32 noundef %4, ptr noalias noundef nonnull readonly captures(none) %5, i64 noundef range(i64 0, -9223372036854775808) %6) unnamed_addr #0 !dbg !5196 {
bb.a:
  br i1 %3, label %bb.b, label %bb.c, !dbg !5288

bb.b:                                             ; preds = %bb.a
  %i.a = zext i32 %4 to i64, !dbg !5289           ; 2 uses
  %i.b = icmp ult i32 %4, 26, !dbg !5290
  br i1 %i.b, label %bb.d, label %bb.i, !dbg !5290

.sink.split:                                      ; preds = %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit, %._crit_edge.i
  %.sink = phi i8 [ 0, %._crit_edge.i ], [ 1, %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit ]
  %.sroa.0.0.ph = phi i1 [ true, %._crit_edge.i ], [ false, %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84, !dbg !5291
  store i8 %.sink, ptr %i.c, align 4, !dbg !5291
  br label %bb.c, !dbg !5292

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %.sroa.0.0.ph, %.sink.split ], !dbg !5293
  ret i1 %.sroa.0.0, !dbg !5292

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @82, i64 %i.a, !dbg !5294 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2, !dbg !5295
  %i.f = load i8, ptr %i.e, align 2, !dbg !5295, !noundef !12 ; 2 uses
  %i.g = zext i8 %i.f to i32, !dbg !5296          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5297), !dbg !5300
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5301), !dbg !5300
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.promoted.i = load i32, ptr %i.h, align 8, !alias.scope !5297, !noalias !5303 ; 3 uses
  %i.i = sub i32 64, %.promoted.i, !dbg !5305
  %.not.i = icmp ult i32 %i.i, %i.g, !dbg !5308
  %.promoted14.i = load i64, ptr %1, align 8, !alias.scope !5297, !noalias !5303 ; 2 uses
  br i1 %.not.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !5308

.lr.ph.i:                                         ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.promoted17.i = load i32, ptr %i.j, align 8, !alias.scope !5297, !noalias !5303
  %.promoted18.i = load i32, ptr %i.k, align 4, !alias.scope !5297, !noalias !5303
  br label %bb.e, !dbg !5308

bb.e:                                             ; preds = %bb.g, %.lr.ph.i
  %i.l = phi i32 [ %.promoted18.i, %.lr.ph.i ], [ %i.aa, %bb.g ] ; 2 uses
  %i.m = phi i32 [ %.promoted17.i, %.lr.ph.i ], [ %i.z, %bb.g ] ; 2 uses
  %i.n = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %i.y, %bb.g ] ; 2 uses
  %i.o = phi i64 [ %.promoted14.i, %.lr.ph.i ], [ %i.x, %bb.g ]
  %i.p = icmp eq i32 %i.m, 0, !dbg !5309
  br i1 %i.p, label %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit, label %bb.f, !dbg !5309

bb.f:                                             ; preds = %bb.e
  %i.q = lshr i64 %i.o, 8, !dbg !5311             ; 2 uses
  store i64 %i.q, ptr %1, align 8, !dbg !5311, !alias.scope !5297, !noalias !5303
  %i.r = zext i32 %i.l to i64, !dbg !5312         ; 3 uses
  %i.s = icmp samesign ugt i64 %6, %i.r, !dbg !5313
  br i1 %i.s, label %bb.g, label %bb.h, !dbg !5313

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 %i.r, !dbg !5313
  %i.u = load i8, ptr %i.t, align 1, !dbg !5313, !alias.scope !5301, !noalias !5314, !noundef !12
  %i.v = zext i8 %i.u to i64, !dbg !5315
  %i.w = shl nuw i64 %i.v, 56, !dbg !5315
  %i.x = or disjoint i64 %i.w, %i.q, !dbg !5316   ; 3 uses
  store i64 %i.x, ptr %1, align 8, !dbg !5316, !alias.scope !5297, !noalias !5303
  %i.y = add i32 %i.n, -8, !dbg !5317             ; 3 uses
  store i32 %i.y, ptr %i.h, align 8, !dbg !5317, !alias.scope !5297, !noalias !5303
  %i.z = add i32 %i.m, -1, !dbg !5318             ; 2 uses
  store i32 %i.z, ptr %i.j, align 8, !dbg !5318, !alias.scope !5297, !noalias !5303
  %i.aa = add i32 %i.l, 1, !dbg !5319             ; 2 uses
  store i32 %i.aa, ptr %i.k, align 4, !dbg !5319, !alias.scope !5297, !noalias !5303
  %i.ab = sub i32 72, %i.n, !dbg !5305
  %.not19.i = icmp ult i32 %i.ab, %i.g, !dbg !5308
  br i1 %.not19.i, label %bb.e, label %._crit_edge.i, !dbg !5308

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef range(i64 0, -9223372036854775808) %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #20, !dbg !5313, !noalias !5320
  unreachable, !dbg !5313

bb.i:                                             ; preds = %bb.b
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef 26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #20, !dbg !5290
  unreachable, !dbg !5290

_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 68, !dbg !5321
  store i32 %4, ptr %i.ac, align 4, !dbg !5321
  br label %.sink.split, !dbg !5322

._crit_edge.i:                                    ; preds = %bb.g, %bb.d
  %i.ad = phi i64 [ %.promoted14.i, %bb.d ], [ %i.x, %bb.g ], !dbg !5324
  %.lcssa7.i = phi i32 [ %.promoted.i, %bb.d ], [ %i.y, %bb.g ], !dbg !5327 ; 2 uses
  %i.ae = zext i8 %i.f to i64, !dbg !5328
  %i.af = and i32 %.lcssa7.i, 63, !dbg !5324
  %i.ag = zext nneg i32 %i.af to i64, !dbg !5324
  %i.ah = lshr i64 %i.ad, %i.ag, !dbg !5324
  %i.ai = trunc i64 %i.ah to i32, !dbg !5330
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @23, i64 %i.ae, !dbg !5331
  %i.ak = load i32, ptr %i.aj, align 4, !dbg !5331, !noalias !5320, !noundef !12
  %i.al = and i32 %i.ak, %i.ai, !dbg !5332
  %i.am = add i32 %.lcssa7.i, %i.g, !dbg !5333
  store i32 %i.am, ptr %i.h, align 8, !dbg !5333, !alias.scope !5297, !noalias !5303
  %i.an = load i16, ptr %i.d, align 2, !dbg !5335, !noundef !12
  %i.ao = zext i16 %i.an to i32, !dbg !5335
  %i.ap = add i32 %i.al, %i.ao, !dbg !5336
  store i32 %i.ap, ptr %2, align 4, !dbg !5336
  br label %.sink.split, !dbg !5292
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i32 -31, 4) i32 @_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode29CopyUncompressedBlockToOutputNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB1f_B1f_ECsfISxE4fmY1Y_14polars_parquet(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %4, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(2600) %5, ptr noalias noundef nonnull readonly captures(none) %6, i64 noundef range(i64 0, -9223372036854775808) %7) unnamed_addr #0 !dbg !5337 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 2592 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 1872
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 1888 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 1880 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 2216 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 2176 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 2192 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 1784
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 1776
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %5, i64 1884 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 2288 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 2180
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 2188
  %.pre = load i8, ptr %i.b, align 8, !dbg !5338, !range !402
  br label %bb.b, !dbg !5339

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.n = phi i8 [ %storemerge, %.backedge ], [ %.pre, %bb.a ], !dbg !5338
  %i.o = trunc nuw i8 %i.n to i1, !dbg !5338
  br i1 %i.o, label %bb.c, label %bb.d, !dbg !5340

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5341
  call fastcc void @_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode15WriteRingBufferNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB11_B11_ECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef %1, i64 %2, ptr noalias noundef align 8 dereferenceable(8) %3, ptr noalias noundef align 8 dereferenceable(8) %4, i1 noundef zeroext false, ptr noalias noundef align 8 dereferenceable(2600) %5), !dbg !5341
  %i.p = load i32, ptr %i.a, align 8, !dbg !5342, !range !2577, !noundef !12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5343
  %i.q = icmp eq i32 %i.p, 1, !dbg !5344
  br i1 %i.q, label %bb.n, label %.loopexit, !dbg !5344

bb.d:                                             ; preds = %bb.b
  %i.r = load i32, ptr %i.d, align 8, !dbg !5346, !noundef !12 ; 2 uses
  %i.s = load i32, ptr %i.e, align 8, !dbg !5349, !noundef !12 ; 6 uses
  %i.t = sub i32 64, %i.s, !dbg !5352
  %i.u = lshr i32 %i.t, 3, !dbg !5353
  %i.v = add i32 %i.u, %i.r, !dbg !5346
  %i.w = load i32, ptr %i.f, align 8, !dbg !5354, !noundef !12 ; 3 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %i.w), !dbg !5356 ; 2 uses
  %i.x = load i32, ptr %i.g, align 8, !dbg !5357, !noundef !12 ; 5 uses
  %i.y = add i32 %spec.select, %i.x, !dbg !5357   ; 2 uses
  %i.z = load i32, ptr %i.h, align 8, !dbg !5358, !noundef !12 ; 3 uses
  %i.aa = icmp sgt i32 %i.y, %i.z, !dbg !5359
  %i.ab = sub i32 %i.z, %i.x, !dbg !5359
  %.sroa.02.1 = select i1 %i.aa, i32 %i.ab, i32 %spec.select, !dbg !5359 ; 7 uses
  %.val12 = load i64, ptr %i.i, align 8, !dbg !5360, !noundef !12 ; 4 uses
  %i.ac = sext i32 %i.x to i64, !dbg !5361        ; 4 uses
  %i.ad = icmp ult i64 %.val12, %i.ac, !dbg !5362
  br i1 %i.ad, label %bb.l, label %bb.e, !dbg !5362, !prof !174

bb.e:                                             ; preds = %bb.d
  %.val = load ptr, ptr %i.j, align 8, !dbg !5360, !nonnull !12, !noundef !12
  %i.ae = sub nuw i64 %.val12, %i.ac, !dbg !5368  ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ac, !dbg !5369 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5374), !dbg !5377
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5378), !dbg !5377
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5380), !dbg !5377
  %notsub24.i = add i32 %i.s, -65, !dbg !5382
  %i.ag = icmp ult i32 %notsub24.i, -8, !dbg !5382
  %i.ah = icmp ne i32 %.sroa.02.1, 0
  %or.cond25.i = and i1 %i.ah, %i.ag, !dbg !5382
  br i1 %or.cond25.i, label %.lr.ph.i, label %.preheader.i, !dbg !5382

.lr.ph.i:                                         ; preds = %bb.e
  %i.ai = load i64, ptr %i.c, align 8, !alias.scope !5378, !noalias !5386 ; 2 uses
  %i.aj = sub i32 56, %i.s, !dbg !5382
  %i.ak = lshr i32 %i.aj, 3, !dbg !5382
  %i.al = zext nneg i32 %i.ak to i64, !dbg !5382
  %i.am = tail call i32 @llvm.smin.i32(i32 %i.z, i32 %i.y), !dbg !5382
  %i.an = xor i32 %i.x, -1, !dbg !5382
  %i.ao = add i32 %i.am, %i.an, !dbg !5382
  %i.ap = zext i32 %i.ao to i64, !dbg !5382
  %i.aq = tail call i64 @llvm.umin.i64(i64 %i.al, i64 %i.ae), !dbg !5382
  %i.ar = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 %i.ap), !dbg !5382 ; 2 uses
  %min.iters.check131 = icmp samesign ult i64 %i.ar, 4, !dbg !5382
  br i1 %min.iters.check131, label %scalar.ph130.preheader, label %vector.ph132, !dbg !5382

vector.ph132:                                     ; preds = %.lr.ph.i
  %i.as = add nuw nsw i64 %i.ar, 1, !dbg !5382    ; 2 uses
  %i.at = and i64 %i.as, 3                        ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  %i.av = select i1 %i.au, i64 4, i64 %i.at
  %n.vec133 = sub nsw i64 %i.as, %i.av            ; 3 uses
  %i.aw = trunc nsw i64 %n.vec133 to i32          ; 2 uses
  %i.ax = sub i32 %.sroa.02.1, %i.aw
  %i.ay = shl i32 %i.aw, 3
  %i.az = add i32 %i.s, %i.ay
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.ai, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert134 = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat135 = shufflevector <4 x i32> %broadcast.splatinsert134, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat135, <i32 0, i32 8, i32 16, i32 24>
  br label %vector.body136, !dbg !5382

vector.body136:                                   ; preds = %vector.body136, %vector.ph132
  %index137 = phi i64 [ 0, %vector.ph132 ], [ %index.next138, %vector.body136 ], !dbg !5387 ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph132 ], [ %vec.ind.next, %vector.body136 ] ; 3 uses
  %i.ba = and <4 x i32> %vec.ind, splat (i32 63), !dbg !5388
  %i.bb = zext nneg <4 x i32> %i.ba to <4 x i64>, !dbg !5388
  %i.bc = lshr <4 x i64> %broadcast.splat, %i.bb, !dbg !5388
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 %index137, !dbg !5391
  %i.be = trunc <4 x i64> %i.bc to <4 x i8>, !dbg !5391
  store <4 x i8> %i.be, ptr %i.bd, align 1, !dbg !5391, !alias.scope !5374, !noalias !5392
  %index.next138 = add nuw i64 %index137, 4, !dbg !5387 ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 32)
  %i.bf = icmp eq i64 %index.next138, %n.vec133, !dbg !5382
  br i1 %i.bf, label %middle.block139, label %vector.body136, !dbg !5382, !llvm.loop !5393

middle.block139:                                  ; preds = %vector.body136
  %i.bg = extractelement <4 x i32> %vec.ind, i64 3
  %i.bh = add i32 %i.bg, 8
  store i32 %i.bh, ptr %i.e, align 8, !dbg !5394, !alias.scope !5378, !noalias !5386
  br label %scalar.ph130.preheader, !dbg !5382

scalar.ph130.preheader:                           ; preds = %.lr.ph.i, %middle.block139
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec133, %middle.block139 ]
  %.sroa.0.027.i.ph = phi i32 [ %.sroa.02.1, %.lr.ph.i ], [ %i.ax, %middle.block139 ]
  %.ph = phi i32 [ %i.s, %.lr.ph.i ], [ %i.az, %middle.block139 ]
  br label %scalar.ph130, !dbg !5397

.preheader.i:                                     ; preds = %bb.j, %bb.e
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.e ], [ %indvars.iv.next.i, %bb.j ], !dbg !5399 ; 3 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.02.1, %bb.e ], [ %i.cg, %bb.j ] ; 4 uses
  %.not.i = icmp eq i32 %.sroa.0.0.lcssa.i, 0, !dbg !5400
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !alias.scope !5378, !noalias !5386 ; 2 uses
  br i1 %.not.i, label %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader15BrotliCopyBytes.exit, label %.lr.ph30.i, !dbg !5415

.lr.ph30.i:                                       ; preds = %.preheader.i
  %i.bi = zext i32 %.pre.i to i64                 ; 3 uses
  %i.bj = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %7, i64 %i.bi), !dbg !5415 ; 2 uses
  %i.bk = tail call i64 @llvm.usub.sat.i64(i64 %i.ae, i64 %.sroa.06.0.lcssa.i), !dbg !5415 ; 2 uses
  %wide.trip.count.i = zext i32 %.sroa.0.0.lcssa.i to i64, !dbg !5400 ; 2 uses
  %i.bl = add nsw i64 %wide.trip.count.i, -1, !dbg !5415
  %i.bm = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 %i.bl), !dbg !5415
  %i.bn = freeze i64 %i.bm, !dbg !5415
  %i.bo = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 %i.bj), !dbg !5415 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bo, 16, !dbg !5415
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !5415

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph30.i
  %indvars.iv40.i.ph = phi i64 [ 0, %.lr.ph30.i ], [ %n.vec, %vector.body ]
  br label %scalar.ph, !dbg !5416

vector.ph:                                        ; preds = %.lr.ph30.i
  %i.bp = add nuw i64 %i.bo, 1, !dbg !5415        ; 2 uses
  %i.bq = and i64 %i.bp, 15                       ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  %i.bs = select i1 %i.br, i64 16, i64 %i.bq
  %n.vec = sub i64 %i.bp, %i.bs                   ; 2 uses
  %invariant.gep = getelementptr i8, ptr %6, i64 %i.bi, !dbg !5415
  %invariant.gep199 = getelementptr i8, ptr %i.af, i64 %.sroa.06.0.lcssa.i, !dbg !5415
  br label %vector.body, !dbg !5415

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !5419 ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index, !dbg !5416
  %wide.load = load <16 x i8>, ptr %gep, align 1, !dbg !5416, !alias.scope !5380, !noalias !5426
  %gep200 = getelementptr i8, ptr %invariant.gep199, i64 %index, !dbg !5427
  store <16 x i8> %wide.load, ptr %gep200, align 1, !dbg !5427, !alias.scope !5374, !noalias !5392
  %index.next = add nuw i64 %index, 16, !dbg !5419 ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec, !dbg !5415
  br i1 %i.bt, label %scalar.ph.preheader, label %vector.body, !dbg !5415, !llvm.loop !5428

scalar.ph130:                                     ; preds = %scalar.ph130.preheader, %bb.j
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.j ], [ %indvars.iv.i.ph, %scalar.ph130.preheader ] ; 3 uses
  %.sroa.0.027.i = phi i32 [ %i.cg, %bb.j ], [ %.sroa.0.027.i.ph, %scalar.ph130.preheader ]
  %i.bu = phi i32 [ %i.cf, %bb.j ], [ %.ph, %scalar.ph130.preheader ] ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv.i, %i.ae, !dbg !5397
  br i1 %exitcond.not, label %bb.k, label %bb.j, !dbg !5397

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.h
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %bb.h ], [ %indvars.iv40.i.ph, %scalar.ph.preheader ] ; 5 uses
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1, !dbg !5419 ; 2 uses
  %i.bv = add nuw nsw i64 %indvars.iv40.i, %i.bi, !dbg !5429 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv40.i, %i.bj, !dbg !5416
  br i1 %exitcond.not.i, label %bb.g, label %bb.f, !dbg !5416

bb.f:                                             ; preds = %scalar.ph
  %i.bw = add nuw nsw i64 %indvars.iv40.i, %.sroa.06.0.lcssa.i, !dbg !5430 ; 2 uses
  %exitcond44.not.i = icmp eq i64 %indvars.iv40.i, %i.bk, !dbg !5431
  br i1 %exitcond44.not.i, label %bb.i, label %bb.h, !dbg !5431

bb.g:                                             ; preds = %scalar.ph
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bv, i64 noundef range(i64 0, -9223372036854775808) %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #20, !dbg !5416, !noalias !5432
  unreachable, !dbg !5416

bb.h:                                             ; preds = %bb.f
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 %i.bv, !dbg !5416
  %i.by = load i8, ptr %i.bx, align 1, !dbg !5416, !alias.scope !5380, !noalias !5426, !noundef !12
  %i.bz = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bw, !dbg !5427
  store i8 %i.by, ptr %i.bz, align 1, !dbg !5427, !alias.scope !5374, !noalias !5392
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next41.i, %wide.trip.count.i, !dbg !5400
  br i1 %exitcond45.not.i, label %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader15BrotliCopyBytes.exit, label %scalar.ph, !dbg !5415, !llvm.loop !5433

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bw, i64 noundef range(i64 0, -9223372036854775808) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @113) #20, !dbg !5431, !noalias !5432
  unreachable, !dbg !5431

bb.j:                                             ; preds = %scalar.ph130
  %i.ca = and i32 %i.bu, 63, !dbg !5388
  %i.cb = zext nneg i32 %i.ca to i64, !dbg !5388
  %i.cc = lshr i64 %i.ai, %i.cb, !dbg !5388
  %i.cd = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv.i, !dbg !5391
  %i.ce = trunc i64 %i.cc to i8, !dbg !5391
  store i8 %i.ce, ptr %i.cd, align 1, !dbg !5391, !alias.scope !5374, !noalias !5392
  %i.cf = add i32 %i.bu, 8, !dbg !5394            ; 2 uses
  store i32 %i.cf, ptr %i.e, align 8, !dbg !5394, !alias.scope !5378, !noalias !5386
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !5387 ; 2 uses
  %i.cg = add i32 %.sroa.0.027.i, -1, !dbg !5434  ; 3 uses
  %notsub.i = add i32 %i.bu, -57, !dbg !5382
  %i.ch = icmp ult i32 %notsub.i, -8, !dbg !5382
  %i.ci = icmp ne i32 %i.cg, 0
  %or.cond.i = select i1 %i.ch, i1 %i.ci, i1 false, !dbg !5382
  br i1 %or.cond.i, label %scalar.ph130, label %.preheader.i, !dbg !5382, !llvm.loop !5435

bb.k:                                             ; preds = %scalar.ph130
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ae, i64 noundef range(i64 0, -9223372036854775808) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114) #20, !dbg !5397, !noalias !5432
  unreachable, !dbg !5397

_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader15BrotliCopyBytes.exit: ; preds = %bb.h, %.preheader.i
  %i.cj = sub i32 %i.r, %.sroa.0.0.lcssa.i, !dbg !5436
  store i32 %i.cj, ptr %i.d, align 8, !dbg !5436, !alias.scope !5378, !noalias !5386
  %i.ck = add i32 %.pre.i, %.sroa.0.0.lcssa.i, !dbg !5437
  store i32 %i.ck, ptr %.phi.trans.insert.i, align 4, !dbg !5437, !alias.scope !5378, !noalias !5386
  %i.cl = add i32 %.sroa.02.1, %i.x, !dbg !5438   ; 2 uses
  store i32 %i.cl, ptr %i.g, align 8, !dbg !5438
  %i.cm = sub i32 %i.w, %.sroa.02.1, !dbg !5439
  store i32 %i.cm, ptr %i.f, align 8, !dbg !5439
  %i.cn = load i32, ptr %i.k, align 8, !dbg !5440, !noundef !12
  %i.co = and i32 %i.cn, 31, !dbg !5441
  %i.cp = shl nuw i32 1, %i.co, !dbg !5441
  %i.cq = icmp slt i32 %i.cl, %i.cp, !dbg !5442
  br i1 %i.cq, label %bb.m, label %.backedge, !dbg !5442

bb.l:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ac, i64 noundef %.val12, i64 noundef %.val12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #20, !dbg !5443
  unreachable, !dbg !5443

.backedge:                                        ; preds = %bb.o, %bb.n, %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader15BrotliCopyBytes.exit
  %storemerge = phi i8 [ 1, %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader15BrotliCopyBytes.exit ], [ 0, %bb.n ], [ 0, %bb.o ], !dbg !5444 ; 2 uses
  store i8 %storemerge, ptr %i.b, align 8, !dbg !5444
  br label %bb.b, !dbg !5338

bb.m:                                             ; preds = %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader15BrotliCopyBytes.exit
  %i.cr = icmp eq i32 %i.w, %.sroa.02.1, !dbg !5445
  %. = select i1 %i.cr, i32 1, i32 2, !dbg !5446
  br label %.loopexit, !dbg !5446

.loopexit:                                        ; preds = %bb.c, %bb.m
  %.sroa.0.0 = phi i32 [ %., %bb.m ], [ %i.p, %bb.c ], !dbg !5444
  ret i32 %.sroa.0.0, !dbg !5447

bb.n:                                             ; preds = %bb.c
  %i.cs = load i32, ptr %i.h, align 8, !dbg !5448, !noundef !12
  %i.ct = load i32, ptr %i.k, align 8, !dbg !5449, !noundef !12
  %i.cu = and i32 %i.ct, 31, !dbg !5450
  %i.cv = shl nuw i32 1, %i.cu, !dbg !5450
  %i.cw = icmp eq i32 %i.cs, %i.cv, !dbg !5448
  br i1 %i.cw, label %bb.o, label %.backedge, !dbg !5448

bb.o:                                             ; preds = %bb.n
  %i.cx = load i32, ptr %i.l, align 4, !dbg !5451, !noundef !12
  store i32 %i.cx, ptr %i.m, align 4, !dbg !5452
  br label %.backedge, !dbg !5453
}

end_hunk_0
begin_hunk_1_@_RNvNtCsjPfRcqrlXv6_19brotli_decompressor7huffman34BrotliBuildCodeLengthsHuffmanTable
declare void @_RNvNtCsjPfRcqrlXv6_19brotli_decompressor7huffman34BrotliBuildCodeLengthsHuffmanTable(ptr noalias noundef nonnull align 2, i64 noundef range(i64 0, 2305843009213693952), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance), i64 noundef range(i64 0, 4611686018427387904)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvNtCsjPfRcqrlXv6_19brotli_decompressor7huffman23BrotliBuildHuffmanTable(ptr noalias noundef nonnull align 2, i64 noundef range(i64 0, 2305843009213693952), i32 noundef, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance), i64 noundef range(i64 0, 4611686018427387904), i64 noundef, ptr noalias noundef nonnull align 2, i64 noundef range(i64 0, 4611686018427387904)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedbbECsjPfRcqrlXv6_19brotli_decompressor(i8 noundef range(i8 0, 3), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noundef, ptr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs0_NtCsbA1n9drshSs_12alloc_stdlib10heap_allocINtB5_7WrapBoxhENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfISxE4fmY1Y_14polars_parquet() unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode14SafeReadSymbol(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 4 dereferenceable(4), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode12SafeReadBits(ptr noalias noundef align 8 dereferenceable(24), i32 noundef, ptr noalias noundef align 4 dereferenceable(4), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 -31, 4) i32 @_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode17DecodeVarLenUint8(ptr noalias noundef dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 4 dereferenceable(4), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorhE10alloc_cellCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs0_NtCsbA1n9drshSs_12alloc_stdlib10heap_allocINtB5_7WrapBoxNtNtCsjPfRcqrlXv6_19brotli_decompressor7huffman11HuffmanCodeENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfISxE4fmY1Y_14polars_parquet() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode27InverseMoveToFrontTransform(ptr noalias noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), i32 noundef, ptr noalias noundef dereferenceable(256), ptr noalias noundef align 4 dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader21BrotliFillBitWindow16(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtCsjPfRcqrlXv6_19brotli_decompressor7huffman11HuffmanCodeE10alloc_cellCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsjPfRcqrlXv6_19brotli_decompressor5stateINtB2_11BrotliStateNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB12_B12_E25BrotliStateMetablockBeginCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(2600)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsjPfRcqrlXv6_19brotli_decompressor5stateINtB2_11BrotliStateNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB12_B12_E32BrotliStateCleanupAfterMetablockCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(2600)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i1, i32 } @_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode24SafeReadBlockLengthIndex(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), i32 noundef, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtCsjPfRcqrlXv6_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB1c_E4initCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(40), ptr noalias noundef nonnull, ptr noalias noundef nonnull, i16 noundef, i16 noundef, i16 noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedhhECs41c1ljAzdbX_12aho_corasick(i8 noundef range(i8 0, 3), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noundef, ptr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs0_NtCsbA1n9drshSs_12alloc_stdlib10heap_allocINtB5_7WrapBoxmENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfISxE4fmY1Y_14polars_parquet() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsjPfRcqrlXv6_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB1c_ENtNtCscgRAwXFJnXP_4core7default7Default7defaultCsfISxE4fmY1Y_14polars_parquet(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtCsjPfRcqrlXv6_19brotli_decompressor7huffmanINtB5_16HuffmanTreeGroupNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB1c_E18build_hgroup_cacheCsfISxE4fmY1Y_14polars_parquet(ptr dead_on_unwind noalias noundef writable sret([4096 x i8]) align 8 captures(none) dereferenceable(4096), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode13PreloadSymbol(i1 noundef zeroext, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 4 dereferenceable(4), ptr noalias noundef align 4 dereferenceable(4), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode19ReadPreloadedSymbol(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 4 dereferenceable(4), ptr noalias noundef align 4 dereferenceable(4), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode19memcpy_within_slice(ptr noalias noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvNtCsjPfRcqrlXv6_19brotli_decompressor9transform23TransformDictionaryWord(ptr noalias noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader14BrotliPeekByte(ptr noalias noundef align 8 dereferenceable(24), i32 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull, ptr noalias noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode15ReadBlockLength(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs5_CslcGXmMsZ7N2_9zstd_safeNtB6_4DCtx17decompress_streamShECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvCsi0YuHEPkLKL_4zstd14map_error_code(i64 noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare noundef nonnull ptr @_RINvMs5_NtNtCsh8eZTKRCwoO_3std2io5errorNtB6_5Error3newReEBa_(i8 noundef range(i8 0, 42), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsb_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxShEuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect6ExtendTBO_uEE6extendINtNtNtB2l_8adapters3map3MapIB3m_INtNtNtB2n_5slice4iter4IterNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read4expr13ParquetScalarENCNCNvMs_NtNtB4n_11deserialize7binviewNtB5A_14BinViewDecoder34initialize_predicate_equals_one_of0s_0ENCINvXs8_NtB8_3setINtB7d_8IndexSetBO_B1r_EIB2f_BO_E6extendB3N_E0EEB4r_(ptr noalias noundef align 8 dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #10

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics7booleanNtB2_17BooleanStatistics11deserialize(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics6binaryNtB2_16BinaryStatistics11deserialize(ptr dead_on_unwind noalias noundef writable sret([184 x i8]) align 8 captures(none) dereferenceable(184), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics16fixed_len_binaryNtB2_18FixedLenStatistics11deserialize(ptr dead_on_unwind noalias noundef writable sret([184 x i8]) align 8 captures(none) dereferenceable(184), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statisticsNtB2_10Statistics9clear_min(ptr noalias noundef align 8 dereferenceable(192)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statisticsNtB2_10Statistics9clear_max(ptr noalias noundef align 8 dereferenceable(192)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs_NtCsfISxE4fmY1Y_14polars_parquet7parquetNtB4_9CowBuffer6to_mut(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 9) i8 @_RNvXsa_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridgeNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format14DataPageHeaderNtB5_17DataPageHeaderExt25definition_level_encoding(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 9) i8 @_RNvXsa_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridgeNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format14DataPageHeaderNtB5_17DataPageHeaderExt25repetition_level_encoding(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 9) i8 @_RNvXsa_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridgeNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format14DataPageHeaderNtB5_17DataPageHeaderExt8encoding(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 9) i8 @_RNvXsb_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridgeNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format16DataPageHeaderV2NtB5_17DataPageHeaderExt8encoding(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(168)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtCs9VoZUfg37wD_6flate23memNtB5_10Decompress3new(ptr dead_on_unwind noalias noundef writable sret([144 x i8]) align 8 captures(none) dereferenceable(144), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull, ptr noalias noundef nonnull align 4, i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.bswap.i128(i128) #12

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs5_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet5errorNtB5_12ParquetErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtB1f_3num5error15TryFromIntErrorE4from(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format11ColumnOrderEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2P_3ops5range5RangejENCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write4file20create_column_orders0EE9from_iterB47_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRjNtB6_5Debug3fmtCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvNtCs9VoZUfg37wD_6flate23zio4readINtNtB4_9bufreader9BufReaderRShENtNtB4_3mem10DecompressECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef align 8 dereferenceable(144), ptr noalias noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #16

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { nounwind }
attributes #19 = { cold }
attributes #20 = { noinline noreturn }
attributes #21 = { noreturn }
attributes #22 = { noinline }
attributes #23 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.dbg.cu = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{!"rustc version 1.96.0-nightly (48cc71ee8 2026-03-31)"}
!5 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !6, producer: "clang LLVM (rustc version 1.96.0-nightly (48cc71ee8 2026-03-31))", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!6 = !DIFile(filename: "crates/polars-parquet/src/lib.rs/@/polars_parquet.b72545e931dce2ac-cgu.07", directory: "/opt-bench/work/pola-rs/polars")
!7 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<alloc::vec::Vec<u8, alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECsfISxE4fmY1Y_14polars_parquet", scope: !9, file: !8, line: 810, type: !11, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!8 = !DIFile(filename: "library/core/src/ptr/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "e257ba3fa91f9f150d8872ddddab6def")
!9 = !DINamespace(name: "ptr", scope: !10)
!10 = !DINamespace(name: "core", scope: null)
!11 = !DISubroutineType(types: !12)
!12 = !{}
!13 = !DILocation(line: 810, column: 1, scope: !7)
!14 = !{i64 0, i64 -9223372036854775807}
!15 = !DILocation(line: 810, column: 1, scope: !16, inlinedAt: !17)
!16 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::Vec<u8, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfISxE4fmY1Y_14polars_parquet", scope: !9, file: !8, line: 810, type: !11, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!17 = distinct !DILocation(line: 810, column: 1, scope: !7)
!18 = !DILocation(line: 810, column: 1, scope: !19, inlinedAt: !20)
!19 = distinct !DISubprogram(name: "drop_in_place<alloc::raw_vec::RawVec<u8, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECsfISxE4fmY1Y_14polars_parquet", scope: !9, file: !8, line: 810, type: !11, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!20 = distinct !DILocation(line: 810, column: 1, scope: !16, inlinedAt: !17)
!21 = !DILocation(line: 810, column: 1, scope: !19, inlinedAt: !22)
!22 = distinct !DILocation(line: 810, column: 1, scope: !16, inlinedAt: !17)
!23 = distinct !DISubprogram(name: "drop_in_place<brotli_decompressor::huffman::HuffmanTreeGroup<alloc_stdlib::std_alloc::StandardAlloc, alloc_stdlib::std_alloc::StandardAlloc>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsjPfRcqrlXv6_19brotli_decompressor7huffman16HuffmanTreeGroupNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB1K_EECsfISxE4fmY1Y_14polars_parquet", scope: !9, file: !8, line: 810, type: !11, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!24 = !DILocation(line: 810, column: 1, scope: !23)
!25 = !DILocation(line: 1920, column: 16, scope: !26, inlinedAt: !34)
!26 = distinct !DILexicalBlock(scope: !28, file: !27, line: 1919, column: 13)
!27 = !DIFile(filename: "library/alloc/src/boxed.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "c2c961396e00891ae9e97f5dc112a35a")
!28 = distinct !DILexicalBlock(scope: !29, file: !27, line: 1916, column: 9)
!29 = distinct !DISubprogram(name: "drop<[u32], alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet", scope: !30, file: !27, line: 1913, type: !33, scopeLine: 1913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!30 = !DINamespace(name: "{impl#10}", scope: !31)
!31 = !DINamespace(name: "boxed", scope: !32)
!32 = !DINamespace(name: "alloc", scope: null)
!33 = !DISubroutineType(cc: DW_CC_nocall, types: !12)
!34 = distinct !DILocation(line: 810, column: 1, scope: !35, inlinedAt: !36)
!35 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<[u32], alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxSmEECsfISxE4fmY1Y_14polars_parquet", scope: !9, file: !8, line: 810, type: !33, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!36 = distinct !DILocation(line: 810, column: 1, scope: !37, inlinedAt: !38)
!37 = distinct !DISubprogram(name: "drop_in_place<alloc_stdlib::heap_alloc::WrapBox<u32>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet", scope: !9, file: !8, line: 810, type: !33, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!38 = distinct !DILocation(line: 810, column: 1, scope: !23)
!39 = !DILocation(line: 457, column: 14, scope: !40, inlinedAt: !43)
!40 = distinct !DISubprogram(name: "size_of_val_raw<[u32]>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem15size_of_val_rawSmECsfISxE4fmY1Y_14polars_parquet", scope: !42, file: !41, line: 455, type: !11, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!41 = !DIFile(filename: "library/core/src/mem/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "f117990a17890c376e3a360d512003aa")
!42 = !DINamespace(name: "mem", scope: !10)
!43 = distinct !DILocation(line: 255, column: 43, scope: !44, inlinedAt: !49)
!44 = distinct !DISubprogram(name: "for_value_raw<[u32]>", linkageName: "_RINvMNtNtCscgRAwXFJnXP_4core5alloc6layoutNtB3_6Layout13for_value_rawSmECsfISxE4fmY1Y_14polars_parquet", scope: !46, file: !45, line: 253, type: !11, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!45 = !DIFile(filename: "library/core/src/alloc/layout.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "e9b0fa2b5eccd748fb6b1e11a9156468")
!46 = !DINamespace(name: "Layout", scope: !47)
!47 = !DINamespace(name: "layout", scope: !48)
!48 = !DINamespace(name: "alloc", scope: !10)
!49 = distinct !DILocation(line: 1919, column: 26, scope: !28, inlinedAt: !34)
!50 = !DILocation(line: 128, column: 14, scope: !51, inlinedAt: !54)
!51 = distinct !DISubprogram(name: "dealloc_nonnull", linkageName: "_RNvNtCsgZ49sUHp3tW_5alloc5alloc15dealloc_nonnull", scope: !53, file: !52, line: 127, type: !11, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!52 = !DIFile(filename: "library/alloc/src/alloc.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "860ce4ea2346d0773913a27b0b87ad79")
!53 = !DINamespace(name: "alloc", scope: !32)
!54 = distinct !DILocation(line: 229, column: 22, scope: !55, inlinedAt: !57)
!55 = distinct !DISubprogram(name: "deallocate_impl_runtime", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global23deallocate_impl_runtime", scope: !56, file: !52, line: 219, type: !11, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!56 = !DINamespace(name: "Global", scope: !53)
!57 = distinct !DILocation(line: 344, column: 9, scope: !58, inlinedAt: !59)
!58 = distinct !DISubprogram(name: "deallocate_impl", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global15deallocate_impl", scope: !56, file: !52, line: 343, type: !11, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!59 = distinct !DILocation(line: 462, column: 23, scope: !60, inlinedAt: !62)
!60 = distinct !DISubprogram(name: "deallocate", linkageName: "_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate", scope: !61, file: !52, line: 460, type: !33, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!61 = !DINamespace(name: "{impl#1}", scope: !53)
!62 = distinct !DILocation(line: 1921, column: 24, scope: !26, inlinedAt: !34)
!63 = !DILocation(line: 1920, column: 13, scope: !26, inlinedAt: !34)
!64 = !DILocation(line: 1920, column: 16, scope: !65, inlinedAt: !68)
!65 = distinct !DILexicalBlock(scope: !66, file: !27, line: 1919, column: 13)
!66 = distinct !DILexicalBlock(scope: !67, file: !27, line: 1916, column: 9)
!67 = distinct !DISubprogram(name: "drop<[brotli_decompressor::huffman::HuffmanCode], alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSNtNtCsjPfRcqrlXv6_19brotli_decompressor7huffman11HuffmanCodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet", scope: !30, file: !27, line: 1913, type: !33, scopeLine: 1913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!68 = distinct !DILocation(line: 810, column: 1, scope: !69, inlinedAt: !70)
!69 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<[brotli_decompressor::huffman::HuffmanCode], alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxSNtNtCsjPfRcqrlXv6_19brotli_decompressor7huffman11HuffmanCodeEECsfISxE4fmY1Y_14polars_parquet", scope: !9, file: !8, line: 810, type: !33, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!70 = distinct !DILocation(line: 810, column: 1, scope: !71, inlinedAt: !72)
!71 = distinct !DISubprogram(name: "drop_in_place<alloc_stdlib::heap_alloc::WrapBox<brotli_decompressor::huffman::HuffmanCode>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsjPfRcqrlXv6_19brotli_decompressor7huffman11HuffmanCodeEECsfISxE4fmY1Y_14polars_parquet", scope: !9, file: !8, line: 810, type: !33, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!72 = distinct !DILocation(line: 810, column: 1, scope: !23)
!73 = !DILocation(line: 457, column: 14, scope: !74, inlinedAt: !75)
!74 = distinct !DISubprogram(name: "size_of_val_raw<[brotli_decompressor::huffman::HuffmanCode]>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem15size_of_val_rawSNtNtCsjPfRcqrlXv6_19brotli_decompressor7huffman11HuffmanCodeECsfISxE4fmY1Y_14polars_parquet", scope: !42, file: !41, line: 455, type: !11, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!75 = distinct !DILocation(line: 255, column: 43, scope: !76, inlinedAt: !77)
!76 = distinct !DISubprogram(name: "for_value_raw<[brotli_decompressor::huffman::HuffmanCode]>", linkageName: "_RINvMNtNtCscgRAwXFJnXP_4core5alloc6layoutNtB3_6Layout13for_value_rawSNtNtCsjPfRcqrlXv6_19brotli_decompressor7huffman11HuffmanCodeECsfISxE4fmY1Y_14polars_parquet", scope: !46, file: !45, line: 253, type: !11, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!77 = distinct !DILocation(line: 1919, column: 26, scope: !66, inlinedAt: !68)
!78 = !DILocation(line: 128, column: 14, scope: !51, inlinedAt: !79)
!79 = distinct !DILocation(line: 229, column: 22, scope: !55, inlinedAt: !80)
!80 = distinct !DILocation(line: 344, column: 9, scope: !58, inlinedAt: !81)
!81 = distinct !DILocation(line: 462, column: 23, scope: !60, inlinedAt: !82)
!82 = distinct !DILocation(line: 1921, column: 24, scope: !65, inlinedAt: !68)
!83 = !DILocation(line: 1920, column: 13, scope: !65, inlinedAt: !68)
!84 = distinct !DISubprogram(name: "drop_in_place<polars_parquet_format::parquet_format::Statistics>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format10StatisticsECsfISxE4fmY1Y_14polars_parquet", scope: !9, file: !8, line: 810, type: !11, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!85 = !DILocation(line: 810, column: 1, scope: !84)
!86 = !DILocation(line: 810, column: 1, scope: !7, inlinedAt: !87)
!87 = distinct !DILocation(line: 810, column: 1, scope: !84)
!88 = !{!89}
!89 = distinct !{!89, !90, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!90 = distinct !{!90, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECsfISxE4fmY1Y_14polars_parquet"}
!91 = !DILocation(line: 810, column: 1, scope: !16, inlinedAt: !92)
!92 = distinct !DILocation(line: 810, column: 1, scope: !7, inlinedAt: !87)
!93 = !DILocation(line: 810, column: 1, scope: !19, inlinedAt: !94)
!94 = distinct !DILocation(line: 810, column: 1, scope: !16, inlinedAt: !92)
!95 = !DILocation(line: 810, column: 1, scope: !19, inlinedAt: !96)
!96 = distinct !DILocation(line: 810, column: 1, scope: !16, inlinedAt: !92)
!97 = !DILocation(line: 810, column: 1, scope: !7, inlinedAt: !98)
!98 = distinct !DILocation(line: 810, column: 1, scope: !84)
!99 = !{!100}
!100 = distinct !{!100, !101, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!101 = distinct !{!101, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECsfISxE4fmY1Y_14polars_parquet"}
!102 = !DILocation(line: 810, column: 1, scope: !16, inlinedAt: !103)
!103 = distinct !DILocation(line: 810, column: 1, scope: !7, inlinedAt: !98)
!104 = !DILocation(line: 810, column: 1, scope: !19, inlinedAt: !105)
!105 = distinct !DILocation(line: 810, column: 1, scope: !16, inlinedAt: !103)
!106 = !DILocation(line: 810, column: 1, scope: !19, inlinedAt: !107)
!107 = distinct !DILocation(line: 810, column: 1, scope: !16, inlinedAt: !103)
!108 = !DILocation(line: 810, column: 1, scope: !7, inlinedAt: !109)
!109 = distinct !DILocation(line: 810, column: 1, scope: !84)
!110 = !{!111}
!111 = distinct !{!111, !112, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!112 = distinct !{!112, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECsfISxE4fmY1Y_14polars_parquet"}
!113 = !DILocation(line: 810, column: 1, scope: !16, inlinedAt: !114)
!114 = distinct !DILocation(line: 810, column: 1, scope: !7, inlinedAt: !109)
!115 = !DILocation(line: 810, column: 1, scope: !19, inlinedAt: !116)
!116 = distinct !DILocation(line: 810, column: 1, scope: !16, inlinedAt: !114)
!117 = !DILocation(line: 810, column: 1, scope: !19, inlinedAt: !118)
!118 = distinct !DILocation(line: 810, column: 1, scope: !16, inlinedAt: !114)
!119 = !DILocation(line: 810, column: 1, scope: !7, inlinedAt: !120)
!120 = distinct !DILocation(line: 810, column: 1, scope: !84)
!121 = !{!122}
!122 = distinct !{!122, !123, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!123 = distinct !{!123, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECsfISxE4fmY1Y_14polars_parquet"}
!124 = !DILocation(line: 810, column: 1, scope: !16, inlinedAt: !125)
!125 = distinct !DILocation(line: 810, column: 1, scope: !7, inlinedAt: !120)
!126 = !DILocation(line: 810, column: 1, scope: !19, inlinedAt: !127)
!127 = distinct !DILocation(line: 810, column: 1, scope: !16, inlinedAt: !125)
!128 = !DILocation(line: 810, column: 1, scope: !19, inlinedAt: !129)
!129 = distinct !DILocation(line: 810, column: 1, scope: !16, inlinedAt: !125)
!130 = distinct !DISubprogram(name: "drop_in_place<polars_parquet::parquet::statistics::Statistics>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsEBM_", scope: !9, file: !8, line: 810, type: !11, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!131 = !DILocation(line: 810, column: 1, scope: !130)
!132 = !{i64 0, i64 8}
!133 = !DILocation(line: 612, column: 33, scope: !134, inlinedAt: !139)
!134 = distinct !DISubprogram(name: "last_byte", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr9last_byte", scope: !136, file: !135, line: 609, type: !11, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!135 = !DIFile(filename: "src/repr/mod.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/compact_str-0.9.1", checksumkind: CSK_MD5, checksum: "75dfb465d6c97cf0f66f252751410a59")
!136 = !DINamespace(name: "Repr", scope: !137)
!137 = !DINamespace(name: "repr", scope: !138)
!138 = !DINamespace(name: "compact_str", scope: null)
!139 = distinct !DILocation(line: 447, column: 30, scope: !140, inlinedAt: !141)
!140 = distinct !DISubprogram(name: "is_heap_allocated", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr17is_heap_allocated", scope: !136, file: !135, line: 446, type: !11, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!141 = distinct !DILocation(line: 779, column: 17, scope: !142, inlinedAt: !144)
!142 = distinct !DISubprogram(name: "drop", linkageName: "_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop", scope: !143, file: !135, line: 776, type: !11, scopeLine: 776, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!143 = !DINamespace(name: "{impl#4}", scope: !137)
!144 = distinct !DILocation(line: 810, column: 1, scope: !145, inlinedAt: !146)
!145 = distinct !DISubprogram(name: "drop_in_place<compact_str::repr::Repr>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECsfISxE4fmY1Y_14polars_parquet", scope: !9, file: !8, line: 810, type: !11, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!146 = distinct !DILocation(line: 810, column: 1, scope: !147, inlinedAt: !148)
!147 = distinct !DISubprogram(name: "drop_in_place<compact_str::CompactString>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECsfISxE4fmY1Y_14polars_parquet", scope: !9, file: !8, line: 810, type: !11, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!148 = distinct !DILocation(line: 810, column: 1, scope: !149, inlinedAt: !150)
!149 = distinct !DISubprogram(name: "drop_in_place<polars_utils::pl_str::PlSmallStr>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfISxE4fmY1Y_14polars_parquet", scope: !9, file: !8, line: 810, type: !11, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!150 = distinct !DILocation(line: 810, column: 1, scope: !151, inlinedAt: !152)
!151 = distinct !DISubprogram(name: "drop_in_place<polars_parquet::parquet::schema::types::basic_type::FieldInfo>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types10basic_type9FieldInfoEBQ_", scope: !9, file: !8, line: 810, type: !11, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!152 = distinct !DILocation(line: 810, column: 1, scope: !153, inlinedAt: !154)
!153 = distinct !DISubprogram(name: "drop_in_place<polars_parquet::parquet::schema::types::parquet_type::PrimitiveType>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type13PrimitiveTypeEBQ_", scope: !9, file: !8, line: 810, type: !11, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!154 = distinct !DILocation(line: 810, column: 1, scope: !155, inlinedAt: !156)
!155 = distinct !DISubprogram(name: "drop_in_place<polars_parquet::parquet::statistics::primitive::PrimitiveStatistics<f64>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics9primitive19PrimitiveStatisticsdEEBP_", scope: !9, file: !8, line: 810, type: !11, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!156 = distinct !DILocation(line: 810, column: 1, scope: !130)
!157 = !{i8 0, i8 -38}
!158 = !{!159, !161, !163, !165, !167, !169, !171}
!159 = distinct !{!159, !160, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop: argument 0"}
!160 = distinct !{!160, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop"}
!161 = distinct !{!161, !162, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!162 = distinct !{!162, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECsfISxE4fmY1Y_14polars_parquet"}
!163 = distinct !{!163, !164, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!164 = distinct !{!164, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECsfISxE4fmY1Y_14polars_parquet"}
!165 = distinct !{!165, !166, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!166 = distinct !{!166, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfISxE4fmY1Y_14polars_parquet"}
!167 = distinct !{!167, !168, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types10basic_type9FieldInfoEBQ_: argument 0"}
!168 = distinct !{!168, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types10basic_type9FieldInfoEBQ_"}
!169 = distinct !{!169, !170, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type13PrimitiveTypeEBQ_: argument 0"}
!170 = distinct !{!170, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type13PrimitiveTypeEBQ_"}
end_hunk_1

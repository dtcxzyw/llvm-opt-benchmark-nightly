Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.07?download=true
inline.NumInlined: 1744
inline.NumDeleted: 145
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode24DecodeBlockTypeAndLengthNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet:bb.a
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !5413
  %.idx = shl nuw nsw i64 %i.c, 3, !dbg !5414
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.idx, !dbg !5414 ; 4 uses
  switch i32 %i.eo, label %bb.ag [
    i32 1, label %bb.ae
    i32 0, label %bb.ah
  ], !dbg !5415

bb.ae:                                            ; preds = %bb.ad
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4, !dbg !5416
  %i.es = load i32, ptr %i.er, align 4, !dbg !5416, !noundef !107
  %i.et = add i32 %i.es, 1, !dbg !5417
  br label %bb.af, !dbg !5418

bb.af:                                            ; preds = %bb.ag, %bb.ah, %bb.ae
  %i.eu = phi i32 [ %i.ey, %bb.ag ], [ %i.ez, %bb.ah ], [ %i.et, %bb.ae ], !dbg !5419 ; 2 uses
  %.not = icmp ult i32 %i.eu, %i.f, !dbg !5420
  %i.ev = select i1 %.not, i32 0, i32 %i.f, !dbg !5420
  %spec.select = sub nuw i32 %i.eu, %i.ev, !dbg !5420
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 4, !dbg !5416 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !dbg !5416, !noundef !107
  store i32 %i.ex, ptr %i.eq, align 8, !dbg !5421
  store i32 %spec.select, ptr %i.ew, align 4, !dbg !5422
  br label %bb.ai, !dbg !5423

bb.ag:                                            ; preds = %bb.ad
  %i.ey = add i32 %i.eo, -2, !dbg !5424
  br label %bb.af, !dbg !5425

bb.ah:                                            ; preds = %bb.ad
  %i.ez = load i32, ptr %i.eq, align 8, !dbg !5416, !noundef !107
  br label %bb.af, !dbg !5425

bb.ai:                                            ; preds = %_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode28SafeReadBlockLengthFromIndexNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit.thread, %bb.a, %bb.r, %bb.af
  %.sroa.0.1 = phi i1 [ true, %bb.af ], [ false, %bb.r ], [ false, %bb.a ], [ false, %_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode28SafeReadBlockLengthFromIndexNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit.thread ], !dbg !5426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5427
  ret i1 %.sroa.0.1, !dbg !5423
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode28SafeReadBlockLengthFromIndexNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2, i1 noundef zeroext %3, i32 noundef %4, ptr noalias noundef nonnull readonly captures(none) %5, i64 noundef range(i64 0, -9223372036854775808) %6) unnamed_addr #0 !dbg !80 {
bb.a:
  br i1 %3, label %bb.b, label %bb.c, !dbg !5445

bb.b:                                             ; preds = %bb.a
  %i.a = zext i32 %4 to i64, !dbg !5446           ; 2 uses
  %i.b = icmp ult i32 %4, 26, !dbg !5447
  br i1 %i.b, label %bb.d, label %bb.i, !dbg !5447

.sink.split:                                      ; preds = %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit, %._crit_edge.i
  %.sink = phi i8 [ 0, %._crit_edge.i ], [ 1, %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit ]
  %.sroa.0.0.ph = phi i1 [ true, %._crit_edge.i ], [ false, %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84, !dbg !5448
  store i8 %.sink, ptr %i.c, align 4, !dbg !5448
  br label %bb.c, !dbg !5449

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %.sroa.0.0.ph, %.sink.split ], !dbg !5450
  ret i1 %.sroa.0.0, !dbg !5449

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @82, i64 %i.a, !dbg !5451 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2, !dbg !5452
  %i.f = load i8, ptr %i.e, align 2, !dbg !5452, !noundef !107 ; 2 uses
  %i.g = zext i8 %i.f to i32, !dbg !5453          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5439), !dbg !5454
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5440), !dbg !5454
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.promoted.i = load i32, ptr %i.h, align 8, !alias.scope !5439, !noalias !5441 ; 3 uses
  %i.i = sub i32 64, %.promoted.i, !dbg !5455
  %.not.i = icmp ult i32 %i.i, %i.g, !dbg !5456
  %.promoted14.i = load i64, ptr %1, align 8, !alias.scope !5439, !noalias !5441 ; 2 uses
  br i1 %.not.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !5456

.lr.ph.i:                                         ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.promoted17.i = load i32, ptr %i.j, align 8, !alias.scope !5439, !noalias !5441
  %.promoted18.i = load i32, ptr %i.k, align 4, !alias.scope !5439, !noalias !5441
  br label %bb.e, !dbg !5456

bb.e:                                             ; preds = %bb.g, %.lr.ph.i
  %i.l = phi i32 [ %.promoted18.i, %.lr.ph.i ], [ %i.aa, %bb.g ] ; 2 uses
  %i.m = phi i32 [ %.promoted17.i, %.lr.ph.i ], [ %i.z, %bb.g ] ; 2 uses
  %i.n = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %i.y, %bb.g ] ; 2 uses
  %i.o = phi i64 [ %.promoted14.i, %.lr.ph.i ], [ %i.x, %bb.g ]
  %i.p = icmp eq i32 %i.m, 0, !dbg !5457
  br i1 %i.p, label %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit, label %bb.f, !dbg !5457

bb.f:                                             ; preds = %bb.e
  %i.q = lshr i64 %i.o, 8, !dbg !5458             ; 2 uses
  store i64 %i.q, ptr %1, align 8, !dbg !5458, !alias.scope !5439, !noalias !5441
  %i.r = zext i32 %i.l to i64, !dbg !5459         ; 3 uses
  %i.s = icmp samesign ugt i64 %6, %i.r, !dbg !5460
  br i1 %i.s, label %bb.g, label %bb.h, !dbg !5460

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 %i.r, !dbg !5460
  %i.u = load i8, ptr %i.t, align 1, !dbg !5460, !alias.scope !5440, !noalias !5442, !noundef !107
  %i.v = zext i8 %i.u to i64, !dbg !5461
  %i.w = shl nuw i64 %i.v, 56, !dbg !5461
  %i.x = or disjoint i64 %i.w, %i.q, !dbg !5462   ; 3 uses
  store i64 %i.x, ptr %1, align 8, !dbg !5462, !alias.scope !5439, !noalias !5441
  %i.y = add i32 %i.n, -8, !dbg !5463             ; 3 uses
  store i32 %i.y, ptr %i.h, align 8, !dbg !5463, !alias.scope !5439, !noalias !5441
  %i.z = add i32 %i.m, -1, !dbg !5464             ; 2 uses
  store i32 %i.z, ptr %i.j, align 8, !dbg !5464, !alias.scope !5439, !noalias !5441
  %i.aa = add i32 %i.l, 1, !dbg !5465             ; 2 uses
  store i32 %i.aa, ptr %i.k, align 4, !dbg !5465, !alias.scope !5439, !noalias !5441
  %i.ab = sub i32 72, %i.n, !dbg !5455
  %.not19.i = icmp ult i32 %i.ab, %i.g, !dbg !5456
  br i1 %.not19.i, label %bb.e, label %._crit_edge.i, !dbg !5456

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef range(i64 0, -9223372036854775808) %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #20, !dbg !5460, !noalias !5443
  unreachable, !dbg !5460

bb.i:                                             ; preds = %bb.b
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef 26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #20, !dbg !5447
  unreachable, !dbg !5447

_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 68, !dbg !5466
  store i32 %4, ptr %i.ac, align 4, !dbg !5466
  br label %.sink.split, !dbg !5467

._crit_edge.i:                                    ; preds = %bb.g, %bb.d
  %i.ad = phi i64 [ %.promoted14.i, %bb.d ], [ %i.x, %bb.g ], !dbg !5468
  %.lcssa7.i = phi i32 [ %.promoted.i, %bb.d ], [ %i.y, %bb.g ], !dbg !5469 ; 2 uses
  %i.ae = zext i8 %i.f to i64, !dbg !5470
  %i.af = and i32 %.lcssa7.i, 63, !dbg !5468
  %i.ag = zext nneg i32 %i.af to i64, !dbg !5468
  %i.ah = lshr i64 %i.ad, %i.ag, !dbg !5468
  %i.ai = trunc i64 %i.ah to i32, !dbg !5471
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @23, i64 %i.ae, !dbg !5472
  %i.ak = load i32, ptr %i.aj, align 4, !dbg !5472, !noalias !5443, !noundef !107
  %i.al = and i32 %i.ak, %i.ai, !dbg !5473
  %i.am = add i32 %.lcssa7.i, %i.g, !dbg !5474
  store i32 %i.am, ptr %i.h, align 8, !dbg !5474, !alias.scope !5439, !noalias !5441
  %i.an = load i16, ptr %i.d, align 2, !dbg !5475, !noundef !107
  %i.ao = zext i16 %i.an to i32, !dbg !5475
  %i.ap = add i32 %i.al, %i.ao, !dbg !5476
  store i32 %i.ap, ptr %2, align 4, !dbg !5476
  br label %.sink.split, !dbg !5449
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i32 -31, 4) i32 @_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode29CopyUncompressedBlockToOutputNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB1f_B1f_ECsfISxE4fmY1Y_14polars_parquet(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %4, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(2600) %5, ptr noalias noundef nonnull readonly captures(none) %6, i64 noundef range(i64 0, -9223372036854775808) %7) unnamed_addr #0 !dbg !5477 {
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
  %.pre = load i8, ptr %i.b, align 8, !dbg !5538, !range !136
  br label %bb.b, !dbg !5539

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.n = phi i8 [ %storemerge, %.backedge ], [ %.pre, %bb.a ], !dbg !5538
  %i.o = trunc nuw i8 %i.n to i1, !dbg !5538
  br i1 %i.o, label %bb.c, label %bb.d, !dbg !5540

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5541
  call fastcc void @_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode15WriteRingBufferNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB11_B11_ECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef %1, i64 %2, ptr noalias noundef align 8 dereferenceable(8) %3, ptr noalias noundef align 8 dereferenceable(8) %4, i1 noundef zeroext false, ptr noalias noundef align 8 dereferenceable(2600) %5), !dbg !5541
  %i.p = load i32, ptr %i.a, align 8, !dbg !5542, !range !196, !noundef !107 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5543
  %i.q = icmp eq i32 %i.p, 1, !dbg !5544
  br i1 %i.q, label %bb.n, label %.loopexit, !dbg !5544

bb.d:                                             ; preds = %bb.b
  %i.r = load i32, ptr %i.d, align 8, !dbg !5545, !noundef !107 ; 2 uses
  %i.s = load i32, ptr %i.e, align 8, !dbg !5546, !noundef !107 ; 6 uses
  %i.t = sub i32 64, %i.s, !dbg !5547
  %i.u = lshr i32 %i.t, 3, !dbg !5548
  %i.v = add i32 %i.u, %i.r, !dbg !5545
  %i.w = load i32, ptr %i.f, align 8, !dbg !5549, !noundef !107 ; 3 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %i.w), !dbg !5550 ; 2 uses
  %i.x = load i32, ptr %i.g, align 8, !dbg !5551, !noundef !107 ; 5 uses
  %i.y = add i32 %spec.select, %i.x, !dbg !5551   ; 2 uses
  %i.z = load i32, ptr %i.h, align 8, !dbg !5552, !noundef !107 ; 3 uses
  %i.aa = icmp sgt i32 %i.y, %i.z, !dbg !5553
  %i.ab = sub i32 %i.z, %i.x, !dbg !5553
  %.sroa.02.1 = select i1 %i.aa, i32 %i.ab, i32 %spec.select, !dbg !5553 ; 7 uses
  %.val12 = load i64, ptr %i.i, align 8, !dbg !5554, !noundef !107 ; 4 uses
  %i.ac = sext i32 %i.x to i64, !dbg !5555        ; 4 uses
  %i.ad = icmp ult i64 %.val12, %i.ac, !dbg !5556
  br i1 %i.ad, label %bb.l, label %bb.e, !dbg !5556, !prof !132

bb.e:                                             ; preds = %bb.d
  %.val = load ptr, ptr %i.j, align 8, !dbg !5554, !nonnull !107, !noundef !107
  %i.ae = sub nuw i64 %.val12, %i.ac, !dbg !5557  ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ac, !dbg !5558 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5521), !dbg !5559
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5522), !dbg !5559
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5523), !dbg !5559
  %notsub24.i = add i32 %i.s, -65, !dbg !5560
  %i.ag = icmp ult i32 %notsub24.i, -8, !dbg !5560
  %i.ah = icmp ne i32 %.sroa.02.1, 0
  %or.cond25.i = and i1 %i.ah, %i.ag, !dbg !5560
  br i1 %or.cond25.i, label %.lr.ph.i, label %.preheader.i, !dbg !5560

.lr.ph.i:                                         ; preds = %bb.e
  %i.ai = load i64, ptr %i.c, align 8, !alias.scope !5522, !noalias !5524 ; 2 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %i.ae, i64 0), !dbg !5560 ; 3 uses
  %i.aj = sub i32 56, %i.s, !dbg !5560
  %i.ak = lshr i32 %i.aj, 3, !dbg !5560
  %i.al = zext nneg i32 %i.ak to i64, !dbg !5560
  %i.am = tail call i32 @llvm.smin.i32(i32 %i.z, i32 %i.y), !dbg !5560
  %i.an = xor i32 %i.x, -1, !dbg !5560
  %i.ao = add i32 %i.am, %i.an, !dbg !5560
  %i.ap = zext i32 %i.ao to i64, !dbg !5560
  %i.aq = tail call i64 @llvm.umin.i64(i64 %smax, i64 %i.al), !dbg !5560
  %i.ar = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 %i.ap), !dbg !5560 ; 2 uses
  %min.iters.check131 = icmp samesign ult i64 %i.ar, 4, !dbg !5560
  br i1 %min.iters.check131, label %scalar.ph130.preheader, label %vector.ph132, !dbg !5560

vector.ph132:                                     ; preds = %.lr.ph.i
  %i.as = add nuw nsw i64 %i.ar, 1, !dbg !5560    ; 2 uses
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
  br label %vector.body136, !dbg !5560

vector.body136:                                   ; preds = %vector.body136, %vector.ph132
  %index137 = phi i64 [ 0, %vector.ph132 ], [ %index.next138, %vector.body136 ], !dbg !5561 ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph132 ], [ %vec.ind.next, %vector.body136 ] ; 3 uses
  %i.ba = and <4 x i32> %vec.ind, splat (i32 63), !dbg !5562
  %i.bb = zext nneg <4 x i32> %i.ba to <4 x i64>, !dbg !5562
  %i.bc = lshr <4 x i64> %broadcast.splat, %i.bb, !dbg !5562
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 %index137, !dbg !5563
  %i.be = trunc <4 x i64> %i.bc to <4 x i8>, !dbg !5563
  store <4 x i8> %i.be, ptr %i.bd, align 1, !dbg !5563, !alias.scope !5521, !noalias !5525
  %index.next138 = add nuw i64 %index137, 4, !dbg !5561 ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 32)
  %i.bf = icmp eq i64 %index.next138, %n.vec133, !dbg !5560
  br i1 %i.bf, label %middle.block139, label %vector.body136, !dbg !5560, !llvm.loop !5496

middle.block139:                                  ; preds = %vector.body136
  %i.bg = extractelement <4 x i32> %vec.ind, i64 3
  %i.bh = add i32 %i.bg, 8
  store i32 %i.bh, ptr %i.e, align 8, !dbg !5564, !alias.scope !5522, !noalias !5524
  br label %scalar.ph130.preheader, !dbg !5560

scalar.ph130.preheader:                           ; preds = %.lr.ph.i, %middle.block139
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec133, %middle.block139 ]
  %.sroa.0.027.i.ph = phi i32 [ %.sroa.02.1, %.lr.ph.i ], [ %i.ax, %middle.block139 ]
  %.ph = phi i32 [ %i.s, %.lr.ph.i ], [ %i.az, %middle.block139 ]
  br label %scalar.ph130, !dbg !5565

.preheader.i:                                     ; preds = %bb.j, %bb.e
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.e ], [ %indvars.iv.next.i, %bb.j ], !dbg !5566 ; 3 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.02.1, %bb.e ], [ %i.cg, %bb.j ] ; 4 uses
  %.not.i = icmp eq i32 %.sroa.0.0.lcssa.i, 0, !dbg !5567
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !alias.scope !5522, !noalias !5524 ; 2 uses
  br i1 %.not.i, label %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader15BrotliCopyBytes.exit, label %.lr.ph30.i, !dbg !5568

.lr.ph30.i:                                       ; preds = %.preheader.i
  %i.bi = zext i32 %.pre.i to i64                 ; 3 uses
  %i.bj = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %7, i64 %i.bi), !dbg !5568 ; 2 uses
  %i.bk = tail call i64 @llvm.usub.sat.i64(i64 %i.ae, i64 %.sroa.06.0.lcssa.i), !dbg !5568 ; 2 uses
  %wide.trip.count.i = zext i32 %.sroa.0.0.lcssa.i to i64, !dbg !5567 ; 2 uses
  %i.bl = add nsw i64 %wide.trip.count.i, -1, !dbg !5568
  %i.bm = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 %i.bl), !dbg !5568
  %i.bn = freeze i64 %i.bm, !dbg !5568
  %i.bo = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 %i.bj), !dbg !5568 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bo, 16, !dbg !5568
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !5568

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph30.i
  %indvars.iv40.i.ph = phi i64 [ 0, %.lr.ph30.i ], [ %n.vec, %vector.body ]
  br label %scalar.ph, !dbg !5569

vector.ph:                                        ; preds = %.lr.ph30.i
  %i.bp = add nuw i64 %i.bo, 1, !dbg !5568        ; 2 uses
  %i.bq = and i64 %i.bp, 15                       ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  %i.bs = select i1 %i.br, i64 16, i64 %i.bq
  %n.vec = sub i64 %i.bp, %i.bs                   ; 2 uses
  %invariant.gep = getelementptr i8, ptr %6, i64 %i.bi, !dbg !5568
  %invariant.gep199 = getelementptr i8, ptr %i.af, i64 %.sroa.06.0.lcssa.i, !dbg !5568
  br label %vector.body, !dbg !5568

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !5570 ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index, !dbg !5569
  %wide.load = load <16 x i8>, ptr %gep, align 1, !dbg !5569, !alias.scope !5523, !noalias !5536
  %gep200 = getelementptr i8, ptr %invariant.gep199, i64 %index, !dbg !5571
  store <16 x i8> %wide.load, ptr %gep200, align 1, !dbg !5571, !alias.scope !5521, !noalias !5525
  %index.next = add nuw i64 %index, 16, !dbg !5570 ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec, !dbg !5568
  br i1 %i.bt, label %scalar.ph.preheader, label %vector.body, !dbg !5568, !llvm.loop !5512

scalar.ph130:                                     ; preds = %scalar.ph130.preheader, %bb.j
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.j ], [ %indvars.iv.i.ph, %scalar.ph130.preheader ] ; 3 uses
  %.sroa.0.027.i = phi i32 [ %i.cg, %bb.j ], [ %.sroa.0.027.i.ph, %scalar.ph130.preheader ]
  %i.bu = phi i32 [ %i.cf, %bb.j ], [ %.ph, %scalar.ph130.preheader ] ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv.i, %smax, !dbg !5565
  br i1 %exitcond.not, label %bb.k, label %bb.j, !dbg !5565

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.h
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %bb.h ], [ %indvars.iv40.i.ph, %scalar.ph.preheader ] ; 5 uses
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1, !dbg !5570 ; 2 uses
  %i.bv = add nuw nsw i64 %indvars.iv40.i, %i.bi, !dbg !5572 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv40.i, %i.bj, !dbg !5569
  br i1 %exitcond.not.i, label %bb.g, label %bb.f, !dbg !5569

bb.f:                                             ; preds = %scalar.ph
  %i.bw = add nuw nsw i64 %indvars.iv40.i, %.sroa.06.0.lcssa.i, !dbg !5573 ; 2 uses
  %exitcond44.not.i = icmp eq i64 %indvars.iv40.i, %i.bk, !dbg !5574
  br i1 %exitcond44.not.i, label %bb.i, label %bb.h, !dbg !5574

bb.g:                                             ; preds = %scalar.ph
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bv, i64 noundef range(i64 0, -9223372036854775808) %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #20, !dbg !5569, !noalias !5537
  unreachable, !dbg !5569

bb.h:                                             ; preds = %bb.f
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 %i.bv, !dbg !5569
  %i.by = load i8, ptr %i.bx, align 1, !dbg !5569, !alias.scope !5523, !noalias !5536, !noundef !107
  %i.bz = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bw, !dbg !5571
  store i8 %i.by, ptr %i.bz, align 1, !dbg !5571, !alias.scope !5521, !noalias !5525
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next41.i, %wide.trip.count.i, !dbg !5567
  br i1 %exitcond45.not.i, label %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader15BrotliCopyBytes.exit, label %scalar.ph, !dbg !5568, !llvm.loop !5513

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bw, i64 noundef range(i64 0, -9223372036854775808) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @113) #20, !dbg !5574, !noalias !5537
  unreachable, !dbg !5574

bb.j:                                             ; preds = %scalar.ph130
  %i.ca = and i32 %i.bu, 63, !dbg !5562
  %i.cb = zext nneg i32 %i.ca to i64, !dbg !5562
  %i.cc = lshr i64 %i.ai, %i.cb, !dbg !5562
  %i.cd = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv.i, !dbg !5563
  %i.ce = trunc i64 %i.cc to i8, !dbg !5563
  store i8 %i.ce, ptr %i.cd, align 1, !dbg !5563, !alias.scope !5521, !noalias !5525
  %i.cf = add i32 %i.bu, 8, !dbg !5564            ; 2 uses
  store i32 %i.cf, ptr %i.e, align 8, !dbg !5564, !alias.scope !5522, !noalias !5524
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !5561 ; 2 uses
  %i.cg = add i32 %.sroa.0.027.i, -1, !dbg !5575  ; 3 uses
  %notsub.i = add i32 %i.bu, -57, !dbg !5560
  %i.ch = icmp ult i32 %notsub.i, -8, !dbg !5560
  %i.ci = icmp ne i32 %i.cg, 0
  %or.cond.i = select i1 %i.ch, i1 %i.ci, i1 false, !dbg !5560
  br i1 %or.cond.i, label %scalar.ph130, label %.preheader.i, !dbg !5560, !llvm.loop !5514

bb.k:                                             ; preds = %scalar.ph130
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %smax, i64 noundef range(i64 0, -9223372036854775808) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114) #20, !dbg !5565, !noalias !5537
  unreachable, !dbg !5565

_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader15BrotliCopyBytes.exit: ; preds = %bb.h, %.preheader.i
  %i.cj = sub i32 %i.r, %.sroa.0.0.lcssa.i, !dbg !5576
  store i32 %i.cj, ptr %i.d, align 8, !dbg !5576, !alias.scope !5522, !noalias !5524
  %i.ck = add i32 %.pre.i, %.sroa.0.0.lcssa.i, !dbg !5577
  store i32 %i.ck, ptr %.phi.trans.insert.i, align 4, !dbg !5577, !alias.scope !5522, !noalias !5524
  %i.cl = add i32 %.sroa.02.1, %i.x, !dbg !5578   ; 2 uses
  store i32 %i.cl, ptr %i.g, align 8, !dbg !5578
  %i.cm = sub i32 %i.w, %.sroa.02.1, !dbg !5579
  store i32 %i.cm, ptr %i.f, align 8, !dbg !5579
  %i.cn = load i32, ptr %i.k, align 8, !dbg !5580, !noundef !107
  %i.co = and i32 %i.cn, 31, !dbg !5581
  %i.cp = shl nuw i32 1, %i.co, !dbg !5581
  %i.cq = icmp slt i32 %i.cl, %i.cp, !dbg !5582
  br i1 %i.cq, label %bb.m, label %.backedge, !dbg !5582

bb.l:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ac, i64 noundef %.val12, i64 noundef %.val12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #20, !dbg !5583
  unreachable, !dbg !5583

.backedge:                                        ; preds = %bb.o, %bb.n, %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader15BrotliCopyBytes.exit
  %storemerge = phi i8 [ 1, %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader15BrotliCopyBytes.exit ], [ 0, %bb.n ], [ 0, %bb.o ], !dbg !5584 ; 2 uses
  store i8 %storemerge, ptr %i.b, align 8, !dbg !5584
  br label %bb.b, !dbg !5538

bb.m:                                             ; preds = %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader15BrotliCopyBytes.exit
  %i.cr = icmp eq i32 %i.w, %.sroa.02.1, !dbg !5585
  %. = select i1 %i.cr, i32 1, i32 2, !dbg !5586
  br label %.loopexit, !dbg !5586

.loopexit:                                        ; preds = %bb.c, %bb.m
  %.sroa.0.0 = phi i32 [ %., %bb.m ], [ %i.p, %bb.c ], !dbg !5584
  ret i32 %.sroa.0.0, !dbg !5587

bb.n:                                             ; preds = %bb.c
  %i.cs = load i32, ptr %i.h, align 8, !dbg !5588, !noundef !107
  %i.ct = load i32, ptr %i.k, align 8, !dbg !5589, !noundef !107
  %i.cu = and i32 %i.ct, 31, !dbg !5590
  %i.cv = shl nuw i32 1, %i.cu, !dbg !5590
  %i.cw = icmp eq i32 %i.cs, %i.cv, !dbg !5588
  br i1 %i.cw, label %bb.o, label %.backedge, !dbg !5588

bb.o:                                             ; preds = %bb.n
  %i.cx = load i32, ptr %i.l, align 4, !dbg !5591, !noundef !107
  store i32 %i.cx, ptr %i.m, align 4, !dbg !5592
  br label %.backedge, !dbg !5593
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode32DecodeLiteralBlockSwitchInternalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB1i_B1i_ECsfISxE4fmY1Y_14polars_parquet(i1 noundef zeroext %0, ptr noalias noundef nonnull align 8 dereferenceable(2600) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 !dbg !5594 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2080, !dbg !5599
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1872, !dbg !5600
  %i.c = tail call fastcc noundef zeroext i1 @_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode24DecodeBlockTypeAndLengthNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(i1 noundef zeroext %0, ptr noalias noundef align 8 dereferenceable(88) %i.a, ptr noalias noundef align 8 dereferenceable(24) %i.b, i32 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !5601 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.h, !dbg !5601

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5598), !dbg !5602
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2116, !dbg !5603
  %i.e = load i32, ptr %i.d, align 4, !dbg !5603, !alias.scope !5598, !noundef !107 ; 4 uses
  %i.f = zext i32 %i.e to i64, !dbg !5604         ; 4 uses
  %i.g = shl i32 %i.e, 6, !dbg !5605
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1904, !dbg !5606
  %i.i = zext i32 %i.g to i64, !dbg !5606         ; 4 uses
  store i64 %i.i, ptr %i.h, align 8, !dbg !5606, !alias.scope !5598
  %i.j = lshr i64 %i.f, 5, !dbg !5607             ; 2 uses
  %i.k = icmp ult i32 %i.e, 256, !dbg !5608
  br i1 %i.k, label %bb.c, label %bb.d, !dbg !5608

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1728, !dbg !5608
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.j, !dbg !5608
  %i.n = load i32, ptr %i.m, align 4, !dbg !5608, !alias.scope !5598, !noundef !107
  %i.o = and i32 %i.e, 31, !dbg !5609
  %i.p = lshr i32 %i.n, %i.o, !dbg !5610
  %i.q = and i32 %i.p, 1, !dbg !5611
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2208, !dbg !5612
  store i32 %i.q, ptr %i.r, align 8, !dbg !5612, !alias.scope !5598
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1848, !dbg !5613
  %.val9.i = load i64, ptr %i.s, align 8, !dbg !5613, !alias.scope !5598, !noundef !107 ; 2 uses
  %i.t = icmp ugt i64 %.val9.i, %i.i, !dbg !5614
  br i1 %i.t, label %bb.e, label %bb.f, !dbg !5614

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #20, !dbg !5608, !noalias !5598
  unreachable, !dbg !5608

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1840, !dbg !5615
  %.val8.i = load ptr, ptr %i.u, align 8, !dbg !5613, !alias.scope !5598, !nonnull !107, !noundef !107
  %i.v = getelementptr inbounds nuw i8, ptr %.val8.i, i64 %i.i, !dbg !5614
  %i.w = load i8, ptr %i.v, align 1, !dbg !5614, !noalias !5598, !noundef !107
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 2320, !dbg !5616
  store i8 %i.w, ptr %i.x, align 8, !dbg !5616, !alias.scope !5598
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 1864, !dbg !5617
  %.val7.i = load i64, ptr %i.y, align 8, !dbg !5617, !alias.scope !5598, !noundef !107 ; 2 uses
  %i.z = icmp ugt i64 %.val7.i, %i.f, !dbg !5614
  br i1 %i.z, label %_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode22PrepareLiteralDecodingNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.g, !dbg !5614

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %.val9.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #20, !dbg !5614, !noalias !5598
  unreachable, !dbg !5614

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.f, i64 noundef %.val7.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #20, !dbg !5614, !noalias !5598
  unreachable, !dbg !5614

_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode22PrepareLiteralDecodingNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1856, !dbg !5618
  %.val.i = load ptr, ptr %i.aa, align 8, !dbg !5617, !alias.scope !5598, !nonnull !107, !noundef !107
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.f, !dbg !5614
  %i.ac = load i8, ptr %i.ab, align 1, !dbg !5614, !noalias !5598, !noundef !107
  %i.ad = and i8 %i.ac, 3, !dbg !5619
  %i.ae = zext nneg i8 %i.ad to i64, !dbg !5620
  %i.af = getelementptr inbounds nuw [512 x i8], ptr @_RNvNtCsjPfRcqrlXv6_19brotli_decompressor7context14kContextLookup, i64 %i.ae, !dbg !5621
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 2072, !dbg !5622
  store ptr %i.af, ptr %i.ag, align 8, !dbg !5622, !alias.scope !5598
  br label %bb.h, !dbg !5623

bb.h:                                             ; preds = %bb.a, %_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode22PrepareLiteralDecodingNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsfISxE4fmY1Y_14polars_parquet.exit
  ret i1 %i.c, !dbg !5623
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode33DecodeDistanceBlockSwitchInternalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB1j_B1j_ECsfISxE4fmY1Y_14polars_parquet(i1 noundef zeroext %0, ptr noalias noundef nonnull align 8 dereferenceable(2600) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 !dbg !5624 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2080, !dbg !5626
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1872, !dbg !5627
  %i.c = tail call fastcc noundef zeroext i1 @_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode24DecodeBlockTypeAndLengthNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(i1 noundef zeroext %0, ptr noalias noundef align 8 dereferenceable(88) %i.a, ptr noalias noundef align 8 dereferenceable(24) %i.b, i32 noundef 2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !5628 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !5628

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2132, !dbg !5629
  %i.e = load i32, ptr %i.d, align 4, !dbg !5629, !noundef !107
  %i.f = shl i32 %i.e, 2, !dbg !5630
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1912, !dbg !5631
  %i.h = zext i32 %i.f to i64, !dbg !5631         ; 2 uses
  store i64 %i.h, ptr %i.g, align 8, !dbg !5631
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1800, !dbg !5632
  %.val2 = load i64, ptr %i.i, align 8, !dbg !5632, !noundef !107 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2212, !dbg !5633
  %i.k = load i32, ptr %i.j, align 4, !dbg !5633, !noundef !107
  %i.l = sext i32 %i.k to i64, !dbg !5633
  %i.m = add nsw i64 %i.l, %i.h, !dbg !5634       ; 3 uses
  %i.n = icmp ult i64 %i.m, %.val2, !dbg !5629
  br i1 %i.n, label %bb.d, label %bb.e, !dbg !5629

bb.c:                                             ; preds = %bb.a, %bb.d
  ret i1 %i.c, !dbg !5635

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1792, !dbg !5636
  %.val = load ptr, ptr %i.o, align 8, !dbg !5632, !nonnull !107, !noundef !107
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 %i.m, !dbg !5629
  %i.q = load i8, ptr %i.p, align 1, !dbg !5629, !noundef !107
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2321, !dbg !5637
  store i8 %i.q, ptr %i.r, align 1, !dbg !5637
  br label %bb.c, !dbg !5635

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %.val2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #20, !dbg !5629
  unreachable, !dbg !5629
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6unpack8unpack326unpackKj0_EBc_(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef writeonly align 4 captures(none) dereferenceable(128) initializes((0, 128)) %2) unnamed_addr #2 !dbg !5638 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %2, i8 0, i64 128, i1 false), !dbg !5641
  ret void, !dbg !5642
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6unpack8unpack326unpackKj10_EBc_(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef writeonly align 4 captures(none) dereferenceable(128) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5643 {
bb.a:
  %i.a = icmp samesign ugt i64 %1, 63, !dbg !5735
  br i1 %i.a, label %_RNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6unpack8unpack326unpackKj10_E0Be_.exit187, label %bb.b, !dbg !5735, !prof !181

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 45, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #20, !dbg !5736
  unreachable, !dbg !5736

_RNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6unpack8unpack326unpackKj10_E0Be_.exit187: ; preds = %bb.a
  %i.b = load <4 x i32>, ptr %0, align 1, !dbg !5737 ; 2 uses
  %i.c = and <4 x i32> %i.b, splat (i32 65535), !dbg !5738
  %i.d = lshr <4 x i32> %i.b, splat (i32 16), !dbg !5739
  %i.e = shufflevector <4 x i32> %i.c, <4 x i32> %i.d, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>, !dbg !5738
  store <8 x i32> %i.e, ptr %2, align 4, !dbg !5738
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5740
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !5741
  %i.h = load <4 x i32>, ptr %i.f, align 1, !dbg !5742 ; 2 uses
  %i.i = and <4 x i32> %i.h, splat (i32 65535), !dbg !5741
  %i.j = lshr <4 x i32> %i.h, splat (i32 16), !dbg !5743
  %i.k = shufflevector <4 x i32> %i.i, <4 x i32> %i.j, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>, !dbg !5741
  store <8 x i32> %i.k, ptr %i.g, align 4, !dbg !5741
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !5744
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64, !dbg !5745
  %i.n = load <4 x i32>, ptr %i.l, align 1, !dbg !5746 ; 2 uses
  %i.o = and <4 x i32> %i.n, splat (i32 65535), !dbg !5745
  %i.p = lshr <4 x i32> %i.n, splat (i32 16), !dbg !5747
end_hunk_0
begin_hunk_1_@_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail
declare void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

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

!llvm.module.flags = !{!98, !99, !100, !101}
!llvm.ident = !{!102}
!llvm.dbg.cu = !{!0}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !103, producer: "clang LLVM (rustc version 1.96.0-nightly (48cc71ee8 2026-03-31))", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<alloc::vec::Vec<u8, alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECsfISxE4fmY1Y_14polars_parquet", scope: !106, file: !104, line: 810, type: !108, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!2 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::Vec<u8, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfISxE4fmY1Y_14polars_parquet", scope: !106, file: !104, line: 810, type: !108, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!3 = distinct !DISubprogram(name: "drop_in_place<alloc::raw_vec::RawVec<u8, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECsfISxE4fmY1Y_14polars_parquet", scope: !106, file: !104, line: 810, type: !108, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!4 = distinct !DISubprogram(name: "drop_in_place<brotli_decompressor::huffman::HuffmanTreeGroup<alloc_stdlib::std_alloc::StandardAlloc, alloc_stdlib::std_alloc::StandardAlloc>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsjPfRcqrlXv6_19brotli_decompressor7huffman16HuffmanTreeGroupNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB1K_EECsfISxE4fmY1Y_14polars_parquet", scope: !106, file: !104, line: 810, type: !108, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!5 = distinct !DISubprogram(name: "drop<[u32], alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet", scope: !113, file: !110, line: 1913, type: !114, scopeLine: 1913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!6 = distinct !DILexicalBlock(scope: !5, file: !110, line: 1916, column: 9)
!7 = distinct !DILexicalBlock(scope: !6, file: !110, line: 1919, column: 13)
!8 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<[u32], alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxSmEECsfISxE4fmY1Y_14polars_parquet", scope: !106, file: !104, line: 810, type: !114, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!9 = distinct !DISubprogram(name: "drop_in_place<alloc_stdlib::heap_alloc::WrapBox<u32>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet", scope: !106, file: !104, line: 810, type: !114, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!10 = distinct !DISubprogram(name: "size_of_val_raw<[u32]>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem15size_of_val_rawSmECsfISxE4fmY1Y_14polars_parquet", scope: !116, file: !115, line: 455, type: !108, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!11 = distinct !DISubprogram(name: "for_value_raw<[u32]>", linkageName: "_RINvMNtNtCscgRAwXFJnXP_4core5alloc6layoutNtB3_6Layout13for_value_rawSmECsfISxE4fmY1Y_14polars_parquet", scope: !120, file: !117, line: 253, type: !108, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!12 = distinct !DISubprogram(name: "dealloc_nonnull", linkageName: "_RNvNtCsgZ49sUHp3tW_5alloc5alloc15dealloc_nonnull", scope: !122, file: !121, line: 127, type: !108, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!13 = distinct !DISubprogram(name: "deallocate_impl_runtime", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global23deallocate_impl_runtime", scope: !123, file: !121, line: 219, type: !108, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!14 = distinct !DISubprogram(name: "deallocate_impl", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global15deallocate_impl", scope: !123, file: !121, line: 343, type: !108, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!15 = distinct !DISubprogram(name: "deallocate", linkageName: "_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate", scope: !124, file: !121, line: 460, type: !114, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!16 = distinct !DISubprogram(name: "drop<[brotli_decompressor::huffman::HuffmanCode], alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSNtNtCsjPfRcqrlXv6_19brotli_decompressor7huffman11HuffmanCodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet", scope: !113, file: !110, line: 1913, type: !114, scopeLine: 1913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!17 = distinct !DILexicalBlock(scope: !16, file: !110, line: 1916, column: 9)
!18 = distinct !DILexicalBlock(scope: !17, file: !110, line: 1919, column: 13)
!19 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<[brotli_decompressor::huffman::HuffmanCode], alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxSNtNtCsjPfRcqrlXv6_19brotli_decompressor7huffman11HuffmanCodeEECsfISxE4fmY1Y_14polars_parquet", scope: !106, file: !104, line: 810, type: !114, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!20 = distinct !DISubprogram(name: "drop_in_place<alloc_stdlib::heap_alloc::WrapBox<brotli_decompressor::huffman::HuffmanCode>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsjPfRcqrlXv6_19brotli_decompressor7huffman11HuffmanCodeEECsfISxE4fmY1Y_14polars_parquet", scope: !106, file: !104, line: 810, type: !114, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!21 = distinct !DISubprogram(name: "size_of_val_raw<[brotli_decompressor::huffman::HuffmanCode]>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem15size_of_val_rawSNtNtCsjPfRcqrlXv6_19brotli_decompressor7huffman11HuffmanCodeECsfISxE4fmY1Y_14polars_parquet", scope: !116, file: !115, line: 455, type: !108, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!22 = distinct !DISubprogram(name: "for_value_raw<[brotli_decompressor::huffman::HuffmanCode]>", linkageName: "_RINvMNtNtCscgRAwXFJnXP_4core5alloc6layoutNtB3_6Layout13for_value_rawSNtNtCsjPfRcqrlXv6_19brotli_decompressor7huffman11HuffmanCodeECsfISxE4fmY1Y_14polars_parquet", scope: !120, file: !117, line: 253, type: !108, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!23 = distinct !DISubprogram(name: "last_byte", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr9last_byte", scope: !129, file: !126, line: 609, type: !108, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!24 = distinct !DISubprogram(name: "is_heap_allocated", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr17is_heap_allocated", scope: !129, file: !126, line: 446, type: !108, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!25 = distinct !DISubprogram(name: "drop", linkageName: "_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop", scope: !130, file: !126, line: 776, type: !108, scopeLine: 776, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!26 = distinct !DISubprogram(name: "drop_in_place<compact_str::repr::Repr>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECsfISxE4fmY1Y_14polars_parquet", scope: !106, file: !104, line: 810, type: !108, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!27 = distinct !DISubprogram(name: "drop_in_place<compact_str::CompactString>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECsfISxE4fmY1Y_14polars_parquet", scope: !106, file: !104, line: 810, type: !108, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!28 = distinct !DISubprogram(name: "drop_in_place<polars_utils::pl_str::PlSmallStr>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfISxE4fmY1Y_14polars_parquet", scope: !106, file: !104, line: 810, type: !108, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!29 = distinct !DISubprogram(name: "drop_in_place<polars_parquet::parquet::schema::types::basic_type::FieldInfo>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types10basic_type9FieldInfoEBQ_", scope: !106, file: !104, line: 810, type: !108, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!30 = distinct !DISubprogram(name: "drop_in_place<polars_parquet::parquet::schema::types::parquet_type::PrimitiveType>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type13PrimitiveTypeEBQ_", scope: !106, file: !104, line: 810, type: !108, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!31 = distinct !DISubprogram(name: "split_at_checked<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh16split_at_checkedCsfISxE4fmY1Y_14polars_parquet", scope: !139, file: !137, line: 2153, type: !108, scopeLine: 2153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!32 = distinct !DISubprogram(name: "split_at<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet", scope: !139, file: !137, line: 1952, type: !108, scopeLine: 1952, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!33 = distinct !DISubprogram(name: "BrotliGetBitsUnmasked", linkageName: "_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader21BrotliGetBitsUnmasked", scope: !145, file: !144, line: 247, type: !108, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!34 = distinct !DISubprogram(name: "BrotliTakeBits", linkageName: "_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader14BrotliTakeBits", scope: !145, file: !144, line: 310, type: !108, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!35 = distinct !DISubprogram(name: "BrotliSafeReadBits", linkageName: "_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits", scope: !145, file: !144, line: 361, type: !108, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!36 = distinct !DISubprogram(name: "BrotliGetAvailableBits", linkageName: "_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader22BrotliGetAvailableBits", scope: !145, file: !144, line: 88, type: !108, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!37 = distinct !DISubprogram(name: "BrotliDropBits", linkageName: "_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader14BrotliDropBits", scope: !145, file: !144, line: 290, type: !108, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!38 = distinct !DISubprogram(name: "BrotliPullByte", linkageName: "_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader14BrotliPullByte", scope: !145, file: !144, line: 228, type: !108, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!39 = distinct !DISubprogram(name: "BitMask", linkageName: "_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader7BitMask", scope: !145, file: !144, line: 26, type: !108, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!40 = distinct !DISubprogram(name: "BrotliSafeGetBits", linkageName: "_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader17BrotliSafeGetBits", scope: !145, file: !144, line: 274, type: !108, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!41 = distinct !DISubprogram(name: "BrotliPullByte", linkageName: "_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader14BrotliPullByte", scope: !145, file: !144, line: 228, type: !108, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!42 = distinct !DISubprogram(name: "BrotliGetBitsUnmasked", linkageName: "_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader21BrotliGetBitsUnmasked", scope: !145, file: !144, line: 247, type: !108, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!43 = distinct !DISubprogram(name: "BrotliGetAvailableBits", linkageName: "_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader22BrotliGetAvailableBits", scope: !145, file: !144, line: 88, type: !108, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!44 = distinct !DISubprogram(name: "drop<[u8], alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxShENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet", scope: !113, file: !110, line: 1913, type: !114, scopeLine: 1913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!45 = distinct !DILexicalBlock(scope: !44, file: !110, line: 1916, column: 9)
!46 = distinct !DILexicalBlock(scope: !45, file: !110, line: 1919, column: 13)
!47 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<[u8], alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxShEECsfISxE4fmY1Y_14polars_parquet", scope: !106, file: !104, line: 810, type: !114, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!48 = distinct !DISubprogram(name: "drop_in_place<alloc_stdlib::heap_alloc::WrapBox<u8>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet", scope: !106, file: !104, line: 810, type: !114, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!49 = distinct !DISubprogram(name: "BrotliFillBitWindowCompileTimeNbits", linkageName: "_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader35BrotliFillBitWindowCompileTimeNbits", scope: !145, file: !144, line: 174, type: !108, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!50 = distinct !DISubprogram(name: "BrotliLoad64LE", linkageName: "_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader14BrotliLoad64LE", scope: !145, file: !144, line: 122, type: !108, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!51 = distinct !DILexicalBlock(scope: !50, file: !144, line: 123, column: 3)
!52 = distinct !DILexicalBlock(scope: !51, file: !144, line: 124, column: 3)
!53 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE5indexCsfISxE4fmY1Y_14polars_parquet", scope: !153, file: !151, line: 435, type: !108, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!54 = distinct !DISubprogram(name: "index<u8, core::ops::range::Range<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexShINtNtNtB6_3ops5index5IndexINtNtBI_5range5RangejEE5indexCsfISxE4fmY1Y_14polars_parquet", scope: !171, file: !151, line: 18, type: !108, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!55 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckhECsfISxE4fmY1Y_14polars_parquet", scope: !152, file: !151, line: 82, type: !108, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!56 = distinct !DILexicalBlock(scope: !55, file: !151, line: 87, column: 5)
!57 = distinct !DISubprogram(name: "spec_clone_from<u8>", linkageName: "_RNvXs4_NtCscgRAwXFJnXP_4core5sliceShINtB5_13CloneFromSpechE15spec_clone_fromCsfISxE4fmY1Y_14polars_parquet", scope: !143, file: !137, line: 5618, type: !108, scopeLine: 5618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!58 = distinct !DISubprogram(name: "clone_from_slice<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh16clone_from_sliceCsfISxE4fmY1Y_14polars_parquet", scope: !139, file: !137, line: 4254, type: !108, scopeLine: 4254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!59 = distinct !DISubprogram(name: "DecodeSymbol", linkageName: "_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode12DecodeSymbol", scope: !135, file: !133, line: 378, type: !108, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!60 = distinct !DILexicalBlock(scope: !59, file: !133, line: 379, column: 3)
!61 = distinct !DILexicalBlock(scope: !60, file: !133, line: 380, column: 3)
!62 = distinct !DISubprogram(name: "BrotliDropBits", linkageName: "_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader14BrotliDropBits", scope: !145, file: !144, line: 290, type: !108, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!63 = distinct !DILexicalBlock(scope: !61, file: !133, line: 382, column: 5)
!64 = distinct !DISubprogram(name: "BitMask", linkageName: "_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader7BitMask", scope: !145, file: !144, line: 26, type: !108, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!65 = distinct !DISubprogram(name: "BrotliFillBitWindow", linkageName: "_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader19BrotliFillBitWindow", scope: !145, file: !144, line: 135, type: !108, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!66 = distinct !DISubprogram(name: "BrotliLoad32LE", linkageName: "_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader14BrotliLoad32LE", scope: !145, file: !144, line: 113, type: !108, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!67 = distinct !DILexicalBlock(scope: !66, file: !144, line: 114, column: 3)
!68 = distinct !DILexicalBlock(scope: !67, file: !144, line: 115, column: 3)
!69 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE5indexCsfISxE4fmY1Y_14polars_parquet", scope: !153, file: !151, line: 435, type: !108, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!70 = distinct !DISubprogram(name: "index<u8, core::ops::range::Range<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexShINtNtNtB6_3ops5index5IndexINtNtBI_5range5RangejEE5indexCsfISxE4fmY1Y_14polars_parquet", scope: !171, file: !151, line: 18, type: !108, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!71 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckhECsfISxE4fmY1Y_14polars_parquet", scope: !152, file: !151, line: 82, type: !108, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!72 = distinct !DILexicalBlock(scope: !71, file: !151, line: 87, column: 5)
!73 = distinct !DISubprogram(name: "spec_clone_from<u8>", linkageName: "_RNvXs4_NtCscgRAwXFJnXP_4core5sliceShINtB5_13CloneFromSpechE15spec_clone_fromCsfISxE4fmY1Y_14polars_parquet", scope: !143, file: !137, line: 5618, type: !108, scopeLine: 5618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!74 = distinct !DISubprogram(name: "clone_from_slice<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh16clone_from_sliceCsfISxE4fmY1Y_14polars_parquet", scope: !139, file: !137, line: 4254, type: !108, scopeLine: 4254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!75 = distinct !DISubprogram(name: "PrepareLiteralDecoding<alloc_stdlib::std_alloc::StandardAlloc, alloc_stdlib::std_alloc::StandardAlloc, alloc_stdlib::std_alloc::StandardAlloc>", linkageName: "_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode22PrepareLiteralDecodingNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB18_B18_ECsfISxE4fmY1Y_14polars_parquet", scope: !135, file: !133, line: 1552, type: !108, scopeLine: 1552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!76 = distinct !DILexicalBlock(scope: !75, file: !133, line: 1557, column: 3)
!77 = distinct !DILexicalBlock(scope: !76, file: !133, line: 1558, column: 3)
!78 = distinct !DILexicalBlock(scope: !77, file: !133, line: 1561, column: 3)
!79 = distinct !DILexicalBlock(scope: !78, file: !133, line: 1566, column: 3)
!80 = distinct !DISubprogram(name: "SafeReadBlockLengthFromIndex<alloc_stdlib::std_alloc::StandardAlloc>", linkageName: "_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode28SafeReadBlockLengthFromIndexNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet", scope: !135, file: !133, line: 1046, type: !108, scopeLine: 1046, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!81 = distinct !DILexicalBlock(scope: !80, file: !133, line: 1052, column: 3)
!82 = distinct !DILexicalBlock(scope: !81, file: !133, line: 1056, column: 3)
!83 = distinct !DILexicalBlock(scope: !82, file: !133, line: 1057, column: 3)
!84 = distinct !DISubprogram(name: "column_metadata_byte_range_compact", linkageName: "_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata21column_chunk_metadata34column_metadata_byte_range_compact", scope: !298, file: !296, line: 186, type: !108, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!85 = distinct !DILexicalBlock(scope: !84, file: !296, line: 189, column: 89)
!86 = distinct !DILexicalBlock(scope: !84, file: !296, line: 189, column: 5)
!87 = distinct !DISubprogram(name: "checked_add", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core3numy11checked_add", scope: !300, file: !148, line: 815, type: !108, scopeLine: 815, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!88 = distinct !DILexicalBlock(scope: !86, file: !296, line: 194, column: 5)
!89 = distinct !DISubprogram(name: "unlikely", linkageName: "_RNvNtCscgRAwXFJnXP_4core10intrinsics8unlikely", scope: !302, file: !301, line: 456, type: !108, scopeLine: 456, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!90 = distinct !DISubprogram(name: "unwrap<u64>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionyE6unwrapCsfISxE4fmY1Y_14polars_parquet", scope: !232, file: !230, line: 1013, type: !108, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!91 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPh3addCsfISxE4fmY1Y_14polars_parquet", scope: !265, file: !263, line: 829, type: !108, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!92 = distinct !DISubprogram(name: "split_at_unchecked<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh18split_at_uncheckedCsfISxE4fmY1Y_14polars_parquet", scope: !139, file: !137, line: 2038, type: !114, scopeLine: 2038, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!93 = distinct !DILexicalBlock(scope: !92, file: !137, line: 2043, column: 9)
!94 = distinct !DILexicalBlock(scope: !93, file: !137, line: 2044, column: 9)
!95 = distinct !DISubprogram(name: "split_buffer_v2", linkageName: "_RNvNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page15split_buffer_v2", scope: !271, file: !270, line: 421, type: !108, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!96 = distinct !DILexicalBlock(scope: !95, file: !270, line: 426, column: 5)
!97 = distinct !DILexicalBlock(scope: !96, file: !270, line: 427, column: 5)
!98 = !{i32 8, !"PIC Level", i32 2}
!99 = !{i32 2, !"RtLibUseGOT", i32 1}
!100 = !{i32 7, !"Dwarf Version", i32 4}
!101 = !{i32 2, !"Debug Info Version", i32 3}
!102 = !{!"rustc version 1.96.0-nightly (48cc71ee8 2026-03-31)"}
!103 = !DIFile(filename: "crates/polars-parquet/src/lib.rs/@/polars_parquet.b72545e931dce2ac-cgu.07", directory: "/opt-bench/work/pola-rs/polars")
!104 = !DIFile(filename: "library/core/src/ptr/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "e257ba3fa91f9f150d8872ddddab6def")
!105 = !DINamespace(name: "core", scope: null)
!106 = !DINamespace(name: "ptr", scope: !105)
!107 = !{}
!108 = !DISubroutineType(types: !107)
!109 = !{i64 0, i64 -9223372036854775807}
!110 = !DIFile(filename: "library/alloc/src/boxed.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "c2c961396e00891ae9e97f5dc112a35a")
!111 = !DINamespace(name: "alloc", scope: null)
!112 = !DINamespace(name: "boxed", scope: !111)
!113 = !DINamespace(name: "{impl#10}", scope: !112)
!114 = !DISubroutineType(cc: DW_CC_nocall, types: !107)
!115 = !DIFile(filename: "library/core/src/mem/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "f117990a17890c376e3a360d512003aa")
!116 = !DINamespace(name: "mem", scope: !105)
!117 = !DIFile(filename: "library/core/src/alloc/layout.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "e9b0fa2b5eccd748fb6b1e11a9156468")
!118 = !DINamespace(name: "alloc", scope: !105)
!119 = !DINamespace(name: "layout", scope: !118)
!120 = !DINamespace(name: "Layout", scope: !119)
!121 = !DIFile(filename: "library/alloc/src/alloc.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "860ce4ea2346d0773913a27b0b87ad79")
!122 = !DINamespace(name: "alloc", scope: !111)
!123 = !DINamespace(name: "Global", scope: !122)
!124 = !DINamespace(name: "{impl#1}", scope: !122)
!125 = !{i64 0, i64 8}
!126 = !DIFile(filename: "src/repr/mod.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/compact_str-0.9.1", checksumkind: CSK_MD5, checksum: "75dfb465d6c97cf0f66f252751410a59")
!127 = !DINamespace(name: "compact_str", scope: null)
!128 = !DINamespace(name: "repr", scope: !127)
!129 = !DINamespace(name: "Repr", scope: !128)
!130 = !DINamespace(name: "{impl#4}", scope: !128)
!131 = !{i8 0, i8 -38}
!132 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!133 = !DIFile(filename: "src/decode.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/brotli-decompressor-5.0.1", checksumkind: CSK_MD5, checksum: "377cfa5c36008fc42b8a1934d38d44a5")
!134 = !DINamespace(name: "brotli_decompressor", scope: null)
!135 = !DINamespace(name: "decode", scope: !134)
!136 = !{i8 0, i8 2}
!137 = !DIFile(filename: "library/core/src/slice/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "b606e5d97bff599edd0dcbc6067a14f1")
!138 = !DINamespace(name: "slice", scope: !105)
!139 = !DINamespace(name: "{impl#0}", scope: !138)
!140 = !DIFile(filename: "library/core/src/ptr/mut_ptr.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "7c03c8e0ae695174f7f10881dc49d2cb")
!141 = !DINamespace(name: "mut_ptr", scope: !106)
!142 = !DINamespace(name: "{impl#0}", scope: !141)
!143 = !DINamespace(name: "{impl#6}", scope: !138)
!144 = !DIFile(filename: "src/bit_reader/mod.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/brotli-decompressor-5.0.1", checksumkind: CSK_MD5, checksum: "7460b087c75791db16a33d83657b40d2")
!145 = !DINamespace(name: "bit_reader", scope: !134)
!146 = !DIFile(filename: "src/memory.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/brotli-decompressor-5.0.1", checksumkind: CSK_MD5, checksum: "7eb72f5769ccf213b78dacae31a4bbb5")
!147 = !DILexicalBlockFile(scope: !38, file: !146, discriminator: 0)
!148 = !DIFile(filename: "library/core/src/num/uint_macros.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "7da08fe6de751b90c62a398311fb672e")
!149 = !DINamespace(name: "num", scope: !105)
!150 = !DINamespace(name: "{impl#11}", scope: !149)
!151 = !DIFile(filename: "library/core/src/slice/index.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "949bb7af491f1c6ef62f3972592a0143")
!152 = !DINamespace(name: "index", scope: !138)
!153 = !DINamespace(name: "{impl#4}", scope: !152)
!154 = !DINamespace(name: "{impl#1}", scope: !152)
!155 = !DIFile(filename: "library/core/src/array/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "c726f515c254459c73cb9352206a49a4")
!156 = !DINamespace(name: "array", scope: !105)
!157 = !DINamespace(name: "{impl#16}", scope: !156)
!158 = !{!"branch_weights", i32 4000000, i32 4001}
!159 = !DIFile(filename: "library/core/src/slice/iter.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "f33ab2e22fe09095bf73c41c52bd166c")
!160 = !DINamespace(name: "iter", scope: !138)
!161 = !DINamespace(name: "IterMut", scope: !160)
!162 = !DIFile(filename: "library/core/src/ptr/non_null.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "84a86787d0c87de0d69993189aea0a0d")
!163 = !DINamespace(name: "non_null", scope: !106)
!164 = !DINamespace(name: "{impl#15}", scope: !163)
!165 = !DIFile(filename: "library/core/src/slice/iter/macros.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "87d1f0c2746f51593d75ddf4c9271f14")
!166 = !DINamespace(name: "{impl#179}", scope: !160)
!167 = !DINamespace(name: "NonNull", scope: !163)
end_hunk_1

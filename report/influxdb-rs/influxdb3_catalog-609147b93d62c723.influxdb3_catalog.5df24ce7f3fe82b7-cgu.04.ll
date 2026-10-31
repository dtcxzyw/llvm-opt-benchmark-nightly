Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_catalog-609147b93d62c723.influxdb3_catalog.5df24ce7f3fe82b7-cgu.04?download=true
inline.NumInlined: 2865
inline.NumDeleted: 825
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtCs87O7Q65ve1k_7bitcode6derive19encode_inline_neverNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records4node11AckStopNodeEB10_:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvNvXNtCs87O7Q65ve1k_7bitcode6lengthNtB4_13LengthEncoderINtNtB6_5coder7EncoderjE6encode11encode_slow(ptr noundef %i.l, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef range(i64 0, -9223372036854775808) %i.j), !noalias !2661
  %.pre = load ptr, ptr %i.k, align 8, !alias.scope !2660, !noalias !2658
  br label %_RNvXs1_NtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB5_10VecEncoderNtNtB9_7u8_char6U8CharEINtNtB9_5coder7EncoderSBY_E6encodeCs844E4pPEVZX_17influxdb3_catalog.exit

bb.c:                                             ; preds = %bb.a
  %i.o = trunc nuw i64 %i.j to i8
  store i8 %i.o, ptr %i.l, align 1, !noalias !2662
  br label %_RNvXs1_NtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB5_10VecEncoderNtNtB9_7u8_char6U8CharEINtNtB9_5coder7EncoderSBY_E6encodeCs844E4pPEVZX_17influxdb3_catalog.exit

_RNvXs1_NtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB5_10VecEncoderNtNtB9_7u8_char6U8CharEINtNtB9_5coder7EncoderSBY_E6encodeCs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.b, %bb.c
  %i.p = phi ptr [ %.pre, %bb.b ], [ %i.l, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store ptr %i.q, ptr %i.k, align 8, !alias.scope !2660, !noalias !2658
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvMs4_NtCs87O7Q65ve1k_7bitcode4fastINtB5_7FastVecNtNtB7_7u8_char6U8CharE7reserveCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef range(i64 0, -9223372036854775808) %i.j), !noalias !2661
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !2660, !noalias !2658, !noundef !5 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull readonly align 1 %i.h, i64 range(i64 0, -9223372036854775808) %i.j, i1 false), !noalias !2658
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.j
  store ptr %i.u, ptr %i.s, align 8, !alias.scope !2660, !noalias !2658
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !2658, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !2657, !noundef !5
  store i64 %i.w, ptr %i.y, align 8, !noalias !2658
  %i.z = load ptr, ptr %i.x, align 8, !alias.scope !2657, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.aa, ptr %i.x, align 8, !alias.scope !2657
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %.promoted = load ptr, ptr %i.ab, align 8, !alias.scope !2663 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.promoted, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %scevgep = getelementptr i8, ptr %.promoted, i64 16
  store ptr %scevgep, ptr %i.ab, align 8, !alias.scope !2663
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2664)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2665)
  %i.ac = load i64, ptr %1, align 8, !range !13, !alias.scope !2665, !noundef !5 ; 2 uses
  %i.ad = trunc nuw nsw i64 %i.ac to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !2664, !noundef !5 ; 2 uses
  store i8 %i.ad, ptr %i.af, align 1, !noalias !2666
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store ptr %i.ag, ptr %i.ae, align 8, !alias.scope !2664
  %i.ah = trunc nuw i64 %i.ac to i1
  br i1 %i.ah, label %bb.d, label %_RNvXs_NtNtCs87O7Q65ve1k_7bitcode6derive6optionINtB4_13OptionEncoderyEINtNtB8_5coder7EncoderINtNtCs4NRVxsYgnAr_4core6option6OptionyEE6encodeCs844E4pPEVZX_17influxdb3_catalog.exit

bb.d:                                             ; preds = %_RNvXs1_NtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB5_10VecEncoderNtNtB9_7u8_char6U8CharEINtNtB9_5coder7EncoderSBY_E6encodeCs844E4pPEVZX_17influxdb3_catalog.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_RNvXs_NtCs87O7Q65ve1k_7bitcode3intINtB4_10IntEncoderyENtNtB6_5coder6Buffer7reserveCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj, i64 noundef 1), !noalias !2665
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2667)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2668)
  %i.ak = load i64, ptr %i.ai, align 8, !alias.scope !2669, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !2670, !noundef !5 ; 2 uses
  store i64 %i.ak, ptr %i.am, align 8, !noalias !2671
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.an, ptr %i.al, align 8, !alias.scope !2670
  br label %_RNvXs_NtNtCs87O7Q65ve1k_7bitcode6derive6optionINtB4_13OptionEncoderyEINtNtB8_5coder7EncoderINtNtCs4NRVxsYgnAr_4core6option6OptionyEE6encodeCs844E4pPEVZX_17influxdb3_catalog.exit

_RNvXs_NtNtCs87O7Q65ve1k_7bitcode6derive6optionINtB4_13OptionEncoderyEINtNtB8_5coder7EncoderINtNtCs4NRVxsYgnAr_4core6option6OptionyEE6encodeCs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %_RNvXs1_NtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB5_10VecEncoderNtNtB9_7u8_char6U8CharEINtNtB9_5coder7EncoderSBY_E6encodeCs844E4pPEVZX_17influxdb3_catalog.exit, %bb.d
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtCs87O7Q65ve1k_7bitcode6derive19encode_inline_neverNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records4node12RegisterNodeEB10_(ptr noalias noundef align 8 dereferenceable(616) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(168) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2713)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.e = load i32, ptr %i.d, align 8, !alias.scope !2713, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !2712, !noundef !5 ; 2 uses
  store i32 %i.e, ptr %i.g, align 4, !noalias !2714
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store ptr %i.h, ptr %i.f, align 8, !alias.scope !2712
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !2713, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !2713, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2715)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !2715, !noalias !2713, !noundef !5 ; 3 uses
  %i.o = icmp samesign ult i64 %i.l, 255
  br i1 %i.o, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvNvXNtCs87O7Q65ve1k_7bitcode6lengthNtB4_13LengthEncoderINtNtB6_5coder7EncoderjE6encode11encode_slow(ptr noundef %i.n, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef range(i64 0, -9223372036854775808) %i.l), !noalias !2716
  %.pre = load ptr, ptr %i.m, align 8, !alias.scope !2715, !noalias !2713
  br label %_RNvXs1_NtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB5_10VecEncoderNtNtB9_7u8_char6U8CharEINtNtB9_5coder7EncoderSBY_E6encodeCs844E4pPEVZX_17influxdb3_catalog.exit1

bb.c:                                             ; preds = %bb.a
  %i.q = trunc nuw i64 %i.l to i8
  store i8 %i.q, ptr %i.n, align 1, !noalias !2717
  br label %_RNvXs1_NtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB5_10VecEncoderNtNtB9_7u8_char6U8CharEINtNtB9_5coder7EncoderSBY_E6encodeCs844E4pPEVZX_17influxdb3_catalog.exit1

_RNvXs1_NtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB5_10VecEncoderNtNtB9_7u8_char6U8CharEINtNtB9_5coder7EncoderSBY_E6encodeCs844E4pPEVZX_17influxdb3_catalog.exit1: ; preds = %bb.b, %bb.c
  %i.r = phi ptr [ %.pre, %bb.b ], [ %i.n, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store ptr %i.s, ptr %i.m, align 8, !alias.scope !2715, !noalias !2713
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvMs4_NtCs87O7Q65ve1k_7bitcode4fastINtB5_7FastVecNtNtB7_7u8_char6U8CharE7reserveCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef range(i64 0, -9223372036854775808) %i.l), !noalias !2716
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !2715, !noalias !2713, !noundef !5 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr nonnull readonly align 1 %i.j, i64 range(i64 0, -9223372036854775808) %i.l, i1 false), !noalias !2713
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.l
  store ptr %i.w, ptr %i.u, align 8, !alias.scope !2715, !noalias !2713
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !2713, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !2713, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2718)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !2718, !noalias !2713, !noundef !5 ; 3 uses
  %i.ad = icmp samesign ult i64 %i.aa, 255
  br i1 %i.ad, label %bb.e, label %bb.d, !prof !19

bb.d:                                             ; preds = %_RNvXs1_NtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB5_10VecEncoderNtNtB9_7u8_char6U8CharEINtNtB9_5coder7EncoderSBY_E6encodeCs844E4pPEVZX_17influxdb3_catalog.exit1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_RNvNvXNtCs87O7Q65ve1k_7bitcode6lengthNtB4_13LengthEncoderINtNtB6_5coder7EncoderjE6encode11encode_slow(ptr noundef %i.ac, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef range(i64 0, -9223372036854775808) %i.aa), !noalias !2719
  %.pre19 = load ptr, ptr %i.ab, align 8, !alias.scope !2718, !noalias !2713
  br label %_RNvXs1_NtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB5_10VecEncoderNtNtB9_7u8_char6U8CharEINtNtB9_5coder7EncoderSBY_E6encodeCs844E4pPEVZX_17influxdb3_catalog.exit

bb.e:                                             ; preds = %_RNvXs1_NtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB5_10VecEncoderNtNtB9_7u8_char6U8CharEINtNtB9_5coder7EncoderSBY_E6encodeCs844E4pPEVZX_17influxdb3_catalog.exit1
  %i.af = trunc nuw i64 %i.aa to i8
  store i8 %i.af, ptr %i.ac, align 1, !noalias !2720
  br label %_RNvXs1_NtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB5_10VecEncoderNtNtB9_7u8_char6U8CharEINtNtB9_5coder7EncoderSBY_E6encodeCs844E4pPEVZX_17influxdb3_catalog.exit

_RNvXs1_NtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB5_10VecEncoderNtNtB9_7u8_char6U8CharEINtNtB9_5coder7EncoderSBY_E6encodeCs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.d, %bb.e
  %i.ag = phi ptr [ %.pre19, %bb.d ], [ %i.ac, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store ptr %i.ah, ptr %i.ab, align 8, !alias.scope !2718, !noalias !2713
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_RNvMs4_NtCs87O7Q65ve1k_7bitcode4fastINtB5_7FastVecNtNtB7_7u8_char6U8CharE7reserveCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef range(i64 0, -9223372036854775808) %i.aa), !noalias !2719
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !2718, !noalias !2713, !noundef !5 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr nonnull readonly align 1 %i.y, i64 range(i64 0, -9223372036854775808) %i.aa, i1 false), !noalias !2713
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aa
  store ptr %i.al, ptr %i.aj, align 8, !alias.scope !2718, !noalias !2713
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !2713, !noundef !5
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !2712, !noundef !5
  store i64 %i.an, ptr %i.ap, align 8, !noalias !2713
  %i.aq = load ptr, ptr %i.ao, align 8, !alias.scope !2712, !noundef !5
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.ar, ptr %i.ao, align 8, !alias.scope !2712
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !2713, !noundef !5
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !2712, !noundef !5
  store i64 %i.at, ptr %i.av, align 8, !noalias !2713
  %i.aw = load ptr, ptr %i.au, align 8, !alias.scope !2712, !noundef !5
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.ax, ptr %i.au, align 8, !alias.scope !2712
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !2713, !nonnull !5, !noundef !5
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !2713, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2721)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !2721, !noalias !2713, !noundef !5 ; 3 uses
  %i.be = icmp samesign ult i64 %i.bb, 255
  br i1 %i.be, label %bb.f, label %.thread, !prof !19

.thread:                                          ; preds = %_RNvXs1_NtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB5_10VecEncoderNtNtB9_7u8_char6U8CharEINtNtB9_5coder7EncoderSBY_E6encodeCs844E4pPEVZX_17influxdb3_catalog.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @_RNvNvXNtCs87O7Q65ve1k_7bitcode6lengthNtB4_13LengthEncoderINtNtB6_5coder7EncoderjE6encode11encode_slow(ptr noundef %i.bd, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef range(i64 0, -9223372036854775808) %i.bb), !noalias !2722
  %i.bg = load ptr, ptr %i.bc, align 8, !alias.scope !2721, !noalias !2713, !noundef !5
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store ptr %i.bh, ptr %i.bc, align 8, !alias.scope !2721, !noalias !2713
  br label %.lr.ph.i.lr.ph

bb.f:                                             ; preds = %_RNvXs1_NtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB5_10VecEncoderNtNtB9_7u8_char6U8CharEINtNtB9_5coder7EncoderSBY_E6encodeCs844E4pPEVZX_17influxdb3_catalog.exit
  %i.bi = trunc nuw i64 %i.bb to i8
  store i8 %i.bi, ptr %i.bd, align 1, !noalias !2723
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store ptr %i.bj, ptr %i.bc, align 8, !alias.scope !2721, !noalias !2713
  %.not.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i, label %_RNvXs1_NtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB5_10VecEncoderNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5types8NodeModeEINtNtB9_5coder7EncoderSBY_E6encodeB16_.exit, label %.lr.ph.i.lr.ph

.lr.ph.i.lr.ph:                                   ; preds = %bb.f, %.thread
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_RNvMs4_NtCs87O7Q65ve1k_7bitcode4fastINtB5_7FastVechE7reserveCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bk, i64 noundef range(i64 0, -9223372036854775808) %i.bb), !noalias !2722
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %.promoted = load ptr, ptr %i.bl, align 8, !alias.scope !2724, !noalias !2713
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph.i.lr.ph, %._crit_edge.i
  %.promoted.i14 = phi ptr [ %.promoted, %.lr.ph.i.lr.ph ], [ %.lcssa, %._crit_edge.i ] ; 9 uses
  %.sroa.0.013 = phi ptr [ %i.az, %.lr.ph.i.lr.ph ], [ %i.bm, %._crit_edge.i ] ; 10 uses
  %.sroa.5.012 = phi i64 [ %i.bb, %.lr.ph.i.lr.ph ], [ %i.dj, %._crit_edge.i ] ; 4 uses
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 1, 0) %.sroa.5.012, i64 64) ; 9 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.013, i64 %.sroa.0.0.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2724)
  %min.iters.check = icmp ult i64 %.sroa.5.012, 8
  %.sroa.0.01334 = ptrtoaddr ptr %.sroa.0.013 to i64 ; 3 uses
  %.promoted.i1433 = ptrtoaddr ptr %.promoted.i14 to i64
  %i.bn = sub i64 %.sroa.0.01334, %.promoted.i1433
  %diff.check = icmp ugt i64 %i.bn, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check35 = icmp ult i64 %.sroa.5.012, 32
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bo = and i64 %.sroa.0.0.i.i, 24
  %n.vec = and i64 %.sroa.0.0.i.i, 96             ; 5 uses
  %i.bp = getelementptr i8, ptr %.promoted.i14, i64 %n.vec ; 2 uses
  %i.bq = getelementptr i8, ptr %.sroa.0.013, i64 %n.vec
  %i.br = getelementptr i8, ptr %.sroa.0.013, i64 16
  %wide.load = load <16 x i8>, ptr %.sroa.0.013, align 1, !noalias !2725
  %wide.load37 = load <16 x i8>, ptr %i.br, align 1, !noalias !2725
  %i.bs = getelementptr i8, ptr %.promoted.i14, i64 16
  store <16 x i8> %wide.load, ptr %.promoted.i14, align 1, !noalias !2725
  store <16 x i8> %wide.load37, ptr %i.bs, align 1, !noalias !2725
  %i.bt = icmp eq i64 %n.vec, 32
  br i1 %i.bt, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %next.gep.1 = getelementptr i8, ptr %.promoted.i14, i64 32
  %next.gep36.1 = getelementptr i8, ptr %.sroa.0.013, i64 32
  %i.bu = getelementptr i8, ptr %.sroa.0.013, i64 48
  %wide.load.1 = load <16 x i8>, ptr %next.gep36.1, align 1, !noalias !2725
  %wide.load37.1 = load <16 x i8>, ptr %i.bu, align 1, !noalias !2725
  %i.bv = getelementptr i8, ptr %.promoted.i14, i64 48
  store <16 x i8> %wide.load.1, ptr %next.gep.1, align 1, !noalias !2725
  store <16 x i8> %wide.load37.1, ptr %i.bv, align 1, !noalias !2725
  br label %middle.block

middle.block:                                     ; preds = %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %.sroa.0.0.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bo, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !2726

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec38 = and i64 %.sroa.0.0.i.i, 120          ; 4 uses
  %i.bw = getelementptr i8, ptr %.promoted.i14, i64 %n.vec38 ; 2 uses
  %i.bx = getelementptr i8, ptr %.sroa.0.013, i64 %n.vec38
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index39 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next43, %vec.epilog.vector.body ] ; 3 uses
  %next.gep40 = getelementptr i8, ptr %.promoted.i14, i64 %index39
  %next.gep41 = getelementptr i8, ptr %.sroa.0.013, i64 %index39
  %wide.load42 = load <8 x i8>, ptr %next.gep41, align 1, !noalias !2725
  store <8 x i8> %wide.load42, ptr %next.gep40, align 1, !noalias !2725
  %index.next43 = add nuw i64 %index39, 8         ; 2 uses
  %i.by = icmp eq i64 %index.next43, %n.vec38
  br i1 %i.by, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2686

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n44 = icmp eq i64 %.sroa.0.0.i.i, %n.vec38
  br i1 %cmp.n44, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %.promoted.i14, %iter.check ], [ %i.bp, %vec.epilog.iter.check ], [ %i.bw, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.0.06.i.ph = phi ptr [ %.sroa.0.013, %iter.check ], [ %i.bq, %vec.epilog.iter.check ], [ %i.bx, %vec.epilog.middle.block ] ; 3 uses
  %i.bz = add i64 %.sroa.0.0.i.i, %.sroa.0.01334
  %.sroa.0.06.i.ph47 = ptrtoaddr ptr %.sroa.0.06.i.ph to i64 ; 2 uses
  %i.ca = sub i64 %i.bz, %.sroa.0.06.i.ph47
  %i.cb = add i64 %.sroa.0.01334, -1
  %i.cc = add i64 %i.cb, %.sroa.0.0.i.i
  %i.cd = sub i64 %i.cc, %.sroa.0.06.i.ph47
  %xtraiter = and i64 %i.ca, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.ce = phi ptr [ %i.ch, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.0.06.i.prol = phi ptr [ %i.cf, %vec.epilog.scalar.ph.prol ], [ %.sroa.0.06.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.prol, i64 1 ; 2 uses
  %i.cg = load i8, ptr %.sroa.0.06.i.prol, align 1, !range !7, !noalias !2725, !noundef !5
  store i8 %i.cg, ptr %i.ce, align 1, !noalias !2725
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !2687

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa46.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ch, %vec.epilog.scalar.ph.prol ]
  %.unr = phi ptr [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ch, %vec.epilog.scalar.ph.prol ]
  %.sroa.0.06.i.unr = phi ptr [ %.sroa.0.06.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.cf, %vec.epilog.scalar.ph.prol ]
  %i.ci = icmp ult i64 %i.cd, 7
  br i1 %i.ci, label %._crit_edge.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.cj = phi ptr [ %i.dh, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.sroa.0.06.i = phi ptr [ %i.df, %vec.epilog.scalar.ph ], [ %.sroa.0.06.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i, i64 1
  %i.cl = load i8, ptr %.sroa.0.06.i, align 1, !range !7, !noalias !2725, !noundef !5
  store i8 %i.cl, ptr %i.cj, align 1, !noalias !2725
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i, i64 2
  %i.co = load i8, ptr %i.ck, align 1, !range !7, !noalias !2725, !noundef !5
  store i8 %i.co, ptr %i.cm, align 1, !noalias !2725
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i, i64 3
  %i.cr = load i8, ptr %i.cn, align 1, !range !7, !noalias !2725, !noundef !5
  store i8 %i.cr, ptr %i.cp, align 1, !noalias !2725
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 3
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i, i64 4
  %i.cu = load i8, ptr %i.cq, align 1, !range !7, !noalias !2725, !noundef !5
  store i8 %i.cu, ptr %i.cs, align 1, !noalias !2725
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i, i64 5
  %i.cx = load i8, ptr %i.ct, align 1, !range !7, !noalias !2725, !noundef !5
  store i8 %i.cx, ptr %i.cv, align 1, !noalias !2725
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cj, i64 5
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i, i64 6
  %i.da = load i8, ptr %i.cw, align 1, !range !7, !noalias !2725, !noundef !5
  store i8 %i.da, ptr %i.cy, align 1, !noalias !2725
  %i.db = getelementptr inbounds nuw i8, ptr %i.cj, i64 6
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i, i64 7
  %i.dd = load i8, ptr %i.cz, align 1, !range !7, !noalias !2725, !noundef !5
  store i8 %i.dd, ptr %i.db, align 1, !noalias !2725
  %i.de = getelementptr inbounds nuw i8, ptr %i.cj, i64 7
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i, i64 8 ; 2 uses
  %i.dg = load i8, ptr %i.dc, align 1, !range !7, !noalias !2725, !noundef !5
  store i8 %i.dg, ptr %i.de, align 1, !noalias !2725
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %i.di = icmp eq ptr %i.df, %i.bm
  br i1 %i.di, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !2688

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.bw, %vec.epilog.middle.block ], [ %i.bp, %middle.block ], [ %.lcssa46.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.dh, %vec.epilog.scalar.ph ] ; 2 uses
  %i.dj = sub nuw nsw i64 %.sroa.5.012, %.sroa.0.0.i.i ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %._RNvXs1_NtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB5_10VecEncoderNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5types8NodeModeEINtNtB9_5coder7EncoderSBY_E6encodeB16_.exit.loopexit_crit_edge, label %iter.check

._RNvXs1_NtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB5_10VecEncoderNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5types8NodeModeEINtNtB9_5coder7EncoderSBY_E6encodeB16_.exit.loopexit_crit_edge: ; preds = %._crit_edge.i
  store ptr %.lcssa, ptr %i.bl, align 8, !alias.scope !2724, !noalias !2713
  br label %_RNvXs1_NtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB5_10VecEncoderNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5types8NodeModeEINtNtB9_5coder7EncoderSBY_E6encodeB16_.exit

_RNvXs1_NtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB5_10VecEncoderNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5types8NodeModeEINtNtB9_5coder7EncoderSBY_E6encodeB16_.exit: ; preds = %._RNvXs1_NtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB5_10VecEncoderNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5types8NodeModeEINtNtB9_5coder7EncoderSBY_E6encodeB16_.exit.loopexit_crit_edge, %bb.f
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %.promoted15 = load ptr, ptr %i.dl, align 8, !alias.scope !2727 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.promoted15, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %scevgep = getelementptr i8, ptr %.promoted15, i64 16
  store ptr %scevgep, ptr %i.dl, align 8, !alias.scope !2727
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2729)
  %i.dm = load i64, ptr %i.b, align 8, !range !6, !alias.scope !2729, !noundef !5
  %i.dn = icmp ne i64 %i.dm, -1                   ; 2 uses
  %i.do = zext i1 %i.dn to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !alias.scope !2728, !noundef !5 ; 2 uses
  store i8 %i.do, ptr %i.dq, align 1, !noalias !2730
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  store ptr %i.dr, ptr %i.dp, align 8, !alias.scope !2728
  br i1 %i.dn, label %bb.g, label %_RNvXs_NtNtCs87O7Q65ve1k_7bitcode6derive6optionINtB4_13OptionEncoderNtNtCscdodAO9FK5_5alloc6string6StringEINtNtB8_5coder7EncoderINtNtCs4NRVxsYgnAr_4core6option6OptionB13_EE6encodeCs844E4pPEVZX_17influxdb3_catalog.exit5

bb.g:                                             ; preds = %_RNvXs1_NtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB5_10VecEncoderNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5types8NodeModeEINtNtB9_5coder7EncoderSBY_E6encodeB16_.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @_RNvXNtCs87O7Q65ve1k_7bitcode3strNtB2_10StrEncoderNtNtB4_5coder6Buffer7reserve(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.ds, i64 noundef 1), !noalias !2729
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2731)
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.du = load ptr, ptr %i.dt, align 8, !alias.scope !2732, !nonnull !5, !noundef !5
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !2732, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2733)
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !alias.scope !2734, !noalias !2731, !noundef !5 ; 3 uses
  %i.dz = icmp samesign ult i64 %i.dw, 255
  br i1 %i.dz, label %bb.i, label %bb.h, !prof !19

bb.h:                                             ; preds = %bb.g
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 408
  tail call void @_RNvNvXNtCs87O7Q65ve1k_7bitcode6lengthNtB4_13LengthEncoderINtNtB6_5coder7EncoderjE6encode11encode_slow(ptr noundef %i.dy, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ea, i64 noundef range(i64 0, -9223372036854775808) %i.dw), !noalias !2735
  %.pre20 = load ptr, ptr %i.dx, align 8, !alias.scope !2734, !noalias !2731
  br label %_RNvXs1_NtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB5_10VecEncoderNtNtB9_7u8_char6U8CharEINtNtB9_5coder7EncoderSBY_E6encodeCs844E4pPEVZX_17influxdb3_catalog.exit.i4

bb.i:                                             ; preds = %bb.g
  %i.eb = trunc nuw i64 %i.dw to i8
  store i8 %i.eb, ptr %i.dy, align 1, !noalias !2736
  br label %_RNvXs1_NtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB5_10VecEncoderNtNtB9_7u8_char6U8CharEINtNtB9_5coder7EncoderSBY_E6encodeCs844E4pPEVZX_17influxdb3_catalog.exit.i4

_RNvXs1_NtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB5_10VecEncoderNtNtB9_7u8_char6U8CharEINtNtB9_5coder7EncoderSBY_E6encodeCs844E4pPEVZX_17influxdb3_catalog.exit.i4: ; preds = %bb.i, %bb.h
  %i.ec = phi ptr [ %i.dy, %bb.i ], [ %.pre20, %bb.h ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  store ptr %i.ed, ptr %i.dx, align 8, !alias.scope !2734, !noalias !2731
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @_RNvMs4_NtCs87O7Q65ve1k_7bitcode4fastINtB5_7FastVecNtNtB7_7u8_char6U8CharE7reserveCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ee, i64 noundef range(i64 0, -9223372036854775808) %i.dw), !noalias !2735
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !alias.scope !2734, !noalias !2731, !noundef !5 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eg, ptr nonnull readonly align 1 %i.du, i64 range(i64 0, -9223372036854775808) %i.dw, i1 false), !noalias !2732
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.dw
  store ptr %i.eh, ptr %i.ef, align 8, !alias.scope !2734, !noalias !2731
  br label %_RNvXs_NtNtCs87O7Q65ve1k_7bitcode6derive6optionINtB4_13OptionEncoderNtNtCscdodAO9FK5_5alloc6string6StringEINtNtB8_5coder7EncoderINtNtCs4NRVxsYgnAr_4core6option6OptionB13_EE6encodeCs844E4pPEVZX_17influxdb3_catalog.exit5

_RNvXs_NtNtCs87O7Q65ve1k_7bitcode6derive6optionINtB4_13OptionEncoderNtNtCscdodAO9FK5_5alloc6string6StringEINtNtB8_5coder7EncoderINtNtCs4NRVxsYgnAr_4core6option6OptionB13_EE6encodeCs844E4pPEVZX_17influxdb3_catalog.exit5: ; preds = %_RNvXs1_NtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB5_10VecEncoderNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5types8NodeModeEINtNtB9_5coder7EncoderSBY_E6encodeB16_.exit, %_RNvXs1_NtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB5_10VecEncoderNtNtB9_7u8_char6U8CharEINtNtB9_5coder7EncoderSBY_E6encodeCs844E4pPEVZX_17influxdb3_catalog.exit.i4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2737)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2738)
  %i.ei = load i64, ptr %i.c, align 8, !range !6, !alias.scope !2738, !noundef !5
  %i.ej = icmp ne i64 %i.ei, -1                   ; 2 uses
  %i.ek = zext i1 %i.ej to i8
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !alias.scope !2737, !noundef !5 ; 2 uses
  store i8 %i.ek, ptr %i.em, align 1, !noalias !2739
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  store ptr %i.en, ptr %i.el, align 8, !alias.scope !2737
  br i1 %i.ej, label %bb.j, label %_RNvXs_NtNtCs87O7Q65ve1k_7bitcode6derive6optionINtB4_13OptionEncoderNtNtCscdodAO9FK5_5alloc6string6StringEINtNtB8_5coder7EncoderINtNtCs4NRVxsYgnAr_4core6option6OptionB13_EE6encodeCs844E4pPEVZX_17influxdb3_catalog.exit

bb.j:                                             ; preds = %_RNvXs_NtNtCs87O7Q65ve1k_7bitcode6derive6optionINtB4_13OptionEncoderNtNtCscdodAO9FK5_5alloc6string6StringEINtNtB8_5coder7EncoderINtNtCs4NRVxsYgnAr_4core6option6OptionB13_EE6encodeCs844E4pPEVZX_17influxdb3_catalog.exit5
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 488
  tail call void @_RNvXNtCs87O7Q65ve1k_7bitcode3strNtB2_10StrEncoderNtNtB4_5coder6Buffer7reserve(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.eo, i64 noundef 1), !noalias !2738
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2740)
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !2741, !nonnull !5, !noundef !5
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.es = load i64, ptr %i.er, align 8, !alias.scope !2741, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2742)
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  %i.eu = load ptr, ptr %i.et, align 8, !alias.scope !2743, !noalias !2740, !noundef !5 ; 3 uses
  %i.ev = icmp samesign ult i64 %i.es, 255
  br i1 %i.ev, label %bb.l, label %bb.k, !prof !19

bb.k:                                             ; preds = %bb.j
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @_RNvNvXNtCs87O7Q65ve1k_7bitcode6lengthNtB4_13LengthEncoderINtNtB6_5coder7EncoderjE6encode11encode_slow(ptr noundef %i.eu, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ew, i64 noundef range(i64 0, -9223372036854775808) %i.es), !noalias !2744
  %.pre22 = load ptr, ptr %i.et, align 8, !alias.scope !2743, !noalias !2740
  br label %_RNvXs1_NtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB5_10VecEncoderNtNtB9_7u8_char6U8CharEINtNtB9_5coder7EncoderSBY_E6encodeCs844E4pPEVZX_17influxdb3_catalog.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ex = trunc nuw i64 %i.es to i8
  store i8 %i.ex, ptr %i.eu, align 1, !noalias !2745
  br label %_RNvXs1_NtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB5_10VecEncoderNtNtB9_7u8_char6U8CharEINtNtB9_5coder7EncoderSBY_E6encodeCs844E4pPEVZX_17influxdb3_catalog.exit.i

_RNvXs1_NtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB5_10VecEncoderNtNtB9_7u8_char6U8CharEINtNtB9_5coder7EncoderSBY_E6encodeCs844E4pPEVZX_17influxdb3_catalog.exit.i: ; preds = %bb.l, %bb.k
  %i.ey = phi ptr [ %i.eu, %bb.l ], [ %.pre22, %bb.k ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 1
  store ptr %i.ez, ptr %i.et, align 8, !alias.scope !2743, !noalias !2740
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 536
  tail call void @_RNvMs4_NtCs87O7Q65ve1k_7bitcode4fastINtB5_7FastVecNtNtB7_7u8_char6U8CharE7reserveCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fa, i64 noundef range(i64 0, -9223372036854775808) %i.es), !noalias !2744
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !alias.scope !2743, !noalias !2740, !noundef !5 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fc, ptr nonnull readonly align 1 %i.eq, i64 range(i64 0, -9223372036854775808) %i.es, i1 false), !noalias !2741
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.es
  store ptr %i.fd, ptr %i.fb, align 8, !alias.scope !2743, !noalias !2740
  br label %_RNvXs_NtNtCs87O7Q65ve1k_7bitcode6derive6optionINtB4_13OptionEncoderNtNtCscdodAO9FK5_5alloc6string6StringEINtNtB8_5coder7EncoderINtNtCs4NRVxsYgnAr_4core6option6OptionB13_EE6encodeCs844E4pPEVZX_17influxdb3_catalog.exit

_RNvXs_NtNtCs87O7Q65ve1k_7bitcode6derive6optionINtB4_13OptionEncoderNtNtCscdodAO9FK5_5alloc6string6StringEINtNtB8_5coder7EncoderINtNtCs4NRVxsYgnAr_4core6option6OptionB13_EE6encodeCs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %_RNvXs_NtNtCs87O7Q65ve1k_7bitcode6derive6optionINtB4_13OptionEncoderNtNtCscdodAO9FK5_5alloc6string6StringEINtNtB8_5coder7EncoderINtNtCs4NRVxsYgnAr_4core6option6OptionB13_EE6encodeCs844E4pPEVZX_17influxdb3_catalog.exit5, %_RNvXs1_NtNtCs87O7Q65ve1k_7bitcode6derive3vecINtB5_10VecEncoderNtNtB9_7u8_char6U8CharEINtNtB9_5coder7EncoderSBY_E6encodeCs844E4pPEVZX_17influxdb3_catalog.exit.i
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.fg = load i64, ptr %i.ff, align 8, !alias.scope !2713, !noundef !5
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 3 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !alias.scope !2712, !noundef !5
  store i64 %i.fg, ptr %i.fi, align 8
  %i.fj = load ptr, ptr %i.fh, align 8, !alias.scope !2712, !noundef !5
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store ptr %i.fk, ptr %i.fh, align 8, !alias.scope !2712
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2747)
  %i.fl = load i16, ptr %i.fe, align 4, !alias.scope !2748, !noundef !5
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !alias.scope !2749, !noundef !5 ; 2 uses
  store i16 %i.fl, ptr %i.fn, align 2, !noalias !2750
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 2
  store ptr %i.fo, ptr %i.fm, align 8, !alias.scope !2749
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 166
  %i.fq = load i16, ptr %i.fp, align 2, !alias.scope !2748, !noundef !5
end_hunk_0

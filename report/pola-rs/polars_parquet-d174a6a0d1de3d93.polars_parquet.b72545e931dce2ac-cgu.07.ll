Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.07?download=true
inline.NumInlined: 1744
inline.NumDeleted: 145
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode14WrapRingBufferNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB10_B10_ECsfISxE4fmY1Y_14polars_parquet:bb.a
  br i1 %.not.i2, label %bb.e, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit6, !dbg !703, !prof !132

bb.e:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @103, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20, !dbg !704, !noalias !690
  unreachable, !dbg !704

_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit6: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit
  %i.m = sub nuw nsw i64 %.val1, %i.h, !dbg !705
  %.not.i7 = icmp ult i64 %i.m, %i.l, !dbg !706
  br i1 %.not.i7, label %bb.f, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !706, !prof !132

bb.f:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit6
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @103, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #20, !dbg !707, !noalias !691
  unreachable, !dbg !707

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCsfISxE4fmY1Y_14polars_parquet.exit6
  tail call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull %.val, i64 noundef %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4), !dbg !708
  store i8 0, ptr %i.a, align 1, !dbg !709
  br label %bb.b, !dbg !710
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i32 -7, 3) i32 @_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode15ReadHuffmanCodeNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB11_B11_ECsfISxE4fmY1Y_14polars_parquet(i32 noundef %0, i32 noundef %1, ptr noalias noundef nonnull align 2 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i64 noundef range(i64 -2147483648, 4294967296) %4, ptr noalias nofree noundef writeonly align 4 captures(address_is_null) dereferenceable_or_null(4) %5, ptr noalias noundef nonnull align 8 dereferenceable(2600) %6, ptr noalias noundef nonnull readonly captures(address, read_provenance) %7, i64 noundef range(i64 0, -9223372036854775808) %8) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !711 {
bb.a:
  %i.a = and i32 %0, 2047, !dbg !1160
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 2328 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 2256 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 2260 ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 2204 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 1872 ; 36 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 1880 ; 25 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 1888 ; 21 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 1884 ; 20 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 2302 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 1696 ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 1936 ; 21 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 256 ; 27 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 2252 ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 2240 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 2236 ; 5 uses
  %i.q = add nsw i32 %i.a, -1
  %i.r = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.q, i1 false)
  %i.s = sub nuw nsw i32 32, %i.r                 ; 7 uses
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @23, i64 %i.t
  %.pre = load i8, ptr %i.b, align 8, !dbg !1161, !range !1004
  switch i8 %.pre, label %default.unreachable437 [
    i8 0, label %bb.f
    i8 1, label %bb.i
    i8 2, label %thread-pre-split439
    i8 3, label %bb.ag
    i8 4, label %bb.ah
    i8 5, label %bb.aq
  ], !dbg !1162

bb.b:                                             ; preds = %.preheader99.15
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.ph, !dbg !1163
  store i16 -1, ptr %i.v, align 2, !dbg !1163
  store i32 0, ptr %i.n, align 4, !dbg !1164
  store i32 8, ptr %i.o, align 8, !dbg !1165
  store i32 0, ptr %i.c, align 8, !dbg !1166
  store i32 0, ptr %i.p, align 4, !dbg !1167
  store i32 32768, ptr %i.d, align 4, !dbg !1168
  store i8 5, ptr %i.b, align 8, !dbg !1169
  br label %bb.aq, !dbg !1162

_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode24ReadSimpleHuffmanSymbolsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB1a_B1a_ECsfISxE4fmY1Y_14polars_parquet.exit.loopexit: ; preds = %._crit_edge48.i, %._crit_edge43.i
  store i8 3, ptr %i.b, align 8, !dbg !1170
  br label %bb.ag, !dbg !1162

bb.c:                                             ; preds = %.loopexit97.loopexit, %..loopexit97_crit_edge
  %i.w = phi i64 [ %.pre344, %..loopexit97_crit_edge ], [ %i.az, %.loopexit97.loopexit ], !dbg !1171
  %.lcssa7.i38 = phi i32 [ %.promoted.i35, %..loopexit97_crit_edge ], [ %i.ba, %.loopexit97.loopexit ], !dbg !1172 ; 2 uses
  %i.x = and i32 %.lcssa7.i38, 63, !dbg !1171
  %i.y = zext nneg i32 %i.x to i64, !dbg !1171
  %i.z = lshr i64 %i.w, %i.y, !dbg !1171
  %i.aa = trunc i64 %i.z to i32, !dbg !1173
  %i.ab = and i32 %i.aa, 3, !dbg !1174            ; 2 uses
  store i32 %i.ab, ptr %i.n, align 4, !dbg !1174, !alias.scope !1005, !noalias !1006
  %i.ac = add i32 %.lcssa7.i38, 2, !dbg !1175
  store i32 %i.ac, ptr %i.g, align 8, !dbg !1175, !alias.scope !1007, !noalias !1008
  store i32 0, ptr %i.e, align 4, !dbg !1176
  store i8 2, ptr %i.b, align 8, !dbg !1177
  br label %bb.l, !dbg !1162

bb.d:                                             ; preds = %.loopexit96
  store i32 32, ptr %i.d, align 4, !dbg !1178
  store i32 0, ptr %i.c, align 8, !dbg !1179
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.k, i8 0, i64 12, i1 false), !dbg !1180
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.j, i8 0, i64 18, i1 false), !dbg !1181
  store i8 4, ptr %i.b, align 8, !dbg !1182
  br label %bb.ah, !dbg !1162

bb.e:                                             ; preds = %.loopexit96
  store i8 1, ptr %i.b, align 8, !dbg !1183
  br label %bb.i, !dbg !1162

default.unreachable437:                           ; preds = %bb.a
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1009), !dbg !1184
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1010), !dbg !1184
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1011), !dbg !1184
  %.promoted.i = load i32, ptr %i.g, align 8, !alias.scope !1009, !noalias !1012 ; 3 uses
  %i.ad = add i32 %.promoted.i, -63, !dbg !1185
  %.not.i = icmp ult i32 %i.ad, 2, !dbg !1185
  br i1 %.not.i, label %.lr.ph.i, label %..loopexit96_crit_edge, !dbg !1185

..loopexit96_crit_edge:                           ; preds = %bb.f
  %.pre345 = load i64, ptr %i.f, align 8, !dbg !1186, !alias.scope !1009, !noalias !1012
  br label %.loopexit96, !dbg !1185

.lr.ph.i:                                         ; preds = %bb.f
  %.promoted17.i = load i32, ptr %i.h, align 8, !alias.scope !1009, !noalias !1012 ; 2 uses
  %.promoted18.i = load i32, ptr %i.i, align 4, !alias.scope !1009, !noalias !1012 ; 2 uses
  %i.ae = icmp eq i32 %.promoted17.i, 0, !dbg !1187
  br i1 %i.ae, label %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit, label %bb.g, !dbg !1187

bb.g:                                             ; preds = %.lr.ph.i
  %.promoted14.i = load i64, ptr %i.f, align 8, !alias.scope !1009, !noalias !1012
  %i.af = lshr i64 %.promoted14.i, 8, !dbg !1188  ; 2 uses
  store i64 %i.af, ptr %i.f, align 8, !dbg !1188, !alias.scope !1009, !noalias !1012
  %i.ag = zext i32 %.promoted18.i to i64, !dbg !1189 ; 3 uses
  %i.ah = icmp samesign ugt i64 %8, %i.ag, !dbg !1190
  br i1 %i.ah, label %.loopexit96.loopexit, label %bb.h, !dbg !1190

.loopexit96.loopexit:                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 %i.ag, !dbg !1190
  %i.aj = load i8, ptr %i.ai, align 1, !dbg !1190, !alias.scope !1011, !noalias !1013, !noundef !107
  %i.ak = zext i8 %i.aj to i64, !dbg !1191
  %i.al = shl nuw i64 %i.ak, 56, !dbg !1191
  %i.am = or disjoint i64 %i.al, %i.af, !dbg !1192 ; 2 uses
  store i64 %i.am, ptr %i.f, align 8, !dbg !1192, !alias.scope !1009, !noalias !1012
  %i.an = add nsw i32 %.promoted.i, -8, !dbg !1193
  %i.ao = add i32 %.promoted17.i, -1, !dbg !1194
  store i32 %i.ao, ptr %i.h, align 8, !dbg !1194, !alias.scope !1009, !noalias !1012
  %i.ap = add i32 %.promoted18.i, 1, !dbg !1195
  store i32 %i.ap, ptr %i.i, align 4, !dbg !1195, !alias.scope !1009, !noalias !1012
  br label %.loopexit96, !dbg !1186

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ag, i64 noundef range(i64 0, -9223372036854775808) %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #20, !dbg !1190, !noalias !1014
  unreachable, !dbg !1190

bb.i:                                             ; preds = %bb.e, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1007), !dbg !1196
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005), !dbg !1196
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1015), !dbg !1196
  %.promoted.i35 = load i32, ptr %i.g, align 8, !alias.scope !1007, !noalias !1008 ; 3 uses
  %i.aq = add i32 %.promoted.i35, -63, !dbg !1197
  %.not.i36 = icmp ult i32 %i.aq, 2, !dbg !1197
  br i1 %.not.i36, label %.lr.ph.i39, label %..loopexit97_crit_edge, !dbg !1197

..loopexit97_crit_edge:                           ; preds = %bb.i
  %.pre344 = load i64, ptr %i.f, align 8, !dbg !1171, !alias.scope !1007, !noalias !1008
  br label %bb.c, !dbg !1197

.lr.ph.i39:                                       ; preds = %bb.i
  %.promoted17.i41 = load i32, ptr %i.h, align 8, !alias.scope !1007, !noalias !1008 ; 2 uses
  %.promoted18.i42 = load i32, ptr %i.i, align 4, !alias.scope !1007, !noalias !1008 ; 2 uses
  %i.ar = icmp eq i32 %.promoted17.i41, 0, !dbg !1198
  br i1 %i.ar, label %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit44, label %bb.j, !dbg !1198

bb.j:                                             ; preds = %.lr.ph.i39
  %.promoted14.i40 = load i64, ptr %i.f, align 8, !alias.scope !1007, !noalias !1008
  %i.as = lshr i64 %.promoted14.i40, 8, !dbg !1199 ; 2 uses
  store i64 %i.as, ptr %i.f, align 8, !dbg !1199, !alias.scope !1007, !noalias !1008
  %i.at = zext i32 %.promoted18.i42 to i64, !dbg !1200 ; 3 uses
  %i.au = icmp samesign ugt i64 %8, %i.at, !dbg !1201
  br i1 %i.au, label %.loopexit97.loopexit, label %bb.k, !dbg !1201

.loopexit97.loopexit:                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 %i.at, !dbg !1201
  %i.aw = load i8, ptr %i.av, align 1, !dbg !1201, !alias.scope !1015, !noalias !1016, !noundef !107
  %i.ax = zext i8 %i.aw to i64, !dbg !1202
  %i.ay = shl nuw i64 %i.ax, 56, !dbg !1202
  %i.az = or disjoint i64 %i.ay, %i.as, !dbg !1203 ; 2 uses
  store i64 %i.az, ptr %i.f, align 8, !dbg !1203, !alias.scope !1007, !noalias !1008
  %i.ba = add nsw i32 %.promoted.i35, -8, !dbg !1204
  %i.bb = add i32 %.promoted17.i41, -1, !dbg !1205
  store i32 %i.bb, ptr %i.h, align 8, !dbg !1205, !alias.scope !1007, !noalias !1008
  %i.bc = add i32 %.promoted18.i42, 1, !dbg !1206
  store i32 %i.bc, ptr %i.i, align 4, !dbg !1206, !alias.scope !1007, !noalias !1008
  br label %bb.c, !dbg !1171

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.at, i64 noundef range(i64 0, -9223372036854775808) %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #20, !dbg !1201, !noalias !1017
  unreachable, !dbg !1201

thread-pre-split439:                              ; preds = %bb.a
  %.pr440 = load i32, ptr %i.n, align 4, !dbg !1207, !alias.scope !1018, !noalias !1019
  br label %bb.l, !dbg !1208

bb.l:                                             ; preds = %thread-pre-split439, %bb.c
  %i.bd = phi i32 [ %.pr440, %thread-pre-split439 ], [ %i.ab, %bb.c ], !dbg !1207 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1018), !dbg !1208
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1019), !dbg !1208
  %i.be = load i32, ptr %i.e, align 4, !dbg !1209, !alias.scope !1018, !noalias !1019, !noundef !107 ; 2 uses
  %i.bf = zext i32 %i.be to i64, !dbg !1210       ; 4 uses
  %i.bg = zext i32 %i.bd to i64, !dbg !1211       ; 4 uses
  %i.bh = add nuw nsw i64 %i.bg, 1, !dbg !1211    ; 6 uses
  %i.bi = icmp samesign uge i64 %i.bh, %i.bf, !dbg !1212
  %i.bj = icmp ult i32 %i.bd, 720
  %or.cond.i = and i1 %i.bj, %i.bi, !dbg !1212
  br i1 %or.cond.i, label %bb.n, label %bb.m, !dbg !1212, !prof !158

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.bf, i64 noundef %i.bh, i64 noundef 720, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #20, !dbg !1213, !noalias !1021
  unreachable, !dbg !1213

bb.n:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.bh, !dbg !1214
  %i.bl = icmp samesign eq i64 %i.bh, %i.bf, !dbg !1215
  br i1 %i.bl, label %._crit_edge43.i, label %.lr.ph42.split.us.preheader.i, !dbg !1216

.lr.ph42.split.us.preheader.i:                    ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.bf, !dbg !1217
  br label %.lr.ph42.split.us.i, !dbg !1218

.lr.ph42.split.us.i:                              ; preds = %bb.ac, %.lr.ph42.split.us.preheader.i
  %.sroa.05.040.us.i = phi i32 [ %i.ek, %bb.ac ], [ %i.be, %.lr.ph42.split.us.preheader.i ] ; 2 uses
  %.sroa.09.039.us.i = phi ptr [ %i.bn, %bb.ac ], [ %i.bm, %.lr.ph42.split.us.preheader.i ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.09.039.us.i, i64 2, !dbg !1219 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1023), !dbg !1220
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1024), !dbg !1220
  %.promoted.i.us.i = load i32, ptr %i.g, align 8, !alias.scope !1025, !noalias !1026 ; 11 uses
  %i.bo = sub i32 64, %.promoted.i.us.i, !dbg !1221
  %.not.i.us.i = icmp ult i32 %i.bo, %i.s, !dbg !1218
  %.promoted14.i.us.i = load i64, ptr %i.f, align 8, !alias.scope !1025, !noalias !1026 ; 2 uses
  br i1 %.not.i.us.i, label %.lr.ph.i.us.i, label %._crit_edge.i.us.i, !dbg !1218

.lr.ph.i.us.i:                                    ; preds = %.lr.ph42.split.us.i
  %.promoted17.i.us.i = load i32, ptr %i.h, align 8, !alias.scope !1025, !noalias !1026 ; 6 uses
  %.promoted18.i.us.i = load i32, ptr %i.i, align 4, !alias.scope !1025, !noalias !1026 ; 6 uses
  %i.bp = icmp eq i32 %.promoted17.i.us.i, 0, !dbg !1222
  br i1 %i.bp, label %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i, label %bb.o, !dbg !1222, !prof !168

bb.o:                                             ; preds = %.lr.ph.i.us.i
  %i.bq = lshr i64 %.promoted14.i.us.i, 8, !dbg !1223 ; 2 uses
  store i64 %i.bq, ptr %i.f, align 8, !dbg !1223, !alias.scope !1025, !noalias !1026
  %i.br = zext i32 %.promoted18.i.us.i to i64, !dbg !1224 ; 3 uses
  %i.bs = icmp samesign ugt i64 %8, %i.br, !dbg !1225
  br i1 %i.bs, label %bb.p, label %.split.us.i, !dbg !1225

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 %i.br, !dbg !1225
  %i.bu = load i8, ptr %i.bt, align 1, !dbg !1225, !alias.scope !1027, !noalias !1028, !noundef !107
  %i.bv = zext i8 %i.bu to i64, !dbg !1226
  %i.bw = shl nuw i64 %i.bv, 56, !dbg !1226
  %i.bx = or disjoint i64 %i.bw, %i.bq, !dbg !1227 ; 3 uses
  store i64 %i.bx, ptr %i.f, align 8, !dbg !1227, !alias.scope !1025, !noalias !1026
  %i.by = add i32 %.promoted.i.us.i, -8, !dbg !1228 ; 2 uses
  store i32 %i.by, ptr %i.g, align 8, !dbg !1228, !alias.scope !1025, !noalias !1026
  %i.bz = add i32 %.promoted17.i.us.i, -1, !dbg !1229 ; 2 uses
  store i32 %i.bz, ptr %i.h, align 8, !dbg !1229, !alias.scope !1025, !noalias !1026
  %i.ca = add i32 %.promoted18.i.us.i, 1, !dbg !1230 ; 2 uses
  store i32 %i.ca, ptr %i.i, align 4, !dbg !1230, !alias.scope !1025, !noalias !1026
  %i.cb = sub i32 72, %.promoted.i.us.i, !dbg !1221
  %.not19.i.us.i = icmp ult i32 %i.cb, %i.s, !dbg !1218
  br i1 %.not19.i.us.i, label %bb.q, label %._crit_edge.i.us.i, !dbg !1218

bb.q:                                             ; preds = %bb.p
  %i.cc = icmp eq i32 %i.bz, 0, !dbg !1222
  br i1 %i.cc, label %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i, label %bb.r, !dbg !1222, !prof !168

bb.r:                                             ; preds = %bb.q
  %i.cd = lshr i64 %i.bx, 8, !dbg !1223           ; 2 uses
  store i64 %i.cd, ptr %i.f, align 8, !dbg !1223, !alias.scope !1025, !noalias !1026
  %i.ce = zext i32 %i.ca to i64, !dbg !1224       ; 3 uses
  %i.cf = icmp samesign ugt i64 %8, %i.ce, !dbg !1225
  br i1 %i.cf, label %bb.s, label %.split.us.i, !dbg !1225

bb.s:                                             ; preds = %bb.r
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 %i.ce, !dbg !1225
  %i.ch = load i8, ptr %i.cg, align 1, !dbg !1225, !alias.scope !1027, !noalias !1028, !noundef !107
  %i.ci = zext i8 %i.ch to i64, !dbg !1226
  %i.cj = shl nuw i64 %i.ci, 56, !dbg !1226
  %i.ck = or disjoint i64 %i.cj, %i.cd, !dbg !1227 ; 3 uses
  store i64 %i.ck, ptr %i.f, align 8, !dbg !1227, !alias.scope !1025, !noalias !1026
  %i.cl = add i32 %.promoted.i.us.i, -16, !dbg !1228 ; 2 uses
  store i32 %i.cl, ptr %i.g, align 8, !dbg !1228, !alias.scope !1025, !noalias !1026
  %i.cm = add i32 %.promoted17.i.us.i, -2, !dbg !1229 ; 2 uses
  store i32 %i.cm, ptr %i.h, align 8, !dbg !1229, !alias.scope !1025, !noalias !1026
  %i.cn = add i32 %.promoted18.i.us.i, 2, !dbg !1230 ; 2 uses
  store i32 %i.cn, ptr %i.i, align 4, !dbg !1230, !alias.scope !1025, !noalias !1026
  %i.co = sub i32 80, %.promoted.i.us.i, !dbg !1221
  %.not19.i.us.i.1 = icmp ult i32 %i.co, %i.s, !dbg !1218
  br i1 %.not19.i.us.i.1, label %bb.t, label %._crit_edge.i.us.i, !dbg !1218

bb.t:                                             ; preds = %bb.s
  %i.cp = icmp eq i32 %i.cm, 0, !dbg !1222
  br i1 %i.cp, label %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i, label %bb.u, !dbg !1222, !prof !168

bb.u:                                             ; preds = %bb.t
  %i.cq = lshr i64 %i.ck, 8, !dbg !1223           ; 2 uses
  store i64 %i.cq, ptr %i.f, align 8, !dbg !1223, !alias.scope !1025, !noalias !1026
  %i.cr = zext i32 %i.cn to i64, !dbg !1224       ; 3 uses
  %i.cs = icmp samesign ugt i64 %8, %i.cr, !dbg !1225
  br i1 %i.cs, label %bb.v, label %.split.us.i, !dbg !1225

bb.v:                                             ; preds = %bb.u
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 %i.cr, !dbg !1225
  %i.cu = load i8, ptr %i.ct, align 1, !dbg !1225, !alias.scope !1027, !noalias !1028, !noundef !107
  %i.cv = zext i8 %i.cu to i64, !dbg !1226
  %i.cw = shl nuw i64 %i.cv, 56, !dbg !1226
  %i.cx = or disjoint i64 %i.cw, %i.cq, !dbg !1227 ; 3 uses
  store i64 %i.cx, ptr %i.f, align 8, !dbg !1227, !alias.scope !1025, !noalias !1026
  %i.cy = add i32 %.promoted.i.us.i, -24, !dbg !1228 ; 2 uses
  store i32 %i.cy, ptr %i.g, align 8, !dbg !1228, !alias.scope !1025, !noalias !1026
  %i.cz = add i32 %.promoted17.i.us.i, -3, !dbg !1229 ; 2 uses
  store i32 %i.cz, ptr %i.h, align 8, !dbg !1229, !alias.scope !1025, !noalias !1026
  %i.da = add i32 %.promoted18.i.us.i, 3, !dbg !1230 ; 2 uses
  store i32 %i.da, ptr %i.i, align 4, !dbg !1230, !alias.scope !1025, !noalias !1026
  %i.db = sub i32 88, %.promoted.i.us.i, !dbg !1221
  %.not19.i.us.i.2 = icmp ult i32 %i.db, %i.s, !dbg !1218
  br i1 %.not19.i.us.i.2, label %bb.w, label %._crit_edge.i.us.i, !dbg !1218

bb.w:                                             ; preds = %bb.v
  %i.dc = icmp eq i32 %i.cz, 0, !dbg !1222
  br i1 %i.dc, label %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i, label %bb.x, !dbg !1222, !prof !168

bb.x:                                             ; preds = %bb.w
  %i.dd = lshr i64 %i.cx, 8, !dbg !1223           ; 2 uses
  store i64 %i.dd, ptr %i.f, align 8, !dbg !1223, !alias.scope !1025, !noalias !1026
  %i.de = zext i32 %i.da to i64, !dbg !1224       ; 3 uses
  %i.df = icmp samesign ugt i64 %8, %i.de, !dbg !1225
  br i1 %i.df, label %bb.y, label %.split.us.i, !dbg !1225

bb.y:                                             ; preds = %bb.x
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 %i.de, !dbg !1225
  %i.dh = load i8, ptr %i.dg, align 1, !dbg !1225, !alias.scope !1027, !noalias !1028, !noundef !107
  %i.di = zext i8 %i.dh to i64, !dbg !1226
  %i.dj = shl nuw i64 %i.di, 56, !dbg !1226
  %i.dk = or disjoint i64 %i.dj, %i.dd, !dbg !1227 ; 3 uses
  store i64 %i.dk, ptr %i.f, align 8, !dbg !1227, !alias.scope !1025, !noalias !1026
  %i.dl = add i32 %.promoted.i.us.i, -32, !dbg !1228 ; 2 uses
  store i32 %i.dl, ptr %i.g, align 8, !dbg !1228, !alias.scope !1025, !noalias !1026
  %i.dm = add i32 %.promoted17.i.us.i, -4, !dbg !1229 ; 2 uses
  store i32 %i.dm, ptr %i.h, align 8, !dbg !1229, !alias.scope !1025, !noalias !1026
  %i.dn = add i32 %.promoted18.i.us.i, 4, !dbg !1230 ; 2 uses
  store i32 %i.dn, ptr %i.i, align 4, !dbg !1230, !alias.scope !1025, !noalias !1026
  %i.do = sub i32 96, %.promoted.i.us.i, !dbg !1221
  %.not19.i.us.i.3 = icmp ult i32 %i.do, %i.s, !dbg !1218
  br i1 %.not19.i.us.i.3, label %bb.z, label %._crit_edge.i.us.i, !dbg !1218

bb.z:                                             ; preds = %bb.y
  %i.dp = icmp eq i32 %i.dm, 0, !dbg !1222
  br i1 %i.dp, label %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i, label %bb.aa, !dbg !1222, !prof !168

bb.aa:                                            ; preds = %bb.z
  %i.dq = lshr i64 %i.dk, 8, !dbg !1223           ; 2 uses
  store i64 %i.dq, ptr %i.f, align 8, !dbg !1223, !alias.scope !1025, !noalias !1026
  %i.dr = zext i32 %i.dn to i64, !dbg !1224       ; 3 uses
  %i.ds = icmp samesign ugt i64 %8, %i.dr, !dbg !1225
  br i1 %i.ds, label %bb.ab, label %.split.us.i, !dbg !1225

bb.ab:                                            ; preds = %bb.aa
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 %i.dr, !dbg !1225
  %i.du = load i8, ptr %i.dt, align 1, !dbg !1225, !alias.scope !1027, !noalias !1028, !noundef !107
  %i.dv = zext i8 %i.du to i64, !dbg !1226
  %i.dw = shl nuw i64 %i.dv, 56, !dbg !1226
  %i.dx = or disjoint i64 %i.dw, %i.dq, !dbg !1227 ; 2 uses
  store i64 %i.dx, ptr %i.f, align 8, !dbg !1227, !alias.scope !1025, !noalias !1026
  %i.dy = add i32 %.promoted.i.us.i, -40, !dbg !1228 ; 2 uses
  store i32 %i.dy, ptr %i.g, align 8, !dbg !1228, !alias.scope !1025, !noalias !1026
  %i.dz = add i32 %.promoted17.i.us.i, -5, !dbg !1229
  store i32 %i.dz, ptr %i.h, align 8, !dbg !1229, !alias.scope !1025, !noalias !1026
  %i.ea = add i32 %.promoted18.i.us.i, 5, !dbg !1230
  store i32 %i.ea, ptr %i.i, align 4, !dbg !1230, !alias.scope !1025, !noalias !1026
  br label %._crit_edge.i.us.i, !dbg !1218

._crit_edge.i.us.i:                               ; preds = %bb.p, %bb.s, %bb.v, %bb.y, %bb.ab, %.lr.ph42.split.us.i
  %i.eb = phi i64 [ %.promoted14.i.us.i, %.lr.ph42.split.us.i ], [ %i.bx, %bb.p ], [ %i.ck, %bb.s ], [ %i.cx, %bb.v ], [ %i.dk, %bb.y ], [ %i.dx, %bb.ab ], !dbg !1231
  %.lcssa7.i.us.i = phi i32 [ %.promoted.i.us.i, %.lr.ph42.split.us.i ], [ %i.by, %bb.p ], [ %i.cl, %bb.s ], [ %i.cy, %bb.v ], [ %i.dl, %bb.y ], [ %i.dy, %bb.ab ], !dbg !1232 ; 2 uses
  %i.ec = and i32 %.lcssa7.i.us.i, 63, !dbg !1231
  %i.ed = zext nneg i32 %i.ec to i64, !dbg !1231
  %i.ee = lshr i64 %i.eb, %i.ed, !dbg !1231
  %i.ef = trunc i64 %i.ee to i32, !dbg !1233
  %i.eg = load i32, ptr %i.u, align 4, !dbg !1234, !noalias !1029, !noundef !107
  %i.eh = and i32 %i.eg, %i.ef, !dbg !1235        ; 2 uses
  %i.ei = add i32 %.lcssa7.i.us.i, %i.s, !dbg !1236
  store i32 %i.ei, ptr %i.g, align 8, !dbg !1236, !alias.scope !1025, !noalias !1026
  %.not.us.i = icmp ult i32 %i.eh, %1, !dbg !1237
  br i1 %.not.us.i, label %bb.ac, label %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit, !dbg !1237

bb.ac:                                            ; preds = %._crit_edge.i.us.i
  %i.ej = trunc i32 %i.eh to i16, !dbg !1238
  store i16 %i.ej, ptr %.sroa.09.039.us.i, align 2, !dbg !1238, !alias.scope !1018, !noalias !1019
  %i.ek = add i32 %.sroa.05.040.us.i, 1, !dbg !1239
  %i.el = icmp eq ptr %i.bn, %i.bk, !dbg !1215
  br i1 %i.el, label %._crit_edge43.i, label %.lr.ph42.split.us.i, !dbg !1216

.split.us.i:                                      ; preds = %bb.aa, %bb.x, %bb.u, %bb.r, %bb.o
  %.lcssa = phi i64 [ %i.br, %bb.o ], [ %i.ce, %bb.r ], [ %i.cr, %bb.u ], [ %i.de, %bb.x ], [ %i.dr, %bb.aa ], !dbg !1224
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa, i64 noundef range(i64 0, -9223372036854775808) %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #20, !dbg !1225, !noalias !1029
  unreachable, !dbg !1225

_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i: ; preds = %bb.z, %bb.w, %bb.t, %bb.q, %.lr.ph.i.us.i
  store i32 %.sroa.05.040.us.i, ptr %i.e, align 4, !dbg !1240, !alias.scope !1018, !noalias !1019
  store i8 2, ptr %i.b, align 8, !dbg !1241, !alias.scope !1018, !noalias !1019
  br label %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit, !dbg !1242

._crit_edge43.i:                                  ; preds = %bb.ac, %bb.n
  %.idx.i = shl nuw nsw i64 %i.bg, 1, !dbg !1243  ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i, !dbg !1243
  %i.en = icmp eq i32 %i.bd, 0, !dbg !1244
  br i1 %i.en, label %_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode24ReadSimpleHuffmanSymbolsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB1a_B1a_ECsfISxE4fmY1Y_14polars_parquet.exit.loopexit, label %.lr.ph52.preheader.i, !dbg !1245

.lr.ph52.preheader.i:                             ; preds = %._crit_edge43.i
  %i.eo = getelementptr i8, ptr %6, i64 %.idx.i, !dbg !1246
  %scevgep.i = getelementptr i8, ptr %i.eo, i64 258, !dbg !1246
  br label %.lr.ph52.i, !dbg !1246

.lr.ph52.i:                                       ; preds = %._crit_edge48.i, %.lr.ph52.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph52.preheader.i ], [ %i.eq, %._crit_edge48.i ] ; 3 uses
  %.sroa.011.049.i = phi ptr [ %i.m, %.lr.ph52.preheader.i ], [ %i.ep, %._crit_edge48.i ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.011.049.i, i64 2, !dbg !1247 ; 2 uses
  %i.eq = add nuw nsw i64 %indvars.iv.i, 1, !dbg !1248 ; 2 uses
  %exitcond.i = icmp eq i64 %indvars.iv.i, %i.bh, !dbg !1246
  br i1 %exitcond.i, label %bb.ad, label %9, !dbg !1246, !prof !132

9:                                                ; preds = %.lr.ph52.i
  %10 = icmp eq i64 %indvars.iv.i, %i.bg, !dbg !1249
  br i1 %10, label %._crit_edge48.i, label %.lr.ph47.i, !dbg !1250

.lr.ph47.i:                                       ; preds = %9
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.eq, !dbg !1251
  %i.es = load i16, ptr %.sroa.011.049.i, align 2, !alias.scope !1018, !noalias !1019, !noundef !107
  br label %bb.af, !dbg !1250

bb.ad:                                            ; preds = %.lr.ph52.i
  %i.et = add nuw nsw i64 %i.bg, 2, !dbg !1246
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.et, i64 noundef %i.bh, i64 noundef 720, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #20, !dbg !1252, !noalias !1021
  unreachable, !dbg !1252

bb.ae:                                            ; preds = %bb.af
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.014.045.i, i64 2, !dbg !1253 ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %scevgep.i, !dbg !1249
  br i1 %i.ev, label %._crit_edge48.i, label %bb.af, !dbg !1250

bb.af:                                            ; preds = %bb.ae, %.lr.ph47.i
  %.sroa.014.045.i = phi ptr [ %i.er, %.lr.ph47.i ], [ %i.eu, %bb.ae ] ; 2 uses
  %i.ew = load i16, ptr %.sroa.014.045.i, align 2, !dbg !1254, !alias.scope !1018, !noalias !1019, !noundef !107
  %i.ex = icmp eq i16 %i.es, %i.ew, !dbg !1255
  br i1 %i.ex, label %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit, label %bb.ae, !dbg !1255

._crit_edge48.i:                                  ; preds = %bb.ae, %9
  %i.ey = icmp eq ptr %i.ep, %i.em, !dbg !1244
  br i1 %i.ey, label %_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode24ReadSimpleHuffmanSymbolsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB1a_B1a_ECsfISxE4fmY1Y_14polars_parquet.exit.loopexit, label %.lr.ph52.i, !dbg !1245

bb.ag:                                            ; preds = %_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode24ReadSimpleHuffmanSymbolsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB1a_B1a_ECsfISxE4fmY1Y_14polars_parquet.exit.loopexit, %bb.a
  %i.ez = load i32, ptr %i.n, align 4, !dbg !1256, !noundef !107 ; 2 uses
  %i.fa = icmp eq i32 %i.ez, 3, !dbg !1257
  br i1 %i.fa, label %bb.bp, label %bb.bt, !dbg !1257

bb.ah:                                            ; preds = %bb.d, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1042), !dbg !1258
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1043), !dbg !1258
  %i.fb = load i32, ptr %i.e, align 4, !dbg !1259, !alias.scope !1042, !noalias !1043, !noundef !107 ; 3 uses
  %i.fc = zext i32 %i.fb to i64, !dbg !1260       ; 2 uses
  %i.fd = icmp ugt i32 %i.fb, 18, !dbg !1261
  br i1 %i.fd, label %bb.aj, label %bb.ai, !dbg !1261, !prof !132

bb.ai:                                            ; preds = %bb.ah
  %i.fe = load i32, ptr %i.d, align 4, !dbg !1262, !alias.scope !1042, !noalias !1043, !noundef !107 ; 2 uses
  %i.ff = load i32, ptr %i.c, align 8, !dbg !1263, !alias.scope !1042, !noalias !1043, !noundef !107 ; 2 uses
  %i.fg = icmp eq i32 %i.fb, 18, !dbg !1264
  br i1 %i.fg, label %._crit_edge.i49, label %.lr.ph.i46, !dbg !1265

bb.aj:                                            ; preds = %bb.ah
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.fc, i64 noundef 18, i64 noundef 18, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #20, !dbg !1266, !noalias !1046
  unreachable, !dbg !1266

.lr.ph.i46:                                       ; preds = %bb.ai, %bb.ao
  %.sroa.02.042.i = phi i32 [ %.sroa.02.1.i, %bb.ao ], [ %i.ff, %bb.ai ] ; 3 uses
  %.sroa.05.040.i = phi i32 [ %.sroa.05.1.i, %bb.ao ], [ %i.fe, %bb.ai ] ; 3 uses
  %.sroa.011.0.idx37.i = phi i64 [ %.sroa.011.0.add.i, %bb.ao ], [ %i.fc, %bb.ai ] ; 3 uses
  %.sroa.011.0.ptr.i = getelementptr inbounds nuw i8, ptr @77, i64 %.sroa.011.0.idx37.i, !dbg !1264
  %.sroa.011.0.add.i = add nuw nsw i64 %.sroa.011.0.idx37.i, 1, !dbg !1267 ; 2 uses
  %i.fh = load i8, ptr %.sroa.011.0.ptr.i, align 1, !dbg !1268, !noalias !1046, !noundef !107
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1047), !dbg !1269
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1048), !dbg !1269
  %.promoted.i.i = load i32, ptr %i.g, align 8, !alias.scope !1049, !noalias !1050 ; 7 uses
  %i.fi = add i32 %.promoted.i.i, -61, !dbg !1270
  %.not.i.i = icmp ult i32 %i.fi, 4, !dbg !1270
  %.promoted11.i.i = load i64, ptr %i.f, align 8, !alias.scope !1049, !noalias !1050 ; 3 uses
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.i, !dbg !1270

.lr.ph.i.i:                                       ; preds = %.lr.ph.i46
  %.promoted13.i.i = load i32, ptr %i.h, align 8, !alias.scope !1049, !noalias !1050 ; 2 uses
  %.promoted14.i.i = load i32, ptr %i.i, align 4, !alias.scope !1049, !noalias !1050 ; 2 uses
  %i.fj = icmp eq i32 %.promoted13.i.i, 0, !dbg !1271
  br i1 %i.fj, label %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.i, label %bb.ak, !dbg !1271

_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.i: ; preds = %.lr.ph.i46, %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.loopexit.i
  %i.fk = phi i64 [ %i.fv, %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.loopexit.i ], [ %.promoted11.i.i, %.lr.ph.i46 ], !dbg !1272
  %.lcssa7.i.i = phi i32 [ %i.fw, %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.loopexit.i ], [ %.promoted.i.i, %.lr.ph.i46 ], !dbg !1273 ; 2 uses
  %i.fl = and i32 %.lcssa7.i.i, 63, !dbg !1272
  %i.fm = zext nneg i32 %i.fl to i64, !dbg !1272
  %i.fn = lshr i64 %i.fk, %i.fm, !dbg !1272
  %.pre.i47 = and i64 %i.fn, 15, !dbg !1274       ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr @78, i64 %.pre.i47
  %.pre58.i = load i8, ptr %.phi.trans.insert.i, align 1, !dbg !1275, !noalias !1046
  %.pre59.i = zext i8 %.pre58.i to i32, !dbg !1276
  br label %bb.an, !dbg !1269

bb.ak:                                            ; preds = %.lr.ph.i.i
  %i.fo = lshr i64 %.promoted11.i.i, 8, !dbg !1277 ; 2 uses
  store i64 %i.fo, ptr %i.f, align 8, !dbg !1277, !alias.scope !1049, !noalias !1050
  %i.fp = zext i32 %.promoted14.i.i to i64, !dbg !1278 ; 3 uses
  %i.fq = icmp samesign ugt i64 %8, %i.fp, !dbg !1279
  br i1 %i.fq, label %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.loopexit.i, label %bb.al, !dbg !1279

_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.loopexit.i: ; preds = %bb.ak
  %i.fr = getelementptr inbounds nuw i8, ptr %7, i64 %i.fp, !dbg !1279
  %i.fs = load i8, ptr %i.fr, align 1, !dbg !1279, !alias.scope !1052, !noalias !1053, !noundef !107
  %i.ft = zext i8 %i.fs to i64, !dbg !1280
  %i.fu = shl nuw i64 %i.ft, 56, !dbg !1280
  %i.fv = or disjoint i64 %i.fu, %i.fo, !dbg !1281 ; 2 uses
  store i64 %i.fv, ptr %i.f, align 8, !dbg !1281, !alias.scope !1049, !noalias !1050
  %i.fw = add nsw i32 %.promoted.i.i, -8, !dbg !1282
  %i.fx = add i32 %.promoted13.i.i, -1, !dbg !1283
  store i32 %i.fx, ptr %i.h, align 8, !dbg !1283, !alias.scope !1049, !noalias !1050
  %i.fy = add i32 %.promoted14.i.i, 1, !dbg !1284
  store i32 %i.fy, ptr %i.i, align 4, !dbg !1284, !alias.scope !1049, !noalias !1050
  br label %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.i, !dbg !1272

bb.al:                                            ; preds = %bb.ak
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fp, i64 noundef range(i64 0, -9223372036854775808) %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #20, !dbg !1279, !noalias !1054
  unreachable, !dbg !1279

_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.i: ; preds = %.lr.ph.i.i
  %i.fz = sub nuw nsw i32 64, %.promoted.i.i, !dbg !1285
  %i.ga = icmp eq i32 %.promoted.i.i, 64, !dbg !1286
  %i.gb = and i32 %.promoted.i.i, 63, !dbg !1286
  %i.gc = zext nneg i32 %i.gb to i64, !dbg !1286
  %i.gd = lshr i64 %.promoted11.i.i, %i.gc, !dbg !1286
  %i.ge = and i64 %i.gd, 15, !dbg !1286
  %storemerge.i = select i1 %i.ga, i64 0, i64 %i.ge, !dbg !1286 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr @78, i64 %storemerge.i, !dbg !1287
  %i.gg = load i8, ptr %i.gf, align 1, !dbg !1287, !noalias !1046, !noundef !107
  %i.gh = zext i8 %i.gg to i32, !dbg !1288        ; 2 uses
  %i.gi = icmp samesign ult i32 %i.fz, %i.gh, !dbg !1289
  br i1 %i.gi, label %bb.am, label %bb.an, !dbg !1289

bb.am:                                            ; preds = %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.i
  %indvars57.le.i = trunc i64 %.sroa.011.0.idx37.i to i32
  store i32 %indvars57.le.i, ptr %i.e, align 4, !dbg !1290, !alias.scope !1042, !noalias !1043
  store i32 %.sroa.02.042.i, ptr %i.c, align 8, !dbg !1291, !alias.scope !1042, !noalias !1043
  store i32 %.sroa.05.040.i, ptr %i.d, align 4, !dbg !1292, !alias.scope !1042, !noalias !1043
  store i8 4, ptr %i.b, align 8, !dbg !1293, !alias.scope !1042, !noalias !1043
  br label %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit, !dbg !1294

bb.an:                                            ; preds = %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.i, %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.i
  %.pre-phi60.i = phi i32 [ %.pre59.i, %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.i ], [ %i.gh, %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.i ], !dbg !1276
  %i.gj = phi i32 [ %.lcssa7.i.i, %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.i ], [ %.promoted.i.i, %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.i ], !dbg !1295
  %.pre-phi.i = phi i64 [ %.pre.i47, %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.thread.i ], [ %storemerge.i, %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader17BrotliSafeGetBits.exit.i ], !dbg !1296 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr @79, i64 %.pre-phi.i, !dbg !1297
  %i.gl = load i8, ptr %i.gk, align 1, !dbg !1297, !noalias !1046, !noundef !107 ; 3 uses
  %i.gm = add i32 %i.gj, %.pre-phi60.i, !dbg !1295
  store i32 %i.gm, ptr %i.g, align 8, !dbg !1295, !alias.scope !1042, !noalias !1043
  %i.gn = zext i8 %i.fh to i64, !dbg !1298
  %i.go = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.gn, !dbg !1299
  store i8 %i.gl, ptr %i.go, align 1, !dbg !1299, !alias.scope !1042, !noalias !1043
  %i.gp = shl nuw nsw i64 1, %.pre-phi.i, !dbg !1300
  %i.gq = and i64 %i.gp, 4369, !dbg !1300
  %.not.i48 = icmp eq i64 %i.gq, 0, !dbg !1300
  br i1 %.not.i48, label %bb.ap, label %bb.ao, !dbg !1300

bb.ao:                                            ; preds = %bb.ap, %bb.an
  %.sroa.05.1.i = phi i32 [ %.sroa.05.040.i, %bb.an ], [ %i.gv, %bb.ap ], !dbg !1301 ; 2 uses
  %.sroa.02.1.i = phi i32 [ %.sroa.02.042.i, %bb.an ], [ %i.gw, %bb.ap ], !dbg !1302 ; 2 uses
  %i.gr = icmp eq i64 %.sroa.011.0.add.i, 18, !dbg !1264
  br i1 %i.gr, label %._crit_edge.i49, label %.lr.ph.i46, !dbg !1265

bb.ap:                                            ; preds = %bb.an
  %i.gs = and i8 %i.gl, 31, !dbg !1303
  %i.gt = zext nneg i8 %i.gs to i32, !dbg !1303
  %i.gu = lshr i32 32, %i.gt, !dbg !1303
  %i.gv = sub i32 %.sroa.05.040.i, %i.gu, !dbg !1304 ; 3 uses
  %i.gw = add i32 %.sroa.02.042.i, 1, !dbg !1305  ; 2 uses
  %i.gx = zext i8 %i.gl to i64, !dbg !1306
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.gx, !dbg !1307 ; 2 uses
  %i.gz = load i16, ptr %i.gy, align 2, !dbg !1307, !alias.scope !1042, !noalias !1043, !noundef !107
  %i.ha = add i16 %i.gz, 1, !dbg !1307
  store i16 %i.ha, ptr %i.gy, align 2, !dbg !1307, !alias.scope !1042, !noalias !1043
  %i.hb = add i32 %i.gv, -33, !dbg !1308
  %i.hc = icmp ult i32 %i.hb, -32, !dbg !1308
  br i1 %i.hc, label %._crit_edge.i49, label %bb.ao, !dbg !1308

._crit_edge.i49:                                  ; preds = %bb.ap, %bb.ao, %bb.ai
  %.sroa.05.2.i = phi i32 [ %i.fe, %bb.ai ], [ %.sroa.05.1.i, %bb.ao ], [ %i.gv, %bb.ap ], !dbg !1301
  %.sroa.02.2.i = phi i32 [ %i.ff, %bb.ai ], [ %.sroa.02.1.i, %bb.ao ], [ %i.gw, %bb.ap ], !dbg !1302
  %i.hd = icmp eq i32 %.sroa.02.2.i, 1, !dbg !1309
  %i.he = icmp eq i32 %.sroa.05.2.i, 0
  %or.cond.i50 = select i1 %i.hd, i1 true, i1 %i.he, !dbg !1309
  br i1 %or.cond.i50, label %_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode25ReadCodeLengthCodeLengthsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB1b_B1b_ECsfISxE4fmY1Y_14polars_parquet.exit, label %_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit, !dbg !1310

bb.aq:                                            ; preds = %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1058), !dbg !1311
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1059), !dbg !1311
  %i.hf = load i32, ptr %i.n, align 4, !dbg !1312, !alias.scope !1058, !noalias !1059, !noundef !107 ; 3 uses
  %i.hg = load i32, ptr %i.c, align 8, !dbg !1313, !alias.scope !1058, !noalias !1059, !noundef !107
  %i.hh = load i32, ptr %i.d, align 4, !dbg !1314, !alias.scope !1058, !noalias !1059, !noundef !107 ; 4 uses
  %i.hi = load i32, ptr %i.o, align 8, !dbg !1315, !alias.scope !1058, !noalias !1059, !noundef !107
  %i.hj = load i32, ptr %i.p, align 4, !dbg !1316, !alias.scope !1058, !noalias !1059, !noundef !107
  %i.hk = load i32, ptr %i.g, align 8, !dbg !1317, !alias.scope !1058, !noalias !1059, !noundef !107
  %i.hl = icmp eq i32 %i.hk, 64, !dbg !1318
  br i1 %i.hl, label %bb.ar, label %bb.av, !dbg !1318

bb.ar:                                            ; preds = %bb.aq
  %i.hm = load i32, ptr %i.h, align 8, !dbg !1319, !alias.scope !1058, !noalias !1059, !noundef !107 ; 2 uses
  %i.hn = icmp eq i32 %i.hm, 0, !dbg !1319
  br i1 %i.hn, label %_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode21ReadSymbolCodeLengthsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsfISxE4fmY1Y_14polars_parquet.exit.thread, label %bb.as, !dbg !1319

bb.as:                                            ; preds = %bb.ar
  %i.ho = load i64, ptr %i.f, align 8, !dbg !1320, !alias.scope !1058, !noalias !1059, !noundef !107
  %i.hp = lshr i64 %i.ho, 8, !dbg !1320           ; 2 uses
  store i64 %i.hp, ptr %i.f, align 8, !dbg !1320, !alias.scope !1058, !noalias !1059
  %i.hq = load i32, ptr %i.i, align 4, !dbg !1321, !alias.scope !1058, !noalias !1059, !noundef !107 ; 2 uses
  %i.hr = zext i32 %i.hq to i64, !dbg !1321       ; 3 uses
  %i.hs = icmp samesign ugt i64 %8, %i.hr, !dbg !1322
  br i1 %i.hs, label %bb.at, label %bb.au, !dbg !1322

bb.at:                                            ; preds = %bb.as
  %i.ht = getelementptr inbounds nuw i8, ptr %7, i64 %i.hr, !dbg !1322
  %i.hu = load i8, ptr %i.ht, align 1, !dbg !1322, !alias.scope !1059, !noalias !1058, !noundef !107
  %i.hv = zext i8 %i.hu to i64, !dbg !1323
  %i.hw = shl nuw i64 %i.hv, 56, !dbg !1323
  %i.hx = or disjoint i64 %i.hw, %i.hp, !dbg !1324
  store i64 %i.hx, ptr %i.f, align 8, !dbg !1324, !alias.scope !1058, !noalias !1059
  store i32 56, ptr %i.g, align 8, !dbg !1325, !alias.scope !1058, !noalias !1059
  %i.hy = add i32 %i.hm, -1, !dbg !1326
  store i32 %i.hy, ptr %i.h, align 8, !dbg !1326, !alias.scope !1058, !noalias !1059
  %i.hz = add i32 %i.hq, 1, !dbg !1327
  store i32 %i.hz, ptr %i.i, align 4, !dbg !1327, !alias.scope !1058, !noalias !1059
  br label %bb.av, !dbg !1328

bb.au:                                            ; preds = %bb.as
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.hr, i64 noundef range(i64 0, -9223372036854775808) %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #20, !dbg !1322, !noalias !1061
  unreachable, !dbg !1322

bb.av:                                            ; preds = %bb.at, %bb.aq
  %i.ia = icmp ult i32 %i.hf, %1, !dbg !1329
  %i.ib = icmp ne i32 %i.hh, 0
  %or.cond58.i = and i1 %i.ia, %i.ib, !dbg !1329
  br i1 %or.cond58.i, label %.lr.ph.i51, label %_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode21ReadSymbolCodeLengthsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsfISxE4fmY1Y_14polars_parquet.exit.thread81, !dbg !1329
end_hunk_0
begin_hunk_1_@llvm.ctlz.i32
!611 = !{!554, !552, !550, !548, !546, !544, !542}
!612 = !{!578, !576, !574, !572, !570, !568, !566}
!613 = !{!602, !600, !598, !596, !594, !592, !590}
!614 = !DILocation(line: 810, column: 1, scope: !410)
!615 = !DILocation(line: 612, column: 33, scope: !23, inlinedAt: !420)
!616 = !DILocation(line: 779, column: 12, scope: !25, inlinedAt: !418)
!617 = !DILocation(line: 810, column: 1, scope: !29, inlinedAt: !414)
!618 = !DILocation(line: 780, column: 13, scope: !25, inlinedAt: !418)
!619 = !DILocation(line: 612, column: 33, scope: !23, inlinedAt: !444)
!620 = !DILocation(line: 779, column: 12, scope: !25, inlinedAt: !442)
!621 = !DILocation(line: 810, column: 1, scope: !29, inlinedAt: !438)
!622 = !DILocation(line: 780, column: 13, scope: !25, inlinedAt: !442)
!623 = !DILocation(line: 810, column: 1, scope: !435, inlinedAt: !436)
!624 = !DILocation(line: 810, column: 1, scope: !1, inlinedAt: !461)
!625 = !DILocation(line: 810, column: 1, scope: !2, inlinedAt: !462)
!626 = !DILocation(line: 810, column: 1, scope: !3, inlinedAt: !463)
!627 = !DILocation(line: 810, column: 1, scope: !3, inlinedAt: !464)
!628 = !DILocation(line: 810, column: 1, scope: !1, inlinedAt: !467)
!629 = !DILocation(line: 810, column: 1, scope: !2, inlinedAt: !468)
!630 = !DILocation(line: 810, column: 1, scope: !3, inlinedAt: !469)
!631 = !DILocation(line: 810, column: 1, scope: !3, inlinedAt: !470)
!632 = !DILocation(line: 612, column: 33, scope: !23, inlinedAt: !480)
!633 = !DILocation(line: 779, column: 12, scope: !25, inlinedAt: !478)
!634 = !DILocation(line: 810, column: 1, scope: !29, inlinedAt: !474)
!635 = !DILocation(line: 780, column: 13, scope: !25, inlinedAt: !478)
!636 = !DILocation(line: 810, column: 1, scope: !471, inlinedAt: !472)
!637 = !DILocation(line: 810, column: 1, scope: !1, inlinedAt: !497)
!638 = !DILocation(line: 810, column: 1, scope: !2, inlinedAt: !498)
!639 = !DILocation(line: 810, column: 1, scope: !3, inlinedAt: !499)
!640 = !DILocation(line: 810, column: 1, scope: !3, inlinedAt: !500)
!641 = !DILocation(line: 810, column: 1, scope: !1, inlinedAt: !503)
!642 = !DILocation(line: 810, column: 1, scope: !2, inlinedAt: !504)
!643 = !DILocation(line: 810, column: 1, scope: !3, inlinedAt: !505)
!644 = !DILocation(line: 810, column: 1, scope: !3, inlinedAt: !506)
!645 = !DILocation(line: 612, column: 33, scope: !23, inlinedAt: !516)
!646 = !DILocation(line: 779, column: 12, scope: !25, inlinedAt: !514)
!647 = !DILocation(line: 810, column: 1, scope: !29, inlinedAt: !510)
!648 = !DILocation(line: 780, column: 13, scope: !25, inlinedAt: !514)
!649 = !DILocation(line: 612, column: 33, scope: !23, inlinedAt: !540)
!650 = !DILocation(line: 779, column: 12, scope: !25, inlinedAt: !538)
!651 = !DILocation(line: 810, column: 1, scope: !29, inlinedAt: !534)
!652 = !DILocation(line: 780, column: 13, scope: !25, inlinedAt: !538)
!653 = !DILocation(line: 612, column: 33, scope: !23, inlinedAt: !564)
!654 = !DILocation(line: 779, column: 12, scope: !25, inlinedAt: !562)
!655 = !DILocation(line: 810, column: 1, scope: !29, inlinedAt: !558)
!656 = !DILocation(line: 780, column: 13, scope: !25, inlinedAt: !562)
!657 = !DILocation(line: 612, column: 33, scope: !23, inlinedAt: !588)
!658 = !DILocation(line: 779, column: 12, scope: !25, inlinedAt: !586)
!659 = !DILocation(line: 810, column: 1, scope: !29, inlinedAt: !582)
!660 = !DILocation(line: 780, column: 13, scope: !25, inlinedAt: !586)
!661 = distinct !DISubprogram(name: "WrapRingBuffer<alloc_stdlib::std_alloc::StandardAlloc, alloc_stdlib::std_alloc::StandardAlloc, alloc_stdlib::std_alloc::StandardAlloc>", linkageName: "_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode14WrapRingBufferNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB10_B10_ECsfISxE4fmY1Y_14polars_parquet", scope: !135, file: !133, line: 1738, type: !108, scopeLine: 1738, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!662 = distinct !DISubprogram(name: "split_at_mut_checked<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh20split_at_mut_checkedCsfISxE4fmY1Y_14polars_parquet", scope: !139, file: !137, line: 2192, type: !108, scopeLine: 2192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!663 = distinct !DISubprogram(name: "split_at_mut<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCsfISxE4fmY1Y_14polars_parquet", scope: !139, file: !137, line: 1986, type: !108, scopeLine: 1986, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!664 = distinct !DILocation(line: 1744, column: 73, scope: !661)
!665 = distinct !DILocation(line: 1987, column: 20, scope: !663, inlinedAt: !664)
!666 = distinct !{!666, !"_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCsfISxE4fmY1Y_14polars_parquet"}
!667 = distinct !{!667, !666, !"_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCsfISxE4fmY1Y_14polars_parquet: argument 1"}
!668 = distinct !{!668, !666, !"_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCsfISxE4fmY1Y_14polars_parquet: argument 0"}
!669 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOh3addCsfISxE4fmY1Y_14polars_parquet", scope: !142, file: !140, line: 927, type: !108, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!670 = distinct !DISubprogram(name: "split_at_mut_unchecked<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh22split_at_mut_uncheckedCsfISxE4fmY1Y_14polars_parquet", scope: !139, file: !137, line: 2092, type: !114, scopeLine: 2092, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!671 = distinct !DILexicalBlock(scope: !670, file: !137, line: 2093, column: 9)
!672 = distinct !DILexicalBlock(scope: !671, file: !137, line: 2094, column: 9)
!673 = distinct !DILocation(line: 2196, column: 32, scope: !662, inlinedAt: !665)
!674 = distinct !DILocation(line: 2109, column: 40, scope: !672, inlinedAt: !673)
!675 = distinct !DILexicalBlock(scope: !661, file: !133, line: 1744, column: 5)
!676 = distinct !DILexicalBlock(scope: !675, file: !133, line: 1745, column: 5)
!677 = distinct !DILocation(line: 1746, column: 23, scope: !676)
!678 = distinct !DILocation(line: 1987, column: 20, scope: !663, inlinedAt: !677)
!679 = distinct !{!679, !"_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCsfISxE4fmY1Y_14polars_parquet"}
!680 = distinct !{!680, !679, !"_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCsfISxE4fmY1Y_14polars_parquet: argument 1"}
!681 = distinct !{!681, !679, !"_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCsfISxE4fmY1Y_14polars_parquet: argument 0"}
!682 = distinct !DILocation(line: 1746, column: 76, scope: !676)
!683 = distinct !DILocation(line: 1953, column: 20, scope: !32, inlinedAt: !682)
!684 = distinct !{!684, !"_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet"}
!685 = distinct !{!685, !684, !"_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet: argument 1"}
!686 = distinct !{!686, !684, !"_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet: argument 0"}
!687 = distinct !DISubprogram(name: "spec_clone_from<u8>", linkageName: "_RNvXs4_NtCscgRAwXFJnXP_4core5sliceShINtB5_13CloneFromSpechE15spec_clone_fromCsfISxE4fmY1Y_14polars_parquet", scope: !143, file: !137, line: 5618, type: !108, scopeLine: 5618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!688 = distinct !DISubprogram(name: "clone_from_slice<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh16clone_from_sliceCsfISxE4fmY1Y_14polars_parquet", scope: !139, file: !137, line: 4254, type: !108, scopeLine: 4254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!689 = !{!668, !667}
!690 = !{!681, !680}
!691 = !{!686, !685}
!692 = !DILocation(line: 1746, column: 43, scope: !676)
!693 = !DILocation(line: 4258, column: 14, scope: !688, inlinedAt: !692)
!694 = !DILocation(line: 1743, column: 6, scope: !661)
!695 = !DILocation(line: 1750, column: 2, scope: !661)
!696 = !DILocation(line: 1744, column: 48, scope: !661)
!697 = !DILocation(line: 1744, column: 61, scope: !661)
!698 = !DILocation(line: 1744, column: 86, scope: !661)
!699 = !DILocation(line: 2193, column: 12, scope: !662, inlinedAt: !665)
!700 = !DILocation(line: 1989, column: 21, scope: !663, inlinedAt: !664)
!701 = !DILocation(line: 961, column: 18, scope: !669, inlinedAt: !674)
!702 = !DILocation(line: 1745, column: 15, scope: !675)
!703 = !DILocation(line: 2193, column: 12, scope: !662, inlinedAt: !678)
!704 = !DILocation(line: 1989, column: 21, scope: !663, inlinedAt: !677)
!705 = !DILocation(line: 2109, column: 50, scope: !672, inlinedAt: !673)
!706 = !DILocation(line: 2154, column: 12, scope: !31, inlinedAt: !683)
!707 = !DILocation(line: 1955, column: 21, scope: !32, inlinedAt: !682)
!708 = !DILocation(line: 5621, column: 13, scope: !687, inlinedAt: !693)
!709 = !DILocation(line: 1747, column: 5, scope: !676)
!710 = !DILocation(line: 1743, column: 3, scope: !661)
!711 = distinct !DISubprogram(name: "ReadHuffmanCode<alloc_stdlib::std_alloc::StandardAlloc, alloc_stdlib::std_alloc::StandardAlloc, alloc_stdlib::std_alloc::StandardAlloc>", linkageName: "_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode15ReadHuffmanCodeNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB11_B11_ECsfISxE4fmY1Y_14polars_parquet", scope: !135, file: !133, line: 866, type: !108, scopeLine: 866, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!712 = distinct !DILexicalBlock(scope: !711, file: !133, line: 953, column: 9)
!713 = distinct !DILexicalBlock(scope: !712, file: !133, line: 965, column: 9)
!714 = distinct !DILexicalBlock(scope: !713, file: !133, line: 966, column: 9)
!715 = distinct !DILexicalBlock(scope: !714, file: !133, line: 966, column: 9)
!716 = distinct !DILexicalBlock(scope: !711, file: !133, line: 920, column: 9)
!717 = distinct !DILocation(line: 910, column: 14, scope: !711)
!718 = distinct !DILocation(line: 371, column: 3, scope: !35, inlinedAt: !717)
!719 = distinct !DILocation(line: 311, column: 11, scope: !34, inlinedAt: !718)
!720 = distinct !DILocation(line: 366, column: 9, scope: !35, inlinedAt: !717)
!721 = distinct !{!721, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits"}
!722 = distinct !{!722, !721, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 1"}
!723 = distinct !{!723, !721, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 2"}
!724 = distinct !{!724, !721, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 0"}
!725 = distinct !DILocation(line: 316, column: 3, scope: !34, inlinedAt: !718)
!726 = distinct !DILexicalBlock(scope: !711, file: !133, line: 894, column: 11)
!727 = distinct !DILexicalBlock(scope: !726, file: !133, line: 895, column: 11)
!728 = distinct !DILexicalBlock(scope: !727, file: !133, line: 895, column: 11)
!729 = distinct !DILexicalBlock(scope: !726, file: !133, line: 898, column: 11)
!730 = distinct !DILexicalBlock(scope: !729, file: !133, line: 898, column: 11)
!731 = distinct !{!731, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits"}
!732 = distinct !{!732, !731, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 0"}
!733 = distinct !{!733, !731, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 1"}
!734 = distinct !{!734, !731, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 2"}
!735 = distinct !DILocation(line: 883, column: 13, scope: !711)
!736 = distinct !DILocation(line: 371, column: 3, scope: !35, inlinedAt: !735)
!737 = distinct !DILocation(line: 311, column: 11, scope: !34, inlinedAt: !736)
!738 = distinct !DILocation(line: 367, column: 9, scope: !35, inlinedAt: !735)
!739 = distinct !DILocation(line: 367, column: 9, scope: !35, inlinedAt: !717)
!740 = distinct !{!740, !"_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode24ReadSimpleHuffmanSymbolsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB1a_B1a_ECsfISxE4fmY1Y_14polars_parquet"}
!741 = distinct !{!741, !740, !"_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode24ReadSimpleHuffmanSymbolsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB1a_B1a_ECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!742 = distinct !{!742, !740, !"_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode24ReadSimpleHuffmanSymbolsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB1a_B1a_ECsfISxE4fmY1Y_14polars_parquet: argument 1"}
!743 = distinct !DISubprogram(name: "ReadSimpleHuffmanSymbols<alloc_stdlib::std_alloc::StandardAlloc, alloc_stdlib::std_alloc::StandardAlloc, alloc_stdlib::std_alloc::StandardAlloc>", linkageName: "_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode24ReadSimpleHuffmanSymbolsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB1a_B1a_ECsfISxE4fmY1Y_14polars_parquet", scope: !135, file: !133, line: 514, type: !108, scopeLine: 514, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!744 = distinct !DILexicalBlock(scope: !743, file: !133, line: 523, column: 3)
!745 = distinct !DILexicalBlock(scope: !744, file: !133, line: 524, column: 3)
!746 = distinct !DILocation(line: 920, column: 22, scope: !711)
!747 = distinct !DILexicalBlock(scope: !745, file: !133, line: 525, column: 3)
!748 = distinct !DISubprogram(name: "checked_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj11checked_sub", scope: !150, file: !148, line: 971, type: !108, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!749 = distinct !DISubprogram(name: "index_mut<u16>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexStE9index_mutCsfISxE4fmY1Y_14polars_parquet", scope: !153, file: !151, line: 448, type: !108, scopeLine: 448, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!750 = distinct !DISubprogram(name: "index_mut<u16, core::ops::range::Range<usize>>", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core5slice5indexStINtNtNtB8_3ops5index8IndexMutINtNtBK_5range5RangejEE9index_mutCsfISxE4fmY1Y_14polars_parquet", scope: !154, file: !151, line: 30, type: !108, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!751 = distinct !DISubprogram(name: "index_mut<u16, core::ops::range::Range<usize>, 720>", linkageName: "_RNvXse_NtCscgRAwXFJnXP_4core5arrayAtj2d0_INtNtNtB7_3ops5index8IndexMutINtNtBI_5range5RangejEE9index_mutCsfISxE4fmY1Y_14polars_parquet", scope: !157, file: !155, line: 401, type: !108, scopeLine: 401, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!752 = distinct !DILocation(line: 52, column: 19, scope: !1020, inlinedAt: !746)
!753 = distinct !DILocation(line: 402, column: 9, scope: !751, inlinedAt: !752)
!754 = distinct !DILocation(line: 31, column: 15, scope: !750, inlinedAt: !753)
!755 = distinct !DILocation(line: 450, column: 32, scope: !749, inlinedAt: !754)
!756 = distinct !DISubprogram(name: "add<u16>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOt3addCsfISxE4fmY1Y_14polars_parquet", scope: !142, file: !140, line: 927, type: !108, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!757 = distinct !DISubprogram(name: "new<u16>", linkageName: "_RNvMsa_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_7IterMuttE3newCsfISxE4fmY1Y_14polars_parquet", scope: !161, file: !159, line: 221, type: !108, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!758 = distinct !DILexicalBlock(scope: !757, file: !159, line: 222, column: 9)
!759 = distinct !DILexicalBlock(scope: !758, file: !159, line: 223, column: 9)
!760 = distinct !DISubprogram(name: "iter_mut<u16>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSt8iter_mutCsfISxE4fmY1Y_14polars_parquet", scope: !139, file: !137, line: 1060, type: !108, scopeLine: 1060, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!761 = distinct !DILocation(line: 528, column: 6, scope: !747, inlinedAt: !746)
!762 = distinct !DILocation(line: 1061, column: 9, scope: !760, inlinedAt: !761)
!763 = distinct !DILocation(line: 242, column: 82, scope: !759, inlinedAt: !762)
!764 = distinct !DISubprogram(name: "eq<u16>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNulltENtNtB9_3cmp9PartialEq2eqCsfISxE4fmY1Y_14polars_parquet", scope: !164, file: !162, line: 1716, type: !108, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!765 = distinct !DISubprogram(name: "next<u16>", linkageName: "_RNvXs2R_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_7IterMuttENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet", scope: !166, file: !165, line: 157, type: !108, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!766 = distinct !DILexicalBlock(scope: !765, file: !165, line: 161, column: 17)
!767 = distinct !DILexicalBlock(scope: !766, file: !165, line: 162, column: 17)
!768 = distinct !DILexicalBlock(scope: !747, file: !133, line: 526, column: 3)
!769 = distinct !DILocation(line: 526, column: 29, scope: !1022, inlinedAt: !746)
!770 = distinct !DILocation(line: 180, column: 28, scope: !767, inlinedAt: !769)
!771 = distinct !DISubprogram(name: "get_offset_len_mut_noubcheck<u16>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index28get_offset_len_mut_noubchecktECsfISxE4fmY1Y_14polars_parquet", scope: !152, file: !151, line: 94, type: !108, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!772 = distinct !DILexicalBlock(scope: !771, file: !151, line: 99, column: 5)
!773 = distinct !DILocation(line: 454, column: 28, scope: !749, inlinedAt: !754)
!774 = distinct !DILexicalBlock(scope: !768, file: !133, line: 526, column: 3)
!775 = distinct !DILexicalBlock(scope: !774, file: !133, line: 529, column: 5)
!776 = distinct !DILocation(line: 530, column: 9, scope: !775, inlinedAt: !746)
!777 = distinct !DISubprogram(name: "add<u16>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNulltE3addCsfISxE4fmY1Y_14polars_parquet", scope: !167, file: !162, line: 651, type: !108, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!778 = distinct !DILocation(line: 185, column: 40, scope: !767, inlinedAt: !769)
!779 = distinct !{!779, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits"}
!780 = distinct !{!780, !779, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 0"}
!781 = distinct !{!781, !779, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 2"}
!782 = distinct !{!782, !779, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 1"}
!783 = distinct !DILocation(line: 366, column: 9, scope: !35, inlinedAt: !776)
!784 = distinct !DILocation(line: 367, column: 9, scope: !35, inlinedAt: !776)
!785 = distinct !DILocation(line: 371, column: 3, scope: !35, inlinedAt: !776)
!786 = distinct !DILocation(line: 311, column: 11, scope: !34, inlinedAt: !785)
!787 = distinct !DILocation(line: 311, column: 47, scope: !34, inlinedAt: !785)
!788 = distinct !DILocation(line: 316, column: 3, scope: !34, inlinedAt: !785)
!789 = distinct !DISubprogram(name: "new<u16>", linkageName: "_RNvMs4_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_4ItertE3newCsfISxE4fmY1Y_14polars_parquet", scope: !1031, file: !159, line: 96, type: !108, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!790 = distinct !DILexicalBlock(scope: !789, file: !159, line: 97, column: 9)
!791 = distinct !DILexicalBlock(scope: !790, file: !159, line: 98, column: 9)
!792 = distinct !DISubprogram(name: "iter<u16>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSt4iterCsfISxE4fmY1Y_14polars_parquet", scope: !139, file: !137, line: 1040, type: !108, scopeLine: 1040, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!793 = distinct !DILocation(line: 544, column: 84, scope: !747, inlinedAt: !746)
!794 = distinct !DILocation(line: 1041, column: 9, scope: !792, inlinedAt: !793)
!795 = distinct !DILocation(line: 102, column: 78, scope: !791, inlinedAt: !794)
!796 = distinct !DISubprogram(name: "next<u16>", linkageName: "_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItertENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet", scope: !1033, file: !165, line: 157, type: !108, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!797 = distinct !DILexicalBlock(scope: !796, file: !165, line: 161, column: 17)
!798 = distinct !DILexicalBlock(scope: !797, file: !165, line: 162, column: 17)
!799 = distinct !DILexicalBlock(scope: !747, file: !133, line: 544, column: 3)
!800 = distinct !DILocation(line: 544, column: 28, scope: !1034, inlinedAt: !746)
!801 = distinct !DILocation(line: 180, column: 28, scope: !1032, inlinedAt: !800)
!802 = distinct !DISubprogram(name: "index<u16>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexStE5indexCsfISxE4fmY1Y_14polars_parquet", scope: !153, file: !151, line: 435, type: !108, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!803 = distinct !DISubprogram(name: "index<u16, core::ops::range::Range<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexStINtNtNtB6_3ops5index5IndexINtNtBI_5range5RangejEE5indexCsfISxE4fmY1Y_14polars_parquet", scope: !171, file: !151, line: 18, type: !108, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!804 = distinct !DISubprogram(name: "index<u16, core::ops::range::Range<usize>, 720>", linkageName: "_RNvXsd_NtCscgRAwXFJnXP_4core5arrayAtj2d0_INtNtNtB7_3ops5index5IndexINtNtBI_5range5RangejEE5indexCsfISxE4fmY1Y_14polars_parquet", scope: !172, file: !155, line: 389, type: !108, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!805 = distinct !DILexicalBlock(scope: !799, file: !133, line: 544, column: 3)
!806 = distinct !DILocation(line: 31, column: 17, scope: !1039, inlinedAt: !746)
!807 = distinct !DILocation(line: 390, column: 9, scope: !1037, inlinedAt: !806)
!808 = distinct !DILocation(line: 19, column: 15, scope: !1036, inlinedAt: !807)
!809 = distinct !DILocation(line: 437, column: 32, scope: !1035, inlinedAt: !808)
!810 = distinct !DILocation(line: 185, column: 40, scope: !1032, inlinedAt: !800)
!811 = distinct !DILexicalBlock(scope: !796, file: !165, line: 161, column: 17)
!812 = distinct !DILexicalBlock(scope: !811, file: !165, line: 162, column: 17)
!813 = distinct !DILexicalBlock(scope: !805, file: !133, line: 545, column: 5)
!814 = distinct !DILocation(line: 545, column: 23, scope: !1041, inlinedAt: !746)
!815 = distinct !DILocation(line: 180, column: 28, scope: !1040, inlinedAt: !814)
!816 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u16>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubchecktECsfISxE4fmY1Y_14polars_parquet", scope: !152, file: !151, line: 82, type: !108, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!817 = distinct !DILexicalBlock(scope: !816, file: !151, line: 87, column: 5)
!818 = distinct !DILocation(line: 441, column: 24, scope: !1035, inlinedAt: !808)
!819 = distinct !DILocation(line: 185, column: 40, scope: !1040, inlinedAt: !814)
!820 = distinct !DILexicalBlock(scope: !813, file: !133, line: 545, column: 5)
!821 = distinct !DILexicalBlock(scope: !711, file: !133, line: 929, column: 9)
!822 = distinct !{!822, !"_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode25ReadCodeLengthCodeLengthsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB1b_B1b_ECsfISxE4fmY1Y_14polars_parquet"}
!823 = distinct !{!823, !822, !"_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode25ReadCodeLengthCodeLengthsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB1b_B1b_ECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!824 = distinct !{!824, !822, !"_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode25ReadCodeLengthCodeLengthsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB1b_B1b_ECsfISxE4fmY1Y_14polars_parquet: argument 1"}
!825 = distinct !DISubprogram(name: "ReadCodeLengthCodeLengths<alloc_stdlib::std_alloc::StandardAlloc, alloc_stdlib::std_alloc::StandardAlloc, alloc_stdlib::std_alloc::StandardAlloc>", linkageName: "_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode25ReadCodeLengthCodeLengthsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB1b_B1b_ECsfISxE4fmY1Y_14polars_parquet", scope: !135, file: !133, line: 799, type: !108, scopeLine: 799, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!826 = distinct !DILexicalBlock(scope: !825, file: !133, line: 806, column: 3)
!827 = distinct !DILexicalBlock(scope: !826, file: !133, line: 807, column: 3)
!828 = distinct !DILocation(line: 953, column: 22, scope: !711)
!829 = distinct !DILexicalBlock(scope: !827, file: !133, line: 808, column: 3)
!830 = distinct !DISubprogram(name: "checked_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj11checked_sub", scope: !150, file: !148, line: 971, type: !108, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!831 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE5indexCsfISxE4fmY1Y_14polars_parquet", scope: !153, file: !151, line: 435, type: !108, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!832 = distinct !DISubprogram(name: "index<u8, core::ops::range::Range<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexShINtNtNtB6_3ops5index5IndexINtNtBI_5range5RangejEE5indexCsfISxE4fmY1Y_14polars_parquet", scope: !171, file: !151, line: 18, type: !108, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!833 = distinct !DISubprogram(name: "index<u8, core::ops::range::Range<usize>, 18>", linkageName: "_RNvXsd_NtCscgRAwXFJnXP_4core5arrayAhj12_INtNtNtB7_3ops5index5IndexINtNtBH_5range5RangejEE5indexCsfISxE4fmY1Y_14polars_parquet", scope: !172, file: !155, line: 389, type: !108, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!834 = distinct !DILocation(line: 31, column: 17, scope: !1044, inlinedAt: !828)
!835 = distinct !DILocation(line: 390, column: 9, scope: !833, inlinedAt: !834)
!836 = distinct !DILocation(line: 19, column: 15, scope: !832, inlinedAt: !835)
!837 = distinct !DILocation(line: 437, column: 32, scope: !831, inlinedAt: !836)
!838 = distinct !DISubprogram(name: "eq<u8>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullhENtNtB9_3cmp9PartialEq2eqCsfISxE4fmY1Y_14polars_parquet", scope: !164, file: !162, line: 1716, type: !108, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!839 = distinct !DISubprogram(name: "next<u8>", linkageName: "_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet", scope: !1033, file: !165, line: 157, type: !108, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!840 = distinct !DILexicalBlock(scope: !839, file: !165, line: 161, column: 17)
!841 = distinct !DILexicalBlock(scope: !840, file: !165, line: 162, column: 17)
!842 = distinct !DILexicalBlock(scope: !829, file: !133, line: 809, column: 3)
!843 = distinct !DILocation(line: 810, column: 7, scope: !1045, inlinedAt: !828)
!844 = distinct !DILocation(line: 180, column: 28, scope: !841, inlinedAt: !843)
!845 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullhE3addCsfISxE4fmY1Y_14polars_parquet", scope: !167, file: !162, line: 651, type: !108, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!846 = distinct !DILocation(line: 185, column: 40, scope: !841, inlinedAt: !843)
!847 = distinct !DILexicalBlock(scope: !842, file: !133, line: 809, column: 3)
!848 = distinct !{!848, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader17BrotliSafeGetBits"}
!849 = distinct !{!849, !848, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader17BrotliSafeGetBits: argument 0"}
!850 = distinct !DILexicalBlock(scope: !847, file: !133, line: 811, column: 5)
!851 = distinct !DILexicalBlock(scope: !850, file: !133, line: 812, column: 5)
!852 = distinct !{!852, !848, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader17BrotliSafeGetBits: argument 2"}
!853 = distinct !{!853, !848, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader17BrotliSafeGetBits: argument 1"}
!854 = distinct !DILocation(line: 814, column: 9, scope: !851, inlinedAt: !828)
!855 = distinct !DILocation(line: 280, column: 9, scope: !40, inlinedAt: !854)
!856 = distinct !DILocation(line: 284, column: 11, scope: !40, inlinedAt: !854)
!857 = distinct !DILocation(line: 279, column: 9, scope: !40, inlinedAt: !854)
!858 = distinct !DILexicalBlock(scope: !851, file: !133, line: 831, column: 5)
!859 = distinct !DISubprogram(name: "BrotliGetAvailableBits", linkageName: "_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader22BrotliGetAvailableBits", scope: !145, file: !144, line: 88, type: !108, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!860 = distinct !DILocation(line: 816, column: 33, scope: !851, inlinedAt: !828)
!861 = distinct !DILexicalBlock(scope: !851, file: !133, line: 816, column: 7)
!862 = distinct !DISubprogram(name: "BrotliDropBits", linkageName: "_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader14BrotliDropBits", scope: !145, file: !144, line: 290, type: !108, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!863 = distinct !DILocation(line: 832, column: 5, scope: !858, inlinedAt: !828)
!864 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_RNvMs6_NtCscgRAwXFJnXP_4core3numm12wrapping_sub", scope: !174, file: !148, line: 2547, type: !108, scopeLine: 2547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!865 = distinct !DILocation(line: 837, column: 21, scope: !858, inlinedAt: !828)
!866 = distinct !{!866, !"_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode21ReadSymbolCodeLengthsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsfISxE4fmY1Y_14polars_parquet"}
!867 = distinct !{!867, !866, !"_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode21ReadSymbolCodeLengthsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!868 = distinct !DILexicalBlock(scope: !711, file: !133, line: 984, column: 9)
!869 = distinct !{!869, !866, !"_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode21ReadSymbolCodeLengthsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsfISxE4fmY1Y_14polars_parquet: argument 1"}
!870 = distinct !DISubprogram(name: "ReadSymbolCodeLengths<alloc_stdlib::std_alloc::StandardAlloc, alloc_stdlib::std_alloc::StandardAlloc, alloc_stdlib::std_alloc::StandardAlloc>", linkageName: "_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode21ReadSymbolCodeLengthsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECsfISxE4fmY1Y_14polars_parquet", scope: !135, file: !133, line: 659, type: !108, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!871 = distinct !DILocation(line: 985, column: 26, scope: !868)
!872 = distinct !DILexicalBlock(scope: !870, file: !133, line: 667, column: 3)
!873 = distinct !DILexicalBlock(scope: !872, file: !133, line: 668, column: 3)
!874 = distinct !DILexicalBlock(scope: !873, file: !133, line: 669, column: 3)
!875 = distinct !DILexicalBlock(scope: !874, file: !133, line: 670, column: 3)
!876 = distinct !DISubprogram(name: "BrotliGetAvailableBits", linkageName: "_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader22BrotliGetAvailableBits", scope: !145, file: !144, line: 88, type: !108, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!877 = distinct !DISubprogram(name: "BrotliWarmupBitReader", linkageName: "_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader21BrotliWarmupBitReader", scope: !145, file: !144, line: 428, type: !108, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!878 = distinct !DILexicalBlock(scope: !877, file: !144, line: 429, column: 3)
!879 = distinct !DILexicalBlock(scope: !875, file: !133, line: 671, column: 3)
!880 = distinct !DILocation(line: 672, column: 8, scope: !879, inlinedAt: !871)
!881 = distinct !DILocation(line: 433, column: 6, scope: !878, inlinedAt: !880)
!882 = distinct !DISubprogram(name: "BrotliPullByte", linkageName: "_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader14BrotliPullByte", scope: !145, file: !144, line: 228, type: !108, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!883 = distinct !DILocation(line: 433, column: 42, scope: !878, inlinedAt: !880)
!884 = distinct !DISubprogram(name: "BrotliCheckInputAmount", linkageName: "_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader22BrotliCheckInputAmount", scope: !145, file: !144, line: 100, type: !108, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!885 = distinct !DILexicalBlock(scope: !879, file: !133, line: 676, column: 5)
!886 = distinct !DILexicalBlock(scope: !885, file: !133, line: 677, column: 5)
!887 = distinct !DILocation(line: 678, column: 10, scope: !886, inlinedAt: !871)
!888 = distinct !DISubprogram(name: "BrotliGetBitsUnmasked", linkageName: "_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader21BrotliGetBitsUnmasked", scope: !145, file: !144, line: 247, type: !108, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!889 = distinct !DILocation(line: 688, column: 7, scope: !886, inlinedAt: !871)
!890 = distinct !DILexicalBlock(scope: !886, file: !133, line: 690, column: 5)
!891 = distinct !DISubprogram(name: "BrotliDropBits", linkageName: "_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader14BrotliDropBits", scope: !145, file: !144, line: 290, type: !108, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!892 = distinct !DILocation(line: 691, column: 5, scope: !890, inlinedAt: !871)
!893 = distinct !DISubprogram(name: "BitMask", linkageName: "_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader7BitMask", scope: !145, file: !144, line: 26, type: !108, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!894 = distinct !DILexicalBlock(scope: !890, file: !133, line: 705, column: 7)
!895 = distinct !DILocation(line: 711, column: 31, scope: !894, inlinedAt: !871)
!896 = distinct !DILocation(line: 710, column: 31, scope: !894, inlinedAt: !871)
!897 = distinct !DILexicalBlock(scope: !894, file: !133, line: 710, column: 7)
!898 = distinct !DILocation(line: 712, column: 7, scope: !897, inlinedAt: !871)
!899 = distinct !{!899, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode25ProcessRepeatedCodeLength"}
!900 = distinct !{!900, !899, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 4"}
!901 = distinct !{!901, !899, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 5"}
!902 = distinct !{!902, !899, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 6"}
!903 = distinct !DISubprogram(name: "ProcessRepeatedCodeLength", linkageName: "_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode25ProcessRepeatedCodeLength", scope: !135, file: !133, line: 598, type: !114, scopeLine: 598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!904 = distinct !DILexicalBlock(scope: !903, file: !133, line: 610, column: 3)
!905 = distinct !DILexicalBlock(scope: !904, file: !133, line: 611, column: 3)
!906 = distinct !DILexicalBlock(scope: !905, file: !133, line: 612, column: 3)
!907 = distinct !DILocation(line: 713, column: 7, scope: !897, inlinedAt: !871)
!908 = distinct !DILexicalBlock(scope: !906, file: !133, line: 639, column: 5)
!909 = distinct !{!909, !899, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 3"}
!910 = distinct !{!910, !899, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 2"}
!911 = distinct !{!911, !899, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 1"}
!912 = distinct !{!912, !899, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 0"}
!913 = distinct !DILexicalBlock(scope: !908, file: !133, line: 640, column: 5)
!914 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_RNvMs6_NtCscgRAwXFJnXP_4core3numm12wrapping_sub", scope: !174, file: !148, line: 2547, type: !108, scopeLine: 2547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!915 = distinct !DILocation(line: 650, column: 20, scope: !913, inlinedAt: !907)
!916 = distinct !{!916, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode23ProcessSingleCodeLength"}
!917 = distinct !{!917, !916, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 4"}
!918 = distinct !{!918, !916, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 5"}
!919 = distinct !{!919, !916, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 6"}
!920 = distinct !DISubprogram(name: "ProcessSingleCodeLength", linkageName: "_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode23ProcessSingleCodeLength", scope: !135, file: !133, line: 563, type: !108, scopeLine: 563, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!921 = distinct !DILocation(line: 694, column: 7, scope: !890, inlinedAt: !871)
!922 = distinct !{!922, !916, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 3"}
!923 = distinct !{!923, !916, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 2"}
!924 = distinct !{!924, !916, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 1"}
!925 = distinct !{!925, !916, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 0"}
!926 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_RNvMs6_NtCscgRAwXFJnXP_4core3numm12wrapping_sub", scope: !174, file: !148, line: 2547, type: !108, scopeLine: 2547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!927 = distinct !DILocation(line: 581, column: 20, scope: !920, inlinedAt: !921)
!928 = distinct !DILexicalBlock(scope: !868, file: !133, line: 985, column: 9)
!929 = distinct !DILexicalBlock(scope: !928, file: !133, line: 986, column: 81)
!930 = distinct !DILocation(line: 366, column: 9, scope: !35, inlinedAt: !735)
!931 = distinct !DILocation(line: 316, column: 3, scope: !34, inlinedAt: !736)
!932 = distinct !{!932, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits"}
!933 = distinct !{!933, !932, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 0"}
!934 = distinct !DILexicalBlock(scope: !821, file: !133, line: 931, column: 11)
!935 = distinct !{!935, !932, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 2"}
!936 = distinct !{!936, !932, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader18BrotliSafeReadBits: argument 1"}
!937 = distinct !DILocation(line: 932, column: 16, scope: !934)
!938 = distinct !DILocation(line: 371, column: 3, scope: !35, inlinedAt: !937)
!939 = distinct !DILocation(line: 311, column: 11, scope: !34, inlinedAt: !938)
!940 = distinct !DILocation(line: 367, column: 9, scope: !35, inlinedAt: !937)
!941 = distinct !DILocation(line: 366, column: 9, scope: !35, inlinedAt: !937)
!942 = distinct !DILocation(line: 316, column: 3, scope: !34, inlinedAt: !938)
!943 = distinct !DISubprogram(name: "index_mut<brotli_decompressor::huffman::HuffmanCode>", linkageName: "_RNvXs5_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSNtNtCsjPfRcqrlXv6_19brotli_decompressor7huffman11HuffmanCodeE9index_mutCsfISxE4fmY1Y_14polars_parquet", scope: !175, file: !151, line: 579, type: !108, scopeLine: 579, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!944 = distinct !DISubprogram(name: "index_mut<brotli_decompressor::huffman::HuffmanCode, core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core5slice5indexSNtNtCsjPfRcqrlXv6_19brotli_decompressor7huffman11HuffmanCodeINtNtNtB8_3ops5index8IndexMutINtNtB1H_5range9RangeFromjEE9index_mutCsfISxE4fmY1Y_14polars_parquet", scope: !154, file: !151, line: 30, type: !108, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!945 = distinct !DISubprogram(name: "get_offset_len_mut_noubcheck<brotli_decompressor::huffman::HuffmanCode>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index28get_offset_len_mut_noubcheckNtNtCsjPfRcqrlXv6_19brotli_decompressor7huffman11HuffmanCodeECsfISxE4fmY1Y_14polars_parquet", scope: !152, file: !151, line: 94, type: !108, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!946 = distinct !DILexicalBlock(scope: !945, file: !151, line: 99, column: 5)
!947 = distinct !DILexicalBlock(scope: !943, file: !151, line: 585, column: 13)
!948 = distinct !DILexicalBlock(scope: !821, file: !133, line: 943, column: 58)
!949 = distinct !DILexicalBlock(scope: !712, file: !133, line: 961, column: 9)
!950 = distinct !DILexicalBlock(scope: !949, file: !133, line: 961, column: 9)
!951 = distinct !DISubprogram(name: "eq<i32>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNulllENtNtB9_3cmp9PartialEq2eqCsfISxE4fmY1Y_14polars_parquet", scope: !164, file: !162, line: 1716, type: !108, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!952 = distinct !DISubprogram(name: "next<i32>", linkageName: "_RNvXs2R_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_7IterMutlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet", scope: !166, file: !165, line: 157, type: !108, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!953 = distinct !DILexicalBlock(scope: !952, file: !165, line: 161, column: 17)
!954 = distinct !DILexicalBlock(scope: !953, file: !165, line: 162, column: 17)
!955 = distinct !DISubprogram(name: "next<core::slice::iter::IterMut<i32>>", linkageName: "_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutlEENtNtNtB8_6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet", scope: !1101, file: !1099, line: 79, type: !108, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!956 = distinct !DILocation(line: 966, column: 37, scope: !714)
!957 = distinct !DILocation(line: 80, column: 27, scope: !955, inlinedAt: !956)
!958 = distinct !DILocation(line: 180, column: 28, scope: !954, inlinedAt: !957)
!959 = distinct !DISubprogram(name: "SafeReadSymbolCodeLengths<alloc_stdlib::std_alloc::StandardAlloc, alloc_stdlib::std_alloc::StandardAlloc, alloc_stdlib::std_alloc::StandardAlloc>", linkageName: "_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode25SafeReadSymbolCodeLengthsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB1b_B1b_ECsfISxE4fmY1Y_14polars_parquet", scope: !135, file: !133, line: 731, type: !108, scopeLine: 731, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!960 = distinct !DILocation(line: 987, column: 20, scope: !929)
!961 = distinct !{!961, !"_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode25SafeReadSymbolCodeLengthsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB1b_B1b_ECsfISxE4fmY1Y_14polars_parquet"}
!962 = distinct !{!962, !961, !"_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode25SafeReadSymbolCodeLengthsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB1b_B1b_ECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!963 = distinct !{!963, !961, !"_RINvNtCsjPfRcqrlXv6_19brotli_decompressor6decode25SafeReadSymbolCodeLengthsNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocB1b_B1b_ECsfISxE4fmY1Y_14polars_parquet: argument 1"}
!964 = distinct !DISubprogram(name: "BrotliGetAvailableBits", linkageName: "_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader22BrotliGetAvailableBits", scope: !145, file: !144, line: 88, type: !108, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!965 = distinct !DILexicalBlock(scope: !959, file: !133, line: 739, column: 5)
!966 = distinct !DILexicalBlock(scope: !965, file: !133, line: 740, column: 5)
!967 = distinct !DILexicalBlock(scope: !966, file: !133, line: 741, column: 5)
!968 = distinct !DILocation(line: 742, column: 31, scope: !967, inlinedAt: !960)
!969 = distinct !DILexicalBlock(scope: !967, file: !133, line: 742, column: 5)
!970 = distinct !DILexicalBlock(scope: !969, file: !133, line: 748, column: 5)
!971 = distinct !DISubprogram(name: "BrotliPullByte", linkageName: "_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader14BrotliPullByte", scope: !145, file: !144, line: 228, type: !108, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!972 = distinct !DILocation(line: 751, column: 12, scope: !970, inlinedAt: !960)
!973 = distinct !DISubprogram(name: "BitMask", linkageName: "_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader7BitMask", scope: !145, file: !144, line: 26, type: !108, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!974 = distinct !DILexicalBlock(scope: !970, file: !133, line: 770, column: 7)
!975 = distinct !DILocation(line: 771, column: 50, scope: !974, inlinedAt: !960)
!976 = distinct !DISubprogram(name: "BrotliDropBits", linkageName: "_RNvNtCsjPfRcqrlXv6_19brotli_decompressor10bit_reader14BrotliDropBits", scope: !145, file: !144, line: 290, type: !108, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !107)
!977 = distinct !DILocation(line: 758, column: 7, scope: !970, inlinedAt: !960)
!978 = distinct !{!978, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode23ProcessSingleCodeLength"}
!979 = distinct !{!979, !978, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 0"}
!980 = distinct !{!980, !978, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 1"}
!981 = distinct !{!981, !978, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 2"}
!982 = distinct !{!982, !978, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 3"}
!983 = distinct !{!983, !978, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 4"}
!984 = distinct !{!984, !978, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 5"}
!985 = distinct !{!985, !978, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode23ProcessSingleCodeLength: argument 6"}
!986 = distinct !DILocation(line: 759, column: 7, scope: !970, inlinedAt: !960)
!987 = distinct !DILocation(line: 581, column: 20, scope: !920, inlinedAt: !986)
!988 = distinct !DILexicalBlock(scope: !974, file: !133, line: 771, column: 7)
!989 = distinct !DILocation(line: 779, column: 7, scope: !988, inlinedAt: !960)
!990 = distinct !{!990, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode25ProcessRepeatedCodeLength"}
!991 = distinct !{!991, !990, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 0"}
!992 = distinct !{!992, !990, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 1"}
!993 = distinct !{!993, !990, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 2"}
!994 = distinct !{!994, !990, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 3"}
!995 = distinct !{!995, !990, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 4"}
!996 = distinct !{!996, !990, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 5"}
!997 = distinct !{!997, !990, !"_RNvNtCsjPfRcqrlXv6_19brotli_decompressor6decode25ProcessRepeatedCodeLength: argument 6"}
!998 = distinct !DILocation(line: 780, column: 7, scope: !988, inlinedAt: !960)
!999 = distinct !DILocation(line: 650, column: 20, scope: !913, inlinedAt: !998)
!1000 = distinct !DILocation(line: 774, column: 14, scope: !988, inlinedAt: !960)
!1001 = distinct !DILexicalBlock(scope: !945, file: !151, line: 99, column: 5)
!1002 = distinct !DILexicalBlock(scope: !943, file: !151, line: 585, column: 13)
!1003 = distinct !DILexicalBlock(scope: !928, file: !133, line: 1003, column: 58)
!1004 = !{i8 0, i8 6}
!1005 = !{!722}
!1006 = !{!724, !723}
!1007 = !{!724}
!1008 = !{!722, !723}
!1009 = !{!732}
!1010 = !{!733}
!1011 = !{!734}
!1012 = !{!733, !734}
!1013 = !{!732, !733}
!1014 = !{!732, !733, !734}
!1015 = !{!723}
!1016 = !{!724, !722}
!1017 = !{!724, !722, !723}
!1018 = !{!741}
!1019 = !{!742}
!1020 = !DILexicalBlockFile(scope: !747, file: !146, discriminator: 0)
!1021 = !{!741, !742}
!1022 = !DILexicalBlockFile(scope: !768, file: !133, discriminator: 2)
!1023 = !{!780}
!1024 = !{!781}
!1025 = !{!780, !741}
!1026 = !{!782, !781, !742}
!1027 = !{!781, !742}
!1028 = !{!780, !782, !741}
!1029 = !{!780, !782, !781, !741, !742}
!1030 = !DILexicalBlockFile(scope: !775, file: !170, discriminator: 0)
!1031 = !DINamespace(name: "Iter", scope: !160)
!1032 = !DILexicalBlockFile(scope: !798, file: !165, discriminator: 2)
!1033 = !DINamespace(name: "{impl#171}", scope: !160)
!1034 = !DILexicalBlockFile(scope: !799, file: !133, discriminator: 2)
!1035 = !DILexicalBlockFile(scope: !802, file: !151, discriminator: 2)
!1036 = !DILexicalBlockFile(scope: !803, file: !151, discriminator: 2)
!1037 = !DILexicalBlockFile(scope: !804, file: !155, discriminator: 2)
!1038 = !DILexicalBlockFile(scope: !805, file: !146, discriminator: 0)
!1039 = !DILexicalBlockFile(scope: !1038, file: !146, discriminator: 2)
!1040 = !DILexicalBlockFile(scope: !812, file: !165, discriminator: 4)
!1041 = !DILexicalBlockFile(scope: !813, file: !133, discriminator: 2)
!1042 = !{!823}
!1043 = !{!824}
!1044 = !DILexicalBlockFile(scope: !829, file: !146, discriminator: 0)
!1045 = !DILexicalBlockFile(scope: !842, file: !133, discriminator: 2)
!1046 = !{!823, !824}
!1047 = !{!849}
!1048 = !{!852}
!1049 = !{!849, !823}
!1050 = !{!853, !852, !824}
!1051 = !DILexicalBlockFile(scope: !858, file: !146, discriminator: 0)
!1052 = !{!852, !824}
!1053 = !{!849, !853, !823}
!1054 = !{!849, !853, !852, !823, !824}
!1055 = !DILexicalBlockFile(scope: !861, file: !146, discriminator: 0)
!1056 = !DILexicalBlockFile(scope: !829, file: !170, discriminator: 0)
!1057 = !DILexicalBlockFile(scope: !851, file: !146, discriminator: 0)
!1058 = !{!867}
!1059 = !{!869}
!1060 = !DILexicalBlockFile(scope: !882, file: !146, discriminator: 0)
!1061 = !{!867, !869}
!1062 = !DILexicalBlockFile(scope: !886, file: !146, discriminator: 0)
!1063 = !DILexicalBlockFile(scope: !893, file: !146, discriminator: 0)
!1064 = !{!900}
!1065 = !{!901}
!1066 = !{!902}
!1067 = !DILexicalBlockFile(scope: !908, file: !146, discriminator: 0)
!1068 = !{!902, !867}
!1069 = !{!912, !911, !910, !909, !900, !901, !869}
!1070 = !{!912, !911, !910, !909, !900, !901, !902}
!1071 = !DILexicalBlockFile(scope: !913, file: !146, discriminator: 0)
!1072 = !{!900, !867}
!1073 = !{!912, !911, !910, !909, !901, !902, !869}
!1074 = !{!901, !867}
!1075 = !{!912, !911, !910, !909, !900, !902, !869}
!1076 = !{!917}
!1077 = !{!918}
!1078 = !{!919}
!1079 = !DILexicalBlockFile(scope: !920, file: !146, discriminator: 0)
!1080 = !{!919, !867}
!1081 = !{!925, !924, !923, !922, !917, !918, !869}
!1082 = !{!917, !867}
!1083 = !{!925, !924, !923, !922, !918, !919, !869}
!1084 = !{!918, !867}
!1085 = !{!925, !924, !923, !922, !917, !919, !869}
!1086 = !{!925, !924, !923, !922, !917, !918, !919}
!1087 = !{!732, !734}
!1088 = !DILexicalBlockFile(scope: !711, file: !170, discriminator: 0)
!1089 = !{!933}
!1090 = !{!935}
!1091 = !{!936, !935}
!1092 = !{!933, !936, !935}
!1093 = !DILexicalBlockFile(scope: !821, file: !170, discriminator: 0)
!1094 = !{!933, !936}
!1095 = !DILexicalBlockFile(scope: !944, file: !151, discriminator: 4)
!1096 = !DILocation(line: 939, column: 71, scope: !821)
!1097 = !DILocation(line: 31, column: 15, scope: !1095, inlinedAt: !1096)
!1098 = !DILocation(line: 586, column: 19, scope: !947, inlinedAt: !1097)
!1099 = !DIFile(filename: "library/core/src/iter/adapters/enumerate.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "be8a5e8de3bc6e50de6cd50459716008")
!1100 = !DINamespace(name: "enumerate", scope: !177)
!1101 = !DINamespace(name: "{impl#1}", scope: !1100)
!1102 = !DILexicalBlockFile(scope: !715, file: !146, discriminator: 0)
!1103 = !{!962}
!1104 = !{!963}
!1105 = !DILexicalBlockFile(scope: !969, file: !146, discriminator: 0)
!1106 = !DILexicalBlockFile(scope: !973, file: !146, discriminator: 0)
!1107 = !{!979}
!1108 = !{!980}
!1109 = !{!981}
!1110 = !{!982}
!1111 = !{!983}
!1112 = !{!984}
!1113 = !{!985}
!1114 = !{!980, !962}
!1115 = !{!979, !981, !982, !983, !984, !985, !963}
!1116 = !{!985, !962}
!1117 = !{!979, !980, !981, !982, !983, !984, !963}
!1118 = !{!983, !962}
!1119 = !{!979, !980, !981, !982, !984, !985, !963}
!1120 = !{!982, !962}
!1121 = !{!979, !980, !981, !983, !984, !985, !963}
!1122 = !{!981, !962}
!1123 = !{!979, !980, !982, !983, !984, !985, !963}
!1124 = !{!984, !962}
!1125 = !{!979, !980, !981, !982, !983, !985, !963}
!1126 = !{!979, !980, !981, !982, !983, !984, !985, !962, !963}
!1127 = !{!979, !962}
!1128 = !{!980, !981, !982, !983, !984, !985, !963}
!1129 = !{!962, !963}
!1130 = !{!991}
!1131 = !{!992}
!1132 = !{!993}
!1133 = !{!994}
!1134 = !{!995}
!1135 = !{!996}
!1136 = !{!997}
!1137 = !{!994, !962}
!1138 = !{!991, !992, !993, !995, !996, !997, !963}
!1139 = !{!992, !962}
!1140 = !{!991, !993, !994, !995, !996, !997, !963}
!1141 = !{!991, !962}
!1142 = !{!992, !993, !994, !995, !996, !997, !963}
!1143 = !{!993, !962}
!1144 = !{!991, !992, !994, !995, !996, !997, !963}
!1145 = !{!997, !962}
!1146 = !{!991, !992, !993, !994, !995, !996, !963}
!1147 = !{!991, !992, !993, !994, !995, !996, !997, !962, !963}
!1148 = !{!995, !962}
!1149 = !{!991, !992, !993, !994, !996, !997, !963}
!1150 = !{!996, !962}
!1151 = !{!991, !992, !993, !994, !995, !997, !963}
!1152 = !DILexicalBlockFile(scope: !971, file: !146, discriminator: 0)
!1153 = !DILexicalBlockFile(scope: !970, file: !170, discriminator: 0)
!1154 = !DILexicalBlockFile(scope: !944, file: !151, discriminator: 10)
!1155 = !DILexicalBlockFile(scope: !928, file: !146, discriminator: 0)
!1156 = !DILocation(line: 55, column: 19, scope: !1155)
!1157 = !DILocation(line: 31, column: 15, scope: !1154, inlinedAt: !1156)
!1158 = !DILexicalBlockFile(scope: !1002, file: !151, discriminator: 2)
!1159 = !DILocation(line: 586, column: 19, scope: !1158, inlinedAt: !1157)
!1160 = !DILocation(line: 878, column: 3, scope: !711)
!1161 = !DILocation(line: 881, column: 11, scope: !711)
!1162 = !DILocation(line: 881, column: 5, scope: !711)
!1163 = !DILocation(line: 970, column: 11, scope: !715)
!1164 = !DILocation(line: 975, column: 9, scope: !713)
!1165 = !DILocation(line: 976, column: 9, scope: !713)
!1166 = !DILocation(line: 977, column: 9, scope: !713)
!1167 = !DILocation(line: 978, column: 9, scope: !713)
!1168 = !DILocation(line: 979, column: 9, scope: !713)
!1169 = !DILocation(line: 981, column: 9, scope: !713)
!1170 = !DILocation(line: 926, column: 9, scope: !716)
!1171 = !DILocation(line: 248, column: 3, scope: !33, inlinedAt: !719)
!1172 = !DILocation(line: 89, column: 53, scope: !36, inlinedAt: !720)
!1173 = !DILocation(line: 311, column: 10, scope: !34, inlinedAt: !718)
!1174 = !DILocation(line: 311, column: 3, scope: !34, inlinedAt: !718)
!1175 = !DILocation(line: 291, column: 3, scope: !37, inlinedAt: !725)
!1176 = !DILocation(line: 915, column: 9, scope: !711)
!1177 = !DILocation(line: 917, column: 9, scope: !711)
!1178 = !DILocation(line: 892, column: 11, scope: !711)
!1179 = !DILocation(line: 893, column: 11, scope: !711)
!1180 = !DILocation(line: 896, column: 13, scope: !728)
!1181 = !DILocation(line: 899, column: 13, scope: !730)
!1182 = !DILocation(line: 901, column: 11, scope: !726)
!1183 = !DILocation(line: 905, column: 9, scope: !711)
!1184 = !DILocation(line: 883, column: 13, scope: !711)
!1185 = !DILocation(line: 366, column: 9, scope: !35, inlinedAt: !735)
!1186 = !DILocation(line: 248, column: 3, scope: !33, inlinedAt: !737)
!1187 = !DILocation(line: 229, column: 6, scope: !38, inlinedAt: !738)
!1188 = !DILocation(line: 232, column: 3, scope: !38, inlinedAt: !738)
!1189 = !DILocation(line: 234, column: 31, scope: !38, inlinedAt: !738)
!1190 = !DILocation(line: 28, column: 8, scope: !147, inlinedAt: !738)
!1191 = !DILocation(line: 234, column: 16, scope: !38, inlinedAt: !738)
!1192 = !DILocation(line: 234, column: 5, scope: !38, inlinedAt: !738)
!1193 = !DILocation(line: 238, column: 3, scope: !38, inlinedAt: !738)
!1194 = !DILocation(line: 239, column: 3, scope: !38, inlinedAt: !738)
!1195 = !DILocation(line: 240, column: 3, scope: !38, inlinedAt: !738)
!1196 = !DILocation(line: 910, column: 14, scope: !711)
!1197 = !DILocation(line: 366, column: 9, scope: !35, inlinedAt: !717)
!1198 = !DILocation(line: 229, column: 6, scope: !38, inlinedAt: !739)
!1199 = !DILocation(line: 232, column: 3, scope: !38, inlinedAt: !739)
!1200 = !DILocation(line: 234, column: 31, scope: !38, inlinedAt: !739)
!1201 = !DILocation(line: 28, column: 8, scope: !147, inlinedAt: !739)
!1202 = !DILocation(line: 234, column: 16, scope: !38, inlinedAt: !739)
!1203 = !DILocation(line: 234, column: 5, scope: !38, inlinedAt: !739)
!1204 = !DILocation(line: 238, column: 3, scope: !38, inlinedAt: !739)
!1205 = !DILocation(line: 239, column: 3, scope: !38, inlinedAt: !739)
!1206 = !DILocation(line: 240, column: 3, scope: !38, inlinedAt: !739)
!1207 = !DILocation(line: 525, column: 21, scope: !745, inlinedAt: !746)
!1208 = !DILocation(line: 920, column: 22, scope: !711)
!1209 = !DILocation(line: 524, column: 15, scope: !744, inlinedAt: !746)
!1210 = !DILocation(line: 526, column: 63, scope: !747, inlinedAt: !746)
!1211 = !DILocation(line: 527, column: 51, scope: !747, inlinedAt: !746)
!1212 = !DILocation(line: 977, column: 16, scope: !748, inlinedAt: !755)
!1213 = !DILocation(line: 456, column: 13, scope: !749, inlinedAt: !754)
!1214 = !DILocation(line: 961, column: 18, scope: !756, inlinedAt: !763)
!1215 = !DILocation(line: 1717, column: 9, scope: !764, inlinedAt: !770)
!1216 = !DILocation(line: 180, column: 28, scope: !767, inlinedAt: !769)
!1217 = !DILocation(line: 101, column: 24, scope: !772, inlinedAt: !773)
!1218 = !DILocation(line: 366, column: 9, scope: !35, inlinedAt: !776)
!1219 = !DILocation(line: 659, column: 28, scope: !777, inlinedAt: !778)
!1220 = !DILocation(line: 530, column: 9, scope: !775, inlinedAt: !746)
!1221 = !DILocation(line: 89, column: 3, scope: !36, inlinedAt: !783)
!1222 = !DILocation(line: 229, column: 6, scope: !38, inlinedAt: !784)
!1223 = !DILocation(line: 232, column: 3, scope: !38, inlinedAt: !784)
!1224 = !DILocation(line: 234, column: 31, scope: !38, inlinedAt: !784)
!1225 = !DILocation(line: 28, column: 8, scope: !147, inlinedAt: !784)
!1226 = !DILocation(line: 234, column: 16, scope: !38, inlinedAt: !784)
!1227 = !DILocation(line: 234, column: 5, scope: !38, inlinedAt: !784)
!1228 = !DILocation(line: 238, column: 3, scope: !38, inlinedAt: !784)
!1229 = !DILocation(line: 239, column: 3, scope: !38, inlinedAt: !784)
!1230 = !DILocation(line: 240, column: 3, scope: !38, inlinedAt: !784)
!1231 = !DILocation(line: 248, column: 3, scope: !33, inlinedAt: !786)
!1232 = !DILocation(line: 89, column: 53, scope: !36, inlinedAt: !783)
!1233 = !DILocation(line: 311, column: 10, scope: !34, inlinedAt: !785)
!1234 = !DILocation(line: 28, column: 8, scope: !169, inlinedAt: !787)
!1235 = !DILocation(line: 311, column: 3, scope: !34, inlinedAt: !785)
!1236 = !DILocation(line: 291, column: 3, scope: !37, inlinedAt: !788)
!1237 = !DILocation(line: 536, column: 8, scope: !775, inlinedAt: !746)
!1238 = !DILocation(line: 539, column: 5, scope: !775, inlinedAt: !746)
!1239 = !DILocation(line: 541, column: 5, scope: !775, inlinedAt: !746)
!1240 = !DILocation(line: 532, column: 7, scope: !775, inlinedAt: !746)
!1241 = !DILocation(line: 533, column: 7, scope: !775, inlinedAt: !746)
!1242 = !DILocation(line: 0, scope: !1030, inlinedAt: !746)
!1243 = !DILocation(line: 961, column: 18, scope: !756, inlinedAt: !795)
!1244 = !DILocation(line: 1717, column: 9, scope: !764, inlinedAt: !801)
!1245 = !DILocation(line: 180, column: 28, scope: !798, inlinedAt: !800)
!1246 = !DILocation(line: 977, column: 16, scope: !748, inlinedAt: !809)
!1247 = !DILocation(line: 659, column: 28, scope: !777, inlinedAt: !810)
!1248 = !DILocation(line: 545, column: 53, scope: !805, inlinedAt: !746)
!1249 = !DILocation(line: 1717, column: 9, scope: !764, inlinedAt: !815)
!1250 = !DILocation(line: 180, column: 28, scope: !812, inlinedAt: !814)
!1251 = !DILocation(line: 89, column: 24, scope: !817, inlinedAt: !818)
!1252 = !DILocation(line: 443, column: 13, scope: !802, inlinedAt: !808)
!1253 = !DILocation(line: 659, column: 28, scope: !777, inlinedAt: !819)
!1254 = !DILocation(line: 547, column: 33, scope: !820, inlinedAt: !746)
!1255 = !DILocation(line: 547, column: 10, scope: !820, inlinedAt: !746)
!1256 = !DILocation(line: 930, column: 13, scope: !821)
!1257 = !DILocation(line: 930, column: 12, scope: !821)
!1258 = !DILocation(line: 953, column: 22, scope: !711)
!1259 = !DILocation(line: 808, column: 15, scope: !827, inlinedAt: !828)
!1260 = !DILocation(line: 810, column: 36, scope: !829, inlinedAt: !828)
!1261 = !DILocation(line: 977, column: 16, scope: !830, inlinedAt: !837)
!1262 = !DILocation(line: 807, column: 24, scope: !826, inlinedAt: !828)
!1263 = !DILocation(line: 806, column: 28, scope: !825, inlinedAt: !828)
!1264 = !DILocation(line: 1717, column: 9, scope: !838, inlinedAt: !844)
!1265 = !DILocation(line: 180, column: 28, scope: !841, inlinedAt: !843)
!1266 = !DILocation(line: 443, column: 13, scope: !831, inlinedAt: !836)
!1267 = !DILocation(line: 659, column: 28, scope: !845, inlinedAt: !846)
!1268 = !DILocation(line: 811, column: 24, scope: !847, inlinedAt: !828)
!1269 = !DILocation(line: 814, column: 9, scope: !851, inlinedAt: !828)
!1270 = !DILocation(line: 279, column: 9, scope: !40, inlinedAt: !854)
!1271 = !DILocation(line: 229, column: 6, scope: !41, inlinedAt: !855)
!1272 = !DILocation(line: 248, column: 3, scope: !42, inlinedAt: !856)
!1273 = !DILocation(line: 89, column: 53, scope: !43, inlinedAt: !857)
!1274 = !DILocation(line: 284, column: 3, scope: !40, inlinedAt: !854)
!1275 = !DILocation(line: 28, column: 8, scope: !1051, inlinedAt: !828)
!1276 = !DILocation(line: 833, column: 32, scope: !858, inlinedAt: !828)
!1277 = !DILocation(line: 232, column: 3, scope: !41, inlinedAt: !855)
!1278 = !DILocation(line: 234, column: 31, scope: !41, inlinedAt: !855)
!1279 = !DILocation(line: 28, column: 8, scope: !173, inlinedAt: !855)
!1280 = !DILocation(line: 234, column: 16, scope: !41, inlinedAt: !855)
!1281 = !DILocation(line: 234, column: 5, scope: !41, inlinedAt: !855)
!1282 = !DILocation(line: 238, column: 3, scope: !41, inlinedAt: !855)
!1283 = !DILocation(line: 239, column: 3, scope: !41, inlinedAt: !855)
!1284 = !DILocation(line: 240, column: 3, scope: !41, inlinedAt: !855)
!1285 = !DILocation(line: 89, column: 3, scope: !859, inlinedAt: !860)
!1286 = !DILocation(line: 817, column: 10, scope: !861, inlinedAt: !828)
!1287 = !DILocation(line: 28, column: 8, scope: !1055, inlinedAt: !828)
!1288 = !DILocation(line: 822, column: 11, scope: !861, inlinedAt: !828)
!1289 = !DILocation(line: 822, column: 10, scope: !861, inlinedAt: !828)
!1290 = !DILocation(line: 823, column: 9, scope: !861, inlinedAt: !828)
!1291 = !DILocation(line: 824, column: 9, scope: !861, inlinedAt: !828)
!1292 = !DILocation(line: 825, column: 9, scope: !861, inlinedAt: !828)
!1293 = !DILocation(line: 826, column: 9, scope: !861, inlinedAt: !828)
!1294 = !DILocation(line: 0, scope: !1056, inlinedAt: !828)
!1295 = !DILocation(line: 291, column: 3, scope: !862, inlinedAt: !863)
!1296 = !DILocation(line: 831, column: 49, scope: !851, inlinedAt: !828)
!1297 = !DILocation(line: 28, column: 8, scope: !1057, inlinedAt: !828)
!1298 = !DILocation(line: 834, column: 44, scope: !858, inlinedAt: !828)
!1299 = !DILocation(line: 834, column: 5, scope: !858, inlinedAt: !828)
!1300 = !DILocation(line: 836, column: 8, scope: !858, inlinedAt: !828)
!1301 = !DILocation(line: 0, scope: !826, inlinedAt: !828)
!1302 = !DILocation(line: 0, scope: !825, inlinedAt: !828)
!1303 = !DILocation(line: 837, column: 34, scope: !858, inlinedAt: !828)
!1304 = !DILocation(line: 2548, column: 13, scope: !864, inlinedAt: !865)
!1305 = !DILocation(line: 838, column: 7, scope: !858, inlinedAt: !828)
!1306 = !DILocation(line: 839, column: 39, scope: !858, inlinedAt: !828)
!1307 = !DILocation(line: 839, column: 7, scope: !858, inlinedAt: !828)
!1308 = !DILocation(line: 840, column: 10, scope: !858, inlinedAt: !828)
!1309 = !DILocation(line: 847, column: 9, scope: !829, inlinedAt: !828)
!1310 = !DILocation(line: 799, scope: !825, inlinedAt: !828)
!1311 = !DILocation(line: 985, column: 26, scope: !868)
!1312 = !DILocation(line: 667, column: 20, scope: !870, inlinedAt: !871)
!1313 = !DILocation(line: 668, column: 20, scope: !872, inlinedAt: !871)
!1314 = !DILocation(line: 669, column: 19, scope: !873, inlinedAt: !871)
!1315 = !DILocation(line: 670, column: 32, scope: !874, inlinedAt: !871)
!1316 = !DILocation(line: 671, column: 34, scope: !875, inlinedAt: !871)
!1317 = !DILocation(line: 89, column: 53, scope: !876, inlinedAt: !881)
!1318 = !DILocation(line: 433, column: 6, scope: !878, inlinedAt: !880)
!1319 = !DILocation(line: 229, column: 6, scope: !882, inlinedAt: !883)
!1320 = !DILocation(line: 232, column: 3, scope: !882, inlinedAt: !883)
!1321 = !DILocation(line: 234, column: 31, scope: !882, inlinedAt: !883)
!1322 = !DILocation(line: 28, column: 8, scope: !1060, inlinedAt: !883)
!1323 = !DILocation(line: 234, column: 16, scope: !882, inlinedAt: !883)
!1324 = !DILocation(line: 234, column: 5, scope: !882, inlinedAt: !883)
!1325 = !DILocation(line: 238, column: 3, scope: !882, inlinedAt: !883)
!1326 = !DILocation(line: 239, column: 3, scope: !882, inlinedAt: !883)
!1327 = !DILocation(line: 240, column: 3, scope: !882, inlinedAt: !883)
!1328 = !DILocation(line: 433, column: 68, scope: !878, inlinedAt: !880)
!1329 = !DILocation(line: 675, column: 10, scope: !879, inlinedAt: !871)
!1330 = !DILocation(line: 101, column: 3, scope: !884, inlinedAt: !887)
!1331 = !DILocation(line: 678, column: 10, scope: !886, inlinedAt: !871)
!1332 = !DILocation(line: 686, column: 5, scope: !886, inlinedAt: !871)
!1333 = !DILocation(line: 248, column: 3, scope: !888, inlinedAt: !889)
!1334 = !DILocation(line: 248, column: 14, scope: !888, inlinedAt: !889)
!1335 = !DILocation(line: 688, column: 7, scope: !886, inlinedAt: !871)
!1336 = !DILocation(line: 28, column: 8, scope: !1062, inlinedAt: !871)
!1337 = !DILocation(line: 691, column: 43, scope: !890, inlinedAt: !871)
!1338 = !DILocation(line: 291, column: 3, scope: !891, inlinedAt: !892)
!1339 = !DILocation(line: 692, column: 5, scope: !890, inlinedAt: !871)
!1340 = !DILocation(line: 693, column: 8, scope: !890, inlinedAt: !871)
!1341 = !DILocation(line: 705, column: 32, scope: !890, inlinedAt: !871)
!1342 = !DILocation(line: 705, column: 29, scope: !890, inlinedAt: !871)
!1343 = !DILocation(line: 32, column: 22, scope: !893, inlinedAt: !895)
!1344 = !DILocation(line: 248, column: 3, scope: !888, inlinedAt: !896)
!1345 = !DILocation(line: 710, column: 31, scope: !894, inlinedAt: !871)
!1346 = !DILocation(line: 28, column: 8, scope: !1063, inlinedAt: !895)
!1347 = !DILocation(line: 291, column: 3, scope: !891, inlinedAt: !898)
!1348 = !DILocation(line: 722, column: 33, scope: !897, inlinedAt: !871)
!1349 = !DILocation(line: 713, column: 7, scope: !897, inlinedAt: !871)
!1350 = !DILocation(line: 613, column: 6, scope: !906, inlinedAt: !907)
!1351 = !DILocation(line: 620, column: 6, scope: !906, inlinedAt: !907)
!1352 = !DILocation(line: 625, column: 6, scope: !906, inlinedAt: !907)
!1353 = !DILocation(line: 626, column: 5, scope: !906, inlinedAt: !907)
!1354 = !DILocation(line: 627, column: 5, scope: !906, inlinedAt: !907)
!1355 = !DILocation(line: 625, column: 3, scope: !906, inlinedAt: !907)
!1356 = !DILocation(line: 0, scope: !875, inlinedAt: !871)
!1357 = !DILocation(line: 629, column: 3, scope: !906, inlinedAt: !907)
!1358 = !DILocation(line: 629, column: 14, scope: !906, inlinedAt: !907)
!1359 = !DILocation(line: 630, column: 3, scope: !906, inlinedAt: !907)
!1360 = !DILocation(line: 631, column: 7, scope: !906, inlinedAt: !907)
!1361 = !DILocation(line: 631, column: 6, scope: !906, inlinedAt: !907)
!1362 = !DILocation(line: 638, column: 6, scope: !906, inlinedAt: !907)
!1363 = !DILocation(line: 640, column: 45, scope: !908, inlinedAt: !907)
!1364 = !DILocation(line: 28, column: 8, scope: !1067, inlinedAt: !907)
!1365 = !DILocation(line: 641, column: 5, scope: !913, inlinedAt: !907)
!1366 = !DILocation(line: 639, column: 5, scope: !908, inlinedAt: !907)
!1367 = !DILocation(line: 642, column: 32, scope: !913, inlinedAt: !907)
!1368 = !DILocation(line: 49, column: 8, scope: !1071, inlinedAt: !907)
!1369 = !DILocation(line: 642, column: 7, scope: !913, inlinedAt: !907)
!1370 = !DILocation(line: 644, column: 7, scope: !913, inlinedAt: !907)
!1371 = !DILocation(line: 645, column: 10, scope: !913, inlinedAt: !907)
!1372 = !DILocation(line: 649, column: 5, scope: !913, inlinedAt: !907)
!1373 = !DILocation(line: 28, column: 8, scope: !1071, inlinedAt: !907)
!1374 = !DILocation(line: 650, column: 49, scope: !913, inlinedAt: !907)
!1375 = !DILocation(line: 650, column: 33, scope: !913, inlinedAt: !907)
!1376 = !DILocation(line: 2548, column: 13, scope: !914, inlinedAt: !915)
!1377 = !DILocation(line: 651, column: 5, scope: !913, inlinedAt: !907)
!1378 = !DILocation(line: 638, column: 3, scope: !906, inlinedAt: !907)
!1379 = !DILocation(line: 700, column: 31, scope: !890, inlinedAt: !871)
!1380 = !DILocation(line: 694, column: 7, scope: !890, inlinedAt: !871)
!1381 = !DILocation(line: 573, column: 6, scope: !920, inlinedAt: !921)
!1382 = !DILocation(line: 577, column: 56, scope: !920, inlinedAt: !921)
!1383 = !DILocation(line: 576, column: 31, scope: !920, inlinedAt: !921)
!1384 = !DILocation(line: 21, column: 8, scope: !1079, inlinedAt: !921)
!1385 = !DILocation(line: 576, column: 30, scope: !920, inlinedAt: !921)
!1386 = !DILocation(line: 49, column: 8, scope: !1079, inlinedAt: !921)
!1387 = !DILocation(line: 576, column: 5, scope: !920, inlinedAt: !921)
!1388 = !DILocation(line: 579, column: 5, scope: !920, inlinedAt: !921)
!1389 = !DILocation(line: 581, column: 33, scope: !920, inlinedAt: !921)
!1390 = !DILocation(line: 2548, column: 13, scope: !926, inlinedAt: !927)
!1391 = !DILocation(line: 582, column: 5, scope: !920, inlinedAt: !921)
!1392 = !DILocation(line: 573, column: 3, scope: !920, inlinedAt: !921)
!1393 = !DILocation(line: 0, scope: !874, inlinedAt: !871)
!1394 = !DILocation(line: 0, scope: !873, inlinedAt: !871)
!1395 = !DILocation(line: 586, column: 3, scope: !920, inlinedAt: !921)
!1396 = !DILocation(line: 693, column: 5, scope: !890, inlinedAt: !871)
!1397 = !DILocation(line: 0, scope: !890, inlinedAt: !871)
!1398 = !DILocation(line: 0, scope: !879, inlinedAt: !871)
!1399 = !DILocation(line: 986, column: 16, scope: !929)
!1400 = !DILocation(line: 679, column: 7, scope: !886, inlinedAt: !871)
!1401 = !DILocation(line: 680, column: 7, scope: !886, inlinedAt: !871)
!1402 = !DILocation(line: 681, column: 7, scope: !886, inlinedAt: !871)
!1403 = !DILocation(line: 682, column: 7, scope: !886, inlinedAt: !871)
!1404 = !DILocation(line: 89, column: 53, scope: !36, inlinedAt: !930)
!1405 = !DILocation(line: 311, column: 10, scope: !34, inlinedAt: !736)
!1406 = !DILocation(line: 311, column: 3, scope: !34, inlinedAt: !736)
!1407 = !DILocation(line: 291, column: 3, scope: !37, inlinedAt: !931)
!1408 = !DILocation(line: 891, column: 12, scope: !711)
!1409 = !DILocation(line: 0, scope: !711)
!1410 = !DILocation(line: 1011, column: 2, scope: !711)
!1411 = !DILocation(line: 912, column: 11, scope: !711)
!1412 = !DILocation(line: 0, scope: !1088)
!1413 = !DILocation(line: 932, column: 16, scope: !934)
!1414 = !DILocation(line: 366, column: 9, scope: !35, inlinedAt: !937)
!1415 = !DILocation(line: 248, column: 3, scope: !33, inlinedAt: !939)
!1416 = !DILocation(line: 229, column: 6, scope: !38, inlinedAt: !940)
!1417 = !DILocation(line: 232, column: 3, scope: !38, inlinedAt: !940)
!1418 = !DILocation(line: 234, column: 31, scope: !38, inlinedAt: !940)
!1419 = !DILocation(line: 28, column: 8, scope: !147, inlinedAt: !940)
!1420 = !DILocation(line: 933, column: 13, scope: !934)
!1421 = !DILocation(line: 0, scope: !1093)
!1422 = !DILocation(line: 234, column: 16, scope: !38, inlinedAt: !940)
!1423 = !DILocation(line: 234, column: 5, scope: !38, inlinedAt: !940)
!1424 = !DILocation(line: 239, column: 3, scope: !38, inlinedAt: !940)
!1425 = !DILocation(line: 240, column: 3, scope: !38, inlinedAt: !940)
!1426 = !DILocation(line: 89, column: 53, scope: !36, inlinedAt: !941)
!1427 = !DILocation(line: 311, column: 10, scope: !34, inlinedAt: !938)
!1428 = !DILocation(line: 311, column: 3, scope: !34, inlinedAt: !938)
!1429 = !DILocation(line: 291, column: 3, scope: !37, inlinedAt: !942)
!1430 = !DILocation(line: 936, column: 11, scope: !934)
!1431 = !DILocation(line: 930, column: 9, scope: !821)
!1432 = !DILocation(line: 580, column: 12, scope: !943, inlinedAt: !1097)
!1433 = !DILocation(line: 585, column: 27, scope: !943, inlinedAt: !1097)
!1434 = !DILocation(line: 101, column: 24, scope: !946, inlinedAt: !1098)
!1435 = !DILocation(line: 939, column: 22, scope: !821)
!1436 = !DILocation(line: 943, column: 43, scope: !948)
!1437 = !DILocation(line: 943, column: 16, scope: !948)
!1438 = !DILocation(line: 581, column: 13, scope: !943, inlinedAt: !1097)
!1439 = !DILocation(line: 944, column: 11, scope: !948)
!1440 = !DILocation(line: 943, column: 9, scope: !821)
!1441 = !DILocation(line: 946, column: 9, scope: !821)
!1442 = !DILocation(line: 947, column: 9, scope: !821)
!1443 = !DILocation(line: 958, column: 9, scope: !712)
!1444 = !DILocation(line: 962, column: 11, scope: !950)
!1445 = !DILocation(line: 1717, column: 9, scope: !951, inlinedAt: !958)
!1446 = !DILocation(line: 969, column: 11, scope: !715)
!1447 = !DILocation(line: 970, column: 46, scope: !715)
!1448 = !DILocation(line: 970, column: 45, scope: !715)
!1449 = !DILocation(line: 49, column: 8, scope: !1102)
!1450 = !DILocation(line: 738, column: 10, scope: !959, inlinedAt: !960)
!1451 = !DILocation(line: 987, column: 20, scope: !929)
!1452 = !DILocation(line: 738, column: 38, scope: !959, inlinedAt: !960)
!1453 = !DILocation(line: 89, column: 53, scope: !964, inlinedAt: !968)
end_hunk_1

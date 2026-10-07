Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_row-eb434ee3abd1b8b8.polars_row.38394b63a722f67c-cgu.14?download=true
inline.NumInlined: 305
inline.NumDeleted: 171
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast7utf8_to17binary_to_binviewxECs4PheDXcg4wa_10polars_row:bb.a
  %.pn5381103 = phi { ptr, i32 } [ %.pn5382, %bb.ao ], [ %.pn5382, %bb.ap ], [ %.pn.pn.ph, %bb.d ]
  resume { ptr, i32 } %.pn5381103, !dbg !1965

bb.ap:                                            ; preds = %bb.ao
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(24) %i.k) #25
          to label %.thread100 unwind label %bb.o, !dbg !1958
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality10FixedStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs4PheDXcg4wa_10polars_row(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2046 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !2114, !alias.scope !2107, !noalias !2108, !noundef !173 ; 2 uses
  %i.b = tail call noundef i64 @llvm.fshr.i64(i64 %i.a, i64 %i.a, i64 %2), !dbg !2115 ; 5 uses
  %i.c = icmp samesign ult i64 %2, 17, !dbg !2116
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !2116, !prof !339

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @_RNvCsk79RHlfmHDk_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) @28) #26, !dbg !2117, !noalias !2111
  br label %_RNvXs_NtCsk79RHlfmHDk_8foldhash7qualityNtB4_10FoldHasherNtNtCscgRAwXFJnXP_4core4hash6Hasher6finish.exit, !dbg !2118

bb.c:                                             ; preds = %bb.a
  %i.e = icmp samesign ugt i64 %2, 7, !dbg !2119
  br i1 %i.e, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i, label %bb.d, !dbg !2119

bb.d:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i64 %2, 3, !dbg !2120
  br i1 %i.f, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i, label %bb.e, !dbg !2120

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i: ; preds = %bb.c
  %.sroa.014.0.copyload.i.i.i.i.i.i = load i64, ptr %1, align 1, !dbg !2121, !alias.scope !2112, !noalias !2113
  %i.g = xor i64 %.sroa.014.0.copyload.i.i.i.i.i.i, %i.b, !dbg !2122
  %i.h = getelementptr i8, ptr %1, i64 %2, !dbg !2123
  %i.i = getelementptr i8, ptr %i.h, i64 -8, !dbg !2123
  %.sroa.016.0.copyload.i.i.i.i.i.i = load i64, ptr %i.i, align 1, !dbg !2124, !alias.scope !2112, !noalias !2113
  %i.j = xor i64 %.sroa.016.0.copyload.i.i.i.i.i.i, 4577018097722394903, !dbg !2125
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i, !dbg !2126

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.i.i.i = icmp eq i64 %2, 0, !dbg !2127
  br i1 %.not.i.i.i.i.i.i, label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i, label %bb.f, !dbg !2127

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i: ; preds = %bb.d
  %i.k = getelementptr i8, ptr %1, i64 %2, !dbg !2128
  %i.l = getelementptr i8, ptr %i.k, i64 -4, !dbg !2128
  %.sroa.019.0.copyload.i.i.i.i.i.i = load i32, ptr %i.l, align 1, !dbg !2129, !alias.scope !2112, !noalias !2113
  %.sroa.018.0.copyload.i.i.i.i.i.i = load i32, ptr %1, align 1, !dbg !2130, !alias.scope !2112, !noalias !2113
  %i.m = zext i32 %.sroa.018.0.copyload.i.i.i.i.i.i to i64, !dbg !2131
  %i.n = xor i64 %i.b, %i.m, !dbg !2132
  %i.o = zext i32 %.sroa.019.0.copyload.i.i.i.i.i.i to i64, !dbg !2133
  %i.p = xor i64 %i.o, 4577018097722394903, !dbg !2134
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i, !dbg !2135

bb.f:                                             ; preds = %bb.e
  %i.q = load i8, ptr %1, align 1, !dbg !2136, !alias.scope !2112, !noalias !2113, !noundef !173
  %i.r = lshr i64 %2, 1, !dbg !2137
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r, !dbg !2138
  %i.t = load i8, ptr %i.s, align 1, !dbg !2138, !alias.scope !2112, !noalias !2113, !noundef !173
  %i.u = getelementptr i8, ptr %1, i64 %2, !dbg !2139
  %i.v = getelementptr i8, ptr %i.u, i64 -1, !dbg !2139
  %i.w = load i8, ptr %i.v, align 1, !dbg !2139, !alias.scope !2112, !noalias !2113, !noundef !173
  %i.x = zext i8 %i.q to i64, !dbg !2140
  %i.y = xor i64 %i.b, %i.x, !dbg !2141
  %i.z = zext i8 %i.w to i64, !dbg !2142
  %i.aa = shl nuw nsw i64 %i.z, 8, !dbg !2143
  %i.ab = zext i8 %i.t to i64, !dbg !2144
  %i.ac = or disjoint i64 %i.aa, %i.ab, !dbg !2143
  %i.ad = xor i64 %i.ac, 4577018097722394903, !dbg !2145
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i, !dbg !2146

_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i: ; preds = %bb.f, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i, %bb.e, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i = phi i64 [ %i.j, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i ], [ %i.p, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i ], [ %i.ad, %bb.f ], [ 4577018097722394903, %bb.e ], !dbg !2147
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.g, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i ], [ %i.n, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i ], [ %i.y, %bb.f ], [ %i.b, %bb.e ]
  %i.ae = zext i64 %.sroa.0.0.i.i.i.i.i.i to i128, !dbg !2148
  %i.af = zext i64 %.sroa.04.0.i.i.i.i.i.i to i128, !dbg !2149
  %i.ag = mul nuw i128 %i.ae, %i.af, !dbg !2150   ; 2 uses
  %i.ah = lshr i128 %i.ag, 64, !dbg !2151
  %i.ai = xor i128 %i.ah, %i.ag, !dbg !2152
  %i.aj = trunc i128 %i.ai to i64, !dbg !2152
  br label %_RNvXs_NtCsk79RHlfmHDk_8foldhash7qualityNtB4_10FoldHasherNtNtCscgRAwXFJnXP_4core4hash6Hasher6finish.exit, !dbg !2118

_RNvXs_NtCsk79RHlfmHDk_8foldhash7qualityNtB4_10FoldHasherNtNtCscgRAwXFJnXP_4core4hash6Hasher6finish.exit: ; preds = %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i, %bb.b
  %storemerge.i.i.i.i.i = phi i64 [ %i.d, %bb.b ], [ %i.aj, %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i ], !dbg !2153
  %i.ak = xor i64 %storemerge.i.i.i.i.i, 255, !dbg !2154
  %i.al = zext i64 %i.ak to i128, !dbg !2155
  %i.am = mul nuw i128 %i.al, 13883517620612518109, !dbg !2156 ; 2 uses
  %i.an = lshr i128 %i.am, 64, !dbg !2157
  %.masked = and i128 %i.am, 18446744073709551615, !dbg !2158
  %i.ao = xor i128 %.masked, %i.an, !dbg !2158
  %i.ap = mul nuw nsw i128 %i.ao, 2611923443488327891, !dbg !2159 ; 2 uses
  %i.aq = lshr i128 %i.ap, 64, !dbg !2160
  %i.ar = xor i128 %i.aq, %i.ap, !dbg !2161
  %i.as = trunc i128 %i.ar to i64, !dbg !2161
  ret i64 %i.as, !dbg !2162
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs4PheDXcg4wa_10polars_row(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2163 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2241
  %i.b = load i64, ptr %i.a, align 8, !dbg !2241, !alias.scope !2228, !noalias !2229, !noundef !173 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !2242, !alias.scope !2228, !noalias !2229, !nonnull !173, !align !374, !noundef !173 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2230), !dbg !2243
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2231), !dbg !2244
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2232), !dbg !2245
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2233), !dbg !2246
  %i.d = tail call noundef i64 @llvm.fshr.i64(i64 %i.b, i64 %i.b, i64 %2), !dbg !2247 ; 5 uses
  %i.e = icmp samesign ult i64 %2, 17, !dbg !2248
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !2248, !prof !339

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i64 @_RNvCsk79RHlfmHDk_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c) #26, !dbg !2249, !noalias !2234
  br label %_RNvXs_NtCsk79RHlfmHDk_8foldhash7qualityNtB4_10FoldHasherNtNtCscgRAwXFJnXP_4core4hash6Hasher6finish.exit, !dbg !2250

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2235), !dbg !2251
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2236), !dbg !2251
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !2252
  %i.h = load i64, ptr %i.g, align 8, !dbg !2252, !alias.scope !2236, !noalias !2237, !noundef !173 ; 4 uses
  %i.i = icmp samesign ugt i64 %2, 7, !dbg !2253
  br i1 %i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i, label %bb.d, !dbg !2253

bb.d:                                             ; preds = %bb.c
  %i.j = icmp samesign ugt i64 %2, 3, !dbg !2254
  br i1 %i.j, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i, label %bb.e, !dbg !2254

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i: ; preds = %bb.c
  %.sroa.014.0.copyload.i.i.i.i.i.i = load i64, ptr %1, align 1, !dbg !2255, !alias.scope !2238, !noalias !2239
  %i.k = xor i64 %.sroa.014.0.copyload.i.i.i.i.i.i, %i.d, !dbg !2256
  %i.l = getelementptr i8, ptr %1, i64 %2, !dbg !2257
  %i.m = getelementptr i8, ptr %i.l, i64 -8, !dbg !2257
  %.sroa.016.0.copyload.i.i.i.i.i.i = load i64, ptr %i.m, align 1, !dbg !2258, !alias.scope !2238, !noalias !2239
  %i.n = xor i64 %.sroa.016.0.copyload.i.i.i.i.i.i, %i.h, !dbg !2259
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i, !dbg !2260

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.i.i.i = icmp eq i64 %2, 0, !dbg !2261
  br i1 %.not.i.i.i.i.i.i, label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i, label %bb.f, !dbg !2261

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i: ; preds = %bb.d
  %i.o = getelementptr i8, ptr %1, i64 %2, !dbg !2262
  %i.p = getelementptr i8, ptr %i.o, i64 -4, !dbg !2262
  %.sroa.019.0.copyload.i.i.i.i.i.i = load i32, ptr %i.p, align 1, !dbg !2263, !alias.scope !2238, !noalias !2239
  %.sroa.018.0.copyload.i.i.i.i.i.i = load i32, ptr %1, align 1, !dbg !2264, !alias.scope !2238, !noalias !2239
  %i.q = zext i32 %.sroa.018.0.copyload.i.i.i.i.i.i to i64, !dbg !2265
  %i.r = xor i64 %i.d, %i.q, !dbg !2266
  %i.s = zext i32 %.sroa.019.0.copyload.i.i.i.i.i.i to i64, !dbg !2267
  %i.t = xor i64 %i.h, %i.s, !dbg !2268
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i, !dbg !2269

bb.f:                                             ; preds = %bb.e
  %i.u = load i8, ptr %1, align 1, !dbg !2270, !alias.scope !2238, !noalias !2239, !noundef !173
  %i.v = lshr i64 %2, 1, !dbg !2271
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.v, !dbg !2272
  %i.x = load i8, ptr %i.w, align 1, !dbg !2272, !alias.scope !2238, !noalias !2239, !noundef !173
  %i.y = getelementptr i8, ptr %1, i64 %2, !dbg !2273
  %i.z = getelementptr i8, ptr %i.y, i64 -1, !dbg !2273
  %i.aa = load i8, ptr %i.z, align 1, !dbg !2273, !alias.scope !2238, !noalias !2239, !noundef !173
  %i.ab = zext i8 %i.u to i64, !dbg !2274
  %i.ac = xor i64 %i.d, %i.ab, !dbg !2275
  %i.ad = zext i8 %i.aa to i64, !dbg !2276
  %i.ae = shl nuw nsw i64 %i.ad, 8, !dbg !2277
  %i.af = zext i8 %i.x to i64, !dbg !2278
  %i.ag = or disjoint i64 %i.ae, %i.af, !dbg !2277
  %i.ah = xor i64 %i.ag, %i.h, !dbg !2279
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i, !dbg !2280

_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i: ; preds = %bb.f, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i, %bb.e, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i = phi i64 [ %i.n, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i ], [ %i.t, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i ], [ %i.ah, %bb.f ], [ %i.h, %bb.e ], !dbg !2281
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.k, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i ], [ %i.r, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i ], [ %i.ac, %bb.f ], [ %i.d, %bb.e ]
  %i.ai = zext i64 %.sroa.0.0.i.i.i.i.i.i to i128, !dbg !2282
  %i.aj = zext i64 %.sroa.04.0.i.i.i.i.i.i to i128, !dbg !2283
  %i.ak = mul nuw i128 %i.ai, %i.aj, !dbg !2284   ; 2 uses
  %i.al = lshr i128 %i.ak, 64, !dbg !2285
  %i.am = xor i128 %i.al, %i.ak, !dbg !2286
  %i.an = trunc i128 %i.am to i64, !dbg !2286
  br label %_RNvXs_NtCsk79RHlfmHDk_8foldhash7qualityNtB4_10FoldHasherNtNtCscgRAwXFJnXP_4core4hash6Hasher6finish.exit, !dbg !2250

_RNvXs_NtCsk79RHlfmHDk_8foldhash7qualityNtB4_10FoldHasherNtNtCscgRAwXFJnXP_4core4hash6Hasher6finish.exit: ; preds = %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i, %bb.b
  %storemerge.i.i.i.i.i = phi i64 [ %i.f, %bb.b ], [ %i.an, %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i ], !dbg !2287
  %i.ao = xor i64 %storemerge.i.i.i.i.i, 255, !dbg !2288
  %i.ap = load i64, ptr %i.c, align 8, !dbg !2289, !noalias !2240, !noundef !173
  %i.aq = zext i64 %i.ao to i128, !dbg !2290
  %i.ar = zext i64 %i.ap to i128, !dbg !2291
  %i.as = mul nuw i128 %i.ar, %i.aq, !dbg !2292   ; 2 uses
  %i.at = lshr i128 %i.as, 64, !dbg !2293
  %.masked = and i128 %i.as, 18446744073709551615, !dbg !2294
  %i.au = xor i128 %.masked, %i.at, !dbg !2294
  %i.av = mul nuw nsw i128 %i.au, 2611923443488327891, !dbg !2295 ; 2 uses
  %i.aw = lshr i128 %i.av, 64, !dbg !2296
  %i.ax = xor i128 %i.aw, %i.av, !dbg !2297
  %i.ay = trunc i128 %i.ax to i64, !dbg !2297
  ret i64 %i.ay, !dbg !2298
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RNvNtNtCs4PheDXcg4wa_10polars_row8variable6binary10encode_one(ptr noalias noundef nonnull initializes((0, 1)) %0, ptr noalias noundef readonly captures(address, read_provenance) %1, i64 %2, i8 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2299 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [96 x i8], align 8                ; 7 uses
  %4 = trunc i8 %3 to i1, !dbg !2446              ; 2 uses
  %.not21 = icmp eq ptr %1, null, !dbg !2447
  br i1 %.not21, label %bb.c, label %bb.b, !dbg !2448

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %2, 0, !dbg !2449
  br i1 %i.d, label %bb.d, label %bb.e, !dbg !2449

bb.c:                                             ; preds = %bb.a
  %i.e = shl i8 %3, 6, !dbg !2450
  %sext = ashr i8 %i.e, 7, !dbg !2450
  br label %.loopexit.sink.split, !dbg !2451

.loopexit.sink.split:                             ; preds = %bb.c, %bb.d
  %.26.sink = phi i8 [ %.26, %bb.d ], [ %sext, %bb.c ]
  store i8 %.26.sink, ptr %0, align 1, !dbg !2452
  br label %.loopexit, !dbg !2453

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.loopexit.sink.split, %bb.i, %bb.h
  %.sroa.03.0 = phi i64 [ 0, %bb.i ], [ 1, %.loopexit.sink.split ], [ %i.l, %bb.h ], [ %i.l, %middle.block ], [ %i.l, %vec.epilog.middle.block ], [ %i.l, %.lr.ph ], !dbg !2452
  ret i64 %.sroa.03.0, !dbg !2453

bb.d:                                             ; preds = %bb.b
  %.26 = select i1 %4, i8 -2, i8 1, !dbg !2454
  br label %.loopexit.sink.split, !dbg !2455

bb.e:                                             ; preds = %bb.b
  %i.f = lshr i64 %2, 5, !dbg !2456
  %i.g = and i64 %2, 31, !dbg !2457               ; 6 uses
  %i.h = icmp ne i64 %i.g, 0, !dbg !2457          ; 2 uses
  %i.i = zext i1 %i.h to i64, !dbg !2458
  %i.j = add nuw nsw i64 %i.f, %i.i, !dbg !2456
  %i.k = mul i64 %i.j, 33, !dbg !2459             ; 4 uses
  %i.l = add i64 %i.k, 1, !dbg !2460              ; 13 uses
  store i8 2, ptr %0, align 1, !dbg !2461
  %i.m = and i64 %2, 9223372036854775776, !dbg !2462 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.m, !dbg !2463 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !2464 ; 2 uses
  %i.p = urem i64 %i.k, 33, !dbg !2465            ; 2 uses
  %i.q = sub nuw nsw i64 %i.k, %i.p, !dbg !2466   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q, !dbg !2467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2468, !noalias !2408
  store ptr %1, ptr %i.b, align 8, !dbg !2468, !noalias !2409
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !2468
  store i64 %i.m, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !2468, !noalias !2409
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !2468
  store ptr %i.n, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !2468, !noalias !2409
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !2468
  store i64 %i.g, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !2468, !noalias !2409
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !2468
  store i64 32, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !2468, !noalias !2409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2469, !noalias !2408
  store ptr %i.r, ptr %i.a, align 8, !dbg !2470, !alias.scope !2410, !noalias !2411
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2470
  store i64 %i.p, ptr %.sroa.228.0..sroa_idx, align 8, !dbg !2470, !alias.scope !2410, !noalias !2411
  %.sroa.329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !2470
  store ptr %i.o, ptr %.sroa.329.0..sroa_idx, align 8, !dbg !2470, !alias.scope !2410, !noalias !2411
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !2470
  store i64 %i.q, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !2470, !alias.scope !2410, !noalias !2411
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !2470
  store i64 33, ptr %.sroa.530.0..sroa_idx, align 8, !dbg !2470, !alias.scope !2410, !noalias !2411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2471
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_14ChunksExactMutB1u_EEINtB5_7ZipImplBW_B2c_E3newCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a), !dbg !2472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2473, !noalias !2408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2473, !noalias !2408
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %i.u = load i64, ptr %i.s, align 8, !dbg !2474, !alias.scope !2415, !noalias !2416, !noundef !173 ; 2 uses
  %i.v = load i64, ptr %i.t, align 8, !dbg !2475, !alias.scope !2415, !noalias !2416, !noundef !173
  %i.w = icmp ult i64 %i.u, %i.v, !dbg !2474
  br i1 %i.w, label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_14ChunksExactMutB1u_EEINtB5_7ZipImplBW_B2c_E4nextCs4PheDXcg4wa_10polars_row.exit.lr.ph, label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_14ChunksExactMutB1u_EEINtB5_7ZipImplBW_B2c_E4nextCs4PheDXcg4wa_10polars_row.exit.thread, !dbg !2474

_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_14ChunksExactMutB1u_EEINtB5_7ZipImplBW_B2c_E4nextCs4PheDXcg4wa_10polars_row.exit.lr.ph: ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  br label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_14ChunksExactMutB1u_EEINtB5_7ZipImplBW_B2c_E4nextCs4PheDXcg4wa_10polars_row.exit, !dbg !2474

_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_14ChunksExactMutB1u_EEINtB5_7ZipImplBW_B2c_E4nextCs4PheDXcg4wa_10polars_row.exit: ; preds = %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_14ChunksExactMutB1u_EEINtB5_7ZipImplBW_B2c_E4nextCs4PheDXcg4wa_10polars_row.exit.lr.ph, %bb.f
  %i.y = phi i64 [ %i.u, %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_14ChunksExactMutB1u_EEINtB5_7ZipImplBW_B2c_E4nextCs4PheDXcg4wa_10polars_row.exit.lr.ph ], [ %i.ag, %bb.f ] ; 3 uses
  %i.z = add nuw i64 %i.y, 1, !dbg !2476
  store i64 %i.z, ptr %i.s, align 8, !dbg !2476, !alias.scope !2415, !noalias !2416
  %i.aa = call { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExactINtNtNtBa_3mem12maybe_uninit11MaybeUninithEENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.c, i64 noundef %i.y), !dbg !2477, !noalias !2416 ; 2 uses
  %i.ab = call { ptr, i64 } @_RNvXs1y_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_14ChunksExactMutINtNtNtBa_3mem12maybe_uninit11MaybeUninithEENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.x, i64 noundef %i.y), !dbg !2478, !noalias !2416
  %i.ac = extractvalue { ptr, i64 } %i.aa, 0, !dbg !2477 ; 2 uses
  %.not23 = icmp eq ptr %i.ac, null, !dbg !2479
  br i1 %.not23, label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_14ChunksExactMutB1u_EEINtB5_7ZipImplBW_B2c_E4nextCs4PheDXcg4wa_10polars_row.exit.thread, label %bb.f, !dbg !2479

bb.f:                                             ; preds = %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_14ChunksExactMutB1u_EEINtB5_7ZipImplBW_B2c_E4nextCs4PheDXcg4wa_10polars_row.exit
  %i.ad = extractvalue { ptr, i64 } %i.ab, 0, !dbg !2480 ; 3 uses
  %i.ae = extractvalue { ptr, i64 } %i.aa, 1, !dbg !2477
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 1 %i.ac, i64 %i.ae, i1 false), !dbg !2481
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 32, !dbg !2482
  store i8 -1, ptr %i.af, align 1, !dbg !2483
  %i.ag = load i64, ptr %i.s, align 8, !dbg !2474, !alias.scope !2415, !noalias !2416, !noundef !173 ; 2 uses
  %i.ah = load i64, ptr %i.t, align 8, !dbg !2475, !alias.scope !2415, !noalias !2416, !noundef !173
  %i.ai = icmp ult i64 %i.ag, %i.ah, !dbg !2474
  br i1 %i.ai, label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_14ChunksExactMutB1u_EEINtB5_7ZipImplBW_B2c_E4nextCs4PheDXcg4wa_10polars_row.exit, label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_14ChunksExactMutB1u_EEINtB5_7ZipImplBW_B2c_E4nextCs4PheDXcg4wa_10polars_row.exit.thread, !dbg !2474

_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_14ChunksExactMutB1u_EEINtB5_7ZipImplBW_B2c_E4nextCs4PheDXcg4wa_10polars_row.exit.thread: ; preds = %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_14ChunksExactMutB1u_EEINtB5_7ZipImplBW_B2c_E4nextCs4PheDXcg4wa_10polars_row.exit, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2484
  %i.aj = getelementptr i8, ptr %0, i64 %i.k, !dbg !2485 ; 2 uses
  br i1 %i.h, label %bb.g, label %bb.h, !dbg !2486

bb.g:                                             ; preds = %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_14ChunksExactMutB1u_EEINtB5_7ZipImplBW_B2c_E4nextCs4PheDXcg4wa_10polars_row.exit.thread
  %i.ak = getelementptr i8, ptr %i.aj, i64 -32, !dbg !2487 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull align 1 %i.n, i64 %i.g, i1 false), !dbg !2488
  %i.al = sub nuw nsw i64 32, %i.g, !dbg !2489
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.g, !dbg !2490
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core5slice10specializeSINtNtNtB8_3mem12maybe_uninit11MaybeUninithEINtB4_8SpecFillBK_E9spec_fillCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull %i.am, i64 noundef %i.al, i8 0), !dbg !2491
  %i.an = trunc nuw nsw i64 %i.g to i8, !dbg !2492
  br label %bb.h, !dbg !2493

bb.h:                                             ; preds = %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_14ChunksExactMutB1u_EEINtB5_7ZipImplBW_B2c_E4nextCs4PheDXcg4wa_10polars_row.exit.thread, %bb.g
  %.sink = phi i8 [ %i.an, %bb.g ], [ 32, %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_14ChunksExactMutB1u_EEINtB5_7ZipImplBW_B2c_E4nextCs4PheDXcg4wa_10polars_row.exit.thread ]
  store i8 %.sink, ptr %i.aj, align 1, !dbg !2485
  br i1 %4, label %bb.i, label %.loopexit, !dbg !2494

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %i.l, !dbg !2495
  %i.ap = icmp samesign eq i64 %i.l, 0, !dbg !2496
  br i1 %i.ap, label %.loopexit, label %iter.check, !dbg !2444

iter.check:                                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %i.l, 8, !dbg !2444
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !2444

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1 = icmp ult i64 %i.l, 32, !dbg !2444
  br i1 %min.iters.check1, label %vec.epilog.ph, label %vector.ph, !dbg !2444

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aq = and i64 %i.l, 24
  %n.vec = and i64 %i.l, -32                      ; 4 uses
  %i.ar = getelementptr i8, ptr %0, i64 %n.vec
  br label %vector.body, !dbg !2444

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 3 uses
  %i.as = getelementptr i8, ptr %next.gep, i64 16, !dbg !2497 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !dbg !2497
  %wide.load2 = load <16 x i8>, ptr %i.as, align 1, !dbg !2497
  %i.at = xor <16 x i8> %wide.load, splat (i8 -1), !dbg !2498
  %i.au = xor <16 x i8> %wide.load2, splat (i8 -1), !dbg !2498
  store <16 x i8> %i.at, ptr %next.gep, align 1, !dbg !2499
  store <16 x i8> %i.au, ptr %i.as, align 1, !dbg !2499
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec, !dbg !2444
  br i1 %i.av, label %middle.block, label %vector.body, !dbg !2444, !llvm.loop !2389

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec, !dbg !2444
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check, !dbg !2444

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !384

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec3 = and i64 %i.l, -8                      ; 3 uses
  %i.aw = getelementptr i8, ptr %0, i64 %n.vec3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index4 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next7, %vec.epilog.vector.body ] ; 2 uses
  %next.gep5 = getelementptr i8, ptr %0, i64 %index4 ; 2 uses
  %wide.load6 = load <8 x i8>, ptr %next.gep5, align 1, !dbg !2497
  %i.ax = xor <8 x i8> %wide.load6, splat (i8 -1), !dbg !2498
  store <8 x i8> %i.ax, ptr %next.gep5, align 1, !dbg !2499
  %index.next7 = add nuw i64 %index4, 8           ; 2 uses
  %i.ay = icmp eq i64 %index.next7, %n.vec3, !dbg !2444
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !2444, !llvm.loop !2390

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n8 = icmp eq i64 %i.l, %n.vec3, !dbg !2444
  br i1 %cmp.n8, label %.loopexit, label %.lr.ph.preheader, !dbg !2444

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.015.038.ph = phi ptr [ %0, %iter.check ], [ %i.ar, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ]
  br label %.lr.ph, !dbg !2444

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.015.038 = phi ptr [ %i.az, %.lr.ph ], [ %.sroa.015.038.ph, %.lr.ph.preheader ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.015.038, i64 1, !dbg !2500 ; 2 uses
  %i.ba = load i8, ptr %.sroa.015.038, align 1, !dbg !2497
  %i.bb = xor i8 %i.ba, -1, !dbg !2498
  store i8 %i.bb, ptr %.sroa.015.038, align 1, !dbg !2499
  %i.bc = icmp eq ptr %i.az, %i.ao, !dbg !2496
  br i1 %i.bc, label %.loopexit, label %.lr.ph, !dbg !2444, !llvm.loop !2392
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs4PheDXcg4wa_10polars_row8variable6binary14decode_binview(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 576460752303423488) %2, i8 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2501 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [160 x i8], align 8               ; 4 uses
  %i.d = alloca [128 x i8], align 8               ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  %i.f = alloca [160 x i8], align 8               ; 11 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = trunc i8 %3 to i1, !dbg !2752            ; 2 uses
  %i.i = or i8 %3, -2, !dbg !2753
  %.neg = add nsw i8 %i.i, 1, !dbg !2753          ; 2 uses
  %.24 = select i1 %i.h, i8 -3, i8 2, !dbg !2753
  %i.j = shl i8 %3, 6, !dbg !2754
  %sext = ashr i8 %i.j, 7, !dbg !2754
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !2755
  call void @_RNvNtCs4PheDXcg4wa_10polars_row5utils16decode_opt_nulls(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i8 noundef %sext), !dbg !2756
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !2757
  invoke void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE13with_capacityCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.f, i64 noundef %2)
          to label %bb.b unwind label %.thread, !dbg !2758

.thread40:                                        ; preds = %bb.y, %bb.w
  br i1 %.sroa.016.1.lpad-body, label %bb.z, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECs4PheDXcg4wa_10polars_row.exit, !dbg !2759

.thread:                                          ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.z, !dbg !2759

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !2760
  store i64 0, ptr %i.e, align 8, !dbg !2761
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !2761 ; 6 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.l, align 8, !dbg !2761
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !2761 ; 8 uses
  store i64 0, ptr %i.m, align 8, !dbg !2761
  %.idx = shl nuw nsw i64 %2, 4, !dbg !2762
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.idx, !dbg !2762
  %.not61 = icmp eq i64 %2, 0, !dbg !2763
  br i1 %.not61, label %._crit_edge66, label %.lr.ph65, !dbg !2693

.lr.ph65:                                         ; preds = %bb.b
  %i.o = and i8 %3, 1
  %i.p = sub nsw i8 0, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 144 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.c, !dbg !2693

bb.c:                                             ; preds = %.lr.ph65, %_RINvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB6_22MutableBinaryViewArrayShE26push_value_ignore_validityRINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs4PheDXcg4wa_10polars_row.exit
  %.sroa.01.062 = phi ptr [ %1, %.lr.ph65 ], [ %i.t, %_RINvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB6_22MutableBinaryViewArrayShE26push_value_ignore_validityRINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs4PheDXcg4wa_10polars_row.exit ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.062, i64 16, !dbg !2764 ; 2 uses
  store i64 0, ptr %i.m, align 8, !dbg !2765
  %i.u = load ptr, ptr %.sroa.01.062, align 8, !dbg !2766, !nonnull !173, !noundef !173 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.01.062, i64 8, !dbg !2766 ; 5 uses
  %i.w = load i64, ptr %i.v, align 8, !dbg !2766, !noundef !173
  %i.x = load i8, ptr %i.u, align 1, !dbg !2767, !alias.scope !2696, !noundef !173
  %.not.i = icmp eq i8 %i.x, %.24, !dbg !2767
  br i1 %.not.i, label %.preheader.i, label %.thread83, !dbg !2767

.preheader.i:                                     ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 33, !dbg !2768
  %i.z = load i8, ptr %i.y, align 1, !dbg !2769, !alias.scope !2696, !noundef !173 ; 2 uses
  %i.aa = icmp eq i8 %i.z, %.neg, !dbg !2770
  br i1 %i.aa, label %.lr.ph.i, label %_RNvNtNtCs4PheDXcg4wa_10polars_row8variable6binary11decoded_len.exit, !dbg !2770

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.sroa.01.07.i = phi i64 [ %i.ac, %.lr.ph.i ], [ 0, %.preheader.i ]
  %.sroa.03.06.i = phi i64 [ %i.ab, %.lr.ph.i ], [ 1, %.preheader.i ] ; 2 uses
  %i.ab = add i64 %.sroa.03.06.i, 33, !dbg !2771
  %i.ac = add i64 %.sroa.01.07.i, 32, !dbg !2772  ; 2 uses
  %i.ad = add i64 %.sroa.03.06.i, 65, !dbg !2773  ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.w, !dbg !2774
  call void @llvm.assume(i1 %i.ae), !dbg !2775
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ad, !dbg !2768
  %i.ag = load i8, ptr %i.af, align 1, !dbg !2769, !alias.scope !2696, !noundef !173 ; 2 uses
  %i.ah = icmp eq i8 %i.ag, %.neg, !dbg !2770
  br i1 %i.ah, label %.lr.ph.i, label %_RNvNtNtCs4PheDXcg4wa_10polars_row8variable6binary11decoded_len.exit, !dbg !2770

_RNvNtNtCs4PheDXcg4wa_10polars_row8variable6binary11decoded_len.exit: ; preds = %.lr.ph.i, %.preheader.i
  %.sroa.01.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.ac, %.lr.ph.i ], !dbg !2776
  %.lcssa.i = phi i8 [ %i.z, %.preheader.i ], [ %i.ag, %.lr.ph.i ], !dbg !2769
  %.sroa.05.0.i = xor i8 %.lcssa.i, %i.p, !dbg !2777
  %i.ai = zext i8 %.sroa.05.0.i to i64, !dbg !2778
  %i.aj = add i64 %.sroa.01.0.lcssa.i, %i.ai, !dbg !2779 ; 3 uses
  %i.ak = icmp ugt i64 %i.aj, 31, !dbg !2780
  br i1 %i.ak, label %.lr.ph, label %._crit_edge, !dbg !2780

._crit_edge66:                                    ; preds = %_RINvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB6_22MutableBinaryViewArrayShE26push_value_ignore_validityRINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs4PheDXcg4wa_10polars_row.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2781
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef nonnull align 8 dereferenceable(160) %i.f, i64 160, i1 false), !dbg !2781
  invoke void @_RNvXs1_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB7_22BinaryViewArrayGenericShEINtNtCscgRAwXFJnXP_4core7convert4FromINtB5_22MutableBinaryViewArrayB1t_EE4fromCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(160) %i.c)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !2782

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.g, %_RINvXs2R_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_7IterMuthENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtNtCs4PheDXcg4wa_10polars_row8variable6binary14decode_binview0EB1R_.exit, %bb.d
  %lpad.loopexit47 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %._crit_edge66
  %lpad.loopexit.split-lp48 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.body.i
  %.not55 = phi i1 [ true, %.body.i ], [ false, %.loopexit ], [ false, %.loopexit.split-lp.loopexit ], [ true, %.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.016.1.lpad-body = phi i1 [ false, %.body.i ], [ true, %.loopexit ], [ true, %.loopexit.split-lp.loopexit ], [ true, %.loopexit.split-lp.loopexit.split-lp ]
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit47, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp48, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(24) %i.e) #25
          to label %bb.w unwind label %bb.x, !dbg !2783

._crit_edge.loopexit:                             ; preds = %bb.i
  %.pre71.pre = load ptr, ptr %.sroa.01.062, align 8, !dbg !2784
  br label %._crit_edge, !dbg !2785

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_RNvNtNtCs4PheDXcg4wa_10polars_row8variable6binary11decoded_len.exit
  %.pre71 = phi ptr [ %i.u, %_RNvNtNtCs4PheDXcg4wa_10polars_row8variable6binary11decoded_len.exit ], [ %.pre71.pre, %._crit_edge.loopexit ], !dbg !2784 ; 2 uses
  %i.al = phi i64 [ 0, %_RNvNtNtCs4PheDXcg4wa_10polars_row8variable6binary11decoded_len.exit ], [ %i.cf, %._crit_edge.loopexit ]
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_row-eb434ee3abd1b8b8.polars_row.38394b63a722f67c-cgu.14?download=true
inline.NumInlined: 305
inline.NumDeleted: 171
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast7utf8_to17binary_to_binviewxECs4PheDXcg4wa_10polars_row:bb.a
  %.pn5381103 = phi { ptr, i32 } [ %.pn5382, %bb.ao ], [ %.pn5382, %bb.ap ], [ %.pn.pn.ph, %bb.d ]
  resume { ptr, i32 } %.pn5381103, !dbg !1623

bb.ap:                                            ; preds = %bb.ao
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(24) %i.k) #25
          to label %.thread100 unwind label %bb.o, !dbg !1598
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality10FixedStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs4PheDXcg4wa_10polars_row(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1889 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !1893, !alias.scope !1905, !noalias !1908, !noundef !14 ; 2 uses
  %i.b = tail call noundef i64 @llvm.fshr.i64(i64 %i.a, i64 %i.a, i64 %2), !dbg !1910 ; 5 uses
  %i.c = icmp samesign ult i64 %2, 17, !dbg !1937
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !1937, !prof !1666

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @_RNvCsk79RHlfmHDk_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) @28) #26, !dbg !1938, !noalias !1939
  br label %_RNvXs_NtCsk79RHlfmHDk_8foldhash7qualityNtB4_10FoldHasherNtNtCscgRAwXFJnXP_4core4hash6Hasher6finish.exit, !dbg !1950

bb.c:                                             ; preds = %bb.a
  %i.e = icmp samesign ugt i64 %2, 7, !dbg !1951
  br i1 %i.e, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i, label %bb.d, !dbg !1951

bb.d:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i64 %2, 3, !dbg !1957
  br i1 %i.f, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i, label %bb.e, !dbg !1957

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i: ; preds = %bb.c
  %.sroa.014.0.copyload.i.i.i.i.i.i = load i64, ptr %1, align 1, !dbg !1958, !alias.scope !1965, !noalias !1972
  %i.g = xor i64 %.sroa.014.0.copyload.i.i.i.i.i.i, %i.b, !dbg !1974
  %i.h = getelementptr i8, ptr %1, i64 %2, !dbg !1975
  %i.i = getelementptr i8, ptr %i.h, i64 -8, !dbg !1975
  %.sroa.016.0.copyload.i.i.i.i.i.i = load i64, ptr %i.i, align 1, !dbg !1985, !alias.scope !1965, !noalias !1972
  %i.j = xor i64 %.sroa.016.0.copyload.i.i.i.i.i.i, 4577018097722394903, !dbg !1991
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i, !dbg !1992

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.i.i.i = icmp eq i64 %2, 0, !dbg !1993
  br i1 %.not.i.i.i.i.i.i, label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i, label %bb.f, !dbg !1993

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i: ; preds = %bb.d
  %i.k = getelementptr i8, ptr %1, i64 %2, !dbg !1994
  %i.l = getelementptr i8, ptr %i.k, i64 -4, !dbg !1994
  %.sroa.019.0.copyload.i.i.i.i.i.i = load i32, ptr %i.l, align 1, !dbg !2002, !alias.scope !1965, !noalias !1972
  %.sroa.018.0.copyload.i.i.i.i.i.i = load i32, ptr %1, align 1, !dbg !2011, !alias.scope !1965, !noalias !1972
  %i.m = zext i32 %.sroa.018.0.copyload.i.i.i.i.i.i to i64, !dbg !2017
  %i.n = xor i64 %i.b, %i.m, !dbg !2018
  %i.o = zext i32 %.sroa.019.0.copyload.i.i.i.i.i.i to i64, !dbg !2019
  %i.p = xor i64 %i.o, 4577018097722394903, !dbg !2020
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i, !dbg !2021

bb.f:                                             ; preds = %bb.e
  %i.q = load i8, ptr %1, align 1, !dbg !2022, !alias.scope !1965, !noalias !1972, !noundef !14
  %i.r = lshr i64 %2, 1, !dbg !2023
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r, !dbg !2025
  %i.t = load i8, ptr %i.s, align 1, !dbg !2025, !alias.scope !1965, !noalias !1972, !noundef !14
  %i.u = getelementptr i8, ptr %1, i64 %2, !dbg !2026
  %i.v = getelementptr i8, ptr %i.u, i64 -1, !dbg !2026
  %i.w = load i8, ptr %i.v, align 1, !dbg !2026, !alias.scope !1965, !noalias !1972, !noundef !14
  %i.x = zext i8 %i.q to i64, !dbg !2028
  %i.y = xor i64 %i.b, %i.x, !dbg !2030
  %i.z = zext i8 %i.w to i64, !dbg !2031
  %i.aa = shl nuw nsw i64 %i.z, 8, !dbg !2032
  %i.ab = zext i8 %i.t to i64, !dbg !2033
  %i.ac = or disjoint i64 %i.aa, %i.ab, !dbg !2032
  %i.ad = xor i64 %i.ac, 4577018097722394903, !dbg !2034
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i, !dbg !2035

_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i: ; preds = %bb.f, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i, %bb.e, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i = phi i64 [ %i.j, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i ], [ %i.p, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i ], [ %i.ad, %bb.f ], [ 4577018097722394903, %bb.e ], !dbg !2036
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.g, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i ], [ %i.n, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i ], [ %i.y, %bb.f ], [ %i.b, %bb.e ]
  %i.ae = zext i64 %.sroa.0.0.i.i.i.i.i.i to i128, !dbg !2037
  %i.af = zext i64 %.sroa.04.0.i.i.i.i.i.i to i128, !dbg !2040
  %i.ag = mul nuw i128 %i.ae, %i.af, !dbg !2041   ; 2 uses
  %i.ah = lshr i128 %i.ag, 64, !dbg !2045
  %i.ai = xor i128 %i.ah, %i.ag, !dbg !2048
  %i.aj = trunc i128 %i.ai to i64, !dbg !2048
  br label %_RNvXs_NtCsk79RHlfmHDk_8foldhash7qualityNtB4_10FoldHasherNtNtCscgRAwXFJnXP_4core4hash6Hasher6finish.exit, !dbg !1950

_RNvXs_NtCsk79RHlfmHDk_8foldhash7qualityNtB4_10FoldHasherNtNtCscgRAwXFJnXP_4core4hash6Hasher6finish.exit: ; preds = %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i, %bb.b
  %storemerge.i.i.i.i.i = phi i64 [ %i.d, %bb.b ], [ %i.aj, %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i ], !dbg !2050
  %i.ak = xor i64 %storemerge.i.i.i.i.i, 255, !dbg !2051
  %i.al = zext i64 %i.ak to i128, !dbg !2058
  %i.am = mul nuw i128 %i.al, 13883517620612518109, !dbg !2061 ; 2 uses
  %i.an = lshr i128 %i.am, 64, !dbg !2064
  %.masked = and i128 %i.am, 18446744073709551615, !dbg !2067
  %i.ao = xor i128 %.masked, %i.an, !dbg !2067
  %i.ap = mul nuw nsw i128 %i.ao, 2611923443488327891, !dbg !2069 ; 2 uses
  %i.aq = lshr i128 %i.ap, 64, !dbg !2072
  %i.ar = xor i128 %i.aq, %i.ap, !dbg !2075
  %i.as = trunc i128 %i.ar to i64, !dbg !2075
  ret i64 %i.as, !dbg !2077
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs4PheDXcg4wa_10polars_row(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2078 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2079
  %i.b = load i64, ptr %i.a, align 8, !dbg !2079, !alias.scope !2086, !noalias !2089, !noundef !14 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !2091, !alias.scope !2086, !noalias !2089, !nonnull !14, !align !2092, !noundef !14 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2093), !dbg !2096
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2099), !dbg !2102
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2104), !dbg !2107
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2109), !dbg !2112
  %i.d = tail call noundef i64 @llvm.fshr.i64(i64 %i.b, i64 %i.b, i64 %2), !dbg !2114 ; 5 uses
  %i.e = icmp samesign ult i64 %2, 17, !dbg !2119
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !2119, !prof !1666

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i64 @_RNvCsk79RHlfmHDk_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c) #26, !dbg !2120, !noalias !2121
  br label %_RNvXs_NtCsk79RHlfmHDk_8foldhash7qualityNtB4_10FoldHasherNtNtCscgRAwXFJnXP_4core4hash6Hasher6finish.exit, !dbg !2128

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2129), !dbg !2132
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2133), !dbg !2132
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !2135
  %i.h = load i64, ptr %i.g, align 8, !dbg !2135, !alias.scope !2133, !noalias !2137, !noundef !14 ; 4 uses
  %i.i = icmp samesign ugt i64 %2, 7, !dbg !2138
  br i1 %i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i, label %bb.d, !dbg !2138

bb.d:                                             ; preds = %bb.c
  %i.j = icmp samesign ugt i64 %2, 3, !dbg !2139
  br i1 %i.j, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i, label %bb.e, !dbg !2139

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i: ; preds = %bb.c
  %.sroa.014.0.copyload.i.i.i.i.i.i = load i64, ptr %1, align 1, !dbg !2140, !alias.scope !2144, !noalias !2145
  %i.k = xor i64 %.sroa.014.0.copyload.i.i.i.i.i.i, %i.d, !dbg !2146
  %i.l = getelementptr i8, ptr %1, i64 %2, !dbg !2147
  %i.m = getelementptr i8, ptr %i.l, i64 -8, !dbg !2147
  %.sroa.016.0.copyload.i.i.i.i.i.i = load i64, ptr %i.m, align 1, !dbg !2151, !alias.scope !2144, !noalias !2145
  %i.n = xor i64 %.sroa.016.0.copyload.i.i.i.i.i.i, %i.h, !dbg !2155
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i, !dbg !2156

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.i.i.i = icmp eq i64 %2, 0, !dbg !2157
  br i1 %.not.i.i.i.i.i.i, label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i, label %bb.f, !dbg !2157

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i: ; preds = %bb.d
  %i.o = getelementptr i8, ptr %1, i64 %2, !dbg !2158
  %i.p = getelementptr i8, ptr %i.o, i64 -4, !dbg !2158
  %.sroa.019.0.copyload.i.i.i.i.i.i = load i32, ptr %i.p, align 1, !dbg !2162, !alias.scope !2144, !noalias !2145
  %.sroa.018.0.copyload.i.i.i.i.i.i = load i32, ptr %1, align 1, !dbg !2166, !alias.scope !2144, !noalias !2145
  %i.q = zext i32 %.sroa.018.0.copyload.i.i.i.i.i.i to i64, !dbg !2170
  %i.r = xor i64 %i.d, %i.q, !dbg !2171
  %i.s = zext i32 %.sroa.019.0.copyload.i.i.i.i.i.i to i64, !dbg !2172
  %i.t = xor i64 %i.h, %i.s, !dbg !2173
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i, !dbg !2174

bb.f:                                             ; preds = %bb.e
  %i.u = load i8, ptr %1, align 1, !dbg !2175, !alias.scope !2144, !noalias !2145, !noundef !14
  %i.v = lshr i64 %2, 1, !dbg !2176
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.v, !dbg !2177
  %i.x = load i8, ptr %i.w, align 1, !dbg !2177, !alias.scope !2144, !noalias !2145, !noundef !14
  %i.y = getelementptr i8, ptr %1, i64 %2, !dbg !2178
  %i.z = getelementptr i8, ptr %i.y, i64 -1, !dbg !2178
  %i.aa = load i8, ptr %i.z, align 1, !dbg !2178, !alias.scope !2144, !noalias !2145, !noundef !14
  %i.ab = zext i8 %i.u to i64, !dbg !2179
  %i.ac = xor i64 %i.d, %i.ab, !dbg !2180
  %i.ad = zext i8 %i.aa to i64, !dbg !2181
  %i.ae = shl nuw nsw i64 %i.ad, 8, !dbg !2182
  %i.af = zext i8 %i.x to i64, !dbg !2183
  %i.ag = or disjoint i64 %i.ae, %i.af, !dbg !2182
  %i.ah = xor i64 %i.ag, %i.h, !dbg !2184
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i, !dbg !2185

_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i: ; preds = %bb.f, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i, %bb.e, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i = phi i64 [ %i.n, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i ], [ %i.t, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i ], [ %i.ah, %bb.f ], [ %i.h, %bb.e ], !dbg !2186
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.k, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i ], [ %i.r, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i.i.i.i ], [ %i.ac, %bb.f ], [ %i.d, %bb.e ]
  %i.ai = zext i64 %.sroa.0.0.i.i.i.i.i.i to i128, !dbg !2187
  %i.aj = zext i64 %.sroa.04.0.i.i.i.i.i.i to i128, !dbg !2189
  %i.ak = mul nuw i128 %i.ai, %i.aj, !dbg !2190   ; 2 uses
  %i.al = lshr i128 %i.ak, 64, !dbg !2192
  %i.am = xor i128 %i.al, %i.ak, !dbg !2193
  %i.an = trunc i128 %i.am to i64, !dbg !2193
  br label %_RNvXs_NtCsk79RHlfmHDk_8foldhash7qualityNtB4_10FoldHasherNtNtCscgRAwXFJnXP_4core4hash6Hasher6finish.exit, !dbg !2128

_RNvXs_NtCsk79RHlfmHDk_8foldhash7qualityNtB4_10FoldHasherNtNtCscgRAwXFJnXP_4core4hash6Hasher6finish.exit: ; preds = %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i, %bb.b
  %storemerge.i.i.i.i.i = phi i64 [ %i.f, %bb.b ], [ %i.an, %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i ], !dbg !2194
  %i.ao = xor i64 %storemerge.i.i.i.i.i, 255, !dbg !2195
  %i.ap = load i64, ptr %i.c, align 8, !dbg !2198, !noalias !2199, !noundef !14
  %i.aq = zext i64 %i.ao to i128, !dbg !2202
  %i.ar = zext i64 %i.ap to i128, !dbg !2204
  %i.as = mul nuw i128 %i.ar, %i.aq, !dbg !2205   ; 2 uses
  %i.at = lshr i128 %i.as, 64, !dbg !2207
  %.masked = and i128 %i.as, 18446744073709551615, !dbg !2208
  %i.au = xor i128 %.masked, %i.at, !dbg !2208
  %i.av = mul nuw nsw i128 %i.au, 2611923443488327891, !dbg !2210 ; 2 uses
  %i.aw = lshr i128 %i.av, 64, !dbg !2212
  %i.ax = xor i128 %i.aw, %i.av, !dbg !2213
  %i.ay = trunc i128 %i.ax to i64, !dbg !2213
  ret i64 %i.ay, !dbg !2214
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RNvNtNtCs4PheDXcg4wa_10polars_row8variable6binary10encode_one(ptr noalias noundef nonnull initializes((0, 1)) %0, ptr noalias noundef readonly captures(address, read_provenance) %1, i64 %2, i8 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2215 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [96 x i8], align 8                ; 7 uses
  %4 = trunc i8 %3 to i1, !dbg !2216              ; 2 uses
  %.not21 = icmp eq ptr %1, null, !dbg !2229
  br i1 %.not21, label %bb.c, label %bb.b, !dbg !2231

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %2, 0, !dbg !2232
  br i1 %i.d, label %bb.d, label %bb.e, !dbg !2232

bb.c:                                             ; preds = %bb.a
  %i.e = shl i8 %3, 6, !dbg !2233
  %sext = ashr i8 %i.e, 7, !dbg !2233
  br label %.loopexit.sink.split, !dbg !2236

.loopexit.sink.split:                             ; preds = %bb.c, %bb.d
  %.26.sink = phi i8 [ %.26, %bb.d ], [ %sext, %bb.c ]
  store i8 %.26.sink, ptr %0, align 1, !dbg !2237
  br label %.loopexit, !dbg !2238

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.loopexit.sink.split, %bb.i, %bb.h
  %.sroa.03.0 = phi i64 [ 0, %bb.i ], [ 1, %.loopexit.sink.split ], [ %i.l, %bb.h ], [ %i.l, %middle.block ], [ %i.l, %vec.epilog.middle.block ], [ %i.l, %.lr.ph ], !dbg !2237
  ret i64 %.sroa.03.0, !dbg !2238

bb.d:                                             ; preds = %bb.b
  %.26 = select i1 %4, i8 -2, i8 1, !dbg !2239
  br label %.loopexit.sink.split, !dbg !2240

bb.e:                                             ; preds = %bb.b
  %i.f = lshr i64 %2, 5, !dbg !2241
  %i.g = and i64 %2, 31, !dbg !2245               ; 7 uses
  %i.h = icmp ne i64 %i.g, 0, !dbg !2245
  %i.i = zext i1 %i.h to i64, !dbg !2248
  %i.j = add nuw nsw i64 %i.f, %i.i, !dbg !2241
  %i.k = mul i64 %i.j, 33, !dbg !2249             ; 4 uses
  %i.l = add i64 %i.k, 1, !dbg !2251              ; 13 uses
  store i8 2, ptr %0, align 1, !dbg !2252
  %i.m = and i64 %2, 9223372036854775776, !dbg !2255 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.m, !dbg !2262 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !2270 ; 2 uses
  %i.p = urem i64 %i.k, 33, !dbg !2285            ; 2 uses
  %i.q = sub nuw nsw i64 %i.k, %i.p, !dbg !2291   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q, !dbg !2293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2301, !noalias !2305
  store ptr %1, ptr %i.b, align 8, !dbg !2301, !noalias !2310
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !2301
  store i64 %i.m, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !2301, !noalias !2310
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !2301
  store ptr %i.n, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !2301, !noalias !2310
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !2301
  store i64 %i.g, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !2301, !noalias !2310
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !2301
  store i64 32, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !2301, !noalias !2310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2311, !noalias !2305
  store ptr %i.r, ptr %i.a, align 8, !dbg !2312, !alias.scope !2318, !noalias !2322
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2312
  store i64 %i.p, ptr %.sroa.228.0..sroa_idx, align 8, !dbg !2312, !alias.scope !2318, !noalias !2322
  %.sroa.329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !2312
  store ptr %i.o, ptr %.sroa.329.0..sroa_idx, align 8, !dbg !2312, !alias.scope !2318, !noalias !2322
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !2312
  store i64 %i.q, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !2312, !alias.scope !2318, !noalias !2322
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !2312
  store i64 33, ptr %.sroa.530.0..sroa_idx, align 8, !dbg !2312, !alias.scope !2318, !noalias !2322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2323
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_14ChunksExactMutB1u_EEINtB5_7ZipImplBW_B2c_E3newCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a), !dbg !2324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2327, !noalias !2305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2327, !noalias !2305
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %i.u = load i64, ptr %i.s, align 8, !dbg !2328, !alias.scope !2336, !noalias !2339, !noundef !14 ; 2 uses
  %i.v = load i64, ptr %i.t, align 8, !dbg !2341, !alias.scope !2336, !noalias !2339, !noundef !14
  %i.w = icmp ult i64 %i.u, %i.v, !dbg !2328
  br i1 %i.w, label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_14ChunksExactMutB1u_EEINtB5_7ZipImplBW_B2c_E4nextCs4PheDXcg4wa_10polars_row.exit.lr.ph, label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_14ChunksExactMutB1u_EEINtB5_7ZipImplBW_B2c_E4nextCs4PheDXcg4wa_10polars_row.exit.thread, !dbg !2328

_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_14ChunksExactMutB1u_EEINtB5_7ZipImplBW_B2c_E4nextCs4PheDXcg4wa_10polars_row.exit.lr.ph: ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  br label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_14ChunksExactMutB1u_EEINtB5_7ZipImplBW_B2c_E4nextCs4PheDXcg4wa_10polars_row.exit, !dbg !2328

_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_14ChunksExactMutB1u_EEINtB5_7ZipImplBW_B2c_E4nextCs4PheDXcg4wa_10polars_row.exit: ; preds = %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_14ChunksExactMutB1u_EEINtB5_7ZipImplBW_B2c_E4nextCs4PheDXcg4wa_10polars_row.exit.lr.ph, %bb.f
  %i.y = phi i64 [ %i.u, %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_14ChunksExactMutB1u_EEINtB5_7ZipImplBW_B2c_E4nextCs4PheDXcg4wa_10polars_row.exit.lr.ph ], [ %i.ag, %bb.f ] ; 3 uses
  %i.z = add nuw i64 %i.y, 1, !dbg !2342
  store i64 %i.z, ptr %i.s, align 8, !dbg !2342, !alias.scope !2336, !noalias !2339
  %i.aa = call { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExactINtNtNtBa_3mem12maybe_uninit11MaybeUninithEENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.c, i64 noundef %i.y), !dbg !2344, !noalias !2339 ; 2 uses
  %i.ab = call { ptr, i64 } @_RNvXs1y_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_14ChunksExactMutINtNtNtBa_3mem12maybe_uninit11MaybeUninithEENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.x, i64 noundef %i.y), !dbg !2345, !noalias !2339
  %i.ac = extractvalue { ptr, i64 } %i.aa, 0, !dbg !2344 ; 2 uses
  %.not23 = icmp eq ptr %i.ac, null, !dbg !2346
  br i1 %.not23, label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_14ChunksExactMutB1u_EEINtB5_7ZipImplBW_B2c_E4nextCs4PheDXcg4wa_10polars_row.exit.thread, label %bb.f, !dbg !2346

bb.f:                                             ; preds = %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_14ChunksExactMutB1u_EEINtB5_7ZipImplBW_B2c_E4nextCs4PheDXcg4wa_10polars_row.exit
  %i.ad = extractvalue { ptr, i64 } %i.ab, 0, !dbg !2347 ; 3 uses
  %i.ae = extractvalue { ptr, i64 } %i.aa, 1, !dbg !2344
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 1 %i.ac, i64 %i.ae, i1 false), !dbg !2348
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 32, !dbg !2352
  store i8 -1, ptr %i.af, align 1, !dbg !2358
  %i.ag = load i64, ptr %i.s, align 8, !dbg !2328, !alias.scope !2336, !noalias !2339, !noundef !14 ; 2 uses
  %i.ah = load i64, ptr %i.t, align 8, !dbg !2341, !alias.scope !2336, !noalias !2339, !noundef !14
  %i.ai = icmp ult i64 %i.ag, %i.ah, !dbg !2328
  br i1 %i.ai, label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_14ChunksExactMutB1u_EEINtB5_7ZipImplBW_B2c_E4nextCs4PheDXcg4wa_10polars_row.exit, label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_14ChunksExactMutB1u_EEINtB5_7ZipImplBW_B2c_E4nextCs4PheDXcg4wa_10polars_row.exit.thread, !dbg !2328

_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_14ChunksExactMutB1u_EEINtB5_7ZipImplBW_B2c_E4nextCs4PheDXcg4wa_10polars_row.exit.thread: ; preds = %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_14ChunksExactMutB1u_EEINtB5_7ZipImplBW_B2c_E4nextCs4PheDXcg4wa_10polars_row.exit, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2359
  %i.aj = icmp eq i64 %i.g, 0, !dbg !2360
  %i.ak = getelementptr i8, ptr %0, i64 %i.k, !dbg !2361 ; 2 uses
  br i1 %i.aj, label %bb.h, label %bb.g, !dbg !2360

bb.g:                                             ; preds = %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_14ChunksExactMutB1u_EEINtB5_7ZipImplBW_B2c_E4nextCs4PheDXcg4wa_10polars_row.exit.thread
  %i.al = getelementptr i8, ptr %i.ak, i64 -32, !dbg !2362 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr nonnull align 1 %i.n, i64 %i.g, i1 false), !dbg !2373
  %i.am = sub nuw nsw i64 32, %i.g, !dbg !2377
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.g, !dbg !2382
  call void @_RNvXs_NtNtCscgRAwXFJnXP_4core5slice10specializeSINtNtNtB8_3mem12maybe_uninit11MaybeUninithEINtB4_8SpecFillBK_E9spec_fillCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull %i.an, i64 noundef %i.am, i8 0), !dbg !2387
  %i.ao = trunc nuw nsw i64 %i.g to i8, !dbg !2390
  br label %bb.h, !dbg !2391

bb.h:                                             ; preds = %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_14ChunksExactMutB1u_EEINtB5_7ZipImplBW_B2c_E4nextCs4PheDXcg4wa_10polars_row.exit.thread, %bb.g
  %.sink = phi i8 [ %i.ao, %bb.g ], [ 32, %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactINtNtNtBb_3mem12maybe_uninit11MaybeUninithEEINtBZ_14ChunksExactMutB1u_EEINtB5_7ZipImplBW_B2c_E4nextCs4PheDXcg4wa_10polars_row.exit.thread ]
  store i8 %.sink, ptr %i.ak, align 1, !dbg !2361
  br i1 %4, label %bb.i, label %.loopexit, !dbg !2392

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.l, !dbg !2393
  %i.aq = icmp samesign eq i64 %i.l, 0, !dbg !2405
  br i1 %i.aq, label %.loopexit, label %iter.check, !dbg !2407

iter.check:                                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %i.l, 4, !dbg !2407
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check, !dbg !2407

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1 = icmp ult i64 %i.l, 32, !dbg !2407
  br i1 %min.iters.check1, label %vec.epilog.ph, label %vector.ph, !dbg !2407

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ar = and i64 %i.l, 28
  %n.vec = and i64 %i.l, -32                      ; 4 uses
  %i.as = getelementptr i8, ptr %0, i64 %n.vec
  br label %vector.body, !dbg !2407

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 3 uses
  %i.at = getelementptr i8, ptr %next.gep, i64 16, !dbg !2414 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !dbg !2414
  %wide.load2 = load <16 x i8>, ptr %i.at, align 1, !dbg !2414
  %i.au = xor <16 x i8> %wide.load, splat (i8 -1), !dbg !2416
  %i.av = xor <16 x i8> %wide.load2, splat (i8 -1), !dbg !2416
  store <16 x i8> %i.au, ptr %next.gep, align 1, !dbg !2417
  store <16 x i8> %i.av, ptr %i.at, align 1, !dbg !2417
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec, !dbg !2407
  br i1 %i.aw, label %middle.block, label %vector.body, !dbg !2407, !llvm.loop !2418

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec, !dbg !2407
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check, !dbg !2407

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ar, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !2421

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec3 = and i64 %i.l, -4                      ; 3 uses
  %i.ax = getelementptr i8, ptr %0, i64 %n.vec3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index4 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next7, %vec.epilog.vector.body ] ; 2 uses
  %next.gep5 = getelementptr i8, ptr %0, i64 %index4 ; 2 uses
  %wide.load6 = load <4 x i8>, ptr %next.gep5, align 1, !dbg !2414
  %i.ay = xor <4 x i8> %wide.load6, splat (i8 -1), !dbg !2416
  store <4 x i8> %i.ay, ptr %next.gep5, align 1, !dbg !2417
  %index.next7 = add nuw i64 %index4, 4           ; 2 uses
  %i.az = icmp eq i64 %index.next7, %n.vec3, !dbg !2407
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !2407, !llvm.loop !2422

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n8 = icmp eq i64 %i.l, %n.vec3, !dbg !2407
  br i1 %cmp.n8, label %.loopexit, label %.lr.ph.preheader, !dbg !2407

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.015.038.ph = phi ptr [ %0, %iter.check ], [ %i.as, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  br label %.lr.ph, !dbg !2407

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.015.038 = phi ptr [ %i.ba, %.lr.ph ], [ %.sroa.015.038.ph, %.lr.ph.preheader ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.015.038, i64 1, !dbg !2423 ; 2 uses
  %i.bb = load i8, ptr %.sroa.015.038, align 1, !dbg !2414
  %i.bc = xor i8 %i.bb, -1, !dbg !2416
  store i8 %i.bc, ptr %.sroa.015.038, align 1, !dbg !2417
  %i.bd = icmp eq ptr %i.ba, %i.ap, !dbg !2405
  br i1 %i.bd, label %.loopexit, label %.lr.ph, !dbg !2407, !llvm.loop !2426
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs4PheDXcg4wa_10polars_row8variable6binary14decode_binview(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 576460752303423488) %2, i8 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2427 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [160 x i8], align 8               ; 4 uses
  %i.d = alloca [128 x i8], align 8               ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  %i.f = alloca [160 x i8], align 8               ; 11 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = trunc i8 %3 to i1, !dbg !2428            ; 2 uses
  %i.i = or i8 %3, -2, !dbg !2435
  %.neg = add nsw i8 %i.i, 1, !dbg !2435          ; 2 uses
  %.24 = select i1 %i.h, i8 -3, i8 2, !dbg !2435
  %i.j = shl i8 %3, 6, !dbg !2437
  %sext = ashr i8 %i.j, 7, !dbg !2437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !2441
  call void @_RNvNtCs4PheDXcg4wa_10polars_row5utils16decode_opt_nulls(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i8 noundef %sext), !dbg !2443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !2444
  invoke void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE13with_capacityCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.f, i64 noundef %2)
          to label %bb.b unwind label %.thread, !dbg !2446

.thread40:                                        ; preds = %bb.y, %bb.w
  br i1 %.sroa.016.1.lpad-body, label %bb.z, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECs4PheDXcg4wa_10polars_row.exit, !dbg !2447

.thread:                                          ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.z, !dbg !2447

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !2448
  store i64 0, ptr %i.e, align 8, !dbg !2450
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !2450 ; 6 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.l, align 8, !dbg !2450
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !2450 ; 8 uses
  store i64 0, ptr %i.m, align 8, !dbg !2450
  %.idx = shl nuw nsw i64 %2, 4, !dbg !2453
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.idx, !dbg !2453
  %.not61 = icmp eq i64 %2, 0, !dbg !2465
  br i1 %.not61, label %._crit_edge66, label %.lr.ph65, !dbg !2467

.lr.ph65:                                         ; preds = %bb.b
  %i.o = and i8 %3, 1
  %i.p = sub nsw i8 0, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 144 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.c, !dbg !2467

bb.c:                                             ; preds = %.lr.ph65, %_RINvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB6_22MutableBinaryViewArrayShE26push_value_ignore_validityRINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs4PheDXcg4wa_10polars_row.exit
  %.sroa.01.062 = phi ptr [ %1, %.lr.ph65 ], [ %i.t, %_RINvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB6_22MutableBinaryViewArrayShE26push_value_ignore_validityRINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs4PheDXcg4wa_10polars_row.exit ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.062, i64 16, !dbg !2474 ; 2 uses
  store i64 0, ptr %i.m, align 8, !dbg !2477
  %i.u = load ptr, ptr %.sroa.01.062, align 8, !dbg !2481, !nonnull !14, !noundef !14 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.01.062, i64 8, !dbg !2481 ; 5 uses
  %i.w = load i64, ptr %i.v, align 8, !dbg !2481, !noundef !14
  %i.x = load i8, ptr %i.u, align 1, !dbg !2482, !alias.scope !2485, !noundef !14
  %.not.i = icmp eq i8 %i.x, %.24, !dbg !2482
  br i1 %.not.i, label %.preheader.i, label %.thread83, !dbg !2482

.preheader.i:                                     ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 33, !dbg !2488
  %i.z = load i8, ptr %i.y, align 1, !dbg !2496, !alias.scope !2485, !noundef !14 ; 2 uses
  %i.aa = icmp eq i8 %i.z, %.neg, !dbg !2497
  br i1 %i.aa, label %.lr.ph.i, label %_RNvNtNtCs4PheDXcg4wa_10polars_row8variable6binary11decoded_len.exit, !dbg !2497

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.sroa.01.07.i = phi i64 [ %i.ac, %.lr.ph.i ], [ 0, %.preheader.i ]
  %.sroa.03.06.i = phi i64 [ %i.ab, %.lr.ph.i ], [ 1, %.preheader.i ] ; 2 uses
  %i.ab = add i64 %.sroa.03.06.i, 33, !dbg !2499
  %i.ac = add i64 %.sroa.01.07.i, 32, !dbg !2500  ; 2 uses
  %i.ad = add i64 %.sroa.03.06.i, 65, !dbg !2501  ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.w, !dbg !2502
  call void @llvm.assume(i1 %i.ae), !dbg !2503
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ad, !dbg !2488
  %i.ag = load i8, ptr %i.af, align 1, !dbg !2496, !alias.scope !2485, !noundef !14 ; 2 uses
  %i.ah = icmp eq i8 %i.ag, %.neg, !dbg !2497
  br i1 %i.ah, label %.lr.ph.i, label %_RNvNtNtCs4PheDXcg4wa_10polars_row8variable6binary11decoded_len.exit, !dbg !2497

_RNvNtNtCs4PheDXcg4wa_10polars_row8variable6binary11decoded_len.exit: ; preds = %.lr.ph.i, %.preheader.i
  %.sroa.01.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.ac, %.lr.ph.i ], !dbg !2504
  %.lcssa.i = phi i8 [ %i.z, %.preheader.i ], [ %i.ag, %.lr.ph.i ], !dbg !2496
  %.sroa.05.0.i = xor i8 %.lcssa.i, %i.p, !dbg !2505
  %i.ai = zext i8 %.sroa.05.0.i to i64, !dbg !2506
  %i.aj = add i64 %.sroa.01.0.lcssa.i, %i.ai, !dbg !2508 ; 3 uses
  %i.ak = icmp ugt i64 %i.aj, 31, !dbg !2509
  br i1 %i.ak, label %.lr.ph, label %._crit_edge, !dbg !2509

._crit_edge66:                                    ; preds = %_RINvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB6_22MutableBinaryViewArrayShE26push_value_ignore_validityRINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECs4PheDXcg4wa_10polars_row.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2513
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef nonnull align 8 dereferenceable(160) %i.f, i64 160, i1 false), !dbg !2513
  invoke void @_RNvXs1_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB7_22BinaryViewArrayGenericShEINtNtCscgRAwXFJnXP_4core7convert4FromINtB5_22MutableBinaryViewArrayB1t_EE4fromCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(160) %i.c)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !2514

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
          to label %bb.w unwind label %bb.x, !dbg !2517

._crit_edge.loopexit:                             ; preds = %bb.i
  %.pre71.pre = load ptr, ptr %.sroa.01.062, align 8, !dbg !2518
  br label %._crit_edge, !dbg !2519

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_RNvNtNtCs4PheDXcg4wa_10polars_row8variable6binary11decoded_len.exit
  %.pre71 = phi ptr [ %i.u, %_RNvNtNtCs4PheDXcg4wa_10polars_row8variable6binary11decoded_len.exit ], [ %.pre71.pre, %._crit_edge.loopexit ], !dbg !2518 ; 2 uses
  %i.al = phi i64 [ 0, %_RNvNtNtCs4PheDXcg4wa_10polars_row8variable6binary11decoded_len.exit ], [ %i.cf, %._crit_edge.loopexit ]
end_hunk_0

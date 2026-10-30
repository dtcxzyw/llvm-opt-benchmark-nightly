Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_io-49c95113d69d0886.polars_io.f964ffef671f36be-cgu.07?download=true
inline.NumInlined: 2048
inline.NumDeleted: 828
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvMNtCs8RKTHBS4OBx_12object_store4pathNtB3_4Path5parseReECslpwjCj2YNBy_9polars_io:bb.a
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2201
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.434.0..sroa_idx, align 8, !dbg !2201
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2201
  store i64 0, ptr %.sroa.535.0..sroa_idx, align 8, !dbg !2201
  store i64 -9223372036854775802, ptr %0, align 8, !dbg !2201
  br label %bb.bj, !dbg !2202

bb.c:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_RNvMNtCscgRAwXFJnXP_4core5sliceSh9ends_withCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.7.0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1), !dbg !2203
  %i.m = sext i1 %i.l to i64, !dbg !2204
  %.sroa.7.1 = add i64 %.sroa.7.0, %i.m, !dbg !2204 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !2205
  call void @_RNvMsu_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.7.1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1), !dbg !2206
  %.sroa.036.sroa.0.0.copyload = load i64, ptr %i.e, align 8, !dbg !2207
  %.sroa.036.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !2207
  %.sroa.036.sroa.4.0.copyload = load i64, ptr %.sroa.036.sroa.4.0..sroa_idx, align 8, !dbg !2207 ; 28 uses
  %.sroa.036.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !2207
  %.sroa.036.sroa.6.0.copyload = load i64, ptr %.sroa.036.sroa.6.0..sroa_idx, align 8, !dbg !2207 ; 6 uses
  %.sroa.036.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !2207
  %.sroa.036.sroa.7.0.copyload = load i64, ptr %.sroa.036.sroa.7.0..sroa_idx, align 8, !dbg !2207 ; 2 uses
  %.sroa.036.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40, !dbg !2207
  %.sroa.036.sroa.8.0.copyload = load i64, ptr %.sroa.036.sroa.8.0..sroa_idx, align 8, !dbg !2207
  %.sroa.036.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56, !dbg !2207
  %.sroa.036.sroa.10.0.copyload = load i64, ptr %.sroa.036.sroa.10.0..sroa_idx, align 8, !dbg !2207
  %.sroa.036.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72, !dbg !2207
  %.sroa.036.sroa.12.0.copyload = load ptr, ptr %.sroa.036.sroa.12.0..sroa_idx, align 8, !dbg !2207, !nonnull !1049, !noundef !1049 ; 18 uses
  %.sroa.036.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 80, !dbg !2207
  %.sroa.036.sroa.13.0.copyload = load i64, ptr %.sroa.036.sroa.13.0..sroa_idx, align 8, !dbg !2207 ; 57 uses
  %.sroa.036.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88, !dbg !2207
  %.sroa.036.sroa.14.0.copyload = load ptr, ptr %.sroa.036.sroa.14.0..sroa_idx, align 8, !dbg !2207 ; 5 uses
  %.sroa.036.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 96, !dbg !2207
  %.sroa.036.sroa.15.0.copyload = load i64, ptr %.sroa.036.sroa.15.0..sroa_idx, align 8, !dbg !2207 ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !2208
  %i.n = trunc nuw i64 %.sroa.036.sroa.0.0.copyload to i1
  %i.o = add nsw i64 %.sroa.036.sroa.15.0.copyload, -1 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %.sroa.5137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %.sroa.4148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  br i1 %i.n, label %.split.us, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.c
  %i.q = and i64 %.sroa.036.sroa.6.0.copyload, 65536, !dbg !2209
  %.sroa.999.sroa.10116.0.extract.trunc.not = icmp eq i64 %i.q, 0, !dbg !2209
  %.sroa.999.sroa.0.0.extract.trunc = trunc i64 %.sroa.036.sroa.6.0.copyload to i1, !dbg !2209
  br i1 %.sroa.999.sroa.10116.0.extract.trunc.not, label %.lr.ph.i.i.peel, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.peel, !dbg !2210

.lr.ph.i.i.peel:                                  ; preds = %.preheader.i.i.preheader
  %i.r = trunc i64 %.sroa.036.sroa.6.0.copyload to i1, !dbg !2211 ; 2 uses
  %i.s = icmp eq i64 %.sroa.036.sroa.4.0.copyload, 0, !dbg !2212
  br i1 %i.s, label %bb.f, label %bb.d, !dbg !2212

bb.d:                                             ; preds = %.lr.ph.i.i.peel
  %.not.i.i.i.peel.i.peel = icmp ult i64 %.sroa.036.sroa.4.0.copyload, %.sroa.036.sroa.13.0.copyload, !dbg !2213
  br i1 %.not.i.i.i.peel.i.peel, label %bb.e, label %.split.i.i.i.peel.i.peel, !dbg !2213

.split.i.i.i.peel.i.peel:                         ; preds = %bb.d
  %i.t = icmp eq i64 %.sroa.036.sroa.4.0.copyload, %.sroa.036.sroa.13.0.copyload, !dbg !2214
  br i1 %i.t, label %bb.f, label %.loopexit.i, !dbg !2215

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %.sroa.036.sroa.4.0.copyload, !dbg !2216
  %i.v = load i8, ptr %i.u, align 1, !dbg !2216, !alias.scope !2124, !noalias !2125, !noundef !1049
  %i.w = icmp sgt i8 %i.v, -65, !dbg !2217
  br i1 %i.w, label %bb.f, label %.loopexit.i, !dbg !2215

bb.f:                                             ; preds = %bb.e, %.split.i.i.i.peel.i.peel, %.lr.ph.i.i.peel
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %.sroa.036.sroa.4.0.copyload, !dbg !2218 ; 4 uses
  %i.y = icmp samesign eq i64 %.sroa.036.sroa.4.0.copyload, %.sroa.036.sroa.13.0.copyload, !dbg !2219
  br i1 %i.y, label %.loopexit19.i.peel, label %bb.g, !dbg !2220

bb.g:                                             ; preds = %bb.f
  %i.z = load i8, ptr %i.x, align 1, !dbg !2221, !noalias !2127, !noundef !1049 ; 5 uses
  %i.aa = icmp sgt i8 %i.z, -1, !dbg !2222
  br i1 %i.aa, label %bb.h, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.peel.i.peel, !dbg !2222

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.peel.i.peel: ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 1, !dbg !2223
  %i.ac = and i8 %i.z, 31, !dbg !2224
  %i.ad = zext nneg i8 %i.ac to i32, !dbg !2224   ; 3 uses
  %i.ae = add nuw nsw i64 %.sroa.036.sroa.4.0.copyload, 1, !dbg !2225
  %i.af = icmp samesign ne i64 %i.ae, %.sroa.036.sroa.13.0.copyload, !dbg !2225
  tail call void @llvm.assume(i1 %i.af), !dbg !2226
  %i.ag = load i8, ptr %i.ab, align 1, !dbg !2227, !noalias !2127, !noundef !1049
  %i.ah = shl nuw nsw i32 %i.ad, 6, !dbg !2228
  %i.ai = and i8 %i.ag, 63, !dbg !2229
  %i.aj = zext nneg i8 %i.ai to i32, !dbg !2229   ; 2 uses
  %i.ak = or disjoint i32 %i.ah, %i.aj, !dbg !2228
  %i.al = icmp samesign ugt i8 %i.z, -33, !dbg !2230
  br i1 %i.al, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.peel.i.peel, label %bb.i, !dbg !2230

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.peel.i.peel: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.peel.i.peel
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 2, !dbg !2231
  %i.an = add nuw nsw i64 %.sroa.036.sroa.4.0.copyload, 2, !dbg !2232
  %i.ao = icmp samesign ne i64 %i.an, %.sroa.036.sroa.13.0.copyload, !dbg !2232
  tail call void @llvm.assume(i1 %i.ao), !dbg !2233
  %i.ap = load i8, ptr %i.am, align 1, !dbg !2234, !noalias !2127, !noundef !1049
  %i.aq = shl nuw nsw i32 %i.aj, 6, !dbg !2235
  %i.ar = and i8 %i.ap, 63, !dbg !2236
  %i.as = zext nneg i8 %i.ar to i32, !dbg !2236
  %i.at = or disjoint i32 %i.aq, %i.as, !dbg !2235 ; 2 uses
  %i.au = shl nuw nsw i32 %i.ad, 12, !dbg !2237
  %i.av = or disjoint i32 %i.at, %i.au, !dbg !2238
  %i.aw = icmp samesign ugt i8 %i.z, -17, !dbg !2239
  br i1 %i.aw, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.peel.i.peel, label %bb.i, !dbg !2239

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.peel.i.peel: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.peel.i.peel
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 3, !dbg !2240
  %i.ay = add nuw nsw i64 %.sroa.036.sroa.4.0.copyload, 3, !dbg !2241
  %i.az = icmp samesign ne i64 %i.ay, %.sroa.036.sroa.13.0.copyload, !dbg !2241
  tail call void @llvm.assume(i1 %i.az), !dbg !2242
  %i.ba = load i8, ptr %i.ax, align 1, !dbg !2243, !noalias !2127, !noundef !1049
  %i.bb = shl nuw nsw i32 %i.ad, 18, !dbg !2244
  %i.bc = and i32 %i.bb, 1835008, !dbg !2244
  %i.bd = shl nuw nsw i32 %i.at, 6, !dbg !2245
  %i.be = and i8 %i.ba, 63, !dbg !2246
  %i.bf = zext nneg i8 %i.be to i32, !dbg !2246
  %i.bg = or disjoint i32 %i.bd, %i.bf, !dbg !2245
  %i.bh = or disjoint i32 %i.bg, %i.bc, !dbg !2247
  br label %bb.i, !dbg !2248

bb.h:                                             ; preds = %bb.g
  %i.bi = zext nneg i8 %i.z to i32, !dbg !2249
  br label %bb.i, !dbg !2250

bb.i:                                             ; preds = %bb.h, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.peel.i.peel, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.peel.i.peel, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.peel.i.peel
  %.sroa.4.0.i.ph.i.i.peel.i.peel = phi i32 [ %i.av, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.peel.i.peel ], [ %i.bh, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.peel.i.peel ], [ %i.ak, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.peel.i.peel ], [ %i.bi, %bb.h ] ; 4 uses
  %i.bj = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 1114112, !dbg !2251
  tail call void @llvm.assume(i1 %i.bj), !dbg !2251
  br i1 %i.r, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.peel, label %bb.j, !dbg !2252

bb.j:                                             ; preds = %bb.i
  %i.bk = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 128, !dbg !2253
  br i1 %i.bk, label %bb.m, label %bb.k, !dbg !2253

bb.k:                                             ; preds = %bb.j
  %i.bl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 2048, !dbg !2254
  br i1 %i.bl, label %bb.m, label %bb.l, !dbg !2254

bb.l:                                             ; preds = %bb.k
  %i.bm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 65536, !dbg !2255
  %..i.i.peel.i.peel = select i1 %i.bm, i64 3, i64 4, !dbg !2256
  br label %bb.m, !dbg !2256

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.01.0.i.i.peel.i.peel = phi i64 [ 2, %bb.k ], [ %..i.i.peel.i.peel, %bb.l ], [ 1, %bb.j ], !dbg !2256
  %i.bn = add i64 %.sroa.01.0.i.i.peel.i.peel, %.sroa.036.sroa.4.0.copyload, !dbg !2257 ; 23 uses
  %i.bo = icmp eq i64 %i.bn, 0, !dbg !2212
  br i1 %i.bo, label %bb.p, label %bb.n, !dbg !2212

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i.i.peel = icmp ult i64 %i.bn, %.sroa.036.sroa.13.0.copyload, !dbg !2213
  br i1 %.not.i.i.i.i.peel, label %bb.o, label %.split.i.i.i.i.peel, !dbg !2213

.split.i.i.i.i.peel:                              ; preds = %bb.n
  %i.bp = icmp eq i64 %i.bn, %.sroa.036.sroa.13.0.copyload, !dbg !2214
  br i1 %i.bp, label %bb.p, label %.loopexit.i, !dbg !2215

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.bn, !dbg !2216
  %i.br = load i8, ptr %i.bq, align 1, !dbg !2216, !alias.scope !2124, !noalias !2128, !noundef !1049
  %i.bs = icmp sgt i8 %i.br, -65, !dbg !2217
  br i1 %i.bs, label %bb.p, label %.loopexit.i, !dbg !2215

bb.p:                                             ; preds = %bb.o, %.split.i.i.i.i.peel, %bb.m
  %i.bt = icmp samesign eq i64 %i.bn, %.sroa.036.sroa.13.0.copyload, !dbg !2219
  br i1 %i.bt, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.peel, label %bb.q, !dbg !2220

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.bn, !dbg !2218
  %i.bv = load i8, ptr %i.bu, align 1, !dbg !2221, !noalias !2129, !noundef !1049 ; 3 uses
  %i.bw = icmp sgt i8 %i.bv, -1, !dbg !2222
  br i1 %i.bw, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.peel, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.i.peel, !dbg !2222

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.i.peel: ; preds = %bb.q
  %i.bx = add nuw nsw i64 %i.bn, 1, !dbg !2225
  %i.by = icmp samesign ne i64 %i.bx, %.sroa.036.sroa.13.0.copyload, !dbg !2225
  tail call void @llvm.assume(i1 %i.by), !dbg !2226
  %i.bz = icmp samesign ugt i8 %i.bv, -33, !dbg !2230
  br i1 %i.bz, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.i.peel, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.peel, !dbg !2230

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.i.peel
  %i.ca = add nuw nsw i64 %i.bn, 2, !dbg !2232
  %i.cb = icmp samesign ne i64 %i.ca, %.sroa.036.sroa.13.0.copyload, !dbg !2232
  tail call void @llvm.assume(i1 %i.cb), !dbg !2233
  %i.cc = icmp samesign ugt i8 %i.bv, -17, !dbg !2239
  br i1 %i.cc, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.i.peel, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.peel, !dbg !2239

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.i.peel
  %i.cd = add nuw nsw i64 %i.bn, 3, !dbg !2241
  %i.ce = icmp samesign ne i64 %i.cd, %.sroa.036.sroa.13.0.copyload, !dbg !2241
  tail call void @llvm.assume(i1 %i.ce), !dbg !2242
  br label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.peel, !dbg !2248

.loopexit19.i.peel:                               ; preds = %bb.f
  br i1 %i.r, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.peel, label %bb.r, !dbg !2252

bb.r:                                             ; preds = %.loopexit19.i.peel
  br label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.peel, !dbg !2258

_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.peel: ; preds = %bb.r, %.loopexit19.i.peel, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.i.peel, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.i.peel, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.i.peel, %bb.q, %bb.p, %bb.i, %.preheader.i.i.preheader
  %.sroa.999.sroa.0.4.peel = phi i1 [ true, %bb.r ], [ false, %.loopexit19.i.peel ], [ false, %bb.i ], [ %.sroa.999.sroa.0.0.extract.trunc, %.preheader.i.i.preheader ], [ false, %bb.p ], [ false, %bb.q ], [ false, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.i.peel ], !dbg !2209
  %.sroa.51.2.peel = phi i1 [ true, %bb.r ], [ false, %.loopexit19.i.peel ], [ false, %bb.i ], [ true, %.preheader.i.i.preheader ], [ false, %bb.p ], [ false, %bb.q ], [ false, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.i.peel ], !dbg !2209
  %.sroa.41.2.peel = phi i64 [ 0, %bb.r ], [ %.sroa.036.sroa.13.0.copyload, %.loopexit19.i.peel ], [ %.sroa.036.sroa.4.0.copyload, %bb.i ], [ 0, %.preheader.i.i.preheader ], [ %.sroa.036.sroa.13.0.copyload, %bb.p ], [ %i.bn, %bb.q ], [ %i.bn, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.i.peel ], [ %i.bn, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.i.peel ], [ %i.bn, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.i.peel ], !dbg !2209
  %.sroa.5.5.peel = phi i64 [ %.sroa.036.sroa.13.0.copyload, %bb.r ], [ %.sroa.036.sroa.13.0.copyload, %.loopexit19.i.peel ], [ %.sroa.036.sroa.4.0.copyload, %bb.i ], [ %.sroa.036.sroa.4.0.copyload, %.preheader.i.i.preheader ], [ %.sroa.036.sroa.13.0.copyload, %bb.p ], [ %i.bn, %bb.q ], [ %i.bn, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.i.peel ], [ %i.bn, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.i.peel ], [ %i.bn, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.i.peel ], !dbg !2209
  %.sroa.7.1.pn.peel = phi i64 [ %.sroa.7.1, %bb.r ], [ %.sroa.036.sroa.13.0.copyload, %.loopexit19.i.peel ], [ %.sroa.036.sroa.4.0.copyload, %bb.i ], [ %.sroa.7.1, %.preheader.i.i.preheader ], [ %.sroa.036.sroa.13.0.copyload, %bb.p ], [ %i.bn, %bb.q ], [ %i.bn, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.i.peel ], [ %i.bn, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.i.peel ], [ %i.bn, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.i.peel ] ; 2 uses
  %i.cf = icmp eq i64 %.sroa.7.1.pn.peel, 0, !dbg !2259
  br i1 %i.cf, label %.split249.us, label %bb.s, !dbg !2259

bb.s:                                             ; preds = %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !2260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !2260
  call void @_RNvMNtNtCs8RKTHBS4OBx_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.036.sroa.12.0.copyload, i64 noundef %.sroa.7.1.pn.peel), !dbg !2260
  %i.cg = load i64, ptr %i.f, align 8, !dbg !2261, !range !1096, !noundef !1049
  %.not77.peel = icmp eq i64 %i.cg, -9223372036854775808, !dbg !2261
  br i1 %.not77.peel, label %bb.t, label %.split251.us, !dbg !2262

bb.t:                                             ; preds = %bb.s
  %.sroa.0136.0.copyload.peel = load ptr, ptr %i.p, align 8, !dbg !2263 ; 2 uses
  %i.ch = load <2 x i64>, ptr %.sroa.5137.0..sroa_idx, align 8, !dbg !2263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !2264
  store ptr %.sroa.0136.0.copyload.peel, ptr %i.g, align 8, !dbg !2265
  store <2 x i64> %i.ch, ptr %.sroa.4148.0..sroa_idx, align 8, !dbg !2265
  %i.ci = icmp eq ptr %.sroa.0136.0.copyload.peel, inttoptr (i64 -9223372036854775808 to ptr), !dbg !2266
  br i1 %i.ci, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit.peel, label %bb.u, !dbg !2266

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i.i.peel unwind label %.split253.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !2267

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i.i.peel: ; preds = %bb.u
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g), !dbg !2268
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit.peel, !dbg !2266

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit.peel: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i.i.peel, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !2269
  br i1 %.sroa.51.2.peel, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.thread, label %.preheader.i.i, !dbg !2270

.split.us:                                        ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.036.sroa.14.0.copyload) ]
  %i.cj = sub i64 %.sroa.036.sroa.15.0.copyload, %.sroa.036.sroa.6.0.copyload
  %umax49.i88.us = tail call i64 @llvm.umax.i64(i64 %.sroa.036.sroa.4.0.copyload, i64 range(i64 0, -9223372036854775808) %.sroa.036.sroa.15.0.copyload)
  %i.ck = add i64 %.sroa.036.sroa.4.0.copyload, -1, !dbg !2270
  %.first_iter = icmp ult i64 %i.ck, %.sroa.036.sroa.15.0.copyload
  %invariant.op = sub i64 1, %.sroa.036.sroa.4.0.copyload
  %exitcond.not.i90.us375.not = icmp ult i64 %.sroa.036.sroa.4.0.copyload, %.sroa.036.sroa.15.0.copyload
  %invariant.op459 = sub i64 1, %.sroa.036.sroa.4.0.copyload
  %.not181.us378 = icmp eq i64 %.sroa.036.sroa.4.0.copyload, 0
  br label %bb.v, !dbg !2270

bb.v:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit.us, %.split.us
  %.sroa.19.0226.us = phi i64 [ %.sroa.036.sroa.8.0.copyload, %.split.us ], [ %.sroa.19.2.us, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit.us ] ; 3 uses
  %.sroa.31103.0225.us = phi i64 [ %.sroa.036.sroa.10.0.copyload, %.split.us ], [ %.sroa.31103.2.us, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit.us ] ; 3 uses
  %.sroa.41.0224.us = phi i64 [ 0, %.split.us ], [ %.sroa.41.2.us, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit.us ] ; 7 uses
  %i.cl = icmp eq i64 %.sroa.31103.0225.us, -1, !dbg !2271
  %i.cm = add i64 %.sroa.19.0226.us, %i.o, !dbg !2272 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, %.sroa.036.sroa.13.0.copyload, !dbg !2273 ; 2 uses
  br i1 %i.cl, label %bb.af, label %bb.w, !dbg !2271

bb.w:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !2135), !dbg !2274
  call void @llvm.experimental.noalias.scope.decl(metadata !2136), !dbg !2274
  br i1 %i.cn, label %.lr.ph.i.us, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.us, !dbg !2275

.lr.ph.i.us:                                      ; preds = %bb.w, %.sink.split.i80.us
  %i.co = phi i64 [ %.sink.i.us, %.sink.split.i80.us ], [ %.sroa.31103.0225.us, %bb.w ] ; 3 uses
  %i.cp = phi i64 [ %i.ds, %.sink.split.i80.us ], [ %i.cm, %bb.w ]
  %i.cq = phi i64 [ %.ph71.i.us, %.sink.split.i80.us ], [ %.sroa.19.0226.us, %bb.w ] ; 8 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.cp, !dbg !2276
  %i.cs = load i8, ptr %i.cr, align 1, !dbg !2277, !alias.scope !2135, !noundef !1049
  %i.ct = and i8 %i.cs, 63, !dbg !2278
  %i.cu = zext nneg i8 %i.ct to i64, !dbg !2279
  %i.cv = shl nuw i64 1, %i.cu, !dbg !2280
  %i.cw = and i64 %i.cv, %.sroa.036.sroa.7.0.copyload, !dbg !2280
  %i.cx = icmp eq i64 %i.cw, 0, !dbg !2280
  br i1 %i.cx, label %bb.ae, label %bb.x, !dbg !2280

bb.x:                                             ; preds = %.lr.ph.i.us
  %.sroa.0.0.i.i.us = call i64 @llvm.umax.i64(i64 %i.co, i64 %.sroa.036.sroa.4.0.copyload), !dbg !2281 ; 4 uses
  %umax49.i.us = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.us, i64 range(i64 0, -9223372036854775808) %.sroa.036.sroa.15.0.copyload), !dbg !2282
  %exitcond.not.i.us370.not = icmp ult i64 %.sroa.0.0.i.i.us, %.sroa.036.sroa.15.0.copyload, !dbg !2283
  br i1 %exitcond.not.i.us370.not, label %.lr.ph, label %.preheader182.us.preheader, !dbg !2284

bb.y:                                             ; preds = %bb.z
  %i.cy = add nuw i64 %.sroa.02.0.i.us371, 1, !dbg !2285 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.cy, %umax49.i.us, !dbg !2283
  br i1 %exitcond.not.i.us, label %.preheader182.us.preheader, label %.lr.ph, !dbg !2284

.preheader182.us.preheader:                       ; preds = %bb.y, %bb.x
  %i.cz = icmp ult i64 %i.co, %.sroa.036.sroa.4.0.copyload, !dbg !2286
  br i1 %i.cz, label %.lr.ph373, label %.preheader182.us.preheader._crit_edge, !dbg !2287

.lr.ph:                                           ; preds = %bb.x, %bb.y
  %.sroa.02.0.i.us371 = phi i64 [ %i.cy, %bb.y ], [ %.sroa.0.0.i.i.us, %bb.x ] ; 4 uses
  %i.da = add i64 %.sroa.02.0.i.us371, %i.cq, !dbg !2288 ; 2 uses
  %i.db = icmp ult i64 %i.da, %.sroa.036.sroa.13.0.copyload, !dbg !2289
  br i1 %i.db, label %bb.z, label %.split230.us, !dbg !2289

bb.z:                                             ; preds = %.lr.ph
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.14.0.copyload, i64 %.sroa.02.0.i.us371, !dbg !2290
  %i.dd = load i8, ptr %i.dc, align 1, !dbg !2290, !alias.scope !2136, !noundef !1049
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.da, !dbg !2289
  %i.df = load i8, ptr %i.de, align 1, !dbg !2289, !alias.scope !2135, !noundef !1049
  %.not21.i.us = icmp eq i8 %i.dd, %i.df, !dbg !2290
  br i1 %.not21.i.us, label %bb.y, label %bb.aa, !dbg !2290

bb.aa:                                            ; preds = %bb.z
  %.reass.reass = add i64 %i.cq, %invariant.op
  %i.dg = add i64 %.reass.reass, %.sroa.02.0.i.us371, !dbg !2291
  br label %.sink.split.i80.us, !dbg !2292

.preheader182.us:                                 ; preds = %bb.ac
  %i.dh = icmp ult i64 %i.co, %i.di, !dbg !2286
  br i1 %i.dh, label %.lr.ph373, label %.preheader182.us.preheader._crit_edge, !dbg !2287

.lr.ph373:                                        ; preds = %.preheader182.us.preheader, %.preheader182.us
  %.sroa.2.0.i.us372 = phi i64 [ %i.di, %.preheader182.us ], [ %.sroa.036.sroa.4.0.copyload, %.preheader182.us.preheader ]
  %i.di = add i64 %.sroa.2.0.i.us372, -1, !dbg !2293 ; 6 uses
  %i.dj = icmp ult i64 %i.di, %.sroa.036.sroa.15.0.copyload, !dbg !2294
  br i1 %i.dj, label %bb.ab, label %.split233.us, !dbg !2294

bb.ab:                                            ; preds = %.lr.ph373
  %i.dk = add i64 %i.di, %i.cq, !dbg !2295        ; 3 uses
  %i.dl = icmp ult i64 %i.dk, %.sroa.036.sroa.13.0.copyload, !dbg !2296
  br i1 %i.dl, label %bb.ac, label %.split236.us, !dbg !2296

bb.ac:                                            ; preds = %bb.ab
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.14.0.copyload, i64 %i.di, !dbg !2294
  %i.dn = load i8, ptr %i.dm, align 1, !dbg !2294, !alias.scope !2136, !noundef !1049
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.dk, !dbg !2296
  %i.dp = load i8, ptr %i.do, align 1, !dbg !2296, !alias.scope !2135, !noundef !1049
  %.not.i81.us = icmp eq i8 %i.dn, %i.dp, !dbg !2294
  br i1 %.not.i81.us, label %.preheader182.us, label %bb.ad, !dbg !2294

bb.ad:                                            ; preds = %bb.ac
  %i.dq = add i64 %i.cq, %.sroa.036.sroa.6.0.copyload, !dbg !2297
  br label %.sink.split.i80.us, !dbg !2298

bb.ae:                                            ; preds = %.lr.ph.i.us
  %i.dr = add i64 %i.cq, %.sroa.036.sroa.15.0.copyload, !dbg !2299
  br label %.sink.split.i80.us, !dbg !2300

.sink.split.i80.us:                               ; preds = %bb.ae, %bb.ad, %bb.aa
  %.sink.i.us = phi i64 [ %i.cj, %bb.ad ], [ 0, %bb.aa ], [ 0, %bb.ae ] ; 2 uses
  %.ph71.i.us = phi i64 [ %i.dq, %bb.ad ], [ %i.dg, %bb.aa ], [ %i.dr, %bb.ae ] ; 2 uses
  %i.ds = add i64 %.ph71.i.us, %i.o, !dbg !2301   ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %.sroa.036.sroa.13.0.copyload, !dbg !2275
  br i1 %i.dt, label %.lr.ph.i.us, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.us, !dbg !2275

.preheader182.us.preheader._crit_edge:            ; preds = %.preheader182.us.preheader, %.preheader182.us
  %i.du = add i64 %i.cq, %.sroa.036.sroa.15.0.copyload, !dbg !2302 ; 2 uses
  br label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.us, !dbg !2303

bb.af:                                            ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !2144), !dbg !2304
  call void @llvm.experimental.noalias.scope.decl(metadata !2145), !dbg !2304
  br i1 %i.cn, label %.lr.ph.i85.us, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.us, !dbg !2305

.lr.ph.i85.us:                                    ; preds = %bb.af, %bb.am
  %i.dv = phi i64 [ %i.ew, %bb.am ], [ %i.cm, %bb.af ]
  %i.dw = phi i64 [ %i.ev, %bb.am ], [ %.sroa.19.0226.us, %bb.af ] ; 8 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.dv, !dbg !2306
  %i.dy = load i8, ptr %i.dx, align 1, !dbg !2307, !alias.scope !2144, !noundef !1049
  %i.dz = and i8 %i.dy, 63, !dbg !2308
  %i.ea = zext nneg i8 %i.dz to i64, !dbg !2309
  %i.eb = shl nuw i64 1, %i.ea, !dbg !2310
  %i.ec = and i64 %i.eb, %.sroa.036.sroa.7.0.copyload, !dbg !2310
  %i.ed = icmp eq i64 %i.ec, 0, !dbg !2310
  br i1 %i.ed, label %bb.al, label %.preheader.preheader, !dbg !2310

.preheader.preheader:                             ; preds = %.lr.ph.i85.us
  br i1 %exitcond.not.i90.us375.not, label %.lr.ph377, label %.preheader.us.preheader, !dbg !2311

.preheader:                                       ; preds = %bb.ag
  %i.ee = add nuw i64 %.sroa.02.0.i89.us376, 1, !dbg !2312 ; 2 uses
  %exitcond.not.i90.us = icmp eq i64 %i.ee, %umax49.i88.us, !dbg !2313
  br i1 %exitcond.not.i90.us, label %.preheader.us.preheader, label %.lr.ph377, !dbg !2311

.preheader.us.preheader:                          ; preds = %.preheader, %.preheader.preheader
  br i1 %.not181.us378, label %.preheader.us.preheader._crit_edge, label %.lr.ph380, !dbg !2314

.lr.ph377:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.02.0.i89.us376 = phi i64 [ %i.ee, %.preheader ], [ %.sroa.036.sroa.4.0.copyload, %.preheader.preheader ] ; 4 uses
  %i.ef = add i64 %.sroa.02.0.i89.us376, %i.dw, !dbg !2315 ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %.sroa.036.sroa.13.0.copyload, !dbg !2316
  br i1 %i.eg, label %bb.ag, label %.split239.us, !dbg !2316

bb.ag:                                            ; preds = %.lr.ph377
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.14.0.copyload, i64 %.sroa.02.0.i89.us376, !dbg !2317
  %i.ei = load i8, ptr %i.eh, align 1, !dbg !2317, !alias.scope !2145, !noundef !1049
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.ef, !dbg !2316
  %i.ek = load i8, ptr %i.ej, align 1, !dbg !2316, !alias.scope !2144, !noundef !1049
  %.not21.i92.us = icmp eq i8 %i.ei, %i.ek, !dbg !2317
  br i1 %.not21.i92.us, label %.preheader, label %bb.ah, !dbg !2317

bb.ah:                                            ; preds = %bb.ag
  %.reass337.reass = add i64 %i.dw, %invariant.op459
  %i.el = add i64 %.reass337.reass, %.sroa.02.0.i89.us376, !dbg !2318
  br label %bb.am, !dbg !2319

.preheader.us:                                    ; preds = %bb.aj
  %.not181.us = icmp eq i64 %i.em, 0, !dbg !2320
  br i1 %.not181.us, label %.preheader.us.preheader._crit_edge, label %.lr.ph380, !dbg !2314

.lr.ph380:                                        ; preds = %.preheader.us.preheader, %.preheader.us
  %.sroa.2.0.i93.us379 = phi i64 [ %i.em, %.preheader.us ], [ %.sroa.036.sroa.4.0.copyload, %.preheader.us.preheader ]
  %i.em = add i64 %.sroa.2.0.i93.us379, -1, !dbg !2321 ; 5 uses
  br i1 %.first_iter, label %bb.ai, label %.split243.us, !dbg !2322

bb.ai:                                            ; preds = %.lr.ph380
  %i.en = add i64 %i.em, %i.dw, !dbg !2323        ; 3 uses
  %i.eo = icmp ult i64 %i.en, %.sroa.036.sroa.13.0.copyload, !dbg !2324
  br i1 %i.eo, label %bb.aj, label %.split246.us, !dbg !2324

bb.aj:                                            ; preds = %bb.ai
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.14.0.copyload, i64 %i.em, !dbg !2322
  %i.eq = load i8, ptr %i.ep, align 1, !dbg !2322, !alias.scope !2145, !noundef !1049
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.en, !dbg !2324
  %i.es = load i8, ptr %i.er, align 1, !dbg !2324, !alias.scope !2144, !noundef !1049
  %.not.i94.us = icmp eq i8 %i.eq, %i.es, !dbg !2322
  br i1 %.not.i94.us, label %.preheader.us, label %bb.ak, !dbg !2322

bb.ak:                                            ; preds = %bb.aj
  %i.et = add i64 %.sroa.036.sroa.6.0.copyload, %i.dw, !dbg !2325
  br label %bb.am, !dbg !2326

bb.al:                                            ; preds = %.lr.ph.i85.us
  %i.eu = add i64 %i.dw, %.sroa.036.sroa.15.0.copyload, !dbg !2327
  br label %bb.am, !dbg !2328

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.ah
  %i.ev = phi i64 [ %i.el, %bb.ah ], [ %i.eu, %bb.al ], [ %i.et, %bb.ak ] ; 2 uses
  %i.ew = add i64 %i.ev, %i.o, !dbg !2329         ; 2 uses
  %i.ex = icmp ult i64 %i.ew, %.sroa.036.sroa.13.0.copyload, !dbg !2305
  br i1 %i.ex, label %.lr.ph.i85.us, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.us, !dbg !2305

.preheader.us.preheader._crit_edge:               ; preds = %.preheader.us.preheader, %.preheader.us
  %i.ey = add i64 %i.dw, %.sroa.036.sroa.15.0.copyload, !dbg !2330 ; 2 uses
  br label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.us, !dbg !2331

_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.us: ; preds = %.sink.split.i80.us, %bb.am, %.preheader.us.preheader._crit_edge, %bb.af, %.preheader182.us.preheader._crit_edge, %bb.w
  %.sroa.51.2.us = phi i1 [ false, %.preheader182.us.preheader._crit_edge ], [ true, %bb.w ], [ true, %bb.am ], [ false, %.preheader.us.preheader._crit_edge ], [ true, %bb.af ], [ true, %.sink.split.i80.us ], !dbg !2209
  %.sroa.41.2.us = phi i64 [ %i.du, %.preheader182.us.preheader._crit_edge ], [ %.sroa.41.0224.us, %bb.w ], [ %.sroa.41.0224.us, %bb.am ], [ %i.ey, %.preheader.us.preheader._crit_edge ], [ %.sroa.41.0224.us, %bb.af ], [ %.sroa.41.0224.us, %.sink.split.i80.us ], !dbg !2209
  %.sroa.31103.2.us = phi i64 [ 0, %.preheader182.us.preheader._crit_edge ], [ %.sroa.31103.0225.us, %bb.w ], [ -1, %bb.am ], [ -1, %.preheader.us.preheader._crit_edge ], [ -1, %bb.af ], [ %.sink.i.us, %.sink.split.i80.us ], !dbg !2209
  %.sroa.19.2.us = phi i64 [ %i.du, %.preheader182.us.preheader._crit_edge ], [ %.sroa.036.sroa.13.0.copyload, %bb.w ], [ %.sroa.036.sroa.13.0.copyload, %bb.am ], [ %i.ey, %.preheader.us.preheader._crit_edge ], [ %.sroa.036.sroa.13.0.copyload, %bb.af ], [ %.sroa.036.sroa.13.0.copyload, %.sink.split.i80.us ], !dbg !2209
  %.sroa.7.1.pn.us = phi i64 [ %i.cq, %.preheader182.us.preheader._crit_edge ], [ %.sroa.7.1, %bb.w ], [ %.sroa.7.1, %bb.am ], [ %i.dw, %.preheader.us.preheader._crit_edge ], [ %.sroa.7.1, %bb.af ], [ %.sroa.7.1, %.sink.split.i80.us ] ; 2 uses
  %i.ez = icmp eq i64 %.sroa.7.1.pn.us, %.sroa.41.0224.us, !dbg !2259
  br i1 %i.ez, label %.split249.us, label %bb.an, !dbg !2259

bb.an:                                            ; preds = %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.us
  %.sroa.4.1.i.us = sub nuw i64 %.sroa.7.1.pn.us, %.sroa.41.0224.us, !dbg !2332
  %.sroa.0.1.i.us = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %.sroa.41.0224.us, !dbg !2332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !2260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !2260
  call void @_RNvMNtNtCs8RKTHBS4OBx_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.us, i64 noundef %.sroa.4.1.i.us), !dbg !2260
  %i.fa = load i64, ptr %i.f, align 8, !dbg !2261, !range !1096, !noundef !1049
  %.not77.us = icmp eq i64 %i.fa, -9223372036854775808, !dbg !2261
  br i1 %.not77.us, label %bb.ao, label %.split251.us, !dbg !2262

bb.ao:                                            ; preds = %bb.an
  %.sroa.0136.0.copyload.us = load ptr, ptr %i.p, align 8, !dbg !2263 ; 2 uses
  %i.fb = load <2 x i64>, ptr %.sroa.5137.0..sroa_idx, align 8, !dbg !2263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !2264
  store ptr %.sroa.0136.0.copyload.us, ptr %i.g, align 8, !dbg !2265
  store <2 x i64> %i.fb, ptr %.sroa.4148.0..sroa_idx, align 8, !dbg !2265
  %i.fc = icmp eq ptr %.sroa.0136.0.copyload.us, inttoptr (i64 -9223372036854775808 to ptr), !dbg !2266
  br i1 %i.fc, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit.us, label %bb.ap, !dbg !2266

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i.i.us unwind label %.split253.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !2267

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i.i.us: ; preds = %bb.ap
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g), !dbg !2268
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit.us, !dbg !2266

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit.us: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i.i.us, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !2269
  br i1 %.sroa.51.2.us, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.thread, label %bb.v, !dbg !2270

.preheader.i.i:                                   ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit.peel, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit
  %.sroa.5.0227 = phi i64 [ %.sroa.5.5, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit ], [ %.sroa.5.5.peel, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit.peel ] ; 15 uses
  %.sroa.41.0224 = phi i64 [ %.sroa.41.2, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit ], [ %.sroa.41.2.peel, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit.peel ] ; 4 uses
  %.sroa.999.sroa.0.0222 = phi i1 [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit ], [ %.sroa.999.sroa.0.4.peel, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit.peel ] ; 2 uses
  %i.fd = icmp eq i64 %.sroa.5.0227, 0, !dbg !2212
  br i1 %i.fd, label %bb.as, label %bb.aq, !dbg !2212

bb.aq:                                            ; preds = %.preheader.i.i
  %.not.i.i.i.peel.i = icmp ult i64 %.sroa.5.0227, %.sroa.036.sroa.13.0.copyload, !dbg !2213
  br i1 %.not.i.i.i.peel.i, label %bb.ar, label %.split.i.i.i.peel.i, !dbg !2213

.split.i.i.i.peel.i:                              ; preds = %bb.aq
  %i.fe = icmp eq i64 %.sroa.5.0227, %.sroa.036.sroa.13.0.copyload, !dbg !2214
  br i1 %i.fe, label %bb.as, label %.loopexit.i, !dbg !2215

bb.ar:                                            ; preds = %bb.aq
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %.sroa.5.0227, !dbg !2216
  %i.fg = load i8, ptr %i.ff, align 1, !dbg !2216, !alias.scope !2124, !noalias !2125, !noundef !1049
  %i.fh = icmp sgt i8 %i.fg, -65, !dbg !2217
  br i1 %i.fh, label %bb.as, label %.loopexit.i, !dbg !2215

bb.as:                                            ; preds = %bb.ar, %.split.i.i.i.peel.i, %.preheader.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %.sroa.5.0227, !dbg !2218 ; 4 uses
  %i.fj = icmp samesign eq i64 %.sroa.5.0227, %.sroa.036.sroa.13.0.copyload, !dbg !2219
  br i1 %i.fj, label %.loopexit19.i, label %bb.at, !dbg !2220

bb.at:                                            ; preds = %bb.as
  %i.fk = load i8, ptr %i.fi, align 1, !dbg !2221, !noalias !2127, !noundef !1049 ; 5 uses
  %i.fl = icmp sgt i8 %i.fk, -1, !dbg !2222
  br i1 %i.fl, label %bb.au, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.peel.i, !dbg !2222

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.peel.i: ; preds = %bb.at
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 1, !dbg !2223
  %i.fn = and i8 %i.fk, 31, !dbg !2224
  %i.fo = zext nneg i8 %i.fn to i32, !dbg !2224   ; 3 uses
  %i.fp = add nuw nsw i64 %.sroa.5.0227, 1, !dbg !2225
  %i.fq = icmp samesign ne i64 %i.fp, %.sroa.036.sroa.13.0.copyload, !dbg !2225
  call void @llvm.assume(i1 %i.fq), !dbg !2226
  %i.fr = load i8, ptr %i.fm, align 1, !dbg !2227, !noalias !2127, !noundef !1049
  %i.fs = shl nuw nsw i32 %i.fo, 6, !dbg !2228
  %i.ft = and i8 %i.fr, 63, !dbg !2229
  %i.fu = zext nneg i8 %i.ft to i32, !dbg !2229   ; 2 uses
  %i.fv = or disjoint i32 %i.fs, %i.fu, !dbg !2228
  %i.fw = icmp samesign ugt i8 %i.fk, -33, !dbg !2230
  br i1 %i.fw, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.peel.i, label %bb.av, !dbg !2230

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.peel.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fi, i64 2, !dbg !2231
  %i.fy = add nuw nsw i64 %.sroa.5.0227, 2, !dbg !2232
  %i.fz = icmp samesign ne i64 %i.fy, %.sroa.036.sroa.13.0.copyload, !dbg !2232
  call void @llvm.assume(i1 %i.fz), !dbg !2233
  %i.ga = load i8, ptr %i.fx, align 1, !dbg !2234, !noalias !2127, !noundef !1049
  %i.gb = shl nuw nsw i32 %i.fu, 6, !dbg !2235
  %i.gc = and i8 %i.ga, 63, !dbg !2236
  %i.gd = zext nneg i8 %i.gc to i32, !dbg !2236
  %i.ge = or disjoint i32 %i.gb, %i.gd, !dbg !2235 ; 2 uses
  %i.gf = shl nuw nsw i32 %i.fo, 12, !dbg !2237
  %i.gg = or disjoint i32 %i.ge, %i.gf, !dbg !2238
  %i.gh = icmp samesign ugt i8 %i.fk, -17, !dbg !2239
  br i1 %i.gh, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.peel.i, label %bb.av, !dbg !2239

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.peel.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fi, i64 3, !dbg !2240
  %i.gj = add nuw nsw i64 %.sroa.5.0227, 3, !dbg !2241
  %i.gk = icmp samesign ne i64 %i.gj, %.sroa.036.sroa.13.0.copyload, !dbg !2241
  call void @llvm.assume(i1 %i.gk), !dbg !2242
  %i.gl = load i8, ptr %i.gi, align 1, !dbg !2243, !noalias !2127, !noundef !1049
  %i.gm = shl nuw nsw i32 %i.fo, 18, !dbg !2244
  %i.gn = and i32 %i.gm, 1835008, !dbg !2244
  %i.go = shl nuw nsw i32 %i.ge, 6, !dbg !2245
  %i.gp = and i8 %i.gl, 63, !dbg !2246
  %i.gq = zext nneg i8 %i.gp to i32, !dbg !2246
  %i.gr = or disjoint i32 %i.go, %i.gq, !dbg !2245
  %i.gs = or disjoint i32 %i.gr, %i.gn, !dbg !2247
  br label %bb.av, !dbg !2248

bb.au:                                            ; preds = %bb.at
  %i.gt = zext nneg i8 %i.fk to i32, !dbg !2249
  br label %bb.av, !dbg !2250

bb.av:                                            ; preds = %bb.au, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.peel.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.peel.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.peel.i
  %.sroa.4.0.i.ph.i.i.peel.i = phi i32 [ %i.gg, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.peel.i ], [ %i.gs, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.peel.i ], [ %i.fv, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.peel.i ], [ %i.gt, %bb.au ] ; 4 uses
  %i.gu = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 1114112, !dbg !2251
  call void @llvm.assume(i1 %i.gu), !dbg !2251
  br i1 %.sroa.999.sroa.0.0222, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit, label %bb.aw, !dbg !2252

bb.aw:                                            ; preds = %bb.av
  %i.gv = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 128, !dbg !2253
  br i1 %i.gv, label %bb.az, label %bb.ax, !dbg !2253

bb.ax:                                            ; preds = %bb.aw
  %i.gw = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 2048, !dbg !2254
  br i1 %i.gw, label %bb.az, label %bb.ay, !dbg !2254

bb.ay:                                            ; preds = %bb.ax
  %i.gx = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 65536, !dbg !2255
  %..i.i.peel.i = select i1 %i.gx, i64 3, i64 4, !dbg !2256
  br label %bb.az, !dbg !2256

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  %.sroa.01.0.i.i.peel.i = phi i64 [ 2, %bb.ax ], [ %..i.i.peel.i, %bb.ay ], [ 1, %bb.aw ], !dbg !2256
  %i.gy = add i64 %.sroa.01.0.i.i.peel.i, %.sroa.5.0227, !dbg !2257 ; 23 uses
  %i.gz = icmp eq i64 %i.gy, 0, !dbg !2212
  br i1 %i.gz, label %bb.bc, label %bb.ba, !dbg !2212

bb.ba:                                            ; preds = %bb.az
  %.not.i.i.i.i = icmp ult i64 %i.gy, %.sroa.036.sroa.13.0.copyload, !dbg !2213
  br i1 %.not.i.i.i.i, label %bb.bb, label %.split.i.i.i.i, !dbg !2213

.split.i.i.i.i:                                   ; preds = %bb.ba
  %i.ha = icmp eq i64 %i.gy, %.sroa.036.sroa.13.0.copyload, !dbg !2214
  br i1 %i.ha, label %bb.bc, label %.loopexit.i, !dbg !2215

bb.bb:                                            ; preds = %bb.ba
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.gy, !dbg !2216
  %i.hc = load i8, ptr %i.hb, align 1, !dbg !2216, !alias.scope !2124, !noalias !2128, !noundef !1049
  %i.hd = icmp sgt i8 %i.hc, -65, !dbg !2217
  br i1 %i.hd, label %bb.bc, label %.loopexit.i, !dbg !2215

bb.bc:                                            ; preds = %bb.bb, %.split.i.i.i.i, %bb.az
  %i.he = icmp samesign eq i64 %i.gy, %.sroa.036.sroa.13.0.copyload, !dbg !2219
  br i1 %i.he, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit, label %bb.bd, !dbg !2220

bb.bd:                                            ; preds = %bb.bc
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %i.gy, !dbg !2218
  %i.hg = load i8, ptr %i.hf, align 1, !dbg !2221, !noalias !2129, !noundef !1049 ; 3 uses
  %i.hh = icmp sgt i8 %i.hg, -1, !dbg !2222
  br i1 %i.hh, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.i, !dbg !2222

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.i: ; preds = %bb.bd
  %i.hi = add nuw nsw i64 %i.gy, 1, !dbg !2225
  %i.hj = icmp samesign ne i64 %i.hi, %.sroa.036.sroa.13.0.copyload, !dbg !2225
  call void @llvm.assume(i1 %i.hj), !dbg !2226
  %i.hk = icmp samesign ugt i8 %i.hg, -33, !dbg !2230
  br i1 %i.hk, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.i, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit, !dbg !2230

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.i
  %i.hl = add nuw nsw i64 %i.gy, 2, !dbg !2232
  %i.hm = icmp samesign ne i64 %i.hl, %.sroa.036.sroa.13.0.copyload, !dbg !2232
  call void @llvm.assume(i1 %i.hm), !dbg !2233
  %i.hn = icmp samesign ugt i8 %i.hg, -17, !dbg !2239
  br i1 %i.hn, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.i, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit, !dbg !2239

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.i
  %i.ho = add nuw nsw i64 %i.gy, 3, !dbg !2241
  %i.hp = icmp samesign ne i64 %i.ho, %.sroa.036.sroa.13.0.copyload, !dbg !2241
  call void @llvm.assume(i1 %i.hp), !dbg !2242
  br label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit, !dbg !2248

.loopexit.i:                                      ; preds = %bb.bb, %.split.i.i.i.i, %bb.ar, %.split.i.i.i.peel.i, %bb.o, %.split.i.i.i.i.peel, %bb.e, %.split.i.i.i.peel.i.peel
  %.lcssa12.i = phi i64 [ %.sroa.036.sroa.4.0.copyload, %.split.i.i.i.peel.i.peel ], [ %.sroa.036.sroa.4.0.copyload, %bb.e ], [ %i.bn, %.split.i.i.i.i.peel ], [ %i.bn, %bb.o ], [ %i.gy, %bb.bb ], [ %i.gy, %.split.i.i.i.i ], [ %.sroa.5.0227, %bb.ar ], [ %.sroa.5.0227, %.split.i.i.i.peel.i ]
  call void @_RNvNtCscgRAwXFJnXP_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.036.sroa.12.0.copyload, i64 noundef %.sroa.036.sroa.13.0.copyload, i64 noundef %.lcssa12.i, i64 noundef %.sroa.036.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @364) #35, !dbg !2333, !noalias !2128
  unreachable, !dbg !2333

.loopexit19.i:                                    ; preds = %bb.as
  br i1 %.sroa.999.sroa.0.0222, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit, label %bb.be, !dbg !2252

.split243.us:                                     ; preds = %.lr.ph380
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.em, i64 noundef range(i64 0, -9223372036854775808) %.sroa.036.sroa.15.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #35, !dbg !2322, !noalias !2146
  unreachable, !dbg !2322

.split246.us:                                     ; preds = %bb.ai
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.en, i64 noundef range(i64 0, -9223372036854775808) %.sroa.036.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #35, !dbg !2324, !noalias !2146
  unreachable, !dbg !2324

.split239.us:                                     ; preds = %.lr.ph377
  %i.hq = add i64 %i.dw, %.sroa.036.sroa.4.0.copyload, !dbg !2334
  %umax.i91 = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.036.sroa.13.0.copyload, i64 %i.hq), !dbg !2334
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %umax.i91, i64 noundef range(i64 0, -9223372036854775808) %.sroa.036.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #35, !dbg !2316, !noalias !2146
  unreachable, !dbg !2316

.split233.us:                                     ; preds = %.lr.ph373
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.di, i64 noundef range(i64 0, -9223372036854775808) %.sroa.036.sroa.15.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #35, !dbg !2294, !noalias !2147
  unreachable, !dbg !2294

.split236.us:                                     ; preds = %bb.ab
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.dk, i64 noundef range(i64 0, -9223372036854775808) %.sroa.036.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #35, !dbg !2296, !noalias !2147
  unreachable, !dbg !2296

.split230.us:                                     ; preds = %.lr.ph
  %i.hr = add i64 %i.cq, %.sroa.0.0.i.i.us, !dbg !2282
  %umax.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.036.sroa.13.0.copyload, i64 %i.hr), !dbg !2282
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %umax.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.036.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #35, !dbg !2289, !noalias !2147
  unreachable, !dbg !2289

bb.be:                                            ; preds = %.loopexit19.i
  br label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit, !dbg !2258

_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.i, %bb.bd, %bb.bc, %bb.av, %.loopexit19.i, %bb.be
  %.sroa.51.2 = phi i1 [ true, %bb.be ], [ false, %.loopexit19.i ], [ false, %bb.av ], [ false, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.i ], [ false, %bb.bc ], [ false, %bb.bd ], [ false, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.i ], [ false, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.i ], !dbg !2209
  %.sroa.41.2 = phi i64 [ %.sroa.41.0224, %bb.be ], [ %.sroa.036.sroa.13.0.copyload, %.loopexit19.i ], [ %.sroa.5.0227, %bb.av ], [ %i.gy, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.i ], [ %.sroa.036.sroa.13.0.copyload, %bb.bc ], [ %i.gy, %bb.bd ], [ %i.gy, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.i ], [ %i.gy, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.i ], !dbg !2209
  %.sroa.5.5 = phi i64 [ %.sroa.036.sroa.13.0.copyload, %bb.be ], [ %.sroa.036.sroa.13.0.copyload, %.loopexit19.i ], [ %.sroa.5.0227, %bb.av ], [ %i.gy, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.i ], [ %.sroa.036.sroa.13.0.copyload, %bb.bc ], [ %i.gy, %bb.bd ], [ %i.gy, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.i ], [ %i.gy, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.i ], !dbg !2209
  %.sroa.7.1.pn = phi i64 [ %.sroa.7.1, %bb.be ], [ %.sroa.036.sroa.13.0.copyload, %.loopexit19.i ], [ %.sroa.5.0227, %bb.av ], [ %i.gy, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit12.i.i.i.i ], [ %.sroa.036.sroa.13.0.copyload, %bb.bc ], [ %i.gy, %bb.bd ], [ %i.gy, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit16.i.i.i.i ], [ %i.gy, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io.exit14.i.i.i.i ] ; 2 uses
  %i.hs = icmp eq i64 %.sroa.7.1.pn, %.sroa.41.0224, !dbg !2259
  br i1 %i.hs, label %.split249.us, label %bb.bk, !dbg !2259

_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.thread: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit.peel, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !2335
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.sroa.7.1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !2335
  %i.ht = load i64, ptr %i.d, align 8, !dbg !2335, !range !1141, !noundef !1049
  %i.hu = trunc nuw i64 %i.ht to i1, !dbg !2336
  %i.hv = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !2337
  %i.hw = load i64, ptr %i.hv, align 8, !dbg !2337, !range !1096, !noundef !1049 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !2337 ; 2 uses
  br i1 %i.hu, label %bb.bf, label %bb.bg, !dbg !2336, !prof !1142

bb.bf:                                            ; preds = %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.thread
  %i.hy = load i64, ptr %i.hx, align 8, !dbg !2338
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.hw, i64 %i.hy) #36, !dbg !2339
  unreachable

bb.bg:                                            ; preds = %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.thread
  %i.hz = load ptr, ptr %i.hx, align 8, !dbg !2340, !nonnull !1049, !noundef !1049 ; 2 uses
  %i.ia = icmp ule i64 %.sroa.7.1, %i.hw, !dbg !2341
  call void @llvm.assume(i1 %i.ia), !dbg !2342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !2343
  %.not76 = icmp eq i64 %.sroa.7.1, 0, !dbg !2344
  br i1 %.not76, label %bb.bh, label %bb.bi, !dbg !2344

bb.bh:                                            ; preds = %bb.bi, %bb.bg
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2345
  store i64 %i.hw, ptr %i.ib, align 8, !dbg !2345
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2345
  store ptr %i.hz, ptr %.sroa.455.0..sroa_idx, align 8, !dbg !2345
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2345
  store i64 %.sroa.7.1, ptr %.sroa.556.0..sroa_idx, align 8, !dbg !2345
  store i64 -9223372036854775802, ptr %0, align 8, !dbg !2345
  br label %bb.bj, !dbg !2346

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hz, ptr nonnull align 1 %.sroa.0.0, i64 %.sroa.7.1, i1 false), !dbg !2347
  br label %bb.bh, !dbg !2348

bb.bj:                                            ; preds = %bb.bn, %_RNCINvMNtCs8RKTHBS4OBx_12object_store4pathNtB5_4Path5parseReE0CslpwjCj2YNBy_9polars_io.exit, %bb.b, %bb.bh
  ret void, !dbg !2349

.split249.us:                                     ; preds = %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.peel, %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit, %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2350
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !2350
  %i.ic = load i64, ptr %i.c, align 8, !dbg !2350, !range !1141, !noundef !1049
  %i.id = trunc nuw i64 %i.ic to i1, !dbg !2351
  %i.ie = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !2352
  %i.if = load i64, ptr %i.ie, align 8, !dbg !2352, !range !1096, !noundef !1049 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !2352 ; 2 uses
  br i1 %i.id, label %bb.bl, label %bb.bm, !dbg !2351, !prof !1142

bb.bk:                                            ; preds = %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit
  %.sroa.4.1.i = sub nuw i64 %.sroa.7.1.pn, %.sroa.41.0224, !dbg !2332
  %.sroa.0.1.i = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload, i64 %.sroa.41.0224, !dbg !2332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !2260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !2260
  call void @_RNvMNtNtCs8RKTHBS4OBx_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i, i64 noundef %.sroa.4.1.i), !dbg !2260
  %i.ih = load i64, ptr %i.f, align 8, !dbg !2261, !range !1096, !noundef !1049
  %.not77 = icmp eq i64 %i.ih, -9223372036854775808, !dbg !2261
  br i1 %.not77, label %bb.bw, label %.split251.us, !dbg !2262

bb.bl:                                            ; preds = %.split249.us
  %i.ii = load i64, ptr %i.ig, align 8, !dbg !2353
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.if, i64 %i.ii) #36, !dbg !2354
  unreachable

bb.bm:                                            ; preds = %.split249.us
  %i.ij = load ptr, ptr %i.ig, align 8, !dbg !2355, !nonnull !1049, !noundef !1049 ; 2 uses
  %i.ik = icmp ule i64 %2, %i.if, !dbg !2356
  call void @llvm.assume(i1 %i.ik), !dbg !2357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2358
  %.not78 = icmp eq i64 %2, 0, !dbg !2359
  br i1 %.not78, label %bb.bn, label %bb.bo, !dbg !2359

bb.bn:                                            ; preds = %bb.bo, %bb.bm
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !2360
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2360
  store i64 %i.if, ptr %.sroa.415.0..sroa_idx, align 8, !dbg !2360
  %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2360
  store ptr %i.ij, ptr %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx, align 8, !dbg !2360
  %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2360
  store i64 %2, ptr %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx, align 8, !dbg !2360
  br label %bb.bj, !dbg !2361

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ij, ptr nonnull align 1 %1, i64 %2, i1 false), !dbg !2362
  br label %bb.bn, !dbg !2363

.split251.us:                                     ; preds = %bb.s, %bb.bk, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !dbg !2365
  call void @llvm.experimental.noalias.scope.decl(metadata !2189), !dbg !2364
  call void @llvm.experimental.noalias.scope.decl(metadata !2190), !dbg !2364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2366, !noalias !2191
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bq unwind label %bb.bp, !dbg !2366, !noalias !2191

bb.bp:                                            ; preds = %bb.br, %.split251.us
  %i.il = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts11InvalidPartECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #37
          to label %common.resume unwind label %bb.bv, !dbg !2367, !noalias !2194

bb.bq:                                            ; preds = %.split251.us
  %i.im = load i64, ptr %i.a, align 8, !dbg !2366, !range !1141, !noalias !2191, !noundef !1049
  %i.in = trunc nuw i64 %i.im to i1, !dbg !2368
  %i.io = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2369
  %i.ip = load i64, ptr %i.io, align 8, !dbg !2369, !range !1096, !noalias !2191, !noundef !1049 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !2369 ; 2 uses
  br i1 %i.in, label %bb.br, label %bb.bs, !dbg !2368, !prof !1142

bb.br:                                            ; preds = %bb.bq
  %i.ir = load i64, ptr %i.iq, align 8, !dbg !2370, !noalias !2191
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ip, i64 %i.ir) #36
          to label %bb.bu unwind label %bb.bp, !dbg !2371, !noalias !2191

bb.bs:                                            ; preds = %bb.bq
  %i.is = load ptr, ptr %i.iq, align 8, !dbg !2372, !noalias !2191, !nonnull !1049, !noundef !1049 ; 2 uses
  %i.it = icmp ule i64 %2, %i.ip, !dbg !2373
  call void @llvm.assume(i1 %i.it), !dbg !2374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2375, !noalias !2191
  %.not.i = icmp eq i64 %2, 0, !dbg !2376
  br i1 %.not.i, label %_RNCINvMNtCs8RKTHBS4OBx_12object_store4pathNtB5_4Path5parseReE0CslpwjCj2YNBy_9polars_io.exit, label %bb.bt, !dbg !2376

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.is, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !dbg !2377, !noalias !2195
  br label %_RNCINvMNtCs8RKTHBS4OBx_12object_store4pathNtB5_4Path5parseReE0CslpwjCj2YNBy_9polars_io.exit, !dbg !2378

bb.bu:                                            ; preds = %bb.br
  unreachable

bb.bv:                                            ; preds = %bb.bp
  %i.iu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !2379, !noalias !2194
  unreachable, !dbg !2379

common.resume:                                    ; preds = %.split253.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bp
  %common.resume.op = phi { ptr, i32 } [ %i.il, %bb.bp ], [ %lpad.loopexit.split-lp424, %.split253.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op, !dbg !2380

_RNCINvMNtCs8RKTHBS4OBx_12object_store4pathNtB5_4Path5parseReE0CslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.bs, %bb.bt
  %.sroa.7.sroa.0.0.copyload = load i64, ptr %i.b, align 8, !dbg !2381, !alias.scope !2195
  %i.iv = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !2381
  %.sroa.371.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2382
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.371.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.iv, i64 40, i1 false), !dbg !2381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !2264
  store i64 %i.ip, ptr %0, align 8, !dbg !2382
  %.sroa.270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2382
  store ptr %i.is, ptr %.sroa.270.0..sroa_idx, align 8, !dbg !2382
  %.sroa.270.sroa.2.0..sroa.270.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2382
  store i64 %2, ptr %.sroa.270.sroa.2.0..sroa.270.0..sroa_idx.sroa_idx, align 8, !dbg !2382
  %.sroa.270.sroa.3.0..sroa.270.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2382
  store i64 %.sroa.7.sroa.0.0.copyload, ptr %.sroa.270.sroa.3.0..sroa.270.0..sroa_idx.sroa_idx, align 8, !dbg !2382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !2269
  br label %bb.bj, !dbg !2361

bb.bw:                                            ; preds = %bb.bk
  %.sroa.0136.0.copyload = load ptr, ptr %i.p, align 8, !dbg !2263 ; 2 uses
  %i.iw = load <2 x i64>, ptr %.sroa.5137.0..sroa_idx, align 8, !dbg !2263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !2264
  store ptr %.sroa.0136.0.copyload, ptr %i.g, align 8, !dbg !2265
  store <2 x i64> %i.iw, ptr %.sroa.4148.0..sroa_idx, align 8, !dbg !2265
  %i.ix = icmp eq ptr %.sroa.0136.0.copyload, inttoptr (i64 -9223372036854775808 to ptr), !dbg !2266
  br i1 %i.ix, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit, label %bb.bx, !dbg !2266

bb.bx:                                            ; preds = %bb.bw
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i.i unwind label %.split253.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !2267

.split253.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ap, %bb.bx, %bb.u
  %lpad.loopexit.split-lp424 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.by, !dbg !2384

bb.by:                                            ; preds = %.split253.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.iy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !2267
  unreachable, !dbg !2267

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i.i: ; preds = %bb.bx
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g), !dbg !2268
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit, !dbg !2266

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8RKTHBS4OBx_12object_store4path5parts8PathPartECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.bw, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !2269
  br i1 %.sroa.51.2, label %_RNvMsf_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_13SplitInternalReE4nextCslpwjCj2YNBy_9polars_io.exit.thread, label %.preheader.i.i, !dbg !2270, !llvm.loop !2110
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden { ptr, i64 } @_RINvMNtCscgRAwXFJnXP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !2385 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1, !dbg !2575 ; 6 uses
  %i.b = icmp samesign eq i64 %1, 0, !dbg !2576
  br i1 %i.b, label %_RNvXso_NtNtCscgRAwXFJnXP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCslpwjCj2YNBy_9polars_io.exit, label %.lr.ph.i.i, !dbg !2577
end_hunk_0
begin_hunk_1_@_RNvYINtNvNtCsh8eZTKRCwoO_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCscgRAwXFJnXP_4core3fmt5Write10write_charCslpwjCj2YNBy_9polars_io:bb.a
bb.c:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %1 to i8, !dbg !40241
  store i8 %i.r, ptr %i.a, align 4, !dbg !40241, !alias.scope !40227
  br label %_RNvNtNtCscgRAwXFJnXP_4core4char7methods15encode_utf8_raw.exit, !dbg !40242

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64, !dbg !40243
  store i8 %i.s, ptr %i.a, align 4, !dbg !40243, !alias.scope !40227
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !40244
  store i8 %i.f, ptr %i.t, align 1, !dbg !40245, !alias.scope !40227
  br label %_RNvNtNtCscgRAwXFJnXP_4core4char7methods15encode_utf8_raw.exit, !dbg !40246

bb.e:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %1, 65536, !dbg !40232
  br i1 %i.u, label %bb.f, label %bb.g, !dbg !40247

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i8 %i.l, -32, !dbg !40248
  store i8 %i.v, ptr %i.a, align 4, !dbg !40248, !alias.scope !40227
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !40249
  store i8 %i.j, ptr %i.w, align 1, !dbg !40250, !alias.scope !40227
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2, !dbg !40251
  store i8 %i.f, ptr %i.x, align 2, !dbg !40252, !alias.scope !40227
  br label %_RNvNtNtCscgRAwXFJnXP_4core4char7methods15encode_utf8_raw.exit, !dbg !40246

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !dbg !40253, !alias.scope !40227
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !40254
  store i8 %i.n, ptr %i.y, align 1, !dbg !40255, !alias.scope !40227
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2, !dbg !40256
  store i8 %i.j, ptr %i.z, align 2, !dbg !40257, !alias.scope !40227
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3, !dbg !40258
  store i8 %i.f, ptr %i.aa, align 1, !dbg !40259, !alias.scope !40227
  br label %_RNvNtNtCscgRAwXFJnXP_4core4char7methods15encode_utf8_raw.exit, !dbg !40260

_RNvNtNtCscgRAwXFJnXP_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40228), !dbg !40261
  %i.ab = load ptr, ptr %0, align 8, !dbg !40262, !alias.scope !40228, !nonnull !1049, !noundef !1049
  %i.ac = call noundef ptr @_RNvYNtNtNtNtCsh8eZTKRCwoO_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %.sroa.0.05.i), !dbg !40263, !noalias !40228 ; 3 uses
  %.not.i = icmp ne ptr %i.ac, null, !dbg !40262  ; 2 uses
  br i1 %.not.i, label %bb.h, label %_RNvXNvNtCsh8eZTKRCwoO_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCscgRAwXFJnXP_4core3fmt5Write9write_strCslpwjCj2YNBy_9polars_io.exit, !dbg !40264

bb.h:                                             ; preds = %_RNvNtNtCscgRAwXFJnXP_4core4char7methods15encode_utf8_raw.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !40265 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !dbg !40266, !alias.scope !40229, !noundef !1049
  %i.af = icmp eq ptr %i.ae, null, !dbg !40266
  br i1 %i.af, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECslpwjCj2YNBy_9polars_io.exit.i, label %bb.i, !dbg !40266

bb.i:                                             ; preds = %bb.h
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ad)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECslpwjCj2YNBy_9polars_io.exit.i unwind label %bb.j, !dbg !40266

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ac, ptr %i.ad, align 8, !dbg !40265, !alias.scope !40228
  resume { ptr, i32 } %i.ag, !dbg !40267

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECslpwjCj2YNBy_9polars_io.exit.i: ; preds = %bb.i, %bb.h
  store ptr %i.ac, ptr %i.ad, align 8, !dbg !40265, !alias.scope !40228
  br label %_RNvXNvNtCsh8eZTKRCwoO_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCscgRAwXFJnXP_4core3fmt5Write9write_strCslpwjCj2YNBy_9polars_io.exit, !dbg !40268

_RNvXNvNtCsh8eZTKRCwoO_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCscgRAwXFJnXP_4core3fmt5Write9write_strCslpwjCj2YNBy_9polars_io.exit: ; preds = %_RNvNtNtCscgRAwXFJnXP_4core4char7methods15encode_utf8_raw.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECslpwjCj2YNBy_9polars_io.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !40269
  ret i1 %.not.i, !dbg !40270
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtCsh8eZTKRCwoO_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCscgRAwXFJnXP_4core3fmt5Write9write_fmtCslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !40271 {
_RNvXs_NvNtNtCscgRAwXFJnXP_4core3fmt5Write9write_fmtQINtNvNtCsh8eZTKRCwoO_3std2io17default_write_fmt7AdapterNtNtNtNtBV_3sys5stdio4unix6StderrENtB4_12SpecWriteFmt14spec_write_fmtCslpwjCj2YNBy_9polars_io.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCscgRAwXFJnXP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @76, ptr noundef nonnull %1, ptr noundef nonnull %2), !dbg !40275, !inline_history !40272
  ret i1 %i.a, !dbg !40276
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtCsh8eZTKRCwoO_3std2io17default_write_fmt7AdapterNtNtNtNtCslpwjCj2YNBy_9polars_io5cloud12cloud_writer13io_trait_wrap22CloudWriterIoTraitWrapENtNtCscgRAwXFJnXP_4core3fmt5Write10write_charB13_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !40277 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !40300
  store i32 0, ptr %i.a, align 4, !dbg !40300
  %i.b = icmp samesign ult i32 %1, 128, !dbg !40301
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !40301

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 2048, !dbg !40302
  %i.d = trunc i32 %1 to i8, !dbg !40303
  %i.e = and i8 %i.d, 63, !dbg !40303
  %i.f = or disjoint i8 %i.e, -128, !dbg !40303   ; 3 uses
  %i.g = lshr i32 %1, 6, !dbg !40304
  %i.h = trunc i32 %i.g to i8, !dbg !40305        ; 2 uses
  %i.i = and i8 %i.h, 63, !dbg !40305
  %i.j = or disjoint i8 %i.i, -128, !dbg !40305   ; 2 uses
  %i.k = lshr i32 %1, 12, !dbg !40306
  %i.l = trunc i32 %i.k to i8, !dbg !40307        ; 2 uses
  %i.m = and i8 %i.l, 63, !dbg !40307
  %i.n = or disjoint i8 %i.m, -128, !dbg !40307
  %i.o = lshr i32 %1, 18, !dbg !40308
  %i.p = trunc nuw nsw i32 %i.o to i8, !dbg !40309
  %i.q = or disjoint i8 %i.p, -16, !dbg !40309
  br i1 %i.c, label %bb.d, label %bb.e, !dbg !40310

bb.c:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %1 to i8, !dbg !40311
  store i8 %i.r, ptr %i.a, align 4, !dbg !40311, !alias.scope !40297
  br label %_RNvNtNtCscgRAwXFJnXP_4core4char7methods15encode_utf8_raw.exit, !dbg !40312

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64, !dbg !40313
  store i8 %i.s, ptr %i.a, align 4, !dbg !40313, !alias.scope !40297
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !40314
  store i8 %i.f, ptr %i.t, align 1, !dbg !40315, !alias.scope !40297
  br label %_RNvNtNtCscgRAwXFJnXP_4core4char7methods15encode_utf8_raw.exit, !dbg !40316

bb.e:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %1, 65536, !dbg !40302
  br i1 %i.u, label %bb.f, label %bb.g, !dbg !40317

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i8 %i.l, -32, !dbg !40318
  store i8 %i.v, ptr %i.a, align 4, !dbg !40318, !alias.scope !40297
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !40319
  store i8 %i.j, ptr %i.w, align 1, !dbg !40320, !alias.scope !40297
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2, !dbg !40321
  store i8 %i.f, ptr %i.x, align 2, !dbg !40322, !alias.scope !40297
  br label %_RNvNtNtCscgRAwXFJnXP_4core4char7methods15encode_utf8_raw.exit, !dbg !40316

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !dbg !40323, !alias.scope !40297
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !40324
  store i8 %i.n, ptr %i.y, align 1, !dbg !40325, !alias.scope !40297
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2, !dbg !40326
  store i8 %i.j, ptr %i.z, align 2, !dbg !40327, !alias.scope !40297
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3, !dbg !40328
  store i8 %i.f, ptr %i.aa, align 1, !dbg !40329, !alias.scope !40297
  br label %_RNvNtNtCscgRAwXFJnXP_4core4char7methods15encode_utf8_raw.exit, !dbg !40330

_RNvNtNtCscgRAwXFJnXP_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40298), !dbg !40331
  %i.ab = load ptr, ptr %0, align 8, !dbg !40332, !alias.scope !40298, !nonnull !1049, !align !1239, !noundef !1049
  %i.ac = call noundef ptr @_RNvYNtNtNtNtCslpwjCj2YNBy_9polars_io5cloud12cloud_writer13io_trait_wrap22CloudWriterIoTraitWrapNtNtCsh8eZTKRCwoO_3std2io5Write9write_allBa_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %.sroa.0.05.i), !dbg !40333, !noalias !40298 ; 3 uses
  %.not.i = icmp ne ptr %i.ac, null, !dbg !40332  ; 2 uses
  br i1 %.not.i, label %bb.h, label %_RNvXNvNtCsh8eZTKRCwoO_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtCslpwjCj2YNBy_9polars_io5cloud12cloud_writer13io_trait_wrap22CloudWriterIoTraitWrapENtNtCscgRAwXFJnXP_4core3fmt5Write9write_strB16_.exit, !dbg !40334

bb.h:                                             ; preds = %_RNvNtNtCscgRAwXFJnXP_4core4char7methods15encode_utf8_raw.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !40335 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !dbg !40336, !alias.scope !40299, !noundef !1049
  %i.af = icmp eq ptr %i.ae, null, !dbg !40336
  br i1 %i.af, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECslpwjCj2YNBy_9polars_io.exit.i, label %bb.i, !dbg !40336

bb.i:                                             ; preds = %bb.h
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ad)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECslpwjCj2YNBy_9polars_io.exit.i unwind label %bb.j, !dbg !40336

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ac, ptr %i.ad, align 8, !dbg !40335, !alias.scope !40298
  resume { ptr, i32 } %i.ag, !dbg !40337

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECslpwjCj2YNBy_9polars_io.exit.i: ; preds = %bb.i, %bb.h
  store ptr %i.ac, ptr %i.ad, align 8, !dbg !40335, !alias.scope !40298
  br label %_RNvXNvNtCsh8eZTKRCwoO_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtCslpwjCj2YNBy_9polars_io5cloud12cloud_writer13io_trait_wrap22CloudWriterIoTraitWrapENtNtCscgRAwXFJnXP_4core3fmt5Write9write_strB16_.exit, !dbg !40338

_RNvXNvNtCsh8eZTKRCwoO_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtCslpwjCj2YNBy_9polars_io5cloud12cloud_writer13io_trait_wrap22CloudWriterIoTraitWrapENtNtCscgRAwXFJnXP_4core3fmt5Write9write_strB16_.exit: ; preds = %_RNvNtNtCscgRAwXFJnXP_4core4char7methods15encode_utf8_raw.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECslpwjCj2YNBy_9polars_io.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !40339
  ret i1 %.not.i, !dbg !40340
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtCsh8eZTKRCwoO_3std2io17default_write_fmt7AdapterNtNtNtNtCslpwjCj2YNBy_9polars_io5cloud12cloud_writer13io_trait_wrap22CloudWriterIoTraitWrapENtNtCscgRAwXFJnXP_4core3fmt5Write9write_fmtB13_(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !40341 {
_RNvXs_NvNtNtCscgRAwXFJnXP_4core3fmt5Write9write_fmtQINtNvNtCsh8eZTKRCwoO_3std2io17default_write_fmt7AdapterNtNtNtNtCslpwjCj2YNBy_9polars_io5cloud12cloud_writer13io_trait_wrap22CloudWriterIoTraitWrapENtB4_12SpecWriteFmt14spec_write_fmtB1P_.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCscgRAwXFJnXP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @77, ptr noundef nonnull %1, ptr noundef nonnull %2), !dbg !40345, !inline_history !40342
  ret i1 %i.a, !dbg !40346
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @_RNvYNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceB8_() unnamed_addr #4 personality ptr @rust_eh_personality !dbg !40347 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 1                ; 4 uses
  %i.f = alloca [68 x i8], align 4                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [32 x i8], align 8                ; 9 uses
  %i.n = alloca [8 x i8], align 8                 ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 9 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.3.i.i = alloca [24 x i8], align 8        ; 7 uses
  %i.t = alloca [32 x i8], align 8                ; 18 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [32 x i8], align 8                ; 6 uses
  %i.w = alloca [32 x i8], align 8                ; 11 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !40704
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !40704
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i), !dbg !40704
  %i.y = tail call noundef zeroext i1 @_RNvNtCs1LHh8CLbVkQ_11polars_core6config7verbose(), !dbg !40704, !noalias !40654 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !40705, !noalias !40654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !40705, !noalias !40654
  call void @_RINvNtCsh8eZTKRCwoO_3std3env3varReECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 15), !dbg !40705, !noalias !40654
  %i.z = load i64, ptr %i.v, align 8, !dbg !40706, !range !1141, !noalias !40654, !noundef !1049
  %i.aa = trunc nuw i64 %i.z to i1, !dbg !40707
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !40708
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !40708 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !dbg !40708, !noalias !40654
  br i1 %i.aa, label %bb.l, label %bb.b, !dbg !40707

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.w, align 8, !dbg !40708, !noalias !40654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !40709, !noalias !40654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !40710, !noalias !40654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !dbg !40710, !noalias !40654
  br i1 %i.y, label %bb.d, label %.thread35.i.i, !dbg !40711

.thread35.i.i:                                    ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !dbg !40712, !noalias !40654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !40713, !noalias !40654
  br label %bb.g, !dbg !40713

bb.c:                                             ; preds = %bb.d
  %.pre.i.i = load i64, ptr %i.w, align 8, !dbg !40713, !range !1141, !noalias !40654
  %i.ad = trunc nuw i64 %.pre.i.i to i1, !dbg !40713
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !dbg !40712, !noalias !40654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !40713, !noalias !40654
  br i1 %i.ad, label %bb.f, label %bb.g, !dbg !40713

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvNtNtCsh8eZTKRCwoO_3std2io5stdio7__eprint(ptr noundef nonnull @116, ptr noundef nonnull inttoptr (i64 89 to ptr))
          to label %bb.c unwind label %bb.e, !dbg !40714, !noalias !40654

bb.e:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u) #37
          to label %bb.j unwind label %bb.i, !dbg !40713, !noalias !40654

bb.f:                                             ; preds = %bb.c
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsh8eZTKRCwoO_3std4path7PathBufNtNtB16_3env8VarErrorEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(32) %i.w), !dbg !40713, !noalias !40654
  br label %bb.g, !dbg !40713

bb.g:                                             ; preds = %bb.f, %bb.c, %.thread35.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !40713, !noalias !40654
  br label %bb.h, !dbg !40715

bb.h:                                             ; preds = %bb.bb, %bb.g
  %i.af = call { ptr, i64 } @_RNvMs0_NtNtCsh8eZTKRCwoO_3std3ffi6os_strNtB5_8OsString17into_boxed_os_str(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i), !dbg !40716, !noalias !40654 ; 3 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 0, !dbg !40716 ; 4 uses
  %i.ah = extractvalue { ptr, i64 } %i.af, 1, !dbg !40716 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ], !dbg !40717
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !40718, !noalias !40654
  %i.ai = invoke noundef ptr @_RNvNtCslpwjCj2YNBy_9polars_io10path_utils21create_dir_owner_only(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef %i.ah)
          to label %bb.bc unwind label %.thread17.i.i, !dbg !40719, !noalias !40654 ; 6 uses

.thread17.i.i:                                    ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i, !dbg !40720

bb.i:                                             ; preds = %bb.by, %bb.bl, %bb.at, %.body36.i.i, %bb.k, %bb.e
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !40721, !noalias !40654
  unreachable, !dbg !40721

bb.j:                                             ; preds = %bb.e
  %i.al = load i64, ptr %i.w, align 8, !dbg !40713, !range !1141, !noalias !40654, !noundef !1049
  %i.am = icmp eq i64 %i.al, 0, !dbg !40713
  br i1 %i.am, label %common.resume.i, label %bb.k, !dbg !40713

common.resume.i:                                  ; preds = %bb.ch, %bb.ce, %bb.by, %bb.bm, %.thread.i.i, %.body.i.i, %bb.al, %.body.i.i.i, %bb.n, %bb.k, %bb.j
  %common.resume.op.i = phi { ptr, i32 } [ %i.eg, %bb.ce ], [ %i.bz, %bb.al ], [ %i.ap, %bb.n ], [ %.pn21.pn16.i.i, %bb.bm ], [ %.pn24.i.i, %.body.i.i ], [ %.pn24.i.i, %bb.by ], [ %i.ae, %bb.k ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.ae, %bb.j ], [ %.pn21.pn16.i.i, %.thread.i.i ], [ %i.ek, %bb.ch ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !40722

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsh8eZTKRCwoO_3std4path7PathBufNtNtB16_3env8VarErrorEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(32) %i.w) #37
          to label %common.resume.i unwind label %bb.i, !dbg !40713, !noalias !40654

bb.l:                                             ; preds = %bb.a
  store i64 1, ptr %i.w, align 8, !dbg !40708, !noalias !40654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !40709, !noalias !40654
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsh8eZTKRCwoO_3std4path7PathBufNtNtB16_3env8VarErrorEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(32) %i.w), !dbg !40713, !noalias !40654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !40713, !noalias !40654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !40723, !noalias !40654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !40724, !noalias !40654
  call void @_RINvNtCsh8eZTKRCwoO_3std3env3varReECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) @117, i64 noundef 4), !dbg !40724, !noalias !40654
  call void @llvm.experimental.noalias.scope.decl(metadata !40661), !dbg !40725
  call void @llvm.experimental.noalias.scope.decl(metadata !40662), !dbg !40725
  %i.an = load i64, ptr %i.s, align 8, !dbg !40726, !range !1141, !alias.scope !40662, !noalias !40654, !noundef !1049 ; 2 uses
  %i.ao = trunc nuw i64 %i.an to i1, !dbg !40727  ; 2 uses
  %.not.i.i.i = xor i1 %i.ao, true, !dbg !40727
  %or.cond.i.i.i = and i1 %i.y, %.not.i.i.i, !dbg !40727
  br i1 %or.cond.i.i.i, label %bb.m, label %_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorE7inspectNCNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH000EB2c_.exit.i.i, !dbg !40727

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtNtCsh8eZTKRCwoO_3std2io5stdio7__eprint(ptr noundef nonnull @107, ptr noundef nonnull inttoptr (i64 59 to ptr))
          to label %_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorE7inspectNCNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH000EB2c_.exit.thread.i.i unwind label %bb.n, !dbg !40728, !noalias !40663

_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorE7inspectNCNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH000EB2c_.exit.thread.i.i: ; preds = %bb.m
  %.sroa.3.0..sroa_idx913.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !40729
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx913.i.i, i64 24, i1 false), !dbg !40729, !alias.scope !40665, !noalias !40654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !40730, !noalias !40654
  br label %.thread36.i.i, !dbg !40731

bb.n:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorEECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.s) #37
          to label %common.resume.i unwind label %bb.o, !dbg !40732, !noalias !40666

bb.o:                                             ; preds = %bb.n
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !40733, !noalias !40666
  unreachable, !dbg !40733

_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorE7inspectNCNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH000EB2c_.exit.i.i: ; preds = %bb.l
  %.sroa.3.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !40729
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx9.i.i, i64 24, i1 false), !dbg !40729, !alias.scope !40665, !noalias !40654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !40730, !noalias !40654
  br i1 %i.ao, label %bb.p, label %.thread36.i.i, !dbg !40731

bb.p:                                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorE7inspectNCNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH000EB2c_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !40734, !noalias !40654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i.i, i64 24, i1 false), !dbg !40735, !noalias !40654
  call void @llvm.experimental.noalias.scope.decl(metadata !40667), !dbg !40734
  call void @llvm.experimental.noalias.scope.decl(metadata !40668), !dbg !40734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !40736, !noalias !40669
  invoke void @_RINvNtCsh8eZTKRCwoO_3std3env3varReECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 4)
          to label %bb.r unwind label %bb.q, !dbg !40736, !noalias !40669

bb.q:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i.i.i.i, %bb.p
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i, !dbg !40737

.body.i.i.i:                                      ; preds = %bb.ag, %bb.x, %bb.t, %bb.q
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.au, %bb.t ], [ %i.ar, %bb.q ], [ %i.bu, %bb.ag ], [ %i.bd, %bb.x ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std3env8VarErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #37
          to label %common.resume.i unwind label %bb.an, !dbg !40737, !noalias !40670

bb.r:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !40671), !dbg !40738
  call void @llvm.experimental.noalias.scope.decl(metadata !40672), !dbg !40738
  %i.as = load i64, ptr %i.h, align 8, !dbg !40739, !range !1141, !alias.scope !40672, !noalias !40669, !noundef !1049
  %i.at = trunc nuw i64 %i.as to i1, !dbg !40740
  %.not.i.i.i.i = xor i1 %i.at, true, !dbg !40740
  %or.cond.i.i.i.i = and i1 %i.y, %.not.i.i.i.i, !dbg !40740
  br i1 %or.cond.i.i.i.i, label %bb.s, label %bb.v, !dbg !40740

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtNtCsh8eZTKRCwoO_3std2io5stdio7__eprint(ptr noundef nonnull @102, ptr noundef nonnull inttoptr (i64 59 to ptr))
          to label %bb.v unwind label %bb.t, !dbg !40741, !noalias !40673

bb.t:                                             ; preds = %bb.s
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorEECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h) #37
          to label %.body.i.i.i unwind label %bb.u, !dbg !40742, !noalias !40675

bb.u:                                             ; preds = %bb.t
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !40743, !noalias !40675
  unreachable, !dbg !40743

bb.v:                                             ; preds = %bb.s, %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !dbg !40744, !alias.scope !40676, !noalias !40677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !40745, !noalias !40669
  %i.aw = load i64, ptr %i.t, align 8, !dbg !40746, !range !1141, !alias.scope !40667, !noalias !40654, !noundef !1049
  %i.ax = trunc nuw i64 %i.aw to i1, !dbg !40747
  br i1 %i.ax, label %bb.aj, label %bb.w, !dbg !40747

bb.w:                                             ; preds = %bb.v
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !40748 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !40749, !noalias !40669
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false), !dbg !40748, !noalias !40677
  call void @llvm.experimental.noalias.scope.decl(metadata !40678), !dbg !40749
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !40750, !noalias !40679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !40750, !noalias !40679
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !40751
  %i.ba = load ptr, ptr %i.az, align 8, !dbg !40751, !alias.scope !40678, !noalias !40669, !nonnull !1049, !noundef !1049
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !40752
  %i.bc = load i64, ptr %i.bb, align 8, !dbg !40752, !alias.scope !40678, !noalias !40669, !noundef !1049
  invoke void @_RNvCs6cIRtRQ1gqh_6blake34hash(ptr noalias noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ba, i64 noundef %i.bc)
          to label %bb.y unwind label %bb.x, !dbg !40750, !noalias !40679

bb.x:                                             ; preds = %bb.ae, %bb.ab, %bb.aa, %bb.y, %bb.w
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #37
          to label %.body.i.i.i unwind label %bb.ai, !dbg !40753, !noalias !40680

bb.y:                                             ; preds = %bb.w
  invoke void @_RNvMCs6cIRtRQ1gqh_6blake3NtB2_4Hash6to_hex(ptr noalias noundef nonnull sret([68 x i8]) align 4 captures(none) dereferenceable(68) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.e)
          to label %bb.z unwind label %bb.x, !dbg !40754, !noalias !40679

bb.z:                                             ; preds = %bb.y
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 4, !dbg !40755 ; 2 uses
  %i.bf = load i32, ptr %i.f, align 4, !dbg !40756, !noalias !40679, !noundef !1049 ; 3 uses
  %i.bg = icmp ult i32 %i.bf, 33, !dbg !40757
  %i.bh = icmp eq i32 %i.bf, 32, !dbg !40757
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 36, !dbg !40757
  %i.bj = load i8, ptr %i.bi, align 4, !dbg !40757, !noalias !40679
  %i.bk = icmp sgt i8 %i.bj, -65, !dbg !40757
  %.sroa.01.0.in.i.i.i.i.i = select i1 %i.bg, i1 %i.bh, i1 %i.bk, !dbg !40757
  br i1 %.sroa.01.0.in.i.i.i.i.i, label %bb.aa, label %bb.ab, !dbg !40758, !prof !1341

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !40759, !noalias !40679
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 32, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ad unwind label %bb.x, !dbg !40759, !noalias !40679

bb.ab:                                            ; preds = %bb.z
  %i.bl = zext i32 %i.bf to i64, !dbg !40756
  invoke void @_RNvNtCscgRAwXFJnXP_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.be, i64 noundef %i.bl, i64 noundef 0, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #36
          to label %bb.ac unwind label %bb.x, !dbg !40760, !noalias !40679

bb.ac:                                            ; preds = %bb.ae, %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.aa
  %i.bm = load i64, ptr %i.d, align 8, !dbg !40759, !range !1141, !noalias !40679, !noundef !1049
  %i.bn = trunc nuw i64 %i.bm to i1, !dbg !40761
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !40762
  %i.bp = load i64, ptr %i.bo, align 8, !dbg !40762, !range !1096, !noalias !40679, !noundef !1049 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !40762 ; 2 uses
  br i1 %i.bn, label %bb.ae, label %bb.af, !dbg !40761, !prof !1142

bb.ae:                                            ; preds = %bb.ad
  %i.br = load i64, ptr %i.bq, align 8, !dbg !40763, !noalias !40679
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bp, i64 %i.br) #36
          to label %bb.ac unwind label %bb.x, !dbg !40764, !noalias !40679

bb.af:                                            ; preds = %bb.ad
  %i.bs = load ptr, ptr %i.bq, align 8, !dbg !40765, !noalias !40679, !nonnull !1049, !noundef !1049 ; 2 uses
  %i.bt = icmp samesign ugt i64 %i.bp, 31, !dbg !40766
  call void @llvm.assume(i1 %i.bt), !dbg !40767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !40768, !noalias !40679
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bs, ptr noundef nonnull align 4 dereferenceable(32) %i.be, i64 32, i1 false), !dbg !40769, !noalias !40679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !40753, !noalias !40679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !40753, !noalias !40679
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i.i.i.i unwind label %bb.ag, !dbg !40770, !noalias !40680

bb.ag:                                            ; preds = %bb.af
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.i.i.i unwind label %bb.ah, !dbg !40771, !noalias !40680

bb.ah:                                            ; preds = %bb.ag
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !40770, !noalias !40680
  unreachable, !dbg !40770

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i.i.i.i: ; preds = %bb.af
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNCNCNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH00s_0s_0Bb_.exit.i.i.i unwind label %bb.q, !dbg !40772, !noalias !40669

bb.ai:                                            ; preds = %bb.x
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !40773, !noalias !40680
  unreachable, !dbg !40773

_RNCNCNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH00s_0s_0Bb_.exit.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !40774, !noalias !40669
  store i64 %i.bp, ptr %i.ay, align 8, !dbg !40775, !alias.scope !40667, !noalias !40654
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !40775
  store ptr %i.bs, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !dbg !40775, !alias.scope !40667, !noalias !40654
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24, !dbg !40775
  store i64 32, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !dbg !40775, !alias.scope !40667, !noalias !40654
  br label %bb.aj, !dbg !40776

bb.aj:                                            ; preds = %_RNCNCNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH00s_0s_0Bb_.exit.i.i.i, %bb.v
  %i.bx = load i64, ptr %i.l, align 8, !dbg !40777, !range !1096, !alias.scope !40687, !noalias !40654, !noundef !1049
  %i.by = icmp eq i64 %i.bx, -9223372036854775808, !dbg !40777
  br i1 %i.by, label %bb.ao, label %bb.ak, !dbg !40777

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std3ffi6os_str8OsStringECslpwjCj2YNBy_9polars_io.exit.i.i.i.i unwind label %bb.al, !dbg !40778, !noalias !40670

bb.al:                                            ; preds = %bb.ak
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume.i unwind label %bb.am, !dbg !40779, !noalias !40670

bb.am:                                            ; preds = %bb.al
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !40778, !noalias !40670
  unreachable, !dbg !40778

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std3ffi6os_str8OsStringECslpwjCj2YNBy_9polars_io.exit.i.i.i.i: ; preds = %bb.ak
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l), !dbg !40780, !noalias !40670
  br label %bb.ao, !dbg !40777

bb.an:                                            ; preds = %.body.i.i.i
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !40781, !noalias !40670
  unreachable, !dbg !40781

.thread36.i.i:                                    ; preds = %_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorE7inspectNCNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH000EB2c_.exit.i.i, %_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorE7inspectNCNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH000EB2c_.exit.thread.i.i
  store i64 %i.an, ptr %i.t, align 8, !dbg !40782, !noalias !40654
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !40782
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i.i, i64 24, i1 false), !dbg !40782, !noalias !40654
  br label %bb.aq, !dbg !40783

bb.ao:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std3ffi6os_str8OsStringECslpwjCj2YNBy_9polars_io.exit.i.i.i.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !40784, !noalias !40654
  %.pre28.i.i = load i64, ptr %i.t, align 8, !dbg !40785, !range !1141, !noalias !40654
  %i.cc = trunc nuw i64 %.pre28.i.i to i1, !dbg !40783
  br i1 %i.cc, label %bb.ap, label %bb.aq, !dbg !40783

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !40786, !noalias !40654
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef 51, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bn unwind label %bb.az, !dbg !40786, !noalias !40654

bb.aq:                                            ; preds = %bb.ao, %.thread36.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !40787, !noalias !40654
  %i.cd = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !40787
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 24, i1 false), !dbg !40787, !noalias !40654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !40788, !noalias !40654
  invoke void @_RNvNtCsh8eZTKRCwoO_3std3env8temp_dir(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q)
          to label %bb.as unwind label %bb.ar, !dbg !40788, !noalias !40654

.body36.i.i:                                      ; preds = %bb.av, %bb.at, %bb.ar
  %.pn.i.i = phi { ptr, i32 } [ %i.cj, %bb.at ], [ %i.ce, %bb.ar ], [ %i.ck, %bb.av ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r) #37
          to label %.body.i.i unwind label %bb.i, !dbg !40789, !noalias !40654

bb.ar:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std3ffi6os_str8OsStringECslpwjCj2YNBy_9polars_io.exit.i.i.i, %bb.aq
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body36.i.i

bb.as:                                            ; preds = %bb.aq
  %i.cf = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !40790
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !40790, !noalias !40654, !nonnull !1049, !noundef !1049
  %i.ch = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !40791
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !40791, !noalias !40654, !noundef !1049
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !40792, !noalias !40654
  store ptr %i.r, ptr %i.o, align 8, !dbg !40792, !noalias !40654
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !40792
  store ptr @_RNvXsq_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !dbg !40792, !noalias !40654
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull @118, ptr noundef nonnull %i.o)
          to label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslpwjCj2YNBy_9polars_io.exit.i.i unwind label %bb.at, !dbg !40793, !noalias !40654

bb.at:                                            ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslpwjCj2YNBy_9polars_io.exit.i.i, %bb.as
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q) #37
          to label %.body36.i.i unwind label %bb.i, !dbg !40794, !noalias !40654

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslpwjCj2YNBy_9polars_io.exit.i.i: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !40795, !noalias !40654
  invoke void @_RINvMs16_NtCsh8eZTKRCwoO_3std4pathNtB7_4Path4joinNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cg, i64 noundef %i.ci, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
          to label %bb.au unwind label %bb.at, !dbg !40796, !noalias !40654

bb.au:                                            ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslpwjCj2YNBy_9polars_io.exit.i.i
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std3ffi6os_str8OsStringECslpwjCj2YNBy_9polars_io.exit.i.i.i unwind label %bb.av, !dbg !40797, !noalias !40654

bb.av:                                            ; preds = %bb.au
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body36.i.i unwind label %bb.aw, !dbg !40798, !noalias !40654

bb.aw:                                            ; preds = %bb.av
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !40797, !noalias !40654
  unreachable, !dbg !40797

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std3ffi6os_str8OsStringECslpwjCj2YNBy_9polars_io.exit.i.i.i: ; preds = %bb.au
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECslpwjCj2YNBy_9polars_io.exit.i.i unwind label %bb.ar, !dbg !40799, !noalias !40654

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECslpwjCj2YNBy_9polars_io.exit.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std3ffi6os_str8OsStringECslpwjCj2YNBy_9polars_io.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !40794, !noalias !40654
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i.i.i unwind label %bb.ax, !dbg !40800, !noalias !40654

bb.ax:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECslpwjCj2YNBy_9polars_io.exit.i.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body.i.i unwind label %bb.ay, !dbg !40801, !noalias !40654

bb.ay:                                            ; preds = %bb.ax
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !40800, !noalias !40654
  unreachable, !dbg !40800

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std4path7PathBufECslpwjCj2YNBy_9polars_io.exit.i.i
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i.i unwind label %bb.az, !dbg !40802, !noalias !40654

.body.i.i:                                        ; preds = %bb.br, %bb.az, %bb.ax, %.body36.i.i
  %.pn24.i.i = phi { ptr, i32 } [ %.pn.i.i, %.body36.i.i ], [ %i.cm, %bb.ax ], [ %i.cq, %bb.az ], [ %i.dq, %bb.br ] ; 2 uses
  %i.co = load i64, ptr %i.t, align 8, !dbg !40803, !range !1141, !noalias !40654, !noundef !1049
  %i.cp = icmp eq i64 %i.co, 0, !dbg !40803
  br i1 %i.cp, label %common.resume.i, label %bb.by, !dbg !40803

bb.az:                                            ; preds = %bb.bt, %bb.bo, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i.i.i, %bb.ap
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !40789, !noalias !40654
  %i.cr = load i64, ptr %i.t, align 8, !dbg !40803, !range !1141, !noalias !40654, !noundef !1049
  %i.cs = trunc nuw i64 %i.cr to i1, !dbg !40803
  br i1 %i.cs, label %bb.ba, label %bb.bb, !dbg !40803

bb.ba:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i.i
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(32) %i.t), !dbg !40803, !noalias !40654
  br label %bb.bb, !dbg !40803

bb.bb:                                            ; preds = %bb.ba, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !40803, !noalias !40654
  br label %bb.h, !dbg !40804

bb.bc:                                            ; preds = %bb.h
  store ptr %i.ai, ptr %i.n, align 8, !dbg !40719, !noalias !40654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !40805, !noalias !40654
  invoke void @_RINvNtCsh8eZTKRCwoO_3std3env3varReECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 31)
          to label %bb.be unwind label %bb.bd, !dbg !40805, !noalias !40654

bb.bd:                                            ; preds = %_RNvXsw_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultReRNtNtCsh8eZTKRCwoO_3std3env8VarErrorENtNtB7_3cmp9PartialEq2eqCslpwjCj2YNBy_9polars_io.exit.thread.i.i, %bb.bf, %bb.bc
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = icmp eq ptr %i.ai, null, !dbg !40806
  br i1 %i.cu, label %.thread.i.i, label %bb.bl, !dbg !40806

bb.be:                                            ; preds = %bb.bc
  %i.cv = load i64, ptr %i.m, align 8, !dbg !40807, !range !1141, !noalias !40654, !noundef !1049
  %i.cw = trunc nuw i64 %i.cv to i1, !dbg !40808
  %i.cx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.cy = load i64, ptr %i.cx, align 8, !noalias !40654
  %i.cz = icmp ne i64 %i.cy, 1
  %or.cond.not.i.i = select i1 %i.cw, i1 true, i1 %i.cz, !dbg !40808
  br i1 %or.cond.not.i.i, label %_RNvXsw_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultReRNtNtCsh8eZTKRCwoO_3std3env8VarErrorENtNtB7_3cmp9PartialEq2eqCslpwjCj2YNBy_9polars_io.exit.thread.i.i, label %_RNvXsw_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultReRNtNtCsh8eZTKRCwoO_3std3env8VarErrorENtNtB7_3cmp9PartialEq2eqCslpwjCj2YNBy_9polars_io.exit.i.i, !dbg !40808

_RNvXsw_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultReRNtNtCsh8eZTKRCwoO_3std3env8VarErrorENtNtB7_3cmp9PartialEq2eqCslpwjCj2YNBy_9polars_io.exit.i.i: ; preds = %bb.be
  %i.da = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !40809
  %i.db = load ptr, ptr %i.da, align 8, !dbg !40809, !noalias !40654, !nonnull !1049, !noundef !1049
  %lhsc.i.i.i.i.i = load i8, ptr %i.db, align 1, !dbg !40810, !alias.scope !40697, !noalias !40654
  %i.dc = icmp eq i8 %lhsc.i.i.i.i.i, 49, !dbg !40810
  br i1 %i.dc, label %bb.bf, label %_RNvXsw_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultReRNtNtCsh8eZTKRCwoO_3std3env8VarErrorENtNtB7_3cmp9PartialEq2eqCslpwjCj2YNBy_9polars_io.exit.thread.i.i, !dbg !40805

bb.bf:                                            ; preds = %_RNvXsw_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultReRNtNtCsh8eZTKRCwoO_3std3env8VarErrorENtNtB7_3cmp9PartialEq2eqCslpwjCj2YNBy_9polars_io.exit.i.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(32) %i.m)
          to label %bb.bg unwind label %bb.bd, !dbg !40811, !noalias !40654

_RNvXsw_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultReRNtNtCsh8eZTKRCwoO_3std3env8VarErrorENtNtB7_3cmp9PartialEq2eqCslpwjCj2YNBy_9polars_io.exit.thread.i.i: ; preds = %_RNvXsw_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultReRNtNtCsh8eZTKRCwoO_3std3env8VarErrorENtNtB7_3cmp9PartialEq2eqCslpwjCj2YNBy_9polars_io.exit.i.i, %bb.be
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(32) %i.m)
          to label %bb.bi unwind label %bb.bd, !dbg !40811, !noalias !40654

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !40811, !noalias !40654
  %i.dd = icmp eq ptr %i.ai, null, !dbg !40812
  br i1 %i.dd, label %_RNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH0B5_.exit, label %bb.bh, !dbg !40812

bb.bh:                                            ; preds = %bb.bg
  call void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.n), !dbg !40812, !noalias !40654
  br label %_RNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH0B5_.exit, !dbg !40812

bb.bi:                                            ; preds = %_RNvXsw_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultReRNtNtCsh8eZTKRCwoO_3std3env8VarErrorENtNtB7_3cmp9PartialEq2eqCslpwjCj2YNBy_9polars_io.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !40811, !noalias !40654
  %.not.i.i = icmp eq ptr %i.ai, null, !dbg !40813
  br i1 %.not.i.i, label %_RNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH0B5_.exit, label %bb.bj, !dbg !40814

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !40815, !noalias !40654
  %i.de = icmp eq i64 %i.ah, 0, !dbg !40816
  br i1 %i.de, label %bb.bz, label %bb.bk, !dbg !40816

bb.bk:                                            ; preds = %bb.bj
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef range(i64 1, 0) %i.ah, i64 noundef 1) #39, !dbg !40817, !noalias !40654
  br label %bb.bz, !dbg !40818

bb.bl:                                            ; preds = %bb.bd
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.n)
          to label %.thread.i.i unwind label %bb.i, !dbg !40806, !noalias !40654

.thread.i.i:                                      ; preds = %bb.bl, %bb.bd, %.thread17.i.i
  %.pn21.pn16.i.i = phi { ptr, i32 } [ %i.aj, %.thread17.i.i ], [ %i.ct, %bb.bd ], [ %i.ct, %bb.bl ] ; 2 uses
  %i.df = icmp eq i64 %i.ah, 0, !dbg !40819
  br i1 %i.df, label %common.resume.i, label %bb.bm, !dbg !40819

bb.bm:                                            ; preds = %.thread.i.i
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef range(i64 1, 0) %i.ah, i64 noundef 1) #39, !dbg !40820, !noalias !40654
  br label %common.resume.i, !dbg !40821

bb.bn:                                            ; preds = %bb.ap
  %i.dg = load i64, ptr %i.j, align 8, !dbg !40786, !range !1141, !noalias !40654, !noundef !1049
  %i.dh = trunc nuw i64 %i.dg to i1, !dbg !40822
  %i.di = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !40823
  %i.dj = load i64, ptr %i.di, align 8, !dbg !40823, !range !1096, !noalias !40654, !noundef !1049 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !40823 ; 2 uses
  br i1 %i.dh, label %bb.bo, label %bb.bp, !dbg !40822, !prof !1142

bb.bo:                                            ; preds = %bb.bn
  %i.dl = load i64, ptr %i.dk, align 8, !dbg !40824, !noalias !40654
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dj, i64 %i.dl) #36
          to label %bb.bx unwind label %bb.az, !dbg !40825, !noalias !40654

bb.bp:                                            ; preds = %bb.bn
  %i.dm = load ptr, ptr %i.dk, align 8, !dbg !40826, !noalias !40654, !nonnull !1049, !noundef !1049 ; 2 uses
end_hunk_1
begin_hunk_2_@llvm.umin.i8
!40276 = !DILocation(line: 242, column: 6, scope: !40271)
!40277 = distinct !DISubprogram(name: "write_char<std::io::default_write_fmt::Adapter<polars_io::cloud::cloud_writer::io_trait_wrap::CloudWriterIoTraitWrap>>", linkageName: "_RNvYINtNvNtCsh8eZTKRCwoO_3std2io17default_write_fmt7AdapterNtNtNtNtCslpwjCj2YNBy_9polars_io5cloud12cloud_writer13io_trait_wrap22CloudWriterIoTraitWrapENtNtCscgRAwXFJnXP_4core3fmt5Write10write_charB13_", scope: !1397, file: !1178, line: 183, type: !1050, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40278 = distinct !DISubprogram(name: "encode_utf8", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core4char7methodsc11encode_utf8", scope: !1091, file: !1089, line: 714, type: !1050, scopeLine: 714, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40279 = distinct !DILocation(line: 716, column: 42, scope: !40278, inlinedAt: !40296)
!40280 = distinct !DILocation(line: 2070, column: 15, scope: !1038, inlinedAt: !40279)
!40281 = distinct !DILocation(line: 2082, column: 14, scope: !1039, inlinedAt: !40279)
!40282 = distinct !{!40282, i1 true, !"_RNvNtNtCscgRAwXFJnXP_4core4char7methods15encode_utf8_raw"}
!40283 = distinct !{!40283, !40282, !"_RNvNtNtCscgRAwXFJnXP_4core4char7methods15encode_utf8_raw: argument 0"}
!40284 = distinct !DILocation(line: 2123, column: 18, scope: !971, inlinedAt: !40281)
!40285 = distinct !DILocation(line: 2129, column: 18, scope: !971, inlinedAt: !40281)
!40286 = distinct !DILocation(line: 2130, column: 18, scope: !971, inlinedAt: !40281)
!40287 = distinct !DILocation(line: 2135, column: 14, scope: !971, inlinedAt: !40281)
!40288 = distinct !DILocation(line: 2136, column: 14, scope: !971, inlinedAt: !40281)
!40289 = distinct !DILocation(line: 2137, column: 14, scope: !971, inlinedAt: !40281)
!40290 = distinct !{!40290, i1 true, !"_RNvXNvNtCsh8eZTKRCwoO_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtCslpwjCj2YNBy_9polars_io5cloud12cloud_writer13io_trait_wrap22CloudWriterIoTraitWrapENtNtCscgRAwXFJnXP_4core3fmt5Write9write_strB16_"}
!40291 = distinct !{!40291, !40290, !"_RNvXNvNtCsh8eZTKRCwoO_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtCslpwjCj2YNBy_9polars_io5cloud12cloud_writer13io_trait_wrap22CloudWriterIoTraitWrapENtNtCscgRAwXFJnXP_4core3fmt5Write9write_strB16_: argument 0"}
!40292 = distinct !DILocation(line: 184, column: 14, scope: !40277)
!40293 = distinct !{!40293, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECslpwjCj2YNBy_9polars_io"}
!40294 = distinct !{!40294, !40293, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECslpwjCj2YNBy_9polars_io: argument 0"}
!40295 = distinct !DILocation(line: 631, column: 21, scope: !889, inlinedAt: !40292)
!40296 = !DILocation(line: 184, column: 26, scope: !40277)
!40297 = !{!40283}
!40298 = !{!40291}
!40299 = !{!40294, !40291}
!40300 = !DILocation(line: 184, column: 43, scope: !40277)
!40301 = !DILocation(line: 2040, column: 9, scope: !1037, inlinedAt: !40280)
!40302 = !DILocation(line: 2041, column: 9, scope: !1037, inlinedAt: !40280)
!40303 = !DILocation(line: 2116, column: 21, scope: !439, inlinedAt: !40281)
!40304 = !DILocation(line: 2117, column: 22, scope: !968, inlinedAt: !40281)
!40305 = !DILocation(line: 2117, column: 21, scope: !968, inlinedAt: !40281)
!40306 = !DILocation(line: 2118, column: 22, scope: !969, inlinedAt: !40281)
!40307 = !DILocation(line: 2118, column: 21, scope: !969, inlinedAt: !40281)
!40308 = !DILocation(line: 2119, column: 22, scope: !970, inlinedAt: !40281)
!40309 = !DILocation(line: 2119, column: 21, scope: !970, inlinedAt: !40281)
!40310 = !DILocation(line: 2121, column: 12, scope: !971, inlinedAt: !40281)
!40311 = !DILocation(line: 2112, column: 13, scope: !439, inlinedAt: !40281)
!40312 = !DILocation(line: 0, scope: !1847, inlinedAt: !40281)
!40313 = !DILocation(line: 2122, column: 13, scope: !971, inlinedAt: !40281)
!40314 = !DILocation(line: 961, column: 18, scope: !972, inlinedAt: !40284)
!40315 = !DILocation(line: 2123, column: 13, scope: !971, inlinedAt: !40281)
!40316 = !DILocation(line: 0, scope: !1848, inlinedAt: !40281)
!40317 = !DILocation(line: 2127, column: 12, scope: !971, inlinedAt: !40281)
!40318 = !DILocation(line: 2128, column: 13, scope: !971, inlinedAt: !40281)
!40319 = !DILocation(line: 961, column: 18, scope: !972, inlinedAt: !40285)
!40320 = !DILocation(line: 2129, column: 13, scope: !971, inlinedAt: !40281)
!40321 = !DILocation(line: 961, column: 18, scope: !972, inlinedAt: !40286)
!40322 = !DILocation(line: 2130, column: 13, scope: !971, inlinedAt: !40281)
!40323 = !DILocation(line: 2134, column: 9, scope: !971, inlinedAt: !40281)
!40324 = !DILocation(line: 961, column: 18, scope: !972, inlinedAt: !40287)
!40325 = !DILocation(line: 2135, column: 9, scope: !971, inlinedAt: !40281)
!40326 = !DILocation(line: 961, column: 18, scope: !972, inlinedAt: !40288)
!40327 = !DILocation(line: 2136, column: 9, scope: !971, inlinedAt: !40281)
!40328 = !DILocation(line: 961, column: 18, scope: !972, inlinedAt: !40289)
!40329 = !DILocation(line: 2137, column: 9, scope: !971, inlinedAt: !40281)
!40330 = !DILocation(line: 2139, column: 2, scope: !438, inlinedAt: !40281)
!40331 = !DILocation(line: 184, column: 14, scope: !40277)
!40332 = !DILocation(line: 628, column: 19, scope: !888, inlinedAt: !40292)
!40333 = !DILocation(line: 628, column: 30, scope: !888, inlinedAt: !40292)
!40334 = !DILocation(line: 628, column: 13, scope: !888, inlinedAt: !40292)
!40335 = !DILocation(line: 631, column: 21, scope: !889, inlinedAt: !40292)
!40336 = !DILocation(line: 810, column: 1, scope: !191, inlinedAt: !40295)
!40337 = !DILocation(line: 627, column: 9, scope: !888, inlinedAt: !40292)
!40338 = !DILocation(line: 634, column: 13, scope: !888, inlinedAt: !40292)
!40339 = !DILocation(line: 184, column: 67, scope: !40277)
!40340 = !DILocation(line: 185, column: 6, scope: !40277)
!40341 = distinct !DISubprogram(name: "write_fmt<std::io::default_write_fmt::Adapter<polars_io::cloud::cloud_writer::io_trait_wrap::CloudWriterIoTraitWrap>>", linkageName: "_RNvYINtNvNtCsh8eZTKRCwoO_3std2io17default_write_fmt7AdapterNtNtNtNtCslpwjCj2YNBy_9polars_io5cloud12cloud_writer13io_trait_wrap22CloudWriterIoTraitWrapENtNtCscgRAwXFJnXP_4core3fmt5Write9write_fmtB13_", scope: !1397, file: !1178, line: 212, type: !1050, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40342 = distinct !{null}
!40343 = distinct !DISubprogram(name: "spec_write_fmt<std::io::default_write_fmt::Adapter<polars_io::cloud::cloud_writer::io_trait_wrap::CloudWriterIoTraitWrap>>", linkageName: "_RNvXs_NvNtNtCscgRAwXFJnXP_4core3fmt5Write9write_fmtQINtNvNtCsh8eZTKRCwoO_3std2io17default_write_fmt7AdapterNtNtNtNtCslpwjCj2YNBy_9polars_io5cloud12cloud_writer13io_trait_wrap22CloudWriterIoTraitWrapENtB4_12SpecWriteFmt14spec_write_fmtB1P_", scope: !1399, file: !1178, line: 232, type: !1050, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40344 = distinct !DILocation(line: 241, column: 14, scope: !40341)
!40345 = !DILocation(line: 236, column: 21, scope: !40343, inlinedAt: !40344)
!40346 = !DILocation(line: 242, column: 6, scope: !40341)
!40347 = distinct !DISubprogram(name: "call_once<polars_io::path_utils::POLARS_TEMP_DIR_BASE_PATH::{closure_env#0}, ()>", linkageName: "_RNvYNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceB8_", scope: !1263, file: !1157, line: 250, type: !1050, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40348 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH00B7_", scope: !40653, file: !1377, line: 19, type: !1161, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40349 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH0B5_", scope: !40652, file: !1377, line: 18, type: !1161, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40350 = distinct !DILocation(line: 250, column: 5, scope: !40347)
!40351 = distinct !DILocation(line: 19, column: 5, scope: !40349, inlinedAt: !40350)
!40352 = distinct !{!40352, i1 true, !"_RNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH00B7_"}
!40353 = distinct !{!40353, !40352, !"_RNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH00B7_: argument 0"}
!40354 = distinct !DILexicalBlock(scope: !40348, file: !1377, line: 20, column: 9)
!40355 = distinct !DILexicalBlock(scope: !40354, file: !1377, line: 22, column: 87)
!40356 = distinct !DISubprogram(name: "map<alloc::string::String, std::env::VarError, std::path::PathBuf, fn(alloc::string::String) -> std::path::PathBuf>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorE3mapNtNtB1o_4path7PathBufNvYB1Y_INtNtB5_7convert4FromBI_E4fromECslpwjCj2YNBy_9polars_io", scope: !1099, file: !1097, line: 831, type: !1050, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40357 = distinct !DILocation(line: 22, column: 68, scope: !40355, inlinedAt: !40351)
!40358 = distinct !DISubprogram(name: "into_boxed_path", linkageName: "_RNvMsr_NtCsh8eZTKRCwoO_3std4pathNtB5_7PathBuf15into_boxed_path", scope: !40655, file: !1692, line: 1803, type: !1050, scopeLine: 1803, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40359 = distinct !DILocation(line: 68, column: 10, scope: !40354, inlinedAt: !40351)
!40360 = distinct !DISubprogram(name: "new_unchecked<std::path::Path>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullNtNtCsh8eZTKRCwoO_3std4path4PathE13new_uncheckedCslpwjCj2YNBy_9polars_io", scope: !1084, file: !1074, line: 233, type: !1050, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40361 = distinct !DISubprogram(name: "new_unchecked<std::path::Path>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr6uniqueINtB5_6UniqueNtNtCsh8eZTKRCwoO_3std4path4PathE13new_uncheckedCslpwjCj2YNBy_9polars_io", scope: !40658, file: !40656, line: 86, type: !1050, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40362 = distinct !DISubprogram(name: "from_raw_in<std::path::Path, alloc::alloc::Global>", linkageName: "_RNvMs7_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtCsh8eZTKRCwoO_3std4path4PathE11from_raw_inCslpwjCj2YNBy_9polars_io", scope: !40659, file: !1246, line: 1526, type: !1050, scopeLine: 1526, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40363 = distinct !DISubprogram(name: "from_raw<std::path::Path>", linkageName: "_RNvMs6_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtCsh8eZTKRCwoO_3std4path4PathE8from_rawCslpwjCj2YNBy_9polars_io", scope: !40660, file: !1246, line: 1299, type: !1050, scopeLine: 1299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40364 = distinct !DILexicalBlock(scope: !40358, file: !1692, line: 1804, column: 9)
!40365 = distinct !DILocation(line: 1805, column: 18, scope: !40364, inlinedAt: !40359)
!40366 = distinct !DILocation(line: 1300, column: 18, scope: !40363, inlinedAt: !40365)
!40367 = distinct !DILocation(line: 1527, column: 22, scope: !40362, inlinedAt: !40366)
!40368 = distinct !DILocation(line: 88, column: 36, scope: !40361, inlinedAt: !40367)
!40369 = distinct !DILexicalBlock(scope: !40354, file: !1377, line: 22, column: 9)
!40370 = distinct !{!40370, i1 true, !"_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorE7inspectNCNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH000EB2c_"}
!40371 = distinct !{!40371, !40370, !"_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorE7inspectNCNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH000EB2c_: argument 0"}
!40372 = distinct !{!40372, !40370, !"_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorE7inspectNCNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH000EB2c_: argument 1"}
!40373 = distinct !DISubprogram(name: "inspect<alloc::string::String, std::env::VarError, polars_io::path_utils::POLARS_TEMP_DIR_BASE_PATH::{closure#0}::{closure#0}::{closure_env#0}>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorE7inspectNCNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH000EB2c_", scope: !1099, file: !1097, line: 988, type: !1161, scopeLine: 988, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40374 = distinct !DILexicalBlock(scope: !40373, file: !1097, line: 992, column: 33)
!40375 = distinct !DILocation(line: 29, column: 18, scope: !40354, inlinedAt: !40351)
!40376 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH000B9_", scope: !40664, file: !1377, line: 29, type: !1161, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40377 = distinct !DILocation(line: 993, column: 13, scope: !40374, inlinedAt: !40375)
!40378 = distinct !DISubprogram(name: "or_else<alloc::string::String, std::env::VarError, std::env::VarError, polars_io::path_utils::POLARS_TEMP_DIR_BASE_PATH::{closure#0}::{closure#0}::{closure_env#1}>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorE7or_elseB1k_NCNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH00s_0EB2g_", scope: !1099, file: !1097, line: 1559, type: !1050, scopeLine: 1559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40379 = distinct !DILocation(line: 34, column: 18, scope: !40354, inlinedAt: !40351)
!40380 = distinct !DILexicalBlock(scope: !40378, file: !1097, line: 1565, column: 13)
!40381 = distinct !{!40381, i1 true, !"_RNCNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH00s_0B9_"}
!40382 = distinct !{!40382, !40381, !"_RNCNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH00s_0B9_: argument 0"}
!40383 = distinct !{!40383, !40381, !"_RNCNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH00s_0B9_: argument 1"}
!40384 = distinct !DISubprogram(name: "{closure#1}", linkageName: "_RNCNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH00s_0B9_", scope: !40664, file: !1377, line: 34, type: !1161, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40385 = distinct !DILocation(line: 1565, column: 23, scope: !40380, inlinedAt: !40379)
!40386 = distinct !{!40386, i1 true, !"_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorE7inspectNCNCNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH00s_00EB2e_"}
!40387 = distinct !{!40387, !40386, !"_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorE7inspectNCNCNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH00s_00EB2e_: argument 0"}
!40388 = distinct !{!40388, !40386, !"_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorE7inspectNCNCNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH00s_00EB2e_: argument 1"}
!40389 = distinct !DISubprogram(name: "inspect<alloc::string::String, std::env::VarError, polars_io::path_utils::POLARS_TEMP_DIR_BASE_PATH::{closure#0}::{closure#0}::{closure#1}::{closure_env#0}>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorE7inspectNCNCNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH00s_00EB2e_", scope: !1099, file: !1097, line: 988, type: !1161, scopeLine: 988, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40390 = distinct !DILexicalBlock(scope: !40389, file: !1097, line: 992, column: 33)
!40391 = distinct !DILocation(line: 40, column: 30, scope: !40384, inlinedAt: !40385)
!40392 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNCNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH00s_00Bb_", scope: !40674, file: !1377, line: 40, type: !1161, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40393 = distinct !DILocation(line: 993, column: 13, scope: !40390, inlinedAt: !40391)
!40394 = distinct !DISubprogram(name: "map<alloc::string::String, std::env::VarError, alloc::string::String, polars_io::path_utils::POLARS_TEMP_DIR_BASE_PATH::{closure#0}::{closure#0}::{closure#1}::{closure_env#1}>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorE3mapBI_NCNCNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH00s_0s_0EB2d_", scope: !1099, file: !1097, line: 831, type: !1050, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40395 = distinct !DILocation(line: 45, column: 30, scope: !40384, inlinedAt: !40385)
!40396 = distinct !DILexicalBlock(scope: !40394, file: !1097, line: 836, column: 13)
!40397 = distinct !{!40397, i1 true, !"_RNCNCNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH00s_0s_0Bb_"}
!40398 = distinct !{!40398, !40397, !"_RNCNCNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH00s_0s_0Bb_: argument 1"}
!40399 = distinct !{!40399, !40397, !"_RNCNCNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH00s_0s_0Bb_: argument 0"}
!40400 = distinct !DISubprogram(name: "{closure#1}", linkageName: "_RNCNCNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH00s_0s_0Bb_", scope: !40674, file: !1377, line: 45, type: !1050, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40401 = distinct !DILocation(line: 836, column: 25, scope: !40396, inlinedAt: !40395)
!40402 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullhECslpwjCj2YNBy_9polars_io", scope: !1122, file: !1119, line: 613, type: !1050, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40403 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrhECslpwjCj2YNBy_9polars_io", scope: !1122, file: !1119, line: 608, type: !1050, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40404 = distinct !DISubprogram(name: "ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE3ptrCslpwjCj2YNBy_9polars_io", scope: !1140, file: !1119, line: 295, type: !1050, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40405 = distinct !DISubprogram(name: "as_ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE6as_ptrCslpwjCj2YNBy_9polars_io", scope: !1139, file: !1137, line: 1939, type: !1050, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40406 = distinct !DISubprogram(name: "as_slice<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE8as_sliceCslpwjCj2YNBy_9polars_io", scope: !1139, file: !1137, line: 1824, type: !1050, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40407 = distinct !DISubprogram(name: "as_bytes", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String8as_bytes", scope: !1177, file: !1123, line: 1445, type: !1050, scopeLine: 1445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40408 = distinct !DILocation(line: 45, column: 53, scope: !40400, inlinedAt: !40401)
!40409 = distinct !DILocation(line: 1446, column: 18, scope: !40407, inlinedAt: !40408)
!40410 = distinct !DILocation(line: 1841, column: 76, scope: !40406, inlinedAt: !40409)
!40411 = distinct !DILocation(line: 1942, column: 18, scope: !40405, inlinedAt: !40410)
!40412 = distinct !DILocation(line: 296, column: 20, scope: !40404, inlinedAt: !40411)
!40413 = distinct !DILocation(line: 609, column: 14, scope: !40403, inlinedAt: !40412)
!40414 = distinct !DISubprogram(name: "as_ptr<64>", linkageName: "_RNvMs_NtCs7qB04PZWTFT_8arrayvec12array_stringINtB4_11ArrayStringKj40_E6as_ptrCslpwjCj2YNBy_9polars_io", scope: !40684, file: !40681, line: 421, type: !1050, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40415 = distinct !DISubprogram(name: "deref<64>", linkageName: "_RNvXs0_NtCs7qB04PZWTFT_8arrayvec12array_stringINtB5_11ArrayStringKj40_ENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCslpwjCj2YNBy_9polars_io", scope: !40685, file: !40681, line: 435, type: !1050, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40416 = distinct !DILocation(line: 45, column: 38, scope: !40400, inlinedAt: !40401)
!40417 = distinct !DILocation(line: 437, column: 49, scope: !40415, inlinedAt: !40416)
!40418 = distinct !DISubprogram(name: "len<64>", linkageName: "_RNvMs_NtCs7qB04PZWTFT_8arrayvec12array_stringINtB4_11ArrayStringKj40_E3lenCslpwjCj2YNBy_9polars_io", scope: !40684, file: !40681, line: 88, type: !1050, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40419 = distinct !DILocation(line: 437, column: 64, scope: !40415, inlinedAt: !40416)
!40420 = distinct !DISubprogram(name: "is_char_boundary", linkageName: "_RNvMNtCscgRAwXFJnXP_4core3stre16is_char_boundary", scope: !1057, file: !1056, line: 373, type: !1050, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40421 = distinct !DISubprogram(name: "get", linkageName: "_RNvXs8_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get", scope: !40686, file: !1063, line: 438, type: !1050, scopeLine: 438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40422 = distinct !DISubprogram(name: "index", linkageName: "_RNvXs8_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE5index", scope: !40686, file: !1063, line: 468, type: !1050, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40423 = distinct !DILexicalBlock(scope: !40422, file: !1063, line: 469, column: 9)
!40424 = distinct !DISubprogram(name: "index<core::ops::range::RangeTo<usize>>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCslpwjCj2YNBy_9polars_io", scope: !1066, file: !1063, line: 62, type: !1050, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40425 = distinct !DILocation(line: 45, column: 73, scope: !40400, inlinedAt: !40401)
!40426 = distinct !DILocation(line: 63, column: 15, scope: !40424, inlinedAt: !40425)
!40427 = distinct !DILocation(line: 470, column: 20, scope: !40423, inlinedAt: !40426)
!40428 = distinct !DILocation(line: 439, column: 18, scope: !40421, inlinedAt: !40427)
!40429 = distinct !DISubprogram(name: "with_capacity_in<alloc::alloc::Global>", linkageName: "_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslpwjCj2YNBy_9polars_io", scope: !1122, file: !1119, line: 433, type: !1050, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40430 = distinct !DISubprogram(name: "with_capacity_in<u8, alloc::alloc::Global>", linkageName: "_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE16with_capacity_inCslpwjCj2YNBy_9polars_io", scope: !1140, file: !1119, line: 175, type: !1050, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40431 = distinct !DISubprogram(name: "with_capacity_in<u8, alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE16with_capacity_inCslpwjCj2YNBy_9polars_io", scope: !1139, file: !1137, line: 976, type: !1050, scopeLine: 976, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40432 = distinct !DISubprogram(name: "to_vec<u8, alloc::alloc::Global>", linkageName: "_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECslpwjCj2YNBy_9polars_io", scope: !1136, file: !1131, line: 446, type: !1050, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40433 = distinct !DILexicalBlock(scope: !40432, file: !1131, line: 447, column: 17)
!40434 = distinct !DISubprogram(name: "to_vec_in<u8, alloc::alloc::Global>", linkageName: "_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSh9to_vec_inNtNtB5_5alloc6GlobalECslpwjCj2YNBy_9polars_io", scope: !1134, file: !1131, line: 396, type: !1050, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40435 = distinct !DISubprogram(name: "to_vec<u8>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5sliceSh6to_vecCslpwjCj2YNBy_9polars_io", scope: !1134, file: !1131, line: 372, type: !1050, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40436 = distinct !DISubprogram(name: "to_owned<u8>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc5sliceShNtNtB7_6borrow7ToOwned8to_ownedCslpwjCj2YNBy_9polars_io", scope: !1133, file: !1131, line: 841, type: !1050, scopeLine: 841, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40437 = distinct !DISubprogram(name: "to_owned", linkageName: "_RNvXs2_NtCsgZ49sUHp3tW_5alloc3streNtNtB7_6borrow7ToOwned8to_owned", scope: !1130, file: !1128, line: 210, type: !1050, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40438 = distinct !DISubprogram(name: "from", linkageName: "_RNvXsK_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringINtNtCscgRAwXFJnXP_4core7convert4FromReE4from", scope: !1127, file: !1123, line: 3113, type: !1050, scopeLine: 3113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40439 = distinct !DISubprogram(name: "spec_to_string", linkageName: "_RNvXs21_NtCsgZ49sUHp3tW_5alloc6stringeNtB6_12SpecToString14spec_to_string", scope: !1126, file: !1123, line: 3043, type: !1050, scopeLine: 3043, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40440 = distinct !DILexicalBlock(scope: !40439, file: !1123, line: 3044, column: 21)
!40441 = distinct !DISubprogram(name: "to_string<str>", linkageName: "_RNvXsB_NtCsgZ49sUHp3tW_5alloc6stringeNtB5_8ToString9to_stringCslpwjCj2YNBy_9polars_io", scope: !1125, file: !1123, line: 2893, type: !1050, scopeLine: 2893, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40442 = distinct !DILocation(line: 45, column: 80, scope: !40400, inlinedAt: !40401)
!40443 = distinct !DILocation(line: 2894, column: 9, scope: !40441, inlinedAt: !40442)
!40444 = distinct !DILocation(line: 3045, column: 21, scope: !40440, inlinedAt: !40443)
!40445 = distinct !DILocation(line: 3114, column: 11, scope: !40438, inlinedAt: !40444)
!40446 = distinct !DILocation(line: 211, column: 62, scope: !40437, inlinedAt: !40445)
!40447 = distinct !DILocation(line: 842, column: 14, scope: !40436, inlinedAt: !40446)
!40448 = distinct !DILocation(line: 376, column: 14, scope: !40435, inlinedAt: !40447)
!40449 = distinct !DILocation(line: 400, column: 16, scope: !40434, inlinedAt: !40448)
!40450 = distinct !DILocation(line: 448, column: 29, scope: !40433, inlinedAt: !40449)
!40451 = distinct !DILocation(line: 977, column: 20, scope: !40431, inlinedAt: !40450)
!40452 = distinct !DILocation(line: 177, column: 20, scope: !40430, inlinedAt: !40451)
!40453 = distinct !DILexicalBlock(scope: !40429, file: !1119, line: 442, column: 13)
!40454 = distinct !DISubprogram(name: "needs_to_grow<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner13needs_to_growCslpwjCj2YNBy_9polars_io", scope: !1122, file: !1119, line: 766, type: !1050, scopeLine: 766, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40455 = distinct !DILexicalBlock(scope: !40429, file: !1119, line: 435, column: 13)
!40456 = distinct !DILocation(line: 438, column: 50, scope: !40455, inlinedAt: !40452)
!40457 = distinct !DISubprogram(name: "assert_unchecked", linkageName: "_RNvNtCscgRAwXFJnXP_4core4hint16assert_unchecked", scope: !1144, file: !1143, line: 202, type: !1050, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40458 = distinct !DILocation(line: 438, column: 21, scope: !40455, inlinedAt: !40452)
!40459 = distinct !DISubprogram(name: "copy_nonoverlapping<u8>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappinghECslpwjCj2YNBy_9polars_io", scope: !1070, file: !1100, line: 531, type: !1050, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40460 = distinct !DISubprogram(name: "copy_to_nonoverlapping<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPh22copy_to_nonoverlappingCslpwjCj2YNBy_9polars_io", scope: !1072, file: !1069, line: 1247, type: !1050, scopeLine: 1247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40461 = distinct !DILexicalBlock(scope: !40433, file: !1131, line: 448, column: 17)
!40462 = distinct !DILocation(line: 454, column: 36, scope: !40461, inlinedAt: !40449)
!40463 = distinct !DILocation(line: 1252, column: 18, scope: !40460, inlinedAt: !40462)
!40464 = distinct !DILocation(line: 45, column: 90, scope: !40400, inlinedAt: !40401)
!40465 = distinct !DILocation(line: 810, column: 1, scope: !18, inlinedAt: !40464)
!40466 = distinct !DILocation(line: 810, column: 1, scope: !17, inlinedAt: !40465)
!40467 = distinct !DILocation(line: 810, column: 1, scope: !17, inlinedAt: !40465)
!40468 = distinct !{!40468, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std3env8VarErrorECslpwjCj2YNBy_9polars_io"}
!40469 = distinct !{!40469, !40468, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsh8eZTKRCwoO_3std3env8VarErrorECslpwjCj2YNBy_9polars_io: argument 0"}
!40470 = distinct !DILocation(line: 51, column: 17, scope: !40384, inlinedAt: !40385)
!40471 = distinct !DILocation(line: 810, column: 1, scope: !98, inlinedAt: !40470)
!40472 = distinct !DILocation(line: 810, column: 1, scope: !69, inlinedAt: !40471)
!40473 = distinct !DILocation(line: 810, column: 1, scope: !68, inlinedAt: !40472)
!40474 = distinct !DILocation(line: 810, column: 1, scope: !17, inlinedAt: !40473)
!40475 = distinct !DILocation(line: 810, column: 1, scope: !17, inlinedAt: !40473)
!40476 = distinct !DILexicalBlock(scope: !40378, file: !1097, line: 1564, column: 13)
!40477 = distinct !DILexicalBlock(scope: !40354, file: !1377, line: 28, column: 13)
!40478 = distinct !DILexicalBlock(scope: !40477, file: !1377, line: 53, column: 31)
!40479 = distinct !DISubprogram(name: "with_capacity_in<alloc::alloc::Global>", linkageName: "_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslpwjCj2YNBy_9polars_io", scope: !1122, file: !1119, line: 433, type: !1050, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40480 = distinct !DISubprogram(name: "with_capacity_in<u8, alloc::alloc::Global>", linkageName: "_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE16with_capacity_inCslpwjCj2YNBy_9polars_io", scope: !1140, file: !1119, line: 175, type: !1050, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40481 = distinct !DISubprogram(name: "with_capacity_in<u8, alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE16with_capacity_inCslpwjCj2YNBy_9polars_io", scope: !1139, file: !1137, line: 976, type: !1050, scopeLine: 976, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40482 = distinct !DISubprogram(name: "to_vec<u8, alloc::alloc::Global>", linkageName: "_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECslpwjCj2YNBy_9polars_io", scope: !1136, file: !1131, line: 446, type: !1050, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40483 = distinct !DILexicalBlock(scope: !40482, file: !1131, line: 447, column: 17)
!40484 = distinct !DISubprogram(name: "to_vec_in<u8, alloc::alloc::Global>", linkageName: "_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSh9to_vec_inNtNtB5_5alloc6GlobalECslpwjCj2YNBy_9polars_io", scope: !1134, file: !1131, line: 396, type: !1050, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40485 = distinct !DISubprogram(name: "to_vec<u8>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5sliceSh6to_vecCslpwjCj2YNBy_9polars_io", scope: !1134, file: !1131, line: 372, type: !1050, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40486 = distinct !DISubprogram(name: "to_owned<u8>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc5sliceShNtNtB7_6borrow7ToOwned8to_ownedCslpwjCj2YNBy_9polars_io", scope: !1133, file: !1131, line: 841, type: !1050, scopeLine: 841, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40487 = distinct !DISubprogram(name: "to_owned", linkageName: "_RNvXs2_NtCsgZ49sUHp3tW_5alloc3streNtNtB7_6borrow7ToOwned8to_owned", scope: !1130, file: !1128, line: 210, type: !1050, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40488 = distinct !DISubprogram(name: "from", linkageName: "_RNvXsK_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringINtNtCscgRAwXFJnXP_4core7convert4FromReE4from", scope: !1127, file: !1123, line: 3113, type: !1050, scopeLine: 3113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40489 = distinct !DISubprogram(name: "from", linkageName: "_RNvXsh_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtB7_3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromReE4from", scope: !40688, file: !1714, line: 638, type: !1050, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40490 = distinct !DISubprogram(name: "into<&str, alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>", linkageName: "_RNvXs1_NtCscgRAwXFJnXP_4core7convertReINtB5_4IntoINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB1G_4SyncEL_EE4intoCslpwjCj2YNBy_9polars_io", scope: !1147, file: !1145, line: 777, type: !1050, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40491 = distinct !DISubprogram(name: "other<&str>", linkageName: "_RINvMs5_NtNtCsh8eZTKRCwoO_3std2io5errorNtB6_5Error5otherReECslpwjCj2YNBy_9polars_io", scope: !1338, file: !1337, line: 603, type: !1050, scopeLine: 603, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40492 = distinct !DILocation(line: 56, column: 28, scope: !40477, inlinedAt: !40351)
!40493 = distinct !DILocation(line: 607, column: 44, scope: !40491, inlinedAt: !40492)
!40494 = distinct !DILocation(line: 778, column: 9, scope: !40490, inlinedAt: !40493)
!40495 = distinct !DILocation(line: 639, column: 20, scope: !40489, inlinedAt: !40494)
!40496 = distinct !DILocation(line: 3114, column: 11, scope: !40488, inlinedAt: !40495)
!40497 = distinct !DILocation(line: 211, column: 62, scope: !40487, inlinedAt: !40496)
!40498 = distinct !DILocation(line: 842, column: 14, scope: !40486, inlinedAt: !40497)
!40499 = distinct !DILocation(line: 376, column: 14, scope: !40485, inlinedAt: !40498)
!40500 = distinct !DILocation(line: 400, column: 16, scope: !40484, inlinedAt: !40499)
!40501 = distinct !DILocation(line: 448, column: 29, scope: !40483, inlinedAt: !40500)
!40502 = distinct !DILocation(line: 977, column: 20, scope: !40481, inlinedAt: !40501)
!40503 = distinct !DILocation(line: 177, column: 20, scope: !40480, inlinedAt: !40502)
!40504 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullhECslpwjCj2YNBy_9polars_io", scope: !1122, file: !1119, line: 613, type: !1050, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40505 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrhECslpwjCj2YNBy_9polars_io", scope: !1122, file: !1119, line: 608, type: !1050, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40506 = distinct !DISubprogram(name: "ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE3ptrCslpwjCj2YNBy_9polars_io", scope: !1140, file: !1119, line: 295, type: !1050, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40507 = distinct !DISubprogram(name: "as_ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE6as_ptrCslpwjCj2YNBy_9polars_io", scope: !1139, file: !1137, line: 1939, type: !1050, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40508 = distinct !DISubprogram(name: "as_slice<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE8as_sliceCslpwjCj2YNBy_9polars_io", scope: !1139, file: !1137, line: 1824, type: !1050, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40509 = distinct !DISubprogram(name: "as_slice", linkageName: "_RNvMs6_NtNtNtCsh8eZTKRCwoO_3std3sys6os_str5bytesNtB5_3Buf8as_slice", scope: !1705, file: !1702, line: 160, type: !1050, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40510 = distinct !DISubprogram(name: "index", linkageName: "_RNvXs3_NtNtCsh8eZTKRCwoO_3std3ffi6os_strNtB5_8OsStringINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexNtNtBV_5range9RangeFullE5index", scope: !1701, file: !1696, line: 662, type: !1050, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40511 = distinct !DISubprogram(name: "deref", linkageName: "_RNvXs5_NtNtCsh8eZTKRCwoO_3std3ffi6os_strNtB5_8OsStringNtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5deref", scope: !1700, file: !1696, line: 680, type: !1050, scopeLine: 680, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40512 = distinct !DISubprogram(name: "as_ref", linkageName: "_RNvXsV_NtNtCsh8eZTKRCwoO_3std3ffi6os_strNtB5_8OsStringINtNtCscgRAwXFJnXP_4core7convert5AsRefNtB5_5OsStrE6as_ref", scope: !1699, file: !1696, line: 1716, type: !1050, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40513 = distinct !DISubprogram(name: "new<std::ffi::os_str::OsString>", linkageName: "_RINvMs16_NtCsh8eZTKRCwoO_3std4pathNtB7_4Path3newNtNtNtB9_3ffi6os_str8OsStringECslpwjCj2YNBy_9polars_io", scope: !1695, file: !1692, line: 2394, type: !1050, scopeLine: 2394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40514 = distinct !DISubprogram(name: "deref", linkageName: "_RNvXsH_NtCsh8eZTKRCwoO_3std4pathNtB5_7PathBufNtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5deref", scope: !1694, file: !1692, line: 2077, type: !1050, scopeLine: 2077, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40515 = distinct !DILocation(line: 54, column: 17, scope: !40478, inlinedAt: !40351)
!40516 = distinct !DILocation(line: 2078, column: 9, scope: !40514, inlinedAt: !40515)
!40517 = distinct !DILocation(line: 2395, column: 23, scope: !40513, inlinedAt: !40516)
!40518 = distinct !DILocation(line: 1717, column: 9, scope: !40512, inlinedAt: !40517)
!40519 = distinct !DILocation(line: 681, column: 14, scope: !40511, inlinedAt: !40518)
!40520 = distinct !DILocation(line: 663, column: 38, scope: !40510, inlinedAt: !40519)
!40521 = distinct !DILocation(line: 164, column: 44, scope: !40509, inlinedAt: !40520)
!40522 = distinct !DILocation(line: 1841, column: 76, scope: !40508, inlinedAt: !40521)
!40523 = distinct !DILocation(line: 1942, column: 18, scope: !40507, inlinedAt: !40522)
!40524 = distinct !DILocation(line: 296, column: 20, scope: !40506, inlinedAt: !40523)
!40525 = distinct !DILocation(line: 609, column: 14, scope: !40505, inlinedAt: !40524)
!40526 = distinct !DILexicalBlock(scope: !40478, file: !1566, line: 114, column: 33)
!40527 = distinct !DISubprogram(name: "format", linkageName: "_RNvNtCsgZ49sUHp3tW_5alloc3fmt6format", scope: !1568, file: !1567, line: 649, type: !1050, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40528 = distinct !DILocation(line: 54, column: 43, scope: !40690, inlinedAt: !40351)
!40529 = distinct !DILocation(line: 659, column: 19, scope: !40527, inlinedAt: !40528)
!40530 = distinct !DILocation(line: 1278, column: 21, scope: !646, inlinedAt: !40529)
!40531 = distinct !DILocation(line: 54, column: 65, scope: !40478, inlinedAt: !40351)
!40532 = distinct !DILocation(line: 810, column: 1, scope: !70, inlinedAt: !40531)
!40533 = distinct !DILocation(line: 810, column: 1, scope: !69, inlinedAt: !40532)
!40534 = distinct !DILocation(line: 810, column: 1, scope: !68, inlinedAt: !40533)
!40535 = distinct !DILocation(line: 810, column: 1, scope: !17, inlinedAt: !40534)
!40536 = distinct !DILocation(line: 810, column: 1, scope: !17, inlinedAt: !40534)
!40537 = distinct !DILocation(line: 55, column: 13, scope: !40477, inlinedAt: !40351)
!40538 = distinct !DILocation(line: 810, column: 1, scope: !18, inlinedAt: !40537)
!40539 = distinct !DILocation(line: 810, column: 1, scope: !17, inlinedAt: !40538)
!40540 = distinct !DILocation(line: 810, column: 1, scope: !17, inlinedAt: !40538)
!40541 = distinct !DILexicalBlock(scope: !40369, file: !1377, line: 70, column: 9)
!40542 = distinct !DILocation(line: 77, column: 5, scope: !40369, inlinedAt: !40351)
!40543 = distinct !DISubprogram(name: "as_ref<alloc::string::String, std::env::VarError>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorE6as_refCslpwjCj2YNBy_9polars_io", scope: !1099, file: !1097, line: 768, type: !1050, scopeLine: 768, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40544 = distinct !DISubprogram(name: "as_deref<alloc::string::String, std::env::VarError>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorE8as_derefCslpwjCj2YNBy_9polars_io", scope: !1099, file: !1097, line: 1046, type: !1050, scopeLine: 1046, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40545 = distinct !DILocation(line: 72, column: 61, scope: !40541, inlinedAt: !40351)
!40546 = distinct !DILocation(line: 1050, column: 14, scope: !40544, inlinedAt: !40545)
!40547 = distinct !DISubprogram(name: "as_str", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String6as_str", scope: !1177, file: !1123, line: 1052, type: !1050, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40548 = distinct !DISubprogram(name: "deref", linkageName: "_RNvXsx_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5deref", scope: !1827, file: !1123, line: 2822, type: !1050, scopeLine: 2822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40549 = distinct !DISubprogram(name: "call_once<fn(&alloc::string::String) -> &str, (&alloc::string::String)>", linkageName: "_RNvYNvYNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefINtNtBL_8function6FnOnceTRB5_EE9call_onceCslpwjCj2YNBy_9polars_io", scope: !1263, file: !1157, line: 250, type: !1050, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40550 = distinct !DISubprogram(name: "map<&alloc::string::String, &std::env::VarError, &str, fn(&alloc::string::String) -> &str>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultRNtNtCsgZ49sUHp3tW_5alloc6string6StringRNtNtCsh8eZTKRCwoO_3std3env8VarErrorE3mapReNvYBJ_NtNtNtB5_3ops5deref5Deref5derefECslpwjCj2YNBy_9polars_io", scope: !1099, file: !1097, line: 831, type: !1050, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40551 = distinct !DILexicalBlock(scope: !40550, file: !1097, line: 836, column: 13)
!40552 = distinct !DILocation(line: 1050, column: 23, scope: !40544, inlinedAt: !40545)
!40553 = distinct !DILocation(line: 836, column: 25, scope: !40696, inlinedAt: !40552)
!40554 = distinct !DILocation(line: 250, column: 5, scope: !40695, inlinedAt: !40553)
!40555 = distinct !DILocation(line: 2823, column: 14, scope: !40548, inlinedAt: !40554)
!40556 = distinct !DILocation(line: 1055, column: 52, scope: !40547, inlinedAt: !40555)
!40557 = distinct !DILocation(line: 1841, column: 76, scope: !40694, inlinedAt: !40556)
!40558 = distinct !DILocation(line: 1942, column: 18, scope: !40693, inlinedAt: !40557)
!40559 = distinct !DILocation(line: 296, column: 20, scope: !40692, inlinedAt: !40558)
!40560 = distinct !DILocation(line: 609, column: 14, scope: !40691, inlinedAt: !40559)
!40561 = distinct !{!40561, i1 true, !"_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq"}
!40562 = distinct !{!40562, !40561, !"_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 0"}
!40563 = distinct !DISubprogram(name: "equal_same_length<u8, u8>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core5slice3cmphINtB5_14SlicePartialEqhE17equal_same_lengthCslpwjCj2YNBy_9polars_io", scope: !1221, file: !1217, line: 152, type: !1050, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40564 = distinct !DILexicalBlock(scope: !40563, file: !1217, line: 157, column: 13)
!40565 = distinct !DISubprogram(name: "eq<u8, u8>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice3cmpShNtNtB6_3cmp9PartialEq2eqCslpwjCj2YNBy_9polars_io", scope: !1219, file: !1217, line: 20, type: !1050, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40566 = distinct !DILexicalBlock(scope: !40565, file: !1217, line: 21, column: 9)
!40567 = distinct !DISubprogram(name: "eq<[u8], [u8]>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCslpwjCj2YNBy_9polars_io", scope: !1220, file: !1106, line: 2123, type: !1050, scopeLine: 2123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40568 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq", scope: !1565, file: !1063, line: 29, type: !1161, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40569 = distinct !DISubprogram(name: "eq<str, str>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCslpwjCj2YNBy_9polars_io", scope: !1220, file: !1106, line: 2123, type: !1161, scopeLine: 2123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40570 = distinct !DISubprogram(name: "eq<&str, &str>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRReNtB7_9PartialEq2eqCslpwjCj2YNBy_9polars_io", scope: !1220, file: !1106, line: 2123, type: !1050, scopeLine: 2123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40571 = distinct !DISubprogram(name: "eq<&str, &std::env::VarError>", linkageName: "_RNvXsw_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultReRNtNtCsh8eZTKRCwoO_3std3env8VarErrorENtNtB7_3cmp9PartialEq2eqCslpwjCj2YNBy_9polars_io", scope: !40698, file: !1097, line: 553, type: !1161, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40572 = distinct !DILexicalBlock(scope: !40571, file: !1097, line: 553, column: 16)
!40573 = distinct !DILexicalBlock(scope: !40572, file: !1097, line: 553, column: 16)
!40574 = distinct !DILexicalBlock(scope: !40573, file: !1097, line: 553, column: 16)
!40575 = distinct !DISubprogram(name: "ne<core::result::Result<&str, &std::env::VarError>, core::result::Result<&str, &std::env::VarError>>", linkageName: "_RNvYINtNtCscgRAwXFJnXP_4core6result6ResultReRNtNtCsh8eZTKRCwoO_3std3env8VarErrorENtNtB7_3cmp9PartialEq2neCslpwjCj2YNBy_9polars_io", scope: !1613, file: !1106, line: 264, type: !1050, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40576 = distinct !DILocation(line: 72, column: 12, scope: !40541, inlinedAt: !40351)
!40577 = distinct !DILocation(line: 265, column: 15, scope: !40575, inlinedAt: !40576)
!40578 = distinct !DILocation(line: 561, column: 54, scope: !40574, inlinedAt: !40577)
!40579 = distinct !DILocation(line: 2124, column: 13, scope: !40570, inlinedAt: !40578)
!40580 = distinct !DILocation(line: 2124, column: 13, scope: !40569, inlinedAt: !40579)
!40581 = distinct !DILocation(line: 30, column: 9, scope: !40568, inlinedAt: !40580)
!40582 = distinct !DILocation(line: 2124, column: 13, scope: !40567, inlinedAt: !40581)
!40583 = distinct !DILocation(line: 25, column: 22, scope: !40566, inlinedAt: !40582)
!40584 = distinct !DILocation(line: 77, column: 5, scope: !40369, inlinedAt: !40351)
!40585 = distinct !DISubprogram(name: "branch<(), std::io::error::Error>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCslpwjCj2YNBy_9polars_io", scope: !1199, file: !1097, line: 2172, type: !1050, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40586 = distinct !DILocation(line: 73, column: 13, scope: !40541, inlinedAt: !40351)
!40587 = distinct !DISubprogram(name: "drop<std::path::Path, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtCsh8eZTKRCwoO_3std4path4PathENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io", scope: !1248, file: !1246, line: 1913, type: !1161, scopeLine: 1913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40588 = distinct !DILexicalBlock(scope: !40587, file: !1246, line: 1916, column: 9)
!40589 = distinct !DILexicalBlock(scope: !40588, file: !1246, line: 1919, column: 13)
!40590 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<std::path::Path, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCsh8eZTKRCwoO_3std4path4PathEECslpwjCj2YNBy_9polars_io", scope: !1070, file: !1100, line: 810, type: !1161, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40591 = distinct !DILocation(line: 77, column: 5, scope: !40354, inlinedAt: !40351)
!40592 = distinct !DILocation(line: 810, column: 1, scope: !40590, inlinedAt: !40591)
!40593 = distinct !DILocation(line: 1921, column: 24, scope: !40589, inlinedAt: !40592)
!40594 = distinct !DILocation(line: 462, column: 23, scope: !97, inlinedAt: !40593)
!40595 = distinct !DILocation(line: 344, column: 9, scope: !96, inlinedAt: !40594)
!40596 = distinct !DILocation(line: 229, column: 22, scope: !95, inlinedAt: !40595)
!40597 = distinct !DILocation(line: 77, column: 5, scope: !40354, inlinedAt: !40351)
!40598 = distinct !DILocation(line: 810, column: 1, scope: !40590, inlinedAt: !40597)
!40599 = distinct !DILocation(line: 1921, column: 24, scope: !40589, inlinedAt: !40598)
!40600 = distinct !DILocation(line: 462, column: 23, scope: !97, inlinedAt: !40599)
!40601 = distinct !DILocation(line: 344, column: 9, scope: !96, inlinedAt: !40600)
!40602 = distinct !DILocation(line: 229, column: 22, scope: !95, inlinedAt: !40601)
!40603 = distinct !DILexicalBlock(scope: !40479, file: !1119, line: 442, column: 13)
!40604 = distinct !DISubprogram(name: "needs_to_grow<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner13needs_to_growCslpwjCj2YNBy_9polars_io", scope: !1122, file: !1119, line: 766, type: !1050, scopeLine: 766, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40605 = distinct !DILexicalBlock(scope: !40479, file: !1119, line: 435, column: 13)
!40606 = distinct !DILocation(line: 438, column: 50, scope: !40605, inlinedAt: !40503)
!40607 = distinct !DISubprogram(name: "assert_unchecked", linkageName: "_RNvNtCscgRAwXFJnXP_4core4hint16assert_unchecked", scope: !1144, file: !1143, line: 202, type: !1050, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40608 = distinct !DILocation(line: 438, column: 21, scope: !40605, inlinedAt: !40503)
!40609 = distinct !DISubprogram(name: "copy_nonoverlapping<u8>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappinghECslpwjCj2YNBy_9polars_io", scope: !1070, file: !1100, line: 531, type: !1050, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40610 = distinct !DISubprogram(name: "copy_to_nonoverlapping<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPh22copy_to_nonoverlappingCslpwjCj2YNBy_9polars_io", scope: !1072, file: !1069, line: 1247, type: !1050, scopeLine: 1247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40611 = distinct !DILexicalBlock(scope: !40483, file: !1131, line: 448, column: 17)
!40612 = distinct !DILocation(line: 454, column: 36, scope: !40611, inlinedAt: !40500)
!40613 = distinct !DILocation(line: 1252, column: 18, scope: !40610, inlinedAt: !40612)
!40614 = distinct !DISubprogram(name: "from", linkageName: "_RNvXsf_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtB7_3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtB9_6string6StringE4from", scope: !1716, file: !1714, line: 577, type: !1050, scopeLine: 577, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40615 = distinct !DILocation(line: 639, column: 9, scope: !40489, inlinedAt: !40494)
!40616 = distinct !{!40616, i1 true, !"_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtB18_6marker4SendNtB1F_4SyncEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCslpwjCj2YNBy_9polars_io"}
!40617 = distinct !{!40617, !40616, !"_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtB18_6marker4SendNtB1F_4SyncEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCslpwjCj2YNBy_9polars_io: argument 0"}
!40618 = distinct !DILocation(line: 595, column: 9, scope: !40614, inlinedAt: !40615)
!40619 = distinct !DILocation(line: 286, column: 19, scope: !782, inlinedAt: !40618)
!40620 = distinct !DILocation(line: 248, column: 18, scope: !602, inlinedAt: !40619)
!40621 = distinct !DILocation(line: 449, column: 14, scope: !601, inlinedAt: !40620)
!40622 = distinct !DILocation(line: 332, column: 9, scope: !600, inlinedAt: !40621)
!40623 = distinct !DILocation(line: 210, column: 73, scope: !599, inlinedAt: !40622)
!40624 = distinct !DISubprogram(name: "data", linkageName: "_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std2io5error14repr_bitpackedNtB5_4Repr4data", scope: !1336, file: !1324, line: 208, type: !1050, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40625 = distinct !DISubprogram(name: "kind", linkageName: "_RNvMs5_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5Error4kind", scope: !1338, file: !1337, line: 1005, type: !1161, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40626 = distinct !DISubprogram(name: "{closure#1}", linkageName: "_RNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH0s_0B7_", scope: !40653, file: !1377, line: 78, type: !1050, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40627 = distinct !DISubprogram(name: "map_err<alloc::boxed::Box<std::path::Path, alloc::alloc::Global>, std::io::error::Error, std::io::error::Error, polars_io::path_utils::POLARS_TEMP_DIR_BASE_PATH::{closure#0}::{closure_env#1}>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCsh8eZTKRCwoO_3std4path4PathENtNtNtB1l_2io5error5ErrorE7map_errB1O_NCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils25POLARS_TEMP_DIR_BASE_PATH0s_0EB2y_", scope: !1099, file: !1097, line: 962, type: !1050, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40628 = distinct !DILexicalBlock(scope: !40627, file: !1097, line: 968, column: 13)
!40629 = distinct !DILocation(line: 78, column: 6, scope: !40349, inlinedAt: !40350)
!40630 = distinct !DILocation(line: 968, column: 27, scope: !40628, inlinedAt: !40629)
!40631 = distinct !DILocation(line: 80, column: 15, scope: !40626, inlinedAt: !40630)
!40632 = distinct !DILocation(line: 1006, column: 25, scope: !40625, inlinedAt: !40631)
!40633 = distinct !DILocation(line: 210, column: 18, scope: !40624, inlinedAt: !40632)
!40634 = distinct !DISubprogram(name: "decode_error_kind", linkageName: "_RNvNtNtNtNtCsh8eZTKRCwoO_3std3sys2io5error4unix17decode_error_kind", scope: !1348, file: !1345, line: 101, type: !1050, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40635 = distinct !DILexicalBlock(scope: !40625, file: !1337, line: 1007, column: 13)
!40636 = distinct !DILocation(line: 1007, column: 36, scope: !40635, inlinedAt: !40631)
!40637 = distinct !DISubprogram(name: "kind_from_prim", linkageName: "_RNvNtNtNtCsh8eZTKRCwoO_3std2io5error14repr_bitpacked14kind_from_prim", scope: !1327, file: !1324, line: 290, type: !1050, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40638 = distinct !DILocation(line: 256, column: 24, scope: !397, inlinedAt: !40633)
!40639 = distinct !DILocation(line: 256, column: 50, scope: !397, inlinedAt: !40633)
!40640 = distinct !DILexicalBlock(scope: !40625, file: !1337, line: 1010, column: 13)
!40641 = distinct !DILexicalBlock(scope: !40625, file: !1337, line: 1008, column: 13)
!40642 = distinct !DILexicalBlock(scope: !40626, file: !1566, line: 114, column: 33)
!40643 = distinct !DISubprogram(name: "format", linkageName: "_RNvNtCsgZ49sUHp3tW_5alloc3fmt6format", scope: !1568, file: !1567, line: 649, type: !1050, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40644 = distinct !DILocation(line: 81, column: 13, scope: !40702, inlinedAt: !40630)
!40645 = distinct !DILocation(line: 659, column: 19, scope: !40643, inlinedAt: !40644)
!40646 = distinct !DILocation(line: 1278, column: 21, scope: !646, inlinedAt: !40645)
!40647 = distinct !{!40647, i1 true, !"_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCsh8eZTKRCwoO_3std4path4PathENtNtNtB1k_2io5error5ErrorE6unwrapCslpwjCj2YNBy_9polars_io"}
!40648 = distinct !{!40648, !40647, !"_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCsh8eZTKRCwoO_3std4path4PathENtNtNtB1k_2io5error5ErrorE6unwrapCslpwjCj2YNBy_9polars_io: argument 0"}
!40649 = distinct !DISubprogram(name: "unwrap<alloc::boxed::Box<std::path::Path, alloc::alloc::Global>, std::io::error::Error>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtCsh8eZTKRCwoO_3std4path4PathENtNtNtB1k_2io5error5ErrorE6unwrapCslpwjCj2YNBy_9polars_io", scope: !1099, file: !1097, line: 1227, type: !1050, scopeLine: 1227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40650 = distinct !DILocation(line: 87, column: 6, scope: !40349, inlinedAt: !40350)
!40651 = distinct !DILexicalBlock(scope: !40649, file: !1097, line: 1233, column: 13)
!40652 = !DINamespace(name: "POLARS_TEMP_DIR_BASE_PATH", scope: !1379)
!40653 = !DINamespace(name: "{closure#0}", scope: !40652)
!40654 = !{!40353}
!40655 = !DINamespace(name: "PathBuf", scope: !1693)
!40656 = !DIFile(filename: "library/core/src/ptr/unique.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "094e5ab9402856f04247d6886ffde03b")
!40657 = !DINamespace(name: "unique", scope: !1070)
!40658 = !DINamespace(name: "Unique", scope: !40657)
!40659 = !DINamespace(name: "{impl#9}", scope: !1247)
!40660 = !DINamespace(name: "{impl#8}", scope: !1247)
!40661 = !{!40371}
!40662 = !{!40372}
!40663 = !{!40371, !40372, !40353}
!40664 = !DINamespace(name: "{closure#0}", scope: !40653)
!40665 = !{!40371, !40372}
!40666 = !{!40371, !40353}
!40667 = !{!40382}
!40668 = !{!40383}
!40669 = !{!40382, !40383, !40353}
!40670 = !{!40382, !40353}
!40671 = !{!40387}
!40672 = !{!40388}
!40673 = !{!40387, !40388, !40382, !40383, !40353}
!40674 = !DINamespace(name: "{closure#1}", scope: !40664)
!40675 = !{!40387, !40382, !40383, !40353}
!40676 = !{!40387, !40388}
!40677 = !{!40383, !40353}
!40678 = !{!40398}
!40679 = !{!40399, !40398, !40382, !40383, !40353}
!40680 = !{!40399, !40382, !40383, !40353}
!40681 = !DIFile(filename: "src/array_string.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/arrayvec-0.7.6", checksumkind: CSK_MD5, checksum: "6a3be93a2585b63d1e49371472c379e3")
!40682 = !DINamespace(name: "arrayvec", scope: null)
!40683 = !DINamespace(name: "array_string", scope: !40682)
!40684 = !DINamespace(name: "ArrayString", scope: !40683)
!40685 = !DINamespace(name: "{impl#2}", scope: !40683)
!40686 = !DINamespace(name: "{impl#10}", scope: !1064)
!40687 = !{!40469, !40383}
!40688 = !DINamespace(name: "{impl#19}", scope: !1715)
!40689 = !DILexicalBlockFile(scope: !40526, file: !1377, discriminator: 0)
!40690 = !DILexicalBlockFile(scope: !40478, file: !1377, discriminator: 4)
!40691 = !DILexicalBlockFile(scope: !40505, file: !1119, discriminator: 8)
!40692 = !DILexicalBlockFile(scope: !40506, file: !1119, discriminator: 8)
!40693 = !DILexicalBlockFile(scope: !40507, file: !1137, discriminator: 6)
!40694 = !DILexicalBlockFile(scope: !40508, file: !1137, discriminator: 6)
!40695 = !DILexicalBlockFile(scope: !40549, file: !1157, discriminator: 2)
!40696 = !DILexicalBlockFile(scope: !40551, file: !1097, discriminator: 2)
!40697 = !{!40562}
!40698 = !DINamespace(name: "{impl#34}", scope: !1098)
!40699 = !{!40617, !40353}
!40700 = !DILexicalBlockFile(scope: !40354, file: !1058, discriminator: 0)
!40701 = !DILexicalBlockFile(scope: !40642, file: !1377, discriminator: 0)
!40702 = !DILexicalBlockFile(scope: !40626, file: !1377, discriminator: 4)
!40703 = !{!40648}
!40704 = !DILocation(line: 20, column: 23, scope: !40348, inlinedAt: !40351)
!40705 = !DILocation(line: 22, column: 35, scope: !40355, inlinedAt: !40351)
!40706 = !DILocation(line: 835, column: 15, scope: !40356, inlinedAt: !40357)
!40707 = !DILocation(line: 835, column: 9, scope: !40356, inlinedAt: !40357)
!40708 = !DILocation(line: 0, scope: !40356, inlinedAt: !40357)
!40709 = !DILocation(line: 22, column: 85, scope: !40355, inlinedAt: !40351)
!40710 = !DILocation(line: 22, column: 30, scope: !40355, inlinedAt: !40351)
!40711 = !DILocation(line: 23, column: 16, scope: !40355, inlinedAt: !40351)
!40712 = !DILocation(line: 26, column: 13, scope: !40355, inlinedAt: !40351)
!40713 = !DILocation(line: 27, column: 9, scope: !40354, inlinedAt: !40351)
!40714 = !DILocation(line: 24, column: 17, scope: !40355, inlinedAt: !40351)
!40715 = !DILocation(line: 22, column: 20, scope: !40354, inlinedAt: !40351)
!40716 = !DILocation(line: 1804, column: 43, scope: !40358, inlinedAt: !40359)
!40717 = !DILocation(line: 241, column: 13, scope: !40360, inlinedAt: !40368)
!40718 = !DILocation(line: 70, column: 13, scope: !40369, inlinedAt: !40351)
!40719 = !DILocation(line: 70, column: 27, scope: !40369, inlinedAt: !40351)
!40720 = !DILocation(line: 77, column: 5, scope: !40354, inlinedAt: !40351)
!40721 = !DILocation(line: 19, column: 5, scope: !40348, inlinedAt: !40351)
!40722 = !DILocation(line: 0, scope: !40349, inlinedAt: !40350)
!40723 = !DILocation(line: 28, column: 17, scope: !40354, inlinedAt: !40351)
!40724 = !DILocation(line: 28, column: 22, scope: !40354, inlinedAt: !40351)
!40725 = !DILocation(line: 29, column: 18, scope: !40354, inlinedAt: !40351)
!40726 = !DILocation(line: 992, column: 28, scope: !40374, inlinedAt: !40375)
!40727 = !DILocation(line: 992, column: 16, scope: !40374, inlinedAt: !40375)
!40728 = !DILocation(line: 31, column: 25, scope: !40376, inlinedAt: !40377)
!40729 = !DILocation(line: 996, column: 9, scope: !40373, inlinedAt: !40375)
!40730 = !DILocation(line: 33, column: 18, scope: !40354, inlinedAt: !40351)
!40731 = !DILocation(line: 1563, column: 9, scope: !40378, inlinedAt: !40379)
!40732 = !DILocation(line: 997, column: 5, scope: !40373, inlinedAt: !40375)
!40733 = !DILocation(line: 988, column: 5, scope: !40373, inlinedAt: !40375)
!40734 = !DILocation(line: 1565, column: 23, scope: !40380, inlinedAt: !40379)
!40735 = !DILocation(line: 1565, column: 17, scope: !40378, inlinedAt: !40379)
!40736 = !DILocation(line: 39, column: 25, scope: !40384, inlinedAt: !40385)
!40737 = !DILocation(line: 51, column: 17, scope: !40384, inlinedAt: !40385)
!40738 = !DILocation(line: 40, column: 30, scope: !40384, inlinedAt: !40385)
!40739 = !DILocation(line: 992, column: 28, scope: !40390, inlinedAt: !40391)
!40740 = !DILocation(line: 992, column: 16, scope: !40390, inlinedAt: !40391)
!40741 = !DILocation(line: 42, column: 37, scope: !40392, inlinedAt: !40393)
!40742 = !DILocation(line: 997, column: 5, scope: !40389, inlinedAt: !40391)
!40743 = !DILocation(line: 988, column: 5, scope: !40389, inlinedAt: !40391)
!40744 = !DILocation(line: 996, column: 9, scope: !40389, inlinedAt: !40391)
!40745 = !DILocation(line: 44, column: 30, scope: !40384, inlinedAt: !40385)
!40746 = !DILocation(line: 835, column: 15, scope: !40394, inlinedAt: !40395)
!40747 = !DILocation(line: 835, column: 9, scope: !40394, inlinedAt: !40395)
!40748 = !DILocation(line: 836, column: 16, scope: !40394, inlinedAt: !40395)
!40749 = !DILocation(line: 836, column: 25, scope: !40396, inlinedAt: !40395)
!40750 = !DILocation(line: 45, column: 38, scope: !40400, inlinedAt: !40401)
!40751 = !DILocation(line: 614, column: 9, scope: !40402, inlinedAt: !40413)
!40752 = !DILocation(line: 1841, column: 86, scope: !40406, inlinedAt: !40409)
!40753 = !DILocation(line: 45, column: 90, scope: !40400, inlinedAt: !40401)
!40754 = !DILocation(line: 45, column: 65, scope: !40400, inlinedAt: !40401)
!40755 = !DILocation(line: 422, column: 9, scope: !40414, inlinedAt: !40417)
!40756 = !DILocation(line: 88, column: 40, scope: !40418, inlinedAt: !40419)
!40757 = !DILocation(line: 382, column: 12, scope: !40420, inlinedAt: !40428)
!40758 = !DILocation(line: 470, column: 9, scope: !40423, inlinedAt: !40426)
!40759 = !DILocation(line: 434, column: 15, scope: !40429, inlinedAt: !40452)
!40760 = !DILocation(line: 472, column: 21, scope: !40423, inlinedAt: !40426)
!40761 = !DILocation(line: 434, column: 9, scope: !40429, inlinedAt: !40452)
!40762 = !DILocation(line: 0, scope: !40429, inlinedAt: !40452)
!40763 = !DILocation(line: 442, column: 17, scope: !40429, inlinedAt: !40452)
!40764 = !DILocation(line: 442, column: 25, scope: !40453, inlinedAt: !40452)
!40765 = !DILocation(line: 435, column: 16, scope: !40429, inlinedAt: !40452)
!40766 = !DILocation(line: 767, column: 9, scope: !40454, inlinedAt: !40456)
!40767 = !DILocation(line: 210, column: 9, scope: !40457, inlinedAt: !40458)
!40768 = !DILocation(line: 443, column: 9, scope: !40429, inlinedAt: !40452)
!40769 = !DILocation(line: 552, column: 14, scope: !40459, inlinedAt: !40463)
!40770 = !DILocation(line: 810, column: 1, scope: !17, inlinedAt: !40465)
!40771 = !DILocation(line: 810, column: 1, scope: !19, inlinedAt: !40466)
!40772 = !DILocation(line: 810, column: 1, scope: !19, inlinedAt: !40467)
!40773 = !DILocation(line: 45, column: 34, scope: !40400, inlinedAt: !40401)
!40774 = !DILocation(line: 836, column: 29, scope: !40396, inlinedAt: !40395)
!40775 = !DILocation(line: 836, column: 22, scope: !40396, inlinedAt: !40395)
!40776 = !DILocation(line: 836, column: 30, scope: !40394, inlinedAt: !40395)
!40777 = !DILocation(line: 810, column: 1, scope: !98, inlinedAt: !40470)
!40778 = !DILocation(line: 810, column: 1, scope: !17, inlinedAt: !40473)
!40779 = !DILocation(line: 810, column: 1, scope: !19, inlinedAt: !40474)
!40780 = !DILocation(line: 810, column: 1, scope: !19, inlinedAt: !40475)
!40781 = !DILocation(line: 34, column: 26, scope: !40384, inlinedAt: !40385)
!40782 = !DILocation(line: 1564, column: 22, scope: !40476, inlinedAt: !40379)
!40783 = !DILocation(line: 53, column: 20, scope: !40478, inlinedAt: !40351)
!40784 = !DILocation(line: 1565, column: 27, scope: !40380, inlinedAt: !40379)
!40785 = !DILocation(line: 53, column: 28, scope: !40478, inlinedAt: !40351)
!40786 = !DILocation(line: 434, column: 15, scope: !40479, inlinedAt: !40503)
!40787 = !DILocation(line: 53, column: 23, scope: !40478, inlinedAt: !40351)
!40788 = !DILocation(line: 54, column: 17, scope: !40478, inlinedAt: !40351)
!40789 = !DILocation(line: 55, column: 13, scope: !40477, inlinedAt: !40351)
!40790 = !DILocation(line: 614, column: 9, scope: !40504, inlinedAt: !40525)
!40791 = !DILocation(line: 1841, column: 86, scope: !40508, inlinedAt: !40521)
!40792 = !DILocation(line: 54, column: 43, scope: !40689, inlinedAt: !40351)
!40793 = !DILocation(line: 659, column: 34, scope: !645, inlinedAt: !40530)
!40794 = !DILocation(line: 54, column: 65, scope: !40478, inlinedAt: !40351)
!40795 = !DILocation(line: 54, column: 43, scope: !40478, inlinedAt: !40351)
!40796 = !DILocation(line: 54, column: 38, scope: !40478, inlinedAt: !40351)
!40797 = !DILocation(line: 810, column: 1, scope: !17, inlinedAt: !40534)
!40798 = !DILocation(line: 810, column: 1, scope: !19, inlinedAt: !40535)
!40799 = !DILocation(line: 810, column: 1, scope: !19, inlinedAt: !40536)
!40800 = !DILocation(line: 810, column: 1, scope: !17, inlinedAt: !40538)
!40801 = !DILocation(line: 810, column: 1, scope: !19, inlinedAt: !40539)
!40802 = !DILocation(line: 810, column: 1, scope: !19, inlinedAt: !40540)
!40803 = !DILocation(line: 60, column: 9, scope: !40354, inlinedAt: !40351)
!40804 = !DILocation(line: 27, column: 16, scope: !40354, inlinedAt: !40351)
!40805 = !DILocation(line: 72, column: 12, scope: !40541, inlinedAt: !40351)
!40806 = !DILocation(line: 810, column: 1, scope: !191, inlinedAt: !40542)
!40807 = !DILocation(line: 769, column: 15, scope: !40543, inlinedAt: !40546)
!40808 = !DILocation(line: 769, column: 9, scope: !40543, inlinedAt: !40546)
!40809 = !DILocation(line: 614, column: 9, scope: !40504, inlinedAt: !40560)
!40810 = !DILocation(line: 158, column: 13, scope: !40564, inlinedAt: !40583)
!40811 = !DILocation(line: 72, column: 81, scope: !40541, inlinedAt: !40351)
!40812 = !DILocation(line: 810, column: 1, scope: !191, inlinedAt: !40584)
!40813 = !DILocation(line: 2173, column: 15, scope: !40585, inlinedAt: !40586)
!40814 = !DILocation(line: 2173, column: 9, scope: !40585, inlinedAt: !40586)
!40815 = !DILocation(line: 77, column: 5, scope: !40369, inlinedAt: !40351)
!40816 = !DILocation(line: 1920, column: 16, scope: !40589, inlinedAt: !40592)
!40817 = !DILocation(line: 128, column: 14, scope: !94, inlinedAt: !40596)
!40818 = !DILocation(line: 1920, column: 13, scope: !40589, inlinedAt: !40592)
!40819 = !DILocation(line: 1920, column: 16, scope: !40589, inlinedAt: !40598)
!40820 = !DILocation(line: 128, column: 14, scope: !94, inlinedAt: !40602)
!40821 = !DILocation(line: 1920, column: 13, scope: !40589, inlinedAt: !40598)
!40822 = !DILocation(line: 434, column: 9, scope: !40479, inlinedAt: !40503)
!40823 = !DILocation(line: 0, scope: !40479, inlinedAt: !40503)
!40824 = !DILocation(line: 442, column: 17, scope: !40479, inlinedAt: !40503)
!40825 = !DILocation(line: 442, column: 25, scope: !40603, inlinedAt: !40503)
!40826 = !DILocation(line: 435, column: 16, scope: !40479, inlinedAt: !40503)
!40827 = !DILocation(line: 767, column: 9, scope: !40604, inlinedAt: !40606)
!40828 = !DILocation(line: 210, column: 9, scope: !40607, inlinedAt: !40608)
!40829 = !DILocation(line: 443, column: 9, scope: !40479, inlinedAt: !40503)
!40830 = !DILocation(line: 552, column: 14, scope: !40609, inlinedAt: !40613)
!40831 = !DILocation(line: 595, column: 18, scope: !40614, inlinedAt: !40615)
!40832 = !DILocation(line: 99, column: 9, scope: !597, inlinedAt: !40623)
!40833 = !DILocation(line: 101, column: 9, scope: !597, inlinedAt: !40623)
!40834 = !DILocation(line: 248, column: 11, scope: !602, inlinedAt: !40619)
!40835 = !DILocation(line: 248, column: 5, scope: !602, inlinedAt: !40619)
!40836 = !DILocation(line: 250, column: 19, scope: !602, inlinedAt: !40619)
!40837 = !DILocation(line: 292, column: 5, scope: !782, inlinedAt: !40618)
!40838 = !DILocation(line: 284, column: 5, scope: !782, inlinedAt: !40618)
!40839 = !DILocation(line: 289, column: 56, scope: !783, inlinedAt: !40618)
!40840 = !DILocation(line: 595, column: 34, scope: !40614, inlinedAt: !40615)
!40841 = !DILocation(line: 607, column: 9, scope: !40491, inlinedAt: !40492)
!40842 = !DILocation(line: 0, scope: !40700, inlinedAt: !40351)
!40843 = !DILocation(line: 0, scope: !40354, inlinedAt: !40351)
!40844 = !DILocation(line: 77, column: 7, scope: !40348, inlinedAt: !40351)
!40845 = !DILocation(line: 249, column: 11, scope: !381, inlinedAt: !40633)
!40846 = !DILocation(line: 249, column: 5, scope: !381, inlinedAt: !40633)
!40847 = !DILocation(line: 251, column: 24, scope: !381, inlinedAt: !40633)
!40848 = !DILocation(line: 103, column: 5, scope: !40634, inlinedAt: !40636)
!40849 = !DILocation(line: 255, column: 29, scope: !381, inlinedAt: !40633)
!40850 = !DILocation(line: 298, column: 24, scope: !40637, inlinedAt: !40638)
!40851 = !DILocation(line: 1065, column: 15, scope: !396, inlinedAt: !40639)
!40852 = !DILocation(line: 1065, column: 9, scope: !396, inlinedAt: !40639)
!40853 = !DILocation(line: 1009, column: 43, scope: !40625, inlinedAt: !40631)
!40854 = !DILocation(line: 1010, column: 44, scope: !40640, inlinedAt: !40631)
!40855 = !DILocation(line: 1010, column: 49, scope: !40625, inlinedAt: !40631)
!40856 = !DILocation(line: 1008, column: 37, scope: !40641, inlinedAt: !40631)
!40857 = !DILocation(line: 1008, column: 42, scope: !40625, inlinedAt: !40631)
!40858 = !DILocation(line: 86, column: 5, scope: !40626, inlinedAt: !40630)
!40859 = !DILocation(line: 0, scope: !40625, inlinedAt: !40631)
!40860 = !DILocation(line: 81, column: 13, scope: !40701, inlinedAt: !40630)
!40861 = !DILocation(line: 659, column: 34, scope: !645, inlinedAt: !40646)
!40862 = !DILocation(line: 81, column: 13, scope: !40626, inlinedAt: !40630)
!40863 = !DILocation(line: 79, column: 9, scope: !40626, inlinedAt: !40630)
!40864 = !DILocation(line: 78, column: 14, scope: !40626, inlinedAt: !40630)
!40865 = !DILocation(line: 86, column: 6, scope: !40626, inlinedAt: !40630)
!40866 = !DILocation(line: 1233, column: 17, scope: !40649, inlinedAt: !40650)
!40867 = !DILocation(line: 1233, column: 23, scope: !40651, inlinedAt: !40650)
!40868 = !DILocation(line: 1233, column: 86, scope: !40649, inlinedAt: !40650)
!40869 = !DILocation(line: 1227, column: 5, scope: !40649, inlinedAt: !40650)
!40870 = !DILocation(line: 250, column: 5, scope: !40347)
!40871 = distinct !DISubprogram(name: "cause<object_store::path::Error>", linkageName: "_RNvYNtNtCs8RKTHBS4OBx_12object_store4path5ErrorNtNtCscgRAwXFJnXP_4core5error5Error5causeCslpwjCj2YNBy_9polars_io", scope: !1870, file: !1868, line: 147, type: !1050, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40872 = distinct !{!40872, i1 true, !"_RNvXs8_NtCs8RKTHBS4OBx_12object_store4pathNtB5_5ErrorNtNtCscgRAwXFJnXP_4core5error5Error6source"}
!40873 = distinct !{!40873, !40872, !"_RNvXs8_NtCs8RKTHBS4OBx_12object_store4pathNtB5_5ErrorNtNtCscgRAwXFJnXP_4core5error5Error6source: argument 0"}
!40874 = distinct !DISubprogram(name: "source", linkageName: "_RNvXs8_NtCs8RKTHBS4OBx_12object_store4pathNtB5_5ErrorNtNtCscgRAwXFJnXP_4core5error5Error6source", scope: !40878, file: !1046, line: 39, type: !1050, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40875 = distinct !DILexicalBlock(scope: !40874, file: !1046, line: 39, column: 17)
!40876 = distinct !DILocation(line: 148, column: 14, scope: !40871)
!40877 = !{!40873}
!40878 = !DINamespace(name: "{impl#10}", scope: !1048)
!40879 = !DILocation(line: 39, column: 17, scope: !40875, inlinedAt: !40876)
!40880 = !DILocation(line: 41, column: 14, scope: !40875, inlinedAt: !40876)
!40881 = !DILocation(line: 39, column: 33, scope: !40874, inlinedAt: !40876)
!40882 = !DILocation(line: 149, column: 6, scope: !40871)
!40883 = distinct !{null}
!40884 = distinct !DILocation(line: 241, column: 14, scope: !445)
!40885 = !DILocation(line: 236, column: 21, scope: !444, inlinedAt: !40884)
!40886 = !DILocation(line: 242, column: 6, scope: !445)
!40887 = distinct !DISubprogram(name: "description<object_store::path::parts::InvalidPart>", linkageName: "_RNvYNtNtNtCs8RKTHBS4OBx_12object_store4path5parts11InvalidPartNtNtCscgRAwXFJnXP_4core5error5Error11descriptionCslpwjCj2YNBy_9polars_io", scope: !1870, file: !1868, line: 137, type: !1050, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40888 = !DILocation(line: 139, column: 6, scope: !40887)
!40889 = distinct !DISubprogram(name: "source<object_store::path::parts::InvalidPart>", linkageName: "_RNvYNtNtNtCs8RKTHBS4OBx_12object_store4path5parts11InvalidPartNtNtCscgRAwXFJnXP_4core5error5Error6sourceCslpwjCj2YNBy_9polars_io", scope: !1870, file: !1868, line: 111, type: !1050, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40890 = !DILocation(line: 113, column: 6, scope: !40889)
!40891 = distinct !DISubprogram(name: "provide<object_store::path::parts::InvalidPart>", linkageName: "_RNvYNtNtNtCs8RKTHBS4OBx_12object_store4path5parts11InvalidPartNtNtCscgRAwXFJnXP_4core5error5Error7provideCslpwjCj2YNBy_9polars_io", scope: !1870, file: !1868, line: 260, type: !1050, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40892 = !DILocation(line: 260, column: 59, scope: !40891)
!40893 = distinct !DISubprogram(name: "type_id<object_store::path::parts::InvalidPart>", linkageName: "_RNvYNtNtNtCs8RKTHBS4OBx_12object_store4path5parts11InvalidPartNtNtCscgRAwXFJnXP_4core5error5Error7type_idCslpwjCj2YNBy_9polars_io", scope: !1870, file: !1868, line: 122, type: !1050, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40894 = distinct !DISubprogram(name: "of<object_store::path::parts::InvalidPart>", linkageName: "_RINvMs8_NtCscgRAwXFJnXP_4core3anyNtB6_6TypeId2ofNtNtNtCs8RKTHBS4OBx_12object_store4path5parts11InvalidPartECslpwjCj2YNBy_9polars_io", scope: !1794, file: !1791, line: 790, type: !1050, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40895 = !DILocation(line: 126, column: 9, scope: !40893)
!40896 = !DILocation(line: 791, column: 9, scope: !40894, inlinedAt: !40895)
!40897 = !DILocation(line: 127, column: 6, scope: !40893)
!40898 = distinct !DISubprogram(name: "description<core::str::error::Utf8Error>", linkageName: "_RNvYNtNtNtCscgRAwXFJnXP_4core3str5error9Utf8ErrorNtNtB8_5error5Error11descriptionCslpwjCj2YNBy_9polars_io", scope: !1870, file: !1868, line: 137, type: !1050, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40899 = !DILocation(line: 139, column: 6, scope: !40898)
!40900 = distinct !DISubprogram(name: "source<core::str::error::Utf8Error>", linkageName: "_RNvYNtNtNtCscgRAwXFJnXP_4core3str5error9Utf8ErrorNtNtB8_5error5Error6sourceCslpwjCj2YNBy_9polars_io", scope: !1870, file: !1868, line: 111, type: !1050, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40901 = !DILocation(line: 113, column: 6, scope: !40900)
!40902 = distinct !DISubprogram(name: "provide<core::str::error::Utf8Error>", linkageName: "_RNvYNtNtNtCscgRAwXFJnXP_4core3str5error9Utf8ErrorNtNtB8_5error5Error7provideCslpwjCj2YNBy_9polars_io", scope: !1870, file: !1868, line: 260, type: !1050, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40903 = !DILocation(line: 260, column: 59, scope: !40902)
!40904 = distinct !DISubprogram(name: "type_id<core::str::error::Utf8Error>", linkageName: "_RNvYNtNtNtCscgRAwXFJnXP_4core3str5error9Utf8ErrorNtNtB8_5error5Error7type_idCslpwjCj2YNBy_9polars_io", scope: !1870, file: !1868, line: 122, type: !1050, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40905 = distinct !DISubprogram(name: "of<core::str::error::Utf8Error>", linkageName: "_RINvMs8_NtCscgRAwXFJnXP_4core3anyNtB6_6TypeId2ofNtNtNtB8_3str5error9Utf8ErrorECslpwjCj2YNBy_9polars_io", scope: !1794, file: !1791, line: 790, type: !1050, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40906 = !DILocation(line: 126, column: 9, scope: !40904)
!40907 = !DILocation(line: 791, column: 9, scope: !40905, inlinedAt: !40906)
!40908 = !DILocation(line: 127, column: 6, scope: !40904)
!40909 = distinct !DISubprogram(name: "description<std::io::error::Error>", linkageName: "_RNvYNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorNtNtCscgRAwXFJnXP_4core5error5Error11descriptionCslpwjCj2YNBy_9polars_io", scope: !1870, file: !1868, line: 137, type: !1050, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40910 = !DILocation(line: 139, column: 6, scope: !40909)
!40911 = distinct !DISubprogram(name: "provide<std::io::error::Error>", linkageName: "_RNvYNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorNtNtCscgRAwXFJnXP_4core5error5Error7provideCslpwjCj2YNBy_9polars_io", scope: !1870, file: !1868, line: 260, type: !1050, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40912 = !DILocation(line: 260, column: 59, scope: !40911)
!40913 = distinct !DISubprogram(name: "type_id<std::io::error::Error>", linkageName: "_RNvYNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorNtNtCscgRAwXFJnXP_4core5error5Error7type_idCslpwjCj2YNBy_9polars_io", scope: !1870, file: !1868, line: 122, type: !1050, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40914 = distinct !DISubprogram(name: "of<std::io::error::Error>", linkageName: "_RINvMs8_NtCscgRAwXFJnXP_4core3anyNtB6_6TypeId2ofNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io", scope: !1794, file: !1791, line: 790, type: !1050, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40915 = !DILocation(line: 126, column: 9, scope: !40913)
!40916 = !DILocation(line: 791, column: 9, scope: !40914, inlinedAt: !40915)
!40917 = !DILocation(line: 127, column: 6, scope: !40913)
!40918 = distinct !DISubprogram(name: "description<alloc::boxed::convert::{impl#17}::from::StringError>", linkageName: "_RNvYNtNvXsf_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtBc_3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_11descriptionCslpwjCj2YNBy_9polars_io", scope: !1870, file: !1868, line: 137, type: !1050, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40919 = !DILocation(line: 139, column: 6, scope: !40918)
!40920 = distinct !DISubprogram(name: "source<alloc::boxed::convert::{impl#17}::from::StringError>", linkageName: "_RNvYNtNvXsf_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtBc_3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_6sourceCslpwjCj2YNBy_9polars_io", scope: !1870, file: !1868, line: 111, type: !1050, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40921 = !DILocation(line: 113, column: 6, scope: !40920)
!40922 = distinct !DISubprogram(name: "provide<alloc::boxed::convert::{impl#17}::from::StringError>", linkageName: "_RNvYNtNvXsf_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtBc_3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7provideCslpwjCj2YNBy_9polars_io", scope: !1870, file: !1868, line: 260, type: !1050, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40923 = !DILocation(line: 260, column: 59, scope: !40922)
!40924 = distinct !DISubprogram(name: "type_id<alloc::boxed::convert::{impl#17}::from::StringError>", linkageName: "_RNvYNtNvXsf_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtBc_3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7type_idCslpwjCj2YNBy_9polars_io", scope: !1870, file: !1868, line: 122, type: !1050, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40925 = distinct !DISubprogram(name: "of<alloc::boxed::convert::{impl#17}::from::StringError>", linkageName: "_RINvMs8_NtCscgRAwXFJnXP_4core3anyNtB6_6TypeId2ofNtNvXsf_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtBU_3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SendNtB20_4SyncEL_EINtNtB8_7convert4FromNtNtBW_6string6StringE4from11StringErrorECslpwjCj2YNBy_9polars_io", scope: !1794, file: !1791, line: 790, type: !1050, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1049)
!40926 = !DILocation(line: 126, column: 9, scope: !40924)
!40927 = !DILocation(line: 791, column: 9, scope: !40925, inlinedAt: !40926)
!40928 = !DILocation(line: 127, column: 6, scope: !40924)
end_hunk_2

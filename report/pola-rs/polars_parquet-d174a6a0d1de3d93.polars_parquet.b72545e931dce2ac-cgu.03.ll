Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.03?download=true
inline.NumInlined: 2990
inline.NumDeleted: 909
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize12nested_utils20collect_level_values:bb.a
bb.d:                                             ; preds = %bb.t, %bb.c
  ret void, !dbg !44189

bb.e:                                             ; preds = %bb.b
  %.sroa.8.8.copyload50 = load ptr, ptr %i.h, align 8, !dbg !44190, !noalias !44160
  %.sroa.13.8.copyload56 = load i64, ptr %.sroa.13.8..sroa_idx, align 8, !dbg !44190, !noalias !44160
  %.sroa.2.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !44191
  %i.n = load <2 x i64>, ptr %.sroa.11.8..sroa_idx, align 8, !dbg !44190, !noalias !44160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !44186, !noalias !44158
  store ptr %.sroa.8.8.copyload50, ptr %0, align 8, !dbg !44191
  store <2 x i64> %i.n, ptr %.sroa.2.0..sroa_idx44, align 8, !dbg !44191
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !44191
  store i64 %.sroa.13.8.copyload56, ptr %.sroa.446.0..sroa_idx, align 8, !dbg !44191
  br label %bb.t, !dbg !44192

bb.f:                                             ; preds = %bb.b
  %.sroa.8.8.copyload = load ptr, ptr %i.h, align 8, !dbg !44193, !noalias !44160 ; 2 uses
  %.sroa.11.8.copyload = load i64, ptr %.sroa.11.8..sroa_idx, align 8, !dbg !44193, !noalias !44160 ; 2 uses
  %.sroa.12.8.copyload = load i64, ptr %.sroa.12.8..sroa_idx, align 8, !dbg !44193, !noalias !44160
  %.sroa.13.8.copyload = load i64, ptr %.sroa.13.8..sroa_idx, align 8, !dbg !44193, !noalias !44160
  %.sroa.14.8.copyload = load i64, ptr %.sroa.14.8..sroa_idx, align 8, !dbg !44193, !noalias !44160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !44186, !noalias !44158
  %.not49 = icmp eq ptr %.sroa.8.8.copyload, null, !dbg !44194
  br i1 %.not49, label %bb.h, label %bb.g, !dbg !44195

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !44165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !44165
  call void @_RNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB4_7DecodertE7try_newBc_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.8.8.copyload, i64 noundef %.sroa.11.8.copyload, i64 noundef %.sroa.13.8.copyload, i64 noundef %.sroa.14.8.copyload), !dbg !44196
  %i.o = load ptr, ptr %i.d, align 8, !dbg !44197, !noundef !1984 ; 2 uses
  %i.p = icmp eq ptr %i.o, null, !dbg !44197
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.548.0..sroa_idx, i64 32, i1 false), !dbg !44198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !44199
  br i1 %i.p, label %bb.i, label %bb.j, !dbg !44200

bb.h:                                             ; preds = %bb.f
  %i.q = load i64, ptr %i.j, align 8, !dbg !44201, !noundef !1984 ; 2 uses
  %i.r = icmp ult i64 %i.q, 4611686018427387904, !dbg !44202
  call void @llvm.assume(i1 %i.r), !dbg !44203
  %i.s = add i64 %i.q, %.sroa.11.8.copyload, !dbg !44204
  %i.t = trunc i64 %.sroa.12.8.copyload to i16, !dbg !44205
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE6resizeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.s, i16 noundef %i.t), !dbg !44206
  br label %.backedge, !dbg !44207

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false), !dbg !44199
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !44208
  br label %bb.t, !dbg !44209

bb.j:                                             ; preds = %bb.g
  store ptr %i.o, ptr %i.c, align 8, !dbg !44165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx26, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false), !dbg !44165
  call void @llvm.experimental.noalias.scope.decl(metadata !44168), !dbg !44210
  call void @llvm.experimental.noalias.scope.decl(metadata !44169), !dbg !44210
  %i.u = load i64, ptr %i.i, align 8, !dbg !44211, !alias.scope !44168, !noalias !44169, !noundef !1984 ; 3 uses
  %i.v = lshr i64 %i.u, 4, !dbg !44212
  %i.w = and i64 %i.u, 15, !dbg !44213
  %i.x = icmp ne i64 %i.w, 0, !dbg !44213
  %i.y = zext i1 %i.x to i64, !dbg !44214
  %i.z = add nuw nsw i64 %i.v, %i.y, !dbg !44212  ; 2 uses
  %i.aa = shl i64 %i.z, 4, !dbg !44215
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VectE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aa), !dbg !44216, !noalias !44168
  %i.ab = load i64, ptr %i.j, align 8, !dbg !44217, !alias.scope !44169, !noalias !44168, !noundef !1984 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 4611686018427387904, !dbg !44218
  call void @llvm.assume(i1 %i.ac), !dbg !44219
  %.not15.i = icmp eq i64 %i.u, 0, !dbg !44220
  br i1 %.not15.i, label %_RNvMs3_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_7DecodertE12collect_intoBd_.exit, label %.lr.ph.i, !dbg !44221

.lr.ph.i:                                         ; preds = %bb.j
  %i.ad = load ptr, ptr %i.k, align 8, !dbg !44222, !alias.scope !44169, !noalias !44168, !nonnull !1984, !noundef !1984
  %i.ae = getelementptr [2 x i8], ptr %i.ad, i64 %i.ab, !dbg !44223
  br label %bb.k, !dbg !44221

._crit_edge.loopexit.i:                           ; preds = %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decode11decode_packtEBa_.exit.i
  %.pre.i = load i64, ptr %i.j, align 8, !dbg !44224, !alias.scope !44169, !noalias !44168
  %.pre19.i = load i64, ptr %i.i, align 8, !dbg !44225, !alias.scope !44168, !noalias !44169
  br label %_RNvMs3_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_7DecodertE12collect_intoBd_.exit, !dbg !44224

bb.k:                                             ; preds = %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decode11decode_packtEBa_.exit.i, %.lr.ph.i
  %.sroa.07.014.i = phi i64 [ 0, %.lr.ph.i ], [ %i.af, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decode11decode_packtEBa_.exit.i ]
  %.sroa.05.013.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %i.ap, %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decode11decode_packtEBa_.exit.i ] ; 4 uses
  %i.af = add nuw nsw i64 %.sroa.07.014.i, 1, !dbg !44226 ; 2 uses
  %i.ag = call { ptr, i64 } @_RNvXNtCs2mZqlW55729_12polars_utils6chunksINtB2_6ChunkshENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c), !dbg !44227 ; 2 uses
  %i.ah = extractvalue { ptr, i64 } %i.ag, 0, !dbg !44227 ; 3 uses
  %i.ai = extractvalue { ptr, i64 } %i.ag, 1, !dbg !44227 ; 6 uses
  %.not.i = icmp eq ptr %i.ah, null, !dbg !44228
  br i1 %.not.i, label %bb.m, label %bb.l, !dbg !44229, !prof !2090

bb.l:                                             ; preds = %bb.k
  %i.aj = icmp eq ptr %.sroa.05.013.i, null, !dbg !44230
  br i1 %i.aj, label %bb.n, label %bb.o, !dbg !44230, !prof !2090

bb.m:                                             ; preds = %bb.k
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #35, !dbg !44231
  unreachable, !dbg !44231

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #35, !dbg !44232
  unreachable, !dbg !44232

bb.o:                                             ; preds = %bb.l
  %i.ak = load i64, ptr %i.l, align 8, !dbg !44233, !alias.scope !44168, !noalias !44169, !noundef !1984 ; 3 uses
  %i.al = shl i64 %i.ak, 1, !dbg !44234
  %i.am = and i64 %i.al, 2305843009213693950, !dbg !44234
  %i.an = icmp samesign ult i64 %i.ai, %i.am, !dbg !44235
  br i1 %i.an, label %bb.q, label %bb.p, !dbg !44235

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6unpack8unpack16(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef range(i64 0, -9223372036854775808) %i.ai, ptr noalias noundef nonnull align 2 dereferenceable(32) %.sroa.05.013.i, i64 noundef %i.ak), !dbg !44236
  br label %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decode11decode_packtEBa_.exit.i, !dbg !44237

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !44238, !noalias !44172
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !dbg !44239, !alias.scope !44173, !noalias !44172
  %i.ao = icmp samesign ult i64 %i.ai, 33, !dbg !44240
  br i1 %i.ao, label %bb.r, label %bb.s, !dbg !44240, !prof !2217

bb.r:                                             ; preds = %bb.q
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.ai, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef range(i64 0, -9223372036854775808) %i.ai, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4), !dbg !44241, !noalias !44175
  call void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6unpack8unpack16(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 32, ptr noalias noundef nonnull align 2 dereferenceable(32) %.sroa.05.013.i, i64 noundef %i.ak), !dbg !44242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !44243, !noalias !44172
  br label %_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decode11decode_packtEBa_.exit.i, !dbg !44244

bb.s:                                             ; preds = %bb.q
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef range(i64 0, -9223372036854775808) %i.ai, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #35, !dbg !44245, !noalias !44176
  unreachable, !dbg !44245

_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decode11decode_packtEBa_.exit.i: ; preds = %bb.r, %bb.p
  %i.ap = getelementptr i8, ptr %.sroa.05.013.i, i64 32, !dbg !44246
  %exitcond.not.i = icmp eq i64 %i.af, %i.z, !dbg !44220
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.k, !dbg !44221

_RNvMs3_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_7DecodertE12collect_intoBd_.exit: ; preds = %bb.j, %._crit_edge.loopexit.i
  %i.aq = phi i64 [ %.pre19.i, %._crit_edge.loopexit.i ], [ 0, %bb.j ], !dbg !44225
  %i.ar = phi i64 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.ab, %bb.j ], !dbg !44224 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 4611686018427387904, !dbg !44247
  call void @llvm.assume(i1 %i.as), !dbg !44248
  %i.at = add i64 %i.ar, %i.aq, !dbg !44249
  store i64 %i.at, ptr %i.j, align 8, !dbg !44250, !alias.scope !44169, !noalias !44168
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !44208
  br label %.backedge, !dbg !44251

.backedge:                                        ; preds = %_RNvMs3_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB5_7DecodertE12collect_intoBd_.exit, %bb.h
  br label %bb.b, !dbg !44182

bb.t:                                             ; preds = %bb.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !44187
  br label %bb.d, !dbg !44189
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize17fixed_size_binary16decode_fsb_plain(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef nonnull align 8 dereferenceable(32) %4, ptr noalias noundef nonnull align 8 dereferenceable(56) %5, i1 noundef zeroext %6, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %7, ptr noundef align 8 %8) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !44252 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [40 x i8], align 8                ; 7 uses
  %i.i = alloca [40 x i8], align 8                ; 7 uses
  %i.j = alloca [40 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [64 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = alloca [40 x i8], align 8                ; 7 uses
  %i.q = alloca [32 x i8], align 8                ; 6 uses
  %i.r = alloca [40 x i8], align 8                ; 7 uses
  %i.s = alloca [32 x i8], align 8                ; 4 uses
  %i.t = alloca [40 x i8], align 8                ; 4 uses
  %i.u = alloca [40 x i8], align 8                ; 4 uses
  %i.v = alloca [40 x i8], align 8                ; 4 uses
  %i.w = alloca [40 x i8], align 8                ; 4 uses
  %i.x = alloca [40 x i8], align 8                ; 4 uses
  %i.y = alloca [40 x i8], align 8                ; 4 uses
  %i.z = alloca [40 x i8], align 8                ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 2 uses
  %i.ab = alloca [8 x i8], align 8                ; 2 uses
  store i64 %1, ptr %i.ab, align 8
  %i.ac = icmp eq i64 %1, 0, !dbg !44981
  br i1 %i.ac, label %.invoke606, label %bb.c, !dbg !44981, !prof !2090

.thread482.loopexit:                              ; preds = %bb.co, %bb.cr, %bb.ct
  %lpad.loopexit506 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread482.loopexit.split-lp:                     ; preds = %.invoke606, %.invoke604, %.invoke, %bb.ba, %bb.av, %bb.aq, %bb.al, %bb.ag, %bb.ab, %bb.p, %bb.be, %bb.bd, %bb.bj, %bb.br, %bb.ce, %bb.cd, %bb.cf, %bb.dt, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %lpad.loopexit.split-lp507 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %bb.ce
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ad = urem i64 %3, %1, !dbg !44982            ; 2 uses
  %i.ae = udiv i64 %3, %1, !dbg !44983            ; 2 uses
  store i64 %i.ad, ptr %i.aa, align 8, !dbg !44982
  %i.af = icmp eq i64 %i.ad, 0, !dbg !44984
  br i1 %i.af, label %bb.d, label %.invoke606, !dbg !44984, !prof !2217

bb.d:                                             ; preds = %bb.c
  %i.ag = load i64, ptr %4, align 8, !dbg !44985, !range !2210, !noundef !1984 ; 2 uses
  %i.ah = xor i64 %i.ag, -9223372036854775808, !dbg !44985
  %i.ai = icmp slt i64 %i.ag, 0, !dbg !44985
  %i.aj = select i1 %i.ai, i64 %i.ah, i64 7, !dbg !44985
  switch i64 %i.aj, label %bb.e [
    i64 0, label %bb.f
    i64 1, label %bb.g
    i64 2, label %bb.h
    i64 3, label %bb.i
    i64 4, label %bb.j
    i64 5, label %bb.k
    i64 6, label %bb.l
    i64 7, label %bb.m
  ], !dbg !44986

.invoke606:                                       ; preds = %bb.a, %bb.c
  %i.ak = phi i8 [ 0, %bb.c ], [ 1, %bb.a ]
  %i.al = phi ptr [ %i.aa, %bb.c ], [ %i.ab, %bb.a ]
  %i.am = phi ptr [ @257, %bb.c ], [ @245, %bb.a ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @130, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am) #33
          to label %.cont607 unwind label %.thread482.loopexit.split-lp, !dbg !44987

.cont607:                                         ; preds = %.invoke606
  unreachable

default.unreachable586:                           ; preds = %bb.cb, %bb.ca
  unreachable

bb.e:                                             ; preds = %bb.d
  unreachable, !dbg !44988

bb.f:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8, !dbg !44989
  %i.ao = invoke { ptr, i64 } @_RNvMNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils12array_chunksINtB2_11ArrayChunksNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1E3newBc_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.n unwind label %.thread482.loopexit.split-lp, !dbg !44990 ; 2 uses

bb.g:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8, !dbg !44991
  %i.aq = invoke { ptr, i64 } @_RNvMNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils12array_chunksINtB2_11ArrayChunksNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2E3newBc_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.z unwind label %.thread482.loopexit.split-lp, !dbg !44992 ; 2 uses

bb.h:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8, !dbg !44993
  %i.as = invoke { ptr, i64 } @_RNvMNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils12array_chunksINtB2_11ArrayChunksNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4E3newBc_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.ae unwind label %.thread482.loopexit.split-lp, !dbg !44994 ; 2 uses

bb.i:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8, !dbg !44995
  %i.au = invoke { ptr, i64 } @_RNvMNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils12array_chunksINtB2_11ArrayChunksNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes8Alignment8E3newBc_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.aj unwind label %.thread482.loopexit.split-lp, !dbg !44996 ; 2 uses

bb.j:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8, !dbg !44997
  %i.aw = invoke { ptr, i64 } @_RNvMNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils12array_chunksINtB2_11ArrayChunksNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes12Alignment4E3newBc_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.ao unwind label %.thread482.loopexit.split-lp, !dbg !44998 ; 2 uses

bb.k:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8, !dbg !44999
  %i.ay = invoke { ptr, i64 } @_RNvMNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils12array_chunksINtB2_11ArrayChunksNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes16Alignment16E3newBc_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.at unwind label %.thread482.loopexit.split-lp, !dbg !45000 ; 2 uses

bb.l:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8, !dbg !45001
  %i.ba = invoke { ptr, i64 } @_RNvMNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils12array_chunksINtB2_11ArrayChunksNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes32Alignment16E3newBc_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.ay unwind label %.thread482.loopexit.split-lp, !dbg !45002 ; 2 uses

bb.m:                                             ; preds = %bb.d
  br i1 %6, label %bb.be, label %._crit_edge553, !dbg !45003

._crit_edge553:                                   ; preds = %bb.m
  %.pre = udiv i64 %3, %1, !dbg !45004
  br label %bb.bd, !dbg !45003

bb.n:                                             ; preds = %bb.f
  %i.bb = extractvalue { ptr, i64 } %i.ao, 0, !dbg !44990 ; 2 uses
  %.not370 = icmp eq ptr %i.bb, null, !dbg !45005
  br i1 %.not370, label %bb.p, label %bb.o, !dbg !45006

bb.o:                                             ; preds = %bb.n
  %i.bc = extractvalue { ptr, i64 } %i.ao, 1, !dbg !44990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !45007
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !dbg !45007
  call void @_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive5plain29decode_aligned_bytes_dispatchNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1EBc_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef %i.bc, i1 noundef zeroext %6, ptr noundef align 8 %8, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(56) %5, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an), !dbg !45008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !45009
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils6filter6FilterEEB1e_.exit, !dbg !45010

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !45011, !noalias !44825
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef 54, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %.thread482.loopexit.split-lp, !dbg !45011

.noexc:                                           ; preds = %bb.p
  %i.bd = load i64, ptr %i.g, align 8, !dbg !45011, !range !2200, !noalias !44825, !noundef !1984
  %i.be = trunc nuw i64 %i.bd to i1, !dbg !45012
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !45013
  %i.bg = load i64, ptr %i.bf, align 8, !dbg !45013, !range !1986, !noalias !44825, !noundef !1984 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !45013 ; 2 uses
  br i1 %i.be, label %bb.q, label %bb.r, !dbg !45012, !prof !2090

bb.q:                                             ; preds = %.noexc
  %i.bi = load i64, ptr %i.bh, align 8, !dbg !45014, !noalias !44825
  br label %.invoke604, !dbg !45015

bb.r:                                             ; preds = %.noexc
  %i.bj = load ptr, ptr %i.bh, align 8, !dbg !45016, !noalias !44825, !nonnull !1984, !noundef !1984
  %i.bk = icmp samesign ugt i64 %i.bg, 53, !dbg !45017
  tail call void @llvm.assume(i1 %i.bk), !dbg !45018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !45019, !noalias !44825
  br label %bb.s, !dbg !44988

bb.s:                                             ; preds = %bb.bc, %bb.ax, %bb.as, %bb.an, %bb.ai, %bb.ad, %bb.r
  %.sink = phi ptr [ %i.eh, %bb.bc ], [ %i.dv, %bb.ax ], [ %i.dl, %bb.as ], [ %i.db, %bb.an ], [ %i.cr, %bb.ai ], [ %i.ch, %bb.ad ], [ %i.bj, %bb.r ] ; 2 uses
  %.sink609 = phi i64 [ %i.ec, %bb.bc ], [ %i.ds, %bb.ax ], [ %i.di, %bb.as ], [ %i.cy, %bb.an ], [ %i.co, %bb.ai ], [ %i.ce, %bb.ad ], [ %i.bg, %bb.r ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(54) %.sink, ptr noundef nonnull align 1 dereferenceable(54) @37, i64 54, i1 false), !dbg !45020, !noalias !1984
  %i.bl = ptrtoint ptr %.sink to i64, !dbg !45020
  %i.bm = inttoptr i64 %.sink609 to ptr, !dbg !45020
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !45021
  %.sroa.2310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !45021
  store ptr %i.bm, ptr %.sroa.2310.0..sroa_idx, align 8, !dbg !45021
  %.sroa.3311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !45021
  store i64 %i.bl, ptr %.sroa.3311.0..sroa_idx, align 8, !dbg !45021
  %.sroa.4312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !45021
  store i64 54, ptr %.sroa.4312.0..sroa_idx, align 8, !dbg !45021
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44828), !dbg !45022
  %i.bn = load i64, ptr %7, align 8, !dbg !45023, !range !2133, !alias.scope !44828, !noundef !1984 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 3, !dbg !45023
  br i1 %i.bo, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils6filter6FilterEEB1e_.exit, label %bb.t, !dbg !45023

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44829), !dbg !45023
  switch i64 %i.bn, label %bb.u [
    i64 0, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils6filter6FilterEEB1e_.exit
    i64 1, label %bb.w
  ], !dbg !45024

bb.u:                                             ; preds = %bb.t
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8, !dbg !45024 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44830), !dbg !45024
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44831), !dbg !45025
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44832), !dbg !45026
  %i.bq = load ptr, ptr %i.bp, align 8, !dbg !45027, !alias.scope !44833, !nonnull !1984, !noundef !1984
  %i.br = atomicrmw sub ptr %i.bq, i64 1 release, align 8, !dbg !45028, !noalias !44833
  %i.bs = icmp eq i64 %i.br, 1, !dbg !45029
  br i1 %i.bs, label %bb.v, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils6filter6FilterEEB1e_.exit, !dbg !45029

bb.v:                                             ; preds = %bb.u
  fence acquire, !dbg !45030
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read4expr17ParquetColumnExprEL_E9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bp) #32, !dbg !45031
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils6filter6FilterEEB1e_.exit, !dbg !45031

bb.w:                                             ; preds = %bb.t
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 8, !dbg !45024
  %.val.i.i = load ptr, ptr %i.bt, align 8, !dbg !45024, !alias.scope !44834, !nonnull !1984, !noundef !1984 ; 3 uses
  %i.bu = load i64, ptr %.val.i.i, align 8, !dbg !45032, !range !2133, !noalias !44835, !noundef !1984
  %i.bv = icmp eq i64 %i.bu, 3, !dbg !45033
  br i1 %i.bv, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils6filter6FilterEEB1e_.exit, label %bb.x, !dbg !45033

bb.x:                                             ; preds = %bb.w
  %i.bw = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24, !dbg !45034
  %i.bx = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !dbg !45035, !noalias !44835
  %i.by = icmp eq i64 %i.bx, 1, !dbg !45036
  br i1 %i.by, label %bb.y, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils6filter6FilterEEB1e_.exit, !dbg !45036, !prof !2090

bb.y:                                             ; preds = %bb.x
  fence acquire, !dbg !45037
  tail call fastcc void @_RNvMs9_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE9drop_slowCsfISxE4fmY1Y_14polars_parquet(ptr %.val.i.i), !dbg !45038, !noalias !44835
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils6filter6FilterEEB1e_.exit, !dbg !45038

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils6filter6FilterEEB1e_.exit: ; preds = %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.az, %bb.au, %bb.ap, %bb.ak, %bb.af, %bb.aa, %bb.o
  ret void, !dbg !45039

bb.z:                                             ; preds = %bb.g
  %i.bz = extractvalue { ptr, i64 } %i.aq, 0, !dbg !44992 ; 2 uses
  %.not369 = icmp eq ptr %i.bz, null, !dbg !45040
  br i1 %.not369, label %bb.ab, label %bb.aa, !dbg !45041

bb.aa:                                            ; preds = %bb.z
  %i.ca = extractvalue { ptr, i64 } %i.aq, 1, !dbg !44992
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !45042
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !dbg !45042
  call void @_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive5plain29decode_aligned_bytes_dispatchNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2EBc_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bz, i64 noundef %i.ca, i1 noundef zeroext %6, ptr noundef align 8 %8, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(56) %5, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap), !dbg !45043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !45044
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils6filter6FilterEEB1e_.exit, !dbg !45045

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !45046, !noalias !44838
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef 54, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc382 unwind label %.thread482.loopexit.split-lp, !dbg !45046

.noexc382:                                        ; preds = %bb.ab
  %i.cb = load i64, ptr %i.f, align 8, !dbg !45046, !range !2200, !noalias !44838, !noundef !1984
  %i.cc = trunc nuw i64 %i.cb to i1, !dbg !45047
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !45048
  %i.ce = load i64, ptr %i.cd, align 8, !dbg !45048, !range !1986, !noalias !44838, !noundef !1984 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !45048 ; 2 uses
  br i1 %i.cc, label %bb.ac, label %bb.ad, !dbg !45047, !prof !2090

bb.ac:                                            ; preds = %.noexc382
  %i.cg = load i64, ptr %i.cf, align 8, !dbg !45049, !noalias !44838
  br label %.invoke604, !dbg !45050

bb.ad:                                            ; preds = %.noexc382
  %i.ch = load ptr, ptr %i.cf, align 8, !dbg !45051, !noalias !44838, !nonnull !1984, !noundef !1984
  %i.ci = icmp samesign ugt i64 %i.ce, 53, !dbg !45052
  tail call void @llvm.assume(i1 %i.ci), !dbg !45053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !45054, !noalias !44838
  br label %bb.s, !dbg !44988

bb.ae:                                            ; preds = %bb.h
  %i.cj = extractvalue { ptr, i64 } %i.as, 0, !dbg !44994 ; 2 uses
  %.not368 = icmp eq ptr %i.cj, null, !dbg !45055
  br i1 %.not368, label %bb.ag, label %bb.af, !dbg !45056

bb.af:                                            ; preds = %bb.ae
  %i.ck = extractvalue { ptr, i64 } %i.as, 1, !dbg !44994
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !45057
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !dbg !45057
  call void @_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive5plain29decode_aligned_bytes_dispatchNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4EBc_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cj, i64 noundef %i.ck, i1 noundef zeroext %6, ptr noundef align 8 %8, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(56) %5, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar), !dbg !45058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !45059
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils6filter6FilterEEB1e_.exit, !dbg !45060

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !45061, !noalias !44841
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef 54, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc386 unwind label %.thread482.loopexit.split-lp, !dbg !45061

.noexc386:                                        ; preds = %bb.ag
  %i.cl = load i64, ptr %i.e, align 8, !dbg !45061, !range !2200, !noalias !44841, !noundef !1984
  %i.cm = trunc nuw i64 %i.cl to i1, !dbg !45062
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !45063
  %i.co = load i64, ptr %i.cn, align 8, !dbg !45063, !range !1986, !noalias !44841, !noundef !1984 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !45063 ; 2 uses
  br i1 %i.cm, label %bb.ah, label %bb.ai, !dbg !45062, !prof !2090

bb.ah:                                            ; preds = %.noexc386
  %i.cq = load i64, ptr %i.cp, align 8, !dbg !45064, !noalias !44841
  br label %.invoke604, !dbg !45065

bb.ai:                                            ; preds = %.noexc386
  %i.cr = load ptr, ptr %i.cp, align 8, !dbg !45066, !noalias !44841, !nonnull !1984, !noundef !1984
  %i.cs = icmp samesign ugt i64 %i.co, 53, !dbg !45067
  tail call void @llvm.assume(i1 %i.cs), !dbg !45068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !45069, !noalias !44841
  br label %bb.s, !dbg !44988

bb.aj:                                            ; preds = %bb.i
  %i.ct = extractvalue { ptr, i64 } %i.au, 0, !dbg !44996 ; 2 uses
  %.not367 = icmp eq ptr %i.ct, null, !dbg !45070
  br i1 %.not367, label %bb.al, label %bb.ak, !dbg !45071

bb.ak:                                            ; preds = %bb.aj
  %i.cu = extractvalue { ptr, i64 } %i.au, 1, !dbg !44996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !45072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !dbg !45072
  call void @_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive5plain29decode_aligned_bytes_dispatchNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes8Alignment8EBc_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef %i.cu, i1 noundef zeroext %6, ptr noundef align 8 %8, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(56) %5, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at), !dbg !45073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !45074
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils6filter6FilterEEB1e_.exit, !dbg !45075

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !45076, !noalias !44844
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 54, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc390 unwind label %.thread482.loopexit.split-lp, !dbg !45076

.noexc390:                                        ; preds = %bb.al
  %i.cv = load i64, ptr %i.d, align 8, !dbg !45076, !range !2200, !noalias !44844, !noundef !1984
  %i.cw = trunc nuw i64 %i.cv to i1, !dbg !45077
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !45078
  %i.cy = load i64, ptr %i.cx, align 8, !dbg !45078, !range !1986, !noalias !44844, !noundef !1984 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !45078 ; 2 uses
  br i1 %i.cw, label %bb.am, label %bb.an, !dbg !45077, !prof !2090

end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize17fixed_size_binaryNtB5_13BinaryDecoderNtNtB7_5utils7Decoder13with_capacity:bb.a
  %.sroa.11.sroa.11.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !47549
  store ptr %.sroa.11.sroa.11.0, ptr %.sroa.11.sroa.11.0..sroa.11.0..sroa_idx.sroa_idx, align 8, !dbg !47549
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !47549
  store i64 %.sroa.18.0, ptr %.sroa.18.0..sroa_idx, align 8, !dbg !47549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !47550
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder13with_capacity(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.i, i64 noundef %2)
          to label %bb.ab unwind label %bb.aa, !dbg !47550

bb.m:                                             ; preds = %bb.d
  %i.bd = load i64, ptr %i.aa, align 8, !dbg !47551
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.z, i64 %i.bd) #33, !dbg !47552
  unreachable, !dbg !47552

bb.n:                                             ; preds = %bb.d
  %i.be = load ptr, ptr %i.aa, align 8, !dbg !47553, !nonnull !1984, !noundef !1984
  %i.bf = icmp ule i64 %2, %i.z, !dbg !47554
  tail call void @llvm.assume(i1 %i.bf), !dbg !47555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !47556
  br label %bb.l, !dbg !47557

bb.o:                                             ; preds = %bb.e
  %i.bg = load i64, ptr %i.af, align 8, !dbg !47558
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ae, i64 %i.bg) #33, !dbg !47559
  unreachable, !dbg !47559

bb.p:                                             ; preds = %bb.e
  %i.bh = load ptr, ptr %i.af, align 8, !dbg !47560, !nonnull !1984, !noundef !1984
  %i.bi = icmp ule i64 %2, %i.ae, !dbg !47561
  tail call void @llvm.assume(i1 %i.bi), !dbg !47562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !47563
  br label %bb.l, !dbg !47564

bb.q:                                             ; preds = %bb.f
  %i.bj = load i64, ptr %i.ak, align 8, !dbg !47565
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.aj, i64 %i.bj) #33, !dbg !47566
  unreachable, !dbg !47566

bb.r:                                             ; preds = %bb.f
  %i.bk = load ptr, ptr %i.ak, align 8, !dbg !47567, !nonnull !1984, !noundef !1984
  %i.bl = icmp ule i64 %2, %i.aj, !dbg !47568
  tail call void @llvm.assume(i1 %i.bl), !dbg !47569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !47570
  br label %bb.l, !dbg !47571

bb.s:                                             ; preds = %bb.g
  %i.bm = load i64, ptr %i.ap, align 8, !dbg !47572
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ao, i64 %i.bm) #33, !dbg !47573
  unreachable, !dbg !47573

bb.t:                                             ; preds = %bb.g
  %i.bn = load ptr, ptr %i.ap, align 8, !dbg !47574, !nonnull !1984, !noundef !1984
  %i.bo = icmp ule i64 %2, %i.ao, !dbg !47575
  tail call void @llvm.assume(i1 %i.bo), !dbg !47576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !47577
  br label %bb.l, !dbg !47578

bb.u:                                             ; preds = %bb.h
  %i.bp = load i64, ptr %i.au, align 8, !dbg !47579
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.at, i64 %i.bp) #33, !dbg !47580
  unreachable, !dbg !47580

bb.v:                                             ; preds = %bb.h
  %i.bq = load ptr, ptr %i.au, align 8, !dbg !47581, !nonnull !1984, !noundef !1984
  %i.br = icmp ule i64 %2, %i.at, !dbg !47582
  tail call void @llvm.assume(i1 %i.br), !dbg !47583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !47584
  br label %bb.l, !dbg !47585

bb.w:                                             ; preds = %bb.i
  %i.bs = load i64, ptr %i.az, align 8, !dbg !47586
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ay, i64 %i.bs) #33, !dbg !47587
  unreachable, !dbg !47587

bb.x:                                             ; preds = %bb.i
  %i.bt = load ptr, ptr %i.az, align 8, !dbg !47588, !nonnull !1984, !noundef !1984
  %i.bu = icmp ule i64 %2, %i.ay, !dbg !47589
  tail call void @llvm.assume(i1 %i.bu), !dbg !47590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !47591
  br label %bb.l, !dbg !47592

bb.y:                                             ; preds = %bb.b
  %i.bv = load i64, ptr %i.q, align 8, !dbg !47593
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.bv) #33, !dbg !47594
  unreachable, !dbg !47594

bb.z:                                             ; preds = %bb.b
  %i.bw = load ptr, ptr %i.q, align 8, !dbg !47595, !nonnull !1984, !noundef !1984
  %i.bx = icmp ule i64 %i.l, %i.p, !dbg !47596
  tail call void @llvm.assume(i1 %i.bx), !dbg !47597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !47598
  %i.by = ptrtoint ptr %i.bw to i64, !dbg !47599
  br label %bb.l, !dbg !47600

bb.aa:                                            ; preds = %bb.l
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize17fixed_size_binary6FSBVecEBQ_(ptr noalias noundef align 8 dereferenceable(32) %i.j) #30
          to label %bb.ad unwind label %bb.ac, !dbg !47601

bb.ab:                                            ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !dbg !47602
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !47602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ca, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false), !dbg !47602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !47601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !47601
  ret void, !dbg !47603

bb.ac:                                            ; preds = %bb.aa
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !47604
  unreachable, !dbg !47604

bb.ad:                                            ; preds = %bb.aa
  resume { ptr, i32 } %i.bz, !dbg !47604
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize17fixed_size_binaryNtB5_13BinaryDecoderNtNtB7_5utils7Decoder14extend_decoded(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias readonly align 8 captures(none) %1, ptr noalias noundef align 8 dereferenceable(88) %2, ptr noundef nonnull %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %4, i1 noundef zeroext %5) unnamed_addr #3 !dbg !47605 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32, !dbg !47849
  %i.e = load ptr, ptr %i.d, align 8, !dbg !47849, !invariant.load !1984, !nonnull !1984
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef nonnull %3) #36, !dbg !47850 ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0, !dbg !47850 ; 6 uses
  %i.h = extractvalue { ptr, ptr } %i.f, 1, !dbg !47850
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !47796
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !47851
  %i.j = load ptr, ptr %i.i, align 8, !dbg !47851, !invariant.load !1984, !nonnull !1984
  call void %i.j(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noundef %i.g) #36, !dbg !47852
  %i.k = load i128, ptr %i.c, align 16, !dbg !47853, !noundef !1984
  %i.l = icmp eq i128 %i.k, -156822702514474062690833730501453009614, !dbg !47854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !47796
  br i1 %i.l, label %bb.c, label %bb.b, !dbg !47855, !prof !2217

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @283) #35, !dbg !47856
  unreachable, !dbg !47856

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 40, !dbg !47857
  %i.n = load ptr, ptr %i.m, align 8, !dbg !47857, !noundef !1984 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 48, !dbg !47858 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !dbg !47858, !noundef !1984 ; 21 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !47805), !dbg !47859
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !47860
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !47860
  %i.q = load i64, ptr %2, align 8, !dbg !47860, !range !2210, !alias.scope !47805, !noalias !47806, !noundef !1984 ; 2 uses
  %i.r = xor i64 %i.q, -9223372036854775808, !dbg !47860
  %i.s = icmp slt i64 %i.q, 0, !dbg !47860
  %i.t = select i1 %i.s, i64 %i.r, i64 7, !dbg !47860 ; 2 uses
  switch i64 %i.t, label %bb.d [
    i64 0, label %bb.m
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.g
    i64 4, label %bb.h
    i64 5, label %bb.i
    i64 6, label %bb.j
    i64 7, label %bb.k
  ], !dbg !47861

bb.d:                                             ; preds = %bb.n, %bb.c
  unreachable, !dbg !47862

bb.e:                                             ; preds = %bb.c
  br label %bb.m, !dbg !47863

bb.f:                                             ; preds = %bb.c
  br label %bb.m, !dbg !47864

bb.g:                                             ; preds = %bb.c
  br label %bb.m, !dbg !47865

bb.h:                                             ; preds = %bb.c
  br label %bb.m, !dbg !47866

bb.i:                                             ; preds = %bb.c
  br label %bb.m, !dbg !47867

bb.j:                                             ; preds = %bb.c
  br label %bb.m, !dbg !47868

bb.k:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !47869
  %i.v = load i64, ptr %i.u, align 8, !dbg !47869, !alias.scope !47805, !noalias !47806, !noundef !1984 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0, !dbg !47870
  br i1 %i.w, label %bb.l, label %bb.m, !dbg !47870

bb.l:                                             ; preds = %bb.k
  store i64 %i.p, ptr %i.b, align 8, !dbg !47871, !noalias !47808
  %i.x = icmp eq i64 %i.p, 0, !dbg !47872
  br i1 %i.x, label %_RNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize17fixed_size_binaryNtB4_6FSBVec22extend_from_byte_slice.exit, label %bb.y, !dbg !47872, !prof !2217

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.v, %bb.k ], [ 2, %bb.e ], [ 4, %bb.f ], [ 8, %bb.g ], [ 12, %bb.h ], [ 16, %bb.i ], [ 32, %bb.j ], [ 1, %bb.c ], !dbg !47873 ; 8 uses
  %i.y = urem i64 %i.p, %.sroa.0.0.i, !dbg !47874 ; 2 uses
  %i.z = udiv i64 %i.p, %.sroa.0.0.i, !dbg !47875 ; 2 uses
  store i64 %i.y, ptr %i.a, align 8, !dbg !47874, !noalias !47808
  %i.aa = icmp eq i64 %i.y, 0, !dbg !47876
  br i1 %i.aa, label %bb.n, label %bb.o, !dbg !47876, !prof !2217

bb.n:                                             ; preds = %bb.m
  switch i64 %i.t, label %bb.d [
    i64 0, label %bb.r
    i64 1, label %bb.s
    i64 2, label %bb.t
    i64 3, label %bb.u
    i64 4, label %bb.v
    i64 5, label %bb.w
    i64 6, label %bb.x
    i64 7, label %bb.p
  ], !dbg !47877

bb.o:                                             ; preds = %bb.m
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @130, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #35, !dbg !47878, !noalias !47808
  unreachable, !dbg !47878

bb.p:                                             ; preds = %bb.n
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %2, i64 noundef range(i64 0, -9223372036854775808) %i.p), !dbg !47879, !noalias !47806
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !47880 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !47880, !alias.scope !47812, !noalias !47806, !noundef !1984 ; 3 uses
  %i.ad = icmp sgt i64 %i.ac, -1, !dbg !47881
  call void @llvm.assume(i1 %i.ad), !dbg !47882
  %.not.i.i = icmp eq i64 %i.p, 0, !dbg !47883
  br i1 %.not.i.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit.i, label %bb.q, !dbg !47883

bb.q:                                             ; preds = %bb.p
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !47884
  %i.af = load ptr, ptr %i.ae, align 8, !dbg !47884, !alias.scope !47812, !noalias !47806, !nonnull !1984, !noundef !1984
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac, !dbg !47885
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull readonly align 1 %i.n, i64 range(i64 0, -9223372036854775808) %i.p, i1 false), !dbg !47886
  %.pre.i.i = load i64, ptr %i.ab, align 8, !dbg !47887, !alias.scope !47812, !noalias !47806
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit.i, !dbg !47888

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %bb.q, %bb.p
  %i.ah = phi i64 [ %.pre.i.i, %bb.q ], [ %i.ac, %bb.p ], !dbg !47887
  %i.ai = add i64 %i.ah, %i.p, !dbg !47887
  store i64 %i.ai, ptr %i.ab, align 8, !dbg !47887, !alias.scope !47812, !noalias !47806
  br label %_RNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize17fixed_size_binaryNtB4_6FSBVec22extend_from_byte_slice.exit, !dbg !47889

bb.r:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !47890
  %i.ak = udiv i64 %i.p, %.sroa.0.0.i, !dbg !47891 ; 2 uses
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1E7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj, i64 noundef %i.ak), !dbg !47892, !noalias !47806
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !47893
  %i.am = load ptr, ptr %i.al, align 8, !dbg !47893, !alias.scope !47805, !noalias !47806, !nonnull !1984, !noundef !1984
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !47894 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !dbg !47894, !alias.scope !47805, !noalias !47806, !noundef !1984 ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, -1, !dbg !47895
  call void @llvm.assume(i1 %i.ap), !dbg !47896
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ao, !dbg !47897
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr nonnull readonly align 1 %i.n, i64 range(i64 0, -9223372036854775808) %i.p, i1 false), !dbg !47898
  %i.ar = load i64, ptr %i.an, align 8, !dbg !47899, !alias.scope !47805, !noalias !47806, !noundef !1984 ; 2 uses
  %i.as = icmp sgt i64 %i.ar, -1, !dbg !47900
  call void @llvm.assume(i1 %i.as), !dbg !47901
  %i.at = add nuw i64 %i.ar, %i.ak, !dbg !47902
  store i64 %i.at, ptr %i.an, align 8, !dbg !47903, !alias.scope !47805, !noalias !47806
  br label %_RNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize17fixed_size_binaryNtB4_6FSBVec22extend_from_byte_slice.exit, !dbg !47904

bb.s:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !47905
  %i.av = udiv i64 %i.p, %.sroa.0.0.i, !dbg !47906 ; 2 uses
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2E7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au, i64 noundef %i.av), !dbg !47907, !noalias !47806
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !47908
  %i.ax = load ptr, ptr %i.aw, align 8, !dbg !47908, !alias.scope !47805, !noalias !47806, !nonnull !1984, !noundef !1984
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !47909 ; 3 uses
  %i.az = load i64, ptr %i.ay, align 8, !dbg !47909, !alias.scope !47805, !noalias !47806, !noundef !1984 ; 2 uses
  %i.ba = icmp ult i64 %i.az, 4611686018427387904, !dbg !47910
  call void @llvm.assume(i1 %i.ba), !dbg !47911
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.az, !dbg !47912
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr nonnull readonly align 1 %i.n, i64 range(i64 0, -9223372036854775808) %i.p, i1 false), !dbg !47913
  %i.bc = load i64, ptr %i.ay, align 8, !dbg !47914, !alias.scope !47805, !noalias !47806, !noundef !1984 ; 2 uses
  %i.bd = icmp ult i64 %i.bc, 4611686018427387904, !dbg !47915
  call void @llvm.assume(i1 %i.bd), !dbg !47916
  %i.be = add nuw i64 %i.bc, %i.av, !dbg !47917
  store i64 %i.be, ptr %i.ay, align 8, !dbg !47918, !alias.scope !47805, !noalias !47806
  br label %_RNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize17fixed_size_binaryNtB4_6FSBVec22extend_from_byte_slice.exit, !dbg !47919

bb.t:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !47920
  %i.bg = udiv i64 %i.p, %.sroa.0.0.i, !dbg !47921 ; 2 uses
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4E7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.bg), !dbg !47922, !noalias !47806
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !47923
  %i.bi = load ptr, ptr %i.bh, align 8, !dbg !47923, !alias.scope !47805, !noalias !47806, !nonnull !1984, !noundef !1984
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !47924 ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !47924, !alias.scope !47805, !noalias !47806, !noundef !1984 ; 2 uses
  %i.bl = icmp ult i64 %i.bk, 2305843009213693952, !dbg !47925
  call void @llvm.assume(i1 %i.bl), !dbg !47926
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bk, !dbg !47927
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull readonly align 1 %i.n, i64 range(i64 0, -9223372036854775808) %i.p, i1 false), !dbg !47928
  %i.bn = load i64, ptr %i.bj, align 8, !dbg !47929, !alias.scope !47805, !noalias !47806, !noundef !1984 ; 2 uses
  %i.bo = icmp ult i64 %i.bn, 2305843009213693952, !dbg !47930
  call void @llvm.assume(i1 %i.bo), !dbg !47931
  %i.bp = add nuw i64 %i.bn, %i.bg, !dbg !47932
  store i64 %i.bp, ptr %i.bj, align 8, !dbg !47933, !alias.scope !47805, !noalias !47806
  br label %_RNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize17fixed_size_binaryNtB4_6FSBVec22extend_from_byte_slice.exit, !dbg !47934

bb.u:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !47935
  %i.br = udiv i64 %i.p, %.sroa.0.0.i, !dbg !47936 ; 2 uses
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes8Alignment8E7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bq, i64 noundef %i.br), !dbg !47937, !noalias !47806
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !47938
  %i.bt = load ptr, ptr %i.bs, align 8, !dbg !47938, !alias.scope !47805, !noalias !47806, !nonnull !1984, !noundef !1984
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !47939 ; 3 uses
  %i.bv = load i64, ptr %i.bu, align 8, !dbg !47939, !alias.scope !47805, !noalias !47806, !noundef !1984 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, 1152921504606846976, !dbg !47940
  call void @llvm.assume(i1 %i.bw), !dbg !47941
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bv, !dbg !47942
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bx, ptr nonnull readonly align 1 %i.n, i64 range(i64 0, -9223372036854775808) %i.p, i1 false), !dbg !47943
  %i.by = load i64, ptr %i.bu, align 8, !dbg !47944, !alias.scope !47805, !noalias !47806, !noundef !1984 ; 2 uses
  %i.bz = icmp ult i64 %i.by, 1152921504606846976, !dbg !47945
  call void @llvm.assume(i1 %i.bz), !dbg !47946
  %i.ca = add nuw i64 %i.by, %i.br, !dbg !47947
  store i64 %i.ca, ptr %i.bu, align 8, !dbg !47948, !alias.scope !47805, !noalias !47806
  br label %_RNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize17fixed_size_binaryNtB4_6FSBVec22extend_from_byte_slice.exit, !dbg !47949

bb.v:                                             ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !47950
  %i.cc = udiv i64 %i.p, %.sroa.0.0.i, !dbg !47951 ; 2 uses
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes12Alignment4E7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cb, i64 noundef %i.cc), !dbg !47952, !noalias !47806
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !47953
  %i.ce = load ptr, ptr %i.cd, align 8, !dbg !47953, !alias.scope !47805, !noalias !47806, !nonnull !1984, !noundef !1984
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !47954 ; 3 uses
  %i.cg = load i64, ptr %i.cf, align 8, !dbg !47954, !alias.scope !47805, !noalias !47806, !noundef !1984 ; 2 uses
  %i.ch = icmp ult i64 %i.cg, 768614336404564651, !dbg !47955
  call void @llvm.assume(i1 %i.ch), !dbg !47956
  %i.ci = getelementptr inbounds nuw [12 x i8], ptr %i.ce, i64 %i.cg, !dbg !47957
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ci, ptr nonnull readonly align 1 %i.n, i64 range(i64 0, -9223372036854775808) %i.p, i1 false), !dbg !47958
  %i.cj = load i64, ptr %i.cf, align 8, !dbg !47959, !alias.scope !47805, !noalias !47806, !noundef !1984 ; 2 uses
  %i.ck = icmp ult i64 %i.cj, 768614336404564651, !dbg !47960
  call void @llvm.assume(i1 %i.ck), !dbg !47961
  %i.cl = add nuw i64 %i.cj, %i.cc, !dbg !47962
  store i64 %i.cl, ptr %i.cf, align 8, !dbg !47963, !alias.scope !47805, !noalias !47806
  br label %_RNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize17fixed_size_binaryNtB4_6FSBVec22extend_from_byte_slice.exit, !dbg !47964

bb.w:                                             ; preds = %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !47965
  %i.cn = udiv i64 %i.p, %.sroa.0.0.i, !dbg !47966 ; 2 uses
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes16Alignment16E7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cm, i64 noundef %i.cn), !dbg !47967, !noalias !47806
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !47968
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !47968, !alias.scope !47805, !noalias !47806, !nonnull !1984, !noundef !1984
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !47969 ; 3 uses
  %i.cr = load i64, ptr %i.cq, align 8, !dbg !47969, !alias.scope !47805, !noalias !47806, !noundef !1984 ; 2 uses
  %i.cs = icmp ult i64 %i.cr, 576460752303423488, !dbg !47970
  call void @llvm.assume(i1 %i.cs), !dbg !47971
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %i.cr, !dbg !47972
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ct, ptr nonnull readonly align 1 %i.n, i64 range(i64 0, -9223372036854775808) %i.p, i1 false), !dbg !47973
  %i.cu = load i64, ptr %i.cq, align 8, !dbg !47974, !alias.scope !47805, !noalias !47806, !noundef !1984 ; 2 uses
  %i.cv = icmp ult i64 %i.cu, 576460752303423488, !dbg !47975
  call void @llvm.assume(i1 %i.cv), !dbg !47976
  %i.cw = add nuw i64 %i.cu, %i.cn, !dbg !47977
  store i64 %i.cw, ptr %i.cq, align 8, !dbg !47978, !alias.scope !47805, !noalias !47806
  br label %_RNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize17fixed_size_binaryNtB4_6FSBVec22extend_from_byte_slice.exit, !dbg !47979

bb.x:                                             ; preds = %bb.n
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !47980
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes32Alignment16E7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cx, i64 noundef %i.z), !dbg !47981, !noalias !47806
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !47982
  %i.cz = load ptr, ptr %i.cy, align 8, !dbg !47982, !alias.scope !47805, !noalias !47806, !nonnull !1984, !noundef !1984
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !47983 ; 3 uses
  %i.db = load i64, ptr %i.da, align 8, !dbg !47983, !alias.scope !47805, !noalias !47806, !noundef !1984 ; 2 uses
  %i.dc = icmp ult i64 %i.db, 288230376151711744, !dbg !47984
  call void @llvm.assume(i1 %i.dc), !dbg !47985
  %i.dd = getelementptr inbounds nuw [32 x i8], ptr %i.cz, i64 %i.db, !dbg !47986
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dd, ptr nonnull readonly align 1 %i.n, i64 range(i64 0, -9223372036854775808) %i.p, i1 false), !dbg !47987
  %i.de = load i64, ptr %i.da, align 8, !dbg !47988, !alias.scope !47805, !noalias !47806, !noundef !1984 ; 2 uses
  %i.df = icmp ult i64 %i.de, 288230376151711744, !dbg !47989
  call void @llvm.assume(i1 %i.df), !dbg !47990
  %i.dg = add nuw i64 %i.de, %i.z, !dbg !47991
  store i64 %i.dg, ptr %i.da, align 8, !dbg !47992, !alias.scope !47805, !noalias !47806
  br label %_RNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize17fixed_size_binaryNtB4_6FSBVec22extend_from_byte_slice.exit, !dbg !47993

bb.y:                                             ; preds = %bb.l
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @130, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #35, !dbg !47994, !noalias !47808
  unreachable, !dbg !47994

_RNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize17fixed_size_binaryNtB4_6FSBVec22extend_from_byte_slice.exit: ; preds = %bb.l, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfISxE4fmY1Y_14polars_parquet.exit.i, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !47995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !47995
  %i.dh = getelementptr inbounds nuw i8, ptr %i.g, i64 64, !dbg !47996 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !dbg !47996, !noundef !1984
  %.not = icmp eq ptr %i.di, null, !dbg !47996
  br i1 %.not, label %bb.aa, label %bb.z, !dbg !47997

bb.z:                                             ; preds = %_RNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize17fixed_size_binaryNtB4_6FSBVec22extend_from_byte_slice.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !47998
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder18extend_from_bitmap(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.dj, ptr noundef nonnull align 8 %i.dh), !dbg !47999
  br label %bb.ab, !dbg !48000

bb.aa:                                            ; preds = %_RNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize17fixed_size_binaryNtB4_6FSBVec22extend_from_byte_slice.exit
  br i1 %5, label %bb.ac, label %bb.ab, !dbg !48001

bb.ab:                                            ; preds = %bb.af, %bb.ag, %bb.aa, %bb.z
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !48002
  ret void, !dbg !48003

bb.ac:                                            ; preds = %bb.aa
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !48004
  %i.dl = getelementptr inbounds nuw i8, ptr %i.g, i64 56, !dbg !48005
  %i.dm = load i64, ptr %i.dl, align 8, !dbg !48005, !noundef !1984 ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 0, !dbg !48006
  br i1 %i.dn, label %bb.ae, label %bb.ad, !dbg !48006

bb.ad:                                            ; preds = %bb.ac
  %i.do = load i64, ptr %i.o, align 8, !dbg !48007, !noundef !1984
  %i.dp = udiv i64 %i.do, %i.dm, !dbg !48006      ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 64, !dbg !48008 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !48008, !noundef !1984 ; 2 uses
  %i.ds = and i64 %i.dr, 63, !dbg !48008          ; 2 uses
  %i.dt = add i64 %i.ds, %i.dp, !dbg !48009
  %i.du = icmp ult i64 %i.dt, 64, !dbg !48009
  br i1 %i.du, label %bb.ag, label %bb.af, !dbg !48009, !prof !2217

bb.ae:                                            ; preds = %bb.ac
  call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #35, !dbg !48006
  unreachable, !dbg !48006

bb.af:                                            ; preds = %bb.ad
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder20extend_constant_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.dk, i64 noundef %i.dp, i1 noundef zeroext true), !dbg !48010
  br label %bb.ab, !dbg !48010

bb.ag:                                            ; preds = %bb.ad
  %i.dv = and i64 %i.dp, 63, !dbg !48011
  %notmask = shl nsw i64 -1, %i.dv, !dbg !48011
  %i.dw = xor i64 %notmask, -1, !dbg !48011
  %i.dx = shl i64 %i.dw, %i.ds, !dbg !48012
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 56, !dbg !48013 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !dbg !48013, !noundef !1984
  %i.ea = or i64 %i.dz, %i.dx, !dbg !48013
  store i64 %i.ea, ptr %i.dy, align 8, !dbg !48013
  %i.eb = add i64 %i.dr, %i.dp, !dbg !48014
  store i64 %i.eb, ptr %i.dq, align 8, !dbg !48014
  br label %bb.ab, !dbg !48015
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize17fixed_size_binaryNtB5_13BinaryDecoderNtNtB7_5utils7Decoder15extend_constant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(88) %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %4) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !48016 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 7 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 2 uses
  %i.g = load i8, ptr %4, align 8, !dbg !48249, !range !48144, !noundef !1984
  switch i8 %i.g, label %bb.d [
    i8 0, label %bb.b
    i8 14, label %bb.c
  ], !dbg !48250, !prof !48150

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXs0_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize17fixed_size_binaryTNtB5_6FSBVecNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder13BitmapBuilderENtNtB7_5utils7Decoded12extend_nulls(ptr noalias noundef nonnull align 8 dereferenceable(88) %2, i64 noundef %3), !dbg !48251
  br label %bb.d, !dbg !48252

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8, !dbg !48253
  %i.i = load ptr, ptr %i.h, align 8, !dbg !48253, !nonnull !1984, !noundef !1984 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !48253
  %i.k = load i64, ptr %i.j, align 8, !dbg !48253, !noundef !1984 ; 13 uses
  store i64 %i.k, ptr %i.f, align 8, !dbg !48254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !48255
  %i.l = load i64, ptr %2, align 8, !dbg !48256, !range !2210, !noundef !1984 ; 2 uses
  %i.m = xor i64 %i.l, -9223372036854775808, !dbg !48256
  %i.n = icmp slt i64 %i.l, 0, !dbg !48256
  %i.o = select i1 %i.n, i64 %i.m, i64 7, !dbg !48256 ; 2 uses
  switch i64 %i.o, label %bb.e [
    i64 0, label %bb.m
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.h
    i64 4, label %bb.i
    i64 5, label %bb.j
    i64 6, label %bb.k
    i64 7, label %bb.l
  ], !dbg !48257

bb.d:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @292) #35, !dbg !48258
  unreachable, !dbg !48258

bb.e:                                             ; preds = %bb.o, %bb.c
  unreachable, !dbg !48259

bb.f:                                             ; preds = %bb.c
  br label %bb.m, !dbg !48260

bb.g:                                             ; preds = %bb.c
  br label %bb.m, !dbg !48261

bb.h:                                             ; preds = %bb.c
  br label %bb.m, !dbg !48262

bb.i:                                             ; preds = %bb.c
  br label %bb.m, !dbg !48263

bb.j:                                             ; preds = %bb.c
  br label %bb.m, !dbg !48264

bb.k:                                             ; preds = %bb.c
  br label %bb.m, !dbg !48265

bb.l:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !48266
  %i.q = load i64, ptr %i.p, align 8, !dbg !48266, !noundef !1984
  br label %bb.m, !dbg !48267

bb.m:                                             ; preds = %bb.c, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.sink = phi i64 [ %i.q, %bb.l ], [ 32, %bb.k ], [ 16, %bb.j ], [ 12, %bb.i ], [ 8, %bb.h ], [ 4, %bb.g ], [ 2, %bb.f ], [ 1, %bb.c ] ; 2 uses
  store i64 %.sink, ptr %i.e, align 8, !dbg !48268
  %i.r = icmp eq i64 %i.k, %.sink, !dbg !48269
  br i1 %i.r, label %bb.o, label %bb.n, !dbg !48269, !prof !2217

bb.n:                                             ; preds = %bb.m
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @284) #35, !dbg !48270
  unreachable, !dbg !48270

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !48271
  switch i64 %i.o, label %bb.e [
    i64 0, label %bb.p
    i64 1, label %bb.q
    i64 2, label %bb.r
    i64 3, label %bb.s
    i64 4, label %bb.t
    i64 5, label %bb.u
    i64 6, label %bb.v
    i64 7, label %bb.w
  ], !dbg !48272

bb.p:                                             ; preds = %bb.o
  %i.s = icmp eq i64 %i.k, 1, !dbg !48273
  br i1 %i.s, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj1_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit, label %.thread, !dbg !48273

bb.q:                                             ; preds = %bb.o
  %.not59 = icmp eq i64 %i.k, 2, !dbg !48274
  br i1 %.not59, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj2_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit, label %.critedge, !dbg !48274

bb.r:                                             ; preds = %bb.o
end_hunk_1
begin_hunk_2_@_RNvXs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize17fixed_size_binaryNtB5_13BinaryDecoderNtNtB7_5utils7Decoder26extend_filtered_with_state:bb.a
  %i.ai = alloca [40 x i8], align 8               ; 4 uses
  %i.aj = alloca [40 x i8], align 8               ; 4 uses
  %i.ak = alloca [8 x i8], align 8                ; 14 uses
  %i.al = alloca [40 x i8], align 8               ; 21 uses
  %.sroa.0 = alloca [24 x i8], align 8            ; 2 uses
  %i.am = alloca [40 x i8], align 8               ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 40, !dbg !49289 ; 9 uses
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !49289, !noundef !1984
  %.not = icmp eq ptr %i.ao, null, !dbg !49289
  br i1 %.not, label %bb.c, label %bb.b, !dbg !49290

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !dbg !49291
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64, !dbg !49291
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !49291 ; 12 uses
  %i.ap = load i64, ptr %1, align 8, !dbg !49292, !noundef !1984 ; 4 uses
  %i.aq = load ptr, ptr %2, align 8, !dbg !49293, !align !2060, !noundef !1984 ; 17 uses
  %.not7 = icmp eq ptr %i.aq, null, !dbg !49294
  br i1 %.not7, label %bb.ew, label %bb.i, !dbg !49295, !prof !2090

bb.c:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 48, !dbg !49296
  %i.as = load ptr, ptr %i.ar, align 8, !dbg !49296, !nonnull !1984, !noundef !1984
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 56, !dbg !49296
  %i.au = load i64, ptr %i.at, align 8, !dbg !49296, !noundef !1984
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 64, !dbg !49297
  %i.aw = load i64, ptr %i.av, align 8, !dbg !49297, !noundef !1984
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !49298
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 72, !dbg !49299
  %i.az = load i8, ptr %i.ay, align 8, !dbg !49299, !range !2059, !noundef !1984
  %i.ba = trunc nuw i8 %i.az to i1, !dbg !49299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !dbg !49300
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.am, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !49300
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !49301 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !dbg !49301, !noundef !1984
  %.not6 = icmp eq ptr %i.bc, null, !dbg !49301
  %. = select i1 %.not6, ptr null, ptr %i.bb, !dbg !49302
  invoke fastcc void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize17fixed_size_binary16decode_fsb_plain(ptr noalias noundef align 8 captures(address) dereferenceable(32) %0, i64 noundef %i.aw, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.as, i64 noundef %i.au, ptr noalias noundef align 8 dereferenceable(32) %3, ptr noalias noundef align 8 dereferenceable(56) %i.ax, i1 noundef zeroext %i.ba, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.am, ptr noundef align 8 %.)
          to label %bb.d unwind label %.body.thread34, !dbg !49303

.body.thread34:                                   ; preds = %.invoke94, %.invoke, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez, !dbg !49304

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !dbg !49305
  br label %bb.e, !dbg !49306

bb.e:                                             ; preds = %bb.ey, %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !49304
  %.val10 = load ptr, ptr %i.bd, align 8, !dbg !49304, !noundef !1984 ; 4 uses
  %i.be = icmp eq ptr %.val10, null, !dbg !49307
  br i1 %i.be, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils5StateNtNtBL_17fixed_size_binary13BinaryDecoderEEBR_.exit, label %bb.f, !dbg !49307

bb.f:                                             ; preds = %bb.e
  %i.bf = load i64, ptr %.val10, align 8, !dbg !49308, !range !2133, !noalias !49130, !noundef !1984
  %i.bg = icmp eq i64 %i.bf, 3, !dbg !49309
  br i1 %i.bg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils5StateNtNtBL_17fixed_size_binary13BinaryDecoderEEBR_.exit, label %bb.g, !dbg !49309

bb.g:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %.val10, i64 24, !dbg !49310
  %i.bi = atomicrmw sub ptr %i.bh, i64 1 release, align 8, !dbg !49311, !noalias !49130
  %i.bj = icmp eq i64 %i.bi, 1, !dbg !49312
  br i1 %i.bj, label %bb.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils5StateNtNtBL_17fixed_size_binary13BinaryDecoderEEBR_.exit, !dbg !49312, !prof !2090

bb.h:                                             ; preds = %bb.g
  fence acquire, !dbg !49313
  call fastcc void @_RNvMs9_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE9drop_slowCsfISxE4fmY1Y_14polars_parquet(ptr %.val10), !dbg !49314, !noalias !49130
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils5StateNtNtBL_17fixed_size_binary13BinaryDecoderEEBR_.exit, !dbg !49314

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utils5StateNtNtBL_17fixed_size_binary13BinaryDecoderEEBR_.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  ret void, !dbg !49315

bb.i:                                             ; preds = %bb.b
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !49316 ; 8 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 72, !dbg !49317
  %i.bm = load i8, ptr %i.bl, align 8, !dbg !49317, !range !2059, !noundef !1984
  %i.bn = trunc nuw i8 %i.bm to i1, !dbg !49317   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !dbg !49318
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !49318
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !49319 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !dbg !49319, !noundef !1984
  %.not8 = icmp eq ptr %i.bp, null, !dbg !49319
  %.9 = select i1 %.not8, ptr null, ptr %i.bo, !dbg !49320 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49132), !dbg !49321
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49133), !dbg !49321
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49134), !dbg !49321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store i64 %i.ap, ptr %i.ak, align 8, !noalias !49135
  %i.bq = icmp eq i64 %i.ap, 0, !dbg !49322
  br i1 %i.bq, label %bb.j, label %bb.k, !dbg !49322, !prof !2090

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @130, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @227) #33
          to label %bb.m unwind label %.thread381.i, !dbg !49323, !noalias !49137

bb.k:                                             ; preds = %bb.i
  %i.br = load i64, ptr %3, align 8, !dbg !49324, !range !2210, !alias.scope !49133, !noalias !49139, !noundef !1984 ; 2 uses
  %i.bs = xor i64 %i.br, -9223372036854775808, !dbg !49324
  %i.bt = icmp slt i64 %i.br, 0, !dbg !49324
  %i.bu = select i1 %i.bt, i64 %i.bs, i64 7, !dbg !49324
  switch i64 %i.bu, label %bb.n [
    i64 0, label %bb.ab
    i64 1, label %bb.o
    i64 2, label %bb.q
    i64 3, label %bb.s
    i64 4, label %bb.u
    i64 5, label %bb.w
    i64 6, label %bb.y
    i64 7, label %bb.aa
  ], !dbg !49325

.thread381.i:                                     ; preds = %bb.eq, %bb.as, %.thread607.i, %bb.aq, %.invoke.i, %bb.j
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = extractvalue { ptr, i32 } %lpad.thr_comm.i, 0
  %i.bw = extractvalue { ptr, i32 } %lpad.thr_comm.i, 1
  br label %.thread.i, !dbg !49183

bb.l:                                             ; preds = %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ac
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bx = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp.i, 0
  %i.by = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp.i, 1
  br label %.body.thread, !dbg !49183

bb.m:                                             ; preds = %bb.ed, %bb.cf, %bb.aw, %bb.as, %bb.j
  unreachable

default.unreachable:                              ; preds = %bb.cc, %bb.cb
  unreachable

bb.n:                                             ; preds = %bb.k
  unreachable, !dbg !49326

bb.o:                                             ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !49327
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aq, i64 40, !dbg !49328
  %i.cb = load ptr, ptr %i.ca, align 8, !dbg !49328, !noalias !49135, !noundef !1984 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aq, i64 48, !dbg !49329
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !49329, !noalias !49135, !noundef !1984 ; 2 uses
  %i.ce = ptrtoint ptr %i.cb to i64, !dbg !49330
  %i.cf = and i64 %i.ce, 1, !dbg !49331
  %i.cg = icmp eq i64 %i.cf, 0, !dbg !49332
  br i1 %i.cg, label %bb.p, label %.invoke.i, !dbg !49332

bb.p:                                             ; preds = %bb.o
  %i.ch = and i64 %i.cd, 1, !dbg !49333
  %i.ci = icmp eq i64 %i.ch, 0, !dbg !49333
  br i1 %i.ci, label %_RINvNtCs6TExLLFF6W4_8bytemuck8internal14try_cast_slicehNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2ECsfISxE4fmY1Y_14polars_parquet.exit.i, label %.invoke.i, !dbg !49333

bb.q:                                             ; preds = %bb.k
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !49334
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aq, i64 40, !dbg !49335
  %i.cl = load ptr, ptr %i.ck, align 8, !dbg !49335, !noalias !49135, !noundef !1984 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aq, i64 48, !dbg !49336
  %i.cn = load i64, ptr %i.cm, align 8, !dbg !49336, !noalias !49135, !noundef !1984 ; 2 uses
  %i.co = ptrtoint ptr %i.cl to i64, !dbg !49337
  %i.cp = and i64 %i.co, 3, !dbg !49338
  %i.cq = icmp eq i64 %i.cp, 0, !dbg !49339
  br i1 %i.cq, label %bb.r, label %.invoke.i, !dbg !49339

bb.r:                                             ; preds = %bb.q
  %i.cr = and i64 %i.cn, 3, !dbg !49340
  %i.cs = icmp eq i64 %i.cr, 0, !dbg !49340
  br i1 %i.cs, label %_RINvNtCs6TExLLFF6W4_8bytemuck8internal14try_cast_slicehNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4ECsfISxE4fmY1Y_14polars_parquet.exit.i, label %.invoke.i, !dbg !49340

bb.s:                                             ; preds = %bb.k
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !49341
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aq, i64 40, !dbg !49342
  %i.cv = load ptr, ptr %i.cu, align 8, !dbg !49342, !noalias !49135, !noundef !1984 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aq, i64 48, !dbg !49343
  %i.cx = load i64, ptr %i.cw, align 8, !dbg !49343, !noalias !49135, !noundef !1984 ; 2 uses
  %i.cy = ptrtoint ptr %i.cv to i64, !dbg !49344
  %i.cz = and i64 %i.cy, 7, !dbg !49345
  %i.da = icmp eq i64 %i.cz, 0, !dbg !49346
  br i1 %i.da, label %bb.t, label %.invoke.i, !dbg !49346

bb.t:                                             ; preds = %bb.s
  %i.db = and i64 %i.cx, 7, !dbg !49347
  %i.dc = icmp eq i64 %i.db, 0, !dbg !49347
  br i1 %i.dc, label %_RINvNtCs6TExLLFF6W4_8bytemuck8internal14try_cast_slicehNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes8Alignment8ECsfISxE4fmY1Y_14polars_parquet.exit.i, label %.invoke.i, !dbg !49347

bb.u:                                             ; preds = %bb.k
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !49348
  %i.de = getelementptr inbounds nuw i8, ptr %i.aq, i64 40, !dbg !49349
  %i.df = load ptr, ptr %i.de, align 8, !dbg !49349, !noalias !49135, !noundef !1984 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.aq, i64 48, !dbg !49350
  %i.dh = load i64, ptr %i.dg, align 8, !dbg !49350, !noalias !49135, !noundef !1984 ; 2 uses
  %i.di = ptrtoint ptr %i.df to i64, !dbg !49351
  %i.dj = and i64 %i.di, 3, !dbg !49352
  %i.dk = icmp eq i64 %i.dj, 0, !dbg !49353
  br i1 %i.dk, label %bb.v, label %.invoke.i, !dbg !49353

bb.v:                                             ; preds = %bb.u
  %i.dl = urem i64 %i.dh, 12, !dbg !49354
  %i.dm = udiv i64 %i.dh, 12, !dbg !49355         ; 2 uses
  %i.dn = icmp eq i64 %i.dl, 0, !dbg !49354
  br i1 %i.dn, label %_RINvNtCs6TExLLFF6W4_8bytemuck8internal14try_cast_slicehNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes12Alignment4ECsfISxE4fmY1Y_14polars_parquet.exit.i, label %.invoke.i, !dbg !49354

bb.w:                                             ; preds = %bb.k
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !49356
  %i.dp = getelementptr inbounds nuw i8, ptr %i.aq, i64 40, !dbg !49357
  %i.dq = load ptr, ptr %i.dp, align 8, !dbg !49357, !noalias !49135, !noundef !1984 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.aq, i64 48, !dbg !49358
  %i.ds = load i64, ptr %i.dr, align 8, !dbg !49358, !noalias !49135, !noundef !1984 ; 2 uses
  %i.dt = ptrtoint ptr %i.dq to i64, !dbg !49359
  %i.du = and i64 %i.dt, 15, !dbg !49360
  %i.dv = icmp eq i64 %i.du, 0, !dbg !49361
  br i1 %i.dv, label %bb.x, label %.invoke.i, !dbg !49361

bb.x:                                             ; preds = %bb.w
  %i.dw = and i64 %i.ds, 15, !dbg !49362
  %i.dx = icmp eq i64 %i.dw, 0, !dbg !49362
  br i1 %i.dx, label %_RINvNtCs6TExLLFF6W4_8bytemuck8internal14try_cast_slicehNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes16Alignment16ECsfISxE4fmY1Y_14polars_parquet.exit.i, label %.invoke.i, !dbg !49362

bb.y:                                             ; preds = %bb.k
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !49363
  %i.dz = getelementptr inbounds nuw i8, ptr %i.aq, i64 40, !dbg !49364
  %i.ea = load ptr, ptr %i.dz, align 8, !dbg !49364, !noalias !49135, !noundef !1984 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.aq, i64 48, !dbg !49365
  %i.ec = load i64, ptr %i.eb, align 8, !dbg !49365, !noalias !49135, !noundef !1984 ; 2 uses
  %i.ed = ptrtoint ptr %i.ea to i64, !dbg !49366
  %i.ee = and i64 %i.ed, 15, !dbg !49367
  %i.ef = icmp eq i64 %i.ee, 0, !dbg !49368
  br i1 %i.ef, label %bb.z, label %.invoke.i, !dbg !49368

bb.z:                                             ; preds = %bb.y
  %i.eg = and i64 %i.ec, 31, !dbg !49369
  %i.eh = icmp eq i64 %i.eg, 0, !dbg !49369
  br i1 %i.eh, label %_RINvNtCs6TExLLFF6W4_8bytemuck8internal14try_cast_slicehNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes32Alignment16ECsfISxE4fmY1Y_14polars_parquet.exit.i, label %.invoke.i, !dbg !49369

bb.aa:                                            ; preds = %bb.k
  %i.ei = getelementptr inbounds nuw i8, ptr %i.aq, i64 40, !dbg !49370
  %i.ej = load ptr, ptr %i.ei, align 8, !dbg !49370, !noalias !49135, !noundef !1984 ; 7 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.aq, i64 48, !dbg !49371
  %i.el = load i64, ptr %i.ek, align 8, !dbg !49371, !noalias !49135, !noundef !1984 ; 9 uses
  br i1 %i.bn, label %bb.aq, label %.thread607.i, !dbg !49372

bb.ab:                                            ; preds = %bb.k
  %i.em = getelementptr inbounds nuw i8, ptr %i.aq, i64 40, !dbg !49373
  %i.en = load ptr, ptr %i.em, align 8, !dbg !49373, !noalias !49135, !noundef !1984 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.aq, i64 48, !dbg !49374
  %i.ep = load i64, ptr %i.eo, align 8, !dbg !49374, !noalias !49135, !noundef !1984 ; 2 uses
  %i.eq = icmp eq ptr %i.en, null, !dbg !49375
  br i1 %i.eq, label %.invoke.i, label %bb.ac, !dbg !49376, !prof !2090

.invoke.i:                                        ; preds = %_RINvNtCs6TExLLFF6W4_8bytemuck8internal14try_cast_slicehNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes32Alignment16ECsfISxE4fmY1Y_14polars_parquet.exit.i, %_RINvNtCs6TExLLFF6W4_8bytemuck8internal14try_cast_slicehNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes16Alignment16ECsfISxE4fmY1Y_14polars_parquet.exit.i, %_RINvNtCs6TExLLFF6W4_8bytemuck8internal14try_cast_slicehNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes12Alignment4ECsfISxE4fmY1Y_14polars_parquet.exit.i, %_RINvNtCs6TExLLFF6W4_8bytemuck8internal14try_cast_slicehNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes8Alignment8ECsfISxE4fmY1Y_14polars_parquet.exit.i, %_RINvNtCs6TExLLFF6W4_8bytemuck8internal14try_cast_slicehNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4ECsfISxE4fmY1Y_14polars_parquet.exit.i, %_RINvNtCs6TExLLFF6W4_8bytemuck8internal14try_cast_slicehNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2ECsfISxE4fmY1Y_14polars_parquet.exit.i, %bb.ab, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %.sroa.6368.0401.sink.i = phi i64 [ 0, %bb.w ], [ 0, %bb.u ], [ 0, %bb.s ], [ 0, %bb.q ], [ 0, %bb.o ], [ 0, %bb.y ], [ %i.es, %_RINvNtCs6TExLLFF6W4_8bytemuck8internal14try_cast_slicehNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2ECsfISxE4fmY1Y_14polars_parquet.exit.i ], [ 1, %bb.p ], [ %i.eu, %_RINvNtCs6TExLLFF6W4_8bytemuck8internal14try_cast_slicehNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4ECsfISxE4fmY1Y_14polars_parquet.exit.i ], [ 1, %bb.r ], [ %i.ew, %_RINvNtCs6TExLLFF6W4_8bytemuck8internal14try_cast_slicehNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes8Alignment8ECsfISxE4fmY1Y_14polars_parquet.exit.i ], [ 1, %bb.t ], [ %i.dm, %_RINvNtCs6TExLLFF6W4_8bytemuck8internal14try_cast_slicehNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes12Alignment4ECsfISxE4fmY1Y_14polars_parquet.exit.i ], [ 1, %bb.v ], [ %i.ez, %_RINvNtCs6TExLLFF6W4_8bytemuck8internal14try_cast_slicehNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes16Alignment16ECsfISxE4fmY1Y_14polars_parquet.exit.i ], [ 1, %bb.x ], [ %i.fb, %_RINvNtCs6TExLLFF6W4_8bytemuck8internal14try_cast_slicehNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes32Alignment16ECsfISxE4fmY1Y_14polars_parquet.exit.i ], [ 1, %bb.z ], [ %i.ep, %bb.ab ]
  %.sroa.6368.8.extract.trunc.i = trunc i64 %.sroa.6368.0401.sink.i to i8, !dbg !49377
  invoke void @_RINvNtCs6TExLLFF6W4_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 10, i8 noundef %.sroa.6368.8.extract.trunc.i) #33
          to label %.cont.i unwind label %.thread381.i, !dbg !49377, !noalias !49137

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !49378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !49379, !noalias !49135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !49379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !49380, !noalias !49135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !dbg !49380
  %.sroa.9.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !49380
  store i64 %.sroa.9.0.copyload, ptr %.sroa.9.0..sroa_idx28, align 8, !dbg !49380, !noalias !49162
  invoke void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded20decode_dict_dispatchNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1RSB1I_EBa_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.en, i64 noundef %i.ep, i1 noundef zeroext %i.bn, ptr noundef align 8 %.9, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bk, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.er)
          to label %bb.ad unwind label %bb.l, !dbg !49380, !noalias !49163

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !49380, !noalias !49135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !49381, !noalias !49135
  br label %bb.ey, !dbg !49382

_RINvNtCs6TExLLFF6W4_8bytemuck8internal14try_cast_slicehNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2ECsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %bb.p
  %i.es = lshr exact i64 %i.cd, 1, !dbg !49383    ; 2 uses
  %i.et = icmp eq ptr %i.cb, null, !dbg !49384
  br i1 %i.et, label %.invoke.i, label %bb.ae, !dbg !49385, !prof !49164

bb.ae:                                            ; preds = %_RINvNtCs6TExLLFF6W4_8bytemuck8internal14try_cast_slicehNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2ECsfISxE4fmY1Y_14polars_parquet.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !49386, !noalias !49135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !49386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !49387, !noalias !49135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !dbg !49387
  %.sroa.9.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !49387
  store i64 %.sroa.9.0.copyload, ptr %.sroa.9.0..sroa_idx26, align 8, !dbg !49387, !noalias !49162
  invoke void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded20decode_dict_dispatchNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2RSB1I_EBa_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.cb, i64 noundef %i.es, i1 noundef zeroext %i.bn, ptr noundef align 8 %.9, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bk, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %bb.af unwind label %bb.l, !dbg !49387, !noalias !49163

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !49387, !noalias !49135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !49388, !noalias !49135
  br label %bb.ey, !dbg !49389

_RINvNtCs6TExLLFF6W4_8bytemuck8internal14try_cast_slicehNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4ECsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %bb.r
  %i.eu = lshr exact i64 %i.cn, 2, !dbg !49390    ; 2 uses
  %i.ev = icmp eq ptr %i.cl, null, !dbg !49391
  br i1 %i.ev, label %.invoke.i, label %bb.ag, !dbg !49392, !prof !49164

bb.ag:                                            ; preds = %_RINvNtCs6TExLLFF6W4_8bytemuck8internal14try_cast_slicehNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4ECsfISxE4fmY1Y_14polars_parquet.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !49393, !noalias !49135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !49393
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !49394, !noalias !49135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !dbg !49394
  %.sroa.9.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !49394
  store i64 %.sroa.9.0.copyload, ptr %.sroa.9.0..sroa_idx24, align 8, !dbg !49394, !noalias !49162
  invoke void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded20decode_dict_dispatchNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4RSB1I_EBa_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.cl, i64 noundef %i.eu, i1 noundef zeroext %i.bn, ptr noundef align 8 %.9, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bk, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cj)
          to label %bb.ah unwind label %bb.l, !dbg !49394, !noalias !49163

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !49394, !noalias !49135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !49395, !noalias !49135
  br label %bb.ey, !dbg !49396

_RINvNtCs6TExLLFF6W4_8bytemuck8internal14try_cast_slicehNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes8Alignment8ECsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %bb.t
  %i.ew = lshr exact i64 %i.cx, 3, !dbg !49397    ; 2 uses
  %i.ex = icmp eq ptr %i.cv, null, !dbg !49398
  br i1 %i.ex, label %.invoke.i, label %bb.ai, !dbg !49399, !prof !49164

bb.ai:                                            ; preds = %_RINvNtCs6TExLLFF6W4_8bytemuck8internal14try_cast_slicehNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes8Alignment8ECsfISxE4fmY1Y_14polars_parquet.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !49400, !noalias !49135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !49400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !49401, !noalias !49135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !dbg !49401
  %.sroa.9.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !49401
  store i64 %.sroa.9.0.copyload, ptr %.sroa.9.0..sroa_idx22, align 8, !dbg !49401, !noalias !49162
  invoke void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded20decode_dict_dispatchNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes8Alignment8RSB1I_EBa_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cv, i64 noundef %i.ew, i1 noundef zeroext %i.bn, ptr noundef align 8 %.9, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bk, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ct)
          to label %bb.aj unwind label %bb.l, !dbg !49401, !noalias !49163

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !49401, !noalias !49135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !49402, !noalias !49135
  br label %bb.ey, !dbg !49403

_RINvNtCs6TExLLFF6W4_8bytemuck8internal14try_cast_slicehNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes12Alignment4ECsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %bb.v
  %i.ey = icmp eq ptr %i.df, null, !dbg !49404
  br i1 %i.ey, label %.invoke.i, label %bb.ak, !dbg !49405, !prof !49164

bb.ak:                                            ; preds = %_RINvNtCs6TExLLFF6W4_8bytemuck8internal14try_cast_slicehNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes12Alignment4ECsfISxE4fmY1Y_14polars_parquet.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !49406, !noalias !49135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !49406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !49407, !noalias !49135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !dbg !49407
  %.sroa.9.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !49407
  store i64 %.sroa.9.0.copyload, ptr %.sroa.9.0..sroa_idx20, align 8, !dbg !49407, !noalias !49162
  invoke void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded20decode_dict_dispatchNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes12Alignment4RSB1I_EBa_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.df, i64 noundef %i.dm, i1 noundef zeroext %i.bn, ptr noundef align 8 %.9, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bk, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dd)
          to label %bb.al unwind label %bb.l, !dbg !49407, !noalias !49163

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !49407, !noalias !49135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !49408, !noalias !49135
  br label %bb.ey, !dbg !49409

_RINvNtCs6TExLLFF6W4_8bytemuck8internal14try_cast_slicehNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes16Alignment16ECsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %bb.x
  %i.ez = lshr exact i64 %i.ds, 4, !dbg !49410    ; 2 uses
  %i.fa = icmp eq ptr %i.dq, null, !dbg !49411
  br i1 %i.fa, label %.invoke.i, label %bb.am, !dbg !49412, !prof !49164

bb.am:                                            ; preds = %_RINvNtCs6TExLLFF6W4_8bytemuck8internal14try_cast_slicehNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes16Alignment16ECsfISxE4fmY1Y_14polars_parquet.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !49413, !noalias !49135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !49413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !49414, !noalias !49135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !dbg !49414
  %.sroa.9.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !49414
  store i64 %.sroa.9.0.copyload, ptr %.sroa.9.0..sroa_idx18, align 8, !dbg !49414, !noalias !49162
  invoke void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded20decode_dict_dispatchNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes16Alignment16RSB1I_EBa_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.dq, i64 noundef %i.ez, i1 noundef zeroext %i.bn, ptr noundef align 8 %.9, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.ae, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bk, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %bb.an unwind label %bb.l, !dbg !49414, !noalias !49163

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !49414, !noalias !49135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !49415, !noalias !49135
  br label %bb.ey, !dbg !49416

_RINvNtCs6TExLLFF6W4_8bytemuck8internal14try_cast_slicehNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes32Alignment16ECsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %bb.z
  %i.fb = lshr exact i64 %i.ec, 5, !dbg !49417    ; 2 uses
  %i.fc = icmp eq ptr %i.ea, null, !dbg !49418
  br i1 %i.fc, label %.invoke.i, label %bb.ao, !dbg !49419, !prof !49164

bb.ao:                                            ; preds = %_RINvNtCs6TExLLFF6W4_8bytemuck8internal14try_cast_slicehNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes32Alignment16ECsfISxE4fmY1Y_14polars_parquet.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !49420, !noalias !49135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !49420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !49421, !noalias !49135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !dbg !49421
  %.sroa.9.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !49421
  store i64 %.sroa.9.0.copyload, ptr %.sroa.9.0..sroa_idx16, align 8, !dbg !49421, !noalias !49162
  invoke void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded20decode_dict_dispatchNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes32Alignment16RSB1I_EBa_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.ea, i64 noundef %i.fb, i1 noundef zeroext %i.bn, ptr noundef align 8 %.9, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bk, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %bb.ap unwind label %bb.l, !dbg !49421, !noalias !49163

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !49421, !noalias !49135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !49422, !noalias !49135
  br label %bb.ey, !dbg !49423

bb.aq:                                            ; preds = %bb.aa
  %i.fd = load i64, ptr %i.al, align 8, !dbg !49424, !range !2133, !alias.scope !49134, !noalias !49165, !noundef !1984
  %.not.i = icmp eq i64 %i.fd, 3, !dbg !49424
  %..i = select i1 %.not.i, ptr null, ptr %i.al, !dbg !49425
  %i.fe = udiv i64 %.sroa.9.0.copyload, %i.ap, !dbg !49426
  invoke void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize18dictionary_encoded15append_validity(ptr noundef align 8 %.9, ptr noundef align 8 %..i, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bk, i64 noundef %i.fe)
end_hunk_2

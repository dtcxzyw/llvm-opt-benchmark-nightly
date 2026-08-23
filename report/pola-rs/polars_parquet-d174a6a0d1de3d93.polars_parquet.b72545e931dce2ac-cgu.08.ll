Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.08?download=true
inline.NumInlined: 3445
inline.NumDeleted: 1834
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RINvMs1_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodeNtB6_15VarIntProcessor6decodesECsfISxE4fmY1Y_14polars_parquet:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !164
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165
  %i.c = load i64, ptr %i.b, align 8, !dbg !165, !noundef !16 ; 3 uses
  %i.d = icmp ult i64 %i.c, 11
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !166, !prof !135

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.c, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #35, !dbg !175
  unreachable, !dbg !175

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !176
  call void @_RNvXs7_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodesNtB5_6VarInt10decode_var(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.c), !dbg !164
  %i.f = load i64, ptr %i.a, align 8, !dbg !177, !range !51, !noundef !16 ; 2 uses
  %i.g = trunc nuw i64 %i.f to i1, !dbg !179
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !179
  %i.i = load i16, ptr %i.h, align 8, !dbg !179
  %.sroa.3.0 = select i1 %i.g, i16 %i.i, i16 undef, !dbg !179
  %i.j = trunc nuw i64 %i.f to i16, !dbg !179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !180
  %i.k = insertvalue { i16, i16 } poison, i16 %i.j, 0, !dbg !181
  %i.l = insertvalue { i16, i16 } %i.k, i16 %.sroa.3.0, 1, !dbg !181
  ret { i16, i16 } %i.l, !dbg !181
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMs1_NtNtNtCs1gC9x3uey1Y_21polars_parquet_format6thrift6varint6decodeNtB6_15VarIntProcessor6decodexECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 !dbg !182 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !183
  %i.b = load i64, ptr %i.a, align 8, !dbg !183, !noundef !16 ; 12 uses
  %i.c = icmp ult i64 %i.b, 11
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !184, !prof !135

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.b, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #35, !dbg !193
  unreachable, !dbg !193

bb.c:                                             ; preds = %bb.a
  %i.d = icmp samesign eq i64 %i.b, 0, !dbg !194
  br i1 %i.d, label %bb.x, label %bb.d, !dbg !219

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !220
  %i.f = load i8, ptr %i.e, align 8, !dbg !221, !alias.scope !228, !noalias !233, !noundef !16 ; 2 uses
  %i.g = and i8 %i.f, 127, !dbg !236
  %i.h = zext nneg i8 %i.g to i64, !dbg !241      ; 2 uses
  %i.i = icmp sgt i8 %i.f, -1, !dbg !243
  br i1 %i.i, label %bb.w, label %bb.e, !dbg !243

bb.e:                                             ; preds = %bb.d
  %i.j = icmp samesign eq i64 %i.b, 1, !dbg !194
  br i1 %i.j, label %bb.x, label %bb.f, !dbg !219

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 17, !dbg !244
  %i.l = load i8, ptr %i.k, align 1, !dbg !221, !alias.scope !228, !noalias !233, !noundef !16 ; 2 uses
  %i.m = and i8 %i.l, 127, !dbg !236
  %i.n = zext nneg i8 %i.m to i64, !dbg !241
  %i.o = shl nuw nsw i64 %i.n, 7, !dbg !241
  %i.p = or disjoint i64 %i.o, %i.h, !dbg !248    ; 2 uses
  %i.q = icmp sgt i8 %i.l, -1, !dbg !243
  br i1 %i.q, label %bb.w, label %bb.g, !dbg !243

bb.g:                                             ; preds = %bb.f
  %i.r = icmp samesign eq i64 %i.b, 2, !dbg !194
  br i1 %i.r, label %bb.x, label %bb.h, !dbg !219

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 18, !dbg !244
  %i.t = load i8, ptr %i.s, align 2, !dbg !221, !alias.scope !228, !noalias !233, !noundef !16 ; 2 uses
  %i.u = and i8 %i.t, 127, !dbg !236
  %i.v = zext nneg i8 %i.u to i64, !dbg !241
  %i.w = shl nuw nsw i64 %i.v, 14, !dbg !241
  %i.x = or disjoint i64 %i.w, %i.p, !dbg !248    ; 2 uses
  %i.y = icmp sgt i8 %i.t, -1, !dbg !243
  br i1 %i.y, label %bb.w, label %bb.i, !dbg !243

bb.i:                                             ; preds = %bb.h
  %i.z = icmp samesign eq i64 %i.b, 3, !dbg !194
  br i1 %i.z, label %bb.x, label %bb.j, !dbg !219

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 19, !dbg !244
  %i.ab = load i8, ptr %i.aa, align 1, !dbg !221, !alias.scope !228, !noalias !233, !noundef !16 ; 2 uses
  %i.ac = and i8 %i.ab, 127, !dbg !236
  %i.ad = zext nneg i8 %i.ac to i64, !dbg !241
  %i.ae = shl nuw nsw i64 %i.ad, 21, !dbg !241
  %i.af = or disjoint i64 %i.ae, %i.x, !dbg !248  ; 2 uses
  %i.ag = icmp sgt i8 %i.ab, -1, !dbg !243
  br i1 %i.ag, label %bb.w, label %bb.k, !dbg !243

bb.k:                                             ; preds = %bb.j
  %i.ah = icmp samesign eq i64 %i.b, 4, !dbg !194
  br i1 %i.ah, label %bb.x, label %bb.l, !dbg !219

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !244
  %i.aj = load i8, ptr %i.ai, align 4, !dbg !221, !alias.scope !228, !noalias !233, !noundef !16 ; 2 uses
  %i.ak = and i8 %i.aj, 127, !dbg !236
  %i.al = zext nneg i8 %i.ak to i64, !dbg !241
  %i.am = shl nuw nsw i64 %i.al, 28, !dbg !241
  %i.an = or disjoint i64 %i.am, %i.af, !dbg !248 ; 2 uses
  %i.ao = icmp sgt i8 %i.aj, -1, !dbg !243
  br i1 %i.ao, label %bb.w, label %bb.m, !dbg !243

bb.m:                                             ; preds = %bb.l
  %i.ap = icmp samesign eq i64 %i.b, 5, !dbg !194
  br i1 %i.ap, label %bb.x, label %bb.n, !dbg !219

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 21, !dbg !244
  %i.ar = load i8, ptr %i.aq, align 1, !dbg !221, !alias.scope !228, !noalias !233, !noundef !16 ; 2 uses
  %i.as = and i8 %i.ar, 127, !dbg !236
  %i.at = zext nneg i8 %i.as to i64, !dbg !241
  %i.au = shl nuw nsw i64 %i.at, 35, !dbg !241
  %i.av = or disjoint i64 %i.au, %i.an, !dbg !248 ; 2 uses
  %i.aw = icmp sgt i8 %i.ar, -1, !dbg !243
  br i1 %i.aw, label %bb.w, label %bb.o, !dbg !243

bb.o:                                             ; preds = %bb.n
  %i.ax = icmp samesign eq i64 %i.b, 6, !dbg !194
  br i1 %i.ax, label %bb.x, label %bb.p, !dbg !219

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 22, !dbg !244
  %i.az = load i8, ptr %i.ay, align 2, !dbg !221, !alias.scope !228, !noalias !233, !noundef !16 ; 2 uses
  %i.ba = and i8 %i.az, 127, !dbg !236
  %i.bb = zext nneg i8 %i.ba to i64, !dbg !241
  %i.bc = shl nuw nsw i64 %i.bb, 42, !dbg !241
  %i.bd = or i64 %i.bc, %i.av, !dbg !248          ; 2 uses
  %i.be = icmp sgt i8 %i.az, -1, !dbg !243
  br i1 %i.be, label %bb.w, label %bb.q, !dbg !243

bb.q:                                             ; preds = %bb.p
  %i.bf = icmp samesign eq i64 %i.b, 7, !dbg !194
  br i1 %i.bf, label %bb.x, label %bb.r, !dbg !219

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !244
  %i.bh = load i8, ptr %i.bg, align 1, !dbg !221, !alias.scope !228, !noalias !233, !noundef !16 ; 2 uses
  %i.bi = and i8 %i.bh, 127, !dbg !236
  %i.bj = zext nneg i8 %i.bi to i64, !dbg !241
  %i.bk = shl nuw nsw i64 %i.bj, 49, !dbg !241
  %i.bl = or i64 %i.bk, %i.bd, !dbg !248          ; 2 uses
  %i.bm = icmp sgt i8 %i.bh, -1, !dbg !243
  br i1 %i.bm, label %bb.w, label %bb.s, !dbg !243

bb.s:                                             ; preds = %bb.r
  %i.bn = icmp samesign eq i64 %i.b, 8, !dbg !194
  br i1 %i.bn, label %bb.x, label %bb.t, !dbg !219

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !244
  %i.bp = load i8, ptr %i.bo, align 8, !dbg !221, !alias.scope !228, !noalias !233, !noundef !16 ; 2 uses
  %i.bq = and i8 %i.bp, 127, !dbg !236
  %i.br = zext nneg i8 %i.bq to i64, !dbg !241
  %i.bs = shl nuw nsw i64 %i.br, 56, !dbg !241
  %i.bt = or i64 %i.bs, %i.bl, !dbg !248          ; 2 uses
  %i.bu = icmp sgt i8 %i.bp, -1, !dbg !243
  br i1 %i.bu, label %bb.w, label %bb.u, !dbg !243

bb.u:                                             ; preds = %bb.t
  %i.bv = icmp samesign eq i64 %i.b, 9, !dbg !194
  br i1 %i.bv, label %bb.x, label %bb.v, !dbg !219

bb.v:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 25, !dbg !244
  %i.bx = load i8, ptr %i.bw, align 1, !dbg !221, !alias.scope !228, !noalias !233, !noundef !16 ; 2 uses
  %i.by = zext i8 %i.bx to i64, !dbg !241
  %i.bz = shl i64 %i.by, 63, !dbg !241
  %i.ca = or i64 %i.bz, %i.bt, !dbg !248
  %i.cb = icmp sgt i8 %i.bx, -1, !dbg !243
  br i1 %i.cb, label %bb.w, label %bb.x, !dbg !243

bb.w:                                             ; preds = %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d
  %.sroa.4.0.i = phi i64 [ %i.bt, %bb.t ], [ %i.h, %bb.d ], [ %i.p, %bb.f ], [ %i.x, %bb.h ], [ %i.af, %bb.j ], [ %i.an, %bb.l ], [ %i.av, %bb.n ], [ %i.bd, %bb.p ], [ %i.bl, %bb.r ], [ %i.ca, %bb.v ], !dbg !249 ; 2 uses
  %i.cc = lshr i64 %.sroa.4.0.i, 1, !dbg !250
  %i.cd = and i64 %.sroa.4.0.i, 1, !dbg !253
  %i.ce = sub nsw i64 0, %i.cd, !dbg !254
  %i.cf = xor i64 %i.cc, %i.ce, !dbg !255
  br label %bb.x, !dbg !256

bb.x:                                             ; preds = %bb.e, %bb.g, %bb.i, %bb.k, %bb.m, %bb.o, %bb.q, %bb.s, %bb.u, %bb.v, %bb.c, %bb.w
  %.sroa.3.0 = phi i64 [ %i.cf, %bb.w ], [ undef, %bb.c ], [ undef, %bb.v ], [ undef, %bb.u ], [ undef, %bb.s ], [ undef, %bb.q ], [ undef, %bb.o ], [ undef, %bb.m ], [ undef, %bb.k ], [ undef, %bb.i ], [ undef, %bb.g ], [ undef, %bb.e ]
  %.sroa.0.0 = phi i64 [ 1, %bb.w ], [ 0, %bb.c ], [ 0, %bb.v ], [ 0, %bb.u ], [ 0, %bb.s ], [ 0, %bb.q ], [ 0, %bb.o ], [ 0, %bb.m ], [ 0, %bb.k ], [ 0, %bb.i ], [ 0, %bb.g ], [ 0, %bb.e ], !dbg !257
  %i.cg = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !256
  %i.ch = insertvalue { i64, i64 } %i.cg, i64 %.sroa.3.0, 1, !dbg !256
  ret { i64, i64 } %i.ch, !dbg !256
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMs3_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxShEuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE12get_index_ofB1n_ECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 !dbg !258 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !263
  %i.b = load i64, ptr %i.a, align 8, !dbg !263, !noundef !16 ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 0, label %_RNvXCs6WitO0SpKBq_10equivalentShINtB2_10EquivalentINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxBs_EE10equivalentCsfISxE4fmY1Y_14polars_parquet.exit.thread
    i64 1, label %bb.b
  ], !dbg !280

_RNvXCs6WitO0SpKBq_10equivalentShINtB2_10EquivalentINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxBs_EE10equivalentCsfISxE4fmY1Y_14polars_parquet.exit.thread: ; preds = %_RNvXCs6WitO0SpKBq_10equivalentShINtB2_10EquivalentINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxBs_EE10equivalentCsfISxE4fmY1Y_14polars_parquet.exit, %bb.b, %bb.a, %bb.c
  %.sroa.5.0 = phi i64 [ %i.n, %bb.c ], [ undef, %bb.a ], [ 0, %bb.b ], [ 0, %_RNvXCs6WitO0SpKBq_10equivalentShINtB2_10EquivalentINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxBs_EE10equivalentCsfISxE4fmY1Y_14polars_parquet.exit ], !dbg !281
  %.sroa.0.0 = phi i64 [ %i.m, %bb.c ], [ %i.b, %bb.a ], [ 0, %bb.b ], [ %spec.select, %_RNvXCs6WitO0SpKBq_10equivalentShINtB2_10EquivalentINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxBs_EE10equivalentCsfISxE4fmY1Y_14polars_parquet.exit ], !dbg !281
  %i.c = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !282
  %i.d = insertvalue { i64, i64 } %i.c, i64 %.sroa.5.0, 1, !dbg !282
  ret { i64, i64 } %i.d, !dbg !282

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !283
  %i.f = load ptr, ptr %i.e, align 8, !dbg !283, !nonnull !16, !noundef !16 ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8, !dbg !296
  %.val2 = load i64, ptr %i.g, align 8, !dbg !296, !noundef !16
  %i.h = icmp eq i64 %2, %.val2, !dbg !298
  br i1 %i.h, label %_RNvXCs6WitO0SpKBq_10equivalentShINtB2_10EquivalentINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxBs_EE10equivalentCsfISxE4fmY1Y_14polars_parquet.exit, label %_RNvXCs6WitO0SpKBq_10equivalentShINtB2_10EquivalentINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxBs_EE10equivalentCsfISxE4fmY1Y_14polars_parquet.exit.thread, !dbg !298

_RNvXCs6WitO0SpKBq_10equivalentShINtB2_10EquivalentINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxBs_EE10equivalentCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.b
  %.val = load ptr, ptr %i.f, align 8, !dbg !296, !nonnull !16, !noundef !16
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %1, ptr nonnull readonly %.val, i64 range(i64 0, -9223372036854775808) %2), !dbg !311, !alias.scope !316
  %bcmp.i.i.i.fr = freeze i32 %bcmp.i.i.i, !dbg !311
  %i.i = icmp eq i32 %bcmp.i.i.i.fr, 0, !dbg !311
  %spec.select = zext i1 %i.i to i64, !dbg !320
  br label %_RNvXCs6WitO0SpKBq_10equivalentShINtB2_10EquivalentINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxBs_EE10equivalentCsfISxE4fmY1Y_14polars_parquet.exit.thread, !dbg !320

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !326
  %i.k = tail call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRShECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !329
  %i.l = tail call { i64, i64 } @_RINvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB5_4CoreINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxShEuE12get_index_ofB1k_ECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, i64 noundef %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !330 ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0, !dbg !330
  %i.n = extractvalue { i64, i64 } %i.l, 1, !dbg !330
  br label %_RNvXCs6WitO0SpKBq_10equivalentShINtB2_10EquivalentINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxBs_EE10equivalentCsfISxE4fmY1Y_14polars_parquet.exit.thread, !dbg !332
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE5drainINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejEECsfISxE4fmY1Y_14polars_parquet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 !dbg !333 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !334 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !334, !noundef !16 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1, !dbg !337
  tail call void @llvm.assume(i1 %i.c), !dbg !339
  %i.d = tail call { i64, i64 } @_RINvNtNtCscgRAwXFJnXP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsfISxE4fmY1Y_14polars_parquet(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4), !dbg !340 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0, !dbg !340 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1, !dbg !340 ; 3 uses
  store i64 %i.e, ptr %i.a, align 8, !dbg !342
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !346
  %i.h = load ptr, ptr %i.g, align 8, !dbg !346, !nonnull !16, !noundef !16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.e, !dbg !355
  %i.j = sub i64 %i.b, %i.f, !dbg !361
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f, !dbg !363
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !376
  store i64 %i.f, ptr %i.l, align 8, !dbg !376
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !376
  store i64 %i.j, ptr %i.m, align 8, !dbg !376
  store ptr %i.i, ptr %0, align 8, !dbg !376
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !376
  store ptr %i.k, ptr %i.n, align 8, !dbg !376
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !376
  store ptr %1, ptr %i.o, align 8, !dbg !376
  ret void, !dbg !377
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE5drainINtNtNtCscgRAwXFJnXP_4core3ops5range7RangeTojEECsfISxE4fmY1Y_14polars_parquet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #1 !dbg !378 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !379 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !379, !noundef !16 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1, !dbg !382
  tail call void @llvm.assume(i1 %i.c), !dbg !384
  %i.d = tail call { i64, i64 } @_RINvNtNtCscgRAwXFJnXP_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsfISxE4fmY1Y_14polars_parquet(i64 noundef %2, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4), !dbg !385 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0, !dbg !385 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1, !dbg !385 ; 3 uses
  store i64 %i.e, ptr %i.a, align 8, !dbg !387
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !391
  %i.h = load ptr, ptr %i.g, align 8, !dbg !391, !nonnull !16, !noundef !16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.e, !dbg !400
  %i.j = sub i64 %i.b, %i.f, !dbg !403
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f, !dbg !405
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !414
  store i64 %i.f, ptr %i.l, align 8, !dbg !414
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !414
  store i64 %i.j, ptr %i.m, align 8, !dbg !414
  store ptr %i.i, ptr %0, align 8, !dbg !414
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !414
  store ptr %i.k, ptr %i.n, align 8, !dbg !414
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !414
  store ptr %1, ptr %i.o, align 8, !dbg !414
  ret void, !dbg !415
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxE5drainINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejEECsfISxE4fmY1Y_14polars_parquet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 !dbg !416 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !417 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !417, !noundef !16 ; 3 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976, !dbg !420
  tail call void @llvm.assume(i1 %i.c), !dbg !422
  %i.d = tail call { i64, i64 } @_RINvNtNtCscgRAwXFJnXP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsfISxE4fmY1Y_14polars_parquet(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4), !dbg !423 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0, !dbg !423 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1, !dbg !423 ; 3 uses
  store i64 %i.e, ptr %i.a, align 8, !dbg !425
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !429
  %i.h = load ptr, ptr %i.g, align 8, !dbg !429, !nonnull !16, !noundef !16 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.e, !dbg !438
  %i.j = sub i64 %i.b, %i.f, !dbg !441
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.f, !dbg !443
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !452
  store i64 %i.f, ptr %i.l, align 8, !dbg !452
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !452
  store i64 %i.j, ptr %i.m, align 8, !dbg !452
  store ptr %i.i, ptr %0, align 8, !dbg !452
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !452
  store ptr %i.k, ptr %i.n, align 8, !dbg !452
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !452
  store ptr %1, ptr %i.o, align 8, !dbg !452
  ret void, !dbg !453
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6cloned6ClonedINtNtNtB1U_5slice4iter4IterBG_EEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !454 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !455
  call void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c), !dbg !456
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !457
  %i.f = load i64, ptr %i.e, align 8, !dbg !457, !range !51, !noundef !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !457
  %i.h = load i64, ptr %i.g, align 8, !dbg !457   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !458
  %i.i = trunc nuw i64 %i.f to i1, !dbg !459
  br i1 %i.i, label %bb.b, label %bb.d, !dbg !459, !prof !462

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !463 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !dbg !463, !alias.scope !466, !noundef !16 ; 3 uses
  %i.l = load i64, ptr %0, align 8, !dbg !469, !range !478, !alias.scope !466, !noundef !16
  %i.m = sub i64 %i.l, %i.k, !dbg !479
  %i.n = icmp ugt i64 %i.h, %i.m, !dbg !482
  br i1 %i.n, label %bb.c, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE7reserveCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !483, !prof !80

bb.c:                                             ; preds = %bb.b
  call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k, i64 noundef %i.h, i64 noundef 8, i64 noundef 24), !dbg !484
  %.pre = load i64, ptr %i.j, align 8, !dbg !485
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE7reserveCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !484

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE7reserveCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %i.k, %bb.b ], [ %.pre, %bb.c ], !dbg !485
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !492
  %i.q = load ptr, ptr %i.p, align 8, !dbg !492, !nonnull !16, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !501, !noalias !510
  store ptr %i.j, ptr %i.a, align 8, !dbg !513
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !513
  store i64 %i.o, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !513
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !513
  store ptr %i.q, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !513
  call void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2i_8for_each4callB1s_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3y_3VecB1s_E14extend_trustedBP_E0E0ECsfISxE4fmY1Y_14polars_parquet(ptr noundef nonnull %1, ptr noundef %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !517, !noalias !510
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !518, !noalias !510
  ret void, !dbg !519

bb.d:                                             ; preds = %bb.a
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #36, !dbg !520
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_n7RepeatNBG_EECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !521 {
bb.a:
  %.sroa.4 = alloca [16 x i8], align 8            ; 8 uses
  %.val = load i64, ptr %1, align 8, !dbg !522, !noundef !16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !523 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !523, !alias.scope !528, !noundef !16 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !dbg !531, !range !478, !alias.scope !528, !noundef !16
  %i.d = sub i64 %i.c, %i.b, !dbg !540
  %i.e = icmp ugt i64 %.val, %i.d, !dbg !543
  br i1 %i.e, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE7reserveCsfISxE4fmY1Y_14polars_parquet.exit.thread, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE7reserveCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !544, !prof !80

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE7reserveCsfISxE4fmY1Y_14polars_parquet.exit.thread: ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %.val, i64 noundef 4, i64 noundef 16), !dbg !545
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !546
  %i.g = load ptr, ptr %i.f, align 8, !dbg !546, !nonnull !16, !noundef !16
  %i.h = load i64, ptr %i.a, align 8, !dbg !555, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4), !dbg !559
  %.sroa.4.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !559
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx8, i64 16, i1 false), !dbg !559
  br label %.lr.ph.i.i, !dbg !561

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE7reserveCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !546
  %i.j = load ptr, ptr %i.i, align 8, !dbg !546, !nonnull !16, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4), !dbg !559
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !559
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i64 16, i1 false), !dbg !559
  %.not.i7.i.i = icmp eq i64 %.val, 0, !dbg !576
  br i1 %.not.i7.i.i, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_n7RepeatNNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2O_3VecBZ_E14extend_trustedB3_E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %.lr.ph.i.i, !dbg !561

.lr.ph.i.i:                                       ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE7reserveCsfISxE4fmY1Y_14polars_parquet.exit.thread, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE7reserveCsfISxE4fmY1Y_14polars_parquet.exit
  %i.k = phi i64 [ %i.h, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE7reserveCsfISxE4fmY1Y_14polars_parquet.exit.thread ], [ %i.b, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE7reserveCsfISxE4fmY1Y_14polars_parquet.exit ] ; 3 uses
  %i.l = phi ptr [ %i.g, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE7reserveCsfISxE4fmY1Y_14polars_parquet.exit.thread ], [ %i.j, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE7reserveCsfISxE4fmY1Y_14polars_parquet.exit ] ; 3 uses
  %xtraiter = and i64 %.val, 1, !dbg !561
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !561
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa, !dbg !561

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i.i
  %i.m = add nsw i64 %.val, -1, !dbg !577
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k, !dbg !584
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false), !dbg !594, !noalias !597
  %i.o = add i64 %i.k, 1, !dbg !600               ; 2 uses
  br label %.prol.loopexit, !dbg !561

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i.i
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i ], [ %i.o, %.prol.loopexit.unr-lcssa ]
  %.unr = phi i64 [ %i.k, %.lr.ph.i.i ], [ %i.o, %.prol.loopexit.unr-lcssa ]
  %.unr10 = phi i64 [ %.val, %.lr.ph.i.i ], [ %i.m, %.prol.loopexit.unr-lcssa ]
  %i.p = icmp eq i64 %.val, 1, !dbg !561
  br i1 %i.p, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_n7RepeatNNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2O_3VecBZ_E14extend_trustedB3_E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %.lr.ph.i.i.new, !dbg !561

.lr.ph.i.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i.i.new
  %i.q = phi i64 [ %i.w, %.lr.ph.i.i.new ], [ %.unr, %.prol.loopexit ] ; 3 uses
end_hunk_0

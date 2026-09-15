Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_cache-873b4e3417b63821.influxdb3_cache.d4363e94e8c1e8df-cgu.08?download=true
inline.NumInlined: 713
inline.NumDeleted: 269
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsidB8gjke19X_15influxdb3_cache:bb.a

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !8, !alias.scope !1226, !noundef !4 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %.sroa.0.0.i14.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1226
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !1226
  call fastcc void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %.sroa.0.0.i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !1226
  %i.j = load i64, ptr %i.a, align 8, !range !5, !noalias !1226, !noundef !4
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !6, !noalias !1226, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !1226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1226
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #30
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !1226, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1226
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !1226
  %i.q = icmp sgt i64 %.sroa.0.0.i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %.sroa.0.0.i14.i, ptr %0, align 8, !alias.scope !1226
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYNtNtCs3L39Jvi82fL_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRINtNtCsaaj5M71uUq9_5bimap3mem7WrappereEECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1255, !noalias !1256, !noundef !4
  %i.c = load i64, ptr %0, align 8, !alias.scope !1255, !noalias !1256, !noundef !4 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1255, !noalias !1256, !noundef !4 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1255, !noalias !1256, !noundef !4 ; 3 uses
  %i.h = add i64 %i.b, %2
  %i.i = mul i64 %i.h, 6364136223846793005        ; 3 uses
  %i.j = icmp samesign ugt i64 %2, 8
  br i1 %i.j, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp samesign ugt i64 %2, 1
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp eq i64 %2, 1
  br i1 %i.l, label %bb.e, label %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.m = icmp samesign ugt i64 %2, 3
  %i.n = getelementptr i8, ptr %1, i64 %2         ; 2 uses
  br i1 %i.m, label %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i.i.i, label %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.o = load i8, ptr %1, align 1, !alias.scope !1257, !noalias !1258, !noundef !4
  %i.p = zext i8 %i.o to i64                      ; 2 uses
  br label %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i.i

_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i.i.i: ; preds = %bb.d
  %.sroa.0.0.copyload.i29.i.i.i.i.i = load i16, ptr %1, align 1, !alias.scope !1259, !noalias !1260
  %i.q = zext i16 %.sroa.0.0.copyload.i29.i.i.i.i.i to i64
  %i.r = getelementptr i8, ptr %i.n, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !1257, !noalias !1258, !noundef !4
  %i.t = zext i8 %i.s to i64
  br label %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i.i

_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i.i.i: ; preds = %bb.d
  %.sroa.0.0.copyload.i31.i.i.i.i.i = load i32, ptr %1, align 1, !alias.scope !1259, !noalias !1261
  %i.u = zext i32 %.sroa.0.0.copyload.i31.i.i.i.i.i to i64
  %i.v = getelementptr i8, ptr %i.n, i64 -4
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i32, ptr %i.v, align 1, !alias.scope !1259, !noalias !1258
  %i.w = zext i32 %.sroa.0.0.copyload.i.i.i.i.i.i to i64
  br label %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i.i

_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i.i: ; preds = %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i.i.i, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i.i.i, %bb.e, %bb.c
  %.sroa.7.0.i.i.i.i.i = phi i64 [ %i.w, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i.i.i ], [ %i.t, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i.i.i ], [ %i.p, %bb.e ], [ 0, %bb.c ]
  %.sroa.068.0.i.i.i.i.i = phi i64 [ %i.u, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i.i.i ], [ %i.q, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i.i.i ], [ %i.p, %bb.e ], [ 0, %bb.c ]
  %i.x = xor i64 %.sroa.068.0.i.i.i.i.i, %i.e
  %i.y = xor i64 %.sroa.7.0.i.i.i.i.i, %i.g
  %i.z = zext i64 %i.x to i128
  %i.aa = zext i64 %i.y to i128
  %i.ab = mul nuw i128 %i.z, %i.aa                ; 2 uses
  %i.ac = lshr i128 %i.ab, 64
  %i.ad = xor i128 %i.ac, %i.ab
  %i.ae = trunc i128 %i.ad to i64
  %i.af = add i64 %i.i, %i.c
  %i.ag = xor i64 %i.af, %i.ae                    ; 2 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 23)
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRINtNtCsaaj5M71uUq9_5bimap3mem7WrappereENtB8_4Hash4hashNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherECsidB8gjke19X_15influxdb3_cache.exit

bb.f:                                             ; preds = %bb.a
  %i.ai = icmp samesign ugt i64 %2, 16
  br i1 %i.ai, label %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice14read_last_u128.exit.i.i.i.i.i, label %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u64.exit.i.i.i.i.i

_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u64.exit.i.i.i.i.i: ; preds = %bb.f
  %.sroa.0.0.copyload.i33.i.i.i.i.i = load i64, ptr %1, align 1, !alias.scope !1259, !noalias !1262
  %i.aj = getelementptr i8, ptr %1, i64 %2
  %i.ak = getelementptr i8, ptr %i.aj, i64 -8
  %.sroa.0.0.copyload.i25.i.i.i.i.i = load i64, ptr %i.ak, align 1, !alias.scope !1259, !noalias !1263
  %i.al = xor i64 %.sroa.0.0.copyload.i33.i.i.i.i.i, %i.e
  %i.am = xor i64 %.sroa.0.0.copyload.i25.i.i.i.i.i, %i.g
  %i.an = zext i64 %i.al to i128
  %i.ao = zext i64 %i.am to i128
  %i.ap = mul nuw i128 %i.ao, %i.an               ; 2 uses
  %i.aq = lshr i128 %i.ap, 64
  %i.ar = xor i128 %i.aq, %i.ap
  %i.as = trunc i128 %i.ar to i64
  %i.at = add i64 %i.i, %i.c
  %i.au = xor i64 %i.at, %i.as                    ; 2 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 23)
  br label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRINtNtCsaaj5M71uUq9_5bimap3mem7WrappereENtB8_4Hash4hashNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherECsidB8gjke19X_15influxdb3_cache.exit

_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice14read_last_u128.exit.i.i.i.i.i: ; preds = %bb.f
  %i.aw = getelementptr i8, ptr %1, i64 %2
  %i.ax = getelementptr i8, ptr %i.aw, i64 -16
  %.sroa.0.0.copyload.i27.i.i.i.i.i = load i128, ptr %i.ax, align 1, !alias.scope !1259, !noalias !1263 ; 2 uses
  %.sroa.017.0.extract.trunc.i.i.i.i.i = trunc i128 %.sroa.0.0.copyload.i27.i.i.i.i.i to i64
  %.sroa.4.0.extract.shift.i.i.i.i.i = lshr i128 %.sroa.0.0.copyload.i27.i.i.i.i.i, 64
  %i.ay = xor i64 %i.e, %.sroa.017.0.extract.trunc.i.i.i.i.i
  %i.az = zext i64 %i.ay to i128
  %i.ba = zext i64 %i.g to i128                   ; 2 uses
  %i.bb = xor i128 %.sroa.4.0.extract.shift.i.i.i.i.i, %i.ba
  %i.bc = mul nuw i128 %i.bb, %i.az               ; 2 uses
  %i.bd = lshr i128 %i.bc, 64
  %i.be = xor i128 %i.bd, %i.bc
  %i.bf = trunc i128 %i.be to i64
  %i.bg = add i64 %i.i, %i.c
  %i.bh = xor i64 %i.bg, %i.bf                    ; 2 uses
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 23)
  br label %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i.i

_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i.i: ; preds = %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i.i, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice14read_last_u128.exit.i.i.i.i.i
  %.sroa.0.0105.i.i.i.i.i = phi ptr [ %1, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice14read_last_u128.exit.i.i.i.i.i ], [ %i.bj, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.11.0104.i.i.i.i.i = phi i64 [ %2, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice14read_last_u128.exit.i.i.i.i.i ], [ %i.bk, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i.i ]
  %storemerge103.i.i.i.i.i = phi i64 [ %i.bi, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice14read_last_u128.exit.i.i.i.i.i ], [ %i.bu, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0105.i.i.i.i.i, i64 16
  %i.bk = add nsw i64 %.sroa.11.0104.i.i.i.i.i, -16 ; 2 uses
  %.sroa.0.0.copyload.i35.i.i.i.i.i = load i128, ptr %.sroa.0.0105.i.i.i.i.i, align 1, !alias.scope !1259, !noalias !1264 ; 2 uses
  %.sroa.018.0.extract.trunc.i.i.i.i.i = trunc i128 %.sroa.0.0.copyload.i35.i.i.i.i.i to i64
  %.sroa.419.0.extract.shift.i.i.i.i.i = lshr i128 %.sroa.0.0.copyload.i35.i.i.i.i.i, 64
  %i.bl = xor i64 %i.e, %.sroa.018.0.extract.trunc.i.i.i.i.i
  %i.bm = zext i64 %i.bl to i128
  %i.bn = xor i128 %.sroa.419.0.extract.shift.i.i.i.i.i, %i.ba
  %i.bo = mul nuw i128 %i.bn, %i.bm               ; 2 uses
  %i.bp = lshr i128 %i.bo, 64
  %i.bq = xor i128 %i.bp, %i.bo
  %i.br = trunc i128 %i.bq to i64
  %i.bs = add i64 %storemerge103.i.i.i.i.i, %i.c
  %i.bt = xor i64 %i.bs, %i.br                    ; 2 uses
  %i.bu = tail call noundef i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 23) ; 2 uses
  %i.bv = icmp ugt i64 %i.bk, 16
  br i1 %i.bv, label %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i.i, label %_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRINtNtCsaaj5M71uUq9_5bimap3mem7WrappereENtB8_4Hash4hashNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherECsidB8gjke19X_15influxdb3_cache.exit

_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRINtNtCsaaj5M71uUq9_5bimap3mem7WrappereENtB8_4Hash4hashNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherECsidB8gjke19X_15influxdb3_cache.exit: ; preds = %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i.i, %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i.i, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u64.exit.i.i.i.i.i
  %.lcssa.sink.i.i.i.i.i = phi i64 [ %i.ah, %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i.i ], [ %i.av, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u64.exit.i.i.i.i.i ], [ %i.bu, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128.exit.i.i.i.i.i ]
  %i.bw = xor i64 %.lcssa.sink.i.i.i.i.i, 255
  %i.bx = zext i64 %i.bw to i128
  %i.by = mul nuw nsw i128 %i.bx, 6364136223846793005 ; 2 uses
  %i.bz = lshr i128 %i.by, 64
  %i.ca = xor i128 %i.bz, %i.by                   ; 2 uses
  %i.cb = trunc i128 %i.ca to i64
  %i.cc = and i128 %i.ca, 18446744073709551615
  %i.cd = zext i64 %i.c to i128
  %i.ce = mul nuw i128 %i.cc, %i.cd               ; 2 uses
  %i.cf = lshr i128 %i.ce, 64
  %i.cg = xor i128 %i.cf, %i.ce
  %i.ch = trunc i128 %i.cg to i64                 ; 2 uses
  %i.ci = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 %i.cb)
  ret i64 %i.ci
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYINtNtNtCs6ePPILGZvJ2_11arrow_array5array16dictionary_array15DictionaryArrayNtNtBb_5types9Int32TypeENtB9_5Array9into_data6vtableCsidB8gjke19X_15influxdb3_cache(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noundef nonnull captures(address) %1) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RNvXs1_NtNtCs6ePPILGZvJ2_11arrow_array5array16dictionary_arrayNtNtCs6OdVU8oGBWI_10arrow_data4data9ArrayDataINtNtCs4NRVxsYgnAr_4core7convert4FromINtB5_15DictionaryArrayNtNtB9_5types9Int32TypeEE4fromCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef align 8 captures(address) dereferenceable(144) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs6ePPILGZvJ2_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericStringTypelEE13with_capacityCsidB8gjke19X_15influxdb3_cache(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = add i64 %1, 1                            ; 4 uses
  %i.c = shl i64 %i.b, 2                          ; 4 uses
  %i.d = icmp ugt i64 %i.b, 4611686018427387903
  %.not.i = icmp ugt i64 %i.c, 9223372036854775804
  %or.cond.i = or i1 %i.d, %.not.i
  br i1 %or.cond.i, label %bb.d, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.f = icmp eq i64 %i.b, 0
  tail call void @llvm.assume(i1 %i.f)
  store i64 0, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.h, align 8
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCs52Be9pdaNRP_12pbjson_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.thread._crit_edge unwind label %bb.e

.thread._crit_edge:                               ; preds = %.thread
  %.pre = load ptr, ptr %i.g, align 8, !alias.scope !1271
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !1272
  %i.i = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #32, !noalias !1272 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.4.0.ph = phi i64 [ 4, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.c) #30
  unreachable

bb.e:                                             ; preds = %.thread, %bb.l
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VeclEECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef align 8 dereferenceable(24) %i.a) #33
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.c
  store i64 %i.b, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.h

bb.g:                                             ; preds = %bb.l
  unreachable

bb.h:                                             ; preds = %.thread._crit_edge, %bb.f
  %i.n = phi ptr [ %i.i, %bb.f ], [ %.pre, %.thread._crit_edge ]
  %i.o = phi ptr [ %i.m, %bb.f ], [ %i.h, %.thread._crit_edge ]
  store i32 0, ptr %i.n, align 4
  store i64 1, ptr %i.o, align 8, !alias.scope !1271
  %.not.i12 = icmp slt i64 %2, 0
  br i1 %.not.i12, label %bb.l, label %bb.i, !prof !17

bb.i:                                             ; preds = %bb.h
  %i.p = icmp eq i64 %2, 0
  br i1 %i.p, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsidB8gjke19X_15influxdb3_cache.exit15, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !1273
  %i.q = call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !1273 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = ptrtoint ptr %i.q to i64
  br label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsidB8gjke19X_15influxdb3_cache.exit15

bb.l:                                             ; preds = %bb.h, %bb.j
  %.sroa.418.0.ph = phi i64 [ 1, %bb.j ], [ 0, %bb.h ]
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.418.0.ph, i64 %2) #30
          to label %bb.g unwind label %bb.e

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsidB8gjke19X_15influxdb3_cache.exit15: ; preds = %bb.i, %bb.k
  %.sroa.1020.0 = phi i64 [ %i.s, %bb.k ], [ 1, %bb.i ]
  %i.t = inttoptr i64 %.sroa.1020.0 to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i64 %2, ptr %0, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.v, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %1, ptr %.sroa.56.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.m:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.n:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs6ePPILGZvJ2_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericStringTypelEE6finishCsidB8gjke19X_15influxdb3_cache(ptr dead_on_unwind noalias noundef writable sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef align 8 dereferenceable(104) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 4 uses
  %i.b = alloca [136 x i8], align 8               ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [184 x i8], align 8               ; 16 uses
  %i.i = alloca [184 x i8], align 8               ; 5 uses
  %i.j = alloca [184 x i8], align 8               ; 5 uses
  %i.k = alloca [184 x i8], align 8               ; 5 uses
  %i.l = alloca [184 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 24, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 2 uses
  store i64 0, ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  store ptr null, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %i.q, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  store i8 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 177
  store i8 0, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.u = invoke noundef i64 @_RNvMs_NtNtCsjfzoCD6FJrB_12arrow_buffer7builder4nullNtB4_17NullBufferBuilder3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.t)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6OdVU8oGBWI_10arrow_data4data16ArrayDataBuilderECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef align 8 dereferenceable(184) %i.h) #33
          to label %bb.l unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  store i64 %i.u, ptr %i.n, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.i, ptr noundef nonnull align 8 dereferenceable(184) %i.h, i64 184, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  store i64 0, ptr %i.w, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store i64 0, ptr %.sroa.514.0..sroa_idx, align 8
  invoke void @_RNvXs7_NtNtCsjfzoCD6FJrB_12arrow_buffer6buffer9immutableNtB5_6BufferINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VeclEE4fromCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.d unwind label %bb.q

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @_RNvMs3_NtCs6OdVU8oGBWI_10arrow_data4dataNtB5_16ArrayDataBuilder10add_buffer(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %1, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.517.0..sroa_idx, align 8
  invoke void @_RNvXs7_NtNtCsjfzoCD6FJrB_12arrow_buffer6buffer9immutableNtB5_6BufferINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4fromCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.e unwind label %bb.p

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvMs3_NtCs6OdVU8oGBWI_10arrow_data4dataNtB5_16ArrayDataBuilder10add_buffer(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.t)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %bb.e
  call void @_RNvMs3_NtCs6OdVU8oGBWI_10arrow_data4dataNtB5_16ArrayDataBuilder5nulls(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.k, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.x = load i64, ptr %.sroa.517.0..sroa_idx, align 8, !noundef !4 ; 3 uses
  %i.y = icmp sgt i64 %i.x, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp samesign ult i64 %i.x, 2147483648
  br i1 %i.z, label %bb.g, label %bb.i, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.aa = load i64, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !1276, !noundef !4 ; 3 uses
  %i.ab = load i64, ptr %i.w, align 8, !range !8, !alias.scope !1276, !noundef !4
  %i.ac = icmp eq i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCs52Be9pdaNRP_12pbjson_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.k unwind label %bb.m

bb.i:                                             ; preds = %bb.f
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #30
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.g, %bb.h
  %i.ad = trunc nuw nsw i64 %i.x to i32
  %i.ae = load ptr, ptr %.sroa.413.0..sroa_idx, align 8, !alias.scope !1276, !nonnull !4, !noundef !4
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.aa
  store i32 %i.ad, ptr %i.af, align 4
  %i.ag = add i64 %i.aa, 1
  store i64 %i.ag, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !1276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.a, ptr noundef nonnull align 8 dereferenceable(184) %i.l, i64 184, i1 false)
  call void @_RNvMs3_NtCs6OdVU8oGBWI_10arrow_data4dataNtB5_16ArrayDataBuilder15build_unchecked(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvXs3_NtNtCs6ePPILGZvJ2_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEEINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCs6OdVU8oGBWI_10arrow_data4data9ArrayDataE4fromCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.l:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.m, %bb.b
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm, %bb.m ], [ %i.v, %bb.b ], [ %i.ai, %bb.o ], [ %i.ak, %bb.q ], [ %i.aj, %bb.p ]
  resume { ptr, i32 } %.pn

bb.m:                                             ; preds = %bb.h, %bb.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6OdVU8oGBWI_10arrow_data4data16ArrayDataBuilderECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef align 8 dereferenceable(184) %i.l) #33
          to label %bb.l unwind label %bb.n

bb.n:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.m, %bb.b
end_hunk_0
begin_hunk_1_@_RNvMNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB2_13DistinctCache4push:bb.a
bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.aa, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !5, !noundef !4
  %i.av = trunc nuw i64 %i.au to i1
  br i1 %i.av, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.06.0.copyload.pr = load i64, ptr %i.e, align 8
  br label %bb.b

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.m
  %i.ax = load i8, ptr %i.d, align 1, !range !21, !noundef !4
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.u, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueEENtNtNtB10_3ops4drop4Drop4dropB1D_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueEEEB1Q_.exit.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_IBC_NtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueEEEEB1b_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #33
          to label %common.resume unwind label %bb.t

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueEEEB1Q_.exit.i: ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !1524)
  %i.ba = load i64, ptr %i.e, align 8, !range !9, !alias.scope !1525, !noundef !4 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 2
  br i1 %i.bb, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueEEEEB2y_.exit, label %bb.p

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueEEEB1Q_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1526)
  %i.bc = icmp eq i64 %i.ba, 0
  br i1 %i.bc, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueEEEEB2y_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  %i.bd = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !1528, !noundef !4 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueEEEEB2y_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = atomicrmw sub ptr %i.bd, i64 1 release, align 8, !noalias !1529
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.s, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueEEEEB2y_.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueEEEEB2y_.exit

bb.t:                                             ; preds = %bb.o
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.az, %bb.o ], [ %i.aj, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueEEEEB2y_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueEEEB1Q_.exit.i, %bb.p, %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.u:                                             ; preds = %.loopexit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !4
  %i.bk = add i64 %i.bj, 1
  store i64 %i.bk, ptr %i.bi, align 8
  br label %bb.n

bb.v:                                             ; preds = %bb.f
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB2_13DistinctCache5prune(ptr noalias noundef align 8 dereferenceable(104) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 13 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [72 x i8], align 8                ; 14 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  %i.e = alloca [12 x i8], align 4                ; 5 uses
  %i.f = alloca [12 x i8], align 4                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1559)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1559
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1559, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1559, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !13, !invariant.load !4, !noalias !1559
  %i.m = add nsw i64 %i.l, -1
  %i.n = and i64 %i.m, -16
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !4, !noalias !1559, !nonnull !4
  call void %i.r(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noundef nonnull %i.p), !noalias !1559, !inline_history !0
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !1559, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load i32, ptr %i.u, align 8, !range !18, !alias.scope !1559, !noundef !4
  call void @_RNvMs2_Csk0FzFVI8urx_8iox_timeNtB5_4Time11checked_sub(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.e, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.d, i64 noundef %i.t, i32 noundef %i.v), !noalias !1559
  %i.w = load i32, ptr %i.e, align 4, !noalias !1559, !noundef !4
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %bb.b, label %_RNvMNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB2_13DistinctCache15expired_time_ns.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 45, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #30, !noalias !1559
  unreachable

_RNvMNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB2_13DistinctCache15expired_time_ns.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.f, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !noalias !1559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1559
  %i.x = call noundef i64 @_RNvMs2_Csk0FzFVI8urx_8iox_timeNtB5_4Time15timestamp_nanos(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.f), !noalias !1559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1559
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.z = call noundef zeroext i1 @_RNvMs_NtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB4_4Node13remove_before(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y, i64 noundef %i.x) ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1560)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aa = load ptr, ptr %i.y, align 8, !alias.scope !1560, !noundef !4 ; 3 uses
  %.not.i2 = icmp ne ptr %i.aa, null              ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !1560
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !1560
  %.sroa.0.sroa.0.0.i = zext i1 %.not.i2 to i64   ; 2 uses
  %.sroa.0.sroa.5.sroa.6.0.i = select i1 %.not.i2, i64 %i.ac, i64 undef ; 2 uses
  %.sroa.5.0.i = select i1 %.not.i2, i64 %i.ae, i64 0
  store i64 %.sroa.0.sroa.0.0.i, ptr %i.c, align 8, !noalias !1560
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !noalias !1560
  %.sroa.0.sroa.5.sroa.5.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.aa, ptr %.sroa.0.sroa.5.sroa.5.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !1560
  %.sroa.0.sroa.5.sroa.6.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.0.sroa.5.sroa.6.0.i, ptr %.sroa.0.sroa.5.sroa.6.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !1560
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sroa.0.sroa.0.0.i, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !noalias !1560
  %.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr null, ptr %.sroa.0.sroa.7.0..sroa_idx.i, align 8, !noalias !1560
  %.sroa.0.sroa.7.sroa.5.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %i.aa, ptr %.sroa.0.sroa.7.sroa.5.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx.i, align 8, !noalias !1560
  %.sroa.0.sroa.7.sroa.6.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.0.sroa.5.sroa.6.0.i, ptr %.sroa.0.sroa.7.sroa.6.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx.i, align 8, !noalias !1560
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1560
  %i.af = call noundef align 8 ptr @_RNvXsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_6ValuesINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueETxIB15_NtB1I_4NodeEEENtNtNtNtB19_4iter6traits8iterator8Iterator4nextB1M_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !1560, !inline_history !1534 ; 2 uses
  %.not.i30.i = icmp eq ptr %i.af, null
  br i1 %.not.i30.i, label %_RNvMs_NtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB4_4Node11cardinality.exit.thread, label %.lr.ph.i

_RNvMs_NtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB4_4Node11cardinality.exit.thread: ; preds = %_RNvMNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB2_13DistinctCache15expired_time_ns.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.ag, align 8
  br label %bb.p

.lr.ph.i:                                         ; preds = %_RNvMNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB2_13DistinctCache15expired_time_ns.exit, %.lr.ph.i
  %i.ah = phi ptr [ %i.ao, %.lr.ph.i ], [ %i.af, %_RNvMNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB2_13DistinctCache15expired_time_ns.exit ] ; 2 uses
  %.sroa.0.0.i31.i = phi i64 [ %i.an, %.lr.ph.i ], [ 0, %_RNvMNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB2_13DistinctCache15expired_time_ns.exit ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !5, !alias.scope !1561, !noalias !1560, !noundef !4
  %i.ak = trunc nuw i64 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.0.0.i.i.i = select i1 %i.ak, ptr %i.al, ptr null
  %i.am = call fastcc noundef i64 @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache4NodeE6map_orjNCNCNvMs_BL_BJ_11cardinality00EBP_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.sroa.0.0.i.i.i)
  %i.an = add i64 %i.am, %.sroa.0.0.i31.i         ; 4 uses
  %i.ao = call noundef align 8 ptr @_RNvXsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_6ValuesINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueETxIB15_NtB1I_4NodeEEENtNtNtNtB19_4iter6traits8iterator8Iterator4nextB1M_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c), !noalias !1560, !inline_history !1534 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %_RNvMs_NtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB4_4Node11cardinality.exit, label %.lr.ph.i

_RNvMs_NtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB4_4Node11cardinality.exit: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i64 %i.an, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !4 ; 2 uses
  %i.as = icmp ugt i64 %i.an, %i.ar
  br i1 %i.as, label %bb.c, label %bb.p

bb.c:                                             ; preds = %_RNvMs_NtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB4_4Node11cardinality.exit
  %i.at = sub nuw i64 %i.an, %i.ar                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1562
  %i.au = shl i64 %i.at, 3                        ; 3 uses
  %i.av = icmp ugt i64 %i.at, 2305843009213693951
  %.not.i.i3 = icmp ugt i64 %i.au, 9223372036854775800
  %or.cond.i.i = or i1 %i.av, %.not.i.i3
  br i1 %or.cond.i.i, label %1, label %bb.d, !prof !17

bb.d:                                             ; preds = %bb.c
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !1563
  %i.aw = call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.au, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !1563 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %1, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsidB8gjke19X_15influxdb3_cache.exit.i

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsidB8gjke19X_15influxdb3_cache.exit.i: ; preds = %bb.d
  store i64 %i.at, ptr %i.b, align 8, !noalias !1562
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr %i.aw, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1562
  %.sroa.5.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i4, align 8, !noalias !1562
  invoke fastcc void @_RNvMs_NtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB4_4Node13find_n_oldest(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y, i64 noundef %i.at, ptr noalias noundef align 8 dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.e

1:                                                ; preds = %bb.d, %bb.c
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.d ], [ 0, %bb.c ]
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.au) #30, !noalias !1562
  unreachable

bb.e:                                             ; preds = %bb.h, %bb.g, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsidB8gjke19X_15influxdb3_cache.exit.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections11binary_heap10BinaryHeapxEECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef align 8 dereferenceable(24) %i.b) #33
          to label %common.resume.i unwind label %bb.o

bb.f:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsidB8gjke19X_15influxdb3_cache.exit.i
  %i.az = load i64, ptr %.sroa.5.0..sroa_idx.i4, align 8, !noalias !1562, !noundef !4
  %.not.i5 = icmp eq i64 %i.az, 0
  br i1 %.not.i5, label %bb.g, label %bb.h, !prof !7

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #30
          to label %bb.i unwind label %bb.e, !noalias !1562

bb.h:                                             ; preds = %bb.f
  %i.ba = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1562, !nonnull !4, !noundef !4
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !1562, !noundef !4
  %i.bc = invoke noundef zeroext i1 @_RNvMs_NtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB4_4Node13remove_before(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y, i64 noundef %i.bb)
          to label %bb.j unwind label %bb.e       ; 0 uses

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecxENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !1564, !noalias !1562 ; 2 uses
  %i.be = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.be, label %common.resume.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val3.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1565, !noalias !1562, !nonnull !4, !noundef !4
  %i.bf = shl nuw i64 %.val2.i.i.i, 3
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.bf, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !1566
  br label %common.resume.i

bb.m:                                             ; preds = %bb.j
  %.val.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !1564, !noalias !1562 ; 2 uses
  %i.bg = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.bg, label %_RNvMs_NtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB4_4Node15remove_n_oldest.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val1.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1565, !noalias !1562, !nonnull !4, !noundef !4
  %i.bh = shl nuw i64 %.val.i.i.i, 3
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) 8) #32, !noalias !1567
  br label %_RNvMs_NtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB4_4Node15remove_n_oldest.exit

common.resume.i:                                  ; preds = %bb.l, %bb.k, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %i.bd, %bb.k ], [ %i.bd, %bb.l ], [ %i.ay, %bb.e ]
  resume { ptr, i32 } %common.resume.op.i

bb.o:                                             ; preds = %bb.e
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RNvMs_NtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB4_4Node15remove_n_oldest.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1562
  call void @llvm.experimental.noalias.scope.decl(metadata !1568)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bj = load ptr, ptr %i.y, align 8, !alias.scope !1568, !noundef !4 ; 3 uses
  %.not.i6 = icmp ne ptr %i.bj, null              ; 3 uses
  %i.bk = load i64, ptr %i.ab, align 8, !alias.scope !1568
  %i.bl = load i64, ptr %i.ad, align 8, !alias.scope !1568
  %.sroa.0.sroa.0.0.i7 = zext i1 %.not.i6 to i64  ; 2 uses
  %.sroa.0.sroa.5.sroa.6.0.i8 = select i1 %.not.i6, i64 %i.bk, i64 undef ; 2 uses
  %.sroa.5.0.i9 = select i1 %.not.i6, i64 %i.bl, i64 0
  store i64 %.sroa.0.sroa.0.0.i7, ptr %i.a, align 8, !noalias !1568
  %.sroa.0.sroa.5.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.0.sroa.5.0..sroa_idx.i10, align 8, !noalias !1568
  %.sroa.0.sroa.5.sroa.5.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.bj, ptr %.sroa.0.sroa.5.sroa.5.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx.i11, align 8, !noalias !1568
  %.sroa.0.sroa.5.sroa.6.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.0.sroa.5.sroa.6.0.i8, ptr %.sroa.0.sroa.5.sroa.6.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx.i12, align 8, !noalias !1568
  %.sroa.0.sroa.6.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sroa.0.sroa.0.0.i7, ptr %.sroa.0.sroa.6.0..sroa_idx.i13, align 8, !noalias !1568
  %.sroa.0.sroa.7.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.0.sroa.7.0..sroa_idx.i14, align 8, !noalias !1568
  %.sroa.0.sroa.7.sroa.5.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.bj, ptr %.sroa.0.sroa.7.sroa.5.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx.i15, align 8, !noalias !1568
  %.sroa.0.sroa.7.sroa.6.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.0.sroa.5.sroa.6.0.i8, ptr %.sroa.0.sroa.7.sroa.6.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx.i16, align 8, !noalias !1568
  %.sroa.5.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.5.0.i9, ptr %.sroa.5.0..sroa_idx.i17, align 8, !noalias !1568
  %i.bm = call noundef align 8 ptr @_RNvXsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_6ValuesINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueETxIB15_NtB1I_4NodeEEENtNtNtNtB19_4iter6traits8iterator8Iterator4nextB1M_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a), !noalias !1568, !inline_history !1534 ; 2 uses
  %.not.i30.i18 = icmp eq ptr %i.bm, null
  br i1 %.not.i30.i18, label %_RNvMs_NtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB4_4Node11cardinality.exit24, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %_RNvMs_NtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB4_4Node15remove_n_oldest.exit, %.lr.ph.i19
  %i.bn = phi ptr [ %i.bu, %.lr.ph.i19 ], [ %i.bm, %_RNvMs_NtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB4_4Node15remove_n_oldest.exit ] ; 2 uses
  %.sroa.0.0.i31.i20 = phi i64 [ %i.bt, %.lr.ph.i19 ], [ 0, %_RNvMs_NtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB4_4Node15remove_n_oldest.exit ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !range !5, !alias.scope !1569, !noalias !1568, !noundef !4
  %i.bq = trunc nuw i64 %i.bp to i1
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %.sroa.0.0.i.i.i21 = select i1 %i.bq, ptr %i.br, ptr null
  %i.bs = call fastcc noundef i64 @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache4NodeE6map_orjNCNCNvMs_BL_BJ_11cardinality00EBP_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.sroa.0.0.i.i.i21)
  %i.bt = add i64 %i.bs, %.sroa.0.0.i31.i20       ; 2 uses
  %i.bu = call noundef align 8 ptr @_RNvXsM_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_6ValuesINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueETxIB15_NtB1I_4NodeEEENtNtNtNtB19_4iter6traits8iterator8Iterator4nextB1M_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a), !noalias !1568, !inline_history !1534 ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i22, label %_RNvMs_NtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB4_4Node11cardinality.exit24, label %.lr.ph.i19

_RNvMs_NtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB4_4Node11cardinality.exit24: ; preds = %.lr.ph.i19, %_RNvMs_NtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB4_4Node15remove_n_oldest.exit
  %.sroa.0.0.i.lcssa.i23 = phi i64 [ 0, %_RNvMs_NtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB4_4Node15remove_n_oldest.exit ], [ %i.bt, %.lr.ph.i19 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %.sroa.0.0.i.lcssa.i23, ptr %i.ap, align 8
  br label %bb.p

bb.p:                                             ; preds = %_RNvMs_NtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB4_4Node11cardinality.exit.thread, %_RNvMs_NtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB4_4Node11cardinality.exit, %_RNvMs_NtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB4_4Node11cardinality.exit24
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer6offsetINtB2_12OffsetBufferlE9new_emptyCsidB8gjke19X_15influxdb3_cache(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer15from_len_zeroed(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, i64 noundef 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 16, !nonnull !4, !noundef !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = load <2 x i64>, ptr %i.c, align 16
  store <2 x i64> %i.j, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !1581
  %i.k = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #32, !noalias !1581 ; 5 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsjfzoCD6FJrB_12arrow_buffer5bytes5BytesEE3newCsidB8gjke19X_15influxdb3_cache.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #30
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerNtNtCsjfzoCD6FJrB_12arrow_buffer5bytes5BytesEECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #33
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.c ], [ %i.r, %bb.f ], [ %i.r, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsjfzoCD6FJrB_12arrow_buffer5bytes5BytesEE3newCsidB8gjke19X_15influxdb3_cache.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.k, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.e, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.g, ptr %i.p, align 8
  %i.q = invoke noundef i64 @_RINvNtCs4NRVxsYgnAr_4core3ptr12align_offsethECsidB8gjke19X_15influxdb3_cache(ptr noundef nonnull %i.e, i64 noundef 4)
          to label %_RNvMNtNtCs4NRVxsYgnAr_4core3ptr9const_ptrPh12align_offsetCsidB8gjke19X_15influxdb3_cache.exit.i unwind label %bb.e, !noalias !1582

bb.e:                                             ; preds = %.invoke.i, %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsjfzoCD6FJrB_12arrow_buffer5bytes5BytesEE3newCsidB8gjke19X_15influxdb3_cache.exit
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !1583
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.f, label %common.resume

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsjfzoCD6FJrB_12arrow_buffer5bytes5BytesE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.g, !noalias !1584

_RNvMNtNtCs4NRVxsYgnAr_4core3ptr9const_ptrPh12align_offsetCsidB8gjke19X_15influxdb3_cache.exit.i: ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsjfzoCD6FJrB_12arrow_buffer5bytes5BytesEE3newCsidB8gjke19X_15influxdb3_cache.exit
  %i.u = icmp eq i64 %i.q, 0
  br i1 %i.u, label %_RNvXs3_NtNtCsjfzoCD6FJrB_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferlEINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtB7_9immutable6BufferE4fromCsidB8gjke19X_15influxdb3_cache.exit, label %.invoke.i, !prof !16

.invoke.i:                                        ; preds = %_RNvMNtNtCs4NRVxsYgnAr_4core3ptr9const_ptrPh12align_offsetCsidB8gjke19X_15influxdb3_cache.exit.i
end_hunk_1
begin_hunk_2_@llvm.umax.i64
!1065 = !{!1024}
!1066 = !{!1026}
!1067 = !{!1026, !1024}
!1068 = !{!1028}
!1069 = !{!1030}
!1070 = !{!1030, !1028}
!1071 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!1072 = distinct !{!1072, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECsidB8gjke19X_15influxdb3_cache"}
!1073 = distinct !{!1073, !1072, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1074 = distinct !{!1074, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1075 = distinct !{!1075, !1074, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1076 = distinct !{!1076, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsidB8gjke19X_15influxdb3_cache"}
!1077 = distinct !{!1077, !1076, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1078 = distinct !{!1078, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1079 = distinct !{!1079, !1078, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1080 = distinct !{!1080, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsidB8gjke19X_15influxdb3_cache"}
!1081 = distinct !{!1081, !1080, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1082 = distinct !{!1082, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1083 = distinct !{!1083, !1082, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1084 = distinct !{!1084, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36legacy9ColumnSetECsidB8gjke19X_15influxdb3_cache"}
!1085 = distinct !{!1085, !1084, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36legacy9ColumnSetECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1086 = distinct !{!1086, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECsidB8gjke19X_15influxdb3_cache"}
!1087 = distinct !{!1087, !1086, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1088 = distinct !{!1088, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1089 = distinct !{!1089, !1088, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1090 = distinct !{!1090, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36legacy9ColumnSetECsidB8gjke19X_15influxdb3_cache"}
!1091 = distinct !{!1091, !1090, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36legacy9ColumnSetECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1092 = distinct !{!1092, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECsidB8gjke19X_15influxdb3_cache"}
!1093 = distinct !{!1093, !1092, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1094 = distinct !{!1094, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1095 = distinct !{!1095, !1094, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1096 = !{!1073}
!1097 = !{!1075}
!1098 = !{!1075, !1073}
!1099 = !{!1077}
!1100 = !{!1079}
!1101 = !{!1079, !1077}
!1102 = !{!1081}
!1103 = !{!1083}
!1104 = !{!1083, !1081}
!1105 = !{!1085}
!1106 = !{!1087}
!1107 = !{!1089}
!1108 = !{!1089, !1087, !1085}
!1109 = !{!1091}
!1110 = !{!1093}
!1111 = !{!1095}
!1112 = !{!1095, !1093, !1091}
!1113 = distinct !{!1113, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECsidB8gjke19X_15influxdb3_cache"}
!1114 = distinct !{!1114, !1113, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1115 = distinct !{!1115, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1116 = distinct !{!1116, !1115, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1117 = distinct !{!1117, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4cell4once8OnceCellINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEEECsidB8gjke19X_15influxdb3_cache"}
!1118 = distinct !{!1118, !1117, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_4cell4once8OnceCellINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1119 = distinct !{!1119, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEEEECsidB8gjke19X_15influxdb3_cache"}
!1120 = distinct !{!1120, !1119, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEEEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1121 = distinct !{!1121, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEEECsidB8gjke19X_15influxdb3_cache"}
!1122 = distinct !{!1122, !1121, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1123 = distinct !{!1123, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEECsidB8gjke19X_15influxdb3_cache"}
!1124 = distinct !{!1124, !1123, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1125 = distinct !{!1125, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1126 = distinct !{!1126, !1125, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1127 = distinct !{!1127, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1128 = distinct !{!1128, !1127, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1129 = distinct !{!1129, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1130 = distinct !{!1130, !1129, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1131 = !{!1114}
!1132 = !{!1116}
!1133 = !{!1116, !1114}
!1134 = !{!1122, !1120, !1118}
!1135 = !{!1126, !1124, !1122, !1120, !1118}
!1136 = !{!1124, !1122, !1120, !1118}
!1137 = !{!1128}
!1138 = !{!1130}
!1139 = distinct !{!1139, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtNtBG_7wrapper12DisplayErrorNtNtCscdodAO9FK5_5alloc6string6StringEEECsidB8gjke19X_15influxdb3_cache"}
!1140 = distinct !{!1140, !1139, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtNtBG_7wrapper12DisplayErrorNtNtCscdodAO9FK5_5alloc6string6StringEEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1141 = distinct !{!1141, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceEECsidB8gjke19X_15influxdb3_cache"}
!1142 = distinct !{!1142, !1141, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1143 = distinct !{!1143, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaIKnL9StOw_6anyhow7wrapper12DisplayErrorNtNtCscdodAO9FK5_5alloc6string6StringEECsidB8gjke19X_15influxdb3_cache"}
!1144 = distinct !{!1144, !1143, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaIKnL9StOw_6anyhow7wrapper12DisplayErrorNtNtCscdodAO9FK5_5alloc6string6StringEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1145 = distinct !{!1145, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsidB8gjke19X_15influxdb3_cache"}
!1146 = distinct !{!1146, !1145, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1147 = distinct !{!1147, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsidB8gjke19X_15influxdb3_cache"}
!1148 = distinct !{!1148, !1147, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1149 = distinct !{!1149, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1150 = distinct !{!1150, !1149, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1151 = distinct !{!1151, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1152 = distinct !{!1152, !1151, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1153 = distinct !{!1153, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1154 = distinct !{!1154, !1153, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1155 = !{!1142, !1140}
!1156 = !{!1150, !1148, !1146, !1144, !1140}
!1157 = !{!1148, !1146, !1144, !1140}
!1158 = !{!1152}
!1159 = !{!1154}
!1160 = distinct !{!1160, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtNtBG_7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringEEECsidB8gjke19X_15influxdb3_cache"}
!1161 = distinct !{!1161, !1160, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtNtBG_7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringEEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1162 = distinct !{!1162, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceEECsidB8gjke19X_15influxdb3_cache"}
!1163 = distinct !{!1163, !1162, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1164 = distinct !{!1164, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaIKnL9StOw_6anyhow7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringEECsidB8gjke19X_15influxdb3_cache"}
!1165 = distinct !{!1165, !1164, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaIKnL9StOw_6anyhow7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1166 = distinct !{!1166, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsidB8gjke19X_15influxdb3_cache"}
!1167 = distinct !{!1167, !1166, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1168 = distinct !{!1168, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsidB8gjke19X_15influxdb3_cache"}
!1169 = distinct !{!1169, !1168, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1170 = distinct !{!1170, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1171 = distinct !{!1171, !1170, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1172 = distinct !{!1172, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1173 = distinct !{!1173, !1172, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1174 = distinct !{!1174, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1175 = distinct !{!1175, !1174, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1176 = !{!1163, !1161}
!1177 = !{!1171, !1169, !1167, !1165, !1161}
!1178 = !{!1169, !1167, !1165, !1161}
!1179 = !{!1173}
!1180 = !{!1175}
!1181 = distinct !{!1181, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtNtBG_7wrapper12MessageErrorReEEECsidB8gjke19X_15influxdb3_cache"}
!1182 = distinct !{!1182, !1181, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtNtBG_7wrapper12MessageErrorReEEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1183 = distinct !{!1183, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceEECsidB8gjke19X_15influxdb3_cache"}
!1184 = distinct !{!1184, !1183, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1185 = !{!1184, !1182}
!1186 = distinct !{!1186, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCscdodAO9FK5_5alloc6string6StringEEECsidB8gjke19X_15influxdb3_cache"}
!1187 = distinct !{!1187, !1186, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropNtNtCscdodAO9FK5_5alloc6string6StringEEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1188 = distinct !{!1188, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceEECsidB8gjke19X_15influxdb3_cache"}
!1189 = distinct !{!1189, !1188, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1190 = !{!1189, !1187}
!1191 = distinct !{!1191, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropReEEECsidB8gjke19X_15influxdb3_cache"}
!1192 = distinct !{!1192, !1191, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtNtNtB4_3mem13manually_drop12ManuallyDropReEEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1193 = distinct !{!1193, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceEECsidB8gjke19X_15influxdb3_cache"}
!1194 = distinct !{!1194, !1193, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1195 = !{!1194, !1192}
!1196 = distinct !{!1196, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtCsaIKnL9StOw_6anyhow7wrapper12DisplayErrorNtNtB4_6string6StringEE3newCsidB8gjke19X_15influxdb3_cache"}
!1197 = distinct !{!1197, !1196, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtCsaIKnL9StOw_6anyhow7wrapper12DisplayErrorNtNtB4_6string6StringEE3newCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1198 = distinct !{!1198, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceEECsidB8gjke19X_15influxdb3_cache"}
!1199 = distinct !{!1199, !1198, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1200 = distinct !{!1200, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceEECsidB8gjke19X_15influxdb3_cache"}
!1201 = distinct !{!1201, !1200, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1202 = !{!1197}
!1203 = !{!1199}
!1204 = !{!1201}
!1205 = distinct !{!1205, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtCsaIKnL9StOw_6anyhow7wrapper12MessageErrorNtNtB4_6string6StringEE3newCsidB8gjke19X_15influxdb3_cache"}
!1206 = distinct !{!1206, !1205, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtCsaIKnL9StOw_6anyhow7wrapper12MessageErrorNtNtB4_6string6StringEE3newCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1207 = distinct !{!1207, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceEECsidB8gjke19X_15influxdb3_cache"}
!1208 = distinct !{!1208, !1207, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1209 = distinct !{!1209, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceEECsidB8gjke19X_15influxdb3_cache"}
!1210 = distinct !{!1210, !1209, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1211 = !{!1206}
!1212 = !{!1208}
!1213 = !{!1210}
!1214 = distinct !{!1214, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceEECsidB8gjke19X_15influxdb3_cache"}
!1215 = distinct !{!1215, !1214, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1216 = distinct !{!1216, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtCsaIKnL9StOw_6anyhow7wrapper12MessageErrorReEE3newCsidB8gjke19X_15influxdb3_cache"}
!1217 = distinct !{!1217, !1216, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtCsaIKnL9StOw_6anyhow7wrapper12MessageErrorReEE3newCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1218 = distinct !{!1218, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceEECsidB8gjke19X_15influxdb3_cache"}
!1219 = distinct !{!1219, !1218, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1220 = !{!1215}
!1221 = !{!1217}
!1222 = !{!1219}
!1223 = !{!"branch_weights", i32 4001, i32 4000000}
!1224 = distinct !{!1224, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsidB8gjke19X_15influxdb3_cache"}
!1225 = distinct !{!1225, !1224, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1226 = !{!1225}
!1227 = distinct !{!1227, !"_RNvXs3_NtCs3L39Jvi82fL_5ahash12random_stateNtB5_11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher12build_hasher"}
!1228 = distinct !{!1228, !1227, !"_RNvXs3_NtCs3L39Jvi82fL_5ahash12random_stateNtB5_11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher12build_hasher: argument 1"}
!1229 = distinct !{!1229, !1227, !"_RNvXs3_NtCs3L39Jvi82fL_5ahash12random_stateNtB5_11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher12build_hasher: argument 0"}
!1230 = distinct !{!1230, !"_RINvXsa_NtCsaaj5M71uUq9_5bimap3memINtB6_7WrappereENtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherECsidB8gjke19X_15influxdb3_cache"}
!1231 = distinct !{!1231, !1230, !"_RINvXsa_NtCsaaj5M71uUq9_5bimap3memINtB6_7WrappereENtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1232 = distinct !{!1232, !"_RINvXs0_NtNtCs4NRVxsYgnAr_4core4hash5implseNtB8_4Hash4hashNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherECsidB8gjke19X_15influxdb3_cache"}
!1233 = distinct !{!1233, !1232, !"_RINvXs0_NtNtCs4NRVxsYgnAr_4core4hash5implseNtB8_4Hash4hashNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1234 = distinct !{!1234, !"_RNvYNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_strCsidB8gjke19X_15influxdb3_cache"}
!1235 = distinct !{!1235, !1234, !"_RNvYNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_strCsidB8gjke19X_15influxdb3_cache: argument 1"}
!1236 = distinct !{!1236, !"_RNvXs_NtCs3L39Jvi82fL_5ahash13fallback_hashNtB4_7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher5write"}
!1237 = distinct !{!1237, !1236, !"_RNvXs_NtCs3L39Jvi82fL_5ahash13fallback_hashNtB4_7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher5write: argument 1"}
!1238 = distinct !{!1238, !"_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small"}
!1239 = distinct !{!1239, !1238, !"_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small: argument 1"}
!1240 = distinct !{!1240, !"_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRINtNtCsaaj5M71uUq9_5bimap3mem7WrappereENtB8_4Hash4hashNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherECsidB8gjke19X_15influxdb3_cache"}
!1241 = distinct !{!1241, !1240, !"_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRINtNtCsaaj5M71uUq9_5bimap3mem7WrappereENtB8_4Hash4hashNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1242 = distinct !{!1242, !1230, !"_RINvXsa_NtCsaaj5M71uUq9_5bimap3memINtB6_7WrappereENtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherECsidB8gjke19X_15influxdb3_cache: argument 1"}
!1243 = distinct !{!1243, !1232, !"_RINvXs0_NtNtCs4NRVxsYgnAr_4core4hash5implseNtB8_4Hash4hashNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherECsidB8gjke19X_15influxdb3_cache: argument 1"}
!1244 = distinct !{!1244, !1234, !"_RNvYNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_strCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1245 = distinct !{!1245, !1236, !"_RNvXs_NtCs3L39Jvi82fL_5ahash13fallback_hashNtB4_7AHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher5write: argument 0"}
!1246 = distinct !{!1246, !1238, !"_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small: argument 0"}
!1247 = distinct !{!1247, !"_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16"}
!1248 = distinct !{!1248, !1247, !"_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16: argument 0"}
!1249 = distinct !{!1249, !"_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32"}
!1250 = distinct !{!1250, !1249, !"_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32: argument 0"}
!1251 = distinct !{!1251, !"_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u64"}
!1252 = distinct !{!1252, !1251, !"_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u64: argument 0"}
!1253 = distinct !{!1253, !"_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128"}
!1254 = distinct !{!1254, !1253, !"_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice9read_u128: argument 0"}
!1255 = !{!1228}
!1256 = !{!1229}
!1257 = !{!1239, !1237, !1235, !1233, !1231}
!1258 = !{!1246, !1245, !1244, !1243, !1242, !1241}
!1259 = !{!1237, !1235, !1233, !1231}
!1260 = !{!1248, !1246, !1245, !1244, !1243, !1242, !1241}
!1261 = !{!1250, !1246, !1245, !1244, !1243, !1242, !1241}
!1262 = !{!1252, !1245, !1244, !1243, !1242, !1241}
!1263 = !{!1245, !1244, !1243, !1242, !1241}
!1264 = !{!1254, !1245, !1244, !1243, !1242, !1241}
!1265 = distinct !{!1265, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VeclE8push_mutCsidB8gjke19X_15influxdb3_cache"}
!1266 = distinct !{!1266, !1265, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VeclE8push_mutCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1267 = distinct !{!1267, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsidB8gjke19X_15influxdb3_cache"}
!1268 = distinct !{!1268, !1267, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1269 = distinct !{!1269, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsidB8gjke19X_15influxdb3_cache"}
!1270 = distinct !{!1270, !1269, !"_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1271 = !{!1266}
!1272 = !{!1268}
!1273 = !{!1270}
!1274 = distinct !{!1274, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VeclE8push_mutCsidB8gjke19X_15influxdb3_cache"}
!1275 = distinct !{!1275, !1274, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VeclE8push_mutCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1276 = !{!1275}
!1277 = distinct !{!1277, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsidB8gjke19X_15influxdb3_cache"}
!1278 = distinct !{!1278, !1277, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1279 = distinct !{!1279, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsidB8gjke19X_15influxdb3_cache"}
!1280 = distinct !{!1280, !1279, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1281 = distinct !{!1281, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1282 = distinct !{!1282, !1281, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1283 = distinct !{!1283, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1284 = distinct !{!1284, !1283, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1285 = distinct !{!1285, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1286 = distinct !{!1286, !1285, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1287 = distinct !{!1287, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsidB8gjke19X_15influxdb3_cache"}
!1288 = distinct !{!1288, !1287, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1289 = distinct !{!1289, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1290 = distinct !{!1290, !1289, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1291 = distinct !{!1291, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1292 = distinct !{!1292, !1291, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1293 = distinct !{!1293, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1294 = distinct !{!1294, !1293, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1295 = distinct !{!1295, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsidB8gjke19X_15influxdb3_cache"}
!1296 = distinct !{!1296, !1295, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1297 = distinct !{!1297, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsidB8gjke19X_15influxdb3_cache"}
!1298 = distinct !{!1298, !1297, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1299 = distinct !{!1299, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1300 = distinct !{!1300, !1299, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1301 = distinct !{!1301, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1302 = distinct !{!1302, !1301, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1303 = distinct !{!1303, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1304 = distinct !{!1304, !1303, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1305 = distinct !{!1305, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsidB8gjke19X_15influxdb3_cache"}
!1306 = distinct !{!1306, !1305, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1307 = distinct !{!1307, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1308 = distinct !{!1308, !1307, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1309 = distinct !{!1309, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1310 = distinct !{!1310, !1309, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1311 = distinct !{!1311, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1312 = distinct !{!1312, !1311, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1313 = !{!1282, !1280, !1278}
!1314 = !{!1280, !1278}
!1315 = !{!1284}
!1316 = !{!1286}
!1317 = !{!1290, !1288}
!1318 = !{!1288}
!1319 = !{!1292}
!1320 = !{!1294}
!1321 = !{!1300, !1298, !1296}
!1322 = !{!1298, !1296}
!1323 = !{!1302}
!1324 = !{!1304}
!1325 = !{!1308, !1306}
!1326 = !{!1306}
!1327 = !{!1310}
!1328 = !{!1312}
!1329 = distinct !{!1329, !"_RNCNvMNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB4_13DistinctCache15to_record_batchs2_0B8_"}
!1330 = distinct !{!1330, !1329, !"_RNCNvMNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB4_13DistinctCache15to_record_batchs2_0B8_: argument 0"}
!1331 = distinct !{null}
!1332 = distinct !{!1332, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldRjNCINvNvBS_6max_by4foldB1C_NvYB1C_NtNtBb_3cmp3Ord3cmpE0ECsidB8gjke19X_15influxdb3_cache"}
!1333 = distinct !{!1333, !1332, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldRjNCINvNvBS_6max_by4foldB1C_NvYB1C_NtNtBb_3cmp3Ord3cmpE0ECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1334 = distinct !{!1334, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator6max_by4foldRjNvYB1d_NtNtBe_3cmp3Ord3cmpE0CsidB8gjke19X_15influxdb3_cache"}
!1335 = distinct !{!1335, !1334, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator6max_by4foldRjNvYB1d_NtNtBe_3cmp3Ord3cmpE0CsidB8gjke19X_15influxdb3_cache: argument 2"}
!1336 = distinct !{!1336, !1334, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator6max_by4foldRjNvYB1d_NtNtBe_3cmp3Ord3cmpE0CsidB8gjke19X_15influxdb3_cache: argument 1"}
!1337 = distinct !{!1337, !1334, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator6max_by4foldRjNvYB1d_NtNtBe_3cmp3Ord3cmpE0CsidB8gjke19X_15influxdb3_cache: argument 0"}
!1338 = distinct !{!1338, !"_RINvNtCs4NRVxsYgnAr_4core3cmp6max_byRjQNvYBy_NtB2_3Ord3cmpECsidB8gjke19X_15influxdb3_cache"}
!1339 = distinct !{!1339, !1338, !"_RINvNtCs4NRVxsYgnAr_4core3cmp6max_byRjQNvYBy_NtB2_3Ord3cmpECsidB8gjke19X_15influxdb3_cache: argument 2"}
!1340 = distinct !{!1340, !1338, !"_RINvNtCs4NRVxsYgnAr_4core3cmp6max_byRjQNvYBy_NtB2_3Ord3cmpECsidB8gjke19X_15influxdb3_cache: argument 1"}
!1341 = distinct !{!1341, !1338, !"_RINvNtCs4NRVxsYgnAr_4core3cmp6max_byRjQNvYBy_NtB2_3Ord3cmpECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1342 = distinct !{!1342, !"_RNvMNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB2_13DistinctCache15expired_time_ns"}
!1343 = distinct !{!1343, !1342, !"_RNvMNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cacheNtB2_13DistinctCache15expired_time_ns: argument 0"}
!1344 = distinct !{!1344, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionRNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache9PredicateEEEB1A_"}
!1345 = distinct !{!1345, !1344, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionRNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache9PredicateEEEB1A_: argument 0"}
!1346 = distinct !{!1346, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache9PredicateEENtNtNtBQ_3ops4drop4Drop4dropB1u_"}
!1347 = distinct !{!1347, !1346, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache9PredicateEENtNtNtBQ_3ops4drop4Drop4dropB1u_: argument 0"}
!1348 = distinct !{!1348, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache9PredicateEENtNtNtBQ_3ops4drop4Drop4dropB1u_"}
!1349 = distinct !{!1349, !1348, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache9PredicateEENtNtNtBQ_3ops4drop4Drop4dropB1u_: argument 0"}
!1350 = distinct !{!1350, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache9PredicateEENtNtNtBQ_3ops4drop4Drop4dropB1u_"}
!1351 = distinct !{!1351, !1350, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache9PredicateEENtNtNtBQ_3ops4drop4Drop4dropB1u_: argument 0"}
!1352 = distinct !{!1352, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaEECsidB8gjke19X_15influxdb3_cache"}
!1353 = distinct !{!1353, !1352, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1354 = distinct !{!1354, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1355 = distinct !{!1355, !1354, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1356 = distinct !{!1356, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaEECsidB8gjke19X_15influxdb3_cache"}
!1357 = distinct !{!1357, !1356, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1358 = distinct !{!1358, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1359 = distinct !{!1359, !1358, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1360 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!1361 = !{!1330}
!1362 = !{!1337, !1336, !1335, !1333}
!1363 = !{!1341, !1340, !1339, !1337, !1336, !1335, !1333}
!1364 = !{!1343}
!1365 = !{!1347, !1345}
!1366 = !{!1345}
!1367 = !{!1349}
!1368 = !{!1351}
!1369 = !{!1355, !1353}
!1370 = !{!1357}
!1371 = !{!1359}
!1372 = !{!1359, !1357}
!1373 = distinct !{!1373, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierEECsidB8gjke19X_15influxdb3_cache"}
!1374 = distinct !{!1374, !1373, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1375 = distinct !{!1375, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1376 = distinct !{!1376, !1375, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1377 = distinct !{!1377, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1378 = distinct !{!1378, !1377, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1379 = distinct !{!1379, !"_RNvMNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36legacyNtB2_15TableDefinition3new"}
!1380 = distinct !{!1380, !1379, !"_RNvMNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36legacyNtB2_15TableDefinition3new: argument 0"}
!1381 = distinct !{!1381, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36legacy16ColumnDefinitionECsidB8gjke19X_15influxdb3_cache"}
!1382 = distinct !{!1382, !1381, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36legacy16ColumnDefinitionECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1383 = distinct !{!1383, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsidB8gjke19X_15influxdb3_cache"}
!1384 = distinct !{!1384, !1383, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1385 = distinct !{!1385, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1386 = distinct !{!1386, !1385, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1387 = distinct !{!1387, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36legacy16ColumnDefinitionECsidB8gjke19X_15influxdb3_cache"}
!1388 = distinct !{!1388, !1387, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36legacy16ColumnDefinitionECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1389 = distinct !{!1389, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsidB8gjke19X_15influxdb3_cache"}
!1390 = distinct !{!1390, !1389, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1391 = distinct !{!1391, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1392 = distinct !{!1392, !1391, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1393 = distinct !{!1393, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEE3newCsidB8gjke19X_15influxdb3_cache"}
!1394 = distinct !{!1394, !1393, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEE3newCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1395 = distinct !{!1395, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEE8push_mutCsidB8gjke19X_15influxdb3_cache"}
!1396 = distinct !{!1396, !1395, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEE8push_mutCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1397 = distinct !{!1397, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEECsidB8gjke19X_15influxdb3_cache"}
!1398 = distinct !{!1398, !1397, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1399 = distinct !{!1399, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1400 = distinct !{!1400, !1399, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1401 = distinct !{!1401, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36legacy16ColumnDefinitionECsidB8gjke19X_15influxdb3_cache"}
!1402 = distinct !{!1402, !1401, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36legacy16ColumnDefinitionECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1403 = distinct !{!1403, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsidB8gjke19X_15influxdb3_cache"}
!1404 = distinct !{!1404, !1403, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1405 = distinct !{!1405, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1406 = distinct !{!1406, !1405, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1407 = distinct !{!1407, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEECsidB8gjke19X_15influxdb3_cache"}
!1408 = distinct !{!1408, !1407, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1409 = distinct !{!1409, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1410 = distinct !{!1410, !1409, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1411 = distinct !{!1411, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1412 = distinct !{!1412, !1411, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1413 = distinct !{!1413, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1414 = distinct !{!1414, !1413, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1415 = distinct !{!1415, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECsidB8gjke19X_15influxdb3_cache"}
!1416 = distinct !{!1416, !1415, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1417 = distinct !{!1417, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1418 = distinct !{!1418, !1417, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1419 = distinct !{!1419, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECsidB8gjke19X_15influxdb3_cache"}
!1420 = distinct !{!1420, !1419, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1421 = distinct !{!1421, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1422 = distinct !{!1422, !1421, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1423 = distinct !{!1423, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_EECsidB8gjke19X_15influxdb3_cache"}
!1424 = distinct !{!1424, !1423, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_EECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1425 = distinct !{!1425, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1426 = distinct !{!1426, !1425, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1427 = distinct !{!1427, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_EECsidB8gjke19X_15influxdb3_cache"}
!1428 = distinct !{!1428, !1427, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_EECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1429 = distinct !{!1429, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1430 = distinct !{!1430, !1429, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1431 = distinct !{!1431, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaEE3newCsidB8gjke19X_15influxdb3_cache"}
!1432 = distinct !{!1432, !1431, !"_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaEE3newCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1433 = distinct !{!1433, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierEECsidB8gjke19X_15influxdb3_cache"}
!1434 = distinct !{!1434, !1433, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1435 = distinct !{!1435, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1436 = distinct !{!1436, !1435, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1437 = distinct !{!1437, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1438 = distinct !{!1438, !1437, !"_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1439 = distinct !{!1439, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECsidB8gjke19X_15influxdb3_cache"}
!1440 = distinct !{!1440, !1439, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1441 = distinct !{!1441, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1442 = distinct !{!1442, !1441, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1443 = distinct !{!1443, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_EECsidB8gjke19X_15influxdb3_cache"}
!1444 = distinct !{!1444, !1443, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_EECsidB8gjke19X_15influxdb3_cache: argument 0"}
!1445 = distinct !{!1445, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache"}
!1446 = distinct !{!1446, !1445, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache: argument 0"}
!1447 = !{i64 1, i64 0}
!1448 = !{!1376, !1374}
!1449 = !{!1374}
!1450 = !{!1378}
!1451 = !{!1380}
!1452 = !{!1386, !1384, !1382}
!1453 = !{!1388}
!1454 = !{!1390}
!1455 = !{!1392}
!1456 = !{!1392, !1390, !1388}
!1457 = !{!1394}
!1458 = !{!1396}
!1459 = !{!1400, !1398, !1396}
!1460 = !{!1402}
!1461 = !{!1404}
!1462 = !{!1406}
!1463 = !{!1406, !1404, !1402}
!1464 = !{!1410, !1408}
!1465 = !{!1408}
!1466 = !{!1412}
!1467 = !{!1414}
!1468 = !{!1416}
end_hunk_2

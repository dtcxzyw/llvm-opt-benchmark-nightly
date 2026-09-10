Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.03?download=true
inline.NumInlined: 4272
inline.NumDeleted: 1863
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNvYBT_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter:bb.a
  %i.f = getelementptr i8, ptr %.val7, i64 16
  %.val3.i.i = load i64, ptr %i.f, align 8, !noundef !6
  %i.g = tail call noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i.i, i64 noundef %.val3.i.i) ; 2 uses
  %.not.i.i.i = icmp ne i8 %i.g, -2
  %i.h = icmp slt i8 %i.g, 0
  %.sroa.0.0.i.i.i = and i1 %.not.i.i.i, %i.h     ; 2 uses
  %.not34 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %.sroa.0.0.i.i.i, label %.preheader, label %.preheader24

.preheader24:                                     ; preds = %bb.b
  br i1 %.not34, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not34, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph30

.lr.ph:                                           ; preds = %.preheader24, %bb.c
  %.val5 = phi ptr [ %.val4, %bb.c ], [ %.val6, %.preheader24 ] ; 2 uses
  %.sroa.01.0.i26 = phi i64 [ %i.p, %bb.c ], [ 2, %.preheader24 ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i26
  %.val4 = load ptr, ptr %i.i, align 8, !nonnull !6, !align !15, !noundef !6 ; 3 uses
  %i.j = getelementptr i8, ptr %.val4, i64 8
  %.val.i.i8 = load ptr, ptr %i.j, align 8, !nonnull !6, !noundef !6
  %i.k = getelementptr i8, ptr %.val4, i64 16
  %.val1.i.i9 = load i64, ptr %i.k, align 8, !noundef !6
  %i.l = getelementptr i8, ptr %.val5, i64 8
  %.val2.i.i10 = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6
  %i.m = getelementptr i8, ptr %.val5, i64 16
  %.val3.i.i11 = load i64, ptr %i.m, align 8, !noundef !6
  %i.n = tail call noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i8, i64 noundef %.val1.i.i9, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i.i10, i64 noundef %.val3.i.i11) ; 2 uses
  %.not.i.i.i12 = icmp ne i8 %i.n, -2
  %i.o = icmp slt i8 %i.n, 0
  %.sroa.0.0.i.i.i13 = and i1 %.not.i.i.i12, %i.o
  br i1 %.sroa.0.0.i.i.i13, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.p = add nuw nsw i64 %.sroa.01.0.i26, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.thread, label %.lr.ph

.lr.ph30:                                         ; preds = %.preheader, %bb.d
  %.val3 = phi ptr [ %.val, %bb.d ], [ %.val6, %.preheader ] ; 2 uses
  %.sroa.01.1.i29 = phi i64 [ %i.x, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i29
  %.val = load ptr, ptr %i.q, align 8, !nonnull !6, !align !15, !noundef !6 ; 3 uses
  %i.r = getelementptr i8, ptr %.val, i64 8
  %.val.i.i14 = load ptr, ptr %i.r, align 8, !nonnull !6, !noundef !6
  %i.s = getelementptr i8, ptr %.val, i64 16
  %.val1.i.i15 = load i64, ptr %i.s, align 8, !noundef !6
  %i.t = getelementptr i8, ptr %.val3, i64 8
  %.val2.i.i16 = load ptr, ptr %i.t, align 8, !nonnull !6, !noundef !6
  %i.u = getelementptr i8, ptr %.val3, i64 16
  %.val3.i.i17 = load i64, ptr %i.u, align 8, !noundef !6
  %i.v = tail call noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i14, i64 noundef %.val1.i.i15, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i.i16, i64 noundef %.val3.i.i17) ; 2 uses
  %.not.i.i.i18 = icmp ne i8 %i.v, -2
  %i.w = icmp slt i8 %i.v, 0
  %.sroa.0.0.i.i.i19 = and i1 %.not.i.i.i18, %i.w
  br i1 %.sroa.0.0.i.i.i19, label %bb.d, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

bb.d:                                             ; preds = %.lr.ph30
  %i.x = add nuw nsw i64 %.sroa.01.1.i29, 1       ; 2 uses
  %exitcond37.not = icmp eq i64 %i.x, %1
  br i1 %exitcond37.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.thread, label %.lr.ph30

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.lr.ph, %.lr.ph30, %.preheader24, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader24 ], [ 2, %.preheader ], [ %.sroa.01.1.i29, %.lr.ph30 ], [ %.sroa.01.0.i26, %.lr.ph ] ; 2 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.y)
  %i.z = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.z, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.e

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit
  br i1 %.sroa.0.0.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCode12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCode7reverseCsEhZmuQNqkz_11ruff_linter.exit

bb.e:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit
  %i.aa = or i64 %1, 1
  %i.ab = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 1
  %i.ae = xor i32 %i.ad, 126
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNvYB17_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.ae, ptr noalias noundef nonnull %2)
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCode7reverseCsEhZmuQNqkz_11ruff_linter.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCode7reverseCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCode12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i, %middle.block, %bb.a, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.thread, %bb.e
  ret void

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCode12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.thread
  %i.af = lshr i64 %1, 1                          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %1, 8
  br i1 %min.iters.check, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCode12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCode12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i
  %n.vec = and i64 %i.af, 576460752303423484      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = xor i64 %index, -1
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 4 uses
  %i.aj = getelementptr [8 x i8], ptr %i.ag, i64 %i.ah ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ai, align 8, !alias.scope !1431, !noalias !1430
  %wide.load52 = load <2 x ptr>, ptr %i.ak, align 8, !alias.scope !1431, !noalias !1430
  %i.al = getelementptr i8, ptr %i.aj, i64 -8
  %i.am = getelementptr i8, ptr %i.aj, i64 -24
  %wide.load53 = load <2 x i64>, ptr %i.al, align 8, !alias.scope !1432, !noalias !1429
  %wide.load54 = load <2 x i64>, ptr %i.am, align 8, !alias.scope !1432, !noalias !1429
  %reverse = shufflevector <2 x i64> %wide.load53, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse55 = shufflevector <2 x i64> %wide.load54, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <2 x i64> %reverse, ptr %i.ai, align 8, !alias.scope !1431, !noalias !1430
  store <2 x i64> %reverse55, ptr %i.an, align 8, !alias.scope !1431, !noalias !1430
  %i.ao = getelementptr i8, ptr %i.aj, i64 -8
  %i.ap = getelementptr i8, ptr %i.aj, i64 -24
  %reverse56 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse57 = shufflevector <2 x ptr> %wide.load52, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse56, ptr %i.ao, align 8, !alias.scope !1432, !noalias !1429
  store <2 x ptr> %reverse57, ptr %i.ap, align 8, !alias.scope !1432, !noalias !1429
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !1427

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCode7reverseCsEhZmuQNqkz_11ruff_linter.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCode12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCode12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCode12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCode12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCode12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCode12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCode12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCode12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.aw, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCode12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCode12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.preheader ] ; 3 uses
  %i.ar = xor i64 %.sroa.0.016.i.i, -1
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.at = getelementptr [8 x i8], ptr %i.ag, i64 %i.ar ; 2 uses
  %i.au = load ptr, ptr %i.as, align 8, !alias.scope !1431, !noalias !1430, !nonnull !6, !align !15, !noundef !6
  %i.av = load i64, ptr %i.at, align 8, !alias.scope !1432, !noalias !1429
  store i64 %i.av, ptr %i.as, align 8, !alias.scope !1431, !noalias !1430
  store ptr %i.au, ptr %i.at, align 8, !alias.scope !1432, !noalias !1429
  %i.aw = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.aw, %i.af
  br i1 %exitcond.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCode7reverseCsEhZmuQNqkz_11ruff_linter.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCode12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i, !llvm.loop !1428
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYBT_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull %2) unnamed_addr #6 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType7reverseCsEhZmuQNqkz_11ruff_linter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %.val7 = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %.val.i.i = load i8, ptr %.val6, align 1, !range !34, !noundef !6 ; 6 uses
  %.val1.i.i = load i8, ptr %.val7, align 1, !range !34, !noundef !6 ; 4 uses
  %i.c = icmp ne i8 %.val.i.i, 6
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add nsw i8 %.val.i.i, -4
  %i.e = icmp samesign ugt i8 %.val.i.i, 3
  %narrow.i.i.i.i = select i1 %i.e, i8 %i.d, i8 2 ; 2 uses
  %i.f = icmp ne i8 %.val1.i.i, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i8 %.val1.i.i, -4
  %i.h = icmp samesign ugt i8 %.val1.i.i, 3
  %narrow1.i.i.i.i = select i1 %i.h, i8 %i.g, i8 2 ; 2 uses
  %i.i = icmp eq i8 %narrow.i.i.i.i, 2
  %i.j = icmp eq i8 %narrow1.i.i.i.i, 2
  %or.cond.i.i.i.i = and i1 %i.i, %i.j
  br i1 %or.cond.i.i.i.i, label %.split, label %_RNvYNvYRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1q_3ops8function5FnMutTRB5_B2x_EE8call_mutCsEhZmuQNqkz_11ruff_linter.exit

.split:                                           ; preds = %bb.b
  %i.k = icmp samesign ult i8 %.val.i.i, %.val1.i.i
  br i1 %i.k, label %.preheader, label %.preheader30

.preheader:                                       ; preds = %_RNvYNvYRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1q_3ops8function5FnMutTRB5_B2x_EE8call_mutCsEhZmuQNqkz_11ruff_linter.exit, %.split
  %.not40 = icmp eq i64 %1, 2
  br i1 %.not40, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph36

_RNvYNvYRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1q_3ops8function5FnMutTRB5_B2x_EE8call_mutCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.b
  %i.l = icmp samesign ult i8 %narrow.i.i.i.i, %narrow1.i.i.i.i
  br i1 %i.l, label %.preheader, label %.preheader30

.preheader30:                                     ; preds = %_RNvYNvYRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1q_3ops8function5FnMutTRB5_B2x_EE8call_mutCsEhZmuQNqkz_11ruff_linter.exit, %.split
  %.not = icmp eq i64 %1, 2
  br i1 %.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader30, %bb.c
  %.val1.i.i9 = phi i8 [ %.val.i.i8, %bb.c ], [ %.val.i.i, %.preheader30 ] ; 3 uses
  %.sroa.01.0.i32 = phi i64 [ %i.v, %bb.c ], [ 2, %.preheader30 ] ; 5 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i32
  %i.n = add nsw i64 %.sroa.01.0.i32, -1
  %i.o = icmp samesign ult i64 %i.n, %1
  tail call void @llvm.assume(i1 %i.o)
  %.val4 = load ptr, ptr %i.m, align 8, !nonnull !6, !noundef !6
  %.val.i.i8 = load i8, ptr %.val4, align 1, !range !34, !noundef !6 ; 5 uses
  %i.p = icmp ne i8 %.val.i.i8, 6
  tail call void @llvm.assume(i1 %i.p)
  %3 = add nsw i8 %.val.i.i8, -4
  %4 = icmp samesign ugt i8 %.val.i.i8, 3
  %narrow.i.i.i.i10 = select i1 %4, i8 %3, i8 2   ; 2 uses
  %i.q = add nsw i8 %.val1.i.i9, -4
  %i.r = icmp samesign ugt i8 %.val1.i.i9, 3
  %narrow1.i.i.i.i11.a = select i1 %i.r, i8 %i.q, i8 2 ; 2 uses
  %5 = icmp eq i8 %narrow.i.i.i.i10, 2
  %i.s = icmp eq i8 %narrow1.i.i.i.i11.a, 2
  %or.cond.i.i.i.i12 = and i1 %5, %i.s
  br i1 %or.cond.i.i.i.i12, label %.split24, label %_RNvYNvYRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1q_3ops8function5FnMutTRB5_B2x_EE8call_mutCsEhZmuQNqkz_11ruff_linter.exit14

.split24:                                         ; preds = %.lr.ph
  %i.t = icmp samesign ult i8 %.val.i.i8, %.val1.i.i9
  br i1 %i.t, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit, label %bb.c

_RNvYNvYRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1q_3ops8function5FnMutTRB5_B2x_EE8call_mutCsEhZmuQNqkz_11ruff_linter.exit14: ; preds = %.lr.ph
  %i.u = icmp samesign ult i8 %narrow.i.i.i.i10, %narrow1.i.i.i.i11.a
  br i1 %i.u, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit, label %bb.c

bb.c:                                             ; preds = %.split24, %_RNvYNvYRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1q_3ops8function5FnMutTRB5_B2x_EE8call_mutCsEhZmuQNqkz_11ruff_linter.exit14
  %i.v = add nuw nsw i64 %.sroa.01.0.i32, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph

.lr.ph36:                                         ; preds = %.preheader, %bb.d
  %.val1.i.i16 = phi i8 [ %.val.i.i15, %bb.d ], [ %.val.i.i, %.preheader ] ; 3 uses
  %.sroa.01.1.i35 = phi i64 [ %i.af, %bb.d ], [ 2, %.preheader ] ; 5 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i35
  %i.x = add nsw i64 %.sroa.01.1.i35, -1
  %i.y = icmp samesign ult i64 %i.x, %1
  tail call void @llvm.assume(i1 %i.y)
  %.val = load ptr, ptr %i.w, align 8, !nonnull !6, !noundef !6
  %.val.i.i15 = load i8, ptr %.val, align 1, !range !34, !noundef !6 ; 5 uses
  %i.z = icmp ne i8 %.val.i.i15, 6
  tail call void @llvm.assume(i1 %i.z)
  %6 = add nsw i8 %.val.i.i15, -4
  %7 = icmp samesign ugt i8 %.val.i.i15, 3
  %narrow.i.i.i.i17 = select i1 %7, i8 %6, i8 2   ; 2 uses
  %i.aa = add nsw i8 %.val1.i.i16, -4
  %i.ab = icmp samesign ugt i8 %.val1.i.i16, 3
  %narrow1.i.i.i.i18.a = select i1 %i.ab, i8 %i.aa, i8 2 ; 2 uses
  %8 = icmp eq i8 %narrow.i.i.i.i17, 2
  %i.ac = icmp eq i8 %narrow1.i.i.i.i18.a, 2
  %or.cond.i.i.i.i19 = and i1 %8, %i.ac
  br i1 %or.cond.i.i.i.i19, label %.split25, label %_RNvYNvYRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1q_3ops8function5FnMutTRB5_B2x_EE8call_mutCsEhZmuQNqkz_11ruff_linter.exit21

.split25:                                         ; preds = %.lr.ph36
  %i.ad = icmp samesign ult i8 %.val.i.i15, %.val1.i.i16
  br i1 %i.ad, label %bb.d, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

_RNvYNvYRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1q_3ops8function5FnMutTRB5_B2x_EE8call_mutCsEhZmuQNqkz_11ruff_linter.exit21: ; preds = %.lr.ph36
  %i.ae = icmp samesign ult i8 %narrow.i.i.i.i17, %narrow1.i.i.i.i18.a
  br i1 %i.ae, label %bb.d, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

bb.d:                                             ; preds = %.split25, %_RNvYNvYRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1q_3ops8function5FnMutTRB5_B2x_EE8call_mutCsEhZmuQNqkz_11ruff_linter.exit21
  %i.af = add nuw nsw i64 %.sroa.01.1.i35, 1      ; 2 uses
  %exitcond44.not = icmp eq i64 %i.af, %1
  br i1 %exitcond44.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph36

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvYNvYRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1q_3ops8function5FnMutTRB5_B2x_EE8call_mutCsEhZmuQNqkz_11ruff_linter.exit14, %bb.c, %.split24, %_RNvYNvYRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1q_3ops8function5FnMutTRB5_B2x_EE8call_mutCsEhZmuQNqkz_11ruff_linter.exit21, %bb.d, %.split25, %.preheader30, %.preheader
  %.sroa.3.0.i = phi i1 [ true, %.preheader ], [ false, %.preheader30 ], [ true, %_RNvYNvYRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1q_3ops8function5FnMutTRB5_B2x_EE8call_mutCsEhZmuQNqkz_11ruff_linter.exit21 ], [ true, %.split25 ], [ true, %bb.d ], [ false, %.split24 ], [ false, %bb.c ], [ false, %_RNvYNvYRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1q_3ops8function5FnMutTRB5_B2x_EE8call_mutCsEhZmuQNqkz_11ruff_linter.exit14 ]
  %.sroa.0.0.i = phi i64 [ 2, %.preheader ], [ 2, %.preheader30 ], [ %.sroa.01.1.i35, %_RNvYNvYRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1q_3ops8function5FnMutTRB5_B2x_EE8call_mutCsEhZmuQNqkz_11ruff_linter.exit21 ], [ %1, %bb.d ], [ %.sroa.01.1.i35, %.split25 ], [ %.sroa.01.0.i32, %_RNvYNvYRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1q_3ops8function5FnMutTRB5_B2x_EE8call_mutCsEhZmuQNqkz_11ruff_linter.exit14 ], [ %1, %bb.c ], [ %.sroa.01.0.i32, %.split24 ] ; 2 uses
  %i.ag = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit
  br i1 %.sroa.3.0.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType7reverseCsEhZmuQNqkz_11ruff_linter.exit

bb.f:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit
  %i.ai = or i64 %1, 1
  %i.aj = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ai, i1 true)
  %i.ak = trunc nuw nsw i64 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 1
  %i.am = xor i32 %i.al, 126
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB17_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.am, ptr noalias noundef nonnull %2)
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType7reverseCsEhZmuQNqkz_11ruff_linter.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType7reverseCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i, %middle.block, %bb.a, %bb.e, %bb.f
  ret void

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i: ; preds = %bb.e
  %i.an = lshr i64 %1, 1                          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %1, 8
  br i1 %min.iters.check, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i
  %n.vec = and i64 %i.an, 576460752303423484      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ap = xor i64 %index, -1
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 4 uses
  %i.ar = getelementptr [8 x i8], ptr %i.ao, i64 %i.ap ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load = load <2 x ptr>, ptr %i.aq, align 8, !alias.scope !1442, !noalias !1441
  %wide.load56 = load <2 x ptr>, ptr %i.as, align 8, !alias.scope !1442, !noalias !1441
  %i.at = getelementptr i8, ptr %i.ar, i64 -8
  %i.au = getelementptr i8, ptr %i.ar, i64 -24
  %wide.load57 = load <2 x i64>, ptr %i.at, align 8, !alias.scope !1443, !noalias !1440
  %wide.load58 = load <2 x i64>, ptr %i.au, align 8, !alias.scope !1443, !noalias !1440
  %reverse = shufflevector <2 x i64> %wide.load57, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse59 = shufflevector <2 x i64> %wide.load58, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <2 x i64> %reverse, ptr %i.aq, align 8, !alias.scope !1442, !noalias !1441
  store <2 x i64> %reverse59, ptr %i.av, align 8, !alias.scope !1442, !noalias !1441
  %i.aw = getelementptr i8, ptr %i.ar, i64 -8
  %i.ax = getelementptr i8, ptr %i.ar, i64 -24
  %reverse60 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse61 = shufflevector <2 x ptr> %wide.load56, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse60, ptr %i.aw, align 8, !alias.scope !1443, !noalias !1440
  store <2 x ptr> %reverse61, ptr %i.ax, align 8, !alias.scope !1443, !noalias !1440
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1438

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType7reverseCsEhZmuQNqkz_11ruff_linter.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.be, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.preheader ] ; 3 uses
  %i.az = xor i64 %.sroa.0.016.i.i, -1
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %i.ao, i64 %i.az ; 2 uses
  %i.bc = load ptr, ptr %i.ba, align 8, !alias.scope !1442, !noalias !1441, !nonnull !6, !noundef !6
  %i.bd = load i64, ptr %i.bb, align 8, !alias.scope !1443, !noalias !1440
  store i64 %i.bd, ptr %i.ba, align 8, !alias.scope !1442, !noalias !1441
  store ptr %i.bc, ptr %i.bb, align 8, !alias.scope !1443, !noalias !1440
  %i.be = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.be, %i.an
  br i1 %exitcond.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType7reverseCsEhZmuQNqkz_11ruff_linter.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i, !llvm.loop !1439
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortRReNvYBT_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull %2) unnamed_addr #6 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRRe7reverseCsEhZmuQNqkz_11ruff_linter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6 = load ptr, ptr %i.b, align 8, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  %.val7 = load ptr, ptr %0, align 8, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  %.val.i.i = load ptr, ptr %.val6, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.c = getelementptr i8, ptr %.val6, i64 8
  %.val1.i.i = load i64, ptr %i.c, align 8, !noundef !6 ; 4 uses
  %.val2.i.i = load ptr, ptr %.val7, align 8, !nonnull !6, !noundef !6
  %i.d = getelementptr i8, ptr %.val7, i64 8
  %.val3.i.i = load i64, ptr %i.d, align 8, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i, i64 %.val3.i.i)
  %i.e = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val2.i.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !1478 ; 2 uses
  %i.f = sext i32 %i.e to i64
  %i.g = icmp eq i32 %i.e, 0
  %i.h = sub i64 %.val1.i.i, %.val3.i.i
  %spec.select.i.i.i.i.i.i = select i1 %i.g, i64 %i.h, i64 %i.f
  %i.i = icmp slt i64 %spec.select.i.i.i.i.i.i, 0 ; 2 uses
  %.not34 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.i, label %.preheader, label %.preheader24

.preheader24:                                     ; preds = %bb.b
  br i1 %.not34, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRReNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not34, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRReNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph30

.lr.ph:                                           ; preds = %.preheader24, %bb.c
  %.val3.i.i11 = phi i64 [ %.val1.i.i9, %bb.c ], [ %.val1.i.i, %.preheader24 ] ; 2 uses
  %.val2.i.i10 = phi ptr [ %.val.i.i8, %bb.c ], [ %.val.i.i, %.preheader24 ]
  %.sroa.01.0.i26 = phi i64 [ %i.q, %bb.c ], [ 2, %.preheader24 ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i26
  %.val4 = load ptr, ptr %i.j, align 8, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  %.val.i.i8 = load ptr, ptr %.val4, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.k = getelementptr i8, ptr %.val4, i64 8
  %.val1.i.i9 = load i64, ptr %i.k, align 8, !noundef !6 ; 3 uses
  %spec.store.select.i.i.i.i.i.i12 = tail call i64 @llvm.umin.i64(i64 %.val1.i.i9, i64 %.val3.i.i11)
  %i.l = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i8, ptr nonnull readonly %.val2.i.i10, i64 %spec.store.select.i.i.i.i.i.i12), !alias.scope !1479 ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = icmp eq i32 %i.l, 0
  %i.o = sub i64 %.val1.i.i9, %.val3.i.i11
  %spec.select.i.i.i.i.i.i13 = select i1 %i.n, i64 %i.o, i64 %i.m
  %i.p = icmp slt i64 %spec.select.i.i.i.i.i.i13, 0
  br i1 %i.p, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRReNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.q = add nuw nsw i64 %.sroa.01.0.i26, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRReNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.thread, label %.lr.ph

.lr.ph30:                                         ; preds = %.preheader, %bb.d
  %.val3.i.i17 = phi i64 [ %.val1.i.i15, %bb.d ], [ %.val1.i.i, %.preheader ] ; 2 uses
  %.val2.i.i16 = phi ptr [ %.val.i.i14, %bb.d ], [ %.val.i.i, %.preheader ]
  %.sroa.01.1.i29 = phi i64 [ %i.y, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i29
  %.val = load ptr, ptr %i.r, align 8, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  %.val.i.i14 = load ptr, ptr %.val, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.s = getelementptr i8, ptr %.val, i64 8
  %.val1.i.i15 = load i64, ptr %i.s, align 8, !noundef !6 ; 3 uses
  %spec.store.select.i.i.i.i.i.i18 = tail call i64 @llvm.umin.i64(i64 %.val1.i.i15, i64 %.val3.i.i17)
  %i.t = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i14, ptr nonnull readonly %.val2.i.i16, i64 %spec.store.select.i.i.i.i.i.i18), !alias.scope !1480 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %i.w = sub i64 %.val1.i.i15, %.val3.i.i17
  %spec.select.i.i.i.i.i.i19 = select i1 %i.v, i64 %i.w, i64 %i.u
  %i.x = icmp slt i64 %spec.select.i.i.i.i.i.i19, 0
  br i1 %i.x, label %bb.d, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRReNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

bb.d:                                             ; preds = %.lr.ph30
  %i.y = add nuw nsw i64 %.sroa.01.1.i29, 1       ; 2 uses
  %exitcond37.not = icmp eq i64 %i.y, %1
  br i1 %exitcond37.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRReNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.thread, label %.lr.ph30

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRReNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.lr.ph, %.lr.ph30, %.preheader24, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader24 ], [ 2, %.preheader ], [ %.sroa.01.1.i29, %.lr.ph30 ], [ %.sroa.01.0.i26, %.lr.ph ] ; 2 uses
  %i.z = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.aa, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRReNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.e

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRReNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRReNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit
  br i1 %i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRRe12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRRe7reverseCsEhZmuQNqkz_11ruff_linter.exit

bb.e:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRReNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit
  %i.ab = or i64 %1, 1
  %i.ac = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ab, i1 true)
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 1
  %i.af = xor i32 %i.ae, 126
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortRReNvYB17_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.af, ptr noalias noundef nonnull %2)
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRRe7reverseCsEhZmuQNqkz_11ruff_linter.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRRe7reverseCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRRe12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i, %middle.block, %bb.a, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRReNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.thread, %bb.e
  ret void

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRRe12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRReNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.thread
  %i.ag = lshr i64 %1, 1                          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %1, 8
  br i1 %min.iters.check, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRRe12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRRe12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i
end_hunk_0

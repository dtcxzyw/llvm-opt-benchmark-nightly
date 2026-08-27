Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.03?download=true
inline.NumInlined: 4272
inline.NumDeleted: 1863
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring14ExceptionEntryNCINvMB6_SBT_16sort_unstable_byNCNvMsh_BV_NtBV_11BodyVisitor6finish0E0EB13_:bb.a
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring14ExceptionEntryEB1a_.exit.i.i unwind label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #58
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring14ExceptionEntryEB1a_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.eu = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.eu, %i.eo
  br i1 %exitcond.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring14ExceptionEntry7reverseBE_.exit, label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNvYBT_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull %2) unnamed_addr #6 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCode7reverseCsEhZmuQNqkz_11ruff_linter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6 = load ptr, ptr %i.b, align 8, !nonnull !17, !align !416, !noundef !17 ; 4 uses
  %.val7 = load ptr, ptr %0, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %i.c = getelementptr i8, ptr %.val6, i64 8
  %.val.i.i = load ptr, ptr %i.c, align 8, !nonnull !17, !noundef !17
  %i.d = getelementptr i8, ptr %.val6, i64 16
  %.val1.i.i = load i64, ptr %i.d, align 8, !noundef !17
  %i.e = getelementptr i8, ptr %.val7, i64 8
  %.val2.i.i = load ptr, ptr %i.e, align 8, !nonnull !17, !noundef !17
  %i.f = getelementptr i8, ptr %.val7, i64 16
  %.val3.i.i = load i64, ptr %i.f, align 8, !noundef !17
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
  %.val4 = load ptr, ptr %i.i, align 8, !nonnull !17, !align !416, !noundef !17 ; 3 uses
  %i.j = getelementptr i8, ptr %.val4, i64 8
  %.val.i.i8 = load ptr, ptr %i.j, align 8, !nonnull !17, !noundef !17
  %i.k = getelementptr i8, ptr %.val4, i64 16
  %.val1.i.i9 = load i64, ptr %i.k, align 8, !noundef !17
  %i.l = getelementptr i8, ptr %.val5, i64 8
  %.val2.i.i10 = load ptr, ptr %i.l, align 8, !nonnull !17, !noundef !17
  %i.m = getelementptr i8, ptr %.val5, i64 16
  %.val3.i.i11 = load i64, ptr %i.m, align 8, !noundef !17
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
  %.val = load ptr, ptr %i.q, align 8, !nonnull !17, !align !416, !noundef !17 ; 3 uses
  %i.r = getelementptr i8, ptr %.val, i64 8
  %.val.i.i14 = load ptr, ptr %i.r, align 8, !nonnull !17, !noundef !17
  %i.s = getelementptr i8, ptr %.val, i64 16
  %.val1.i.i15 = load i64, ptr %i.s, align 8, !noundef !17
  %i.t = getelementptr i8, ptr %.val3, i64 8
  %.val2.i.i16 = load ptr, ptr %i.t, align 8, !nonnull !17, !noundef !17
  %i.u = getelementptr i8, ptr %.val3, i64 16
  %.val3.i.i17 = load i64, ptr %i.u, align 8, !noundef !17
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1392)
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
  %wide.load = load <2 x ptr>, ptr %i.ai, align 8, !alias.scope !1394, !noalias !1392
  %wide.load52 = load <2 x ptr>, ptr %i.ak, align 8, !alias.scope !1394, !noalias !1392
  %i.al = getelementptr i8, ptr %i.aj, i64 -8
  %i.am = getelementptr i8, ptr %i.aj, i64 -24
  %wide.load53 = load <2 x i64>, ptr %i.al, align 8, !alias.scope !1397, !noalias !1389
  %wide.load54 = load <2 x i64>, ptr %i.am, align 8, !alias.scope !1397, !noalias !1389
  %reverse = shufflevector <2 x i64> %wide.load53, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse55 = shufflevector <2 x i64> %wide.load54, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <2 x i64> %reverse, ptr %i.ai, align 8, !alias.scope !1394, !noalias !1392
  store <2 x i64> %reverse55, ptr %i.an, align 8, !alias.scope !1394, !noalias !1392
  %i.ao = getelementptr i8, ptr %i.aj, i64 -8
  %i.ap = getelementptr i8, ptr %i.aj, i64 -24
  %reverse56 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse57 = shufflevector <2 x ptr> %wide.load52, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse56, ptr %i.ao, align 8, !alias.scope !1397, !noalias !1389
  store <2 x ptr> %reverse57, ptr %i.ap, align 8, !alias.scope !1397, !noalias !1389
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !1398

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
  %i.au = load ptr, ptr %i.as, align 8, !alias.scope !1394, !noalias !1392, !nonnull !17, !align !416, !noundef !17
  %i.av = load i64, ptr %i.at, align 8, !alias.scope !1397, !noalias !1389
  store i64 %i.av, ptr %i.as, align 8, !alias.scope !1394, !noalias !1392
  store ptr %i.au, ptr %i.at, align 8, !alias.scope !1397, !noalias !1389
  %i.aw = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.aw, %i.af
  br i1 %exitcond.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCode7reverseCsEhZmuQNqkz_11ruff_linter.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCode12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i, !llvm.loop !1399
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYBT_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull %2) unnamed_addr #6 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType7reverseCsEhZmuQNqkz_11ruff_linter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6 = load ptr, ptr %i.b, align 8, !nonnull !17, !noundef !17
  %.val7 = load ptr, ptr %0, align 8, !nonnull !17, !noundef !17
  %.val.i.i = load i8, ptr %.val6, align 1, !range !1400, !noundef !17 ; 6 uses
  %.val1.i.i = load i8, ptr %.val7, align 1, !range !1400, !noundef !17 ; 4 uses
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
  %or.cond.i.i.i.i = and i1 %i.i, %i.j            ; 2 uses
  %.0.val.narrow.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %.val.i.i, i8 %narrow.i.i.i.i
  %.0.val1.narrow1.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %.val1.i.i, i8 %narrow1.i.i.i.i
  %3 = icmp samesign ult i8 %.0.val.narrow.i.i.i.i, %.0.val1.narrow1.i.i.i.i ; 2 uses
  %.not36 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %3, label %.preheader.a, label %.preheader26

.preheader26:                                     ; preds = %bb.b
  br i1 %.not36, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph

.preheader.a:                                     ; preds = %bb.b
  br i1 %.not36, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph32

.lr.ph:                                           ; preds = %.preheader26, %bb.c
  %.val1.i.i9 = phi i8 [ %.val.i.i8, %bb.c ], [ %.val.i.i, %.preheader26 ] ; 3 uses
  %.sroa.01.0.i28 = phi i64 [ %i.s, %bb.c ], [ 2, %.preheader26 ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i28
  %.val4 = load ptr, ptr %i.k, align 8, !nonnull !17, !noundef !17
  %.val.i.i8 = load i8, ptr %.val4, align 1, !range !1400, !noundef !17 ; 5 uses
  %i.l = icmp ne i8 %.val.i.i8, 6
  tail call void @llvm.assume(i1 %i.l)
  %i.m = add nsw i8 %.val.i.i8, -4
  %i.n = icmp samesign ugt i8 %.val.i.i8, 3
  %narrow.i.i.i.i10 = select i1 %i.n, i8 %i.m, i8 2 ; 2 uses
  %i.o = add nsw i8 %.val1.i.i9, -4
  %i.p = icmp samesign ugt i8 %.val1.i.i9, 3
  %narrow1.i.i.i.i11 = select i1 %i.p, i8 %i.o, i8 2 ; 2 uses
  %i.q = icmp eq i8 %narrow.i.i.i.i10, 2
  %i.r = icmp eq i8 %narrow1.i.i.i.i11, 2
  %or.cond.i.i.i.i12 = and i1 %i.q, %i.r          ; 2 uses
  %.0.val.narrow.i.i.i.i13 = select i1 %or.cond.i.i.i.i12, i8 %.val.i.i8, i8 %narrow.i.i.i.i10
  %.0.val1.narrow1.i.i.i.i14 = select i1 %or.cond.i.i.i.i12, i8 %.val1.i.i9, i8 %narrow1.i.i.i.i11
  %4 = icmp samesign ult i8 %.0.val.narrow.i.i.i.i13, %.0.val1.narrow1.i.i.i.i14
  br i1 %4, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.s = add nuw nsw i64 %.sroa.01.0.i28, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.thread, label %.lr.ph

.lr.ph32:                                         ; preds = %.preheader.a, %bb.d
  %.val1.i.i16 = phi i8 [ %.val.i.i15, %bb.d ], [ %.val.i.i, %.preheader.a ] ; 3 uses
  %.sroa.01.1.i31 = phi i64 [ %i.ab, %bb.d ], [ 2, %.preheader.a ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i31
  %.val = load ptr, ptr %i.t, align 8, !nonnull !17, !noundef !17
  %.val.i.i15 = load i8, ptr %.val, align 1, !range !1400, !noundef !17 ; 5 uses
  %i.u = icmp ne i8 %.val.i.i15, 6
  tail call void @llvm.assume(i1 %i.u)
  %i.v = add nsw i8 %.val.i.i15, -4
  %i.w = icmp samesign ugt i8 %.val.i.i15, 3
  %narrow.i.i.i.i17 = select i1 %i.w, i8 %i.v, i8 2 ; 2 uses
  %i.x = add nsw i8 %.val1.i.i16, -4
  %i.y = icmp samesign ugt i8 %.val1.i.i16, 3
  %narrow1.i.i.i.i18 = select i1 %i.y, i8 %i.x, i8 2 ; 2 uses
  %i.z = icmp eq i8 %narrow.i.i.i.i17, 2
  %i.aa = icmp eq i8 %narrow1.i.i.i.i18, 2
  %or.cond.i.i.i.i19 = and i1 %i.z, %i.aa         ; 2 uses
  %.0.val.narrow.i.i.i.i20 = select i1 %or.cond.i.i.i.i19, i8 %.val.i.i15, i8 %narrow.i.i.i.i17
  %.0.val1.narrow1.i.i.i.i21 = select i1 %or.cond.i.i.i.i19, i8 %.val1.i.i16, i8 %narrow1.i.i.i.i18
  %5 = icmp samesign ult i8 %.0.val.narrow.i.i.i.i20, %.0.val1.narrow1.i.i.i.i21
  br i1 %5, label %bb.d, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

bb.d:                                             ; preds = %.lr.ph32
  %i.ab = add nuw nsw i64 %.sroa.01.1.i31, 1      ; 2 uses
  %exitcond39.not = icmp eq i64 %i.ab, %1
  br i1 %exitcond39.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.thread, label %.lr.ph32

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.lr.ph, %.lr.ph32, %.preheader26, %.preheader.a
  %.sroa.0.0.i = phi i64 [ 2, %.preheader26 ], [ 2, %.preheader.a ], [ %.sroa.01.1.i31, %.lr.ph32 ], [ %.sroa.01.0.i28, %.lr.ph ] ; 2 uses
  %i.ac = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.ad, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.e

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit
  br i1 %3, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType7reverseCsEhZmuQNqkz_11ruff_linter.exit

bb.e:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit
  %i.ae = or i64 %1, 1
  %i.af = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ae, i1 true)
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 1
  %i.ai = xor i32 %i.ah, 126
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB17_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.ai, ptr noalias noundef nonnull %2)
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType7reverseCsEhZmuQNqkz_11ruff_linter.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType7reverseCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i, %middle.block, %bb.a, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.thread, %bb.e
  ret void

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB12_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.thread
  %i.aj = lshr i64 %1, 1                          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1404)
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %1, 8
  br i1 %min.iters.check, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i
  %n.vec = and i64 %i.aj, 576460752303423484      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = xor i64 %index, -1
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.ak, i64 %i.al ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <2 x ptr>, ptr %i.am, align 8, !alias.scope !1406, !noalias !1404
  %wide.load56 = load <2 x ptr>, ptr %i.ao, align 8, !alias.scope !1406, !noalias !1404
  %i.ap = getelementptr i8, ptr %i.an, i64 -8
  %i.aq = getelementptr i8, ptr %i.an, i64 -24
  %wide.load57 = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !1409, !noalias !1401
  %wide.load58 = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !1409, !noalias !1401
  %reverse = shufflevector <2 x i64> %wide.load57, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse59 = shufflevector <2 x i64> %wide.load58, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <2 x i64> %reverse, ptr %i.am, align 8, !alias.scope !1406, !noalias !1404
  store <2 x i64> %reverse59, ptr %i.ar, align 8, !alias.scope !1406, !noalias !1404
  %i.as = getelementptr i8, ptr %i.an, i64 -8
  %i.at = getelementptr i8, ptr %i.an, i64 -24
  %reverse60 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse61 = shufflevector <2 x ptr> %wide.load56, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse60, ptr %i.as, align 8, !alias.scope !1409, !noalias !1401
  store <2 x ptr> %reverse61, ptr %i.at, align 8, !alias.scope !1409, !noalias !1401
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !1410

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType7reverseCsEhZmuQNqkz_11ruff_linter.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ba, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.preheader ] ; 3 uses
  %i.av = xor i64 %.sroa.0.016.i.i, -1
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ax = getelementptr [8 x i8], ptr %i.ak, i64 %i.av ; 2 uses
  %i.ay = load ptr, ptr %i.aw, align 8, !alias.scope !1406, !noalias !1404, !nonnull !17, !noundef !17
  %i.az = load i64, ptr %i.ax, align 8, !alias.scope !1409, !noalias !1401
  store i64 %i.az, ptr %i.aw, align 8, !alias.scope !1406, !noalias !1404
  store ptr %i.ay, ptr %i.ax, align 8, !alias.scope !1409, !noalias !1401
  %i.ba = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ba, %i.aj
  br i1 %exitcond.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType7reverseCsEhZmuQNqkz_11ruff_linter.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i, !llvm.loop !1411
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortRReNvYBT_NtNtB8_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull %2) unnamed_addr #6 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRRe7reverseCsEhZmuQNqkz_11ruff_linter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6 = load ptr, ptr %i.b, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %.val7 = load ptr, ptr %0, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %.val.i.i = load ptr, ptr %.val6, align 8, !nonnull !17, !noundef !17 ; 3 uses
  %i.c = getelementptr i8, ptr %.val6, i64 8
  %.val1.i.i = load i64, ptr %i.c, align 8, !noundef !17 ; 4 uses
  %.val2.i.i = load ptr, ptr %.val7, align 8, !nonnull !17, !noundef !17
  %i.d = getelementptr i8, ptr %.val7, i64 8
  %.val3.i.i = load i64, ptr %i.d, align 8, !noundef !17 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i, i64 %.val3.i.i)
  %i.e = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val2.i.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !1412 ; 2 uses
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
  %.val4 = load ptr, ptr %i.j, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %.val.i.i8 = load ptr, ptr %.val4, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.k = getelementptr i8, ptr %.val4, i64 8
  %.val1.i.i9 = load i64, ptr %i.k, align 8, !noundef !17 ; 3 uses
  %spec.store.select.i.i.i.i.i.i12 = tail call i64 @llvm.umin.i64(i64 %.val1.i.i9, i64 %.val3.i.i11)
  %i.l = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i8, ptr nonnull readonly %.val2.i.i10, i64 %spec.store.select.i.i.i.i.i.i12), !alias.scope !1422 ; 2 uses
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
  %.val = load ptr, ptr %i.r, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %.val.i.i14 = load ptr, ptr %.val, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.s = getelementptr i8, ptr %.val, i64 8
  %.val1.i.i15 = load i64, ptr %i.s, align 8, !noundef !17 ; 3 uses
  %spec.store.select.i.i.i.i.i.i18 = tail call i64 @llvm.umin.i64(i64 %.val1.i.i15, i64 %.val3.i.i17)
  %i.t = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i14, ptr nonnull readonly %.val2.i.i16, i64 %spec.store.select.i.i.i.i.i.i18), !alias.scope !1432 ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1445)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %1, 8
  br i1 %min.iters.check, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRRe12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRRe12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i
  %n.vec = and i64 %i.ag, 576460752303423484      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ai = xor i64 %index, -1
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 4 uses
  %i.ak = getelementptr [8 x i8], ptr %i.ah, i64 %i.ai ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <2 x ptr>, ptr %i.aj, align 8, !alias.scope !1447, !noalias !1445
  %wide.load58 = load <2 x ptr>, ptr %i.al, align 8, !alias.scope !1447, !noalias !1445
  %i.am = getelementptr i8, ptr %i.ak, i64 -8
  %i.an = getelementptr i8, ptr %i.ak, i64 -24
  %wide.load59 = load <2 x i64>, ptr %i.am, align 8, !alias.scope !1450, !noalias !1442
  %wide.load60 = load <2 x i64>, ptr %i.an, align 8, !alias.scope !1450, !noalias !1442
  %reverse = shufflevector <2 x i64> %wide.load59, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse61 = shufflevector <2 x i64> %wide.load60, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB19_5sliceSB14_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingsNtB2j_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2p_:bb.a

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3RNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB14_5sliceSBZ_7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingsNtB2d_8SettingsNtNtBa_3fmt7Display3fmt0E0EB2j_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB19_5sliceSB14_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2j_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2p_(ptr nofree noundef readonly %0, ptr nofree noundef readonly %1, ptr nofree noundef readonly %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 dereferenceable(8) %4) unnamed_addr #7 {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB19_5sliceSB14_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2j_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2p_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB19_5sliceSB14_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2j_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2p_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recRNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB19_5sliceSB14_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2j_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2p_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.sroa.0.0.val13 = load ptr, ptr %.sroa.0.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %.sroa.04.0.val14 = load ptr, ptr %.sroa.04.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !17 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val14, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val14, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noundef !17 ; 4 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.u)
  %i.v = tail call i32 @memcmp(ptr nonnull %i.o, ptr nonnull %i.s, i64 %spec.store.select.i.i) ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = icmp eq i32 %i.v, 0
  %i.y = sub i64 %i.q, %i.u
  %spec.select.i.i = select i1 %i.x, i64 %i.y, i64 %i.w ; 2 uses
  %.sroa.08.0.val12 = load ptr, ptr %.sroa.08.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val12, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val12, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !17 ; 4 uses
  %spec.store.select.i.i15 = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.ac)
  %i.ad = tail call i32 @memcmp(ptr nonnull %i.o, ptr nonnull %i.aa, i64 %spec.store.select.i.i15) ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp eq i32 %i.ad, 0
  %i.ag = sub i64 %i.q, %i.ac
  %spec.select.i.i16 = select i1 %i.af, i64 %i.ag, i64 %i.ae
  %i.ah = xor i64 %spec.select.i.i16, %spec.select.i.i
  %i.ai = icmp slt i64 %i.ah, 0
  br i1 %i.ai, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3RNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB14_5sliceSBZ_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2d_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2j_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.store.select.i.i17 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.ac)
  %i.aj = tail call i32 @memcmp(ptr nonnull %i.s, ptr nonnull %i.aa, i64 %spec.store.select.i.i17) ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp eq i32 %i.aj, 0
  %i.am = sub i64 %i.u, %i.ac
  %spec.select.i.i18 = select i1 %i.al, i64 %i.am, i64 %i.ak
  %i.an = xor i64 %spec.select.i.i18, %spec.select.i.i
  %i.ao = icmp slt i64 %i.an, 0
  %..i = select i1 %i.ao, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3RNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB14_5sliceSBZ_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2d_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2j_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3RNtNtCscdodAO9FK5_5alloc6string6StringNCINvMNtB14_5sliceSBZ_7sort_byNCNvXs3_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settingsNtB2d_8SettingsNtNtBa_3fmt7Display3fmts0_0E0EB2j_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recRNtNtCscdodAO9FK5_5alloc6string6StringNvYB14_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noalias noundef nonnull %4) unnamed_addr #2 {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recRNtNtCscdodAO9FK5_5alloc6string6StringNvYB14_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias noundef nonnull %4)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recRNtNtCscdodAO9FK5_5alloc6string6StringNvYB14_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias noundef nonnull %4)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recRNtNtCscdodAO9FK5_5alloc6string6StringNvYB14_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias noundef nonnull %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %.sroa.0.0.val13 = load ptr, ptr %.sroa.0.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %.sroa.04.0.val14 = load ptr, ptr %.sroa.04.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0.val13, i64 8
  %.val.i.i = load ptr, ptr %i.n, align 8, !nonnull !17, !noundef !17
  %i.o = getelementptr i8, ptr %.sroa.0.0.val13, i64 16
  %.val1.i.i = load i64, ptr %i.o, align 8, !noundef !17
  %i.p = getelementptr i8, ptr %.sroa.04.0.val14, i64 8
  %.val2.i.i = load ptr, ptr %i.p, align 8, !nonnull !17, !noundef !17
  %i.q = getelementptr i8, ptr %.sroa.04.0.val14, i64 16
  %.val3.i.i = load i64, ptr %i.q, align 8, !noundef !17
  %i.r = tail call noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i.i, i64 noundef %.val3.i.i) ; 2 uses
  %.not.i.i.i = icmp ne i8 %i.r, -2
  %i.s = icmp slt i8 %i.r, 0
  %.sroa.0.0.i.i.i = and i1 %.not.i.i.i, %i.s     ; 2 uses
  %.sroa.0.0.val = load ptr, ptr %.sroa.0.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %.sroa.08.0.val12 = load ptr, ptr %.sroa.08.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %i.t = getelementptr i8, ptr %.sroa.0.0.val, i64 8
  %.val.i.i15 = load ptr, ptr %i.t, align 8, !nonnull !17, !noundef !17
  %i.u = getelementptr i8, ptr %.sroa.0.0.val, i64 16
  %.val1.i.i16 = load i64, ptr %i.u, align 8, !noundef !17
  %i.v = getelementptr i8, ptr %.sroa.08.0.val12, i64 8
  %.val2.i.i17 = load ptr, ptr %i.v, align 8, !nonnull !17, !noundef !17
  %i.w = getelementptr i8, ptr %.sroa.08.0.val12, i64 16
  %.val3.i.i18 = load i64, ptr %i.w, align 8, !noundef !17
  %i.x = tail call noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i15, i64 noundef %.val1.i.i16, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i.i17, i64 noundef %.val3.i.i18) ; 2 uses
  %.not.i.i.i19 = icmp ne i8 %i.x, -2
  %i.y = icmp slt i8 %i.x, 0
  %.sroa.0.0.i.i.i20 = and i1 %.not.i.i.i19, %i.y
  %i.z = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i20
  br i1 %i.z, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3RNtNtCscdodAO9FK5_5alloc6string6StringNvYBZ_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.04.0.val = load ptr, ptr %.sroa.04.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %i.aa = getelementptr i8, ptr %.sroa.04.0.val, i64 8
  %.val.i.i21 = load ptr, ptr %i.aa, align 8, !nonnull !17, !noundef !17
  %i.ab = getelementptr i8, ptr %.sroa.04.0.val, i64 16
  %.val1.i.i22 = load i64, ptr %i.ab, align 8, !noundef !17
  %i.ac = getelementptr i8, ptr %.sroa.08.0.val, i64 8
  %.val2.i.i23 = load ptr, ptr %i.ac, align 8, !nonnull !17, !noundef !17
  %i.ad = getelementptr i8, ptr %.sroa.08.0.val, i64 16
  %.val3.i.i24 = load i64, ptr %i.ad, align 8, !noundef !17
  %i.ae = tail call noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i21, i64 noundef %.val1.i.i22, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i.i23, i64 noundef %.val3.i.i24) ; 2 uses
  %.not.i.i.i25 = icmp ne i8 %i.ae, -2
  %i.af = icmp slt i8 %i.ae, 0
  %.sroa.0.0.i.i.i26 = and i1 %.not.i.i.i25, %i.af
  %i.ag = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i26
  %..i = select i1 %i.ag, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3RNtNtCscdodAO9FK5_5alloc6string6StringNvYBZ_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3RNtNtCscdodAO9FK5_5alloc6string6StringNvYBZ_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB14_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 144115188075855872) %3) unnamed_addr #9 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB14_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB14_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB14_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.sroa.0.0.val13 = load ptr, ptr %.sroa.0.0, align 8, !nonnull !17, !noundef !17
  %.sroa.04.0.val14 = load ptr, ptr %.sroa.04.0, align 8, !nonnull !17, !noundef !17
  %.val.i.i = load i8, ptr %.sroa.0.0.val13, align 1, !range !1400, !noundef !17 ; 5 uses
  %.val1.i.i = load i8, ptr %.sroa.04.0.val14, align 1, !range !1400, !noundef !17 ; 5 uses
  %i.n = icmp ne i8 %.val.i.i, 6
  tail call void @llvm.assume(i1 %i.n)
  %i.o = add nsw i8 %.val.i.i, -4
  %i.p = icmp samesign ugt i8 %.val.i.i, 3
  %narrow.i.i.i.i = select i1 %i.p, i8 %i.o, i8 2 ; 3 uses
  %i.q = icmp ne i8 %.val1.i.i, 6
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add nsw i8 %.val1.i.i, -4
  %i.s = icmp samesign ugt i8 %.val1.i.i, 3
  %narrow1.i.i.i.i = select i1 %i.s, i8 %i.r, i8 2 ; 3 uses
  %4 = icmp eq i8 %narrow.i.i.i.i, 2              ; 2 uses
  %i.t = icmp eq i8 %narrow1.i.i.i.i, 2           ; 2 uses
  %or.cond.i.i.i.i = and i1 %4, %i.t              ; 2 uses
  %.0.val.narrow.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %.val.i.i, i8 %narrow.i.i.i.i
  %.0.val1.narrow1.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %.val1.i.i, i8 %narrow1.i.i.i.i
  %5 = icmp samesign ult i8 %.0.val.narrow.i.i.i.i, %.0.val1.narrow1.i.i.i.i ; 2 uses
  %.sroa.08.0.val12 = load ptr, ptr %.sroa.08.0, align 8, !nonnull !17, !noundef !17
  %.val1.i.i16 = load i8, ptr %.sroa.08.0.val12, align 1, !range !1400, !noundef !17 ; 5 uses
  %6 = icmp ne i8 %.val1.i.i16, 6
  tail call void @llvm.assume(i1 %6)
  %7 = add nsw i8 %.val1.i.i16, -4
  %8 = icmp samesign ugt i8 %.val1.i.i16, 3
  %narrow1.i.i.i.i18 = select i1 %8, i8 %7, i8 2  ; 3 uses
  %i.u = icmp eq i8 %narrow1.i.i.i.i18, 2         ; 2 uses
  %or.cond.i.i.i.i19.a = and i1 %4, %i.u          ; 2 uses
  %.0.val.narrow.i.i.i.i20 = select i1 %or.cond.i.i.i.i19.a, i8 %.val.i.i, i8 %narrow.i.i.i.i
  %.0.val1.narrow1.i.i.i.i21 = select i1 %or.cond.i.i.i.i19.a, i8 %.val1.i.i16, i8 %narrow1.i.i.i.i18
  %9 = icmp samesign ult i8 %.0.val.narrow.i.i.i.i20, %.0.val1.narrow1.i.i.i.i21
  %10 = xor i1 %5, %9
  br i1 %10, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3RNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYBZ_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %or.cond.i.i.i.i26 = and i1 %i.t, %i.u          ; 2 uses
  %.0.val.narrow.i.i.i.i27 = select i1 %or.cond.i.i.i.i26, i8 %.val1.i.i, i8 %narrow1.i.i.i.i
  %.0.val1.narrow1.i.i.i.i28 = select i1 %or.cond.i.i.i.i26, i8 %.val1.i.i16, i8 %narrow1.i.i.i.i18
  %11 = icmp samesign ult i8 %.0.val.narrow.i.i.i.i27, %.0.val1.narrow1.i.i.i.i28
  %12 = xor i1 %5, %11
  %..i = select i1 %12, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3RNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYBZ_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3RNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYBZ_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB14_7sort_byNCNvXs1_NtB19_8settingsNtB38_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1d_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noalias noundef align 8 dereferenceable(8) %4) unnamed_addr #8 {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB14_7sort_byNCNvXs1_NtB19_8settingsNtB38_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1d_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB14_7sort_byNCNvXs1_NtB19_8settingsNtB38_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1d_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSB14_7sort_byNCNvXs1_NtB19_8settingsNtB38_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB1d_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.sroa.0.0.val13 = load ptr, ptr %.sroa.0.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 5 uses
  %.sroa.04.0.val14 = load ptr, ptr %.sroa.04.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1793)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1796)
  %i.n = load i64, ptr %.sroa.0.0.val13, align 8, !range !367, !alias.scope !1793, !noalias !1796, !noundef !17
  %i.o = icmp ne i64 %i.n, -1                     ; 5 uses
  %i.p = zext i1 %i.o to i8                       ; 2 uses
  %i.q = load i64, ptr %.sroa.04.0.val14, align 8, !range !367, !alias.scope !1796, !noalias !1793, !noundef !17 ; 2 uses
  %i.r = icmp eq i64 %i.q, -1                     ; 3 uses
  %not..i.i.i = xor i1 %i.r, true                 ; 2 uses
  %.neg.i.i.i = sext i1 %not..i.i.i to i8
  %i.s = add nsw i8 %.neg.i.i.i, %i.p
  %i.t = xor i1 %i.o, %i.r
  br i1 %i.t, label %bb.d, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 8 ; 2 uses
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.assume(i1 %not..i.i.i)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !1793, !noalias !1796, !nonnull !17, !noundef !17
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !1793, !noalias !1796, !noundef !17 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val14, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !1796, !noalias !1793, !nonnull !17, !noundef !17
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val14, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !1796, !noalias !1793, !noundef !17 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.ab)
  %i.ac = tail call i32 @memcmp(ptr nonnull %i.v, ptr nonnull %i.z, i64 %spec.store.select.i.i.i), !noalias !1798 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp eq i32 %i.ac, 0
  %i.af = sub i64 %i.x, %i.ab
  %spec.select.i.i.i = select i1 %i.ae, i64 %i.af, i64 %i.ad
  %i.ag = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.assume(i1 %i.r)
  %i.ah = load i8, ptr %i.u, align 8, !range !1799, !alias.scope !1793, !noalias !1796, !noundef !17
  %5 = zext nneg i8 %i.ah to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val14, i64 8
  %i.aj = load i8, ptr %i.ai, align 8, !range !1799, !alias.scope !1796, !noalias !1793, !noundef !17
  %6 = zext nneg i8 %i.aj to i64
  %i.ak = tail call i8 @llvm.scmp.i8.i64(i64 %5, i64 %6)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit: ; preds = %bb.c, %bb.e, %bb.f
  %.sroa.0.0.i.i.i = phi i8 [ %i.ag, %bb.e ], [ %i.ak, %bb.f ], [ %i.s, %bb.c ]
  %i.al = icmp eq i8 %.sroa.0.0.i.i.i, -1         ; 2 uses
  %.sroa.08.0.val12 = load ptr, ptr %.sroa.08.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1803)
  %i.am = load i64, ptr %.sroa.08.0.val12, align 8, !range !367, !alias.scope !1803, !noalias !1800, !noundef !17
  %i.an = icmp eq i64 %i.am, -1                   ; 5 uses
  %not..i.i.i15 = xor i1 %i.an, true              ; 3 uses
  %.neg.i.i.i16 = sext i1 %not..i.i.i15 to i8     ; 2 uses
  %i.ao = add nsw i8 %.neg.i.i.i16, %i.p
  %i.ap = xor i1 %i.o, %i.an
  br i1 %i.ap, label %bb.g, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit20

bb.g:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 8 ; 2 uses
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %not..i.i.i15)
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !1800, !noalias !1803, !nonnull !17, !noundef !17
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 16
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !1800, !noalias !1803, !noundef !17 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val12, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !1803, !noalias !1800, !nonnull !17, !noundef !17
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val12, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !1803, !noalias !1800, !noundef !17 ; 2 uses
  %spec.store.select.i.i.i18 = tail call i64 @llvm.umin.i64(i64 %i.at, i64 %i.ax)
  %i.ay = tail call i32 @memcmp(ptr nonnull %i.ar, ptr nonnull %i.av, i64 %spec.store.select.i.i.i18), !noalias !1805 ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = icmp eq i32 %i.ay, 0
  %i.bb = sub i64 %i.at, %i.ax
  %spec.select.i.i.i19 = select i1 %i.ba, i64 %i.bb, i64 %i.az
  %i.bc = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i19, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit20

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.an)
  %i.bd = load i8, ptr %i.aq, align 8, !range !1799, !alias.scope !1800, !noalias !1803, !noundef !17
  %7 = zext nneg i8 %i.bd to i64
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val12, i64 8
  %i.bf = load i8, ptr %i.be, align 8, !range !1799, !alias.scope !1803, !noalias !1800, !noundef !17
  %8 = zext nneg i8 %i.bf to i64
  %i.bg = tail call i8 @llvm.scmp.i8.i64(i64 %7, i64 %8)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit20

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit20: ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit, %bb.h, %bb.i
  %.sroa.0.0.i.i.i17 = phi i8 [ %i.bc, %bb.h ], [ %i.bg, %bb.i ], [ %i.ao, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit ]
  %i.bh = icmp eq i8 %.sroa.0.0.i.i.i17, -1
  %i.bi = xor i1 %i.al, %i.bh
  br i1 %i.bi, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3RNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_7sort_byNCNvXs1_NtB14_8settingsNtB32_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB18_.exit, label %bb.j

bb.j:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1809)
  %i.bj = icmp ne i64 %i.q, -1                    ; 3 uses
  %i.bk = zext i1 %i.bj to i8
  %i.bl = add nsw i8 %.neg.i.i.i16, %i.bk
  %i.bm = xor i1 %i.bj, %i.an
  br i1 %i.bm, label %bb.k, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit26

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val14, i64 8 ; 2 uses
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.assume(i1 %not..i.i.i15)
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !1806, !noalias !1809, !nonnull !17, !noundef !17
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val14, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !1806, !noalias !1809, !noundef !17 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val12, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !1809, !noalias !1806, !nonnull !17, !noundef !17
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val12, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !1809, !noalias !1806, !noundef !17 ; 2 uses
  %spec.store.select.i.i.i24 = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 %i.bu)
  %i.bv = tail call i32 @memcmp(ptr nonnull %i.bo, ptr nonnull %i.bs, i64 %spec.store.select.i.i.i24), !noalias !1811 ; 2 uses
  %i.bw = sext i32 %i.bv to i64
  %i.bx = icmp eq i32 %i.bv, 0
  %i.by = sub i64 %i.bq, %i.bu
  %spec.select.i.i.i25 = select i1 %i.bx, i64 %i.by, i64 %i.bw
  %i.bz = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i25, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.assume(i1 %i.an)
  %i.ca = load i8, ptr %i.bn, align 8, !range !1799, !alias.scope !1806, !noalias !1809, !noundef !17
  %9 = zext nneg i8 %i.ca to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val12, i64 8
  %i.cc = load i8, ptr %i.cb, align 8, !range !1799, !alias.scope !1809, !noalias !1806, !noundef !17
  %10 = zext nneg i8 %i.cc to i64
  %i.cd = tail call i8 @llvm.scmp.i8.i64(i64 %9, i64 %10)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit26

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit26: ; preds = %bb.j, %bb.l, %bb.m
  %.sroa.0.0.i.i.i23 = phi i8 [ %i.bz, %bb.l ], [ %i.cd, %bb.m ], [ %i.bl, %bb.j ]
  %i.ce = icmp eq i8 %.sroa.0.0.i.i.i23, -1
  %i.cf = xor i1 %i.al, %i.ce
  %..i = select i1 %i.cf, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3RNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_7sort_byNCNvXs1_NtB14_8settingsNtB32_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB18_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3RNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_7sort_byNCNvXs1_NtB14_8settingsNtB32_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB18_.exit: ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit20, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit26
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit20 ], [ %..i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit26 ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB14_NtNtBa_3cmp10PartialOrd2ltEB1d_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noalias noundef nonnull %4) unnamed_addr #8 {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB14_NtNtBa_3cmp10PartialOrd2ltEB1d_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias noundef nonnull %4)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB14_NtNtBa_3cmp10PartialOrd2ltEB1d_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias noundef nonnull %4)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB14_NtNtBa_3cmp10PartialOrd2ltEB1d_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias noundef nonnull %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 5 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 4 uses
  %.sroa.0.0.val13 = load ptr, ptr %.sroa.0.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 7 uses
  %.sroa.04.0.val14 = load ptr, ptr %.sroa.04.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1820)
  %i.n = load i64, ptr %.sroa.0.0.val13, align 8, !range !367, !alias.scope !1822, !noalias !1823, !noundef !17
  %.not94 = icmp eq i64 %i.n, -1                  ; 3 uses
  %i.o = load i64, ptr %.sroa.04.0.val14, align 8, !range !367, !alias.scope !1823, !noalias !1822, !noundef !17
  %.not42 = icmp eq i64 %i.o, -1                  ; 3 uses
  br i1 %.not94, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not42, label %bb.f, label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread31

bb.e:                                             ; preds = %bb.c
  br i1 %.not42, label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread, label %bb.g

_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 8
  %i.q = load i8, ptr %i.p, align 8, !range !1799, !alias.scope !1822, !noalias !1823, !noundef !17 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val14, i64 8
  %i.s = load i8, ptr %i.r, align 8, !range !1799, !alias.scope !1823, !noalias !1822, !noundef !17
  %i.t = icmp samesign ult i8 %i.q, %i.s          ; 2 uses
  %.sroa.08.0.val1224 = load ptr, ptr %.sroa.08.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %i.u = load i64, ptr %.sroa.08.0.val1224, align 8, !range !367, !alias.scope !1824, !noalias !1829, !noundef !17
  %.not45 = icmp eq i64 %i.u, -1
  br i1 %.not45, label %bb.h, label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread._RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit18_crit_edge

_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread._RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit18_crit_edge: ; preds = %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread
  br i1 %i.t, label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit22, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3RNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYBZ_NtNtBa_3cmp10PartialOrd2ltEB18_.exit

_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread31: ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !1822, !noalias !1823, !nonnull !17, !noundef !17 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !1822, !noalias !1823, !noundef !17 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val14, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !1823, !noalias !1822, !nonnull !17, !noundef !17
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val14, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !1823, !noalias !1822, !noundef !17 ; 2 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.ac)
  %i.ad = tail call i32 @memcmp(ptr nonnull %i.w, ptr nonnull %i.aa, i64 %spec.store.select.i.i.i.i), !noalias !1832 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp eq i32 %i.ad, 0
  %i.ag = sub i64 %i.y, %i.ac
  %spec.select.i.i.i.i = select i1 %i.af, i64 %i.ag, i64 %i.ae
  %i.ah = icmp slt i64 %spec.select.i.i.i.i, 0    ; 2 uses
  %.sroa.08.0.val1233 = load ptr, ptr %.sroa.08.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %i.ai = load i64, ptr %.sroa.08.0.val1233, align 8, !range !367, !alias.scope !1833, !noalias !1836, !noundef !17
  %.not44 = icmp eq i64 %i.ai, -1
  br i1 %.not44, label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread31._RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit18_crit_edge, label %bb.i

_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread31._RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit18_crit_edge: ; preds = %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread31
  br i1 %i.ah, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3RNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYBZ_NtNtBa_3cmp10PartialOrd2ltEB18_.exit, label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit22

bb.f:                                             ; preds = %bb.d
  %.sroa.08.0.val12 = load ptr, ptr %.sroa.08.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1839)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1843)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1845)
  %i.aj = load i64, ptr %.sroa.08.0.val12, align 8, !range !367, !alias.scope !1847, !noalias !1848, !noundef !17
  %.not43 = icmp eq i64 %i.aj, -1
  br i1 %.not43, label %.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !1848, !noalias !1847
  %.phi.trans.insert47 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 16
  %.pre48 = load i64, ptr %.phi.trans.insert47, align 8, !alias.scope !1848, !noalias !1847
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %.sroa.08.0.val1237 = load ptr, ptr %.sroa.08.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 3 uses
  %i.ak = load i64, ptr %.sroa.08.0.val1237, align 8, !range !367, !alias.scope !1849, !noalias !1852, !noundef !17
  %.not46 = icmp eq i64 %i.ak, -1
  br i1 %.not46, label %._crit_edge49, label %.thread77.thread

._crit_edge49:                                    ; preds = %bb.g
  %.phi.trans.insert50 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 8
  %.pre51 = load i8, ptr %.phi.trans.insert50, align 8, !range !1799, !alias.scope !1848, !noalias !1847
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge49, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread
  %i.al = phi i8 [ %i.q, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread ], [ %.pre51, %._crit_edge49 ]
  %.sroa.0.0.i.i.i.i2741 = phi i1 [ %i.t, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread ], [ true, %._crit_edge49 ]
  %.sroa.08.0.val122840 = phi ptr [ %.sroa.08.0.val1224, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread ], [ %.sroa.08.0.val1237, %._crit_edge49 ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val122840, i64 8
  %i.an = load i8, ptr %i.am, align 8, !range !1799, !alias.scope !1847, !noalias !1848, !noundef !17
  %i.ao = icmp samesign ult i8 %i.al, %i.an
  br label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit18

bb.i:                                             ; preds = %._crit_edge, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread31
  %i.ap = phi i64 [ %i.y, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread31 ], [ %.pre48, %._crit_edge ] ; 2 uses
  %i.aq = phi ptr [ %i.w, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread31 ], [ %.pre, %._crit_edge ]
  %.sroa.0.0.i.i.i.i3439 = phi i1 [ %i.ah, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread31 ], [ false, %._crit_edge ]
  %.sroa.08.0.val123538 = phi ptr [ %.sroa.08.0.val1233, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread31 ], [ %.sroa.08.0.val12, %._crit_edge ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val123538, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !1847, !noalias !1848, !nonnull !17, !noundef !17
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val123538, i64 16
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !1847, !noalias !1848, !noundef !17 ; 2 uses
  %spec.store.select.i.i.i.i16 = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 %i.au)
  %i.av = tail call i32 @memcmp(ptr nonnull %i.aq, ptr nonnull %i.as, i64 %spec.store.select.i.i.i.i16), !noalias !1855 ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp eq i32 %i.av, 0
  %i.ay = sub i64 %i.ap, %i.au
  %spec.select.i.i.i.i17 = select i1 %i.ax, i64 %i.ay, i64 %i.aw
  %i.az = icmp slt i64 %spec.select.i.i.i.i17, 0
  br label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit18

_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit18: ; preds = %bb.h, %bb.i
  %.sroa.08.0.val1229 = phi ptr [ %.sroa.08.0.val123538, %bb.i ], [ %.sroa.08.0.val122840, %bb.h ] ; 3 uses
  %.sroa.0.0.i.i.i.i25 = phi i1 [ %.sroa.0.0.i.i.i.i3439, %bb.i ], [ %.sroa.0.0.i.i.i.i2741, %bb.h ] ; 5 uses
  %.sroa.0.0.i.i.i.i15 = phi i1 [ %i.az, %bb.i ], [ %i.ao, %bb.h ]
  %i.ba = xor i1 %.sroa.0.0.i.i.i.i25, %.sroa.0.0.i.i.i.i15
  br i1 %i.ba, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3RNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYBZ_NtNtBa_3cmp10PartialOrd2ltEB18_.exit, label %bb.j

bb.j:                                             ; preds = %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit18
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.val1229) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1861)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1864)
  br i1 %.not42, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.not94, label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit22, label %.thread77.thread

bb.l:                                             ; preds = %bb.j
  br i1 %.not94, label %.thread, label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit22

.thread:                                          ; preds = %bb.f, %bb.l
  %.sroa.0.0.i.i.i.i25537187 = phi i1 [ %.sroa.0.0.i.i.i.i25, %bb.l ], [ false, %bb.f ]
  %.sroa.08.0.val1229527286 = phi ptr [ %.sroa.08.0.val1229, %bb.l ], [ %.sroa.08.0.val12, %bb.f ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val14, i64 8
  %i.bc = load i8, ptr %i.bb, align 8, !range !1799, !alias.scope !1866, !noalias !1867, !noundef !17
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val1229527286, i64 8
  %i.be = load i8, ptr %i.bd, align 8, !range !1799, !alias.scope !1867, !noalias !1866, !noundef !17
  %i.bf = icmp samesign ult i8 %i.bc, %i.be
  br label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit22

.thread77.thread:                                 ; preds = %bb.g, %bb.k
  %.sroa.0.0.i.i.i.i25538084 = phi i1 [ %.sroa.0.0.i.i.i.i25, %bb.k ], [ true, %bb.g ]
  %.sroa.08.0.val1229528183 = phi ptr [ %.sroa.08.0.val1229, %bb.k ], [ %.sroa.08.0.val1237, %bb.g ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val14, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !1866, !noalias !1867, !nonnull !17, !noundef !17
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val14, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !1866, !noalias !1867, !noundef !17 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val1229528183, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !1867, !noalias !1866, !nonnull !17, !noundef !17
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val1229528183, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !1867, !noalias !1866, !noundef !17 ; 2 uses
  %spec.store.select.i.i.i.i20 = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 %i.bn)
  %i.bo = tail call i32 @memcmp(ptr nonnull %i.bh, ptr nonnull %i.bl, i64 %spec.store.select.i.i.i.i20), !noalias !1868 ; 2 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = icmp eq i32 %i.bo, 0
  %i.br = sub i64 %i.bj, %i.bn
  %spec.select.i.i.i.i21 = select i1 %i.bq, i64 %i.br, i64 %i.bp
  %i.bs = icmp slt i64 %spec.select.i.i.i.i21, 0
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRNtNtCscdodAO9FK5_5alloc6string6StringRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settings13BannedAliasesENCINvMNtB1a_5sliceSB14_7sort_byNCNvXs3_B1K_NtB1K_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB1Q_:bb.a
  %i.am = sub i64 %i.u, %i.ac
  %spec.select.i.i18 = select i1 %i.al, i64 %i.am, i64 %i.ak
  %i.an = xor i64 %spec.select.i.i18, %spec.select.i.i
  %i.ao = icmp slt i64 %i.an, 0
  %..i = select i1 %i.ao, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRNtNtCscdodAO9FK5_5alloc6string6StringRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settings13BannedAliasesENCINvMNtB15_5sliceSBZ_7sort_byNCNvXs3_B1F_NtB1F_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB1L_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRNtNtCscdodAO9FK5_5alloc6string6StringRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settings13BannedAliasesENCINvMNtB15_5sliceSBZ_7sort_byNCNvXs3_B1F_NtB1F_8SettingsNtNtBa_3fmt7Display3fmts_0E0EB1L_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRNtNtCscdodAO9FK5_5alloc6string6StringRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settings13BannedAliasesENCINvMNtB1a_5sliceSB14_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB16_B1I_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3P_8CacheKey9cache_key0E0EB1Q_(ptr nofree noundef readonly %0, ptr nofree noundef readonly %1, ptr nofree noundef readonly %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 dereferenceable(8) %4) unnamed_addr #7 {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRNtNtCscdodAO9FK5_5alloc6string6StringRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settings13BannedAliasesENCINvMNtB1a_5sliceSB14_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB16_B1I_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3P_8CacheKey9cache_key0E0EB1Q_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRNtNtCscdodAO9FK5_5alloc6string6StringRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settings13BannedAliasesENCINvMNtB1a_5sliceSB14_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB16_B1I_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3P_8CacheKey9cache_key0E0EB1Q_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRNtNtCscdodAO9FK5_5alloc6string6StringRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settings13BannedAliasesENCINvMNtB1a_5sliceSB14_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB16_B1I_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3P_8CacheKey9cache_key0E0EB1Q_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.sroa.0.0.val13 = load ptr, ptr %.sroa.0.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %.sroa.04.0.val14 = load ptr, ptr %.sroa.04.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0.val13, i64 8
  %.val.i.i = load ptr, ptr %i.n, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.o = getelementptr i8, ptr %.sroa.0.0.val13, i64 16
  %.val1.i.i = load i64, ptr %i.o, align 8, !noundef !17 ; 4 uses
  %i.p = getelementptr i8, ptr %.sroa.04.0.val14, i64 8
  %.val2.i.i = load ptr, ptr %i.p, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.04.0.val14, i64 16
  %.val3.i.i = load i64, ptr %i.q, align 8, !noundef !17 ; 4 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val1.i.i, i64 range(i64 0, -9223372036854775808) %.val3.i.i)
  %i.r = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val2.i.i, i64 %spec.store.select.i.i.i.i.i), !alias.scope !2067 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp eq i32 %i.r, 0
  %i.u = sub nsw i64 %.val1.i.i, %.val3.i.i
  %spec.select.i.i.i.i.i = select i1 %i.t, i64 %i.u, i64 %i.s ; 2 uses
  %.sroa.08.0.val12 = load ptr, ptr %.sroa.08.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %i.v = getelementptr i8, ptr %.sroa.08.0.val12, i64 8
  %.val2.i.i17 = load ptr, ptr %i.v, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.w = getelementptr i8, ptr %.sroa.08.0.val12, i64 16
  %.val3.i.i18 = load i64, ptr %i.w, align 8, !noundef !17 ; 4 uses
  %spec.store.select.i.i.i.i.i19 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val1.i.i, i64 range(i64 0, -9223372036854775808) %.val3.i.i18)
  %i.x = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val2.i.i17, i64 %spec.store.select.i.i.i.i.i19), !alias.scope !2071 ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = icmp eq i32 %i.x, 0
  %i.aa = sub nsw i64 %.val1.i.i, %.val3.i.i18
  %spec.select.i.i.i.i.i20 = select i1 %i.z, i64 %i.aa, i64 %i.y
  %i.ab = xor i64 %spec.select.i.i.i.i.i20, %spec.select.i.i.i.i.i
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRNtNtCscdodAO9FK5_5alloc6string6StringRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settings13BannedAliasesENCINvMNtB15_5sliceSBZ_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB11_B1D_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3J_8CacheKey9cache_key0E0EB1L_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.store.select.i.i.i.i.i25 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val3.i.i, i64 range(i64 0, -9223372036854775808) %.val3.i.i18)
  %i.ad = tail call i32 @memcmp(ptr nonnull readonly %.val2.i.i, ptr nonnull readonly %.val2.i.i17, i64 %spec.store.select.i.i.i.i.i25), !alias.scope !2075 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp eq i32 %i.ad, 0
  %i.ag = sub nsw i64 %.val3.i.i, %.val3.i.i18
  %spec.select.i.i.i.i.i26 = select i1 %i.af, i64 %i.ag, i64 %i.ae
  %i.ah = xor i64 %spec.select.i.i.i.i.i26, %spec.select.i.i.i.i.i
  %i.ai = icmp slt i64 %i.ah, 0
  %..i = select i1 %i.ai, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRNtNtCscdodAO9FK5_5alloc6string6StringRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settings13BannedAliasesENCINvMNtB15_5sliceSBZ_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB11_B1D_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3J_8CacheKey9cache_key0E0EB1L_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRNtNtCscdodAO9FK5_5alloc6string6StringRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settings13BannedAliasesENCINvMNtB15_5sliceSBZ_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB11_B1D_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3J_8CacheKey9cache_key0E0EB1L_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtCscdodAO9FK5_5alloc3vec3VecB15_EIB1V_jEENCINvMNtB1Z_5sliceSB14_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0EB4b_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noalias noundef align 8 dereferenceable(8) %4) unnamed_addr #9 {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtCscdodAO9FK5_5alloc3vec3VecB15_EIB1V_jEENCINvMNtB1Z_5sliceSB14_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0EB4b_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  %i.h = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtCscdodAO9FK5_5alloc3vec3VecB15_EIB1V_jEENCINvMNtB1Z_5sliceSB14_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0EB4b_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  %i.k = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtCscdodAO9FK5_5alloc3vec3VecB15_EIB1V_jEENCINvMNtB1Z_5sliceSB14_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0EB4b_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 24
  %.sroa.0.0.val13 = load ptr, ptr %i.n, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %i.o = getelementptr i8, ptr %.sroa.04.0, i64 24
  %.sroa.04.0.val14 = load ptr, ptr %i.o, align 8 ; 2 uses
  %i.p = tail call fastcc noundef zeroext i1 @_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtB7_3vec3VecBy_EIB1o_jEE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0B30_(ptr nonnull %.sroa.0.0.val13, ptr %.sroa.04.0.val14) ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.08.0, i64 24
  %.sroa.08.0.val12 = load ptr, ptr %i.q, align 8 ; 2 uses
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtB7_3vec3VecBy_EIB1o_jEE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0B30_(ptr nonnull %.sroa.0.0.val13, ptr %.sroa.08.0.val12)
  %i.s = xor i1 %i.p, %i.r
  br i1 %i.s, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtCscdodAO9FK5_5alloc3vec3VecB10_EIB1Q_jEENCINvMNtB1U_5sliceSBZ_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0EB45_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = tail call fastcc noundef zeroext i1 @_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtB7_3vec3VecBy_EIB1o_jEE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0B30_(ptr %.sroa.04.0.val14, ptr %.sroa.08.0.val12)
  %i.u = xor i1 %i.p, %i.t
  %..i = select i1 %i.u, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtCscdodAO9FK5_5alloc3vec3VecB10_EIB1Q_jEENCINvMNtB1U_5sliceSBZ_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0EB45_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtCscdodAO9FK5_5alloc3vec3VecB10_EIB1Q_jEENCINvMNtB1U_5sliceSBZ_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0EB45_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2m_5sliceSB14_7sort_byNCNvXs1_NtB1a_8settingsNtB3x_8SettingsNtNtBa_3fmt7Display3fmts5_0E0EB1e_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noalias noundef align 8 dereferenceable(8) %4) unnamed_addr #8 {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2m_5sliceSB14_7sort_byNCNvXs1_NtB1a_8settingsNtB3x_8SettingsNtNtBa_3fmt7Display3fmts5_0E0EB1e_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2m_5sliceSB14_7sort_byNCNvXs1_NtB1a_8settingsNtB3x_8SettingsNtNtBa_3fmt7Display3fmts5_0E0EB1e_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2m_5sliceSB14_7sort_byNCNvXs1_NtB1a_8settingsNtB3x_8SettingsNtNtBa_3fmt7Display3fmts5_0E0EB1e_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.sroa.0.0.val13 = load ptr, ptr %.sroa.0.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 5 uses
  %.sroa.04.0.val14 = load ptr, ptr %.sroa.04.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2082)
  %i.n = load i64, ptr %.sroa.0.0.val13, align 8, !range !367, !alias.scope !2079, !noalias !2082, !noundef !17
  %i.o = icmp ne i64 %i.n, -1                     ; 5 uses
  %i.p = zext i1 %i.o to i8                       ; 2 uses
  %i.q = load i64, ptr %.sroa.04.0.val14, align 8, !range !367, !alias.scope !2082, !noalias !2079, !noundef !17 ; 2 uses
  %i.r = icmp eq i64 %i.q, -1                     ; 3 uses
  %not..i.i.i = xor i1 %i.r, true                 ; 2 uses
  %.neg.i.i.i = sext i1 %not..i.i.i to i8
  %i.s = add nsw i8 %.neg.i.i.i, %i.p
  %i.t = xor i1 %i.o, %i.r
  br i1 %i.t, label %bb.d, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 8 ; 2 uses
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.assume(i1 %not..i.i.i)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !2079, !noalias !2082, !nonnull !17, !noundef !17
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !2079, !noalias !2082, !noundef !17 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val14, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !2082, !noalias !2079, !nonnull !17, !noundef !17
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val14, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !2082, !noalias !2079, !noundef !17 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.ab)
  %i.ac = tail call i32 @memcmp(ptr nonnull %i.v, ptr nonnull %i.z, i64 %spec.store.select.i.i.i), !noalias !2084 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp eq i32 %i.ac, 0
  %i.af = sub i64 %i.x, %i.ab
  %spec.select.i.i.i = select i1 %i.ae, i64 %i.af, i64 %i.ad
  %i.ag = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.assume(i1 %i.r)
  %i.ah = load i8, ptr %i.u, align 8, !range !1799, !alias.scope !2079, !noalias !2082, !noundef !17
  %5 = zext nneg i8 %i.ah to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val14, i64 8
  %i.aj = load i8, ptr %i.ai, align 8, !range !1799, !alias.scope !2082, !noalias !2079, !noundef !17
  %6 = zext nneg i8 %i.aj to i64
  %i.ak = tail call i8 @llvm.scmp.i8.i64(i64 %5, i64 %6)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit: ; preds = %bb.c, %bb.e, %bb.f
  %.sroa.0.0.i.i.i = phi i8 [ %i.ag, %bb.e ], [ %i.ak, %bb.f ], [ %i.s, %bb.c ]
  %i.al = icmp eq i8 %.sroa.0.0.i.i.i, -1         ; 2 uses
  %.sroa.08.0.val12 = load ptr, ptr %.sroa.08.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2088)
  %i.am = load i64, ptr %.sroa.08.0.val12, align 8, !range !367, !alias.scope !2088, !noalias !2085, !noundef !17
  %i.an = icmp eq i64 %i.am, -1                   ; 5 uses
  %not..i.i.i15 = xor i1 %i.an, true              ; 3 uses
  %.neg.i.i.i16 = sext i1 %not..i.i.i15 to i8     ; 2 uses
  %i.ao = add nsw i8 %.neg.i.i.i16, %i.p
  %i.ap = xor i1 %i.o, %i.an
  br i1 %i.ap, label %bb.g, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit20

bb.g:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 8 ; 2 uses
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %not..i.i.i15)
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !2085, !noalias !2088, !nonnull !17, !noundef !17
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 16
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !2085, !noalias !2088, !noundef !17 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val12, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !2088, !noalias !2085, !nonnull !17, !noundef !17
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val12, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !2088, !noalias !2085, !noundef !17 ; 2 uses
  %spec.store.select.i.i.i18 = tail call i64 @llvm.umin.i64(i64 %i.at, i64 %i.ax)
  %i.ay = tail call i32 @memcmp(ptr nonnull %i.ar, ptr nonnull %i.av, i64 %spec.store.select.i.i.i18), !noalias !2090 ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = icmp eq i32 %i.ay, 0
  %i.bb = sub i64 %i.at, %i.ax
  %spec.select.i.i.i19 = select i1 %i.ba, i64 %i.bb, i64 %i.az
  %i.bc = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i19, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit20

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.an)
  %i.bd = load i8, ptr %i.aq, align 8, !range !1799, !alias.scope !2085, !noalias !2088, !noundef !17
  %7 = zext nneg i8 %i.bd to i64
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val12, i64 8
  %i.bf = load i8, ptr %i.be, align 8, !range !1799, !alias.scope !2088, !noalias !2085, !noundef !17
  %8 = zext nneg i8 %i.bf to i64
  %i.bg = tail call i8 @llvm.scmp.i8.i64(i64 %7, i64 %8)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit20

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit20: ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit, %bb.h, %bb.i
  %.sroa.0.0.i.i.i17 = phi i8 [ %i.bc, %bb.h ], [ %i.bg, %bb.i ], [ %i.ao, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit ]
  %i.bh = icmp eq i8 %.sroa.0.0.i.i.i17, -1
  %i.bi = xor i1 %i.al, %i.bh
  br i1 %i.bi, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2h_5sliceSBZ_7sort_byNCNvXs1_NtB15_8settingsNtB3r_8SettingsNtNtBa_3fmt7Display3fmts5_0E0EB19_.exit, label %bb.j

bb.j:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2094)
  %i.bj = icmp ne i64 %i.q, -1                    ; 3 uses
  %i.bk = zext i1 %i.bj to i8
  %i.bl = add nsw i8 %.neg.i.i.i16, %i.bk
  %i.bm = xor i1 %i.bj, %i.an
  br i1 %i.bm, label %bb.k, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit26

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val14, i64 8 ; 2 uses
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.assume(i1 %not..i.i.i15)
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !2091, !noalias !2094, !nonnull !17, !noundef !17
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val14, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !2091, !noalias !2094, !noundef !17 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val12, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !2094, !noalias !2091, !nonnull !17, !noundef !17
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val12, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !2094, !noalias !2091, !noundef !17 ; 2 uses
  %spec.store.select.i.i.i24 = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 %i.bu)
  %i.bv = tail call i32 @memcmp(ptr nonnull %i.bo, ptr nonnull %i.bs, i64 %spec.store.select.i.i.i24), !noalias !2096 ; 2 uses
  %i.bw = sext i32 %i.bv to i64
  %i.bx = icmp eq i32 %i.bv, 0
  %i.by = sub i64 %i.bq, %i.bu
  %spec.select.i.i.i25 = select i1 %i.bx, i64 %i.by, i64 %i.bw
  %i.bz = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i25, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.assume(i1 %i.an)
  %i.ca = load i8, ptr %i.bn, align 8, !range !1799, !alias.scope !2091, !noalias !2094, !noundef !17
  %9 = zext nneg i8 %i.ca to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val12, i64 8
  %i.cc = load i8, ptr %i.cb, align 8, !range !1799, !alias.scope !2094, !noalias !2091, !noundef !17
  %10 = zext nneg i8 %i.cc to i64
  %i.cd = tail call i8 @llvm.scmp.i8.i64(i64 %9, i64 %10)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit26

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit26: ; preds = %bb.j, %bb.l, %bb.m
  %.sroa.0.0.i.i.i23 = phi i8 [ %i.bz, %bb.l ], [ %i.cd, %bb.m ], [ %i.bl, %bb.j ]
  %i.ce = icmp eq i8 %.sroa.0.0.i.i.i23, -1
  %i.cf = xor i1 %i.al, %i.ce
  %..i = select i1 %i.cf, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2h_5sliceSBZ_7sort_byNCNvXs1_NtB15_8settingsNtB3r_8SettingsNtNtBa_3fmt7Display3fmts5_0E0EB19_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2h_5sliceSBZ_7sort_byNCNvXs1_NtB15_8settingsNtB3r_8SettingsNtNtBa_3fmt7Display3fmts5_0E0EB19_.exit: ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit20, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit26
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit20 ], [ %..i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit26 ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2m_5sliceSB14_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB16_B2i_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3x_8CacheKey9cache_key0E0EB1e_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noalias noundef align 8 dereferenceable(8) %4) unnamed_addr #8 {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2m_5sliceSB14_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB16_B2i_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3x_8CacheKey9cache_key0E0EB1e_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2m_5sliceSB14_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB16_B2i_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3x_8CacheKey9cache_key0E0EB1e_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2m_5sliceSB14_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB16_B2i_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3x_8CacheKey9cache_key0E0EB1e_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.sroa.0.0.val13 = load ptr, ptr %.sroa.0.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 5 uses
  %.sroa.04.0.val14 = load ptr, ptr %.sroa.04.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2100)
  %i.n = load i64, ptr %.sroa.0.0.val13, align 8, !range !367, !alias.scope !2097, !noalias !2100, !noundef !17
  %i.o = icmp ne i64 %i.n, -1                     ; 5 uses
  %i.p = zext i1 %i.o to i8                       ; 2 uses
  %i.q = load i64, ptr %.sroa.04.0.val14, align 8, !range !367, !alias.scope !2100, !noalias !2097, !noundef !17 ; 2 uses
  %i.r = icmp eq i64 %i.q, -1                     ; 3 uses
  %not..i.i.i = xor i1 %i.r, true                 ; 2 uses
  %.neg.i.i.i = sext i1 %not..i.i.i to i8
  %i.s = add nsw i8 %.neg.i.i.i, %i.p
  %i.t = xor i1 %i.o, %i.r
  br i1 %i.t, label %bb.d, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 8 ; 2 uses
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.assume(i1 %not..i.i.i)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !2097, !noalias !2100, !nonnull !17, !noundef !17
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !2097, !noalias !2100, !noundef !17 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val14, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !2100, !noalias !2097, !nonnull !17, !noundef !17
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val14, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !2100, !noalias !2097, !noundef !17 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.ab)
  %i.ac = tail call i32 @memcmp(ptr nonnull %i.v, ptr nonnull %i.z, i64 %spec.store.select.i.i.i), !noalias !2102 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp eq i32 %i.ac, 0
  %i.af = sub i64 %i.x, %i.ab
  %spec.select.i.i.i = select i1 %i.ae, i64 %i.af, i64 %i.ad
  %i.ag = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.assume(i1 %i.r)
  %i.ah = load i8, ptr %i.u, align 8, !range !1799, !alias.scope !2097, !noalias !2100, !noundef !17
  %5 = zext nneg i8 %i.ah to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val14, i64 8
  %i.aj = load i8, ptr %i.ai, align 8, !range !1799, !alias.scope !2100, !noalias !2097, !noundef !17
  %6 = zext nneg i8 %i.aj to i64
  %i.ak = tail call i8 @llvm.scmp.i8.i64(i64 %5, i64 %6)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit: ; preds = %bb.c, %bb.e, %bb.f
  %.sroa.0.0.i.i.i = phi i8 [ %i.ag, %bb.e ], [ %i.ak, %bb.f ], [ %i.s, %bb.c ]
  %i.al = icmp eq i8 %.sroa.0.0.i.i.i, -1         ; 2 uses
  %.sroa.08.0.val12 = load ptr, ptr %.sroa.08.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2106)
  %i.am = load i64, ptr %.sroa.08.0.val12, align 8, !range !367, !alias.scope !2106, !noalias !2103, !noundef !17
  %i.an = icmp eq i64 %i.am, -1                   ; 5 uses
  %not..i.i.i15 = xor i1 %i.an, true              ; 3 uses
  %.neg.i.i.i16 = sext i1 %not..i.i.i15 to i8     ; 2 uses
  %i.ao = add nsw i8 %.neg.i.i.i16, %i.p
  %i.ap = xor i1 %i.o, %i.an
  br i1 %i.ap, label %bb.g, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit20

bb.g:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 8 ; 2 uses
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %not..i.i.i15)
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !2103, !noalias !2106, !nonnull !17, !noundef !17
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 16
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !2103, !noalias !2106, !noundef !17 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val12, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !2106, !noalias !2103, !nonnull !17, !noundef !17
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val12, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !2106, !noalias !2103, !noundef !17 ; 2 uses
  %spec.store.select.i.i.i18 = tail call i64 @llvm.umin.i64(i64 %i.at, i64 %i.ax)
  %i.ay = tail call i32 @memcmp(ptr nonnull %i.ar, ptr nonnull %i.av, i64 %spec.store.select.i.i.i18), !noalias !2108 ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = icmp eq i32 %i.ay, 0
  %i.bb = sub i64 %i.at, %i.ax
  %spec.select.i.i.i19 = select i1 %i.ba, i64 %i.bb, i64 %i.az
  %i.bc = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i19, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit20

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.an)
  %i.bd = load i8, ptr %i.aq, align 8, !range !1799, !alias.scope !2103, !noalias !2106, !noundef !17
  %7 = zext nneg i8 %i.bd to i64
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val12, i64 8
  %i.bf = load i8, ptr %i.be, align 8, !range !1799, !alias.scope !2106, !noalias !2103, !noundef !17
  %8 = zext nneg i8 %i.bf to i64
  %i.bg = tail call i8 @llvm.scmp.i8.i64(i64 %7, i64 %8)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit20

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit20: ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit, %bb.h, %bb.i
  %.sroa.0.0.i.i.i17 = phi i8 [ %i.bc, %bb.h ], [ %i.bg, %bb.i ], [ %i.ao, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit ]
  %i.bh = icmp eq i8 %.sroa.0.0.i.i.i17, -1
  %i.bi = xor i1 %i.al, %i.bh
  br i1 %i.bi, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2h_5sliceSBZ_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB11_B2d_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3r_8CacheKey9cache_key0E0EB19_.exit, label %bb.j

bb.j:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2112)
  %i.bj = icmp ne i64 %i.q, -1                    ; 3 uses
  %i.bk = zext i1 %i.bj to i8
  %i.bl = add nsw i8 %.neg.i.i.i16, %i.bk
  %i.bm = xor i1 %i.bj, %i.an
  br i1 %i.bm, label %bb.k, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit26

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val14, i64 8 ; 2 uses
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.assume(i1 %not..i.i.i15)
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !2109, !noalias !2112, !nonnull !17, !noundef !17
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val14, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !2109, !noalias !2112, !noundef !17 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val12, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !2112, !noalias !2109, !nonnull !17, !noundef !17
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val12, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !2112, !noalias !2109, !noundef !17 ; 2 uses
  %spec.store.select.i.i.i24 = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 %i.bu)
  %i.bv = tail call i32 @memcmp(ptr nonnull %i.bo, ptr nonnull %i.bs, i64 %spec.store.select.i.i.i24), !noalias !2114 ; 2 uses
  %i.bw = sext i32 %i.bv to i64
  %i.bx = icmp eq i32 %i.bv, 0
  %i.by = sub i64 %i.bq, %i.bu
  %spec.select.i.i.i25 = select i1 %i.bx, i64 %i.by, i64 %i.bw
  %i.bz = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i25, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.assume(i1 %i.an)
  %i.ca = load i8, ptr %i.bn, align 8, !range !1799, !alias.scope !2109, !noalias !2112, !noundef !17
  %9 = zext nneg i8 %i.ca to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val12, i64 8
  %i.cc = load i8, ptr %i.cb, align 8, !range !1799, !alias.scope !2112, !noalias !2109, !noundef !17
  %10 = zext nneg i8 %i.cc to i64
  %i.cd = tail call i8 @llvm.scmp.i8.i64(i64 %9, i64 %10)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit26

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit26: ; preds = %bb.j, %bb.l, %bb.m
  %.sroa.0.0.i.i.i23 = phi i8 [ %i.bz, %bb.l ], [ %i.cd, %bb.m ], [ %i.bl, %bb.j ]
  %i.ce = icmp eq i8 %.sroa.0.0.i.i.i23, -1
  %i.cf = xor i1 %i.al, %i.ce
  %..i = select i1 %i.cf, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2h_5sliceSBZ_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB11_B2d_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3r_8CacheKey9cache_key0E0EB19_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2h_5sliceSBZ_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB11_B2d_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3r_8CacheKey9cache_key0E0EB19_.exit: ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit20, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit26
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit20 ], [ %..i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit26 ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprB18_ENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_7sort_byNCNvMs2_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17sort_dunder_slotsNtB2U_12DictElements16into_sorted_elts0E0EB32_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noalias noundef align 8 dereferenceable(8) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprB18_ENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_7sort_byNCNvMs2_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17sort_dunder_slotsNtB2U_12DictElements16into_sorted_elts0E0EB32_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprB18_ENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_7sort_byNCNvMs2_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17sort_dunder_slotsNtB2U_12DictElements16into_sorted_elts0E0EB32_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprB18_ENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_7sort_byNCNvMs2_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17sort_dunder_slotsNtB2U_12DictElements16into_sorted_elts0E0EB32_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %.sroa.0.0.val13 = load ptr, ptr %.sroa.0.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %.sroa.04.0.val14 = load ptr, ptr %.sroa.04.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %i.n = load ptr, ptr %.sroa.0.0.val13, align 8, !nonnull !17, !noundef !17
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val13, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noundef !17
  %i.q = load ptr, ptr %.sroa.04.0.val14, align 8, !nonnull !17, !noundef !17
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val14, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noundef !17
  %i.t = tail call noundef range(i8 -1, 2) i8 @_RNvCshCO9OnvyZAQ_6natord7compare(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.s)
  %i.u = icmp eq i8 %i.t, -1                      ; 2 uses
  %.sroa.0.0.val = load ptr, ptr %.sroa.0.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %.sroa.08.0.val12 = load ptr, ptr %.sroa.08.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %i.v = load ptr, ptr %.sroa.0.0.val, align 8, !nonnull !17, !noundef !17
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noundef !17
  %i.y = load ptr, ptr %.sroa.08.0.val12, align 8, !nonnull !17, !noundef !17
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val12, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !noundef !17
  %i.ab = tail call noundef range(i8 -1, 2) i8 @_RNvCshCO9OnvyZAQ_6natord7compare(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef %i.x, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.aa)
  %i.ac = icmp eq i8 %i.ab, -1
  %i.ad = xor i1 %i.u, %i.ac
  br i1 %i.ad, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprB13_ENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_7sort_byNCNvMs2_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17sort_dunder_slotsNtB2O_12DictElements16into_sorted_elts0E0EB2W_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.04.0.val = load ptr, ptr %.sroa.04.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %i.ae = load ptr, ptr %.sroa.04.0.val, align 8, !nonnull !17, !noundef !17
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noundef !17
  %i.ah = load ptr, ptr %.sroa.08.0.val, align 8, !nonnull !17, !noundef !17
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !17
  %i.ak = tail call noundef range(i8 -1, 2) i8 @_RNvCshCO9OnvyZAQ_6natord7compare(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef %i.ag, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef %i.aj)
  %i.al = icmp eq i8 %i.ak, -1
  %i.am = xor i1 %i.u, %i.al
  %..i = select i1 %i.am, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprB13_ENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_7sort_byNCNvMs2_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17sort_dunder_slotsNtB2O_12DictElements16into_sorted_elts0E0EB2W_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprB13_ENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_7sort_byNCNvMs2_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17sort_dunder_slotsNtB2O_12DictElements16into_sorted_elts0E0EB2W_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_7sort_byNCNvMs6_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2Q_16SequenceElements16into_sorted_elts0E0EB2Y_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noalias noundef align 8 dereferenceable(8) %4) unnamed_addr #2 {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_7sort_byNCNvMs6_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2Q_16SequenceElements16into_sorted_elts0E0EB2Y_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_7sort_byNCNvMs6_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2Q_16SequenceElements16into_sorted_elts0E0EB2Y_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_7sort_byNCNvMs6_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2Q_16SequenceElements16into_sorted_elts0E0EB2Y_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %.val14 = load ptr, ptr %4, align 8, !nonnull !17, !align !416, !noundef !17
  %.sroa.0.0.val15 = load ptr, ptr %.sroa.0.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %.sroa.04.0.val16 = load ptr, ptr %.sroa.04.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %.val.i = load ptr, ptr %.val14, align 8, !nonnull !17, !noundef !17
  %i.n = load i8, ptr %.val.i, align 1, !range !118, !noundef !17
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = load ptr, ptr %.sroa.0.0.val15, align 8, !nonnull !17, !noundef !17
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val15, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noundef !17
  %i.s = load ptr, ptr %.sroa.04.0.val16, align 8, !nonnull !17, !noundef !17
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val16, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noundef !17
  %i.v = tail call noundef range(i8 -1, 2) i8 @_RNvMNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2_12SortingStyle7compare(i1 noundef zeroext %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.u)
  %i.w = icmp eq i8 %i.v, -1                      ; 2 uses
  %.val12 = load ptr, ptr %4, align 8, !nonnull !17, !align !416, !noundef !17
  %.sroa.0.0.val = load ptr, ptr %.sroa.0.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %.sroa.08.0.val13 = load ptr, ptr %.sroa.08.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %.val.i17 = load ptr, ptr %.val12, align 8, !nonnull !17, !noundef !17
  %i.x = load i8, ptr %.val.i17, align 1, !range !118, !noundef !17
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = load ptr, ptr %.sroa.0.0.val, align 8, !nonnull !17, !noundef !17
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !17
  %i.ac = load ptr, ptr %.sroa.08.0.val13, align 8, !nonnull !17, !noundef !17
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val13, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !17
  %i.af = tail call noundef range(i8 -1, 2) i8 @_RNvMNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2_12SortingStyle7compare(i1 noundef zeroext %i.y, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ae)
  %i.ag = icmp eq i8 %i.af, -1
  %i.ah = xor i1 %i.w, %i.ag
  br i1 %i.ah, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_7sort_byNCNvMs6_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2K_16SequenceElements16into_sorted_elts0E0EB2S_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val = load ptr, ptr %4, align 8, !nonnull !17, !align !416, !noundef !17
  %.sroa.04.0.val = load ptr, ptr %.sroa.04.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %.sroa.08.0.val = load ptr, ptr %.sroa.08.0, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %.val.i18 = load ptr, ptr %.val, align 8, !nonnull !17, !noundef !17
  %i.ai = load i8, ptr %.val.i18, align 1, !range !118, !noundef !17
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = load ptr, ptr %.sroa.04.0.val, align 8, !nonnull !17, !noundef !17
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val, i64 8
  %i.am = load i64, ptr %i.al, align 8, !noundef !17
  %i.an = load ptr, ptr %.sroa.08.0.val, align 8, !nonnull !17, !noundef !17
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !17
  %i.aq = tail call noundef range(i8 -1, 2) i8 @_RNvMNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2_12SortingStyle7compare(i1 noundef zeroext %i.aj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %i.am, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef %i.ap)
  %i.ar = icmp eq i8 %i.aq, -1
  %i.as = xor i1 %i.w, %i.ar
  %..i = select i1 %i.as, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_7sort_byNCNvMs6_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2K_16SequenceElements16into_sorted_elts0E0EB2S_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_7sort_byNCNvMs6_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2K_16SequenceElements16into_sorted_elts0E0EB2S_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTTNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort7sorting9ModuleKeyjEjENvYB14_NtNtBa_3cmp10PartialOrd2ltEB1e_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 5337599558365033) %3) unnamed_addr #2 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [216 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [216 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTTNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort7sorting9ModuleKeyjEjENvYB14_NtNtBa_3cmp10PartialOrd2ltEB1e_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [216 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [216 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTTNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort7sorting9ModuleKeyjEjENvYB14_NtNtBa_3cmp10PartialOrd2ltEB1e_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [216 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [216 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTTNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort7sorting9ModuleKeyjEjENvYB14_NtNtBa_3cmp10PartialOrd2ltEB1e_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 7 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 7 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2128)
  %i.n = tail call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort7sorting9ModuleKeyBO_NvMB2_NtB2_8Ordering5is_ltEBW_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %.sroa.04.0) ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.n, 2
  br i1 %.not.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeRNtNtCscdodAO9FK5_5alloc6string6StringNvYBX_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter:bb.a
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4                   ; 2 uses
  %.sroa.0.0.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4) ; 2 uses
  %i.d = icmp samesign ult i64 %3, %.sroa.0.0.i
  br i1 %i.d, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %0
  %i.g = shl nuw nsw i64 %.sroa.0.0.i, 3          ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 4 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %.noexc
  %.sroa.13.2 = phi ptr [ %i.u, %.noexc ], [ %i.e, %.critedge ] ; 2 uses
  %.sroa.7.2 = phi ptr [ %i.w, %.noexc ], [ %i.h, %.critedge ] ; 2 uses
  %.sroa.0.0.i17 = phi ptr [ %i.p, %.noexc ], [ %i.f, %.critedge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.13.2, i64 -8 ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.7.2, i64 -8 ; 3 uses
  %.val.i = load ptr, ptr %i.j, align 8, !noalias !2805, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %.val10.i = load ptr, ptr %i.i, align 8, !noalias !2805, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %i.k = getelementptr i8, ptr %.val.i, i64 8
  %.val.i.i.i = load ptr, ptr %i.k, align 8, !noalias !2805, !nonnull !17, !noundef !17
  %i.l = getelementptr i8, ptr %.val.i, i64 16
  %.val1.i.i.i = load i64, ptr %i.l, align 8, !noalias !2805, !noundef !17
  %i.m = getelementptr i8, ptr %.val10.i, i64 8
  %.val2.i.i.i = load ptr, ptr %i.m, align 8, !noalias !2805, !nonnull !17, !noundef !17
  %i.n = getelementptr i8, ptr %.val10.i, i64 16
  %.val3.i.i.i = load i64, ptr %i.n, align 8, !noalias !2805, !noundef !17
  %i.o = invoke noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val1.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i.i.i, i64 noundef %.val3.i.i.i)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %.preheader
  %i.p = getelementptr inbounds i8, ptr %.sroa.0.0.i17, i64 -8 ; 2 uses
  %.not.i.i.i.i = icmp ne i8 %i.o, -2
  %i.q = icmp slt i8 %i.o, 0
  %.sroa.0.0.i.i.i.i = and i1 %.not.i.i.i.i, %i.q ; 3 uses
  %..i = select i1 %.sroa.0.0.i.i.i.i, ptr %i.i, ptr %i.j
  %i.r = load i64, ptr %..i, align 8, !noalias !2805
  store i64 %i.r, ptr %i.p, align 8, !noalias !2805
  %i.s = xor i1 %.sroa.0.0.i.i.i.i, true
  %i.t = zext i1 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.t ; 3 uses
  %i.v = zext i1 %.sroa.0.0.i.i.i.i to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.v ; 3 uses
  %i.x = icmp eq ptr %i.u, %0
  %i.y = icmp eq ptr %i.w, %2
  %or.cond.i = select i1 %i.x, i1 true, i1 %i.y
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtCscdodAO9FK5_5alloc6string6StringE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %.noexc27
  %.sroa.13.3 = phi ptr [ %i.al, %.noexc27 ], [ %0, %.critedge ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %i.ai, %.noexc27 ], [ %2, %.critedge ] ; 4 uses
  %.sroa.0.02.i = phi ptr [ %i.ak, %.noexc27 ], [ %i.e, %.critedge ] ; 3 uses
  %.sroa.0.0.val.i = load ptr, ptr %.sroa.0.02.i, align 8, !noalias !2808, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %.val.i19 = load ptr, ptr %.sroa.0.2, align 8, !noalias !2808, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %i.z = getelementptr i8, ptr %.sroa.0.0.val.i, i64 8
  %.val.i.i.i20 = load ptr, ptr %i.z, align 8, !noalias !2808, !nonnull !17, !noundef !17
  %i.aa = getelementptr i8, ptr %.sroa.0.0.val.i, i64 16
  %.val1.i.i.i21 = load i64, ptr %i.aa, align 8, !noalias !2808, !noundef !17
  %i.ab = getelementptr i8, ptr %.val.i19, i64 8
  %.val2.i.i.i22 = load ptr, ptr %i.ab, align 8, !noalias !2808, !nonnull !17, !noundef !17
  %i.ac = getelementptr i8, ptr %.val.i19, i64 16
  %.val3.i.i.i23 = load i64, ptr %i.ac, align 8, !noalias !2808, !noundef !17
  %i.ad = invoke noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i20, i64 noundef %.val1.i.i.i21, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i.i.i22, i64 noundef %.val3.i.i.i23)
          to label %.noexc27 unwind label %.loopexit.split-lp ; 2 uses

.noexc27:                                         ; preds = %.lr.ph.i
  %.not.i.i.i.i24 = icmp ne i8 %i.ad, -2
  %i.ae = icmp slt i8 %i.ad, 0
  %.sroa.0.0.i.i.i.i25 = and i1 %.not.i.i.i.i24, %i.ae ; 3 uses
  %i.af = xor i1 %.sroa.0.0.i.i.i.i25, true
  %spec.select.i = select i1 %.sroa.0.0.i.i.i.i25, ptr %.sroa.0.02.i, ptr %.sroa.0.2
  %i.ag = load i64, ptr %spec.select.i, align 8, !noalias !2808
  store i64 %i.ag, ptr %.sroa.13.3, align 8, !noalias !2808
  %i.ah = zext i1 %i.af to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.2, i64 %i.ah ; 3 uses
  %i.aj = zext i1 %.sroa.0.0.i.i.i.i25 to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.13.3, i64 8 ; 2 uses
  %i.am = icmp ne ptr %i.ai, %i.h
  %i.an = icmp ne ptr %i.ak, %i.f
  %or.cond.i26 = select i1 %i.am, i1 %i.an, i1 false
  br i1 %or.cond.i26, label %.lr.ph.i, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtCscdodAO9FK5_5alloc6string6StringE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtCscdodAO9FK5_5alloc6string6StringE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.noexc27, %.noexc
  %.sroa.13.1 = phi ptr [ %i.u, %.noexc ], [ %i.al, %.noexc27 ]
  %.sroa.7.1 = phi ptr [ %i.w, %.noexc ], [ %i.h, %.noexc27 ]
  %.sroa.0.1 = phi ptr [ %2, %.noexc ], [ %i.ai, %.noexc27 ] ; 2 uses
  %i.ao = ptrtoint ptr %.sroa.7.1 to i64
  %i.ap = ptrtoint ptr %.sroa.0.1 to i64
  %i.aq = sub nuw i64 %i.ao, %i.ap
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1, ptr align 8 %.sroa.0.1, i64 %i.aq, i1 false), !noalias !2811
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtCscdodAO9FK5_5alloc6string6StringE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit
  ret void

.loopexit:                                        ; preds = %.preheader
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.lr.ph.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.13.0 = phi ptr [ %.sroa.13.2, %.loopexit ], [ %.sroa.13.3, %.loopexit.split-lp ]
  %.sroa.7.0 = phi ptr [ %.sroa.7.2, %.loopexit ], [ %i.h, %.loopexit.split-lp ]
  %.sroa.0.0 = phi ptr [ %2, %.loopexit ], [ %.sroa.0.2, %.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ar = ptrtoint ptr %.sroa.7.0 to i64
  %i.as = ptrtoint ptr %.sroa.0.0 to i64
  %i.at = sub nuw i64 %i.ar, %i.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.sroa.13.0, ptr nonnull align 8 %.sroa.0.0, i64 %i.at, i1 false), !noalias !2816
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNCINvMNtCscdodAO9FK5_5alloc5sliceSBX_7sort_byNCNvXs1_NtB12_8settingsNtB30_8SettingsNtNtBa_3fmt7Display3fmts4_0E0EB16_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4                   ; 2 uses
  %.sroa.0.0.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4) ; 2 uses
  %i.d = icmp samesign ult i64 %3, %.sroa.0.0.i
  br i1 %i.d, label %bb.i, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %0
  %i.g = shl nuw nsw i64 %.sroa.0.0.i, 3          ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 3 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i
  %i.i = phi ptr [ %i.ar, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i ], [ %i.h, %.critedge ]
  %i.j = phi ptr [ %i.ap, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i ], [ %i.e, %.critedge ]
  %.sroa.0.0.i17 = phi ptr [ %i.m, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i ], [ %i.f, %.critedge ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -8 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i17, i64 -8 ; 2 uses
  %.val.i = load ptr, ptr %i.l, align 8, !noalias !2821, !nonnull !17, !align !416, !noundef !17 ; 3 uses
  %.val10.i = load ptr, ptr %i.k, align 8, !noalias !2821, !nonnull !17, !align !416, !noundef !17 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2827)
  %i.n = load i64, ptr %.val.i, align 8, !range !367, !alias.scope !2824, !noalias !2829, !noundef !17
  %i.o = icmp ne i64 %i.n, -1                     ; 3 uses
  %i.p = zext i1 %i.o to i8
  %i.q = load i64, ptr %.val10.i, align 8, !range !367, !alias.scope !2827, !noalias !2830, !noundef !17
  %i.r = icmp eq i64 %i.q, -1                     ; 3 uses
  %not..i.i.i.i = xor i1 %i.r, true               ; 2 uses
  %.neg.i.i.i.i = sext i1 %not..i.i.i.i to i8
  %i.s = add nsw i8 %.neg.i.i.i.i, %i.p
  %i.t = xor i1 %i.o, %i.r
  br i1 %i.t, label %bb.c, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i

bb.c:                                             ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.assume(i1 %not..i.i.i.i)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !2824, !noalias !2829, !nonnull !17, !noundef !17
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !2824, !noalias !2829, !noundef !17 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !2827, !noalias !2830, !nonnull !17, !noundef !17
  %i.aa = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !2827, !noalias !2830, !noundef !17 ; 2 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.ab)
  %i.ac = tail call i32 @memcmp(ptr nonnull %i.v, ptr nonnull %i.z, i64 %spec.store.select.i.i.i.i), !noalias !2831 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp eq i32 %i.ac, 0
  %i.af = sub i64 %i.x, %i.ab
  %spec.select.i.i.i.i = select i1 %i.ae, i64 %i.af, i64 %i.ad
  %i.ag = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.assume(i1 %i.r)
  %i.ah = load i8, ptr %i.u, align 8, !range !1799, !alias.scope !2824, !noalias !2829, !noundef !17
  %6 = zext nneg i8 %i.ah to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.aj = load i8, ptr %i.ai, align 8, !range !1799, !alias.scope !2827, !noalias !2830, !noundef !17
  %7 = zext nneg i8 %i.aj to i64
  %i.ak = tail call i8 @llvm.scmp.i8.i64(i64 %6, i64 %7)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i: ; preds = %bb.e, %bb.d, %.preheader
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.ag, %bb.d ], [ %i.ak, %bb.e ], [ %i.s, %.preheader ]
  %i.al = icmp eq i8 %.sroa.0.0.i.i.i.i, -1       ; 3 uses
  %..i = select i1 %i.al, ptr %i.k, ptr %i.l
  %i.am = load i64, ptr %..i, align 8, !noalias !2821
  store i64 %i.am, ptr %i.m, align 8, !noalias !2821
  %i.an = xor i1 %i.al, true
  %i.ao = zext i1 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ao ; 3 uses
  %i.aq = zext i1 %i.al to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.aq ; 3 uses
  %i.as = icmp eq ptr %i.ap, %0
  %i.at = icmp eq ptr %i.ar, %2
  %or.cond.i = select i1 %i.as, i1 true, i1 %i.at
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionE10merge_downNCINvMNtCscdodAO9FK5_5alloc5sliceSB1a_7sort_byNCNvXs1_NtB1f_8settingsNtB3r_8SettingsNtNtBb_3fmt7Display3fmts4_0E0EB1j_.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i22
  %i.au = phi ptr [ %i.cb, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i22 ], [ %0, %.critedge ] ; 2 uses
  %.sroa.0.02.i = phi ptr [ %i.ca, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i22 ], [ %i.e, %.critedge ] ; 3 uses
  %i.av = phi ptr [ %i.by, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i22 ], [ %2, %.critedge ] ; 3 uses
  %.sroa.0.0.val.i = load ptr, ptr %.sroa.0.02.i, align 8, !noalias !2832, !nonnull !17, !align !416, !noundef !17 ; 3 uses
  %.val.i19 = load ptr, ptr %i.av, align 8, !noalias !2832, !nonnull !17, !align !416, !noundef !17 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2838)
  %i.aw = load i64, ptr %.sroa.0.0.val.i, align 8, !range !367, !alias.scope !2835, !noalias !2840, !noundef !17
  %i.ax = icmp ne i64 %i.aw, -1                   ; 3 uses
  %i.ay = zext i1 %i.ax to i8
  %i.az = load i64, ptr %.val.i19, align 8, !range !367, !alias.scope !2838, !noalias !2841, !noundef !17
  %i.ba = icmp eq i64 %i.az, -1                   ; 3 uses
  %not..i.i.i.i20 = xor i1 %i.ba, true            ; 2 uses
  %.neg.i.i.i.i21 = sext i1 %not..i.i.i.i20 to i8
  %i.bb = add nsw i8 %.neg.i.i.i.i21, %i.ay
  %i.bc = xor i1 %i.ax, %i.ba
  br i1 %i.bc, label %bb.f, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i22

bb.f:                                             ; preds = %.lr.ph.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i, i64 8 ; 2 uses
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.assume(i1 %not..i.i.i.i20)
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !2835, !noalias !2840, !nonnull !17, !noundef !17
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !2835, !noalias !2840, !noundef !17 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i19, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !2838, !noalias !2841, !nonnull !17, !noundef !17
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i19, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !2838, !noalias !2841, !noundef !17 ; 2 uses
  %spec.store.select.i.i.i.i25 = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bk)
  %i.bl = tail call i32 @memcmp(ptr nonnull %i.be, ptr nonnull %i.bi, i64 %spec.store.select.i.i.i.i25), !noalias !2842 ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = icmp eq i32 %i.bl, 0
  %i.bo = sub i64 %i.bg, %i.bk
  %spec.select.i.i.i.i26 = select i1 %i.bn, i64 %i.bo, i64 %i.bm
  %i.bp = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i26, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i22

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.assume(i1 %i.ba)
  %i.bq = load i8, ptr %i.bd, align 8, !range !1799, !alias.scope !2835, !noalias !2840, !noundef !17
  %8 = zext nneg i8 %i.bq to i64
  %i.br = getelementptr inbounds nuw i8, ptr %.val.i19, i64 8
  %i.bs = load i8, ptr %i.br, align 8, !range !1799, !alias.scope !2838, !noalias !2841, !noundef !17
  %9 = zext nneg i8 %i.bs to i64
  %i.bt = tail call i8 @llvm.scmp.i8.i64(i64 %8, i64 %9)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i22

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i22: ; preds = %bb.h, %bb.g, %.lr.ph.i
  %.sroa.0.0.i.i.i.i23 = phi i8 [ %i.bp, %bb.g ], [ %i.bt, %bb.h ], [ %i.bb, %.lr.ph.i ]
  %i.bu = icmp eq i8 %.sroa.0.0.i.i.i.i23, -1     ; 3 uses
  %i.bv = xor i1 %i.bu, true
  %spec.select.i = select i1 %i.bu, ptr %.sroa.0.02.i, ptr %i.av
  %i.bw = load i64, ptr %spec.select.i, align 8, !noalias !2832
  store i64 %i.bw, ptr %i.au, align 8, !noalias !2832
  %i.bx = zext i1 %i.bv to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bx ; 3 uses
  %i.bz = zext i1 %i.bu to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.cc = icmp ne ptr %i.by, %i.h
  %i.cd = icmp ne ptr %i.ca, %i.f
  %or.cond.i24 = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %or.cond.i24, label %.lr.ph.i, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionE10merge_downNCINvMNtCscdodAO9FK5_5alloc5sliceSB1a_7sort_byNCNvXs1_NtB1f_8settingsNtB3r_8SettingsNtNtBb_3fmt7Display3fmts4_0E0EB1j_.exit

_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionE10merge_downNCINvMNtCscdodAO9FK5_5alloc5sliceSB1a_7sort_byNCNvXs1_NtB1f_8settingsNtB3r_8SettingsNtNtBb_3fmt7Display3fmts4_0E0EB1j_.exit: ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i22, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i
  %.sroa.13.0 = phi ptr [ %i.ap, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i ], [ %i.cb, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i22 ]
  %.sroa.7.0 = phi ptr [ %i.ar, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i ], [ %i.h, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i22 ]
  %.sroa.0.0 = phi ptr [ %2, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i ], [ %i.by, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7sort_byNCNvXs1_NtBC_8settingsNtB1Z_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts4_0E0BG_.exit.i22 ] ; 2 uses
  %i.ce = ptrtoint ptr %.sroa.7.0 to i64
  %i.cf = ptrtoint ptr %.sroa.0.0 to i64
  %i.cg = sub nuw i64 %i.ce, %i.cf
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.cg, i1 false), !noalias !2843
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionE10merge_downNCINvMNtCscdodAO9FK5_5alloc5sliceSB1a_7sort_byNCNvXs1_NtB1f_8settingsNtB3r_8SettingsNtNtBb_3fmt7Display3fmts4_0E0EB1j_.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYBX_NtNtBa_3cmp10PartialOrd2ltEB16_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readnone captures(none) %5) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4                   ; 2 uses
  %.sroa.0.0.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4) ; 2 uses
  %i.d = icmp samesign ult i64 %3, %.sroa.0.0.i
  br i1 %i.d, label %bb.j, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %0
  %i.g = shl nuw nsw i64 %.sroa.0.0.i, 3          ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 3 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.i
  %i.i = phi ptr [ %i.ap, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.i ], [ %i.h, %.critedge ]
  %i.j = phi ptr [ %i.an, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.i ], [ %i.e, %.critedge ]
  %.sroa.0.0.i17 = phi ptr [ %i.m, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.i ], [ %i.f, %.critedge ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -8 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i17, i64 -8 ; 2 uses
  %.val.i = load ptr, ptr %i.l, align 8, !noalias !2848, !nonnull !17, !align !416, !noundef !17 ; 4 uses
  %.val10.i = load ptr, ptr %i.k, align 8, !noalias !2848, !nonnull !17, !align !416, !noundef !17 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2859)
  %i.n = load i64, ptr %.val.i, align 8, !range !367, !alias.scope !2861, !noalias !2862, !noundef !17
  %i.o = icmp eq i64 %i.n, -1                     ; 2 uses
  %i.p = load i64, ptr %.val10.i, align 8, !range !367, !alias.scope !2863, !noalias !2864, !noundef !17
  %i.q = icmp ne i64 %i.p, -1                     ; 3 uses
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader
  br i1 %i.q, label %bb.g, label %bb.e

bb.d:                                             ; preds = %.preheader
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = and i1 %i.o, %i.q
  br label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.t = load i8, ptr %i.s, align 8, !range !1799, !alias.scope !2861, !noalias !2862, !noundef !17
  %i.u = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.v = load i8, ptr %i.u, align 8, !range !1799, !alias.scope !2863, !noalias !2864, !noundef !17
  %i.w = icmp samesign ult i8 %i.t, %i.v
  br label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !2861, !noalias !2862, !nonnull !17, !noundef !17
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !2861, !noalias !2862, !noundef !17 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !2863, !noalias !2864, !nonnull !17, !noundef !17
  %i.ad = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !2863, !noalias !2864, !noundef !17 ; 2 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ae)
  %i.af = tail call i32 @memcmp(ptr nonnull %i.y, ptr nonnull %i.ac, i64 %spec.store.select.i.i.i.i.i), !noalias !2865 ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp eq i32 %i.af, 0
  %i.ai = sub i64 %i.aa, %i.ae
  %spec.select.i.i.i.i.i = select i1 %i.ah, i64 %i.ai, i64 %i.ag
  %i.aj = icmp slt i64 %spec.select.i.i.i.i.i, 0
  br label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.i

_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.0.0.i.i.i.i.i = phi i1 [ %i.aj, %bb.g ], [ %i.r, %bb.e ], [ %i.w, %bb.f ] ; 3 uses
  %..i = select i1 %.sroa.0.0.i.i.i.i.i, ptr %i.k, ptr %i.l
  %i.ak = load i64, ptr %..i, align 8, !noalias !2848
  store i64 %i.ak, ptr %i.m, align 8, !noalias !2848
  %i.al = xor i1 %.sroa.0.0.i.i.i.i.i, true
  %i.am = zext i1 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.am ; 3 uses
  %i.ao = zext i1 %.sroa.0.0.i.i.i.i.i to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ao ; 3 uses
  %i.aq = icmp eq ptr %i.an, %0
  %i.ar = icmp eq ptr %i.ap, %2
  %or.cond.i = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1j_.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.i22
  %i.as = phi ptr [ %i.bt, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.i22 ], [ %0, %.critedge ] ; 2 uses
  %.sroa.0.05.i = phi ptr [ %i.bs, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.i22 ], [ %i.e, %.critedge ] ; 2 uses
  %i.at = phi ptr [ %i.br, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.i22 ], [ %2, %.critedge ] ; 2 uses
  %.sroa.0.0.val.i = load ptr, ptr %.sroa.0.05.i, align 8, !noalias !2866, !nonnull !17, !align !416, !noundef !17 ; 7 uses
  %.val.i19 = load ptr, ptr %i.at, align 8, !noalias !2866, !nonnull !17, !align !416, !noundef !17 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2877)
  %i.au = load i64, ptr %.sroa.0.0.val.i, align 8, !range !367, !alias.scope !2879, !noalias !2880, !noundef !17
  %i.av = icmp eq i64 %i.au, -1
  %i.aw = load i64, ptr %.val.i19, align 8, !range !367, !alias.scope !2881, !noalias !2882, !noundef !17
  %.not.i = icmp eq i64 %i.aw, -1                 ; 2 uses
  br i1 %i.av, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  br i1 %.not.i, label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread.i, label %.split.i

bb.i:                                             ; preds = %.lr.ph.i
  br i1 %.not.i, label %.split3.i, label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.i22

.split3.i:                                        ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i, i64 8
  %i.ay = load i8, ptr %i.ax, align 8, !range !1799, !alias.scope !2879, !noalias !2880, !noundef !17
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i19, i64 8
  %i.ba = load i8, ptr %i.az, align 8, !range !1799, !alias.scope !2881, !noalias !2882, !noundef !17
  %i.bb = icmp samesign ult i8 %i.ay, %i.ba
  br i1 %i.bb, label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.i22, label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread.i

.split.i:                                         ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !2879, !noalias !2880, !nonnull !17, !noundef !17
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !2879, !noalias !2880, !noundef !17 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val.i19, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !2881, !noalias !2882, !nonnull !17, !noundef !17
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.i19, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !2881, !noalias !2882, !noundef !17 ; 2 uses
  %spec.store.select.i.i.i.i.i20 = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %i.bj)
  %i.bk = tail call i32 @memcmp(ptr nonnull %i.bd, ptr nonnull %i.bh, i64 %spec.store.select.i.i.i.i.i20), !noalias !2883 ; 2 uses
  %i.bl = sext i32 %i.bk to i64
  %i.bm = icmp eq i32 %i.bk, 0
  %i.bn = sub i64 %i.bf, %i.bj
  %spec.select.i.i.i.i.i21 = select i1 %i.bm, i64 %i.bn, i64 %i.bl
  %i.bo = icmp slt i64 %spec.select.i.i.i.i.i21, 0
  br i1 %i.bo, label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.i22, label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread.i

_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread.i: ; preds = %.split.i, %.split3.i, %bb.h
  br label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.i22

_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.i22: ; preds = %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread.i, %.split.i, %.split3.i, %bb.i
  %.in.i = phi ptr [ %.val.i19, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread.i ], [ %.sroa.0.0.val.i, %.split3.i ], [ %.sroa.0.0.val.i, %.split.i ], [ %.sroa.0.0.val.i, %bb.i ]
  %i.bp = phi i64 [ 1, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread.i ], [ 0, %.split3.i ], [ 0, %.split.i ], [ 0, %bb.i ]
  %.sroa.0.0.i.i.i.i2.i = phi i64 [ 0, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.thread.i ], [ 1, %.split3.i ], [ 1, %.split.i ], [ 1, %bb.i ]
  %i.bq = ptrtoint ptr %.in.i to i64
  store i64 %i.bq, ptr %i.as, align 8, !noalias !2866
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bp ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.05.i, i64 %.sroa.0.0.i.i.i.i2.i ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.bu = icmp ne ptr %i.br, %i.h
  %i.bv = icmp ne ptr %i.bs, %i.f
  %or.cond.i23 = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %or.cond.i23, label %.lr.ph.i, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1j_.exit

_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1j_.exit: ; preds = %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.i22, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.i
  %.sroa.13.0 = phi ptr [ %i.an, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.i ], [ %i.bt, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.i22 ]
  %.sroa.7.0 = phi ptr [ %i.ap, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.i ], [ %i.h, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.i22 ]
  %.sroa.0.0 = phi ptr [ %2, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.i ], [ %i.br, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutBe_.exit.i22 ] ; 2 uses
  %i.bw = ptrtoint ptr %.sroa.7.0 to i64
  %i.bx = ptrtoint ptr %.sroa.0.0 to i64
  %i.by = sub nuw i64 %i.bw, %i.bx
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.by, i1 false), !noalias !2884
end_hunk_3
begin_hunk_4_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeTRNtNtCscdodAO9FK5_5alloc6string6StringRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settings13BannedAliasesENCINvMNtB13_5sliceSBX_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBZ_B1B_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3H_8CacheKey9cache_key0E0EB1J_:bb.a
  %.sroa.0.02.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %i.e, %.critedge ] ; 3 uses
  %i.ac = phi ptr [ %i.an, %.lr.ph.i ], [ %2, %.critedge ] ; 3 uses
  %.sroa.0.0.val.i = load ptr, ptr %.sroa.0.02.i, align 8, !noalias !3066, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %.val.i19 = load ptr, ptr %i.ac, align 8, !noalias !3066, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %i.ad = getelementptr i8, ptr %.sroa.0.0.val.i, i64 8
  %.val.i.i.i20 = load ptr, ptr %i.ad, align 8, !noalias !3066, !nonnull !17, !noundef !17
  %i.ae = getelementptr i8, ptr %.sroa.0.0.val.i, i64 16
  %.val1.i.i.i21 = load i64, ptr %i.ae, align 8, !noalias !3066, !noundef !17 ; 2 uses
  %i.af = getelementptr i8, ptr %.val.i19, i64 8
  %.val2.i.i.i22 = load ptr, ptr %i.af, align 8, !noalias !3066, !nonnull !17, !noundef !17
  %i.ag = getelementptr i8, ptr %.val.i19, i64 16
  %.val3.i.i.i23 = load i64, ptr %i.ag, align 8, !noalias !3066, !noundef !17 ; 2 uses
  %spec.store.select.i.i.i.i.i.i24 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val1.i.i.i21, i64 range(i64 0, -9223372036854775808) %.val3.i.i.i23)
  %i.ah = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i.i20, ptr nonnull readonly %.val2.i.i.i22, i64 %spec.store.select.i.i.i.i.i.i24), !alias.scope !3069, !noalias !3066 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i32 %i.ah, 0
  %i.ak = sub nsw i64 %.val1.i.i.i21, %.val3.i.i.i23
  %spec.select.i.i.i.i.i.i25 = select i1 %i.aj, i64 %i.ak, i64 %i.ai ; 2 uses
  %i.al = icmp sgt i64 %spec.select.i.i.i.i.i.i25, -1 ; 2 uses
  %spec.select.i = select i1 %i.al, ptr %i.ac, ptr %.sroa.0.02.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %spec.select.i, i64 16, i1 false), !noalias !3066
  %i.am = zext i1 %i.al to i64
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.am ; 3 uses
  %spec.select.i.i.i.i.i.lobit.i26 = lshr i64 %spec.select.i.i.i.i.i.i25, 63
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i, i64 %spec.select.i.i.i.i.i.lobit.i26 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.aq = icmp ne ptr %i.an, %i.h
  %i.ar = icmp ne ptr %i.ao, %i.f
  %or.cond.i27 = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond.i27, label %.lr.ph.i, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCscdodAO9FK5_5alloc6string6StringRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settings13BannedAliasesEE10merge_downNCINvMNtB1g_5sliceSB1a_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB1c_B1O_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB48_8CacheKey9cache_key0E0EB1W_.exit

_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCscdodAO9FK5_5alloc6string6StringRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settings13BannedAliasesEE10merge_downNCINvMNtB1g_5sliceSB1a_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB1c_B1O_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB48_8CacheKey9cache_key0E0EB1W_.exit: ; preds = %.lr.ph.i, %.preheader
  %.sroa.13.0 = phi ptr [ %i.x, %.preheader ], [ %i.ap, %.lr.ph.i ]
  %.sroa.7.0 = phi ptr [ %i.y, %.preheader ], [ %i.h, %.lr.ph.i ]
  %.sroa.0.0 = phi ptr [ %2, %.preheader ], [ %i.an, %.lr.ph.i ] ; 2 uses
  %i.as = ptrtoint ptr %.sroa.7.0 to i64
  %i.at = ptrtoint ptr %.sroa.0.0 to i64
  %i.au = sub nuw i64 %i.as, %i.at
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.au, i1 false), !noalias !3073
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCscdodAO9FK5_5alloc6string6StringRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules25flake8_import_conventions8settings13BannedAliasesEE10merge_downNCINvMNtB1g_5sliceSB1a_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB1c_B1O_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB48_8CacheKey9cache_key0E0EB1W_.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtCscdodAO9FK5_5alloc3vec3VecBY_EIB1O_jEENCINvMNtB1S_5sliceSBX_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0EB42_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i64 noundef %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4                   ; 2 uses
  %.sroa.0.0.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4) ; 2 uses
  %i.d = icmp samesign ult i64 %3, %.sroa.0.0.i
  br i1 %i.d, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %4 ; 3 uses
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %0
  %i.g = mul nuw nsw i64 %.sroa.0.0.i, 56         ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 3 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %.preheader
  %i.i = phi ptr [ %i.u, %.preheader ], [ %i.h, %.critedge ] ; 2 uses
  %i.j = phi ptr [ %i.s, %.preheader ], [ %i.e, %.critedge ] ; 2 uses
  %.sroa.0.0.i17 = phi ptr [ %i.m, %.preheader ], [ %i.f, %.critedge ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -56 ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -56 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i17, i64 -56 ; 2 uses
  %i.n = getelementptr i8, ptr %i.i, i64 -32
  %.val.i = load ptr, ptr %i.n, align 8, !noalias !3078, !nonnull !17, !align !416, !noundef !17
  %i.o = getelementptr i8, ptr %i.j, i64 -32
  %.val10.i = load ptr, ptr %i.o, align 8, !noalias !3078
  %i.p = tail call fastcc noundef zeroext i1 @_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtB7_3vec3VecBy_EIB1o_jEE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0B30_(ptr nonnull %.val.i, ptr %.val10.i), !noalias !3078 ; 3 uses
  %..i = select i1 %i.p, ptr %i.k, ptr %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %..i, i64 56, i1 false), !noalias !3078
  %i.q = xor i1 %i.p, true
  %i.r = zext i1 %i.q to i64
  %i.s = getelementptr inbounds nuw [56 x i8], ptr %i.k, i64 %i.r ; 3 uses
  %i.t = zext i1 %i.p to i64
  %i.u = getelementptr inbounds nuw [56 x i8], ptr %i.l, i64 %i.t ; 3 uses
  %i.v = icmp eq ptr %i.s, %0
  %i.w = icmp eq ptr %i.u, %2
  %or.cond.i = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtCscdodAO9FK5_5alloc3vec3VecB1b_EIB21_jEEE10merge_downNCINvMNtB25_5sliceSB1a_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0EB4u_.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %i.x = phi ptr [ %i.ah, %.lr.ph.i ], [ %0, %.critedge ] ; 2 uses
  %.sroa.0.02.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %i.e, %.critedge ] ; 3 uses
  %i.y = phi ptr [ %i.ae, %.lr.ph.i ], [ %2, %.critedge ] ; 3 uses
  %i.z = getelementptr i8, ptr %.sroa.0.02.i, i64 24
  %.sroa.0.0.val.i = load ptr, ptr %i.z, align 8, !noalias !3081, !nonnull !17, !align !416, !noundef !17
  %i.aa = getelementptr i8, ptr %i.y, i64 24
  %.val.i19 = load ptr, ptr %i.aa, align 8, !noalias !3081
  %i.ab = tail call fastcc noundef zeroext i1 @_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtB7_3vec3VecBy_EIB1o_jEE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0B30_(ptr nonnull %.sroa.0.0.val.i, ptr %.val.i19), !noalias !3081 ; 3 uses
  %i.ac = xor i1 %i.ab, true
  %spec.select.i = select i1 %i.ab, ptr %.sroa.0.02.i, ptr %i.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.x, ptr noundef nonnull align 8 dereferenceable(56) %spec.select.i, i64 56, i1 false), !noalias !3081
  %i.ad = zext i1 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [56 x i8], ptr %i.y, i64 %i.ad ; 3 uses
  %i.af = zext i1 %i.ab to i64
  %i.ag = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.02.i, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 2 uses
  %i.ai = icmp ne ptr %i.ae, %i.h
  %i.aj = icmp ne ptr %i.ag, %i.f
  %or.cond.i20 = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond.i20, label %.lr.ph.i, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtCscdodAO9FK5_5alloc3vec3VecB1b_EIB21_jEEE10merge_downNCINvMNtB25_5sliceSB1a_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0EB4u_.exit

_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtCscdodAO9FK5_5alloc3vec3VecB1b_EIB21_jEEE10merge_downNCINvMNtB25_5sliceSB1a_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0EB4u_.exit: ; preds = %.lr.ph.i, %.preheader
  %.sroa.13.0 = phi ptr [ %i.s, %.preheader ], [ %i.ah, %.lr.ph.i ]
  %.sroa.7.0 = phi ptr [ %i.u, %.preheader ], [ %i.h, %.lr.ph.i ]
  %.sroa.0.0 = phi ptr [ %2, %.preheader ], [ %i.ae, %.lr.ph.i ] ; 2 uses
  %i.ak = ptrtoint ptr %.sroa.7.0 to i64
  %i.al = ptrtoint ptr %.sroa.0.0 to i64
  %i.am = sub nuw i64 %i.ak, %i.al
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.am, i1 false), !noalias !3084
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtCscdodAO9FK5_5alloc3vec3VecB1b_EIB21_jEEE10merge_downNCINvMNtB25_5sliceSB1a_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0EB4u_.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2f_5sliceSBX_7sort_byNCNvXs1_NtB13_8settingsNtB3p_8SettingsNtNtBa_3fmt7Display3fmts5_0E0EB17_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4                   ; 2 uses
  %.sroa.0.0.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4) ; 2 uses
  %i.d = icmp samesign ult i64 %3, %.sroa.0.0.i
  br i1 %i.d, label %bb.i, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %4 ; 3 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %0
  %i.g = shl nuw nsw i64 %.sroa.0.0.i, 4          ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 3 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i
  %i.i = phi ptr [ %i.aq, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i ], [ %i.h, %.critedge ]
  %i.j = phi ptr [ %i.ao, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i ], [ %i.e, %.critedge ]
  %.sroa.0.0.i17 = phi ptr [ %i.m, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i ], [ %i.f, %.critedge ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -16 ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -16 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i17, i64 -16 ; 2 uses
  %.val.i = load ptr, ptr %i.l, align 8, !noalias !3089, !nonnull !17, !align !416, !noundef !17 ; 3 uses
  %.val10.i = load ptr, ptr %i.k, align 8, !noalias !3089, !nonnull !17, !align !416, !noundef !17 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3095)
  %i.n = load i64, ptr %.val.i, align 8, !range !367, !alias.scope !3092, !noalias !3097, !noundef !17
  %i.o = icmp ne i64 %i.n, -1                     ; 3 uses
  %i.p = zext i1 %i.o to i8
  %i.q = load i64, ptr %.val10.i, align 8, !range !367, !alias.scope !3095, !noalias !3098, !noundef !17
  %i.r = icmp eq i64 %i.q, -1                     ; 3 uses
  %not..i.i.i.i = xor i1 %i.r, true               ; 2 uses
  %.neg.i.i.i.i = sext i1 %not..i.i.i.i to i8
  %i.s = add nsw i8 %.neg.i.i.i.i, %i.p
  %i.t = xor i1 %i.o, %i.r
  br i1 %i.t, label %bb.c, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i

bb.c:                                             ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.assume(i1 %not..i.i.i.i)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !3092, !noalias !3097, !nonnull !17, !noundef !17
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !3092, !noalias !3097, !noundef !17 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !3095, !noalias !3098, !nonnull !17, !noundef !17
  %i.aa = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !3095, !noalias !3098, !noundef !17 ; 2 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.ab)
  %i.ac = tail call i32 @memcmp(ptr nonnull %i.v, ptr nonnull %i.z, i64 %spec.store.select.i.i.i.i), !noalias !3099 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp eq i32 %i.ac, 0
  %i.af = sub i64 %i.x, %i.ab
  %spec.select.i.i.i.i = select i1 %i.ae, i64 %i.af, i64 %i.ad
  %i.ag = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.assume(i1 %i.r)
  %i.ah = load i8, ptr %i.u, align 8, !range !1799, !alias.scope !3092, !noalias !3097, !noundef !17
  %6 = zext nneg i8 %i.ah to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.aj = load i8, ptr %i.ai, align 8, !range !1799, !alias.scope !3095, !noalias !3098, !noundef !17
  %7 = zext nneg i8 %i.aj to i64
  %i.ak = tail call i8 @llvm.scmp.i8.i64(i64 %6, i64 %7)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i: ; preds = %bb.e, %bb.d, %.preheader
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.ag, %bb.d ], [ %i.ak, %bb.e ], [ %i.s, %.preheader ]
  %i.al = icmp eq i8 %.sroa.0.0.i.i.i.i, -1       ; 3 uses
  %..i = select i1 %i.al, ptr %i.k, ptr %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %..i, i64 16, i1 false), !noalias !3089
  %i.am = xor i1 %i.al, true
  %i.an = zext i1 %i.am to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.an ; 3 uses
  %i.ap = zext i1 %i.al to i64
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.ap ; 3 uses
  %i.ar = icmp eq ptr %i.ao, %0
  %i.as = icmp eq ptr %i.aq, %2
  %or.cond.i = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringEE10merge_downNCINvMNtB2s_5sliceSB1a_7sort_byNCNvXs1_NtB1g_8settingsNtB3Q_8SettingsNtNtBb_3fmt7Display3fmts5_0E0EB1k_.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i22
  %i.at = phi ptr [ %i.bz, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i22 ], [ %0, %.critedge ] ; 2 uses
  %.sroa.0.02.i = phi ptr [ %i.by, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i22 ], [ %i.e, %.critedge ] ; 3 uses
  %i.au = phi ptr [ %i.bw, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i22 ], [ %2, %.critedge ] ; 3 uses
  %.sroa.0.0.val.i = load ptr, ptr %.sroa.0.02.i, align 8, !noalias !3100, !nonnull !17, !align !416, !noundef !17 ; 3 uses
  %.val.i19 = load ptr, ptr %i.au, align 8, !noalias !3100, !nonnull !17, !align !416, !noundef !17 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3106)
  %i.av = load i64, ptr %.sroa.0.0.val.i, align 8, !range !367, !alias.scope !3103, !noalias !3108, !noundef !17
  %i.aw = icmp ne i64 %i.av, -1                   ; 3 uses
  %i.ax = zext i1 %i.aw to i8
  %i.ay = load i64, ptr %.val.i19, align 8, !range !367, !alias.scope !3106, !noalias !3109, !noundef !17
  %i.az = icmp eq i64 %i.ay, -1                   ; 3 uses
  %not..i.i.i.i20 = xor i1 %i.az, true            ; 2 uses
  %.neg.i.i.i.i21 = sext i1 %not..i.i.i.i20 to i8
  %i.ba = add nsw i8 %.neg.i.i.i.i21, %i.ax
  %i.bb = xor i1 %i.aw, %i.az
  br i1 %i.bb, label %bb.f, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i22

bb.f:                                             ; preds = %.lr.ph.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i, i64 8 ; 2 uses
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.assume(i1 %not..i.i.i.i20)
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !3103, !noalias !3108, !nonnull !17, !noundef !17
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !3103, !noalias !3108, !noundef !17 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val.i19, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !3106, !noalias !3109, !nonnull !17, !noundef !17
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.i19, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !3106, !noalias !3109, !noundef !17 ; 2 uses
  %spec.store.select.i.i.i.i25 = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %i.bj)
  %i.bk = tail call i32 @memcmp(ptr nonnull %i.bd, ptr nonnull %i.bh, i64 %spec.store.select.i.i.i.i25), !noalias !3110 ; 2 uses
  %i.bl = sext i32 %i.bk to i64
  %i.bm = icmp eq i32 %i.bk, 0
  %i.bn = sub i64 %i.bf, %i.bj
  %spec.select.i.i.i.i26 = select i1 %i.bm, i64 %i.bn, i64 %i.bl
  %i.bo = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i26, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i22

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.assume(i1 %i.az)
  %i.bp = load i8, ptr %i.bc, align 8, !range !1799, !alias.scope !3103, !noalias !3108, !noundef !17
  %8 = zext nneg i8 %i.bp to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %.val.i19, i64 8
  %i.br = load i8, ptr %i.bq, align 8, !range !1799, !alias.scope !3106, !noalias !3109, !noundef !17
  %9 = zext nneg i8 %i.br to i64
  %i.bs = tail call i8 @llvm.scmp.i8.i64(i64 %8, i64 %9)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i22

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i22: ; preds = %bb.h, %bb.g, %.lr.ph.i
  %.sroa.0.0.i.i.i.i23 = phi i8 [ %i.bo, %bb.g ], [ %i.bs, %bb.h ], [ %i.ba, %.lr.ph.i ]
  %i.bt = icmp eq i8 %.sroa.0.0.i.i.i.i23, -1     ; 3 uses
  %i.bu = xor i1 %i.bt, true
  %spec.select.i = select i1 %i.bt, ptr %.sroa.0.02.i, ptr %i.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %spec.select.i, i64 16, i1 false), !noalias !3100
  %i.bv = zext i1 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.bv ; 3 uses
  %i.bx = zext i1 %i.bt to i64
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.ca = icmp ne ptr %i.bw, %i.h
  %i.cb = icmp ne ptr %i.by, %i.f
  %or.cond.i24 = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond.i24, label %.lr.ph.i, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringEE10merge_downNCINvMNtB2s_5sliceSB1a_7sort_byNCNvXs1_NtB1g_8settingsNtB3Q_8SettingsNtNtBb_3fmt7Display3fmts5_0E0EB1k_.exit

_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringEE10merge_downNCINvMNtB2s_5sliceSB1a_7sort_byNCNvXs1_NtB1g_8settingsNtB3Q_8SettingsNtNtBb_3fmt7Display3fmts5_0E0EB1k_.exit: ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i22, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i
  %.sroa.13.0 = phi ptr [ %i.ao, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i ], [ %i.bz, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i22 ]
  %.sroa.7.0 = phi ptr [ %i.aq, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i ], [ %i.h, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i22 ]
  %.sroa.0.0 = phi ptr [ %2, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i ], [ %i.bw, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXs1_NtBD_8settingsNtB2n_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmts5_0E0BH_.exit.i22 ] ; 2 uses
  %i.cc = ptrtoint ptr %.sroa.7.0 to i64
  %i.cd = ptrtoint ptr %.sroa.0.0 to i64
  %i.ce = sub nuw i64 %i.cc, %i.cd
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.ce, i1 false), !noalias !3111
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringEE10merge_downNCINvMNtB2s_5sliceSB1a_7sort_byNCNvXs1_NtB1g_8settingsNtB3Q_8SettingsNtNtBb_3fmt7Display3fmts5_0E0EB1k_.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringENCINvMNtB2f_5sliceSBX_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBZ_B2b_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3p_8CacheKey9cache_key0E0EB17_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4                   ; 2 uses
  %.sroa.0.0.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4) ; 2 uses
  %i.d = icmp samesign ult i64 %3, %.sroa.0.0.i
  br i1 %i.d, label %bb.i, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %4 ; 3 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %0
  %i.g = shl nuw nsw i64 %.sroa.0.0.i, 4          ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 3 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i
  %i.i = phi ptr [ %i.aq, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i ], [ %i.h, %.critedge ]
  %i.j = phi ptr [ %i.ao, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i ], [ %i.e, %.critedge ]
  %.sroa.0.0.i17 = phi ptr [ %i.m, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i ], [ %i.f, %.critedge ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -16 ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -16 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i17, i64 -16 ; 2 uses
  %.val.i = load ptr, ptr %i.l, align 8, !noalias !3116, !nonnull !17, !align !416, !noundef !17 ; 3 uses
  %.val10.i = load ptr, ptr %i.k, align 8, !noalias !3116, !nonnull !17, !align !416, !noundef !17 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3122)
  %i.n = load i64, ptr %.val.i, align 8, !range !367, !alias.scope !3119, !noalias !3124, !noundef !17
  %i.o = icmp ne i64 %i.n, -1                     ; 3 uses
  %i.p = zext i1 %i.o to i8
  %i.q = load i64, ptr %.val10.i, align 8, !range !367, !alias.scope !3122, !noalias !3125, !noundef !17
  %i.r = icmp eq i64 %i.q, -1                     ; 3 uses
  %not..i.i.i.i = xor i1 %i.r, true               ; 2 uses
  %.neg.i.i.i.i = sext i1 %not..i.i.i.i to i8
  %i.s = add nsw i8 %.neg.i.i.i.i, %i.p
  %i.t = xor i1 %i.o, %i.r
  br i1 %i.t, label %bb.c, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i

bb.c:                                             ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.assume(i1 %not..i.i.i.i)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !3119, !noalias !3124, !nonnull !17, !noundef !17
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !3119, !noalias !3124, !noundef !17 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !3122, !noalias !3125, !nonnull !17, !noundef !17
  %i.aa = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !3122, !noalias !3125, !noundef !17 ; 2 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.ab)
  %i.ac = tail call i32 @memcmp(ptr nonnull %i.v, ptr nonnull %i.z, i64 %spec.store.select.i.i.i.i), !noalias !3126 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp eq i32 %i.ac, 0
  %i.af = sub i64 %i.x, %i.ab
  %spec.select.i.i.i.i = select i1 %i.ae, i64 %i.af, i64 %i.ad
  %i.ag = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.assume(i1 %i.r)
  %i.ah = load i8, ptr %i.u, align 8, !range !1799, !alias.scope !3119, !noalias !3124, !noundef !17
  %6 = zext nneg i8 %i.ah to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.aj = load i8, ptr %i.ai, align 8, !range !1799, !alias.scope !3122, !noalias !3125, !noundef !17
  %7 = zext nneg i8 %i.aj to i64
  %i.ak = tail call i8 @llvm.scmp.i8.i64(i64 %6, i64 %7)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i: ; preds = %bb.e, %bb.d, %.preheader
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.ag, %bb.d ], [ %i.ak, %bb.e ], [ %i.s, %.preheader ]
  %i.al = icmp eq i8 %.sroa.0.0.i.i.i.i, -1       ; 3 uses
  %..i = select i1 %i.al, ptr %i.k, ptr %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %..i, i64 16, i1 false), !noalias !3116
  %i.am = xor i1 %i.al, true
  %i.an = zext i1 %i.am to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.an ; 3 uses
  %i.ap = zext i1 %i.al to i64
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.ap ; 3 uses
  %i.ar = icmp eq ptr %i.ao, %0
  %i.as = icmp eq ptr %i.aq, %2
  %or.cond.i = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringEE10merge_downNCINvMNtB2s_5sliceSB1a_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB1c_B2o_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3Q_8CacheKey9cache_key0E0EB1k_.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i22
  %i.at = phi ptr [ %i.bz, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i22 ], [ %0, %.critedge ] ; 2 uses
  %.sroa.0.02.i = phi ptr [ %i.by, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i22 ], [ %i.e, %.critedge ] ; 3 uses
  %i.au = phi ptr [ %i.bw, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i22 ], [ %2, %.critedge ] ; 3 uses
  %.sroa.0.0.val.i = load ptr, ptr %.sroa.0.02.i, align 8, !noalias !3127, !nonnull !17, !align !416, !noundef !17 ; 3 uses
  %.val.i19 = load ptr, ptr %i.au, align 8, !noalias !3127, !nonnull !17, !align !416, !noundef !17 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3133)
  %i.av = load i64, ptr %.sroa.0.0.val.i, align 8, !range !367, !alias.scope !3130, !noalias !3135, !noundef !17
  %i.aw = icmp ne i64 %i.av, -1                   ; 3 uses
  %i.ax = zext i1 %i.aw to i8
  %i.ay = load i64, ptr %.val.i19, align 8, !range !367, !alias.scope !3133, !noalias !3136, !noundef !17
  %i.az = icmp eq i64 %i.ay, -1                   ; 3 uses
  %not..i.i.i.i20 = xor i1 %i.az, true            ; 2 uses
  %.neg.i.i.i.i21 = sext i1 %not..i.i.i.i20 to i8
  %i.ba = add nsw i8 %.neg.i.i.i.i21, %i.ax
  %i.bb = xor i1 %i.aw, %i.az
  br i1 %i.bb, label %bb.f, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i22

bb.f:                                             ; preds = %.lr.ph.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i, i64 8 ; 2 uses
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.assume(i1 %not..i.i.i.i20)
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !3130, !noalias !3135, !nonnull !17, !noundef !17
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !3130, !noalias !3135, !noundef !17 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val.i19, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !3133, !noalias !3136, !nonnull !17, !noundef !17
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.i19, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !3133, !noalias !3136, !noundef !17 ; 2 uses
  %spec.store.select.i.i.i.i25 = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %i.bj)
  %i.bk = tail call i32 @memcmp(ptr nonnull %i.bd, ptr nonnull %i.bh, i64 %spec.store.select.i.i.i.i25), !noalias !3137 ; 2 uses
  %i.bl = sext i32 %i.bk to i64
  %i.bm = icmp eq i32 %i.bk, 0
  %i.bn = sub i64 %i.bf, %i.bj
  %spec.select.i.i.i.i26 = select i1 %i.bm, i64 %i.bn, i64 %i.bl
  %i.bo = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i26, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i22

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.assume(i1 %i.az)
  %i.bp = load i8, ptr %i.bc, align 8, !range !1799, !alias.scope !3130, !noalias !3135, !noundef !17
  %8 = zext nneg i8 %i.bp to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %.val.i19, i64 8
  %i.br = load i8, ptr %i.bq, align 8, !range !1799, !alias.scope !3133, !noalias !3136, !noundef !17
  %9 = zext nneg i8 %i.br to i64
  %i.bs = tail call i8 @llvm.scmp.i8.i64(i64 %8, i64 %9)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i22

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i22: ; preds = %bb.h, %bb.g, %.lr.ph.i
  %.sroa.0.0.i.i.i.i23 = phi i8 [ %i.bo, %bb.g ], [ %i.bs, %bb.h ], [ %i.ba, %.lr.ph.i ]
  %i.bt = icmp eq i8 %.sroa.0.0.i.i.i.i23, -1     ; 3 uses
  %i.bu = xor i1 %i.bt, true
  %spec.select.i = select i1 %i.bt, ptr %.sroa.0.02.i, ptr %i.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %spec.select.i, i64 16, i1 false), !noalias !3127
  %i.bv = zext i1 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.bv ; 3 uses
  %i.bx = zext i1 %i.bt to i64
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.ca = icmp ne ptr %i.bw, %i.h
  %i.cb = icmp ne ptr %i.by, %i.f
  %or.cond.i24 = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond.i24, label %.lr.ph.i, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringEE10merge_downNCINvMNtB2s_5sliceSB1a_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB1c_B2o_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3Q_8CacheKey9cache_key0E0EB1k_.exit

_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringEE10merge_downNCINvMNtB2s_5sliceSB1a_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB1c_B2o_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3Q_8CacheKey9cache_key0E0EB1k_.exit: ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i22, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i
  %.sroa.13.0 = phi ptr [ %i.ao, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i ], [ %i.bz, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i22 ]
  %.sroa.7.0 = phi ptr [ %i.aq, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i ], [ %i.h, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i22 ]
  %.sroa.0.0 = phi ptr [ %2, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i ], [ %i.bw, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtB7_6string6StringE7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBz_B1L_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB2n_8CacheKey9cache_key0E0BH_.exit.i22 ] ; 2 uses
  %i.cc = ptrtoint ptr %.sroa.7.0 to i64
  %i.cd = ptrtoint ptr %.sroa.0.0 to i64
  %i.ce = sub nuw i64 %i.cc, %i.cd
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.ce, i1 false), !noalias !3138
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionRNtNtCscdodAO9FK5_5alloc6string6StringEE10merge_downNCINvMNtB2s_5sliceSB1a_7sort_byNCNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB1c_B2o_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB3Q_8CacheKey9cache_key0E0EB1k_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprB11_ENCINvMNtCscdodAO9FK5_5alloc5sliceSBX_7sort_byNCNvMs2_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17sort_dunder_slotsNtB2M_12DictElements16into_sorted_elts0E0EB2U_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i64 noundef %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4                   ; 2 uses
  %.sroa.0.0.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4) ; 2 uses
  %i.d = icmp samesign ult i64 %3, %.sroa.0.0.i
  br i1 %i.d, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %4 ; 3 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %0
  %i.g = mul nuw nsw i64 %.sroa.0.0.i, 24         ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 4 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %.noexc
  %.sroa.13.2 = phi ptr [ %i.v, %.noexc ], [ %i.e, %.critedge ] ; 2 uses
  %.sroa.7.2 = phi ptr [ %i.x, %.noexc ], [ %i.h, %.critedge ] ; 2 uses
  %.sroa.0.0.i17 = phi ptr [ %i.r, %.noexc ], [ %i.f, %.critedge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.13.2, i64 -24 ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.7.2, i64 -24 ; 3 uses
  %.val.i = load ptr, ptr %i.j, align 8, !noalias !3143, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %.val10.i = load ptr, ptr %i.i, align 8, !noalias !3143, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %i.k = load ptr, ptr %.val.i, align 8, !noalias !3143, !nonnull !17, !noundef !17
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noalias !3143, !noundef !17
  %i.n = load ptr, ptr %.val10.i, align 8, !noalias !3143, !nonnull !17, !noundef !17
  %i.o = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !3143, !noundef !17
  %i.q = invoke noundef range(i8 -1, 2) i8 @_RNvCshCO9OnvyZAQ_6natord7compare(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.p)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %.preheader
  %i.r = getelementptr inbounds i8, ptr %.sroa.0.0.i17, i64 -24 ; 2 uses
  %i.s = icmp eq i8 %i.q, -1                      ; 3 uses
  %..i = select i1 %i.s, ptr %i.i, ptr %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %..i, i64 24, i1 false), !noalias !3143
  %i.t = xor i1 %i.s, true
  %i.u = zext i1 %i.t to i64
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.u ; 3 uses
  %i.w = zext i1 %i.s to i64
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.w ; 3 uses
  %i.y = icmp eq ptr %i.v, %0
  %i.z = icmp eq ptr %i.x, %2
  %or.cond.i = select i1 %i.y, i1 true, i1 %i.z
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprB1e_EE10merge_downNCINvMNtCscdodAO9FK5_5alloc5sliceSB1a_7sort_byNCNvMs2_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17sort_dunder_slotsNtB3d_12DictElements16into_sorted_elts0E0EB3l_.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %.noexc21
  %.sroa.13.3 = phi ptr [ %i.an, %.noexc21 ], [ %0, %.critedge ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %i.ak, %.noexc21 ], [ %2, %.critedge ] ; 4 uses
  %.sroa.0.02.i = phi ptr [ %i.am, %.noexc21 ], [ %i.e, %.critedge ] ; 3 uses
  %.sroa.0.0.val.i = load ptr, ptr %.sroa.0.02.i, align 8, !noalias !3146, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %.val.i19 = load ptr, ptr %.sroa.0.2, align 8, !noalias !3146, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %i.aa = load ptr, ptr %.sroa.0.0.val.i, align 8, !noalias !3146, !nonnull !17, !noundef !17
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !3146, !noundef !17
  %i.ad = load ptr, ptr %.val.i19, align 8, !noalias !3146, !nonnull !17, !noundef !17
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i19, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noalias !3146, !noundef !17
  %i.ag = invoke noundef range(i8 -1, 2) i8 @_RNvCshCO9OnvyZAQ_6natord7compare(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ac, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef %i.af)
          to label %.noexc21 unwind label %.loopexit.split-lp

.noexc21:                                         ; preds = %.lr.ph.i
  %i.ah = icmp eq i8 %i.ag, -1                    ; 3 uses
  %i.ai = xor i1 %i.ah, true
  %spec.select.i = select i1 %i.ah, ptr %.sroa.0.02.i, ptr %.sroa.0.2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.3, ptr noundef nonnull align 8 dereferenceable(24) %spec.select.i, i64 24, i1 false), !noalias !3146
  %i.aj = zext i1 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.2, i64 %i.aj ; 3 uses
  %i.al = zext i1 %i.ah to i64
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.02.i, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.13.3, i64 24 ; 2 uses
  %i.ao = icmp ne ptr %i.ak, %i.h
  %i.ap = icmp ne ptr %i.am, %i.f
  %or.cond.i20 = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond.i20, label %.lr.ph.i, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprB1e_EE10merge_downNCINvMNtCscdodAO9FK5_5alloc5sliceSB1a_7sort_byNCNvMs2_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17sort_dunder_slotsNtB3d_12DictElements16into_sorted_elts0E0EB3l_.exit

_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprB1e_EE10merge_downNCINvMNtCscdodAO9FK5_5alloc5sliceSB1a_7sort_byNCNvMs2_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17sort_dunder_slotsNtB3d_12DictElements16into_sorted_elts0E0EB3l_.exit: ; preds = %.noexc21, %.noexc
  %.sroa.13.1 = phi ptr [ %i.v, %.noexc ], [ %i.an, %.noexc21 ]
  %.sroa.7.1 = phi ptr [ %i.x, %.noexc ], [ %i.h, %.noexc21 ]
  %.sroa.0.1 = phi ptr [ %2, %.noexc ], [ %i.ak, %.noexc21 ] ; 2 uses
  %i.aq = ptrtoint ptr %.sroa.7.1 to i64
  %i.ar = ptrtoint ptr %.sroa.0.1 to i64
  %i.as = sub nuw i64 %i.aq, %i.ar
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1, ptr align 8 %.sroa.0.1, i64 %i.as, i1 false), !noalias !3149
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprB1e_EE10merge_downNCINvMNtCscdodAO9FK5_5alloc5sliceSB1a_7sort_byNCNvMs2_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17sort_dunder_slotsNtB3d_12DictElements16into_sorted_elts0E0EB3l_.exit
  ret void

.loopexit:                                        ; preds = %.preheader
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.lr.ph.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.13.0 = phi ptr [ %.sroa.13.2, %.loopexit ], [ %.sroa.13.3, %.loopexit.split-lp ]
  %.sroa.7.0 = phi ptr [ %.sroa.7.2, %.loopexit ], [ %i.h, %.loopexit.split-lp ]
  %.sroa.0.0 = phi ptr [ %2, %.loopexit ], [ %.sroa.0.2, %.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.at = ptrtoint ptr %.sroa.7.0 to i64
  %i.au = ptrtoint ptr %.sroa.0.0 to i64
  %i.av = sub nuw i64 %i.at, %i.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.sroa.13.0, ptr nonnull align 8 %.sroa.0.0, i64 %i.av, i1 false), !noalias !3154
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENCINvMNtCscdodAO9FK5_5alloc5sliceSBX_7sort_byNCNvMs6_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2I_16SequenceElements16into_sorted_elts0E0EB2Q_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4                   ; 2 uses
  %.sroa.0.0.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4) ; 2 uses
  %i.d = icmp samesign ult i64 %3, %.sroa.0.0.i
  br i1 %i.d, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %4 ; 3 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %0
  %i.g = shl nuw nsw i64 %.sroa.0.0.i, 4          ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 4 uses
  %.val = load ptr, ptr %5, align 8, !nonnull !17, !noundef !17 ; 2 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %.noexc
  %.sroa.13.2 = phi ptr [ %i.x, %.noexc ], [ %i.e, %.critedge ] ; 2 uses
  %.sroa.7.2 = phi ptr [ %i.z, %.noexc ], [ %i.h, %.critedge ] ; 2 uses
  %.sroa.0.0.i18 = phi ptr [ %i.t, %.noexc ], [ %i.f, %.critedge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.13.2, i64 -16 ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.7.2, i64 -16 ; 3 uses
  %.val10.i = load ptr, ptr %i.j, align 8, !noalias !3159, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %.val11.i = load ptr, ptr %i.i, align 8, !noalias !3159, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %.val.i.i = load ptr, ptr %.val, align 8, !noalias !3159, !nonnull !17, !noundef !17
  %i.k = load i8, ptr %.val.i.i, align 1, !range !118, !noalias !3159, !noundef !17
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = load ptr, ptr %.val10.i, align 8, !noalias !3159, !nonnull !17, !noundef !17
  %i.n = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noalias !3159, !noundef !17
  %i.p = load ptr, ptr %.val11.i, align 8, !noalias !3159, !nonnull !17, !noundef !17
  %i.q = getelementptr inbounds nuw i8, ptr %.val11.i, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noalias !3159, !noundef !17
  %i.s = invoke noundef range(i8 -1, 2) i8 @_RNvMNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2_12SortingStyle7compare(i1 noundef zeroext %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.r)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %.preheader
  %i.t = getelementptr inbounds i8, ptr %.sroa.0.0.i18, i64 -16 ; 2 uses
end_hunk_4
begin_hunk_5_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring14ExceptionEntryNCINvMB8_SB15_16sort_unstable_byNCNvMsh_B17_NtB17_11BodyVisitor6finish0E0EB1f_:bb.a
  %i.cs = load i32, ptr %i.cr, align 8, !alias.scope !3223, !noalias !3222, !noundef !17
  %i.ct = tail call i8 @llvm.ucmp.i8.i32(i32 %i.cq, i32 %i.cs)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RINvNtNtCs4NRVxsYgnAr_4core5slice3cmp13chaining_implReNtNtB6_3cmp8OrderingNtNtB6_7convert10InfallibleNCNvXs7_B2_BO_NtB2_8SliceOrd7compare0NCB1D_s_0ECsEhZmuQNqkz_11ruff_linter.exit.i.i27
  %.sroa.0.0.i.i29 = phi i8 [ %i.ct, %bb.l ], [ %.sroa.0.0.i.i.i28, %_RINvNtNtCs4NRVxsYgnAr_4core5slice3cmp13chaining_implReNtNtB6_3cmp8OrderingNtNtB6_7convert10InfallibleNCNvXs7_B2_BO_NtB2_8SliceOrd7compare0NCB1D_s_0ECsEhZmuQNqkz_11ruff_linter.exit.i.i27 ] ; 2 uses
  %i.cu = icmp eq i8 %.sroa.0.0.i.i29, 0
  br i1 %i.cu, label %bb.n, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring14ExceptionEntry16sort_unstable_byNCNvMsh_Bz_NtBz_11BodyVisitor6finish0E0BH_.exit33

bb.n:                                             ; preds = %bb.m
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bi, i64 148
  %i.cw = load i32, ptr %i.cv, align 4, !alias.scope !3222, !noalias !3223, !noundef !17
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bj, i64 148
  %i.cy = load i32, ptr %i.cx, align 4, !alias.scope !3223, !noalias !3222, !noundef !17
  %i.cz = tail call i8 @llvm.ucmp.i8.i32(i32 %i.cw, i32 %i.cy)
  br label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring14ExceptionEntry16sort_unstable_byNCNvMsh_Bz_NtBz_11BodyVisitor6finish0E0BH_.exit33

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring14ExceptionEntry16sort_unstable_byNCNvMsh_Bz_NtBz_11BodyVisitor6finish0E0BH_.exit33: ; preds = %bb.m, %bb.n
  %.sroa.0.1.i.i30 = phi i8 [ %i.cz, %bb.n ], [ %.sroa.0.0.i.i29, %bb.m ]
  %i.da = icmp eq i8 %.sroa.0.1.i.i30, -1
  br i1 %i.da, label %bb.o, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring14ExceptionEntryNCINvMB8_SB16_16sort_unstable_byNCNvMsh_B18_NtB18_11BodyVisitor6finish0E0EB1g_.exit

bb.o:                                             ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring14ExceptionEntry16sort_unstable_byNCNvMsh_Bz_NtBz_11BodyVisitor6finish0E0BH_.exit33
  tail call void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull %i.bi, ptr noundef nonnull %i.bj, i64 noundef 19)
  %i.db = shl nuw nsw i64 %.sroa.04.0.i, 1        ; 2 uses
  %i.dc = or disjoint i64 %i.db, 1                ; 2 uses
  %.not.i = icmp samesign ult i64 %i.dc, %.sroa.0.0.i11
  br i1 %.not.i, label %.lr.ph, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring14ExceptionEntryNCINvMB8_SB16_16sort_unstable_byNCNvMsh_B18_NtB18_11BodyVisitor6finish0E0EB1g_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring14ExceptionEntryNCINvMB8_SB16_16sort_unstable_byNCNvMsh_B18_NtB18_11BodyVisitor6finish0E0EB1g_.exit: ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring14ExceptionEntry16sort_unstable_byNCNvMsh_Bz_NtBz_11BodyVisitor6finish0E0BH_.exit33, %bb.o, %bb.d
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph40
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree nonnull readnone captures(none) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %1, 1
  %i.b = add nuw nsw i64 %i.a, %1                 ; 2 uses
  %.not24 = icmp eq i64 %i.b, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph26

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit, %bb.a
  ret void

.lr.ph26:                                         ; preds = %bb.a, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.2.025 = phi i64 [ %i.c, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit ], [ %i.b, %bb.a ]
  %i.c = add nsw i64 %.sroa.2.025, -1             ; 6 uses
  %.not9 = icmp ult i64 %i.c, %1
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph26
  %i.d = sub nuw nsw i64 %i.c, %1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph26
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8
  %i.f = load i64, ptr %i.e, align 8
  store i64 %i.f, ptr %0, align 8
  store i64 %.sroa.0.0.copyload.i, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.04.0 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %.sroa.0.0.i14 = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.c) ; 4 uses
  %i.g = icmp ule i64 %.sroa.04.0, %.sroa.0.0.i14
  tail call void @llvm.assume(i1 %i.g)
  %i.h = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.i = or disjoint i64 %i.h, 1                  ; 2 uses
  %.not.i21 = icmp samesign ult i64 %i.i, %.sroa.0.0.i14
  br i1 %.not.i21, label %.lr.ph, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %i.j = phi i64 [ %i.ag, %bb.g ], [ %i.i, %bb.d ] ; 3 uses
  %i.k = phi i64 [ %i.af, %bb.g ], [ %i.h, %bb.d ]
  %.sroa.0.0.i22 = phi i64 [ %.sroa.04.0.i, %bb.g ], [ %.sroa.04.0, %bb.d ]
  %i.l = add nuw nsw i64 %i.k, 2                  ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, %.sroa.0.0.i14
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.j
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  %.val = load ptr, ptr %i.n, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %.val11 = load ptr, ptr %i.o, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %i.p = getelementptr i8, ptr %.val, i64 8
  %.val.i.i = load ptr, ptr %i.p, align 8, !nonnull !17, !noundef !17
  %i.q = getelementptr i8, ptr %.val, i64 16
  %.val1.i.i = load i64, ptr %i.q, align 8, !noundef !17
  %i.r = getelementptr i8, ptr %.val11, i64 8
  %.val2.i.i = load ptr, ptr %i.r, align 8, !nonnull !17, !noundef !17
  %i.s = getelementptr i8, ptr %.val11, i64 16
  %.val3.i.i = load i64, ptr %i.s, align 8, !noundef !17
  %i.t = tail call noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i.i, i64 noundef %.val3.i.i) ; 2 uses
  %.not.i.i.i = icmp ne i8 %i.t, -2
  %i.u = icmp slt i8 %i.t, 0
  %.sroa.0.0.i.i.i = and i1 %.not.i.i.i, %i.u
  %i.v = zext i1 %.sroa.0.0.i.i.i to i64
  %i.w = add nuw nsw i64 %i.j, %i.v
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.w, %bb.e ], [ %i.j, %.lr.ph ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.0.i22 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.04.0.i ; 2 uses
  %.val12 = load ptr, ptr %i.x, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %.val13 = load ptr, ptr %i.y, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %i.z = getelementptr i8, ptr %.val12, i64 8
  %.val.i.i15 = load ptr, ptr %i.z, align 8, !nonnull !17, !noundef !17
  %i.aa = getelementptr i8, ptr %.val12, i64 16
  %.val1.i.i16 = load i64, ptr %i.aa, align 8, !noundef !17
  %i.ab = getelementptr i8, ptr %.val13, i64 8
  %.val2.i.i17 = load ptr, ptr %i.ab, align 8, !nonnull !17, !noundef !17
  %i.ac = getelementptr i8, ptr %.val13, i64 16
  %.val3.i.i18 = load i64, ptr %i.ac, align 8, !noundef !17
  %i.ad = tail call noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i15, i64 noundef %.val1.i.i16, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i.i17, i64 noundef %.val3.i.i18) ; 2 uses
  %.not.i.i.i19 = icmp ne i8 %i.ad, -2
  %i.ae = icmp slt i8 %i.ad, 0
  %.sroa.0.0.i.i.i20 = and i1 %.not.i.i.i19, %i.ae
  br i1 %.sroa.0.0.i.i.i20, label %bb.g, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull %i.x, ptr noundef nonnull %i.y, i64 noundef 1)
  %i.af = shl nuw nsw i64 %.sroa.04.0.i, 1        ; 2 uses
  %i.ag = or disjoint i64 %i.af, 1                ; 2 uses
  %.not.i = icmp samesign ult i64 %i.ag, %.sroa.0.0.i14
  br i1 %.not.i, label %.lr.ph, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.f, %bb.g, %bb.d
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph26
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree nonnull readnone captures(none) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %1, 1
  %i.b = add nuw nsw i64 %i.a, %1                 ; 2 uses
  %.not25 = icmp eq i64 %i.b, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph27

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit, %bb.a
  ret void

.lr.ph27:                                         ; preds = %bb.a, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.2.026 = phi i64 [ %i.c, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit ], [ %i.b, %bb.a ]
  %i.c = add nsw i64 %.sroa.2.026, -1             ; 6 uses
  %.not9 = icmp ult i64 %i.c, %1
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph27
  %i.d = sub nuw nsw i64 %i.c, %1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph27
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8
  %i.f = load i64, ptr %i.e, align 8
  store i64 %i.f, ptr %0, align 8
  store i64 %.sroa.0.0.copyload.i, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.04.0 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %.sroa.0.0.i14 = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.c) ; 4 uses
  %i.g = icmp ule i64 %.sroa.04.0, %.sroa.0.0.i14
  tail call void @llvm.assume(i1 %i.g)
  %i.h = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.i = or disjoint i64 %i.h, 1                  ; 2 uses
  %.not.i22 = icmp samesign ult i64 %i.i, %.sroa.0.0.i14
  br i1 %.not.i22, label %.lr.ph, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %i.j = phi i64 [ %i.ai, %bb.g ], [ %i.i, %bb.d ] ; 3 uses
  %i.k = phi i64 [ %i.ah, %bb.g ], [ %i.h, %bb.d ]
  %.sroa.0.0.i23 = phi i64 [ %.sroa.04.0.i, %bb.g ], [ %.sroa.04.0, %bb.d ]
  %i.l = add nuw nsw i64 %i.k, 2                  ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, %.sroa.0.0.i14
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.j
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  %.val = load ptr, ptr %i.n, align 8, !nonnull !17, !noundef !17
  %.val11 = load ptr, ptr %i.o, align 8, !nonnull !17, !noundef !17
  %.val.i.i = load i8, ptr %.val, align 1, !range !1400, !noundef !17 ; 4 uses
  %.val1.i.i = load i8, ptr %.val11, align 1, !range !1400, !noundef !17 ; 4 uses
  %i.p = icmp ne i8 %.val.i.i, 6
  tail call void @llvm.assume(i1 %i.p)
  %i.q = add nsw i8 %.val.i.i, -4
  %i.r = icmp samesign ugt i8 %.val.i.i, 3
  %narrow.i.i.i.i = select i1 %i.r, i8 %i.q, i8 2 ; 2 uses
  %i.s = icmp ne i8 %.val1.i.i, 6
  tail call void @llvm.assume(i1 %i.s)
  %i.t = add nsw i8 %.val1.i.i, -4
  %i.u = icmp samesign ugt i8 %.val1.i.i, 3
  %narrow1.i.i.i.i = select i1 %i.u, i8 %i.t, i8 2 ; 2 uses
  %i.v = icmp eq i8 %narrow.i.i.i.i, 2
  %i.w = icmp eq i8 %narrow1.i.i.i.i, 2
  %or.cond.i.i.i.i = and i1 %i.v, %i.w            ; 2 uses
  %.0.val.narrow.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %.val.i.i, i8 %narrow.i.i.i.i
  %.0.val1.narrow1.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %.val1.i.i, i8 %narrow1.i.i.i.i
  %3 = icmp samesign ult i8 %.0.val.narrow.i.i.i.i, %.0.val1.narrow1.i.i.i.i
  %4 = zext i1 %3 to i64
  %5 = add nuw nsw i64 %i.j, %4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %5, %bb.e ], [ %i.j, %.lr.ph ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.0.i23 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.04.0.i ; 2 uses
  %.val12 = load ptr, ptr %i.x, align 8, !nonnull !17, !noundef !17
  %.val13 = load ptr, ptr %i.y, align 8, !nonnull !17, !noundef !17
  %.val.i.i15 = load i8, ptr %.val12, align 1, !range !1400, !noundef !17 ; 4 uses
  %.val1.i.i16 = load i8, ptr %.val13, align 1, !range !1400, !noundef !17 ; 4 uses
  %i.z = icmp ne i8 %.val.i.i15, 6
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nsw i8 %.val.i.i15, -4
  %i.ab = icmp samesign ugt i8 %.val.i.i15, 3
  %narrow.i.i.i.i17 = select i1 %i.ab, i8 %i.aa, i8 2 ; 2 uses
  %i.ac = icmp ne i8 %.val1.i.i16, 6
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add nsw i8 %.val1.i.i16, -4
  %i.ae = icmp samesign ugt i8 %.val1.i.i16, 3
  %narrow1.i.i.i.i18 = select i1 %i.ae, i8 %i.ad, i8 2 ; 2 uses
  %i.af = icmp eq i8 %narrow.i.i.i.i17, 2
  %i.ag = icmp eq i8 %narrow1.i.i.i.i18, 2
  %or.cond.i.i.i.i19 = and i1 %i.af, %i.ag        ; 2 uses
  %.0.val.narrow.i.i.i.i20 = select i1 %or.cond.i.i.i.i19, i8 %.val.i.i15, i8 %narrow.i.i.i.i17
  %.0.val1.narrow1.i.i.i.i21 = select i1 %or.cond.i.i.i.i19, i8 %.val1.i.i16, i8 %narrow1.i.i.i.i18
  %6 = icmp samesign ult i8 %.0.val.narrow.i.i.i.i20, %.0.val1.narrow1.i.i.i.i21
  br i1 %6, label %bb.g, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull %i.x, ptr noundef nonnull %i.y, i64 noundef 1)
  %i.ah = shl nuw nsw i64 %.sroa.04.0.i, 1        ; 2 uses
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %.not.i = icmp samesign ult i64 %i.ai, %.sroa.0.0.i14
  br i1 %.not.i, label %.lr.ph, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.f, %bb.g, %bb.d
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph27
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortRReNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree nonnull readnone captures(none) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %1, 1
  %i.b = add nuw nsw i64 %i.a, %1                 ; 2 uses
  %.not24 = icmp eq i64 %i.b, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph26

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downRReNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit, %bb.a
  ret void

.lr.ph26:                                         ; preds = %bb.a, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downRReNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.2.025 = phi i64 [ %i.c, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downRReNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit ], [ %i.b, %bb.a ]
  %i.c = add nsw i64 %.sroa.2.025, -1             ; 6 uses
  %.not9 = icmp ult i64 %i.c, %1
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph26
  %i.d = sub nuw nsw i64 %i.c, %1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph26
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8
  %i.f = load i64, ptr %i.e, align 8
  store i64 %i.f, ptr %0, align 8
  store i64 %.sroa.0.0.copyload.i, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.04.0 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %.sroa.0.0.i14 = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.c) ; 4 uses
  %i.g = icmp ule i64 %.sroa.04.0, %.sroa.0.0.i14
  tail call void @llvm.assume(i1 %i.g)
  %i.h = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.i = or disjoint i64 %i.h, 1                  ; 2 uses
  %.not.i21 = icmp samesign ult i64 %i.i, %.sroa.0.0.i14
  br i1 %.not.i21, label %.lr.ph, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downRReNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %i.j = phi i64 [ %i.ag, %bb.g ], [ %i.i, %bb.d ] ; 3 uses
  %i.k = phi i64 [ %i.af, %bb.g ], [ %i.h, %bb.d ]
  %.sroa.0.0.i22 = phi i64 [ %.sroa.04.0.i, %bb.g ], [ %.sroa.04.0, %bb.d ]
  %i.l = add nuw nsw i64 %i.k, 2                  ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, %.sroa.0.0.i14
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.j
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  %.val = load ptr, ptr %i.n, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %.val11 = load ptr, ptr %i.o, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %.val.i.i = load ptr, ptr %.val, align 8, !nonnull !17, !noundef !17
  %i.p = getelementptr i8, ptr %.val, i64 8
  %.val1.i.i = load i64, ptr %i.p, align 8, !noundef !17 ; 2 uses
  %.val2.i.i = load ptr, ptr %.val11, align 8, !nonnull !17, !noundef !17
  %i.q = getelementptr i8, ptr %.val11, i64 8
  %.val3.i.i = load i64, ptr %i.q, align 8, !noundef !17 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i, i64 %.val3.i.i)
  %i.r = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val2.i.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !3236 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp eq i32 %i.r, 0
  %i.u = sub i64 %.val1.i.i, %.val3.i.i
  %spec.select.i.i.i.i.i.i = select i1 %i.t, i64 %i.u, i64 %i.s
  %spec.select.i.i.i.i.i.i.lobit = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %i.v = add nuw nsw i64 %spec.select.i.i.i.i.i.i.lobit, %i.j
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.v, %bb.e ], [ %i.j, %.lr.ph ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.0.i22 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.04.0.i ; 2 uses
  %.val12 = load ptr, ptr %i.w, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %.val13 = load ptr, ptr %i.x, align 8, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %.val.i.i15 = load ptr, ptr %.val12, align 8, !nonnull !17, !noundef !17
  %i.y = getelementptr i8, ptr %.val12, i64 8
  %.val1.i.i16 = load i64, ptr %i.y, align 8, !noundef !17 ; 2 uses
  %.val2.i.i17 = load ptr, ptr %.val13, align 8, !nonnull !17, !noundef !17
  %i.z = getelementptr i8, ptr %.val13, i64 8
  %.val3.i.i18 = load i64, ptr %i.z, align 8, !noundef !17 ; 2 uses
  %spec.store.select.i.i.i.i.i.i19 = tail call i64 @llvm.umin.i64(i64 %.val1.i.i16, i64 %.val3.i.i18)
  %i.aa = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i15, ptr nonnull readonly %.val2.i.i17, i64 %spec.store.select.i.i.i.i.i.i19), !alias.scope !3246 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp eq i32 %i.aa, 0
  %i.ad = sub i64 %.val1.i.i16, %.val3.i.i18
  %spec.select.i.i.i.i.i.i20 = select i1 %i.ac, i64 %i.ad, i64 %i.ab
  %i.ae = icmp slt i64 %spec.select.i.i.i.i.i.i20, 0
  br i1 %i.ae, label %bb.g, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downRReNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull %i.w, ptr noundef nonnull %i.x, i64 noundef 1)
  %i.af = shl nuw nsw i64 %.sroa.04.0.i, 1        ; 2 uses
  %i.ag = or disjoint i64 %i.af, 1                ; 2 uses
  %.not.i = icmp samesign ult i64 %i.ag, %.sroa.0.0.i14
  br i1 %.not.i, label %.lr.ph, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downRReNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downRReNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.f, %bb.g, %bb.d
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph26
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortReNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree nonnull readnone captures(none) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = lshr i64 %1, 1
  %i.c = add nuw nsw i64 %i.b, %1                 ; 2 uses
  %.not24 = icmp eq i64 %i.c, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph26

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downReNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit, %bb.a
  ret void

.lr.ph26:                                         ; preds = %bb.a, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downReNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.2.025 = phi i64 [ %i.d, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downReNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit ], [ %i.c, %bb.a ]
  %i.d = add nsw i64 %.sroa.2.025, -1             ; 6 uses
  %.not9 = icmp ult i64 %i.d, %1
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph26
  %i.e = sub nuw nsw i64 %i.d, %1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph26
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.04.0 = phi i64 [ %i.e, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %.sroa.0.0.i18 = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.d) ; 4 uses
  %i.g = icmp ule i64 %.sroa.04.0, %.sroa.0.0.i18
  tail call void @llvm.assume(i1 %i.g)
  %i.h = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.i = or disjoint i64 %i.h, 1                  ; 2 uses
  %.not.i21 = icmp samesign ult i64 %i.i, %.sroa.0.0.i18
  br i1 %.not.i21, label %.lr.ph, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downReNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %i.j = phi i64 [ %i.ag, %bb.g ], [ %i.i, %bb.d ] ; 3 uses
  %i.k = phi i64 [ %i.af, %bb.g ], [ %i.h, %bb.d ]
  %.sroa.0.0.i22 = phi i64 [ %.sroa.04.0.i, %bb.g ], [ %.sroa.04.0, %bb.d ]
  %i.l = add nuw nsw i64 %i.k, 2                  ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, %.sroa.0.0.i18
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.j ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l ; 2 uses
  %.val = load ptr, ptr %i.n, align 8, !nonnull !17, !noundef !17
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %.val11 = load i64, ptr %i.p, align 8, !noundef !17 ; 2 uses
  %.val12 = load ptr, ptr %i.o, align 8, !nonnull !17, !noundef !17
  %i.q = getelementptr i8, ptr %i.o, i64 8
  %.val13 = load i64, ptr %i.q, align 8, !noundef !17 ; 2 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val11, i64 %.val13)
  %i.r = tail call i32 @memcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val12, i64 %spec.store.select.i.i.i.i.i), !alias.scope !3256 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp eq i32 %i.r, 0
  %i.u = sub i64 %.val11, %.val13
  %spec.select.i.i.i.i.i = select i1 %i.t, i64 %i.u, i64 %i.s
  %spec.select.i.i.i.i.i.lobit = lshr i64 %spec.select.i.i.i.i.i, 63
  %i.v = add nuw nsw i64 %spec.select.i.i.i.i.i.lobit, %i.j
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.v, %bb.e ], [ %i.j, %.lr.ph ] ; 3 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.0.i22 ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i ; 3 uses
  %.val14 = load ptr, ptr %i.w, align 8, !nonnull !17, !noundef !17
  %i.y = getelementptr i8, ptr %i.w, i64 8
  %.val15 = load i64, ptr %i.y, align 8, !noundef !17 ; 2 uses
  %.val16 = load ptr, ptr %i.x, align 8, !nonnull !17, !noundef !17
  %i.z = getelementptr i8, ptr %i.x, i64 8
  %.val17 = load i64, ptr %i.z, align 8, !noundef !17 ; 2 uses
  %spec.store.select.i.i.i.i.i19 = tail call i64 @llvm.umin.i64(i64 %.val15, i64 %.val17)
  %i.aa = tail call i32 @memcmp(ptr nonnull readonly %.val14, ptr nonnull readonly %.val16, i64 %spec.store.select.i.i.i.i.i19), !alias.scope !3266 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp eq i32 %i.aa, 0
  %i.ad = sub i64 %.val15, %.val17
  %spec.select.i.i.i.i.i20 = select i1 %i.ac, i64 %i.ad, i64 %i.ab
  %i.ae = icmp slt i64 %spec.select.i.i.i.i.i20, 0
  br i1 %i.ae, label %bb.g, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downReNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull %i.w, ptr noundef nonnull %i.x, i64 noundef 2)
  %i.af = shl nuw nsw i64 %.sroa.04.0.i, 1        ; 2 uses
  %i.ag = or disjoint i64 %i.af, 1                ; 2 uses
  %.not.i = icmp samesign ult i64 %i.ag, %.sroa.0.0.i18
  br i1 %.not.i, label %.lr.ph, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downReNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downReNvYB16_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.f, %bb.g, %bb.d
end_hunk_5
begin_hunk_6_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNvYB17_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter:bb.a
  br i1 %.sroa.0.0.i.i.i, label %bb.f, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3743)
  %.sroa.0.0.copyload.i.i.i42 = load i64, ptr %.sroa.0.0112207, align 8, !alias.scope !3746
  %i.ce = load i64, ptr %i.bx, align 8, !alias.scope !3746
  store i64 %i.ce, ptr %.sroa.0.0112207, align 8, !alias.scope !3746
  store i64 %.sroa.0.0.copyload.i.i.i42, ptr %i.bx, align 8, !alias.scope !3746
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.0112207, i64 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3749)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3752)
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !3754, !noalias !3752, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %i.ch = ptrtoint ptr %i.cg to i64               ; 2 uses
  %i.ci = getelementptr [8 x i8], ptr %.sroa.0.0112207, i64 %.sroa.15.0111208 ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 -8     ; 2 uses
  %.sroa.13.048.i.i43 = getelementptr inbounds nuw i8, ptr %.sroa.0.0112207, i64 16 ; 3 uses
  %i.ck = icmp ult ptr %.sroa.13.048.i.i43, %i.cj
  %.val1.i.pre.i.i44 = load ptr, ptr %.sroa.0.0112207, align 8, !alias.scope !3755, !noalias !3749 ; 4 uses
  br i1 %i.ck, label %.lr.ph.i.i65, label %.preheader.i.i45

.lr.ph.i.i65:                                     ; preds = %bb.n
  %i.cl = getelementptr i8, ptr %.val1.i.pre.i.i44, i64 8 ; 2 uses
  %i.cm = getelementptr i8, ptr %.val1.i.pre.i.i44, i64 16 ; 2 uses
  br label %bb.q

.preheader.i.i45:                                 ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0CsEhZmuQNqkz_11ruff_linter.exit28.i.i, %bb.n
  %.sroa.23.0.lcssa.i.i46 = phi i64 [ 0, %bb.n ], [ %i.dq, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0CsEhZmuQNqkz_11ruff_linter.exit28.i.i ]
  %.sroa.029.0.lcssa.i.i47 = phi ptr [ %i.cf, %bb.n ], [ %i.de, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0CsEhZmuQNqkz_11ruff_linter.exit28.i.i ]
  %.sroa.13.0.lcssa.i.i48 = phi ptr [ %.sroa.13.048.i.i43, %bb.n ], [ %.sroa.13.0.i.i74, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0CsEhZmuQNqkz_11ruff_linter.exit28.i.i ]
  %i.cn = getelementptr i8, ptr %.val1.i.pre.i.i44, i64 8
  %i.co = getelementptr i8, ptr %.val1.i.pre.i.i44, i64 16
  br label %bb.o

bb.o:                                             ; preds = %.cont.i.i60, %.preheader.i.i45
  %.sroa.23.1.i.i49 = phi i64 [ %i.cx, %.cont.i.i60 ], [ %.sroa.23.0.lcssa.i.i46, %.preheader.i.i45 ] ; 3 uses
  %.sroa.13.1.i.i50 = phi ptr [ %.sroa.13.1.sroa.gep.i.i62, %.cont.i.i60 ], [ %.sroa.13.0.lcssa.i.i48, %.preheader.i.i45 ] ; 5 uses
  %.sroa.029.1.i.i51 = phi ptr [ %.sroa.13.1.i.i50, %.cont.i.i60 ], [ %.sroa.029.0.lcssa.i.i47, %.preheader.i.i45 ] ; 2 uses
  %i.cp = icmp eq ptr %.sroa.13.1.i.i50, %i.ci    ; 2 uses
  br i1 %i.cp, label %.cont58.i.i54, label %.else59.i.i52

.else59.i.i52:                                    ; preds = %bb.o
  %.val.i.else.val.i.i53 = load ptr, ptr %.sroa.13.1.i.i50, align 8, !alias.scope !3754, !noalias !3756, !nonnull !17, !align !416, !noundef !17
  br label %.cont58.i.i54

.cont58.i.i54:                                    ; preds = %.else59.i.i52, %bb.o
  %.val.i.i.i55 = phi ptr [ %i.cg, %bb.o ], [ %.val.i.else.val.i.i53, %.else59.i.i52 ] ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %i.cn, align 8, !noalias !3759, !nonnull !17, !noundef !17
  %.val1.i.i.i.i.i.i = load i64, ptr %i.co, align 8, !noalias !3759, !noundef !17
  %i.cq = getelementptr i8, ptr %.val.i.i.i55, i64 8
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.cq, align 8, !noalias !3759, !nonnull !17, !noundef !17
  %i.cr = getelementptr i8, ptr %.val.i.i.i55, i64 16
  %.val3.i.i.i.i.i.i = load i64, ptr %i.cr, align 8, !noalias !3759, !noundef !17
  %i.cs = invoke noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i.i.i.i.i.i, i64 noundef %.val3.i.i.i.i.i.i)
          to label %bb.p unwind label %.loopexit.i.i56, !noalias !3760 ; 2 uses

bb.p:                                             ; preds = %.cont58.i.i54
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.cs, -2
  %i.ct = icmp sgt i8 %i.cs, -1
  %.sroa.0.0.i.i.i.not.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i, %i.ct ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.sroa.23.1.i.i49 ; 3 uses
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !3754, !noalias !3756
  store i64 %i.cv, ptr %.sroa.029.1.i.i51, align 8, !alias.scope !3754, !noalias !3756
  br i1 %i.cp, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECsEhZmuQNqkz_11ruff_linter.exit.i, label %.cont.i.i60

.cont.i.i60:                                      ; preds = %bb.p
  %.else.val.i.i61 = load i64, ptr %.sroa.13.1.i.i50, align 8, !alias.scope !3754, !noalias !3756
  store i64 %.else.val.i.i61, ptr %i.cu, align 8, !alias.scope !3754, !noalias !3756
  %i.cw = zext i1 %.sroa.0.0.i.i.i.not.i.i.i.i to i64
  %i.cx = add i64 %.sroa.23.1.i.i49, %i.cw
  %.sroa.13.1.sroa.gep.i.i62 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i50, i64 8
  br label %bb.o

bb.q:                                             ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0CsEhZmuQNqkz_11ruff_linter.exit28.i.i, %.lr.ph.i.i65
  %.sroa.13.051.i.i66 = phi ptr [ %.sroa.13.048.i.i43, %.lr.ph.i.i65 ], [ %.sroa.13.0.i.i74, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0CsEhZmuQNqkz_11ruff_linter.exit28.i.i ] ; 3 uses
  %.sroa.029.050.i.i67 = phi ptr [ %i.cf, %.lr.ph.i.i65 ], [ %i.de, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0CsEhZmuQNqkz_11ruff_linter.exit28.i.i ] ; 4 uses
  %.sroa.23.049.i.i68 = phi i64 [ 0, %.lr.ph.i.i65 ], [ %i.dq, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0CsEhZmuQNqkz_11ruff_linter.exit28.i.i ] ; 2 uses
  %.val.i11.i.i69 = load ptr, ptr %.sroa.13.051.i.i66, align 8, !alias.scope !3754, !noalias !3761, !nonnull !17, !align !416, !noundef !17 ; 3 uses
  %.val.i.i.i.i13.i.i = load ptr, ptr %i.cl, align 8, !noalias !3764, !nonnull !17, !noundef !17
  %.val1.i.i.i.i14.i.i = load i64, ptr %i.cm, align 8, !noalias !3764, !noundef !17
  %i.cy = getelementptr i8, ptr %.val.i11.i.i69, i64 8
  %.val2.i.i.i.i15.i.i = load ptr, ptr %i.cy, align 8, !noalias !3764, !nonnull !17, !noundef !17
  %i.cz = getelementptr i8, ptr %.val.i11.i.i69, i64 16
  %.val3.i.i.i.i16.i.i = load i64, ptr %i.cz, align 8, !noalias !3764, !noundef !17
  %i.da = invoke noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i13.i.i, i64 noundef %.val1.i.i.i.i14.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i.i.i.i15.i.i, i64 noundef %.val3.i.i.i.i16.i.i)
          to label %bb.r unwind label %.loopexit.split-lp.i.i70, !noalias !3760 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.db = ptrtoint ptr %.val.i11.i.i69 to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.sroa.23.049.i.i68 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !alias.scope !3754, !noalias !3761
  store i64 %i.dd, ptr %.sroa.029.050.i.i67, align 8, !alias.scope !3754, !noalias !3761
  store i64 %i.db, ptr %i.dc, align 8, !alias.scope !3754, !noalias !3761
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.029.050.i.i67, i64 16 ; 4 uses
  %.val.i20.i.i73 = load ptr, ptr %i.de, align 8, !alias.scope !3754, !noalias !3765, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %.val.i.i.i.i22.i.i = load ptr, ptr %i.cl, align 8, !noalias !3768, !nonnull !17, !noundef !17
  %.val1.i.i.i.i23.i.i = load i64, ptr %i.cm, align 8, !noalias !3768, !noundef !17
  %i.df = getelementptr i8, ptr %.val.i20.i.i73, i64 8
  %.val2.i.i.i.i24.i.i = load ptr, ptr %i.df, align 8, !noalias !3768, !nonnull !17, !noundef !17
  %i.dg = getelementptr i8, ptr %.val.i20.i.i73, i64 16
  %.val3.i.i.i.i25.i.i = load i64, ptr %i.dg, align 8, !noalias !3768, !noundef !17
  %i.dh = invoke noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i22.i.i, i64 noundef %.val1.i.i.i.i23.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i.i.i.i24.i.i, i64 noundef %.val3.i.i.i.i25.i.i)
          to label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0CsEhZmuQNqkz_11ruff_linter.exit28.i.i unwind label %.loopexit.split-lp.i.i70, !noalias !3760 ; 2 uses

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0CsEhZmuQNqkz_11ruff_linter.exit28.i.i: ; preds = %bb.r
  %.not.i.i.i.i.i17.i.i = icmp eq i8 %i.da, -2
  %i.di = icmp sgt i8 %i.da, -1
  %.sroa.0.0.i.i.i.not.i.i18.i.i = or i1 %.not.i.i.i.i.i17.i.i, %i.di
  %i.dj = zext i1 %.sroa.0.0.i.i.i.not.i.i18.i.i to i64
  %i.dk = add i64 %.sroa.23.049.i.i68, %i.dj      ; 2 uses
  %.not.i.i.i.i.i26.i.i = icmp eq i8 %i.dh, -2
  %i.dl = icmp sgt i8 %i.dh, -1
  %.sroa.0.0.i.i.i.not.i.i27.i.i = or i1 %.not.i.i.i.i.i26.i.i, %i.dl
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.dk ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !3754, !noalias !3765
  store i64 %i.dn, ptr %.sroa.13.051.i.i66, align 8, !alias.scope !3754, !noalias !3765
  %i.do = load i64, ptr %i.de, align 8, !alias.scope !3754, !noalias !3765
  store i64 %i.do, ptr %i.dm, align 8, !alias.scope !3754, !noalias !3765
  %i.dp = zext i1 %.sroa.0.0.i.i.i.not.i.i27.i.i to i64
  %i.dq = add i64 %i.dk, %i.dp                    ; 2 uses
  %.sroa.13.0.i.i74 = getelementptr inbounds nuw i8, ptr %.sroa.029.050.i.i67, i64 24 ; 3 uses
  %i.dr = icmp ult ptr %.sroa.13.0.i.i74, %i.cj
  br i1 %i.dr, label %bb.q, label %.preheader.i.i45

.loopexit.i.i56:                                  ; preds = %.cont58.i.i54
  %lpad.loopexit.i.i57 = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp.i.i70:                         ; preds = %bb.r, %bb.q
  %.sroa.029.2.ph.i.i71 = phi ptr [ %.sroa.029.050.i.i67, %bb.q ], [ %.sroa.13.051.i.i66, %bb.r ]
  %lpad.loopexit.split-lp.i.i72 = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp.i.i70, %.loopexit.i.i56
  %.sroa.029.2.i.i58 = phi ptr [ %.sroa.029.1.i.i51, %.loopexit.i.i56 ], [ %.sroa.029.2.ph.i.i71, %.loopexit.split-lp.i.i70 ]
  %lpad.phi.i.i59 = phi { ptr, i32 } [ %lpad.loopexit.i.i57, %.loopexit.i.i56 ], [ %lpad.loopexit.split-lp.i.i72, %.loopexit.split-lp.i.i70 ]
  store i64 %i.ch, ptr %.sroa.029.2.i.i58, align 8, !alias.scope !3754, !noalias !3752
  br label %common.resume

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.p
  store i64 %i.ch, ptr %i.cu, align 8, !alias.scope !3754, !noalias !3756
  %i.ds = zext i1 %.sroa.0.0.i.i.i.not.i.i.i.i to i64
  %i.dt = add i64 %.sroa.23.1.i.i49, %i.ds        ; 3 uses
  %.not7.i63 = icmp ult i64 %i.dt, %.sroa.15.0111208
  br i1 %.not7.i63, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECsEhZmuQNqkz_11ruff_linter.exit.i
  tail call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECsEhZmuQNqkz_11ruff_linter.exit.i
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0112207, i64 %i.dt ; 2 uses
  %.sroa.0.0.copyload.i.i8.i64 = load i64, ptr %.sroa.0.0112207, align 8, !alias.scope !3769
  %i.dv = load i64, ptr %i.du, align 8, !alias.scope !3769
  store i64 %i.dv, ptr %.sroa.0.0112207, align 8, !alias.scope !3769
  store i64 %.sroa.0.0.copyload.i.i8.i64, ptr %i.du, align 8, !alias.scope !3769
  %i.dw = add nuw nsw i64 %i.dt, 1                ; 2 uses
  %i.dx = sub nuw i64 %.sroa.15.0111208, %i.dw
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0112207, i64 %i.dw
  br label %.backedge

.backedge:                                        ; preds = %bb.u, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCode12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.023.0.be = phi ptr [ %i.bs, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCode12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit ], [ null, %bb.u ]
  %.sroa.15.0.be = phi i64 [ %i.bw, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCode12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit ], [ %i.dx, %bb.u ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.bu, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCode12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit ], [ %i.dy, %bb.u ] ; 3 uses
  %i.dz = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.dz, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB17_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(8) %2, i32 noundef range(i32 0, 127) %3, ptr noalias noundef nonnull %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 33
  br i1 %i.a, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = icmp eq i32 %3, 0
  br i1 %i.b, label %.lr.ph._crit_edge, label %.lr.ph218

.lr.ph:                                           ; preds = %.backedge
  %i.c = icmp eq i32 %i.d, 0
  br i1 %i.c, label %.lr.ph._crit_edge, label %.lr.ph218

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_networkRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB1f_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa, ptr noalias noundef nonnull %4)
  br label %bb.e

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.0129.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.0128.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %.sroa.0.0129.lcssa, i64 noundef %.sroa.15.0128.lcssa, ptr noalias nonnull poison)
  br label %bb.e

.lr.ph218:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.0126217 = phi i32 [ %i.d, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.0127216 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.15.0128215 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 9 uses
  %.sroa.0.0129214 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 29 uses
  %i.d = add nsw i32 %.sroa.026.0126217, -1       ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3772)
  %i.e = lshr i64 %.sroa.15.0128215, 3            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0129214, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.e, 56
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0129214, i64 %.idx2.i ; 3 uses
  %i.h = icmp samesign ult i64 %.sroa.15.0128215, 64
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph218
  %i.i = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB14_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull readonly align 8 %.sroa.0.0129214, ptr noundef readonly %i.f, ptr noundef readonly %i.g, i64 noundef %i.e)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

bb.c:                                             ; preds = %.lr.ph218
  %.val6.i = load ptr, ptr %.sroa.0.0129214, align 8, !alias.scope !3772, !nonnull !17, !noundef !17
  %.val7.i = load ptr, ptr %i.f, align 8, !alias.scope !3772, !nonnull !17, !noundef !17
  %.val.i.i.i = load i8, ptr %.val6.i, align 1, !range !1400, !noalias !3772, !noundef !17 ; 5 uses
  %.val1.i.i.i = load i8, ptr %.val7.i, align 1, !range !1400, !noalias !3772, !noundef !17 ; 5 uses
  %i.j = icmp ne i8 %.val.i.i.i, 6
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nsw i8 %.val.i.i.i, -4
  %i.l = icmp samesign ugt i8 %.val.i.i.i, 3
  %narrow.i.i.i.i.i = select i1 %i.l, i8 %i.k, i8 2 ; 3 uses
  %i.m = icmp ne i8 %.val1.i.i.i, 6
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nsw i8 %.val1.i.i.i, -4
  %i.o = icmp samesign ugt i8 %.val1.i.i.i, 3
  %narrow1.i.i.i.i.i = select i1 %i.o, i8 %i.n, i8 2 ; 3 uses
  %5 = icmp eq i8 %narrow.i.i.i.i.i, 2            ; 2 uses
  %i.p = icmp eq i8 %narrow1.i.i.i.i.i, 2         ; 2 uses
  %or.cond.i.i.i.i.i = and i1 %5, %i.p            ; 2 uses
  %.0.val.narrow.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i, i8 %.val.i.i.i, i8 %narrow.i.i.i.i.i
  %.0.val1.narrow1.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i, i8 %.val1.i.i.i, i8 %narrow1.i.i.i.i.i
  %6 = icmp samesign ult i8 %.0.val.narrow.i.i.i.i.i, %.0.val1.narrow1.i.i.i.i.i ; 2 uses
  %.val5.i = load ptr, ptr %i.g, align 8, !alias.scope !3772, !nonnull !17, !noundef !17
  %.val1.i.i9.i = load i8, ptr %.val5.i, align 1, !range !1400, !noalias !3772, !noundef !17 ; 5 uses
  %7 = icmp ne i8 %.val1.i.i9.i, 6
  tail call void @llvm.assume(i1 %7)
  %8 = add nsw i8 %.val1.i.i9.i, -4
  %9 = icmp samesign ugt i8 %.val1.i.i9.i, 3
  %narrow1.i.i.i.i11.i = select i1 %9, i8 %8, i8 2 ; 3 uses
  %i.q = icmp eq i8 %narrow1.i.i.i.i11.i, 2       ; 2 uses
  %or.cond.i.i.i.i12.i.a = and i1 %5, %i.q        ; 2 uses
  %.0.val.narrow.i.i.i.i13.i = select i1 %or.cond.i.i.i.i12.i.a, i8 %.val.i.i.i, i8 %narrow.i.i.i.i.i
  %.0.val1.narrow1.i.i.i.i14.i = select i1 %or.cond.i.i.i.i12.i.a, i8 %.val1.i.i9.i, i8 %narrow1.i.i.i.i11.i
  %10 = icmp samesign ult i8 %.0.val.narrow.i.i.i.i13.i, %.0.val1.narrow1.i.i.i.i14.i
  %11 = xor i1 %6, %10
  br i1 %11, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %or.cond.i.i.i.i19.i = and i1 %i.p, %i.q        ; 2 uses
  %.0.val.narrow.i.i.i.i20.i = select i1 %or.cond.i.i.i.i19.i, i8 %.val1.i.i.i, i8 %narrow1.i.i.i.i.i
  %.0.val1.narrow1.i.i.i.i21.i = select i1 %or.cond.i.i.i.i19.i, i8 %.val1.i.i9.i, i8 %narrow1.i.i.i.i11.i
  %12 = icmp samesign ult i8 %.0.val.narrow.i.i.i.i20.i, %.0.val1.narrow1.i.i.i.i21.i
  %13 = xor i1 %6, %12
  %..i.i = select i1 %13, ptr %i.g, ptr %i.f
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i.sink.i = phi ptr [ %i.i, %bb.b ], [ %.sroa.0.0129214, %bb.c ], [ %..i.i, %bb.d ]
  %i.r = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.s = ptrtoint ptr %.sroa.0.0129214 to i64
  %i.t = sub nuw i64 %i.r, %i.s                   ; 4 uses
  %.sroa.0.0.i = lshr exact i64 %i.t, 3
  %i.u = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.0128215
  tail call void @llvm.assume(i1 %i.u)
  %.not = icmp eq ptr %.sroa.023.0127216, null
  br i1 %.not, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit._crit_edge, label %bb.h

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit._crit_edge: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.0.0.copyload.i.i.i.pre = load i64, ptr %.sroa.0.0129214, align 8, !alias.scope !3775
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0.0129214, i64 %i.t
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !3775
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph._crit_edge, %._crit_edge
  ret void

bb.f:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit._crit_edge, %bb.h
  %14 = phi i64 [ %.pre, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit._crit_edge ], [ %i.de, %bb.h ]
  %.sroa.0.0.copyload.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.pre, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit._crit_edge ], [ %.sroa.0.0.copyload.i.i.i.pre156, %bb.h ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3780)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0129214, i64 %i.t
  store i64 %14, ptr %.sroa.0.0129214, align 8, !alias.scope !3775
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.v, align 8, !alias.scope !3775
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0129214, i64 8 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3784)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !3786, !noalias !3784, !nonnull !17, !noundef !17 ; 3 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = getelementptr [8 x i8], ptr %.sroa.0.0129214, i64 %.sroa.15.0128215 ; 3 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -8      ; 3 uses
  %.sroa.13.044.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0129214, i64 16 ; 4 uses
  %i.ab = icmp ult ptr %.sroa.13.044.i.i, %i.aa
  %.val1.i.pre.i.i = load ptr, ptr %.sroa.0.0129214, align 8, !alias.scope !3787, !noalias !3781
  %.val1.i.i.i.i.pre.i = load i8, ptr %.val1.i.pre.i.i, align 1, !range !1400, !noalias !3788 ; 9 uses
  br i1 %i.ab, label %.lr.ph.i.i, label %..preheader.i_crit_edge.i

..preheader.i_crit_edge.i:                        ; preds = %bb.f
  %.pre.i = add nsw i8 %.val1.i.i.i.i.pre.i, -4
  br label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.ac = icmp ne i8 %.val1.i.i.i.i.pre.i, 6
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add nsw i8 %.val1.i.i.i.i.pre.i, -4     ; 3 uses
  %i.ae = icmp samesign ugt i8 %.val1.i.i.i.i.pre.i, 3
  %narrow1.i.i.i.i.i16.i.i = select i1 %i.ae, i8 %i.ad, i8 2
  %narrow1.i.i.i.i.i16.fr.i.i = freeze i8 %narrow1.i.i.i.i.i16.i.i ; 3 uses
  %i.af = icmp eq i8 %narrow1.i.i.i.i.i16.fr.i.i, 2
  br i1 %i.af, label %.lr.ph.split.i.i, label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %.lr.ph.split.us.i.i
  %.sroa.13.047.us.i.i = phi ptr [ %.sroa.13.0.us.i.i, %.lr.ph.split.us.i.i ], [ %.sroa.13.044.i.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.029.046.us.i.i = phi ptr [ %i.ap, %.lr.ph.split.us.i.i ], [ %i.w, %.lr.ph.i.i ] ; 3 uses
  %.sroa.23.045.us.i.i = phi i64 [ %i.ay, %.lr.ph.split.us.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %.val.i11.us.i.i = load ptr, ptr %.sroa.13.047.us.i.i, align 8, !alias.scope !3786, !noalias !3789, !nonnull !17, !noundef !17 ; 2 uses
  %.val.i.i.i13.us.i.i = load i8, ptr %.val.i11.us.i.i, align 1, !range !1400, !noalias !3792, !noundef !17 ; 3 uses
  %i.ag = icmp ne i8 %.val.i.i.i13.us.i.i, 6
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = add nsw i8 %.val.i.i.i13.us.i.i, -4
  %i.ai = icmp samesign ugt i8 %.val.i.i.i13.us.i.i, 3
  %narrow.i.i.i.i.i15.us.i.i = select i1 %i.ai, i8 %i.ah, i8 2
  %i.aj = icmp samesign ult i8 %narrow.i.i.i.i.i15.us.i.i, %narrow1.i.i.i.i.i16.fr.i.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.sroa.23.045.us.i.i ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !3786, !noalias !3789
  store i64 %i.al, ptr %.sroa.029.046.us.i.i, align 8, !alias.scope !3786, !noalias !3789
  %i.am = ptrtoint ptr %.val.i11.us.i.i to i64
  store i64 %i.am, ptr %i.ak, align 8, !alias.scope !3786, !noalias !3789
  %i.an = zext i1 %i.aj to i64
  %i.ao = add i64 %.sroa.23.045.us.i.i, %i.an     ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.029.046.us.i.i, i64 16 ; 4 uses
  %.val.i20.us.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !3786, !noalias !3793, !nonnull !17, !noundef !17
  %.val.i.i.i22.us.i.i = load i8, ptr %.val.i20.us.i.i, align 1, !range !1400, !noalias !3796, !noundef !17 ; 3 uses
  %i.aq = icmp ne i8 %.val.i.i.i22.us.i.i, 6
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = add nsw i8 %.val.i.i.i22.us.i.i, -4
  %i.as = icmp samesign ugt i8 %.val.i.i.i22.us.i.i, 3
  %narrow.i.i.i.i.i24.us.i.i = select i1 %i.as, i8 %i.ar, i8 2
  %i.at = icmp samesign ult i8 %narrow.i.i.i.i.i24.us.i.i, %narrow1.i.i.i.i.i16.fr.i.i
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ao ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !3786, !noalias !3793
  store i64 %i.av, ptr %.sroa.13.047.us.i.i, align 8, !alias.scope !3786, !noalias !3793
  %i.aw = load i64, ptr %i.ap, align 8, !alias.scope !3786, !noalias !3793
  store i64 %i.aw, ptr %i.au, align 8, !alias.scope !3786, !noalias !3793
  %i.ax = zext i1 %i.at to i64
  %i.ay = add i64 %i.ao, %i.ax                    ; 2 uses
  %.sroa.13.0.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.029.046.us.i.i, i64 24 ; 3 uses
  %i.az = icmp ult ptr %.sroa.13.0.us.i.i, %i.aa
  br i1 %i.az, label %.lr.ph.split.us.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.split.us.i.i, %.lr.ph.split.i.i, %..preheader.i_crit_edge.i
  %.pre-phi.i = phi i8 [ %.pre.i, %..preheader.i_crit_edge.i ], [ %i.ad, %.lr.ph.split.i.i ], [ %i.ad, %.lr.ph.split.us.i.i ]
  %.sroa.23.0.lcssa.i.i = phi i64 [ 0, %..preheader.i_crit_edge.i ], [ %i.cn, %.lr.ph.split.i.i ], [ %i.ay, %.lr.ph.split.us.i.i ] ; 2 uses
  %.sroa.029.0.lcssa.i.i = phi ptr [ %i.w, %..preheader.i_crit_edge.i ], [ %i.ce, %.lr.ph.split.i.i ], [ %i.ap, %.lr.ph.split.us.i.i ] ; 2 uses
  %.sroa.13.0.lcssa.i.i = phi ptr [ %.sroa.13.044.i.i, %..preheader.i_crit_edge.i ], [ %.sroa.13.0.i.i, %.lr.ph.split.i.i ], [ %.sroa.13.0.us.i.i, %.lr.ph.split.us.i.i ] ; 2 uses
  %i.ba = icmp ne i8 %.val1.i.i.i.i.pre.i, 6
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp samesign ugt i8 %.val1.i.i.i.i.pre.i, 3
  %narrow1.i.i.i.i.i.i.i = select i1 %i.bb, i8 %.pre-phi.i, i8 2
  %narrow1.i.i.i.i.i.i.fr.i = freeze i8 %narrow1.i.i.i.i.i.i.i ; 2 uses
  %i.bc = icmp eq i8 %narrow1.i.i.i.i.i.i.fr.i, 2
  br i1 %i.bc, label %.preheader.i.split.i, label %.preheader.i.split.us.i

.preheader.i.split.us.i:                          ; preds = %.preheader.i.i, %.cont.i.us.i
  %.sroa.23.1.i.us.i = phi i64 [ %i.bl, %.cont.i.us.i ], [ %.sroa.23.0.lcssa.i.i, %.preheader.i.i ] ; 3 uses
  %.sroa.13.1.i.us.i = phi ptr [ %.sroa.13.1.sroa.gep.i.us.i, %.cont.i.us.i ], [ %.sroa.13.0.lcssa.i.i, %.preheader.i.i ] ; 5 uses
  %.sroa.029.1.i.us.i = phi ptr [ %.sroa.13.1.i.us.i, %.cont.i.us.i ], [ %.sroa.029.0.lcssa.i.i, %.preheader.i.i ]
  %i.bd = icmp eq ptr %.sroa.13.1.i.us.i, %i.z    ; 2 uses
  br i1 %i.bd, label %.cont58.i.us.i, label %.else59.i.us.i

.else59.i.us.i:                                   ; preds = %.preheader.i.split.us.i
  %.val.i.else.val.i.us.i = load ptr, ptr %.sroa.13.1.i.us.i, align 8, !alias.scope !3786, !noalias !3797, !nonnull !17, !noundef !17
  br label %.cont58.i.us.i

.cont58.i.us.i:                                   ; preds = %.else59.i.us.i, %.preheader.i.split.us.i
  %.val.i.i.us.i = phi ptr [ %i.x, %.preheader.i.split.us.i ], [ %.val.i.else.val.i.us.i, %.else59.i.us.i ]
  %.val.i.i.i.i.us.i = load i8, ptr %.val.i.i.us.i, align 1, !range !1400, !noalias !3800, !noundef !17 ; 3 uses
  %i.be = icmp ne i8 %.val.i.i.i.i.us.i, 6
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = add nsw i8 %.val.i.i.i.i.us.i, -4
  %i.bg = icmp samesign ugt i8 %.val.i.i.i.i.us.i, 3
  %narrow.i.i.i.i.i.i.us.i = select i1 %i.bg, i8 %i.bf, i8 2
  %i.bh = icmp samesign ult i8 %narrow.i.i.i.i.i.i.us.i, %narrow1.i.i.i.i.i.i.fr.i ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.sroa.23.1.i.us.i ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !3786, !noalias !3797
  store i64 %i.bj, ptr %.sroa.029.1.i.us.i, align 8, !alias.scope !3786, !noalias !3797
  br i1 %i.bd, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB1x_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.i, label %.cont.i.us.i

.cont.i.us.i:                                     ; preds = %.cont58.i.us.i
  %.else.val.i.us.i = load i64, ptr %.sroa.13.1.i.us.i, align 8, !alias.scope !3786, !noalias !3797
  store i64 %.else.val.i.us.i, ptr %i.bi, align 8, !alias.scope !3786, !noalias !3797
  %i.bk = zext i1 %i.bh to i64
  %i.bl = add i64 %.sroa.23.1.i.us.i, %i.bk
  %.sroa.13.1.sroa.gep.i.us.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.us.i, i64 8
  br label %.preheader.i.split.us.i

.preheader.i.split.i:                             ; preds = %.preheader.i.i, %.cont.i.i
  %.sroa.23.1.i.i = phi i64 [ %i.bu, %.cont.i.i ], [ %.sroa.23.0.lcssa.i.i, %.preheader.i.i ] ; 3 uses
  %.sroa.13.1.i.i = phi ptr [ %.sroa.13.1.sroa.gep.i.i, %.cont.i.i ], [ %.sroa.13.0.lcssa.i.i, %.preheader.i.i ] ; 5 uses
  %.sroa.029.1.i.i = phi ptr [ %.sroa.13.1.i.i, %.cont.i.i ], [ %.sroa.029.0.lcssa.i.i, %.preheader.i.i ]
  %i.bm = icmp eq ptr %.sroa.13.1.i.i, %i.z       ; 2 uses
  br i1 %i.bm, label %.cont58.i.i, label %.else59.i.i

.else59.i.i:                                      ; preds = %.preheader.i.split.i
  %.val.i.else.val.i.i = load ptr, ptr %.sroa.13.1.i.i, align 8, !alias.scope !3786, !noalias !3797, !nonnull !17, !noundef !17
  br label %.cont58.i.i

.cont58.i.i:                                      ; preds = %.else59.i.i, %.preheader.i.split.i
  %.val.i.i.i34 = phi ptr [ %i.x, %.preheader.i.split.i ], [ %.val.i.else.val.i.i, %.else59.i.i ]
  %.val.i.i.i.i.i = load i8, ptr %.val.i.i.i34, align 1, !range !1400, !noalias !3800, !noundef !17 ; 4 uses
  %i.bn = icmp ne i8 %.val.i.i.i.i.i, 6
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = add nsw i8 %.val.i.i.i.i.i, -4
  %i.bp = icmp samesign ugt i8 %.val.i.i.i.i.i, 3
  %narrow.i.i.i.i.i.i.i = select i1 %i.bp, i8 %i.bo, i8 2 ; 2 uses
  %i.bq = icmp eq i8 %narrow.i.i.i.i.i.i.i, 2     ; 2 uses
  %spec.select.i = select i1 %i.bq, i8 %.val.i.i.i.i.i, i8 %narrow.i.i.i.i.i.i.i
  %.0.val1.narrow1.i.i.i.i.i.i.i = select i1 %i.bq, i8 %.val1.i.i.i.i.pre.i, i8 2
  %15 = icmp samesign ult i8 %spec.select.i, %.0.val1.narrow1.i.i.i.i.i.i.i ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.sroa.23.1.i.i ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !3786, !noalias !3797
  store i64 %i.bs, ptr %.sroa.029.1.i.i, align 8, !alias.scope !3786, !noalias !3797
  br i1 %i.bm, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB1x_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.i, label %.cont.i.i

.cont.i.i:                                        ; preds = %.cont58.i.i
  %.else.val.i.i = load i64, ptr %.sroa.13.1.i.i, align 8, !alias.scope !3786, !noalias !3797
  store i64 %.else.val.i.i, ptr %i.br, align 8, !alias.scope !3786, !noalias !3797
  %i.bt = zext i1 %15 to i64
  %i.bu = add i64 %.sroa.23.1.i.i, %i.bt
  %.sroa.13.1.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i, i64 8
  br label %.preheader.i.split.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %.lr.ph.split.i.i
  %.sroa.13.047.i.i = phi ptr [ %.sroa.13.0.i.i, %.lr.ph.split.i.i ], [ %.sroa.13.044.i.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.029.046.i.i = phi ptr [ %i.ce, %.lr.ph.split.i.i ], [ %i.w, %.lr.ph.i.i ] ; 3 uses
  %.sroa.23.045.i.i = phi i64 [ %i.cn, %.lr.ph.split.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %.val.i11.i.i = load ptr, ptr %.sroa.13.047.i.i, align 8, !alias.scope !3786, !noalias !3789, !nonnull !17, !noundef !17 ; 2 uses
  %.val.i.i.i13.i.i = load i8, ptr %.val.i11.i.i, align 1, !range !1400, !noalias !3792, !noundef !17 ; 4 uses
  %i.bv = icmp ne i8 %.val.i.i.i13.i.i, 6
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = add nsw i8 %.val.i.i.i13.i.i, -4
  %i.bx = icmp samesign ugt i8 %.val.i.i.i13.i.i, 3
  %narrow.i.i.i.i.i15.i.i = select i1 %i.bx, i8 %i.bw, i8 2 ; 2 uses
  %i.by = icmp eq i8 %narrow.i.i.i.i.i15.i.i, 2   ; 2 uses
  %spec.select.i.i = select i1 %i.by, i8 %.val.i.i.i13.i.i, i8 %narrow.i.i.i.i.i15.i.i
  %.0.val1.narrow1.i.i.i.i.i19.i.i = select i1 %i.by, i8 %.val1.i.i.i.i.pre.i, i8 2
  %16 = icmp samesign ult i8 %spec.select.i.i, %.0.val1.narrow1.i.i.i.i.i19.i.i
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.sroa.23.045.i.i ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !3786, !noalias !3789
  store i64 %i.ca, ptr %.sroa.029.046.i.i, align 8, !alias.scope !3786, !noalias !3789
  %i.cb = ptrtoint ptr %.val.i11.i.i to i64
  store i64 %i.cb, ptr %i.bz, align 8, !alias.scope !3786, !noalias !3789
  %i.cc = zext i1 %16 to i64
  %i.cd = add i64 %.sroa.23.045.i.i, %i.cc        ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.029.046.i.i, i64 16 ; 4 uses
  %.val.i20.i.i = load ptr, ptr %i.ce, align 8, !alias.scope !3786, !noalias !3793, !nonnull !17, !noundef !17
  %.val.i.i.i22.i.i = load i8, ptr %.val.i20.i.i, align 1, !range !1400, !noalias !3796, !noundef !17 ; 4 uses
  %i.cf = icmp ne i8 %.val.i.i.i22.i.i, 6
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = add nsw i8 %.val.i.i.i22.i.i, -4
  %i.ch = icmp samesign ugt i8 %.val.i.i.i22.i.i, 3
  %narrow.i.i.i.i.i24.i.i = select i1 %i.ch, i8 %i.cg, i8 2 ; 2 uses
  %i.ci = icmp eq i8 %narrow.i.i.i.i.i24.i.i, 2   ; 2 uses
  %.0.val.narrow.i.i.i.i.i27.i.i = select i1 %i.ci, i8 %.val.i.i.i22.i.i, i8 %narrow.i.i.i.i.i24.i.i
  %.0.val1.narrow1.i.i.i.i.i28.i.i = select i1 %i.ci, i8 %.val1.i.i.i.i.pre.i, i8 2
  %17 = icmp samesign ult i8 %.0.val.narrow.i.i.i.i.i27.i.i, %.0.val1.narrow1.i.i.i.i.i28.i.i
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.cd ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !3786, !noalias !3793
  store i64 %i.ck, ptr %.sroa.13.047.i.i, align 8, !alias.scope !3786, !noalias !3793
  %i.cl = load i64, ptr %i.ce, align 8, !alias.scope !3786, !noalias !3793
  store i64 %i.cl, ptr %i.cj, align 8, !alias.scope !3786, !noalias !3793
  %i.cm = zext i1 %17 to i64
  %i.cn = add i64 %i.cd, %i.cm                    ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.029.046.i.i, i64 24 ; 3 uses
  %i.co = icmp ult ptr %.sroa.13.0.i.i, %i.aa
  br i1 %i.co, label %.lr.ph.split.i.i, label %.preheader.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB1x_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %.cont58.i.us.i, %.cont58.i.i
  %.us-phi.i = phi i1 [ %15, %.cont58.i.i ], [ %i.bh, %.cont58.i.us.i ]
  %.us-phi10.i.a = phi ptr [ %i.br, %.cont58.i.i ], [ %i.bi, %.cont58.i.us.i ]
  %.us-phi11.i.a = phi i64 [ %.sroa.23.1.i.i, %.cont58.i.i ], [ %.sroa.23.1.i.us.i, %.cont58.i.us.i ]
  store i64 %i.y, ptr %.us-phi10.i.a, align 8, !alias.scope !3786, !noalias !3797
  %i.cp = zext i1 %.us-phi.i to i64
  %i.cq = add i64 %.us-phi11.i.a, %i.cp           ; 4 uses
  %.not7.i = icmp ult i64 %i.cq, %.sroa.15.0128215
  br i1 %.not7.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB1x_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB1x_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.i
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0129214, i64 %i.cq ; 4 uses
  %.sroa.0.0.copyload.i.i8.i = load i64, ptr %.sroa.0.0129214, align 8, !alias.scope !3801
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !3801
  store i64 %i.cs, ptr %.sroa.0.0129214, align 8, !alias.scope !3801
  store i64 %.sroa.0.0.copyload.i.i8.i, ptr %i.cr, align 8, !alias.scope !3801
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cu = xor i64 %i.cq, -1
  %i.cv = add i64 %.sroa.15.0128215, %i.cu
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB17_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %.sroa.0.0129214, i64 noundef %i.cq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.023.0127216, i32 noundef %i.d, ptr noalias noundef nonnull %4)
  br label %.backedge

bb.h:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit
  %18 = getelementptr inbounds nuw i8, ptr %.sroa.0.0129214, i64 %i.t ; 2 uses
  %.sroa.023.0.val = load ptr, ptr %.sroa.023.0127216, align 8, !nonnull !17, !noundef !17
  %.val = load ptr, ptr %18, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %.val.i.i = load i8, ptr %.sroa.023.0.val, align 1, !range !1400, !noundef !17 ; 4 uses
  %.val1.i.i = load i8, ptr %.val, align 1, !range !1400, !noundef !17 ; 4 uses
  %i.cw = icmp ne i8 %.val.i.i, 6
  tail call void @llvm.assume(i1 %i.cw)
  %i.cx = add nsw i8 %.val.i.i, -4
  %i.cy = icmp samesign ugt i8 %.val.i.i, 3
  %narrow.i.i.i.i = select i1 %i.cy, i8 %i.cx, i8 2 ; 2 uses
  %i.cz = icmp ne i8 %.val1.i.i, 6
  tail call void @llvm.assume(i1 %i.cz)
  %i.da = add nsw i8 %.val1.i.i, -4
  %i.db = icmp samesign ugt i8 %.val1.i.i, 3
  %narrow1.i.i.i.i = select i1 %i.db, i8 %i.da, i8 2 ; 2 uses
  %i.dc = icmp eq i8 %narrow.i.i.i.i, 2
  %i.dd = icmp eq i8 %narrow1.i.i.i.i, 2
  %or.cond.i.i.i.i = and i1 %i.dc, %i.dd          ; 2 uses
  %.0.val.narrow.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %.val.i.i, i8 %narrow.i.i.i.i
  %.0.val1.narrow1.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %.val1.i.i, i8 %narrow1.i.i.i.i
  %19 = icmp samesign ult i8 %.0.val.narrow.i.i.i.i, %.0.val1.narrow1.i.i.i.i
  %i.de = ptrtoint ptr %.val to i64               ; 2 uses
  %.sroa.0.0.copyload.i.i.i.pre156 = load i64, ptr %.sroa.0.0129214, align 8 ; 2 uses
  br i1 %19, label %bb.f, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3804)
  store i64 %i.de, ptr %.sroa.0.0129214, align 8, !alias.scope !3807
  store i64 %.sroa.0.0.copyload.i.i.i.pre156, ptr %18, align 8, !alias.scope !3807
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.0129214, i64 8 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3810)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3813)
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !3815, !noalias !3813, !nonnull !17, !noundef !17 ; 3 uses
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = getelementptr [8 x i8], ptr %.sroa.0.0129214, i64 %.sroa.15.0128215 ; 3 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 -8     ; 3 uses
  %.sroa.13.044.i.i43 = getelementptr inbounds nuw i8, ptr %.sroa.0.0129214, i64 16 ; 4 uses
  %i.dk = icmp ult ptr %.sroa.13.044.i.i43, %i.dj
  %.val1.i.pre.i.i44 = load ptr, ptr %.sroa.0.0129214, align 8, !alias.scope !3816, !noalias !3810
  %.val.i.i.i.i.i.pre.i = load i8, ptr %.val1.i.pre.i.i44, align 1, !range !1400, !noalias !3817 ; 9 uses
  br i1 %i.dk, label %.lr.ph.i.i80, label %..preheader.i_crit_edge.i45

..preheader.i_crit_edge.i45:                      ; preds = %bb.i
  %.pre.i46 = add nsw i8 %.val.i.i.i.i.i.pre.i, -4
  br label %.preheader.i.i47

.lr.ph.i.i80:                                     ; preds = %bb.i
  %i.dl = icmp ne i8 %.val.i.i.i.i.i.pre.i, 6
  tail call void @llvm.assume(i1 %i.dl)
  %i.dm = add nsw i8 %.val.i.i.i.i.i.pre.i, -4    ; 3 uses
  %i.dn = icmp samesign ugt i8 %.val.i.i.i.i.i.pre.i, 3
  %narrow.i.i.i.i.i.i15.i.i = select i1 %i.dn, i8 %i.dm, i8 2
  %narrow.i.i.i.i.i.i15.fr.i.i = freeze i8 %narrow.i.i.i.i.i.i15.i.i ; 3 uses
  %i.do = icmp eq i8 %narrow.i.i.i.i.i.i15.fr.i.i, 2
  br i1 %i.do, label %.lr.ph.split.i.i88, label %.lr.ph.split.us.i.i81

.lr.ph.split.us.i.i81:                            ; preds = %.lr.ph.i.i80, %.lr.ph.split.us.i.i81
  %.sroa.13.047.us.i.i82 = phi ptr [ %.sroa.13.0.us.i.i87, %.lr.ph.split.us.i.i81 ], [ %.sroa.13.044.i.i43, %.lr.ph.i.i80 ] ; 2 uses
  %.sroa.029.046.us.i.i83 = phi ptr [ %i.dy, %.lr.ph.split.us.i.i81 ], [ %i.df, %.lr.ph.i.i80 ] ; 3 uses
  %.sroa.23.045.us.i.i84 = phi i64 [ %i.eh, %.lr.ph.split.us.i.i81 ], [ 0, %.lr.ph.i.i80 ] ; 2 uses
  %.val.i11.us.i.i85 = load ptr, ptr %.sroa.13.047.us.i.i82, align 8, !alias.scope !3815, !noalias !3818, !nonnull !17, !noundef !17 ; 2 uses
  %.val1.i.i.i.i14.us.i.i = load i8, ptr %.val.i11.us.i.i85, align 1, !range !1400, !noalias !3821, !noundef !17 ; 3 uses
  %i.dp = icmp ne i8 %.val1.i.i.i.i14.us.i.i, 6
  tail call void @llvm.assume(i1 %i.dp)
  %i.dq = add nsw i8 %.val1.i.i.i.i14.us.i.i, -4
  %i.dr = icmp samesign ugt i8 %.val1.i.i.i.i14.us.i.i, 3
  %narrow1.i.i.i.i.i.i16.us.i.i = select i1 %i.dr, i8 %i.dq, i8 2
  %i.ds = icmp samesign uge i8 %narrow.i.i.i.i.i.i15.fr.i.i, %narrow1.i.i.i.i.i.i16.us.i.i
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.sroa.23.045.us.i.i84 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !alias.scope !3815, !noalias !3818
  store i64 %i.du, ptr %.sroa.029.046.us.i.i83, align 8, !alias.scope !3815, !noalias !3818
  %i.dv = ptrtoint ptr %.val.i11.us.i.i85 to i64
  store i64 %i.dv, ptr %i.dt, align 8, !alias.scope !3815, !noalias !3818
  %i.dw = zext i1 %i.ds to i64
  %i.dx = add i64 %.sroa.23.045.us.i.i84, %i.dw   ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.029.046.us.i.i83, i64 16 ; 4 uses
  %.val.i20.us.i.i86 = load ptr, ptr %i.dy, align 8, !alias.scope !3815, !noalias !3822, !nonnull !17, !noundef !17
  %.val1.i.i.i.i23.us.i.i = load i8, ptr %.val.i20.us.i.i86, align 1, !range !1400, !noalias !3825, !noundef !17 ; 3 uses
  %i.dz = icmp ne i8 %.val1.i.i.i.i23.us.i.i, 6
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = add nsw i8 %.val1.i.i.i.i23.us.i.i, -4
  %i.eb = icmp samesign ugt i8 %.val1.i.i.i.i23.us.i.i, 3
  %narrow1.i.i.i.i.i.i25.us.i.i = select i1 %i.eb, i8 %i.ea, i8 2
  %i.ec = icmp samesign uge i8 %narrow.i.i.i.i.i.i15.fr.i.i, %narrow1.i.i.i.i.i.i25.us.i.i
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dx ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !alias.scope !3815, !noalias !3822
  store i64 %i.ee, ptr %.sroa.13.047.us.i.i82, align 8, !alias.scope !3815, !noalias !3822
  %i.ef = load i64, ptr %i.dy, align 8, !alias.scope !3815, !noalias !3822
  store i64 %i.ef, ptr %i.ed, align 8, !alias.scope !3815, !noalias !3822
  %i.eg = zext i1 %i.ec to i64
  %i.eh = add i64 %i.dx, %i.eg                    ; 2 uses
  %.sroa.13.0.us.i.i87 = getelementptr inbounds nuw i8, ptr %.sroa.029.046.us.i.i83, i64 24 ; 3 uses
  %i.ei = icmp ult ptr %.sroa.13.0.us.i.i87, %i.dj
  br i1 %i.ei, label %.lr.ph.split.us.i.i81, label %.preheader.i.i47

.preheader.i.i47:                                 ; preds = %.lr.ph.split.us.i.i81, %.lr.ph.split.i.i88, %..preheader.i_crit_edge.i45
  %.pre-phi.i48 = phi i8 [ %.pre.i46, %..preheader.i_crit_edge.i45 ], [ %i.dm, %.lr.ph.split.i.i88 ], [ %i.dm, %.lr.ph.split.us.i.i81 ]
  %.sroa.23.0.lcssa.i.i49 = phi i64 [ 0, %..preheader.i_crit_edge.i45 ], [ %i.fw, %.lr.ph.split.i.i88 ], [ %i.eh, %.lr.ph.split.us.i.i81 ] ; 2 uses
  %.sroa.029.0.lcssa.i.i50 = phi ptr [ %i.df, %..preheader.i_crit_edge.i45 ], [ %i.fn, %.lr.ph.split.i.i88 ], [ %i.dy, %.lr.ph.split.us.i.i81 ] ; 2 uses
  %.sroa.13.0.lcssa.i.i51 = phi ptr [ %.sroa.13.044.i.i43, %..preheader.i_crit_edge.i45 ], [ %.sroa.13.0.i.i95, %.lr.ph.split.i.i88 ], [ %.sroa.13.0.us.i.i87, %.lr.ph.split.us.i.i81 ] ; 2 uses
  %i.ej = icmp ne i8 %.val.i.i.i.i.i.pre.i, 6
  tail call void @llvm.assume(i1 %i.ej)
  %i.ek = icmp samesign ugt i8 %.val.i.i.i.i.i.pre.i, 3
  %narrow.i.i.i.i.i.i.i.i = select i1 %i.ek, i8 %.pre-phi.i48, i8 2
  %narrow.i.i.i.i.i.i.i.fr.i = freeze i8 %narrow.i.i.i.i.i.i.i.i ; 2 uses
  %i.el = icmp eq i8 %narrow.i.i.i.i.i.i.i.fr.i, 2
  br i1 %i.el, label %.preheader.i.split.i68, label %.preheader.i.split.us.i52

.preheader.i.split.us.i52:                        ; preds = %.preheader.i.i47, %.cont.i.us.i60
  %.sroa.23.1.i.us.i53 = phi i64 [ %i.eu, %.cont.i.us.i60 ], [ %.sroa.23.0.lcssa.i.i49, %.preheader.i.i47 ] ; 3 uses
  %.sroa.13.1.i.us.i54 = phi ptr [ %.sroa.13.1.sroa.gep.i.us.i62, %.cont.i.us.i60 ], [ %.sroa.13.0.lcssa.i.i51, %.preheader.i.i47 ] ; 5 uses
  %.sroa.029.1.i.us.i55 = phi ptr [ %.sroa.13.1.i.us.i54, %.cont.i.us.i60 ], [ %.sroa.029.0.lcssa.i.i50, %.preheader.i.i47 ]
  %i.em = icmp eq ptr %.sroa.13.1.i.us.i54, %i.di ; 2 uses
  br i1 %i.em, label %.cont58.i.us.i58, label %.else59.i.us.i56

.else59.i.us.i56:                                 ; preds = %.preheader.i.split.us.i52
  %.val.i.else.val.i.us.i57 = load ptr, ptr %.sroa.13.1.i.us.i54, align 8, !alias.scope !3815, !noalias !3826, !nonnull !17, !noundef !17
  br label %.cont58.i.us.i58

.cont58.i.us.i58:                                 ; preds = %.else59.i.us.i56, %.preheader.i.split.us.i52
  %.val.i.i.us.i59 = phi ptr [ %i.dg, %.preheader.i.split.us.i52 ], [ %.val.i.else.val.i.us.i57, %.else59.i.us.i56 ]
  %.val1.i.i.i.i.i.us.i = load i8, ptr %.val.i.i.us.i59, align 1, !range !1400, !noalias !3829, !noundef !17 ; 3 uses
  %i.en = icmp ne i8 %.val1.i.i.i.i.i.us.i, 6
  tail call void @llvm.assume(i1 %i.en)
  %i.eo = add nsw i8 %.val1.i.i.i.i.i.us.i, -4
  %i.ep = icmp samesign ugt i8 %.val1.i.i.i.i.i.us.i, 3
  %narrow1.i.i.i.i.i.i.i.us.i = select i1 %i.ep, i8 %i.eo, i8 2
  %i.eq = icmp samesign uge i8 %narrow.i.i.i.i.i.i.i.fr.i, %narrow1.i.i.i.i.i.i.i.us.i ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.sroa.23.1.i.us.i53 ; 3 uses
  %i.es = load i64, ptr %i.er, align 8, !alias.scope !3815, !noalias !3826
  store i64 %i.es, ptr %.sroa.029.1.i.us.i55, align 8, !alias.scope !3815, !noalias !3826
  br i1 %i.em, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECsEhZmuQNqkz_11ruff_linter.exit.i, label %.cont.i.us.i60

.cont.i.us.i60:                                   ; preds = %.cont58.i.us.i58
  %.else.val.i.us.i61 = load i64, ptr %.sroa.13.1.i.us.i54, align 8, !alias.scope !3815, !noalias !3826
  store i64 %.else.val.i.us.i61, ptr %i.er, align 8, !alias.scope !3815, !noalias !3826
  %i.et = zext i1 %i.eq to i64
  %i.eu = add i64 %.sroa.23.1.i.us.i53, %i.et
  %.sroa.13.1.sroa.gep.i.us.i62 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.us.i54, i64 8
  br label %.preheader.i.split.us.i52

.preheader.i.split.i68:                           ; preds = %.preheader.i.i47, %.cont.i.i77
  %.sroa.23.1.i.i69 = phi i64 [ %i.fd, %.cont.i.i77 ], [ %.sroa.23.0.lcssa.i.i49, %.preheader.i.i47 ] ; 3 uses
  %.sroa.13.1.i.i70 = phi ptr [ %.sroa.13.1.sroa.gep.i.i79, %.cont.i.i77 ], [ %.sroa.13.0.lcssa.i.i51, %.preheader.i.i47 ] ; 5 uses
  %.sroa.029.1.i.i71 = phi ptr [ %.sroa.13.1.i.i70, %.cont.i.i77 ], [ %.sroa.029.0.lcssa.i.i50, %.preheader.i.i47 ]
  %i.ev = icmp eq ptr %.sroa.13.1.i.i70, %i.di    ; 2 uses
  br i1 %i.ev, label %.cont58.i.i74, label %.else59.i.i72

.else59.i.i72:                                    ; preds = %.preheader.i.split.i68
  %.val.i.else.val.i.i73 = load ptr, ptr %.sroa.13.1.i.i70, align 8, !alias.scope !3815, !noalias !3826, !nonnull !17, !noundef !17
  br label %.cont58.i.i74

.cont58.i.i74:                                    ; preds = %.else59.i.i72, %.preheader.i.split.i68
  %.val.i.i.i75 = phi ptr [ %i.dg, %.preheader.i.split.i68 ], [ %.val.i.else.val.i.i73, %.else59.i.i72 ]
  %.val1.i.i.i.i.i.i = load i8, ptr %.val.i.i.i75, align 1, !range !1400, !noalias !3829, !noundef !17 ; 4 uses
  %i.ew = icmp ne i8 %.val1.i.i.i.i.i.i, 6
  tail call void @llvm.assume(i1 %i.ew)
  %i.ex = add nsw i8 %.val1.i.i.i.i.i.i, -4
  %i.ey = icmp samesign ugt i8 %.val1.i.i.i.i.i.i, 3
  %narrow1.i.i.i.i.i.i.i.i = select i1 %i.ey, i8 %i.ex, i8 2 ; 2 uses
  %i.ez = icmp eq i8 %narrow1.i.i.i.i.i.i.i.i, 2  ; 2 uses
  %spec.select.i76 = select i1 %i.ez, i8 %.val.i.i.i.i.i.pre.i, i8 2
  %.0.val1.narrow1.i.i.i.i.i.i.i.i = select i1 %i.ez, i8 %.val1.i.i.i.i.i.i, i8 %narrow1.i.i.i.i.i.i.i.i
  %20 = icmp samesign uge i8 %spec.select.i76, %.0.val1.narrow1.i.i.i.i.i.i.i.i ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.sroa.23.1.i.i69 ; 3 uses
  %i.fb = load i64, ptr %i.fa, align 8, !alias.scope !3815, !noalias !3826
  store i64 %i.fb, ptr %.sroa.029.1.i.i71, align 8, !alias.scope !3815, !noalias !3826
  br i1 %i.ev, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECsEhZmuQNqkz_11ruff_linter.exit.i, label %.cont.i.i77

.cont.i.i77:                                      ; preds = %.cont58.i.i74
  %.else.val.i.i78 = load i64, ptr %.sroa.13.1.i.i70, align 8, !alias.scope !3815, !noalias !3826
  store i64 %.else.val.i.i78, ptr %i.fa, align 8, !alias.scope !3815, !noalias !3826
  %i.fc = zext i1 %20 to i64
  %i.fd = add i64 %.sroa.23.1.i.i69, %i.fc
  %.sroa.13.1.sroa.gep.i.i79 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i70, i64 8
  br label %.preheader.i.split.i68

.lr.ph.split.i.i88:                               ; preds = %.lr.ph.i.i80, %.lr.ph.split.i.i88
  %.sroa.13.047.i.i89 = phi ptr [ %.sroa.13.0.i.i95, %.lr.ph.split.i.i88 ], [ %.sroa.13.044.i.i43, %.lr.ph.i.i80 ] ; 2 uses
  %.sroa.029.046.i.i90 = phi ptr [ %i.fn, %.lr.ph.split.i.i88 ], [ %i.df, %.lr.ph.i.i80 ] ; 3 uses
  %.sroa.23.045.i.i91 = phi i64 [ %i.fw, %.lr.ph.split.i.i88 ], [ 0, %.lr.ph.i.i80 ] ; 2 uses
  %.val.i11.i.i92 = load ptr, ptr %.sroa.13.047.i.i89, align 8, !alias.scope !3815, !noalias !3818, !nonnull !17, !noundef !17 ; 2 uses
  %.val1.i.i.i.i14.i.i = load i8, ptr %.val.i11.i.i92, align 1, !range !1400, !noalias !3821, !noundef !17 ; 4 uses
  %i.fe = icmp ne i8 %.val1.i.i.i.i14.i.i, 6
  tail call void @llvm.assume(i1 %i.fe)
  %i.ff = add nsw i8 %.val1.i.i.i.i14.i.i, -4
  %i.fg = icmp samesign ugt i8 %.val1.i.i.i.i14.i.i, 3
  %narrow1.i.i.i.i.i.i16.i.i = select i1 %i.fg, i8 %i.ff, i8 2 ; 2 uses
  %i.fh = icmp eq i8 %narrow1.i.i.i.i.i.i16.i.i, 2 ; 2 uses
  %spec.select.i.i93 = select i1 %i.fh, i8 %.val.i.i.i.i.i.pre.i, i8 2
  %.0.val1.narrow1.i.i.i.i.i.i19.i.i = select i1 %i.fh, i8 %.val1.i.i.i.i14.i.i, i8 %narrow1.i.i.i.i.i.i16.i.i
  %21 = icmp samesign uge i8 %spec.select.i.i93, %.0.val1.narrow1.i.i.i.i.i.i19.i.i
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.sroa.23.045.i.i91 ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8, !alias.scope !3815, !noalias !3818
  store i64 %i.fj, ptr %.sroa.029.046.i.i90, align 8, !alias.scope !3815, !noalias !3818
  %i.fk = ptrtoint ptr %.val.i11.i.i92 to i64
  store i64 %i.fk, ptr %i.fi, align 8, !alias.scope !3815, !noalias !3818
  %i.fl = zext i1 %21 to i64
  %i.fm = add i64 %.sroa.23.045.i.i91, %i.fl      ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.029.046.i.i90, i64 16 ; 4 uses
  %.val.i20.i.i94 = load ptr, ptr %i.fn, align 8, !alias.scope !3815, !noalias !3822, !nonnull !17, !noundef !17
  %.val1.i.i.i.i23.i.i = load i8, ptr %.val.i20.i.i94, align 1, !range !1400, !noalias !3825, !noundef !17 ; 4 uses
  %i.fo = icmp ne i8 %.val1.i.i.i.i23.i.i, 6
  tail call void @llvm.assume(i1 %i.fo)
  %i.fp = add nsw i8 %.val1.i.i.i.i23.i.i, -4
  %i.fq = icmp samesign ugt i8 %.val1.i.i.i.i23.i.i, 3
  %narrow1.i.i.i.i.i.i25.i.i = select i1 %i.fq, i8 %i.fp, i8 2 ; 2 uses
  %i.fr = icmp eq i8 %narrow1.i.i.i.i.i.i25.i.i, 2 ; 2 uses
  %.0.val.narrow.i.i.i.i.i.i27.i.i = select i1 %i.fr, i8 %.val.i.i.i.i.i.pre.i, i8 2
  %.0.val1.narrow1.i.i.i.i.i.i28.i.i = select i1 %i.fr, i8 %.val1.i.i.i.i23.i.i, i8 %narrow1.i.i.i.i.i.i25.i.i
  %22 = icmp samesign uge i8 %.0.val.narrow.i.i.i.i.i.i27.i.i, %.0.val1.narrow1.i.i.i.i.i.i28.i.i
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.fm ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8, !alias.scope !3815, !noalias !3822
  store i64 %i.ft, ptr %.sroa.13.047.i.i89, align 8, !alias.scope !3815, !noalias !3822
  %i.fu = load i64, ptr %i.fn, align 8, !alias.scope !3815, !noalias !3822
  store i64 %i.fu, ptr %i.fs, align 8, !alias.scope !3815, !noalias !3822
  %i.fv = zext i1 %22 to i64
  %i.fw = add i64 %i.fm, %i.fv                    ; 2 uses
  %.sroa.13.0.i.i95 = getelementptr inbounds nuw i8, ptr %.sroa.029.046.i.i90, i64 24 ; 3 uses
  %i.fx = icmp ult ptr %.sroa.13.0.i.i95, %i.dj
  br i1 %i.fx, label %.lr.ph.split.i.i88, label %.preheader.i.i47

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %.cont58.i.us.i58, %.cont58.i.i74
  %.us-phi.i63 = phi i1 [ %20, %.cont58.i.i74 ], [ %i.eq, %.cont58.i.us.i58 ]
  %.us-phi10.i64 = phi ptr [ %i.fa, %.cont58.i.i74 ], [ %i.er, %.cont58.i.us.i58 ]
  %.us-phi11.i65 = phi i64 [ %.sroa.23.1.i.i69, %.cont58.i.i74 ], [ %.sroa.23.1.i.us.i53, %.cont58.i.us.i58 ]
  store i64 %i.dh, ptr %.us-phi10.i64, align 8, !alias.scope !3815, !noalias !3826
  %i.fy = zext i1 %.us-phi.i63 to i64
  %i.fz = add i64 %.us-phi11.i65, %i.fy           ; 3 uses
  %.not7.i66 = icmp ult i64 %i.fz, %.sroa.15.0128215
  br i1 %.not7.i66, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECsEhZmuQNqkz_11ruff_linter.exit.i
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECsEhZmuQNqkz_11ruff_linter.exit.i
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0129214, i64 %i.fz ; 2 uses
  %.sroa.0.0.copyload.i.i8.i67 = load i64, ptr %.sroa.0.0129214, align 8, !alias.scope !3830
  %i.gb = load i64, ptr %i.ga, align 8, !alias.scope !3830
  store i64 %i.gb, ptr %.sroa.0.0129214, align 8, !alias.scope !3830
  store i64 %.sroa.0.0.copyload.i.i8.i67, ptr %i.ga, align 8, !alias.scope !3830
  %i.gc = add nuw nsw i64 %i.fz, 1                ; 2 uses
  %i.gd = sub nuw i64 %.sroa.15.0128215, %i.gc
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0129214, i64 %i.gc
  br label %.backedge

.backedge:                                        ; preds = %bb.k, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.023.0.be = phi ptr [ %i.cr, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit ], [ null, %bb.k ]
  %.sroa.15.0.be = phi i64 [ %i.cv, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit ], [ %i.gd, %bb.k ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.ct, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonType12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit ], [ %i.ge, %bb.k ] ; 3 uses
  %i.gf = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.gf, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortRReNvYB17_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(8) %2, i32 noundef range(i32 0, 127) %3, ptr noalias noundef nonnull %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 33
  br i1 %i.a, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = icmp eq i32 %3, 0
  br i1 %i.b, label %.lr.ph._crit_edge, label %.lr.ph129

.lr.ph:                                           ; preds = %.backedge
  %i.c = icmp eq i32 %i.d, 0
  br i1 %i.c, label %.lr.ph._crit_edge, label %.lr.ph129

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_networkRReNvYB1f_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa, ptr noalias noundef nonnull %4)
  br label %bb.e

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.079.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.078.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortRReNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 %.sroa.0.079.lcssa, i64 noundef %.sroa.15.078.lcssa, ptr noalias nonnull poison)
  br label %bb.e

.lr.ph129:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.076128 = phi i32 [ %i.d, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.077127 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.15.078126 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 9 uses
  %.sroa.0.079125 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 29 uses
  %i.d = add nsw i32 %.sroa.026.076128, -1        ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3833)
  %i.e = lshr i64 %.sroa.15.078126, 3             ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.079125, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.e, 56
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.079125, i64 %.idx2.i ; 3 uses
  %i.h = icmp samesign ult i64 %.sroa.15.078126, 64
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph129
  %i.i = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recRReNvYB14_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull readonly align 8 %.sroa.0.079125, ptr noundef readonly %i.f, ptr noundef readonly %i.g, i64 noundef %i.e)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotRReNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

bb.c:                                             ; preds = %.lr.ph129
  %.val6.i = load ptr, ptr %.sroa.0.079125, align 8, !alias.scope !3833, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %.val7.i = load ptr, ptr %i.f, align 8, !alias.scope !3833, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %.val.i.i.i = load ptr, ptr %.val6.i, align 8, !noalias !3833, !nonnull !17, !noundef !17 ; 2 uses
  %i.j = getelementptr i8, ptr %.val6.i, i64 8
  %.val1.i.i.i = load i64, ptr %i.j, align 8, !noalias !3833, !noundef !17 ; 4 uses
  %.val2.i.i.i = load ptr, ptr %.val7.i, align 8, !noalias !3833, !nonnull !17, !noundef !17 ; 2 uses
  %i.k = getelementptr i8, ptr %.val7.i, i64 8
  %.val3.i.i.i = load i64, ptr %i.k, align 8, !noalias !3833, !noundef !17 ; 4 uses
  %spec.store.select.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i, i64 %.val3.i.i.i)
  %i.l = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i.i, ptr nonnull readonly %.val2.i.i.i, i64 %spec.store.select.i.i.i.i.i.i.i), !alias.scope !3836, !noalias !3833 ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = icmp eq i32 %i.l, 0
  %i.o = sub i64 %.val1.i.i.i, %.val3.i.i.i
  %spec.select.i.i.i.i.i.i.i = select i1 %i.n, i64 %i.o, i64 %i.m ; 2 uses
  %.val5.i = load ptr, ptr %i.g, align 8, !alias.scope !3833, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %.val2.i.i10.i = load ptr, ptr %.val5.i, align 8, !noalias !3833, !nonnull !17, !noundef !17 ; 2 uses
  %i.p = getelementptr i8, ptr %.val5.i, i64 8
  %.val3.i.i11.i = load i64, ptr %i.p, align 8, !noalias !3833, !noundef !17 ; 4 uses
  %spec.store.select.i.i.i.i.i.i12.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i, i64 %.val3.i.i11.i)
  %i.q = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i.i, ptr nonnull readonly %.val2.i.i10.i, i64 %spec.store.select.i.i.i.i.i.i12.i), !alias.scope !3846, !noalias !3833 ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = icmp eq i32 %i.q, 0
  %i.t = sub i64 %.val1.i.i.i, %.val3.i.i11.i
  %spec.select.i.i.i.i.i.i13.i = select i1 %i.s, i64 %i.t, i64 %i.r
  %i.u = xor i64 %spec.select.i.i.i.i.i.i13.i, %spec.select.i.i.i.i.i.i.i
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotRReNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.store.select.i.i.i.i.i.i18.i = tail call i64 @llvm.umin.i64(i64 %.val3.i.i.i, i64 %.val3.i.i11.i)
  %i.w = tail call i32 @memcmp(ptr nonnull readonly %.val2.i.i.i, ptr nonnull readonly %.val2.i.i10.i, i64 %spec.store.select.i.i.i.i.i.i18.i), !alias.scope !3856, !noalias !3833 ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = icmp eq i32 %i.w, 0
  %i.z = sub i64 %.val3.i.i.i, %.val3.i.i11.i
  %spec.select.i.i.i.i.i.i19.i = select i1 %i.y, i64 %i.z, i64 %i.x
  %i.aa = xor i64 %spec.select.i.i.i.i.i.i19.i, %spec.select.i.i.i.i.i.i.i
  %i.ab = icmp slt i64 %i.aa, 0
  %..i.i = select i1 %i.ab, ptr %i.g, ptr %i.f
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotRReNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotRReNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i.sink.i = phi ptr [ %i.i, %bb.b ], [ %.sroa.0.079125, %bb.c ], [ %..i.i, %bb.d ]
  %i.ac = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.ad = ptrtoint ptr %.sroa.0.079125 to i64
  %i.ae = sub nuw i64 %i.ac, %i.ad                ; 4 uses
  %.sroa.0.0.i = lshr exact i64 %i.ae, 3
  %i.af = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.078126
  tail call void @llvm.assume(i1 %i.af)
  %.not = icmp eq ptr %.sroa.023.077127, null
  br i1 %.not, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotRReNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit._crit_edge, label %bb.h

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotRReNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit._crit_edge: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotRReNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.0.0.copyload.i.i.i.pre = load i64, ptr %.sroa.0.079125, align 8, !alias.scope !3866
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0.079125, i64 %i.ae
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !3866
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph._crit_edge, %._crit_edge
  ret void

bb.f:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotRReNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit._crit_edge, %bb.h
  %i.ag = phi i64 [ %.pre, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotRReNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit._crit_edge ], [ %i.cg, %bb.h ]
  %.sroa.0.0.copyload.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.pre, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotRReNvYB15_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit._crit_edge ], [ %.sroa.0.0.copyload.i.i.i.pre93, %bb.h ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3871)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.079125, i64 %i.ae
  store i64 %i.ag, ptr %.sroa.0.079125, align 8, !alias.scope !3866
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.ah, align 8, !alias.scope !3866
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.079125, i64 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3875)
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !3877, !noalias !3875, !nonnull !17, !align !416, !noundef !17 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = getelementptr [8 x i8], ptr %.sroa.0.079125, i64 %.sroa.15.078126 ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 -8     ; 2 uses
  %.sroa.13.044.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.079125, i64 16 ; 3 uses
  %i.an = icmp ult ptr %.sroa.13.044.i.i, %i.am
  %.val1.i.pre.i.i = load ptr, ptr %.sroa.0.079125, align 8, !alias.scope !3878, !noalias !3872 ; 2 uses
  %.val2.i.i.i.i.pre.i = load ptr, ptr %.val1.i.pre.i.i, align 8, !noalias !3879 ; 3 uses
  %i.ao = getelementptr i8, ptr %.val1.i.pre.i.i, i64 8
  %.val3.i.i.i16.i.i = load i64, ptr %i.ao, align 8, !noalias !3879 ; 6 uses
  br i1 %i.an, label %.lr.ph.i.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.23.1.i.i.ph = phi i64 [ 0, %bb.f ], [ %i.bq, %.lr.ph.i.i ]
  %.sroa.13.1.i.i.ph = phi ptr [ %.sroa.13.044.i.i, %bb.f ], [ %.sroa.13.0.i.i, %.lr.ph.i.i ]
  %.sroa.029.1.i.i.ph = phi ptr [ %i.ai, %bb.f ], [ %i.bh, %.lr.ph.i.i ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.cont.i.i
  %.sroa.23.1.i.i = phi i64 [ %i.ax, %.cont.i.i ], [ %.sroa.23.1.i.i.ph, %.preheader.i.i.preheader ] ; 3 uses
  %.sroa.13.1.i.i = phi ptr [ %.sroa.13.1.sroa.gep.i.i, %.cont.i.i ], [ %.sroa.13.1.i.i.ph, %.preheader.i.i.preheader ] ; 5 uses
  %.sroa.029.1.i.i = phi ptr [ %.sroa.13.1.i.i, %.cont.i.i ], [ %.sroa.029.1.i.i.ph, %.preheader.i.i.preheader ]
  %i.ap = icmp eq ptr %.sroa.13.1.i.i, %i.al      ; 2 uses
  br i1 %i.ap, label %.cont53.i.i, label %.else54.i.i

.else54.i.i:                                      ; preds = %.preheader.i.i
  %.val.i.else.val.i.i = load ptr, ptr %.sroa.13.1.i.i, align 8, !alias.scope !3877, !noalias !3880, !nonnull !17, !align !416, !noundef !17
  br label %.cont53.i.i

.cont53.i.i:                                      ; preds = %.else54.i.i, %.preheader.i.i
  %.val.i.i.i34 = phi ptr [ %i.aj, %.preheader.i.i ], [ %.val.i.else.val.i.i, %.else54.i.i ] ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %.val.i.i.i34, align 8, !noalias !3883, !nonnull !17, !noundef !17
  %i.aq = getelementptr i8, ptr %.val.i.i.i34, i64 8
  %.val1.i.i.i.i.i = load i64, ptr %i.aq, align 8, !noalias !3883, !noundef !17 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i.i.i, i64 %.val3.i.i.i16.i.i)
  %i.ar = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i.i.i.i, ptr nonnull readonly %.val2.i.i.i.i.pre.i, i64 %spec.store.select.i.i.i.i.i.i.i.i.i), !alias.scope !3884, !noalias !3883 ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp eq i32 %i.ar, 0
  %i.au = sub i64 %.val1.i.i.i.i.i, %.val3.i.i.i16.i.i
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %i.at, i64 %i.au, i64 %i.as ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.sroa.23.1.i.i ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !3877, !noalias !3880
  store i64 %i.aw, ptr %.sroa.029.1.i.i, align 8, !alias.scope !3877, !noalias !3880
  br i1 %i.ap, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicRReNvYB1x_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit.i, label %.cont.i.i

.cont.i.i:                                        ; preds = %.cont53.i.i
  %.else.val.i.i = load i64, ptr %.sroa.13.1.i.i, align 8, !alias.scope !3877, !noalias !3880
  store i64 %.else.val.i.i, ptr %i.av, align 8, !alias.scope !3877, !noalias !3880
  %spec.select.i.i.i.i.i.i.lobit.i.i.i = lshr i64 %spec.select.i.i.i.i.i.i.i.i.i, 63
  %i.ax = add i64 %spec.select.i.i.i.i.i.i.lobit.i.i.i, %.sroa.23.1.i.i
  %.sroa.13.1.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i, i64 8
  br label %.preheader.i.i

end_hunk_6
begin_hunk_7_@_RNvMNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_linesNtB2_12LogicalLines11from_tokens:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

.loopexit24:                                      ; preds = %bb.aj, %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp:                               ; preds = %bb.af
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp, %.loopexit24
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit24 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules13logical_lines19LogicalLinesBuilderEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.d) #57
          to label %common.resume unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvMNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2_12SortingStyle7compare(i1 noundef zeroext %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  br i1 %0, label %bb.b, label %_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB4_12IsortSortKeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.sink.split

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %2, 1
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef zeroext i1 @_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib3str18is_cased_uppercase(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !4957
  br i1 %i.b, label %_RNvXs3_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB5_12IsortSortKeyINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from.exit, label %.thread.i.i

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4960)
  %i.c = icmp samesign eq i64 %2, 0
  br i1 %i.c, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternNvMNtNtB9_4char7methodsc12is_uppercaseENtB5_7Pattern12is_prefix_ofCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.d, %bb.c
  %i.d = load i8, ptr %1, align 1, !alias.scope !4963, !noalias !4967, !noundef !17 ; 5 uses
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.e, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i.i: ; preds = %.thread.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.g = and i8 %i.d, 31
  %i.h = zext nneg i8 %i.g to i32                 ; 3 uses
  %i.i = icmp samesign ne i64 %2, 1
  tail call void @llvm.assume(i1 %i.i)
  %i.j = load i8, ptr %i.f, align 1, !alias.scope !4963, !noalias !4967, !noundef !17
  %i.k = shl nuw nsw i32 %i.h, 6
  %i.l = and i8 %i.j, 63
  %i.m = zext nneg i8 %i.l to i32                 ; 2 uses
  %i.n = or disjoint i32 %i.k, %i.m
  %i.o = icmp samesign ugt i8 %i.d, -33
  br i1 %i.o, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i.i.i, label %bb.f

bb.e:                                             ; preds = %.thread.i.i
  %i.p = zext nneg i8 %i.d to i32
  br label %bb.f

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.r = icmp samesign ne i64 %2, 2
  tail call void @llvm.assume(i1 %i.r)
  %i.s = load i8, ptr %i.q, align 1, !alias.scope !4963, !noalias !4967, !noundef !17
  %i.t = shl nuw nsw i32 %i.m, 6
  %i.u = and i8 %i.s, 63
  %i.v = zext nneg i8 %i.u to i32
  %i.w = or disjoint i32 %i.t, %i.v               ; 2 uses
  %i.x = shl nuw nsw i32 %i.h, 12
  %i.y = or disjoint i32 %i.w, %i.x
  %i.z = icmp samesign ugt i8 %i.d, -17
  br i1 %i.z, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.i.i.i, label %bb.f

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ab = icmp samesign ne i64 %2, 3
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = load i8, ptr %i.aa, align 1, !alias.scope !4963, !noalias !4967, !noundef !17
  %i.ad = shl nuw nsw i32 %i.h, 18
  %i.ae = and i32 %i.ad, 1835008
  %i.af = shl nuw nsw i32 %i.w, 6
  %i.ag = and i8 %i.ac, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah
  %i.aj = or disjoint i32 %i.ai, %i.ae
  br label %bb.f

bb.f:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i.i.i, %bb.e, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i.i.i = phi i32 [ %i.y, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i.i.i ], [ %i.aj, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.i.i.i ], [ %i.n, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i.i ], [ %i.p, %bb.e ] ; 4 uses
  %i.ak = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = add nsw i32 %.sroa.4.0.i.ph.i.i.i.i.i, -65
  %or.cond.i.i.i.i.i.i.i = icmp ult i32 %i.al, 26
  br i1 %or.cond.i.i.i.i.i.i.i, label %_RNvXs3_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB5_12IsortSortKeyINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 192
  br i1 %i.am, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternNvMNtNtB9_4char7methodsc12is_uppercaseENtB5_7Pattern12is_prefix_ofCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i, label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc12is_uppercaseNtB5_11MultiCharEq7matchesCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i

_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc12is_uppercaseNtB5_11MultiCharEq7matchesCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i: ; preds = %bb.g
  %i.an = tail call noundef zeroext i1 @_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data9uppercase6lookup(i32 noundef range(i32 0, 1114112) %.sroa.4.0.i.ph.i.i.i.i.i), !noalias !4975
  br i1 %i.an, label %_RNvXs3_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB5_12IsortSortKeyINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from.exit, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternNvMNtNtB9_4char7methodsc12is_uppercaseENtB5_7Pattern12is_prefix_ofCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i

_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternNvMNtNtB9_4char7methodsc12is_uppercaseENtB5_7Pattern12is_prefix_ofCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i: ; preds = %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc12is_uppercaseNtB5_11MultiCharEq7matchesCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i, %bb.g, %bb.d
  br label %_RNvXs3_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB5_12IsortSortKeyINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from.exit

_RNvXs3_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB5_12IsortSortKeyINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from.exit: ; preds = %bb.c, %bb.f, %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc12is_uppercaseNtB5_11MultiCharEq7matchesCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i, %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternNvMNtNtB9_4char7methodsc12is_uppercaseENtB5_7Pattern12is_prefix_ofCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i
  %.sroa.0.0.i.i = phi i8 [ 0, %bb.c ], [ 2, %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternNvMNtNtB9_4char7methodsc12is_uppercaseENtB5_7Pattern12is_prefix_ofCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i ], [ 1, %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc12is_uppercaseNtB5_11MultiCharEq7matchesCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i ], [ 1, %bb.f ] ; 2 uses
  %i.ao = icmp ugt i64 %4, 1
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNvXs3_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB5_12IsortSortKeyINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from.exit
  %i.ap = tail call noundef zeroext i1 @_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib3str18is_cased_uppercase(ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4), !noalias !4976
  br i1 %i.ap, label %_RNvXs3_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB5_12IsortSortKeyINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from.exit10, label %.thread.i.i1

bb.i:                                             ; preds = %_RNvXs3_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB5_12IsortSortKeyINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4979)
  %i.aq = icmp samesign eq i64 %4, 0
  br i1 %i.aq, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternNvMNtNtB9_4char7methodsc12is_uppercaseENtB5_7Pattern12is_prefix_ofCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i6, label %.thread.i.i1

.thread.i.i1:                                     ; preds = %bb.i, %bb.h
  %i.ar = load i8, ptr %3, align 1, !alias.scope !4982, !noalias !4986, !noundef !17 ; 5 uses
  %i.as = icmp sgt i8 %i.ar, -1
  br i1 %i.as, label %bb.j, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i.i2

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i.i2: ; preds = %.thread.i.i1
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.au = and i8 %i.ar, 31
  %i.av = zext nneg i8 %i.au to i32               ; 3 uses
  %i.aw = icmp samesign ne i64 %4, 1
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = load i8, ptr %i.at, align 1, !alias.scope !4982, !noalias !4986, !noundef !17
  %i.ay = shl nuw nsw i32 %i.av, 6
  %i.az = and i8 %i.ax, 63
  %i.ba = zext nneg i8 %i.az to i32               ; 2 uses
  %i.bb = or disjoint i32 %i.ay, %i.ba
  %i.bc = icmp samesign ugt i8 %i.ar, -33
  br i1 %i.bc, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i.i.i8, label %bb.k

bb.j:                                             ; preds = %.thread.i.i1
  %i.bd = zext nneg i8 %i.ar to i32
  br label %bb.k

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i.i.i8: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i.i2
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.bf = icmp samesign ne i64 %4, 2
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = load i8, ptr %i.be, align 1, !alias.scope !4982, !noalias !4986, !noundef !17
  %i.bh = shl nuw nsw i32 %i.ba, 6
  %i.bi = and i8 %i.bg, 63
  %i.bj = zext nneg i8 %i.bi to i32
  %i.bk = or disjoint i32 %i.bh, %i.bj            ; 2 uses
  %i.bl = shl nuw nsw i32 %i.av, 12
  %i.bm = or disjoint i32 %i.bk, %i.bl
  %i.bn = icmp samesign ugt i8 %i.ar, -17
  br i1 %i.bn, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.i.i.i9, label %bb.k

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.i.i.i9: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i.i.i8
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.bp = icmp samesign ne i64 %4, 3
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = load i8, ptr %i.bo, align 1, !alias.scope !4982, !noalias !4986, !noundef !17
  %i.br = shl nuw nsw i32 %i.av, 18
  %i.bs = and i32 %i.br, 1835008
  %i.bt = shl nuw nsw i32 %i.bk, 6
  %i.bu = and i8 %i.bq, 63
  %i.bv = zext nneg i8 %i.bu to i32
  %i.bw = or disjoint i32 %i.bt, %i.bv
  %i.bx = or disjoint i32 %i.bw, %i.bs
  br label %bb.k

bb.k:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.i.i.i9, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i.i.i8, %bb.j, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i.i2
  %.sroa.4.0.i.ph.i.i.i.i.i3 = phi i32 [ %i.bm, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i.i.i8 ], [ %i.bx, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.i.i.i9 ], [ %i.bb, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i.i2 ], [ %i.bd, %bb.j ] ; 4 uses
  %i.by = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i3, 1114112
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = add nsw i32 %.sroa.4.0.i.ph.i.i.i.i.i3, -65
  %or.cond.i.i.i.i.i.i.i4 = icmp ult i32 %i.bz, 26
  br i1 %or.cond.i.i.i.i.i.i.i4, label %_RNvXs3_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB5_12IsortSortKeyINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from.exit10, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i3, 192
  br i1 %i.ca, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternNvMNtNtB9_4char7methodsc12is_uppercaseENtB5_7Pattern12is_prefix_ofCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i6, label %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc12is_uppercaseNtB5_11MultiCharEq7matchesCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i5

_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc12is_uppercaseNtB5_11MultiCharEq7matchesCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i5: ; preds = %bb.l
  %i.cb = tail call noundef zeroext i1 @_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data9uppercase6lookup(i32 noundef range(i32 0, 1114112) %.sroa.4.0.i.ph.i.i.i.i.i3), !noalias !4994
  br i1 %i.cb, label %_RNvXs3_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB5_12IsortSortKeyINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from.exit10, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternNvMNtNtB9_4char7methodsc12is_uppercaseENtB5_7Pattern12is_prefix_ofCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i6

_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternNvMNtNtB9_4char7methodsc12is_uppercaseENtB5_7Pattern12is_prefix_ofCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i6: ; preds = %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc12is_uppercaseNtB5_11MultiCharEq7matchesCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i5, %bb.l, %bb.i
  br label %_RNvXs3_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB5_12IsortSortKeyINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from.exit10

_RNvXs3_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB5_12IsortSortKeyINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from.exit10: ; preds = %bb.h, %bb.k, %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc12is_uppercaseNtB5_11MultiCharEq7matchesCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i5, %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternNvMNtNtB9_4char7methodsc12is_uppercaseENtB5_7Pattern12is_prefix_ofCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i6
  %.sroa.0.0.i.i7 = phi i8 [ 0, %bb.h ], [ 2, %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternNvMNtNtB9_4char7methodsc12is_uppercaseENtB5_7Pattern12is_prefix_ofCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i6 ], [ 1, %_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc12is_uppercaseNtB5_11MultiCharEq7matchesCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i5 ], [ 1, %bb.k ] ; 2 uses
  %5 = zext nneg i8 %.sroa.0.0.i.i to i64
  %6 = zext nneg i8 %.sroa.0.0.i.i7 to i64
  %i.cc = tail call i8 @llvm.scmp.i8.i64(i64 %5, i64 %6)
  %i.cd = icmp eq i8 %.sroa.0.0.i.i, %.sroa.0.0.i.i7
  br i1 %i.cd, label %_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB4_12IsortSortKeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.sink.split, label %_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB4_12IsortSortKeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit

_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB4_12IsortSortKeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.sink.split: ; preds = %bb.a, %_RNvXs3_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB5_12IsortSortKeyINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from.exit10
  %i.ce = tail call noundef i8 @_RNvCshCO9OnvyZAQ_6natord7compare(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
  br label %_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB4_12IsortSortKeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit

_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB4_12IsortSortKeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit: ; preds = %_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB4_12IsortSortKeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.sink.split, %_RNvXs3_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB5_12IsortSortKeyINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from.exit10
  %.sroa.0.0 = phi i8 [ %i.cc, %_RNvXs3_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB5_12IsortSortKeyINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from.exit10 ], [ %i.ce, %_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB4_12IsortSortKeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.sink.split ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCsEhZmuQNqkz_11ruff_linter10directivesNtB5_11TodoComment12from_comment(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((56, 57)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs1_NtCsEhZmuQNqkz_11ruff_linter10directivesNtB5_13TodoDirective12from_comment(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %3, i32 poison)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i8, ptr %i.b, align 8, !range !4995, !noundef !17
  %.not = icmp eq i8 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  store ptr %1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %4, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %5, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 -1, ptr %i.d, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %0)
  call void @llvm.experimental.noalias.scope.decl(metadata !4996)
  %i.c = load i64, ptr %i.b, align 8, !range !100, !alias.scope !4996, !noundef !17
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsEhZmuQNqkz_11ruff_linter.exit, !prof !196

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4996
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !4996, !nonnull !17, !align !416, !noundef !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !118, !alias.scope !4996, !noundef !17
  store ptr %i.f, ptr %i.a, align 8, !noalias !4996
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.h, ptr %i.i, align 8, !noalias !4996
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @138, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) #55
          to label %bb.d unwind label %bb.c, !noalias !4996

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc5waker5WakerEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #57
          to label %common.resume unwind label %bb.e, !noalias !4996

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !4996
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.r, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !4996, !nonnull !17, !align !416, !noundef !17 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !118, !alias.scope !4996, !noundef !17 ; 2 uses
  %i.p = trunc nuw i8 %i.o to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  invoke fastcc void @_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB2_5Waker10disconnect(ptr noalias noundef align 8 dereferenceable(48) %i.q)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsEhZmuQNqkz_11ruff_linter.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsEhZmuQNqkz_11ruff_linter(ptr nonnull %i.m, i8 %i.o) #57
          to label %common.resume unwind label %bb.n

bb.g:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsEhZmuQNqkz_11ruff_linter.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.t = load i64, ptr %i.s, align 8, !noundef !17 ; 2 uses
  %i.u = icmp ult i64 %i.t, 384307168202282326
  call void @llvm.assume(i1 %i.u)
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.x = load i64, ptr %i.w, align 8, !noundef !17 ; 2 uses
  %i.y = icmp ult i64 %i.x, 384307168202282326
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp eq i64 %i.x, 0
  %i.aa = zext i1 %i.z to i8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.0 = phi i8 [ %i.aa, %bb.h ], [ 0, %bb.g ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  store atomic i8 %.sroa.0.0, ptr %i.ab seq_cst, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  br i1 %i.p, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ae = and i64 %i.ad, 9223372036854775807
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k, !prof !390

bb.k:                                             ; preds = %bb.j
  %i.ag = call noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.ag, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  store atomic i8 1, ptr %i.ac monotonic, align 4
  br label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.ah = atomicrmw xchg ptr %i.m, i32 0 release, align 4
  %i.ai = icmp eq i32 %i.ah, 2
  br i1 %i.ai, label %bb.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsEhZmuQNqkz_11ruff_linter.exit, !prof !196

bb.m:                                             ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.m)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.m
  ret void

bb.n:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17sort_dunder_slotsNtB5_20StringLiteralDisplay27generate_sorted_source_code(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr nofree noundef nonnull readonly align 8 captures(none) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [80 x i8], align 8                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.544.i = alloca i64, align 8              ; 7 uses
  %.sroa.9.i = alloca i64, align 8                ; 5 uses
  %i.m = alloca [40 x i8], align 8                ; 9 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 12 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [40 x i8], align 8                ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [40 x i8], align 8                ; 6 uses
  %i.u = alloca [40 x i8], align 8                ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 1000
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !17, !align !416, !noundef !17 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load i32, ptr %i.x, align 8, !noundef !17 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aa = load i32, ptr %i.z, align 4, !noundef !17 ; 2 uses
  %i.ab = load ptr, ptr %i.w, align 8, !nonnull !17, !noundef !17
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !17
  %i.ae = tail call noundef zeroext i1 @_RNvXNtCs9BeaGo73rC4_16ruff_source_file11line_rangeseNtB2_10LineRanges19contains_line_break(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ad, i32 noundef %i.y, i32 noundef %i.aa)
end_hunk_7
begin_hunk_8_@_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules19compound_statementsNtB5_16UselessSemicolonNtNtBd_9violation22AlwaysFixableViolation7message:bb.a
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 44, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !100, !noundef !17
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !352, !noundef !17 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !196

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.i = icmp samesign ugt i64 %i.e, 43
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.h, ptr noundef nonnull align 1 dereferenceable(44) @553, i64 44, i1 false)
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 44, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules19compound_statementsNtB5_16UselessSemicolonNtNtBd_9violation22AlwaysFixableViolation9fix_title(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !100, !noundef !17
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !352, !noundef !17 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !196

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.i = icmp samesign ugt i64 %i.e, 27
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.h, ptr noundef nonnull align 1 dereferenceable(28) @555, i64 28, i1 false)
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 28, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules12ast_unary_opNtB5_14DoubleNegationNtNtBd_9violation22AlwaysFixableViolation7message(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @558, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules12ast_unary_opNtB5_14DoubleNegationNtNtBd_9violation22AlwaysFixableViolation9fix_title(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @478, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules19split_static_stringNtB5_17SplitStaticStringNtNtBd_9violation9Violation7message(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules19split_static_stringNtB4_6MethodNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @559, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules19split_static_stringNtB5_17SplitStaticStringNtNtBd_9violation9Violation9fix_title(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 25, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !100, !noundef !17
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !352, !noundef !17 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !196

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.i = icmp samesign ugt i64 %i.e, 24
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.h, ptr noundef nonnull align 1 dereferenceable(25) @560, i64 25, i1 false)
  store i64 %i.e, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 25, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules9ast_ifexpNtB5_21IfExprWithTwistedArmsNtNtBd_9violation22AlwaysFixableViolation7message(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.d, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.e, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @563, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules9ast_ifexpNtB5_21IfExprWithTwistedArmsNtNtBd_9violation22AlwaysFixableViolation9fix_title(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.d, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.e, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @564, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 2) i8 @_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB5_12IsortSortKeyNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8291)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !417, !alias.scope !8288, !noalias !8291, !noundef !17 ; 2 uses
  %2 = zext nneg i8 %i.b to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !417, !alias.scope !8291, !noalias !8288, !noundef !17 ; 2 uses
  %3 = zext nneg i8 %i.d to i64
  %i.e = tail call i8 @llvm.scmp.i8.i64(i64 %2, i64 %3)
  %i.f = icmp eq i8 %i.b, %i.d
  br i1 %i.f, label %bb.b, label %_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB4_12IsortSortKeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !8291, !noalias !8288, !noundef !17
  %i.i = load ptr, ptr %1, align 8, !alias.scope !8291, !noalias !8288, !nonnull !17, !noundef !17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !8288, !noalias !8291, !noundef !17
  %i.l = load ptr, ptr %0, align 8, !alias.scope !8288, !noalias !8291, !nonnull !17, !noundef !17
  %i.m = tail call noundef i8 @_RNvCshCO9OnvyZAQ_6natord7compare(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.h), !noalias !8293
  br label %_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB4_12IsortSortKeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit

_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB4_12IsortSortKeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i8 [ %i.m, %bb.b ], [ %i.e, %bb.a ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules26decimal_from_float_literalNtB5_4SignNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !118, !noundef !17 ; 2 uses
  %i.b = trunc nuw i8 %i.a to i1
  %. = zext nneg i8 %i.a to i64
  %.1 = select i1 %i.b, ptr @565, ptr inttoptr (i64 1 to ptr)
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules8perflint5rules21unnecessary_list_castNtB5_15MutationVisitorNtNtCskLngH8kgpZI_15ruff_python_ast17statement_visitor16StatementVisitor10visit_stmt(ptr noalias noundef align 8 dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !17, !noundef !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !17
  %i.d = tail call fastcc noundef zeroext i1 @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules8perflint5rules21unnecessary_list_cast14match_mutation(ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c)
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCskLngH8kgpZI_15ruff_python_ast17statement_visitor9walk_stmtNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules8perflint5rules21unnecessary_list_cast15MutationVisitorEB1c_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules26super_call_with_parametersNtB5_24ClassCellReferenceFinderNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr(ptr noalias noundef dereferenceable(1) %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !range !442, !noundef !17
  %i.b = icmp eq i32 %i.a, 28
  br i1 %i.b, label %bb.b, label %_RNCNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules26super_call_with_parametersNtB7_24ClassCellReferenceFinderNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr0Bf_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.e = load i8, ptr %i.d, align 1, !range !527, !alias.scope !8294, !noundef !17 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !8294, !noundef !17
  %i.h = and i64 %i.g, 72057594037927935
  %i.i = icmp ult i8 %i.e, -48
  %i.j = zext i8 %i.e to i64
  %i.k = add nsw i64 %i.j, -192
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 16)
  %.sroa.0.0.i.i = select i1 %i.i, i64 %spec.store.select.i.i, i64 %i.h
  %i.l = icmp ugt i8 %i.e, -49
  %i.m = load ptr, ptr %i.c, align 8, !alias.scope !8294
  %.sroa.01.0.i.i = select i1 %i.l, ptr %i.m, ptr %i.c ; 4 uses
  switch i64 %.sroa.0.0.i.i, label %_RNCNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules26super_call_with_parametersNtB7_24ClassCellReferenceFinderNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr0Bf_.exit.thread [
    i64 5, label %bb.c
    i64 9, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %.sroa.01.0.i.i, align 1
  %i.o = xor i32 %i.n, 1701868915
  %i.p = getelementptr i8, ptr %.sroa.01.0.i.i, i64 4
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i32
  %i.s = xor i32 %i.r, 114
  %i.t = or i32 %i.o, %i.s
  %i.u = icmp ne i32 %i.t, 0
  %i.v = zext i1 %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_RNCNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules26super_call_with_parametersNtB7_24ClassCellReferenceFinderNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr0Bf_.exit, label %_RNCNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules26super_call_with_parametersNtB7_24ClassCellReferenceFinderNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr0Bf_.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.x = load i64, ptr %.sroa.01.0.i.i, align 1
  %i.y = xor i64 %i.x, 6877967918192353119
  %i.z = getelementptr i8, ptr %.sroa.01.0.i.i, i64 8
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i64
  %i.ac = xor i64 %i.ab, 95
  %i.ad = or i64 %i.y, %i.ac
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_RNCNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules26super_call_with_parametersNtB7_24ClassCellReferenceFinderNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr0Bf_.exit, label %_RNCNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules26super_call_with_parametersNtB7_24ClassCellReferenceFinderNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr0Bf_.exit.thread

_RNCNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules26super_call_with_parametersNtB7_24ClassCellReferenceFinderNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr0Bf_.exit: ; preds = %bb.c, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ai = load i8, ptr %i.ah, align 4, !range !1304, !noundef !17
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.e, label %_RNCNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules26super_call_with_parametersNtB7_24ClassCellReferenceFinderNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr0Bf_.exit.thread

_RNCNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules26super_call_with_parametersNtB7_24ClassCellReferenceFinderNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr0Bf_.exit.thread: ; preds = %bb.d, %bb.b, %bb.c, %bb.a, %_RNCNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules26super_call_with_parametersNtB7_24ClassCellReferenceFinderNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr0Bf_.exit
  tail call void @_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_exprNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules26super_call_with_parameters24ClassCellReferenceFinderEB11_(ptr noalias noundef nonnull dereferenceable(1) %0, ptr noundef nonnull align 8 %1)
  br label %bb.f

bb.e:                                             ; preds = %_RNCNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules26super_call_with_parametersNtB7_24ClassCellReferenceFinderNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr0Bf_.exit
  store i8 1, ptr %0, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNCNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules26super_call_with_parametersNtB7_24ClassCellReferenceFinderNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr0Bf_.exit.thread
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules26super_call_with_parametersNtB5_24ClassCellReferenceFinderNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt(ptr noalias noundef dereferenceable(1) %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.b = load i8, ptr %i.a, align 4, !range !1190, !noundef !17
  %i.c = icmp eq i8 %i.b, 2
  %i.d = load i8, ptr %0, align 1, !range !118
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %i.c, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_stmtNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules26super_call_with_parameters24ClassCellReferenceFinderEB11_(ptr noalias noundef nonnull dereferenceable(1) %0, ptr noundef nonnull align 8 %1)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsEhZmuQNqkz_11ruff_linter8settings5typess2_1__NtBa_8LanguageNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1f_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @566, i64 noundef 13)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsEhZmuQNqkz_11ruff_linter8settings5typess5_1__NtBa_12OutputFormatNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1k_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @567, i64 noundef 17)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsEhZmuQNqkz_11ruff_linter8settings5typess_1__NtBa_13PythonVersionNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1k_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @568, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc { i32, i32 } @_RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #23 {
switch.lookup:
  %i.a = load i32, ptr %0, align 8, !range !442, !noundef !17 ; 2 uses
  %i.b = zext nneg i32 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtCsEhZmuQNqkz_11ruff_linter9doc_linesNtB5_18StringLinesVisitorNtNtCskLngH8kgpZI_15ruff_python_ast17statement_visitor16StatementVisitor10visit_stmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i32 %i.a to i64
  %switch.gep3 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.799, i64 %i.c
  %switch.load4 = load i8, ptr %switch.gep3, align 1
  %switch.ext5 = zext i8 %switch.load4 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %switch.ext
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %switch.ext5
  %.sroa.0.0 = load i32, ptr %i.d, align 4, !noundef !17
  %.sroa.34.0 = load i32, ptr %i.e, align 4, !noundef !17
  %i.f = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.g = insertvalue { i32, i32 } %i.f, i32 %.sroa.34.0, 1
  ret { i32, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs16_NtNtCsEhZmuQNqkz_11ruff_linter8settings5typesNtB6_13PythonVersionNtNtCsdjW2DEjcQy2_12clap_builder6derive9ValueEnum17to_possible_value(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !range !8297, !noundef !17
  switch i8 %i.a, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
  ]

default.unreachable1:                             ; preds = %bb.a
end_hunk_8
begin_hunk_9_@_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules19trailing_whitespaceNtB4_23BlankLineWithWhitespaceNtNtBc_9violation22AlwaysFixableViolation7message:bb.a
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 30, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules19trailing_whitespaceNtB4_23BlankLineWithWhitespaceNtNtBc_9violation22AlwaysFixableViolation9fix_title(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 33, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !100, !noundef !17
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !352, !noundef !17 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !196

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.i = icmp samesign ugt i64 %i.e, 32
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.h, ptr noundef nonnull align 1 dereferenceable(33) @1597, i64 33, i1 false)
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 33, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules12ast_unary_opNtB4_16NegateNotEqualOpNtNtBc_9violation22AlwaysFixableViolation7message(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.d, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @1600, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules12ast_unary_opNtB4_16NegateNotEqualOpNtNtBc_9violation22AlwaysFixableViolation9fix_title(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 26, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !100, !noundef !17
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !352, !noundef !17 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !196

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.i = icmp samesign ugt i64 %i.e, 25
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.h, ptr noundef nonnull align 1 dereferenceable(26) @1601, i64 26, i1 false)
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 26, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules19split_static_stringNtB4_6MethodNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !118, !noundef !17
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1602, i64 noundef 6)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @284, i64 noundef 5)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules9ast_ifexpNtB4_19IfExprWithFalseTrueNtNtBc_9violation22AlwaysFixableViolation7message(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 49, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !100, !noundef !17
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !352, !noundef !17 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !196

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.i = icmp samesign ugt i64 %i.e, 48
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.h, ptr noundef nonnull align 1 dereferenceable(49) @1603, i64 49, i1 false)
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 49, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules9ast_ifexpNtB4_19IfExprWithFalseTrueNtNtBc_9violation22AlwaysFixableViolation9fix_title(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 22, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !100, !noundef !17
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !352, !noundef !17 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !196

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.i = icmp samesign ugt i64 %i.e, 21
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.h, ptr noundef nonnull align 1 dereferenceable(22) @1605, i64 22, i1 false)
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 22, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules16flake8_datetimez5rules16datetime_min_maxNtB4_6MinMaxNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !118, !noundef !17
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !17, !align !416, !noundef !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !17, !nonnull !17
  %spec.select = select i1 %i.b, ptr @360, ptr @359
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %spec.select, i64 noundef 3)
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 2) i8 @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB4_12IsortSortKeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !417, !noundef !17 ; 2 uses
  %2 = zext nneg i8 %i.b to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !417, !noundef !17 ; 2 uses
  %3 = zext nneg i8 %i.d to i64
  %i.e = tail call i8 @llvm.scmp.i8.i64(i64 %2, i64 %3)
  %i.f = icmp eq i8 %i.b, %i.d
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !17
  %i.i = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !17
  %i.l = load ptr, ptr %0, align 8, !nonnull !17, !noundef !17
  %i.m = tail call noundef i8 @_RNvCshCO9OnvyZAQ_6natord7compare(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.h)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ %i.m, %bb.b ], [ %i.e, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17invalid_rule_codeNtB4_15InvalidRuleCodeNtNtBc_9violation22AlwaysFixableViolation7message(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !118, !noundef !17
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %spec.select = select i1 %i.e, ptr @1609, ptr @1608
  %spec.select12 = select i1 %i.e, i64 11, i64 8
  store ptr %spec.select, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %spec.select12, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.42.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.g, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @1610, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17invalid_rule_codeNtB4_15InvalidRuleCodeNtNtBc_9violation22AlwaysFixableViolation9fix_title(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.e = load i8, ptr %i.d, align 1, !range !118, !noundef !17
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %.split13, label %.split

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @1611, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

.split13:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i8, ptr %i.g, align 8, !range !118, !noundef !17
  %i.i = trunc nuw i8 %i.h to i1                  ; 2 uses
  %spec.select = select i1 %i.i, ptr @1609, ptr @1608
  %spec.select21 = select i1 %i.i, i64 11, i64 8
  store ptr %spec.select, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %spec.select21, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @1612, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.b

bb.b:                                             ; preds = %.split13, %.split
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules21typing_text_str_aliasNtB4_12TypingModuleNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !118, !noundef !17
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @408, i64 noundef 17)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @407, i64 noundef 6)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules21use_pep604_annotationNtB4_27NonPEP604AnnotationOptionalNtNtBc_9violation9Violation7message(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 35, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !100, !noundef !17
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !352, !noundef !17 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !196

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.i = icmp samesign ugt i64 %i.e, 34
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.h, ptr noundef nonnull align 1 dereferenceable(35) @1613, i64 35, i1 false)
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 35, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules21use_pep604_annotationNtB4_27NonPEP604AnnotationOptionalNtNtBc_9violation9Violation9fix_title(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 21, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !100, !noundef !17
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !352, !noundef !17 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !196

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #55
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.i = icmp samesign ugt i64 %i.e, 20
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.h, ptr noundef nonnull align 1 dereferenceable(21) @1614, i64 21, i1 false)
  store i64 %i.e, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 21, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_7sources10successors10SuccessorsRNtNtCs7bpTdHNYxeX_20ruff_python_semantic5scope5ScopeNCNvMs0_B1W_NtB1W_6Scopes9ancestors0ENtB4_13SpecAdvanceBy15spec_advance_byCsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8746)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.promoted.i = load ptr, ptr %i.a, align 8, !alias.scope !8749
  %.val.i.i = load ptr, ptr %0, align 8, !alias.scope !8746 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.b
  %.sroa.0.0.i.i10.i = phi ptr [ %.promoted.i, %bb.b ], [ %.sroa.0.0.i.i.i, %bb.h ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ %1, %bb.b ], [ %i.l, %bb.h ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8752)
  %.not.i.i = icmp eq ptr %.sroa.0.0.i.i10.i, null
  br i1 %.not.i.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsRNtNtCs7bpTdHNYxeX_20ruff_python_semantic5scope5ScopeNCNvMs0_B19_NtB19_6Scopes9ancestors0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB2y_10advance_byB3_NtB3S_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB3f_EECsEhZmuQNqkz_11ruff_linter.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i10.i, i64 104
  %i.e = load i32, ptr %i.d, align 8, !noalias !8749, !noundef !17 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.e
end_hunk_9
begin_hunk_10_@_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB10_NtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules19split_static_string26WhitespaceMaxSplitIteratorE9from_iterB1H_
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB10_NtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules19split_static_string26WhitespaceMaxSplitIteratorE9from_iterB1H_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB10_INtNtNtCs4NRVxsYgnAr_4core3str4iter5SplitB10_EE9from_iterCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(128)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB10_INtNtNtCs4NRVxsYgnAr_4core3str4iter6RSplitB10_EE9from_iterCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(128)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB10_INtNtNtCs4NRVxsYgnAr_4core3str4iter6SplitNB10_EE9from_iterCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(136)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB10_INtNtNtCs4NRVxsYgnAr_4core3str4iter7RSplitNB10_EE9from_iterCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(136)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel18match_builtin_expr(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472), ptr noundef nonnull align 8, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing7is_dict(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCsEhZmuQNqkz_11ruff_linter3fix7snippetNtB2_17SourceCodeSnippet8from_str(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules15flake8_simplify5rules24zip_dict_keys_and_values20ZipDictKeysAndValuesEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules15flake8_simplify5rules9ast_ifexp21IfExprWithTwistedArmsEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules15flake8_simplify5rules9ast_ifexp19IfExprWithFalseTrueEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules15flake8_simplify5rules9ast_ifexp19IfExprWithTrueFalseEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i1 noundef zeroext, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs5b_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs6h_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCskLngH8kgpZI_15ruff_python_ast5token11parentheses19parenthesized_range(ptr dead_on_unwind noalias noundef writable sret([12 x i8]) align 4 captures(address) dereferenceable(12), i64 noundef range(i64 0, 33), ptr noundef, i64 noundef range(i64 0, 94), ptr noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel25current_expression_parent(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel30current_expression_grandparent(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules16flake8_datetimez5rules16datetime_min_max14DatetimeMinMaxEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i1 noundef zeroext, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext28report_diagnostic_if_enabledNtNtNtNtNtBa_5rules17flake8_executable5rules22shebang_missing_python20ShebangMissingPythonEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules18flake8_use_pathlib7helpers34is_pure_path_subclass_with_preview(ptr noundef nonnull align 8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules18flake8_use_pathlib5rules34path_constructor_current_directory31PathConstructorCurrentDirectoryEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCscdodAO9FK5_5alloc6stringNtB3_6String13replace_rangeINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24), i64 noundef, i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXNtCskLngH8kgpZI_15ruff_python_ast10expressionNtNtB4_9generated7ExprRefINtNtCs4NRVxsYgnAr_4core7convert4FromRINtNtCscdodAO9FK5_5alloc5boxed3BoxNtBN_4ExprEE4from(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules21flake8_comprehensions7helpers43exactly_one_argument_with_matching_function(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 8, ptr noundef nonnull align 8, i64 noundef range(i64 0, 128102389400760776), ptr noundef nonnull align 8, i64 noundef range(i64 0, 76861433640456466)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules21flake8_comprehensions5rules37unnecessary_literal_within_tuple_call33UnnecessaryLiteralWithinTupleCallEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i1 noundef zeroext, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizerNtB5_15SimpleTokenizer3new(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB3_3Fix12unsafe_editsANtNtB5_4edit4Editj1_ECsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules4ruff5rules15redirected_noqa14RedirectedNOQAEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules4ruff5rules15sort_dunder_all17UnsortedDunderAllEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens8in_range(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvXNtCs9BeaGo73rC4_16ruff_source_file11line_rangeseNtB2_10LineRanges8line_end(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsk_NtCs4NRVxsYgnAr_4core3fmtcNtB5_7Display3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterRNtNtCsEhZmuQNqkz_11ruff_linter4noqa4CodeENvMs0_B2R_B2P_6as_strEE9from_iterB2T_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCscdodAO9FK5_5alloc3str17join_generic_copyehReECsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext24report_custom_diagnosticNtNtNtNtNtBa_5rules4ruff5rules17invalid_rule_code15InvalidRuleCodeEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsEhZmuQNqkz_11ruff_linter3fix5edits14delete_comment(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i32 noundef, i32 noundef, ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXsd_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuardNtNtNtCs4NRVxsYgnAr_4core3ops5deref8DerefMut9deref_mut(ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic3sub(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules4ruff5rules17sort_dunder_slots19UnsortedDunderSlotsEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCskLngH8kgpZI_15ruff_python_ast3strNtB4_5QuoteNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules4ruff5rules26decimal_from_float_literal23DecimalFromFloatLiteralEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing18find_binding_value(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules4ruff5rules30unnecessary_regular_expression28UnnecessaryRegularExpressionEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5flynt7helpers38to_interpolated_string_literal_element(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5flynt7helpers30to_interpolated_string_element(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsE_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtNtB7_9generated4ExprINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_7FStringE4from(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5flynt5rules22static_join_to_fstring13build_fstring0ENtCs6Wt4yPw39th_9itertools9Itertools4joinB2v_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast5nodes18StringLiteralFlagsNtB4_11StringFlags9quote_strCsEhZmuQNqkz_11ruff_linter(i8 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE16into_boxed_sliceCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i8 @_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker21default_fstring_flags(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules5flynt5rules22static_join_to_fstring19StaticJoinToFStringEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_7Checker17report_diagnosticNtNtNtNtNtBa_5rules5numpy5rules19deprecated_function23NumpyDeprecatedFunctionEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noundef nonnull align 8, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsa_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard15add_primary_tag(ptr noalias noundef align 8 dereferenceable(48), i1 noundef zeroext) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing6is_set(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvNtCskLngH8kgpZI_15ruff_python_ast7helpers13any_over_bodyNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules22modified_iterating_set22modified_iterating_set0EB18_(ptr noundef nonnull align 8, i64 noundef range(i64 0, 104811045873349726), ptr noundef nonnull align 8, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules6pylint5rules22modified_iterating_set20ModifiedIteratingSetEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules6pylint5rules22super_without_brackets20SuperWithoutBracketsEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_bodyNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint7helpers20SequenceIndexVisitorEBZ_(ptr noalias noundef align 8 dereferenceable(80), ptr noundef nonnull align 8, i64 noundef range(i64 0, 104811045873349726)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules6pylint5rules29unnecessary_dict_index_lookup26UnnecessaryDictIndexLookupEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB3_3Fix10safe_editsANtNtB5_4edit4Editj2_ECsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing10is_io_base(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers35parenthesize_loop_iter_if_necessary(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules6refurb5rules15for_loop_writes13ForLoopWritesEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel22resolve_builtin_symbol(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules6refurb5rules21fstring_number_format19FStringNumberFormatEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules7airflow5rules21dag_schedule_argument28AirflowDagNoScheduleArgumentEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing19find_assigned_value(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules8perflint5rules21unnecessary_list_cast19UnnecessaryListCastEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCsEhZmuQNqkz_11ruff_linter7locatorNtB4_7Locator8line_str(ptr noundef nonnull align 8, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9eradicate9detection21comment_contains_code(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 384307168202282326)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext28report_diagnostic_if_enabledNtNtNtNtNtBa_5rules9eradicate5rules18commented_out_code16CommentedOutCodeEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RNvYNtNtCsEhZmuQNqkz_11ruff_linter7locator7LocatorNtNtCs9BeaGo73rC4_16ruff_source_file11line_ranges10LineRanges16full_lines_rangeB6_(ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB2_3Fix17display_only_edit(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_7Checker17report_diagnosticNtNtNtNtNtBa_5rules9pyupgrade5rules21typing_text_str_alias18TypingTextStrAliasEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noundef nonnull align 8, i1 noundef zeroext, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules9pyupgrade5rules21use_pep604_annotation24NonPEP604AnnotationUnionEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCskLngH8kgpZI_15ruff_python_ast7helpers13pep_604_union(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noundef nonnull align 8, i64 noundef range(i64 0, 128102389400760776)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext28report_diagnostic_if_enabledNtNtNtNtNtBa_5rules9pyupgrade5rules21use_pep604_annotation27NonPEP604AnnotationOptionalEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing18to_pep604_operator(ptr noundef nonnull align 8, ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCskLngH8kgpZI_15ruff_python_ast7helpers16pep_604_optional(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel18current_statements(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules9pyupgrade5rules26super_call_with_parameters23SuperCallWithParametersEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCs4NRVxsYgnAr_4core3fmtbNtB5_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMNtNtCsEhZmuQNqkz_11ruff_linter3fix7snippetNtB2_17SourceCodeSnippet12full_display(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs4_NtCscuBBDlOF0VN_8schemars8generateNtB6_15SchemaGenerator13subschema_forINtNtNtCs4NRVxsYgnAr_4core3num7nonzero7NonZerohEECsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(200)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCscuBBDlOF0VN_8schemars8__private36insert_metadata_property_if_nonemptyReECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs4_NtCscuBBDlOF0VN_8schemars8generateNtB6_15SchemaGenerator13subschema_forINtNtNtCs4NRVxsYgnAr_4core3num7nonzero7NonZerotEECsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(200)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtNtCscvBHLZPbXnS_10serde_json5value4fromNtB7_5ValueINtNtCs4NRVxsYgnAr_4core7convert4FromReE4from(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueE6insertCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3imptNtB9_7Display3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_exprNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint7helpers20SequenceIndexVisitorEBZ_(ptr noalias noundef align 8 dereferenceable(80), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_stmtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint7helpers20SequenceIndexVisitorEBZ_(ptr noalias noundef align 8 dereferenceable(80), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRjNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_exprNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules26super_call_with_parameters24ClassCellReferenceFinderEB11_(ptr noalias noundef dereferenceable(1), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_stmtNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules26super_call_with_parameters24ClassCellReferenceFinderEB11_(ptr noalias noundef dereferenceable(1), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 -1, 2) i8 @_RNvNtCs2AWtUsOyxgP_3std4path18compare_components(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_valueNtB3_13PossibleValue3newReECsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCsb2V9IiE8ECc_7seahash6streamNtB5_9SeaHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher11write_usize(ptr noalias noundef align 8 dereferenceable(56), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCsb2V9IiE8ECc_7seahash6streamNtB5_9SeaHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher5write(ptr noalias noundef align 8 dereferenceable(56), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCsb2V9IiE8ECc_7seahash6streamNtB5_9SeaHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher8write_u8(ptr noalias noundef align 8 dereferenceable(56), i8 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsw_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB5_13SecondaryCodeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_7VersionNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXss_NtCskRasR9DNdfH_10ruff_cache9cache_keyNtCsiFz2HvHapBs_4glob7PatternNtB5_8CacheKey9cache_key(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias noundef align 8 dereferenceable(56)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsj_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types15CompiledPerFileNtNtNtB1k_8registry8rule_set7RuleSetEENtB5_8CacheKey9cache_keyB1k_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(56)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsj_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types15CompiledPerFileNtNtCskLngH8kgpZI_15ruff_python_ast14python_version13PythonVersionEENtB5_8CacheKey9cache_keyB1k_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(56)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCsb2V9IiE8ECc_7seahash6streamNtB5_9SeaHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_u16(ptr noalias noundef align 8 dereferenceable(56), i16 noundef) unnamed_addr #2

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB7_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop13outlined_drop(ptr noundef nonnull, i64 noundef) unnamed_addr #42

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsk_NtCskRasR9DNdfH_10ruff_cache9cache_keyINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types8LanguageNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtB5_8CacheKey9cache_keyB2j_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(56)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvXsc_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noundef nonnull align 4) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtCsEhZmuQNqkz_11ruff_linter5codesReINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqNtB5_8NoqaCodeE2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXsf_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXse_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxShENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtNtCs4NRVxsYgnAr_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3mem9alignment9AlignmentNtB6_5Debug3fmtCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRhNtB6_5Debug3fmtCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #46

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEBN_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #51
end_hunk_10

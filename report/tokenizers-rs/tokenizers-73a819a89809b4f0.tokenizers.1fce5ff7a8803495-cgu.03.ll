Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.03?download=true
inline.NumInlined: 920
inline.NumDeleted: 323
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseB15_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2w_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2C_:bb.a
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.ap

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.ap
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.06.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.ed, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod350 = trunc i64 %i.dx to i1
  call void @llvm.assume(i1 %lcmp.mod350)
  %i.ei = xor i64 %.sroa.06.014.i.epil.init, -1
  %i.ej = getelementptr [24 x i8], ptr %i.df, i64 %i.ei
  %i.ek = getelementptr [24 x i8], ptr %i.dy, i64 %.sroa.06.014.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, ptr noundef nonnull align 8 dereferenceable(24) %i.ej, i64 24, i1 false), !alias.scope !1246
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.ao
  %i.el = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.el, label %.thread, label %bb.aq

bb.aq:                                            ; preds = %.loopexit
  %.not.i54 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.0121283
  br i1 %.not.i54, label %bb.ar, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmRScE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit, !prof !9

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22, !noalias !1249
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmRScE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.aq
  %i.em = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph128, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph128) ]
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseB15_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2w_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2C_(ptr noalias noundef nonnull align 8 %i.em, i64 noundef %i.dx, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.en = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.en, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %.split, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  %.not89 = icmp samesign ult i64 %3, %.sroa.16.0121283
  br i1 %.not89, label %bb.at, label %bb.as, !prof !8

bb.as:                                            ; preds = %.thread
  %i.eo = getelementptr [24 x i8], ptr %2, i64 %.sroa.16.0121283 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i.i57 = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %.sroa.41.0..sroa_idx.i.i.i58 = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  br label %bb.au

bb.at:                                            ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.au:                                            ; preds = %bb.ay, %bb.as
  %.sroa.19.0.i59 = phi ptr [ %i.eo, %bb.as ], [ %i.fd, %bb.ay ] ; 2 uses
  %.sroa.11.0.i60 = phi i64 [ 0, %bb.as ], [ %i.ff, %bb.ay ] ; 2 uses
  %.sroa.5.0.i61 = phi ptr [ %.sroa.0.0.ph128, %bb.as ], [ %i.fg, %bb.ay ] ; 3 uses
  %.sroa.0.0.i62 = phi i64 [ %.sroa.0.0.i38, %bb.as ], [ %.sroa.16.0121283, %bb.ay ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph128, i64 %.sroa.0.0.i62 ; 2 uses
  %i.eq = icmp ult ptr %.sroa.5.0.i61, %i.ep
  br i1 %i.eq, label %.lr.ph.i71, label %._crit_edge.i63

.lr.ph.i71:                                       ; preds = %bb.au
  %.sroa.0.0.copyload.i.i.i72 = load i32, ptr %i.da, align 8, !alias.scope !1252, !noalias !1253 ; 2 uses
  br label %bb.av

._crit_edge.i63:                                  ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyINtNtBc_3cmp7ReverseB17_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2y_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0B2E_.exit.i, %bb.au
  %.sroa.19.1.lcssa.i64 = phi ptr [ %.sroa.19.0.i59, %bb.au ], [ %i.ex, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyINtNtBc_3cmp7ReverseB17_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2y_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0B2E_.exit.i ]
  %.sroa.11.1.lcssa.i65 = phi i64 [ %.sroa.11.0.i60, %bb.au ], [ %i.fa, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyINtNtBc_3cmp7ReverseB17_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2y_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0B2E_.exit.i ] ; 10 uses
  %.sroa.5.1.lcssa.i66 = phi ptr [ %.sroa.5.0.i61, %bb.au ], [ %i.fb, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyINtNtBc_3cmp7ReverseB17_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2y_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0B2E_.exit.i ] ; 2 uses
  %i.er = icmp eq i64 %.sroa.0.0.i62, %.sroa.16.0121283
  br i1 %i.er, label %bb.az, label %bb.ay

bb.av:                                            ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyINtNtBc_3cmp7ReverseB17_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2y_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0B2E_.exit.i, %.lr.ph.i71
  %.sroa.5.111.i73 = phi ptr [ %.sroa.5.0.i61, %.lr.ph.i71 ], [ %i.fb, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyINtNtBc_3cmp7ReverseB17_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2y_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0B2E_.exit.i ] ; 5 uses
  %.sroa.11.110.i74 = phi i64 [ %.sroa.11.0.i60, %.lr.ph.i71 ], [ %i.fa, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyINtNtBc_3cmp7ReverseB17_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2y_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0B2E_.exit.i ] ; 2 uses
  %.sroa.19.19.i75 = phi ptr [ %.sroa.19.0.i59, %.lr.ph.i71 ], [ %i.ex, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyINtNtBc_3cmp7ReverseB17_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2y_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0B2E_.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1254)
  call void @llvm.experimental.noalias.scope.decl(metadata !1255)
  call void @llvm.experimental.noalias.scope.decl(metadata !1256)
  call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  %.sroa.02.0.copyload.i.i.i76 = load i32, ptr %.sroa.5.111.i73, align 8, !alias.scope !1258, !noalias !1259 ; 2 uses
  %i.es = icmp eq i32 %.sroa.02.0.copyload.i.i.i76, %.sroa.0.0.copyload.i.i.i72
  br i1 %i.es, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.et = icmp ult i32 %.sroa.02.0.copyload.i.i.i76, %.sroa.0.0.copyload.i.i.i72
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyINtNtBc_3cmp7ReverseB17_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2y_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0B2E_.exit.i

bb.ax:                                            ; preds = %bb.av
  %.sroa.55.0..sroa_idx.i.i.i79 = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i73, i64 16
  %.sroa.55.0.copyload.i.i.i80 = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i79, align 8, !alias.scope !1258, !noalias !1259
  %.sroa.44.0..sroa_idx.i.i.i81 = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i73, i64 8
  %.sroa.44.0.copyload.i.i.i82 = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i81, align 8, !alias.scope !1258, !noalias !1259, !nonnull !3, !noundef !3
  %.sroa.5.0.copyload.i.i.i83 = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i57, align 8, !alias.scope !1252, !noalias !1253
  %.sroa.41.0.copyload.i.i.i84 = load ptr, ptr %.sroa.41.0..sroa_idx.i.i.i58, align 8, !alias.scope !1252, !noalias !1253, !nonnull !3, !noundef !3
  %i.eu = call noundef i8 @_RNvXs5_NtNtCs4NRVxsYgnAr_4core5slice3cmpcNtB5_10SliceChain11chaining_ltCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.44.0.copyload.i.i.i82, i64 noundef range(i64 0, 2305843009213693952) %.sroa.55.0.copyload.i.i.i80, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.41.0.copyload.i.i.i84, i64 noundef range(i64 0, 2305843009213693952) %.sroa.5.0.copyload.i.i.i83), !noalias !1260
  %i.ev = icmp eq i8 %i.eu, 1
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyINtNtBc_3cmp7ReverseB17_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2y_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0B2E_.exit.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyINtNtBc_3cmp7ReverseB17_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2y_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0B2E_.exit.i: ; preds = %bb.ax, %bb.aw
  %.sroa.0.0.i.i.i.i.i77 = phi i1 [ %i.et, %bb.aw ], [ %i.ev, %bb.ax ] ; 2 uses
  %i.ew = xor i1 %.sroa.0.0.i.i.i.i.i77, true
  %i.ex = getelementptr inbounds i8, ptr %.sroa.19.19.i75, i64 -24 ; 3 uses
  %.sroa.01.0.i.i78 = select i1 %.sroa.0.0.i.i.i.i.i77, ptr %i.ex, ptr %2
  %i.ey = getelementptr inbounds nuw [24 x i8], ptr %.sroa.01.0.i.i78, i64 %.sroa.11.110.i74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ey, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.111.i73, i64 24, i1 false), !alias.scope !1261, !noalias !1262
  %i.ez = zext i1 %i.ew to i64
  %i.fa = add i64 %.sroa.11.110.i74, %i.ez        ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i73, i64 24 ; 3 uses
  %i.fc = icmp ult ptr %i.fb, %i.ep
  br i1 %i.fc, label %bb.av, label %._crit_edge.i63

bb.ay:                                            ; preds = %._crit_edge.i63
  %i.fd = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i64, i64 -24
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fe, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.1.lcssa.i66, i64 24, i1 false), !alias.scope !1261, !noalias !1263
  %i.ff = add i64 %.sroa.11.1.lcssa.i65, 1
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i66, i64 24
  br label %bb.au

bb.az:                                            ; preds = %._crit_edge.i63
  %i.fh = mul i64 %.sroa.11.1.lcssa.i65, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph128, ptr nonnull align 8 %2, i64 %i.fh, i1 false), !alias.scope !1261
  %i.fi = sub i64 %.sroa.16.0121283, %.sroa.11.1.lcssa.i65 ; 6 uses
  %.not18.i67 = icmp eq i64 %.sroa.16.0121283, %.sroa.11.1.lcssa.i65
  br i1 %.not18.i67, label %.outer._crit_edge.thread, label %.lr.ph16.i68

.lr.ph16.i68:                                     ; preds = %bb.az
  %i.fj = getelementptr [24 x i8], ptr %.sroa.0.0.ph128, i64 %.sroa.11.1.lcssa.i65 ; 3 uses
  %.neg363 = add i64 %.sroa.11.1.lcssa.i65, 1
  %xtraiter358 = and i64 %i.fi, 1
  %i.fk = icmp eq i64 %.sroa.16.0121283, %.neg363
  br i1 %i.fk, label %.epil.preheader351, label %.lr.ph16.i68.new

.lr.ph16.i68.new:                                 ; preds = %.lr.ph16.i68
  %unroll_iter361 = and i64 %i.fi, -2
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %.lr.ph16.i68.new
  %.sroa.06.014.i69 = phi i64 [ 0, %.lr.ph16.i68.new ], [ %i.fo, %bb.ba ] ; 5 uses
  %niter362 = phi i64 [ 0, %.lr.ph16.i68.new ], [ %niter362.next.1, %bb.ba ]
  %i.fl = xor i64 %.sroa.06.014.i69, -1
  %i.fm = getelementptr [24 x i8], ptr %i.eo, i64 %i.fl
  %i.fn = getelementptr [24 x i8], ptr %i.fj, i64 %.sroa.06.014.i69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fn, ptr noundef nonnull align 8 dereferenceable(24) %i.fm, i64 24, i1 false), !alias.scope !1261
  %i.fo = add nuw i64 %.sroa.06.014.i69, 2        ; 2 uses
  %i.fp = xor i64 %.sroa.06.014.i69, -2
  %i.fq = getelementptr [24 x i8], ptr %i.eo, i64 %i.fp
  %i.fr = getelementptr [24 x i8], ptr %i.fj, i64 %.sroa.06.014.i69
  %i.fs = getelementptr i8, ptr %i.fr, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fs, ptr noundef nonnull align 8 dereferenceable(24) %i.fq, i64 24, i1 false), !alias.scope !1261
  %niter362.next.1 = add i64 %niter362, 2         ; 2 uses
  %niter362.ncmp.1 = icmp eq i64 %niter362.next.1, %unroll_iter361
  br i1 %niter362.ncmp.1, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmRScENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB30_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0EB36_.exit.unr-lcssa, label %bb.ba

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmRScENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB30_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0EB36_.exit.unr-lcssa: ; preds = %bb.ba
  %lcmp.mod359.not = icmp eq i64 %xtraiter358, 0
  br i1 %lcmp.mod359.not, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmRScENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB30_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0EB36_.exit, label %.epil.preheader351

.epil.preheader351:                               ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmRScENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB30_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0EB36_.exit.unr-lcssa, %.lr.ph16.i68
  %.sroa.06.014.i69.epil.init = phi i64 [ 0, %.lr.ph16.i68 ], [ %i.fo, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmRScENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB30_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0EB36_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod360 = trunc i64 %i.fi to i1
  call void @llvm.assume(i1 %lcmp.mod360)
  %i.ft = xor i64 %.sroa.06.014.i69.epil.init, -1
  %i.fu = getelementptr [24 x i8], ptr %i.eo, i64 %i.ft
  %i.fv = getelementptr [24 x i8], ptr %i.fj, i64 %.sroa.06.014.i69.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fv, ptr noundef nonnull align 8 dereferenceable(24) %i.fu, i64 24, i1 false), !alias.scope !1261
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmRScENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB30_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0EB36_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmRScENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB30_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0EB36_.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmRScENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB30_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0EB36_.exit.unr-lcssa, %.epil.preheader351
  %i.fw = icmp ugt i64 %.sroa.11.1.lcssa.i65, %.sroa.16.0121283
  br i1 %i.fw, label %bb.bb, label %.outer, !prof !9

.outer._crit_edge.thread:                         ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyINtNtBa_3cmp7ReverseB1s_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2T_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2Z_.exit

.outer:                                           ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmRScENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB30_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0EB36_.exit
  %i.fx = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph128, i64 %.sroa.11.1.lcssa.i65 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fy = icmp ult i64 %i.fi, 33
  br i1 %i.fy, label %.outer._crit_edge, label %.lr.ph

bb.bb:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmRScENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB30_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0EB36_.exit
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i65, i64 noundef %.sroa.16.0121283, i64 noundef %.sroa.16.0121283, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #22
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseB15_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2u_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2A_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %4, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(8) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 7 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.0.0.ph143 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %i.no, %.outer ] ; 24 uses
  %.sroa.16.0.ph142 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.mz, %.outer ] ; 2 uses
  %.sroa.025.0.ph141 = phi i32 [ %4, %.lr.ph.lr.ph ], [ %i.hj, %.outer ] ; 2 uses
  %.sroa.028.0.ph140 = phi ptr [ %5, %.lr.ph.lr.ph ], [ null, %.outer ] ; 3 uses
  %i.d = getelementptr i8, ptr %.sroa.0.0.ph143, i64 4
  %i.e = ptrtoint ptr %.sroa.0.0.ph143 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph140, null
  %i.f = getelementptr i8, ptr %.sroa.028.0.ph140, i64 4
  %i.g = icmp eq i32 %.sroa.025.0.ph141, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph316

bb.b:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit
  %i.h = icmp eq i32 %i.hj, 0
  br i1 %i.h, label %.lr.ph._crit_edge, label %.lr.ph316

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit, %bb.a
  %.sroa.0.0.ph.lcssa133 = phi ptr [ %.sroa.0.0.ph143, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit ], [ %0, %bb.a ], [ %i.no, %.outer ] ; 22 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit ], [ %1, %bb.a ], [ %i.mz, %.outer ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  call void @llvm.experimental.noalias.scope.decl(metadata !1323)
  %i.i = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyINtNtBa_3cmp7ReverseB1s_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2R_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2X_.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.j = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.k = icmp samesign ult i64 %3, %i.j
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = lshr i64 %.sroa.16.0.lcssa, 1            ; 12 uses
  %i.m = icmp samesign ugt i64 %.sroa.16.0.lcssa, 15
  br i1 %i.m, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  br i1 %i.n, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.16.0.lcssa ; 2 uses
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort8_stableTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB19_11sort_by_keyINtNtBa_3cmp7ReverseB19_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2y_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2E_(ptr noundef nonnull align 4 %.sroa.0.0.ph.lcssa133, ptr noundef nonnull align 4 %2, ptr noundef %i.o)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa133, i64 %i.l
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort8_stableTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB19_11sort_by_keyINtNtBa_3cmp7ReverseB19_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2y_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2E_(ptr noundef %i.p, ptr noundef %i.q, ptr noundef %i.r)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa133, i64 8
  %.val16.i.i = load i32, ptr %i.s, align 4, !alias.scope !1322, !noalias !1323, !noundef !3 ; 2 uses
  %i.t = getelementptr i8, ptr %.sroa.0.0.ph.lcssa133, i64 12
  %.val17.i.i = load i32, ptr %i.t, align 4, !range !6, !alias.scope !1322, !noalias !1323, !noundef !3
  %.val18.i.i = load i32, ptr %.sroa.0.0.ph.lcssa133, align 4, !alias.scope !1322, !noalias !1323, !noundef !3 ; 2 uses
  %i.u = getelementptr i8, ptr %.sroa.0.0.ph.lcssa133, i64 4
  %.val19.i.i = load i32, ptr %i.u, align 4, !range !6, !alias.scope !1322, !noalias !1323, !noundef !3
  %i.v = icmp eq i32 %.val18.i.i, %.val16.i.i
  %i.w = icmp ult i32 %.val18.i.i, %.val16.i.i
  %i.x = icmp samesign ult i32 %.val19.i.i, %.val17.i.i
  %.sroa.0.0.i.i.i.i.i = select i1 %i.v, i1 %i.x, i1 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa133, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa133, i64 16
  %.val12.i.i = load i32, ptr %i.y, align 4, !alias.scope !1322, !noalias !1323, !noundef !3 ; 2 uses
  %i.aa = getelementptr i8, ptr %.sroa.0.0.ph.lcssa133, i64 28
  %.val13.i.i = load i32, ptr %i.aa, align 4, !range !6, !alias.scope !1322, !noalias !1323, !noundef !3
  %.val14.i.i = load i32, ptr %i.z, align 4, !alias.scope !1322, !noalias !1323, !noundef !3 ; 2 uses
  %i.ab = getelementptr i8, ptr %.sroa.0.0.ph.lcssa133, i64 20
  %.val15.i.i = load i32, ptr %i.ab, align 4, !range !6, !alias.scope !1322, !noalias !1323, !noundef !3
  %i.ac = icmp eq i32 %.val14.i.i, %.val12.i.i
  %i.ad = icmp ult i32 %.val14.i.i, %.val12.i.i
  %i.ae = icmp samesign ult i32 %.val15.i.i, %.val13.i.i
  %.sroa.0.0.i.i.i20.i.i = select i1 %i.ac, i1 %i.ae, i1 %i.ad ; 2 uses
  %i.af = zext i1 %.sroa.0.0.i.i.i.i.i to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa133, i64 %i.af ; 4 uses
  %i.ah = xor i1 %.sroa.0.0.i.i.i.i.i, true
  %i.ai = zext i1 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa133, i64 %i.ai ; 5 uses
  %i.ak = select i1 %.sroa.0.0.i.i.i20.i.i, i64 3, i64 2
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa133, i64 %i.ak ; 5 uses
  %i.am = select i1 %.sroa.0.0.i.i.i20.i.i, i64 2, i64 3
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa133, i64 %i.am ; 4 uses
  %.val8.i.i = load i32, ptr %i.al, align 4, !alias.scope !1322, !noalias !1323, !noundef !3 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.al, i64 4
  %.val9.i.i = load i32, ptr %i.ao, align 4, !range !6, !alias.scope !1322, !noalias !1323, !noundef !3
  %.val10.i.i = load i32, ptr %i.ag, align 4, !alias.scope !1322, !noalias !1323, !noundef !3 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ag, i64 4
  %.val11.i.i = load i32, ptr %i.ap, align 4, !range !6, !alias.scope !1322, !noalias !1323, !noundef !3
  %i.aq = icmp eq i32 %.val10.i.i, %.val8.i.i
  %i.ar = icmp ult i32 %.val10.i.i, %.val8.i.i
  %i.as = icmp samesign ult i32 %.val11.i.i, %.val9.i.i
  %.sroa.0.0.i.i.i21.i.i = select i1 %i.aq, i1 %i.as, i1 %i.ar ; 3 uses
  %.val4.i.i = load i32, ptr %i.an, align 4, !alias.scope !1322, !noalias !1323, !noundef !3 ; 2 uses
  %i.at = getelementptr i8, ptr %i.an, i64 4
  %.val5.i.i = load i32, ptr %i.at, align 4, !range !6, !alias.scope !1322, !noalias !1323, !noundef !3
  %.val6.i.i = load i32, ptr %i.aj, align 4, !alias.scope !1322, !noalias !1323, !noundef !3 ; 2 uses
  %i.au = getelementptr i8, ptr %i.aj, i64 4
  %.val7.i.i = load i32, ptr %i.au, align 4, !range !6, !alias.scope !1322, !noalias !1323, !noundef !3
  %i.av = icmp eq i32 %.val6.i.i, %.val4.i.i
  %i.aw = icmp ult i32 %.val6.i.i, %.val4.i.i
  %i.ax = icmp samesign ult i32 %.val7.i.i, %.val5.i.i
  %.sroa.0.0.i.i.i22.i.i = select i1 %i.av, i1 %i.ax, i1 %i.aw ; 3 uses
  %i.ay = select i1 %.sroa.0.0.i.i.i21.i.i, ptr %i.al, ptr %i.ag, !unpredictable !3
  %i.az = select i1 %.sroa.0.0.i.i.i22.i.i, ptr %i.aj, ptr %i.an, !unpredictable !3
  %i.ba = select i1 %.sroa.0.0.i.i.i22.i.i, ptr %i.al, ptr %i.aj, !unpredictable !3
  %i.bb = select i1 %.sroa.0.0.i.i.i21.i.i, ptr %i.ag, ptr %i.ba, !unpredictable !3 ; 4 uses
  %i.bc = select i1 %.sroa.0.0.i.i.i21.i.i, ptr %i.aj, ptr %i.al, !unpredictable !3
  %i.bd = select i1 %.sroa.0.0.i.i.i22.i.i, ptr %i.an, ptr %i.bc, !unpredictable !3 ; 4 uses
  %.val.i.i = load i32, ptr %i.bd, align 4, !alias.scope !1322, !noalias !1323, !noundef !3 ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 4
  %.val1.i.i = load i32, ptr %i.be, align 4, !range !6, !alias.scope !1322, !noalias !1323, !noundef !3
  %.val2.i.i = load i32, ptr %i.bb, align 4, !alias.scope !1322, !noalias !1323, !noundef !3 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.bb, i64 4
  %.val3.i.i = load i32, ptr %i.bf, align 4, !range !6, !alias.scope !1322, !noalias !1323, !noundef !3
  %i.bg = icmp eq i32 %.val2.i.i, %.val.i.i
  %i.bh = icmp ult i32 %.val2.i.i, %.val.i.i
  %i.bi = icmp samesign ult i32 %.val3.i.i, %.val1.i.i
  %.sroa.0.0.i.i.i23.i.i = select i1 %i.bg, i1 %i.bi, i1 %i.bh ; 2 uses
  %i.bj = select i1 %.sroa.0.0.i.i.i23.i.i, ptr %i.bd, ptr %i.bb, !unpredictable !3
  %i.bk = select i1 %.sroa.0.0.i.i.i23.i.i, ptr %i.bb, ptr %i.bd, !unpredictable !3
  %i.bl = load i64, ptr %i.ay, align 4, !alias.scope !1322, !noalias !1323
  store i64 %i.bl, ptr %2, align 4, !alias.scope !1323, !noalias !1322
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bn = load i64, ptr %i.bj, align 4, !alias.scope !1322, !noalias !1323
  store i64 %i.bn, ptr %i.bm, align 4, !alias.scope !1323, !noalias !1322
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = load i64, ptr %i.bk, align 4, !alias.scope !1322, !noalias !1323
  store i64 %i.bp, ptr %i.bo, align 4, !alias.scope !1323, !noalias !1322
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.br = load i64, ptr %i.az, align 4, !alias.scope !1322, !noalias !1323
  store i64 %i.br, ptr %i.bq, align 4, !alias.scope !1323, !noalias !1322
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa133, i64 %i.l ; 12 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.l ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.val16.i30.i = load i32, ptr %i.bu, align 4, !alias.scope !1322, !noalias !1323, !noundef !3 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bs, i64 12
  %.val17.i31.i = load i32, ptr %i.bv, align 4, !range !6, !alias.scope !1322, !noalias !1323, !noundef !3
  %.val18.i32.i = load i32, ptr %i.bs, align 4, !alias.scope !1322, !noalias !1323, !noundef !3 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bs, i64 4
  %.val19.i33.i = load i32, ptr %i.bw, align 4, !range !6, !alias.scope !1322, !noalias !1323, !noundef !3
  %i.bx = icmp eq i32 %.val18.i32.i, %.val16.i30.i
  %i.by = icmp ult i32 %.val18.i32.i, %.val16.i30.i
  %i.bz = icmp samesign ult i32 %.val19.i33.i, %.val17.i31.i
  %.sroa.0.0.i.i.i.i34.i = select i1 %i.bx, i1 %i.bz, i1 %i.by ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %.val12.i35.i = load i32, ptr %i.ca, align 4, !alias.scope !1322, !noalias !1323, !noundef !3 ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bs, i64 28
  %.val13.i36.i = load i32, ptr %i.cc, align 4, !range !6, !alias.scope !1322, !noalias !1323, !noundef !3
  %.val14.i37.i = load i32, ptr %i.cb, align 4, !alias.scope !1322, !noalias !1323, !noundef !3 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bs, i64 20
  %.val15.i38.i = load i32, ptr %i.cd, align 4, !range !6, !alias.scope !1322, !noalias !1323, !noundef !3
  %i.ce = icmp eq i32 %.val14.i37.i, %.val12.i35.i
  %i.cf = icmp ult i32 %.val14.i37.i, %.val12.i35.i
  %i.cg = icmp samesign ult i32 %.val15.i38.i, %.val13.i36.i
  %.sroa.0.0.i.i.i20.i39.i = select i1 %i.ce, i1 %i.cg, i1 %i.cf ; 2 uses
  %i.ch = zext i1 %.sroa.0.0.i.i.i.i34.i to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ch ; 4 uses
  %i.cj = xor i1 %.sroa.0.0.i.i.i.i34.i, true
  %i.ck = zext i1 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ck ; 5 uses
  %i.cm = select i1 %.sroa.0.0.i.i.i20.i39.i, i64 3, i64 2
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cm ; 5 uses
  %i.co = select i1 %.sroa.0.0.i.i.i20.i39.i, i64 2, i64 3
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.co ; 4 uses
  %.val8.i40.i = load i32, ptr %i.cn, align 4, !alias.scope !1322, !noalias !1323, !noundef !3 ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cn, i64 4
  %.val9.i41.i = load i32, ptr %i.cq, align 4, !range !6, !alias.scope !1322, !noalias !1323, !noundef !3
  %.val10.i42.i = load i32, ptr %i.ci, align 4, !alias.scope !1322, !noalias !1323, !noundef !3 ; 2 uses
  %i.cr = getelementptr i8, ptr %i.ci, i64 4
  %.val11.i43.i = load i32, ptr %i.cr, align 4, !range !6, !alias.scope !1322, !noalias !1323, !noundef !3
  %i.cs = icmp eq i32 %.val10.i42.i, %.val8.i40.i
  %i.ct = icmp ult i32 %.val10.i42.i, %.val8.i40.i
  %i.cu = icmp samesign ult i32 %.val11.i43.i, %.val9.i41.i
  %.sroa.0.0.i.i.i21.i44.i = select i1 %i.cs, i1 %i.cu, i1 %i.ct ; 3 uses
  %.val4.i45.i = load i32, ptr %i.cp, align 4, !alias.scope !1322, !noalias !1323, !noundef !3 ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cp, i64 4
  %.val5.i46.i = load i32, ptr %i.cv, align 4, !range !6, !alias.scope !1322, !noalias !1323, !noundef !3
  %.val6.i47.i = load i32, ptr %i.cl, align 4, !alias.scope !1322, !noalias !1323, !noundef !3 ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cl, i64 4
  %.val7.i48.i = load i32, ptr %i.cw, align 4, !range !6, !alias.scope !1322, !noalias !1323, !noundef !3
  %i.cx = icmp eq i32 %.val6.i47.i, %.val4.i45.i
  %i.cy = icmp ult i32 %.val6.i47.i, %.val4.i45.i
  %i.cz = icmp samesign ult i32 %.val7.i48.i, %.val5.i46.i
  %.sroa.0.0.i.i.i22.i49.i = select i1 %i.cx, i1 %i.cz, i1 %i.cy ; 3 uses
  %i.da = select i1 %.sroa.0.0.i.i.i21.i44.i, ptr %i.cn, ptr %i.ci, !unpredictable !3
  %i.db = select i1 %.sroa.0.0.i.i.i22.i49.i, ptr %i.cl, ptr %i.cp, !unpredictable !3
  %i.dc = select i1 %.sroa.0.0.i.i.i22.i49.i, ptr %i.cn, ptr %i.cl, !unpredictable !3
  %i.dd = select i1 %.sroa.0.0.i.i.i21.i44.i, ptr %i.ci, ptr %i.dc, !unpredictable !3 ; 4 uses
  %i.de = select i1 %.sroa.0.0.i.i.i21.i44.i, ptr %i.cl, ptr %i.cn, !unpredictable !3
  %i.df = select i1 %.sroa.0.0.i.i.i22.i49.i, ptr %i.cp, ptr %i.de, !unpredictable !3 ; 4 uses
  %.val.i50.i = load i32, ptr %i.df, align 4, !alias.scope !1322, !noalias !1323, !noundef !3 ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 4
  %.val1.i51.i = load i32, ptr %i.dg, align 4, !range !6, !alias.scope !1322, !noalias !1323, !noundef !3
  %.val2.i52.i = load i32, ptr %i.dd, align 4, !alias.scope !1322, !noalias !1323, !noundef !3 ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dd, i64 4
  %.val3.i53.i = load i32, ptr %i.dh, align 4, !range !6, !alias.scope !1322, !noalias !1323, !noundef !3
  %i.di = icmp eq i32 %.val2.i52.i, %.val.i50.i
  %i.dj = icmp ult i32 %.val2.i52.i, %.val.i50.i
  %i.dk = icmp samesign ult i32 %.val3.i53.i, %.val1.i51.i
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseB15_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2u_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2A_:bb.a
  %i.fc = getelementptr i8, ptr %i.gb, i64 8      ; 2 uses
  %i.fd = getelementptr i8, ptr %i.ga, i64 8
  %i.fe = and i64 %.sroa.16.0.lcssa, 1
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %bb.l, label %bb.k

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.fs, %.lr.ph.i.i ], [ %.sroa.0.0.ph.lcssa133, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.fg, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %i.fr, %.lr.ph.i.i ], [ %2, %.loopexit.1.i ] ; 4 uses
  %.sroa.011.07.i.i = phi ptr [ %i.fp, %.lr.ph.i.i ], [ %i.eb, %.loopexit.1.i ] ; 4 uses
  %.sroa.015.06.i.i = phi ptr [ %i.gb, %.lr.ph.i.i ], [ %i.fb, %.loopexit.1.i ] ; 4 uses
  %.sroa.017.05.i.i = phi ptr [ %i.ga, %.lr.ph.i.i ], [ %i.fa, %.loopexit.1.i ] ; 4 uses
  %.sroa.019.04.i.i = phi ptr [ %i.gc, %.lr.ph.i.i ], [ %i.ez, %.loopexit.1.i ] ; 2 uses
  %i.fg = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %.sroa.011.0.val.i.i = load i32, ptr %.sroa.011.07.i.i, align 4, !alias.scope !1326, !noalias !1322, !noundef !3 ; 2 uses
  %i.fh = getelementptr i8, ptr %.sroa.011.07.i.i, i64 4
  %.sroa.011.0.val24.i.i = load i32, ptr %i.fh, align 4, !range !6, !alias.scope !1326, !noalias !1322, !noundef !3
  %.sroa.06.0.val.i.i = load i32, ptr %.sroa.06.08.i.i, align 4, !alias.scope !1326, !noalias !1322, !noundef !3 ; 2 uses
  %i.fi = getelementptr i8, ptr %.sroa.06.08.i.i, i64 4
  %.sroa.06.0.val25.i.i = load i32, ptr %i.fi, align 4, !range !6, !alias.scope !1326, !noalias !1322, !noundef !3
  %i.fj = icmp eq i32 %.sroa.06.0.val.i.i, %.sroa.011.0.val.i.i
  %i.fk = icmp ult i32 %.sroa.06.0.val.i.i, %.sroa.011.0.val.i.i
  %i.fl = icmp samesign ult i32 %.sroa.06.0.val25.i.i, %.sroa.011.0.val24.i.i
  %.sroa.0.0.i.i.i.i55.i = select i1 %i.fj, i1 %i.fl, i1 %i.fk ; 3 uses
  %..i23.i.i = select i1 %.sroa.0.0.i.i.i.i55.i, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  %i.fm = xor i1 %.sroa.0.0.i.i.i.i55.i, true
  %i.fn = load i64, ptr %..i23.i.i, align 4, !alias.scope !1326, !noalias !1327
  store i64 %i.fn, ptr %.sroa.0.010.i.i, align 4, !alias.scope !1322, !noalias !1328
  %i.fo = zext i1 %.sroa.0.0.i.i.i.i55.i to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.07.i.i, i64 %i.fo ; 4 uses
  %i.fq = zext i1 %i.fm to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.08.i.i, i64 %i.fq ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 8 ; 2 uses
  %.sroa.017.0.val.i.i = load i32, ptr %.sroa.017.05.i.i, align 4, !alias.scope !1326, !noalias !1322, !noundef !3 ; 2 uses
  %i.ft = getelementptr i8, ptr %.sroa.017.05.i.i, i64 4
  %.sroa.017.0.val26.i.i = load i32, ptr %i.ft, align 4, !range !6, !alias.scope !1326, !noalias !1322, !noundef !3
  %.sroa.015.0.val.i.i = load i32, ptr %.sroa.015.06.i.i, align 4, !alias.scope !1326, !noalias !1322, !noundef !3 ; 2 uses
  %i.fu = getelementptr i8, ptr %.sroa.015.06.i.i, i64 4
  %.sroa.015.0.val27.i.i = load i32, ptr %i.fu, align 4, !range !6, !alias.scope !1326, !noalias !1322, !noundef !3
  %i.fv = icmp eq i32 %.sroa.015.0.val.i.i, %.sroa.017.0.val.i.i
  %i.fw = icmp ult i32 %.sroa.015.0.val.i.i, %.sroa.017.0.val.i.i
  %i.fx = icmp samesign ult i32 %.sroa.015.0.val27.i.i, %.sroa.017.0.val26.i.i
  %.sroa.0.0.i.i.i28.i.i = select i1 %i.fv, i1 %i.fx, i1 %i.fw ; 3 uses
  %..i.i.i = select i1 %.sroa.0.0.i.i.i28.i.i, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.fy = xor i1 %.sroa.0.0.i.i.i28.i.i, true
  %i.fz = load i64, ptr %..i.i.i, align 4, !alias.scope !1326, !noalias !1329
  store i64 %i.fz, ptr %.sroa.019.04.i.i, align 4, !alias.scope !1322, !noalias !1330
  %.neg.i.i.i = sext i1 %i.fy to i64
  %i.ga = getelementptr [8 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %.sroa.0.0.i.i.i28.i.i to i64
  %i.gb = getelementptr [8 x i8], ptr %.sroa.015.06.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.gc = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -8
  %exitcond.not.i.i = icmp eq i64 %i.fg, %i.l
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.gd = icmp ult ptr %i.fr, %i.fc               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.gd, ptr %i.fr, ptr %i.fp
  %i.ge = load i64, ptr %.sroa.06.0..sroa.011.0.i.i, align 4, !alias.scope !1326, !noalias !1322
  store i64 %i.ge, ptr %i.fs, align 4, !alias.scope !1322, !noalias !1326
  %i.gf = zext i1 %i.gd to i64
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.gf
  %i.gh = xor i1 %i.gd, true
  %i.gi = zext i1 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.gi
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.fp, %._crit_edge.i.i ], [ %i.gj, %bb.k ]
  %.sroa.06.1.i.i = phi ptr [ %i.fr, %._crit_edge.i.i ], [ %i.gg, %bb.k ]
  %i.gk = icmp ne ptr %.sroa.06.1.i.i, %i.fc
  %i.gl = icmp ne ptr %.sroa.011.1.i.i, %i.fd
  %or.cond.i.i = select i1 %i.gk, i1 true, i1 %i.gl, !prof !8
  br i1 %or.cond.i.i, label %bb.m, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyINtNtBa_3cmp7ReverseB1s_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2R_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2X_.exit, !prof !8

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #22
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.gm = landingpad { ptr, i32 }
          cleanup
  %i.gn = shl nuw nsw i64 %.sroa.16.0.lcssa, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph.lcssa133, ptr nonnull align 4 %2, i64 %i.gn, i1 false), !alias.scope !1331, !noalias !1332
  resume { ptr, i32 } %i.gm

.lr.ph.i:                                         ; preds = %bb.j, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseB18_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2x_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2D_.exit.i
  %.sroa.05.08.i = phi i64 [ %i.hi, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseB18_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2x_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2D_.exit.i ], [ %.sroa.0.0.i, %bb.j ] ; 4 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa133, i64 %.sroa.05.08.i
  %.idx = shl nuw nsw i64 %.sroa.05.08.i, 3
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 4 uses
  %i.gq = load i64, ptr %i.go, align 4, !alias.scope !1322, !noalias !1323 ; 4 uses
  store i64 %i.gq, ptr %i.gp, align 4, !alias.scope !1323, !noalias !1322
  %i.gr = getelementptr inbounds i8, ptr %i.gp, i64 -8 ; 3 uses
  %i.gs = trunc i64 %i.gq to i32                  ; 4 uses
  %i.gt = lshr i64 %i.gq, 32
  %i.gu = trunc nuw i64 %i.gt to i32              ; 2 uses
  %.val13.i58.i = load i32, ptr %i.gr, align 4, !alias.scope !1323, !noalias !1322, !noundef !3 ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gp, i64 -4
  %.val14.i59.i = load i32, ptr %i.gv, align 4, !range !6, !alias.scope !1323, !noalias !1322, !noundef !3
  %i.gw = icmp eq i32 %.val13.i58.i, %i.gs
  %i.gx = icmp ult i32 %.val13.i58.i, %i.gs
  %i.gy = icmp samesign ult i32 %.val14.i59.i, %i.gu
  %.sroa.0.0.i.i.i.i60.i = select i1 %i.gw, i1 %i.gy, i1 %i.gx
  br i1 %.sroa.0.0.i.i.i.i60.i, label %.preheader.i.preheader, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseB18_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2x_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2D_.exit.i

.preheader.i.preheader:                           ; preds = %.lr.ph.i
  %i.gz = load i64, ptr %i.gr, align 4, !alias.scope !1323, !noalias !1322
  store i64 %i.gz, ptr %i.gp, align 4, !alias.scope !1323, !noalias !1322
  %i.ha = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.ha, label %._crit_edge322, label %.lr.ph321

.preheader.i:                                     ; preds = %.lr.ph321
  %i.hb = load i64, ptr %i.hd, align 4, !alias.scope !1323, !noalias !1322
  store i64 %i.hb, ptr %.sroa.0.0.i61.i320, align 4, !alias.scope !1323, !noalias !1322
  %i.hc = icmp eq ptr %i.hd, %2
  br i1 %i.hc, label %._crit_edge322, label %.lr.ph321

.lr.ph321:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.0.0.i61.i320 = phi ptr [ %i.hd, %.preheader.i ], [ %i.gr, %.preheader.i.preheader ] ; 4 uses
  %i.hd = getelementptr inbounds i8, ptr %.sroa.0.0.i61.i320, i64 -8 ; 4 uses
  %.val9.i62.i = load i32, ptr %i.hd, align 4, !alias.scope !1323, !noalias !1322, !noundef !3 ; 2 uses
  %i.he = getelementptr i8, ptr %.sroa.0.0.i61.i320, i64 -4
  %.val10.i63.i = load i32, ptr %i.he, align 4, !range !6, !alias.scope !1323, !noalias !1322, !noundef !3
  %i.hf = icmp eq i32 %.val9.i62.i, %i.gs
  %i.hg = icmp ult i32 %.val9.i62.i, %i.gs
  %i.hh = icmp samesign ult i32 %.val10.i63.i, %i.gu
  %.sroa.0.0.i.i.i15.i.i = select i1 %i.hf, i1 %i.hh, i1 %i.hg
  br i1 %.sroa.0.0.i.i.i15.i.i, label %.preheader.i, label %._crit_edge322

._crit_edge322:                                   ; preds = %.preheader.i, %.lr.ph321, %.preheader.i.preheader
  %.sroa.0.0.i61.lcssa.i = phi ptr [ %2, %.preheader.i.preheader ], [ %2, %.preheader.i ], [ %.sroa.0.0.i61.i320, %.lr.ph321 ]
  store i64 %i.gq, ptr %.sroa.0.0.i61.lcssa.i, align 4, !alias.scope !1323, !noalias !1324
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseB18_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2x_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2D_.exit.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseB18_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2x_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2D_.exit.i: ; preds = %._crit_edge322, %.lr.ph.i
  %i.hi = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.hi, %i.l
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0136.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph142, %.lr.ph ]
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSBW_11sort_by_keyINtNtBa_3cmp7ReverseBW_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2j_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2p_(ptr noalias noundef nonnull align 4 %.sroa.0.0.ph143, i64 noundef %.sroa.16.0136.lcssa, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyINtNtBa_3cmp7ReverseB1s_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2R_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2X_.exit

.lr.ph316:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0135315 = phi i32 [ %i.hj, %bb.b ], [ %.sroa.025.0.ph141, %.lr.ph ]
  %.sroa.16.0136314 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph142, %.lr.ph ] ; 19 uses
  %i.hj = add i32 %.sroa.025.0135315, -1          ; 4 uses
  %i.hk = lshr i64 %.sroa.16.0136314, 3           ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.hk, 5
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph143, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.hk, 56
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph143, i64 %.idx2.i ; 4 uses
  %i.hn = icmp samesign ult i64 %.sroa.16.0136314, 64
  br i1 %i.hn, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph316
  %i.ho = call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyINtNtBa_3cmp7ReverseB14_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2t_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2z_(ptr noundef nonnull readonly align 4 %.sroa.0.0.ph143, ptr noundef readonly %i.hl, ptr noundef readonly %i.hm, i64 noundef %i.hk)
  br label %bb.r

bb.p:                                             ; preds = %.lr.ph316
  %.val10.i = load i32, ptr %.sroa.0.0.ph143, align 4, !alias.scope !1333, !noundef !3 ; 4 uses
  %.val11.i = load i32, ptr %i.d, align 4, !range !6, !alias.scope !1333, !noundef !3 ; 2 uses
  %.val12.i = load i32, ptr %i.hl, align 4, !alias.scope !1333, !noundef !3 ; 4 uses
  %i.hp = getelementptr i8, ptr %i.hl, i64 4
  %.val13.i = load i32, ptr %i.hp, align 4, !range !6, !alias.scope !1333, !noundef !3 ; 2 uses
  %i.hq = icmp eq i32 %.val12.i, %.val10.i
  %i.hr = icmp ult i32 %.val12.i, %.val10.i
  %i.hs = icmp samesign ult i32 %.val13.i, %.val11.i
  %.sroa.0.0.i.i.i.i = select i1 %i.hq, i1 %i.hs, i1 %i.hr ; 2 uses
  %.val8.i = load i32, ptr %i.hm, align 4, !alias.scope !1333, !noundef !3 ; 4 uses
  %i.ht = getelementptr i8, ptr %i.hm, i64 4
  %.val9.i = load i32, ptr %i.ht, align 4, !range !6, !alias.scope !1333, !noundef !3 ; 2 uses
  %i.hu = icmp eq i32 %.val8.i, %.val10.i
  %i.hv = icmp ult i32 %.val8.i, %.val10.i
  %i.hw = icmp samesign ult i32 %.val9.i, %.val11.i
  %.sroa.0.0.i.i.i14.i = select i1 %i.hu, i1 %i.hw, i1 %i.hv
  %i.hx = xor i1 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i14.i
  br i1 %i.hx, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hy = icmp eq i32 %.val8.i, %.val12.i
  %i.hz = icmp ult i32 %.val8.i, %.val12.i
  %i.ia = icmp samesign ult i32 %.val9.i, %.val13.i
  %.sroa.0.0.i.i.i15.i = select i1 %i.hy, i1 %i.ia, i1 %i.hz
  %i.ib = xor i1 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i15.i
  %..i.i = select i1 %i.ib, ptr %i.hm, ptr %i.hl
  br label %bb.r

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyINtNtBa_3cmp7ReverseB1s_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2R_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2X_.exit: ; preds = %.outer._crit_edge.thread, %bb.l, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.sroa.0.0.i.sink.i = phi ptr [ %i.ho, %bb.o ], [ %.sroa.0.0.ph143, %bb.p ], [ %..i.i, %bb.q ]
  %i.ic = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.id = sub nuw i64 %i.ic, %i.e                 ; 3 uses
  %.sroa.0.0.i39 = lshr exact i64 %i.id, 3        ; 3 uses
  %i.ie = icmp samesign ult i64 %.sroa.0.0.i39, %.sroa.16.0136314
  call void @llvm.assume(i1 %i.ie)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph143, i64 %i.id
  %7 = load <2 x i32>, ptr %i.if, align 4         ; 4 uses
  %8 = extractelement <2 x i32> %7, i64 0         ; 5 uses
  store i32 %8, ptr %i.a, align 4
  %9 = extractelement <2 x i32> %7, i64 1         ; 3 uses
  store i32 %9, ptr %i.c, align 4
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.028.0.val = load i32, ptr %.sroa.028.0.ph140, align 4, !noundef !3 ; 2 uses
  %.sroa.028.0.val37 = load i32, ptr %i.f, align 4, !range !6, !noundef !3
  %i.ig = icmp eq i32 %8, %.sroa.028.0.val
  %i.ih = icmp ult i32 %8, %.sroa.028.0.val
  %i.ii = icmp samesign ult i32 %9, %.sroa.028.0.val37
  %.sroa.0.0.i.i.i = select i1 %i.ig, i1 %i.ii, i1 %i.ih
  br i1 %.sroa.0.0.i.i.i, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.r, %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  %.not95 = icmp samesign ult i64 %3, %.sroa.16.0136314
  br i1 %.not95, label %bb.v, label %bb.u, !prof !8

bb.u:                                             ; preds = %bb.t
  %i.ij = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0136314 ; 3 uses
  %10 = shufflevector <2 x i32> %7, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %11 = shufflevector <2 x i32> %7, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.x, %bb.u
  %.sroa.43.0.i = phi ptr [ %i.ij, %bb.u ], [ %i.jp, %bb.x ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.u ], [ %.sroa.27.2.lcssa.i, %bb.x ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph143, %bb.u ], [ %i.js, %bb.x ] ; 3 uses
  %.sroa.0.0.i40 = phi i64 [ %.sroa.0.0.i39, %bb.u ], [ %.sroa.16.0136314, %bb.x ] ; 3 uses
  %i.ik = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i40, i64 3)
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph143, i64 %i.ik ; 2 uses
  %i.im = icmp ult ptr %.sroa.9.0.i, %i.il
  br i1 %i.im, label %.lr.ph.i42, label %._crit_edge.i

.lr.ph.i42:                                       ; preds = %bb.w, %.lr.ph.i42
  %.sroa.9.131.i = phi ptr [ %i.iz, %.lr.ph.i42 ], [ %.sroa.9.0.i, %bb.w ] ; 6 uses
  %.sroa.27.130.i = phi i64 [ %i.iy, %.lr.ph.i42 ], [ %.sroa.27.0.i, %bb.w ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %18, %.lr.ph.i42 ], [ %.sroa.43.0.i, %bb.w ] ; 4 uses
  %i.in = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -8
  %12 = load i64, ptr %.sroa.9.131.i, align 4, !alias.scope !1334, !noalias !1336
  %13 = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 8
  %14 = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16
  %15 = load i64, ptr %13, align 4, !alias.scope !1334, !noalias !1337
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16
  %16 = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -24
  %i.ip = load i64, ptr %i.io, align 4, !alias.scope !1334, !noalias !1338
  %17 = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 24
  %18 = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32 ; 3 uses
  %19 = load i64, ptr %17, align 4, !alias.scope !1334, !noalias !1339
  %20 = load <8 x i32>, ptr %.sroa.9.131.i, align 4, !alias.scope !1334, !noalias !1335 ; 2 uses
  %21 = shufflevector <8 x i32> %20, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %22 = icmp eq <4 x i32> %10, %21
  %23 = icmp ult <4 x i32> %10, %21
  %24 = shufflevector <8 x i32> %20, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %25 = icmp samesign ult <4 x i32> %11, %24
  %26 = select <4 x i1> %22, <4 x i1> %25, <4 x i1> %23 ; 4 uses
  %27 = extractelement <4 x i1> %26, i64 0        ; 2 uses
  %.sroa.01.0.i35.i.a = select i1 %27, ptr %2, ptr %i.in
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i35.i.a, i64 %.sroa.27.130.i
  store i64 %12, ptr %i.iq, align 4, !alias.scope !1335, !noalias !1340
  %i.ir = zext i1 %27 to i64
  %i.is = add i64 %.sroa.27.130.i, %i.ir          ; 2 uses
  %28 = extractelement <4 x i1> %26, i64 1        ; 2 uses
  %.sroa.01.0.i37.i.a = select i1 %28, ptr %2, ptr %14
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i37.i.a, i64 %i.is
  store i64 %15, ptr %i.it, align 4, !alias.scope !1335, !noalias !1341
  %i.iu = zext i1 %28 to i64
  %i.iv = add i64 %i.is, %i.iu                    ; 2 uses
  %29 = extractelement <4 x i1> %26, i64 2        ; 2 uses
  %.sroa.01.0.i37.i = select i1 %29, ptr %2, ptr %16
  %30 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i37.i, i64 %i.iv
  store i64 %i.ip, ptr %30, align 4, !alias.scope !1335, !noalias !1342
  %31 = zext i1 %29 to i64
  %32 = add i64 %i.iv, %31                        ; 2 uses
  %33 = extractelement <4 x i1> %26, i64 3        ; 2 uses
  %.sroa.01.0.i39.i = select i1 %33, ptr %2, ptr %18
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i39.i, i64 %32
  store i64 %19, ptr %i.iw, align 4, !alias.scope !1335, !noalias !1343
  %i.ix = zext i1 %33 to i64
  %i.iy = add i64 %32, %i.ix                      ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32 ; 3 uses
  %i.ja = icmp ult ptr %i.iz, %i.il
  br i1 %i.ja, label %.lr.ph.i42, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i42, %bb.w
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.w ], [ %18, %.lr.ph.i42 ] ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.w ], [ %i.iy, %.lr.ph.i42 ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.w ], [ %i.iz, %.lr.ph.i42 ] ; 3 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph143, i64 %.sroa.0.0.i40 ; 2 uses
  %i.jc = icmp ult ptr %.sroa.9.1.lcssa.i, %i.jb
  br i1 %i.jc, label %.lr.ph38.i, label %._crit_edge39.i

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.ji, %.lr.ph38.i ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.jm, %.lr.ph38.i ] ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.jn, %.lr.ph38.i ] ; 2 uses
  %i.jd = icmp eq i64 %.sroa.0.0.i40, %.sroa.16.0136314
  br i1 %i.jd, label %bb.y, label %bb.x

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.jn, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.sroa.27.235.i = phi i64 [ %i.jm, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.ji, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %.val.i = load i32, ptr %.sroa.9.236.i, align 4, !alias.scope !1334, !noalias !1335, !noundef !3 ; 2 uses
  %i.je = getelementptr i8, ptr %.sroa.9.236.i, i64 4
  %.val15.i = load i32, ptr %i.je, align 4, !range !6, !alias.scope !1334, !noalias !1335, !noundef !3
  %i.jf = icmp eq i32 %8, %.val.i
  %i.jg = icmp ult i32 %8, %.val.i
  %i.jh = icmp samesign ult i32 %9, %.val15.i
  %.sroa.0.0.i.i.i40.i = select i1 %i.jf, i1 %i.jh, i1 %i.jg ; 2 uses
  %i.ji = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -8 ; 3 uses
  %.sroa.01.0.i41.i = select i1 %.sroa.0.0.i.i.i40.i, ptr %2, ptr %i.ji
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i41.i, i64 %.sroa.27.235.i
  %i.jk = load i64, ptr %.sroa.9.236.i, align 4, !alias.scope !1334, !noalias !1344
  store i64 %i.jk, ptr %i.jj, align 4, !alias.scope !1335, !noalias !1345
  %i.jl = zext i1 %.sroa.0.0.i.i.i40.i to i64
  %i.jm = add i64 %.sroa.27.235.i, %i.jl          ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 8 ; 3 uses
  %i.jo = icmp ult ptr %i.jn, %i.jb
  br i1 %i.jo, label %.lr.ph38.i, label %._crit_edge39.i

bb.x:                                             ; preds = %._crit_edge39.i
  %i.jp = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -8 ; 2 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %.sroa.27.2.lcssa.i
  %i.jr = load i64, ptr %.sroa.9.2.lcssa.i, align 4, !alias.scope !1334, !noalias !1346
  store i64 %i.jr, ptr %i.jq, align 4, !alias.scope !1335, !noalias !1347
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 8
  br label %bb.w

bb.y:                                             ; preds = %._crit_edge39.i
  %i.jt = shl i64 %.sroa.27.2.lcssa.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph143, ptr nonnull align 4 %2, i64 %i.jt, i1 false), !alias.scope !1348
  %i.ju = sub i64 %.sroa.16.0136314, %.sroa.27.2.lcssa.i ; 5 uses
  %.not47.i = icmp eq i64 %.sroa.16.0136314, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.y
  %i.jv = getelementptr [8 x i8], ptr %.sroa.0.0.ph143, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check333 = icmp ult i64 %i.ju, 4
  br i1 %min.iters.check333, label %scalar.ph332.preheader, label %vector.ph334

vector.ph334:                                     ; preds = %.lr.ph45.i
  %n.vec335 = and i64 %i.ju, -4                   ; 3 uses
  br label %vector.body336

vector.body336:                                   ; preds = %vector.body336, %vector.ph334
  %index337 = phi i64 [ 0, %vector.ph334 ], [ %index.next342, %vector.body336 ] ; 3 uses
  %i.jw = xor i64 %index337, -1
  %i.jx = getelementptr [8 x i8], ptr %i.ij, i64 %i.jw ; 2 uses
  %i.jy = getelementptr [8 x i8], ptr %i.jv, i64 %index337 ; 2 uses
  %i.jz = getelementptr i8, ptr %i.jx, i64 -8
  %i.ka = getelementptr i8, ptr %i.jx, i64 -24
  %wide.load338 = load <2 x i64>, ptr %i.jz, align 4, !alias.scope !1335, !noalias !1334
  %wide.load339 = load <2 x i64>, ptr %i.ka, align 4, !alias.scope !1335, !noalias !1334
  %reverse340 = shufflevector <2 x i64> %wide.load338, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse341 = shufflevector <2 x i64> %wide.load339, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.kb = getelementptr i8, ptr %i.jy, i64 16
  store <2 x i64> %reverse340, ptr %i.jy, align 4, !alias.scope !1334, !noalias !1335
  store <2 x i64> %reverse341, ptr %i.kb, align 4, !alias.scope !1334, !noalias !1335
  %index.next342 = add nuw i64 %index337, 4       ; 2 uses
  %i.kc = icmp eq i64 %index.next342, %n.vec335
  br i1 %i.kc, label %middle.block343, label %vector.body336, !llvm.loop !1300

middle.block343:                                  ; preds = %vector.body336
  %cmp.n344 = icmp eq i64 %i.ju, %n.vec335
  br i1 %cmp.n344, label %.loopexit, label %scalar.ph332.preheader

scalar.ph332.preheader:                           ; preds = %.lr.ph45.i, %middle.block343
  %.sroa.07.043.i.ph = phi i64 [ 0, %.lr.ph45.i ], [ %n.vec335, %middle.block343 ]
  br label %scalar.ph332

scalar.ph332:                                     ; preds = %scalar.ph332.preheader, %scalar.ph332
  %.sroa.07.043.i = phi i64 [ %i.kd, %scalar.ph332 ], [ %.sroa.07.043.i.ph, %scalar.ph332.preheader ] ; 3 uses
  %i.kd = add nuw i64 %.sroa.07.043.i, 1          ; 2 uses
  %i.ke = xor i64 %.sroa.07.043.i, -1
  %i.kf = getelementptr [8 x i8], ptr %i.ij, i64 %i.ke
  %i.kg = getelementptr [8 x i8], ptr %i.jv, i64 %.sroa.07.043.i
  %i.kh = load i64, ptr %i.kf, align 4, !alias.scope !1335, !noalias !1334
  store i64 %i.kh, ptr %i.kg, align 4, !alias.scope !1334, !noalias !1335
  %exitcond.not.i41 = icmp eq i64 %i.kd, %i.ju
  br i1 %exitcond.not.i41, label %.loopexit, label %scalar.ph332, !llvm.loop !1301

.loopexit:                                        ; preds = %scalar.ph332, %middle.block343, %bb.y
  %i.ki = icmp eq i64 %.sroa.27.2.lcssa.i, 0
  br i1 %i.ki, label %.thread, label %bb.z

bb.z:                                             ; preds = %.loopexit
  %.not.i44 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0136314
  br i1 %.not.i44, label %bb.aa, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit, !prof !9

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22, !noalias !1351
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.z
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph143, i64 %.sroa.27.2.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph143) ]
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseB15_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2u_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2A_(ptr noalias noundef nonnull align 4 %i.kj, i64 noundef %i.ju, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.hj, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.kk = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.kk, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.s, %.loopexit
  %34 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph143, i64 %i.id ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %34, i64 4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  %.not96 = icmp samesign ult i64 %3, %.sroa.16.0136314
  br i1 %.not96, label %bb.ac, label %bb.ab, !prof !8

bb.ab:                                            ; preds = %.thread
  %i.km = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0136314 ; 3 uses
  br label %bb.ad

bb.ac:                                            ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.ad:                                            ; preds = %bb.af, %bb.ab
  %.sroa.43.0.i47 = phi ptr [ %i.km, %bb.ab ], [ %i.mt, %bb.af ] ; 2 uses
  %.sroa.27.0.i48 = phi i64 [ 0, %bb.ab ], [ %i.mw, %bb.af ] ; 2 uses
  %.sroa.9.0.i49 = phi ptr [ %.sroa.0.0.ph143, %bb.ab ], [ %i.mx, %bb.af ] ; 3 uses
  %.sroa.0.0.i50 = phi i64 [ %.sroa.0.0.i39, %bb.ab ], [ %.sroa.16.0136314, %bb.af ] ; 3 uses
  %i.kn = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i50, i64 3)
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph143, i64 %i.kn ; 2 uses
  %i.kp = icmp ult ptr %.sroa.9.0.i49, %i.ko
  br i1 %i.kp, label %.lr.ph.i72, label %._crit_edge.i51

.lr.ph.i72:                                       ; preds = %bb.ad
  %.val32.i73 = load i32, ptr %34, align 4, !alias.scope !1352, !noalias !1353, !noundef !3 ; 8 uses
  %.val33.i79 = load i32, ptr %i.kl, align 4, !range !6, !alias.scope !1352, !noalias !1353, !noundef !3 ; 4 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.i72
  %.sroa.9.131.i74 = phi ptr [ %.sroa.9.0.i49, %.lr.ph.i72 ], [ %i.md, %bb.ae ] ; 10 uses
  %.sroa.27.130.i75 = phi i64 [ %.sroa.27.0.i48, %.lr.ph.i72 ], [ %i.mc, %bb.ae ] ; 2 uses
  %.sroa.43.129.i76 = phi ptr [ %.sroa.43.0.i47, %.lr.ph.i72 ], [ %i.ly, %bb.ae ] ; 4 uses
  %.val30.i77 = load i32, ptr %.sroa.9.131.i74, align 4, !alias.scope !1352, !noalias !1353, !noundef !3 ; 2 uses
  %i.kq = getelementptr i8, ptr %.sroa.9.131.i74, i64 4
  %.val31.i78 = load i32, ptr %i.kq, align 4, !range !6, !alias.scope !1352, !noalias !1353, !noundef !3
  %i.kr = icmp eq i32 %.val30.i77, %.val32.i73
  %i.ks = icmp uge i32 %.val30.i77, %.val32.i73
  %i.kt = icmp samesign uge i32 %.val31.i78, %.val33.i79
  %.sroa.0.0.i.i.i.i.i80 = select i1 %i.kr, i1 %i.kt, i1 %i.ks ; 2 uses
  %i.ku = getelementptr inbounds i8, ptr %.sroa.43.129.i76, i64 -8
  %.sroa.01.0.i.i81 = select i1 %.sroa.0.0.i.i.i.i.i80, ptr %2, ptr %i.ku
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i81, i64 %.sroa.27.130.i75
  %i.kw = load i64, ptr %.sroa.9.131.i74, align 4, !alias.scope !1352, !noalias !1354
  store i64 %i.kw, ptr %i.kv, align 4, !alias.scope !1353, !noalias !1355
  %i.kx = zext i1 %.sroa.0.0.i.i.i.i.i80 to i64
  %i.ky = add i64 %.sroa.27.130.i75, %i.kx        ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i74, i64 8 ; 2 uses
  %.val26.i82 = load i32, ptr %i.kz, align 4, !alias.scope !1352, !noalias !1353, !noundef !3 ; 2 uses
  %i.la = getelementptr i8, ptr %.sroa.9.131.i74, i64 12
  %.val27.i83 = load i32, ptr %i.la, align 4, !range !6, !alias.scope !1352, !noalias !1353, !noundef !3
  %i.lb = icmp eq i32 %.val26.i82, %.val32.i73
  %i.lc = icmp uge i32 %.val26.i82, %.val32.i73
  %i.ld = icmp samesign uge i32 %.val27.i83, %.val33.i79
  %.sroa.0.0.i.i.i.i34.i84 = select i1 %i.lb, i1 %i.ld, i1 %i.lc ; 2 uses
  %i.le = getelementptr inbounds i8, ptr %.sroa.43.129.i76, i64 -16
  %.sroa.01.0.i35.i85 = select i1 %.sroa.0.0.i.i.i.i34.i84, ptr %2, ptr %i.le
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i35.i85, i64 %i.ky
  %i.lg = load i64, ptr %i.kz, align 4, !alias.scope !1352, !noalias !1356
  store i64 %i.lg, ptr %i.lf, align 4, !alias.scope !1353, !noalias !1357
  %i.lh = zext i1 %.sroa.0.0.i.i.i.i34.i84 to i64
  %i.li = add i64 %i.ky, %i.lh                    ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i74, i64 16 ; 2 uses
  %.val22.i86 = load i32, ptr %i.lj, align 4, !alias.scope !1352, !noalias !1353, !noundef !3 ; 2 uses
  %i.lk = getelementptr i8, ptr %.sroa.9.131.i74, i64 20
  %.val23.i87 = load i32, ptr %i.lk, align 4, !range !6, !alias.scope !1352, !noalias !1353, !noundef !3
  %i.ll = icmp eq i32 %.val22.i86, %.val32.i73
  %i.lm = icmp uge i32 %.val22.i86, %.val32.i73
  %i.ln = icmp samesign uge i32 %.val23.i87, %.val33.i79
  %.sroa.0.0.i.i.i.i36.i = select i1 %i.ll, i1 %i.ln, i1 %i.lm ; 2 uses
  %i.lo = getelementptr inbounds i8, ptr %.sroa.43.129.i76, i64 -24
  %.sroa.01.0.i37.i88 = select i1 %.sroa.0.0.i.i.i.i36.i, ptr %2, ptr %i.lo
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i37.i88, i64 %i.li
  %i.lq = load i64, ptr %i.lj, align 4, !alias.scope !1352, !noalias !1358
  store i64 %i.lq, ptr %i.lp, align 4, !alias.scope !1353, !noalias !1359
  %i.lr = zext i1 %.sroa.0.0.i.i.i.i36.i to i64
  %i.ls = add i64 %i.li, %i.lr                    ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i74, i64 24 ; 2 uses
  %.val18.i89 = load i32, ptr %i.lt, align 4, !alias.scope !1352, !noalias !1353, !noundef !3 ; 2 uses
  %i.lu = getelementptr i8, ptr %.sroa.9.131.i74, i64 28
  %.val19.i90 = load i32, ptr %i.lu, align 4, !range !6, !alias.scope !1352, !noalias !1353, !noundef !3
  %i.lv = icmp eq i32 %.val18.i89, %.val32.i73
  %i.lw = icmp uge i32 %.val18.i89, %.val32.i73
  %i.lx = icmp samesign uge i32 %.val19.i90, %.val33.i79
  %.sroa.0.0.i.i.i.i38.i = select i1 %i.lv, i1 %i.lx, i1 %i.lw ; 2 uses
  %i.ly = getelementptr inbounds i8, ptr %.sroa.43.129.i76, i64 -32 ; 3 uses
  %.sroa.01.0.i39.i91 = select i1 %.sroa.0.0.i.i.i.i38.i, ptr %2, ptr %i.ly
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i39.i91, i64 %i.ls
  %i.ma = load i64, ptr %i.lt, align 4, !alias.scope !1352, !noalias !1360
  store i64 %i.ma, ptr %i.lz, align 4, !alias.scope !1353, !noalias !1361
  %i.mb = zext i1 %.sroa.0.0.i.i.i.i38.i to i64
  %i.mc = add i64 %i.ls, %i.mb                    ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i74, i64 32 ; 3 uses
  %i.me = icmp ult ptr %i.md, %i.ko
  br i1 %i.me, label %bb.ae, label %._crit_edge.i51

._crit_edge.i51:                                  ; preds = %bb.ae, %bb.ad
  %.sroa.43.1.lcssa.i52 = phi ptr [ %.sroa.43.0.i47, %bb.ad ], [ %i.ly, %bb.ae ] ; 2 uses
  %.sroa.27.1.lcssa.i53 = phi i64 [ %.sroa.27.0.i48, %bb.ad ], [ %i.mc, %bb.ae ] ; 2 uses
  %.sroa.9.1.lcssa.i54 = phi ptr [ %.sroa.9.0.i49, %bb.ad ], [ %i.md, %bb.ae ] ; 3 uses
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph143, i64 %.sroa.0.0.i50 ; 2 uses
  %i.mg = icmp ult ptr %.sroa.9.1.lcssa.i54, %i.mf
  br i1 %i.mg, label %.lr.ph38.i63.preheader, label %._crit_edge39.i55

.lr.ph38.i63.preheader:                           ; preds = %._crit_edge.i51
  %.val16.i69 = load i32, ptr %34, align 4, !alias.scope !1352, !noalias !1353, !noundef !3 ; 2 uses
  %.val17.i70 = load i32, ptr %i.kl, align 4, !range !6, !alias.scope !1352, !noalias !1353, !noundef !3
  br label %.lr.ph38.i63

._crit_edge39.i55:                                ; preds = %.lr.ph38.i63, %._crit_edge.i51
  %.sroa.43.2.lcssa.i56 = phi ptr [ %.sroa.43.1.lcssa.i52, %._crit_edge.i51 ], [ %i.mm, %.lr.ph38.i63 ]
  %.sroa.27.2.lcssa.i57 = phi i64 [ %.sroa.27.1.lcssa.i53, %._crit_edge.i51 ], [ %i.mq, %.lr.ph38.i63 ] ; 9 uses
  %.sroa.9.2.lcssa.i58 = phi ptr [ %.sroa.9.1.lcssa.i54, %._crit_edge.i51 ], [ %i.mr, %.lr.ph38.i63 ] ; 2 uses
  %i.mh = icmp eq i64 %.sroa.0.0.i50, %.sroa.16.0136314
  br i1 %i.mh, label %bb.ag, label %bb.af

.lr.ph38.i63:                                     ; preds = %.lr.ph38.i63.preheader, %.lr.ph38.i63
  %.sroa.9.236.i64 = phi ptr [ %i.mr, %.lr.ph38.i63 ], [ %.sroa.9.1.lcssa.i54, %.lr.ph38.i63.preheader ] ; 4 uses
  %.sroa.27.235.i65 = phi i64 [ %i.mq, %.lr.ph38.i63 ], [ %.sroa.27.1.lcssa.i53, %.lr.ph38.i63.preheader ] ; 2 uses
  %.sroa.43.234.i66 = phi ptr [ %i.mm, %.lr.ph38.i63 ], [ %.sroa.43.1.lcssa.i52, %.lr.ph38.i63.preheader ]
  %.val.i67 = load i32, ptr %.sroa.9.236.i64, align 4, !alias.scope !1352, !noalias !1353, !noundef !3 ; 2 uses
  %i.mi = getelementptr i8, ptr %.sroa.9.236.i64, i64 4
  %.val15.i68 = load i32, ptr %i.mi, align 4, !range !6, !alias.scope !1352, !noalias !1353, !noundef !3
  %i.mj = icmp eq i32 %.val.i67, %.val16.i69
  %i.mk = icmp uge i32 %.val.i67, %.val16.i69
  %i.ml = icmp samesign uge i32 %.val15.i68, %.val17.i70
  %.sroa.0.0.i.i.i.i40.i = select i1 %i.mj, i1 %i.ml, i1 %i.mk ; 2 uses
  %i.mm = getelementptr inbounds i8, ptr %.sroa.43.234.i66, i64 -8 ; 3 uses
  %.sroa.01.0.i41.i71 = select i1 %.sroa.0.0.i.i.i.i40.i, ptr %2, ptr %i.mm
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i41.i71, i64 %.sroa.27.235.i65
  %i.mo = load i64, ptr %.sroa.9.236.i64, align 4, !alias.scope !1352, !noalias !1362
  store i64 %i.mo, ptr %i.mn, align 4, !alias.scope !1353, !noalias !1363
  %i.mp = zext i1 %.sroa.0.0.i.i.i.i40.i to i64
  %i.mq = add i64 %.sroa.27.235.i65, %i.mp        ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i64, i64 8 ; 3 uses
  %i.ms = icmp ult ptr %i.mr, %i.mf
  br i1 %i.ms, label %.lr.ph38.i63, label %._crit_edge39.i55

bb.af:                                            ; preds = %._crit_edge39.i55
  %i.mt = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i56, i64 -8
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i57
  %i.mv = load i64, ptr %.sroa.9.2.lcssa.i58, align 4, !alias.scope !1352, !noalias !1364
  store i64 %i.mv, ptr %i.mu, align 4, !alias.scope !1353, !noalias !1365
  %i.mw = add i64 %.sroa.27.2.lcssa.i57, 1
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i58, i64 8
  br label %bb.ad

bb.ag:                                            ; preds = %._crit_edge39.i55
  %i.my = shl i64 %.sroa.27.2.lcssa.i57, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph143, ptr nonnull align 4 %2, i64 %i.my, i1 false), !alias.scope !1366
  %i.mz = sub i64 %.sroa.16.0136314, %.sroa.27.2.lcssa.i57 ; 7 uses
  %.not47.i59 = icmp eq i64 %.sroa.16.0136314, %.sroa.27.2.lcssa.i57
  br i1 %.not47.i59, label %.outer._crit_edge.thread, label %.lr.ph45.i60

.lr.ph45.i60:                                     ; preds = %bb.ag
  %i.na = getelementptr [8 x i8], ptr %.sroa.0.0.ph143, i64 %.sroa.27.2.lcssa.i57 ; 2 uses
  %min.iters.check = icmp ult i64 %i.mz, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph45.i60
  %n.vec = and i64 %i.mz, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.nb = xor i64 %index, -1
  %i.nc = getelementptr [8 x i8], ptr %i.km, i64 %i.nb ; 2 uses
  %i.nd = getelementptr [8 x i8], ptr %i.na, i64 %index ; 2 uses
  %i.ne = getelementptr i8, ptr %i.nc, i64 -8
  %i.nf = getelementptr i8, ptr %i.nc, i64 -24
  %wide.load = load <2 x i64>, ptr %i.ne, align 4, !alias.scope !1353, !noalias !1352
  %wide.load330 = load <2 x i64>, ptr %i.nf, align 4, !alias.scope !1353, !noalias !1352
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse331 = shufflevector <2 x i64> %wide.load330, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ng = getelementptr i8, ptr %i.nd, i64 16
  store <2 x i64> %reverse, ptr %i.nd, align 4, !alias.scope !1352, !noalias !1353
  store <2 x i64> %reverse331, ptr %i.ng, align 4, !alias.scope !1352, !noalias !1353
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nh = icmp eq i64 %index.next, %n.vec
  br i1 %i.nh, label %middle.block, label %vector.body, !llvm.loop !1320

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mz, %n.vec
  br i1 %cmp.n, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmcENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2Y_14UnigramTrainer25make_seed_sentence_piecess0_0E0E0EB34_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph45.i60, %middle.block
  %.sroa.07.043.i61.ph = phi i64 [ 0, %.lr.ph45.i60 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.07.043.i61 = phi i64 [ %i.ni, %scalar.ph ], [ %.sroa.07.043.i61.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ni = add nuw i64 %.sroa.07.043.i61, 1        ; 2 uses
  %i.nj = xor i64 %.sroa.07.043.i61, -1
  %i.nk = getelementptr [8 x i8], ptr %i.km, i64 %i.nj
  %i.nl = getelementptr [8 x i8], ptr %i.na, i64 %.sroa.07.043.i61
  %i.nm = load i64, ptr %i.nk, align 4, !alias.scope !1353, !noalias !1352
  store i64 %i.nm, ptr %i.nl, align 4, !alias.scope !1352, !noalias !1353
  %exitcond.not.i62 = icmp eq i64 %i.ni, %i.mz
  br i1 %exitcond.not.i62, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmcENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2Y_14UnigramTrainer25make_seed_sentence_piecess0_0E0E0EB34_.exit, label %scalar.ph, !llvm.loop !1321

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmcENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2Y_14UnigramTrainer25make_seed_sentence_piecess0_0E0E0EB34_.exit: ; preds = %scalar.ph, %middle.block
  %i.nn = icmp ugt i64 %.sroa.27.2.lcssa.i57, %.sroa.16.0136314
  br i1 %i.nn, label %bb.ah, label %.outer, !prof !9

.outer._crit_edge.thread:                         ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyINtNtBa_3cmp7ReverseB1s_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2R_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2X_.exit

.outer:                                           ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmcENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2Y_14UnigramTrainer25make_seed_sentence_piecess0_0E0E0EB34_.exit
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph143, i64 %.sroa.27.2.lcssa.i57 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.np = icmp ult i64 %i.mz, 33
  br i1 %i.np, label %.outer._crit_edge, label %.lr.ph

bb.ah:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmcENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2Y_14UnigramTrainer25make_seed_sentence_piecess0_0E0E0EB34_.exit
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i57, i64 noundef %.sroa.16.0136314, i64 noundef %.sroa.16.0136314, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #22
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB15_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2u_9WordPieceNtNtB2y_9tokenizer5Model4save0E0EB2y_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = lshr i64 %1, 1
  %i.c = add nuw nsw i64 %i.b, %1                 ; 2 uses
  %.not18 = icmp eq i64 %i.c, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph20

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB16_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2v_9WordPieceNtNtB2z_9tokenizer5Model4save0E0EB2z_.exit, %bb.a
  ret void

.lr.ph20:                                         ; preds = %bb.a, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB16_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2v_9WordPieceNtNtB2z_9tokenizer5Model4save0E0EB2z_.exit
  %.sroa.2.019 = phi i64 [ %i.d, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB16_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2v_9WordPieceNtNtB2z_9tokenizer5Model4save0E0EB2z_.exit ], [ %i.c, %bb.a ]
  %i.d = add nsw i64 %.sroa.2.019, -1             ; 6 uses
  %.not9 = icmp ult i64 %i.d, %1
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph20
  %i.e = sub nuw nsw i64 %i.d, %1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph20
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.04.0 = phi i64 [ %i.e, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %.sroa.0.0.i14 = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.d) ; 4 uses
  %i.g = icmp ule i64 %.sroa.04.0, %.sroa.0.0.i14
  tail call void @llvm.assume(i1 %i.g)
  %i.h = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.i = or disjoint i64 %i.h, 1                  ; 2 uses
  %.not.i15 = icmp samesign ult i64 %i.i, %.sroa.0.0.i14
  br i1 %.not.i15, label %.lr.ph, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB16_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2v_9WordPieceNtNtB2z_9tokenizer5Model4save0E0EB2z_.exit

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %i.j = phi i64 [ %i.ae, %bb.g ], [ %i.i, %bb.d ] ; 3 uses
  %i.k = phi i64 [ %i.ad, %bb.g ], [ %i.h, %bb.d ]
  %.sroa.0.0.i16 = phi i64 [ %.sroa.04.0.i, %bb.g ], [ %.sroa.04.0, %bb.d ]
  %i.l = add nuw nsw i64 %i.k, 2                  ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, %.sroa.0.0.i14
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.j
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %.val = load ptr, ptr %i.p, align 8, !nonnull !3, !align !4, !noundef !3
  %i.q = getelementptr i8, ptr %i.o, i64 8
  %.val11 = load ptr, ptr %i.q, align 8, !nonnull !3, !align !4, !noundef !3
  %i.r = load i32, ptr %.val, align 4, !noundef !3
  %i.s = load i32, ptr %.val11, align 4, !noundef !3
  %i.t = icmp ult i32 %i.r, %i.s
  %i.u = zext i1 %i.t to i64
  %i.v = add nuw nsw i64 %i.j, %i.u
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.v, %bb.e ], [ %i.j, %.lr.ph ] ; 3 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.0.i16 ; 2 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i ; 2 uses
  %i.y = getelementptr i8, ptr %i.w, i64 8
  %.val12 = load ptr, ptr %i.y, align 8, !nonnull !3, !align !4, !noundef !3
  %i.z = getelementptr i8, ptr %i.x, i64 8
  %.val13 = load ptr, ptr %i.z, align 8, !nonnull !3, !align !4, !noundef !3
  %i.aa = load i32, ptr %.val12, align 4, !noundef !3
  %i.ab = load i32, ptr %.val13, align 4, !noundef !3
  %i.ac = icmp ult i32 %i.aa, %i.ab
  br i1 %i.ac, label %bb.g, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB16_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2v_9WordPieceNtNtB2z_9tokenizer5Model4save0E0EB2z_.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull %i.w, ptr noundef nonnull %i.x, i64 noundef 2)
  %i.ad = shl nuw nsw i64 %.sroa.04.0.i, 1        ; 2 uses
  %i.ae = or disjoint i64 %i.ad, 1                ; 2 uses
  %.not.i = icmp samesign ult i64 %i.ae, %.sroa.0.0.i14
  br i1 %.not.i, label %.lr.ph, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB16_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2v_9WordPieceNtNtB2z_9tokenizer5Model4save0E0EB2z_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB16_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2v_9WordPieceNtNtB2z_9tokenizer5Model4save0E0EB2z_.exit: ; preds = %bb.f, %bb.g, %bb.d
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph20
}
end_hunk_1
begin_hunk_2_@llvm.memset.p0.i64
!1137 = distinct !{!1137, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_"}
!1138 = distinct !{!1138, !1137, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_: argument 1"}
!1139 = distinct !{!1139, !1137, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_: argument 0"}
!1140 = distinct !{!1140, !1135, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_: argument 0"}
!1141 = distinct !{!1141, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_"}
!1142 = distinct !{!1142, !1141, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_: argument 1"}
!1143 = distinct !{!1143, !1141, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_: argument 0"}
!1144 = distinct !{!1144, !"_RNvXs_NtCs4NRVxsYgnAr_4core3cmpINtB4_7ReverseTmRScEENtB4_10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers"}
!1145 = distinct !{!1145, !1144, !"_RNvXs_NtCs4NRVxsYgnAr_4core3cmpINtB4_7ReverseTmRScEENtB4_10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers: argument 1"}
!1146 = distinct !{!1146, !1144, !"_RNvXs_NtCs4NRVxsYgnAr_4core3cmpINtB4_7ReverseTmRScEENtB4_10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1147 = distinct !{!1147, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTmRScENtNtB7_3cmp10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers"}
!1148 = distinct !{!1148, !1147, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTmRScENtNtB7_3cmp10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers: argument 1"}
!1149 = distinct !{!1149, !1147, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTmRScENtNtB7_3cmp10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1150 = distinct !{!1150, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmRScEE13partition_oneCs2JiOgHzbbc7_10tokenizers"}
!1151 = distinct !{!1151, !1150, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmRScEE13partition_oneCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1152 = distinct !{!1152, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmRScEE13partition_oneCs2JiOgHzbbc7_10tokenizers"}
!1153 = distinct !{!1153, !1152, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmRScEE13partition_oneCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1154 = distinct !{!1154, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmRScE12split_at_mutCs2JiOgHzbbc7_10tokenizers"}
!1155 = distinct !{!1155, !1154, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmRScE12split_at_mutCs2JiOgHzbbc7_10tokenizers: argument 1"}
!1156 = distinct !{!1156, !1154, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmRScE12split_at_mutCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1157 = distinct !{!1157, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmRScENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB30_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0EB36_"}
!1158 = distinct !{!1158, !1157, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmRScENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB30_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0EB36_: argument 0"}
!1159 = distinct !{!1159, !1157, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmRScENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB30_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0EB36_: argument 1"}
!1160 = distinct !{!1160, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyINtNtBc_3cmp7ReverseB17_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2y_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0B2E_"}
!1161 = distinct !{!1161, !1160, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyINtNtBc_3cmp7ReverseB17_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2y_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0B2E_: argument 1"}
!1162 = distinct !{!1162, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_"}
!1163 = distinct !{!1163, !1162, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_: argument 0"}
!1164 = distinct !{!1164, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_"}
!1165 = distinct !{!1165, !1164, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_: argument 1"}
!1166 = distinct !{!1166, !1164, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_: argument 0"}
!1167 = distinct !{!1167, !1160, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyINtNtBc_3cmp7ReverseB17_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2y_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0B2E_: argument 0"}
!1168 = distinct !{!1168, !1162, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_: argument 1"}
!1169 = distinct !{!1169, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_"}
!1170 = distinct !{!1170, !1169, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_: argument 1"}
!1171 = distinct !{!1171, !1169, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_: argument 0"}
!1172 = distinct !{!1172, !"_RNvXs_NtCs4NRVxsYgnAr_4core3cmpINtB4_7ReverseTmRScEENtB4_10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers"}
!1173 = distinct !{!1173, !1172, !"_RNvXs_NtCs4NRVxsYgnAr_4core3cmpINtB4_7ReverseTmRScEENtB4_10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers: argument 1"}
!1174 = distinct !{!1174, !1172, !"_RNvXs_NtCs4NRVxsYgnAr_4core3cmpINtB4_7ReverseTmRScEENtB4_10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1175 = distinct !{!1175, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTmRScENtNtB7_3cmp10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers"}
!1176 = distinct !{!1176, !1175, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTmRScENtNtB7_3cmp10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers: argument 1"}
!1177 = distinct !{!1177, !1175, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTmRScENtNtB7_3cmp10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1178 = distinct !{!1178, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmRScEE13partition_oneCs2JiOgHzbbc7_10tokenizers"}
!1179 = distinct !{!1179, !1178, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmRScEE13partition_oneCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1180 = distinct !{!1180, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmRScEE13partition_oneCs2JiOgHzbbc7_10tokenizers"}
!1181 = distinct !{!1181, !1180, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmRScEE13partition_oneCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1182 = !{!1013}
!1183 = !{!1013, !1014}
!1184 = !{!1016}
!1185 = !{!1017}
!1186 = !{!1020, !1019, !1016, !1014}
!1187 = !{!1017, !1013}
!1188 = !{!1023, !1022, !1017, !1014}
!1189 = !{!1016, !1013}
!1190 = !{!1014}
!1191 = !{!1028, !1027, !1025, !1014}
!1192 = !{!1029, !1013}
!1193 = !{!1033, !1031, !1013}
!1194 = !{!1035}
!1195 = !{!1036}
!1196 = !{!1041, !1040, !1035, !1038, !1014}
!1197 = !{!1036, !1013}
!1198 = !{!1044, !1043, !1036, !1038, !1014}
!1199 = !{!1035, !1013}
!1200 = !{!1047, !1046}
!1201 = !{!1049}
!1202 = !{!1050}
!1203 = !{!1053, !1052, !1049, !1038, !1014}
!1204 = !{!1050, !1013}
!1205 = !{!1056, !1055, !1050, !1038, !1014}
!1206 = !{!1049, !1013}
!1207 = !{!1059, !1058}
!1208 = !{!1063, !1061}
!1209 = !{!1064}
!1210 = !{!1065}
!1211 = !{!1020, !1019, !1064, !1014}
!1212 = !{!1065, !1013}
!1213 = !{!1023, !1022, !1065, !1014}
!1214 = !{!1064, !1013}
!1215 = !{!1069, !1067, !1013}
!1216 = !{!1071}
!1217 = !{!1073}
!1218 = !{!1074}
!1219 = !{!1077, !1076, !1073, !1071}
!1220 = !{!1080, !1079, !1074, !1071}
!1221 = !{!1086, !1085, !1083, !1082, !1073, !1074, !1071}
!1222 = !{!1088}
!1223 = !{!1089}
!1224 = !{!1092, !1091, !1089, !1071}
!1225 = !{!1095, !1094, !1088, !1071}
!1226 = !{!1101, !1100, !1098, !1097, !1088, !1089, !1071}
!1227 = !{!1103}
!1228 = !{!1104}
!1229 = !{!1107, !1106, !1104, !1071}
!1230 = !{!1110, !1109, !1103, !1071}
!1231 = !{!1116, !1115, !1113, !1112, !1103, !1104, !1071}
!1232 = !{!1118}
!1233 = !{!1119}
!1234 = !{!1122, !1121, !1118}
!1235 = !{!1125, !1124, !1119}
!1236 = !{!1131, !1130, !1128, !1127, !1118, !1119}
!1237 = !{!1133}
!1238 = !{!1134}
!1239 = !{!1139, !1138, !1136, !1133}
!1240 = !{!1140, !1134}
!1241 = !{!1140}
!1242 = !{!1136}
!1243 = !{!1143, !1142, !1140, !1133}
!1244 = !{!1136, !1134}
!1245 = !{!1149, !1148, !1146, !1145, !1140, !1136, !1133, !1134}
!1246 = !{!1133, !1134}
!1247 = !{!1151}
!1248 = !{!1153}
!1249 = !{!1156, !1155}
!1250 = !{!1158}
!1251 = !{!1159}
!1252 = !{!1166, !1165, !1163, !1161, !1158}
!1253 = !{!1168, !1167, !1159}
!1254 = !{!1167}
!1255 = !{!1161}
!1256 = !{!1163}
!1257 = !{!1168}
!1258 = !{!1171, !1170, !1168, !1167, !1158}
!1259 = !{!1163, !1161, !1159}
!1260 = !{!1177, !1176, !1174, !1173, !1163, !1168, !1167, !1161, !1158, !1159}
!1261 = !{!1158, !1159}
!1262 = !{!1179}
!1263 = !{!1181}
!1264 = distinct !{!1264, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyINtNtBa_3cmp7ReverseB1s_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2R_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2X_"}
!1265 = distinct !{!1265, !1264, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyINtNtBa_3cmp7ReverseB1s_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2R_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2X_: argument 0"}
!1266 = distinct !{!1266, !1264, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyINtNtBa_3cmp7ReverseB1s_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2R_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2X_: argument 1"}
!1267 = distinct !{!1267, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTmcEEECs2JiOgHzbbc7_10tokenizers"}
!1268 = distinct !{!1268, !1267, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTmcEEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1269 = distinct !{!1269, !"_RNvXs5_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTmcEENtNtNtBd_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers"}
!1270 = distinct !{!1270, !1269, !"_RNvXs5_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTmcEENtNtNtBd_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1271 = distinct !{!1271, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1g_11sort_by_keyINtNtBa_3cmp7ReverseB1g_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2F_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2L_"}
!1272 = distinct !{!1272, !1271, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1g_11sort_by_keyINtNtBa_3cmp7ReverseB1g_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2F_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2L_: argument 0"}
!1273 = distinct !{!1273, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort8merge_upTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyINtNtBa_3cmp7ReverseB14_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2t_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2z_"}
!1274 = distinct !{!1274, !1273, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort8merge_upTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyINtNtBa_3cmp7ReverseB14_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2t_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2z_: argument 1"}
!1275 = distinct !{!1275, !1273, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort8merge_upTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyINtNtBa_3cmp7ReverseB14_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2t_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2z_: argument 0"}
!1276 = distinct !{!1276, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort10merge_downTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyINtNtBa_3cmp7ReverseB17_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2w_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2C_"}
!1277 = distinct !{!1277, !1276, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort10merge_downTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyINtNtBa_3cmp7ReverseB17_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2w_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2C_: argument 1"}
!1278 = distinct !{!1278, !1276, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort10merge_downTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyINtNtBa_3cmp7ReverseB17_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2w_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2C_: argument 0"}
!1279 = distinct !{!1279, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTmcEEECs2JiOgHzbbc7_10tokenizers"}
!1280 = distinct !{!1280, !1279, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTmcEEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1281 = distinct !{!1281, !"_RNvXs5_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTmcEENtNtNtBd_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers"}
!1282 = distinct !{!1282, !1281, !"_RNvXs5_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTmcEENtNtNtBd_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1283 = distinct !{!1283, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseB15_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2u_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2A_"}
!1284 = distinct !{!1284, !1283, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseB15_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2u_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2A_: argument 0"}
!1285 = distinct !{!1285, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2C_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2I_"}
!1286 = distinct !{!1286, !1285, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2C_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2I_: argument 0"}
!1287 = distinct !{!1287, !1285, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2C_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2I_: argument 1"}
!1288 = distinct !{!1288, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers"}
!1289 = distinct !{!1289, !1288, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1290 = distinct !{!1290, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers"}
!1291 = distinct !{!1291, !1290, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1292 = distinct !{!1292, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers"}
!1293 = distinct !{!1293, !1292, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1294 = distinct !{!1294, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers"}
!1295 = distinct !{!1295, !1294, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1296 = distinct !{!1296, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers"}
!1297 = distinct !{!1297, !1296, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1298 = distinct !{!1298, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers"}
!1299 = distinct !{!1299, !1298, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1300 = distinct !{!1300, !1349, !1350}
!1301 = distinct !{!1301, !1350, !1349}
!1302 = distinct !{!1302, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers"}
!1303 = distinct !{!1303, !1302, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers: argument 1"}
!1304 = distinct !{!1304, !1302, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1305 = distinct !{!1305, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmcENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2Y_14UnigramTrainer25make_seed_sentence_piecess0_0E0E0EB34_"}
!1306 = distinct !{!1306, !1305, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmcENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2Y_14UnigramTrainer25make_seed_sentence_piecess0_0E0E0EB34_: argument 0"}
!1307 = distinct !{!1307, !1305, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmcENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2Y_14UnigramTrainer25make_seed_sentence_piecess0_0E0E0EB34_: argument 1"}
!1308 = distinct !{!1308, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers"}
!1309 = distinct !{!1309, !1308, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1310 = distinct !{!1310, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers"}
!1311 = distinct !{!1311, !1310, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1312 = distinct !{!1312, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers"}
!1313 = distinct !{!1313, !1312, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1314 = distinct !{!1314, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers"}
!1315 = distinct !{!1315, !1314, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1316 = distinct !{!1316, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers"}
!1317 = distinct !{!1317, !1316, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1318 = distinct !{!1318, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers"}
!1319 = distinct !{!1319, !1318, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1320 = distinct !{!1320, !1349, !1350}
!1321 = distinct !{!1321, !1350, !1349}
!1322 = !{!1265}
!1323 = !{!1266}
!1324 = !{!1270, !1268, !1265}
!1325 = !{!1272}
!1326 = !{!1272, !1266}
!1327 = !{!1275, !1274, !1265}
!1328 = !{!1275, !1274, !1272, !1266}
!1329 = !{!1278, !1277, !1265}
!1330 = !{!1278, !1277, !1272, !1266}
!1331 = !{!1265, !1266}
!1332 = !{!1282, !1280}
!1333 = !{!1284}
!1334 = !{!1286}
!1335 = !{!1287}
!1336 = !{!1289, !1287}
!1337 = !{!1291, !1287}
!1338 = !{!1293, !1287}
!1339 = !{!1295, !1287}
!1340 = !{!1289, !1286}
!1341 = !{!1291, !1286}
!1342 = !{!1293, !1286}
!1343 = !{!1295, !1286}
!1344 = !{!1297, !1287}
!1345 = !{!1297, !1286}
!1346 = !{!1299, !1287}
!1347 = !{!1299, !1286}
!1348 = !{!1286, !1287}
!1349 = !{!"llvm.loop.isvectorized", i32 1}
!1350 = !{!"llvm.loop.unroll.runtime.disable"}
!1351 = !{!1304, !1303}
!1352 = !{!1306}
!1353 = !{!1307}
!1354 = !{!1309, !1307}
!1355 = !{!1309, !1306}
!1356 = !{!1311, !1307}
!1357 = !{!1311, !1306}
!1358 = !{!1313, !1307}
!1359 = !{!1313, !1306}
!1360 = !{!1315, !1307}
!1361 = !{!1315, !1306}
!1362 = !{!1317, !1307}
!1363 = !{!1317, !1306}
!1364 = !{!1319, !1307}
!1365 = !{!1319, !1306}
!1366 = !{!1306, !1307}
!1367 = distinct !{!1367, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB1f_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2E_9WordPieceNtNtB2I_9tokenizer5Model4save0E0EB2I_"}
!1368 = distinct !{!1368, !1367, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB1f_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2E_9WordPieceNtNtB2I_9tokenizer5Model4save0E0EB2I_: argument 0"}
!1369 = distinct !{!1369, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB1s_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2R_9WordPieceNtNtB2V_9tokenizer5Model4save0E0EB2V_"}
!1370 = distinct !{!1370, !1369, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB1s_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2R_9WordPieceNtNtB2V_9tokenizer5Model4save0E0EB2V_: argument 0"}
!1371 = distinct !{!1371, !1369, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB1s_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2R_9WordPieceNtNtB2V_9tokenizer5Model4save0E0EB2V_: argument 1"}
!1372 = distinct !{!1372, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTRNtNtCscdodAO9FK5_5alloc6string6StringRmEEECs2JiOgHzbbc7_10tokenizers"}
!1373 = distinct !{!1373, !1372, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTRNtNtCscdodAO9FK5_5alloc6string6StringRmEEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1374 = distinct !{!1374, !"_RNvXs5_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTRNtNtCscdodAO9FK5_5alloc6string6StringRmEENtNtNtBd_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers"}
!1375 = distinct !{!1375, !1374, !"_RNvXs5_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTRNtNtCscdodAO9FK5_5alloc6string6StringRmEENtNtNtBd_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1376 = distinct !{!1376, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB1g_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2F_9WordPieceNtNtB2J_9tokenizer5Model4save0E0EB2J_"}
!1377 = distinct !{!1377, !1376, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB1g_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2F_9WordPieceNtNtB2J_9tokenizer5Model4save0E0EB2J_: argument 0"}
!1378 = distinct !{!1378, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort8merge_upTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB14_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2t_9WordPieceNtNtB2x_9tokenizer5Model4save0E0EB2x_"}
!1379 = distinct !{!1379, !1378, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort8merge_upTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB14_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2t_9WordPieceNtNtB2x_9tokenizer5Model4save0E0EB2x_: argument 1"}
!1380 = distinct !{!1380, !1378, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort8merge_upTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB14_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2t_9WordPieceNtNtB2x_9tokenizer5Model4save0E0EB2x_: argument 0"}
!1381 = distinct !{!1381, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort10merge_downTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB17_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2w_9WordPieceNtNtB2A_9tokenizer5Model4save0E0EB2A_"}
!1382 = distinct !{!1382, !1381, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort10merge_downTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB17_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2w_9WordPieceNtNtB2A_9tokenizer5Model4save0E0EB2A_: argument 1"}
!1383 = distinct !{!1383, !1381, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort10merge_downTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB17_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2w_9WordPieceNtNtB2A_9tokenizer5Model4save0E0EB2A_: argument 0"}
!1384 = distinct !{!1384, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTRNtNtCscdodAO9FK5_5alloc6string6StringRmEEECs2JiOgHzbbc7_10tokenizers"}
!1385 = distinct !{!1385, !1384, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTRNtNtCscdodAO9FK5_5alloc6string6StringRmEEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1386 = distinct !{!1386, !"_RNvXs5_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTRNtNtCscdodAO9FK5_5alloc6string6StringRmEENtNtNtBd_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers"}
!1387 = distinct !{!1387, !1386, !"_RNvXs5_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTRNtNtCscdodAO9FK5_5alloc6string6StringRmEENtNtNtBd_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1388 = distinct !{!1388, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB15_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2u_9WordPieceNtNtB2y_9tokenizer5Model4save0E0EB2y_"}
!1389 = distinct !{!1389, !1388, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB15_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2u_9WordPieceNtNtB2y_9tokenizer5Model4save0E0EB2y_: argument 0"}
!1390 = distinct !{!1390, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9partitionTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB17_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2w_9WordPieceNtNtB2A_9tokenizer5Model4save0E0EB2A_"}
!1391 = distinct !{!1391, !1390, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9partitionTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB17_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2w_9WordPieceNtNtB2A_9tokenizer5Model4save0E0EB2A_: argument 0"}
!1392 = distinct !{!1392, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2W_9WordPieceNtNtB30_9tokenizer5Model4save0E0EB30_"}
!1393 = distinct !{!1393, !1392, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2W_9WordPieceNtNtB30_9tokenizer5Model4save0E0EB30_: argument 0"}
!1394 = distinct !{!1394, !1392, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2W_9WordPieceNtNtB30_9tokenizer5Model4save0E0EB30_: argument 1"}
!1395 = distinct !{!1395, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2Y_9WordPieceNtNtB32_9tokenizer5Model4save0E0E0B32_"}
!1396 = distinct !{!1396, !1395, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2Y_9WordPieceNtNtB32_9tokenizer5Model4save0E0E0B32_: argument 0"}
!1397 = distinct !{!1397, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2Y_9WordPieceNtNtB32_9tokenizer5Model4save0E0E0B32_"}
!1398 = distinct !{!1398, !1397, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2Y_9WordPieceNtNtB32_9tokenizer5Model4save0E0E0B32_: argument 0"}
!1399 = distinct !{!1399, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2Y_9WordPieceNtNtB32_9tokenizer5Model4save0E0E0B32_"}
!1400 = distinct !{!1400, !1399, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2Y_9WordPieceNtNtB32_9tokenizer5Model4save0E0E0B32_: argument 0"}
!1401 = distinct !{!1401, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9partitionTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvB2_9quicksortB17_NCINvMB8_SB17_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2S_9WordPieceNtNtB2W_9tokenizer5Model4save0E0E0EB2W_"}
!1402 = distinct !{!1402, !1401, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9partitionTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvB2_9quicksortB17_NCINvMB8_SB17_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2S_9WordPieceNtNtB2W_9tokenizer5Model4save0E0E0EB2W_: argument 0"}
!1403 = distinct !{!1403, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB3i_9WordPieceNtNtB3m_9tokenizer5Model4save0E0E0EB3m_"}
!1404 = distinct !{!1404, !1403, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB3i_9WordPieceNtNtB3m_9tokenizer5Model4save0E0E0EB3m_: argument 0"}
!1405 = distinct !{!1405, !1403, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB3i_9WordPieceNtNtB3m_9tokenizer5Model4save0E0E0EB3m_: argument 1"}
!1406 = distinct !{!1406, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB3k_9WordPieceNtNtB3o_9tokenizer5Model4save0E0E0E0B3o_"}
!1407 = distinct !{!1407, !1406, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB3k_9WordPieceNtNtB3o_9tokenizer5Model4save0E0E0E0B3o_: argument 0"}
!1408 = distinct !{!1408, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB3k_9WordPieceNtNtB3o_9tokenizer5Model4save0E0E0E0B3o_"}
!1409 = distinct !{!1409, !1408, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB3k_9WordPieceNtNtB3o_9tokenizer5Model4save0E0E0E0B3o_: argument 0"}
!1410 = distinct !{!1410, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB3k_9WordPieceNtNtB3o_9tokenizer5Model4save0E0E0E0B3o_"}
!1411 = distinct !{!1411, !1410, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB3k_9WordPieceNtNtB3o_9tokenizer5Model4save0E0E0E0B3o_: argument 0"}
!1412 = !{!1368}
!1413 = !{!1370}
!1414 = !{!1371}
!1415 = !{!1370, !1368}
!1416 = !{!1370, !1371}
!1417 = !{!1375, !1373, !1370, !1368}
!1418 = !{!1377}
!1419 = !{!1377, !1371}
!1420 = !{!1380, !1379}
!1421 = !{!1383, !1382}
!1422 = !{!1387, !1385}
!1423 = !{!1389}
!1424 = !{!1391}
!1425 = !{!1393}
!1426 = !{!1394}
!1427 = !{!1393, !1394, !1391}
!1428 = !{!1393, !1391}
!1429 = !{!1394, !1391}
!1430 = !{!1396, !1393, !1394}
!1431 = !{!1398, !1394}
!1432 = !{!1398, !1393, !1394}
!1433 = !{!1396, !1394}
!1434 = !{!1400, !1394}
!1435 = !{!1400, !1393, !1394}
!1436 = !{!1402}
!1437 = !{!1404}
!1438 = !{!1405}
!1439 = !{!1404, !1405, !1402}
!1440 = !{!1404, !1402}
!1441 = !{!1405, !1402}
!1442 = !{!1407, !1404, !1405}
!1443 = !{!1409, !1405}
!1444 = !{!1409, !1404, !1405}
!1445 = !{!1407, !1405}
!1446 = !{!1411, !1405}
!1447 = !{!1411, !1404, !1405}
!1448 = distinct !{!1448, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTRTmmERmENCINvMB8_SB1f_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB27_3BPENtNtB2d_9tokenizer5Model4saves_0E0EB2d_"}
!1449 = distinct !{!1449, !1448, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTRTmmERmENCINvMB8_SB1f_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB27_3BPENtNtB2d_9tokenizer5Model4saves_0E0EB2d_: argument 0"}
!1450 = distinct !{!1450, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTRTmmERmENCINvMB8_SB1s_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2k_3BPENtNtB2q_9tokenizer5Model4saves_0E0EB2q_"}
!1451 = distinct !{!1451, !1450, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTRTmmERmENCINvMB8_SB1s_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2k_3BPENtNtB2q_9tokenizer5Model4saves_0E0EB2q_: argument 0"}
!1452 = distinct !{!1452, !1450, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTRTmmERmENCINvMB8_SB1s_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2k_3BPENtNtB2q_9tokenizer5Model4saves_0E0EB2q_: argument 1"}
!1453 = distinct !{!1453, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTRTmmERmEEECs2JiOgHzbbc7_10tokenizers"}
!1454 = distinct !{!1454, !1453, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTRTmmERmEEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1455 = distinct !{!1455, !"_RNvXs5_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTRTmmERmEENtNtNtBd_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers"}
!1456 = distinct !{!1456, !1455, !"_RNvXs5_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTRTmmERmEENtNtNtBd_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1457 = distinct !{!1457, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeTRTmmERmENCINvMB8_SB1g_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB28_3BPENtNtB2e_9tokenizer5Model4saves_0E0EB2e_"}
!1458 = distinct !{!1458, !1457, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeTRTmmERmENCINvMB8_SB1g_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB28_3BPENtNtB2e_9tokenizer5Model4saves_0E0EB2e_: argument 0"}
!1459 = distinct !{!1459, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort8merge_upTRTmmERmENCINvMB8_SB14_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1W_3BPENtNtB22_9tokenizer5Model4saves_0E0EB22_"}
!1460 = distinct !{!1460, !1459, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort8merge_upTRTmmERmENCINvMB8_SB14_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1W_3BPENtNtB22_9tokenizer5Model4saves_0E0EB22_: argument 1"}
!1461 = distinct !{!1461, !1459, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort8merge_upTRTmmERmENCINvMB8_SB14_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1W_3BPENtNtB22_9tokenizer5Model4saves_0E0EB22_: argument 0"}
!1462 = distinct !{!1462, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort10merge_downTRTmmERmENCINvMB8_SB17_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1Z_3BPENtNtB25_9tokenizer5Model4saves_0E0EB25_"}
!1463 = distinct !{!1463, !1462, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort10merge_downTRTmmERmENCINvMB8_SB17_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1Z_3BPENtNtB25_9tokenizer5Model4saves_0E0EB25_: argument 1"}
!1464 = distinct !{!1464, !1462, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort10merge_downTRTmmERmENCINvMB8_SB17_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1Z_3BPENtNtB25_9tokenizer5Model4saves_0E0EB25_: argument 0"}
!1465 = distinct !{!1465, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTRTmmERmEEECs2JiOgHzbbc7_10tokenizers"}
!1466 = distinct !{!1466, !1465, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTRTmmERmEEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1467 = distinct !{!1467, !"_RNvXs5_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTRTmmERmEENtNtNtBd_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers"}
!1468 = distinct !{!1468, !1467, !"_RNvXs5_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTRTmmERmEENtNtNtBd_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1469 = distinct !{!1469, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTRTmmERmENCINvMB8_SB15_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1X_3BPENtNtB23_9tokenizer5Model4saves_0E0EB23_"}
!1470 = distinct !{!1470, !1469, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTRTmmERmENCINvMB8_SB15_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1X_3BPENtNtB23_9tokenizer5Model4saves_0E0EB23_: argument 0"}
!1471 = distinct !{!1471, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9partitionTRTmmERmENCINvMB8_SB17_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1Z_3BPENtNtB25_9tokenizer5Model4saves_0E0EB25_"}
!1472 = distinct !{!1472, !1471, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9partitionTRTmmERmENCINvMB8_SB17_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1Z_3BPENtNtB25_9tokenizer5Model4saves_0E0EB25_: argument 0"}
!1473 = distinct !{!1473, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2p_3BPENtNtB2v_9tokenizer5Model4saves_0E0EB2v_"}
!1474 = distinct !{!1474, !1473, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2p_3BPENtNtB2v_9tokenizer5Model4saves_0E0EB2v_: argument 0"}
!1475 = distinct !{!1475, !1473, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2p_3BPENtNtB2v_9tokenizer5Model4saves_0E0EB2v_: argument 1"}
!1476 = distinct !{!1476, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2r_3BPENtNtB2x_9tokenizer5Model4saves_0E0E0B2x_"}
!1477 = distinct !{!1477, !1476, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2r_3BPENtNtB2x_9tokenizer5Model4saves_0E0E0B2x_: argument 0"}
!1478 = distinct !{!1478, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2r_3BPENtNtB2x_9tokenizer5Model4saves_0E0E0B2x_"}
!1479 = distinct !{!1479, !1478, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2r_3BPENtNtB2x_9tokenizer5Model4saves_0E0E0B2x_: argument 0"}
!1480 = distinct !{!1480, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2r_3BPENtNtB2x_9tokenizer5Model4saves_0E0E0B2x_"}
!1481 = distinct !{!1481, !1480, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2r_3BPENtNtB2x_9tokenizer5Model4saves_0E0E0B2x_: argument 0"}
!1482 = distinct !{!1482, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9partitionTRTmmERmENCINvB2_9quicksortB17_NCINvMB8_SB17_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2l_3BPENtNtB2r_9tokenizer5Model4saves_0E0E0EB2r_"}
!1483 = distinct !{!1483, !1482, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9partitionTRTmmERmENCINvB2_9quicksortB17_NCINvMB8_SB17_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2l_3BPENtNtB2r_9tokenizer5Model4saves_0E0E0EB2r_: argument 0"}
!1484 = distinct !{!1484, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2L_3BPENtNtB2R_9tokenizer5Model4saves_0E0E0EB2R_"}
!1485 = distinct !{!1485, !1484, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2L_3BPENtNtB2R_9tokenizer5Model4saves_0E0E0EB2R_: argument 0"}
!1486 = distinct !{!1486, !1484, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2L_3BPENtNtB2R_9tokenizer5Model4saves_0E0E0EB2R_: argument 1"}
!1487 = distinct !{!1487, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2N_3BPENtNtB2T_9tokenizer5Model4saves_0E0E0E0B2T_"}
!1488 = distinct !{!1488, !1487, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2N_3BPENtNtB2T_9tokenizer5Model4saves_0E0E0E0B2T_: argument 0"}
!1489 = distinct !{!1489, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2N_3BPENtNtB2T_9tokenizer5Model4saves_0E0E0E0B2T_"}
!1490 = distinct !{!1490, !1489, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2N_3BPENtNtB2T_9tokenizer5Model4saves_0E0E0E0B2T_: argument 0"}
!1491 = distinct !{!1491, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2N_3BPENtNtB2T_9tokenizer5Model4saves_0E0E0E0B2T_"}
!1492 = distinct !{!1492, !1491, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2N_3BPENtNtB2T_9tokenizer5Model4saves_0E0E0E0B2T_: argument 0"}
!1493 = !{!1449}
!1494 = !{!1451}
!1495 = !{!1452}
!1496 = !{!1451, !1449}
!1497 = !{!1451, !1452}
!1498 = !{!1456, !1454, !1451, !1449}
!1499 = !{!1458}
!1500 = !{!1458, !1452}
!1501 = !{!1461, !1460}
!1502 = !{!1464, !1463}
!1503 = !{!1468, !1466}
!1504 = !{!1470}
!1505 = !{!1472}
!1506 = !{!1474}
!1507 = !{!1475}
!1508 = !{!1474, !1475, !1472}
!1509 = !{!1474, !1472}
!1510 = !{!1475, !1472}
!1511 = !{!1477, !1474, !1475}
!1512 = !{!1479, !1475}
!1513 = !{!1479, !1474, !1475}
!1514 = !{!1477, !1475}
!1515 = !{!1481, !1475}
!1516 = !{!1481, !1474, !1475}
!1517 = !{!1483}
!1518 = !{!1485}
!1519 = !{!1486}
!1520 = !{!1485, !1486, !1483}
!1521 = !{!1485, !1483}
!1522 = !{!1486, !1483}
!1523 = !{!1488, !1485, !1486}
!1524 = !{!1490, !1486}
!1525 = !{!1490, !1485, !1486}
!1526 = !{!1488, !1486}
!1527 = !{!1492, !1486}
!1528 = !{!1492, !1485, !1486}
!1529 = distinct !{!1529, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTRcRjENCINvMB8_SB1f_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB24_10BpeTrainer16compute_alphabets_0E0EB2a_"}
!1530 = distinct !{!1530, !1529, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTRcRjENCINvMB8_SB1f_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB24_10BpeTrainer16compute_alphabets_0E0EB2a_: argument 0"}
!1531 = distinct !{!1531, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTRcRjENCINvMB8_SB1s_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2h_10BpeTrainer16compute_alphabets_0E0EB2n_"}
!1532 = distinct !{!1532, !1531, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTRcRjENCINvMB8_SB1s_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2h_10BpeTrainer16compute_alphabets_0E0EB2n_: argument 0"}
!1533 = distinct !{!1533, !1531, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTRcRjENCINvMB8_SB1s_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2h_10BpeTrainer16compute_alphabets_0E0EB2n_: argument 1"}
!1534 = distinct !{!1534, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTRcRjEEECs2JiOgHzbbc7_10tokenizers"}
!1535 = distinct !{!1535, !1534, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTRcRjEEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1536 = distinct !{!1536, !"_RNvXs5_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTRcRjEENtNtNtBd_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers"}
!1537 = distinct !{!1537, !1536, !"_RNvXs5_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTRcRjEENtNtNtBd_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1538 = distinct !{!1538, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeTRcRjENCINvMB8_SB1g_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB25_10BpeTrainer16compute_alphabets_0E0EB2b_"}
!1539 = distinct !{!1539, !1538, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeTRcRjENCINvMB8_SB1g_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB25_10BpeTrainer16compute_alphabets_0E0EB2b_: argument 0"}
!1540 = distinct !{!1540, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort8merge_upTRcRjENCINvMB8_SB14_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1T_10BpeTrainer16compute_alphabets_0E0EB1Z_"}
!1541 = distinct !{!1541, !1540, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort8merge_upTRcRjENCINvMB8_SB14_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1T_10BpeTrainer16compute_alphabets_0E0EB1Z_: argument 1"}
!1542 = distinct !{!1542, !1540, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort8merge_upTRcRjENCINvMB8_SB14_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1T_10BpeTrainer16compute_alphabets_0E0EB1Z_: argument 0"}
end_hunk_2

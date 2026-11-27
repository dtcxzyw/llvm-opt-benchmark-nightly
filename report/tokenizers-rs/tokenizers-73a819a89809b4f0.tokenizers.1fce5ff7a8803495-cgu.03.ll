Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.03?download=true
inline.NumInlined: 920
inline.NumDeleted: 323
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB20_14UnigramTrainer21prune_sentence_piecess1_0E0EB26_:bb.a
  %i.fx = zext i1 %.mux.i.i33.i to i64
  %i.fy = add i64 %i.fu, %i.fx                    ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.9.146.i71, i64 64 ; 3 uses
  %i.ga = icmp ult ptr %i.fz, %i.fa
  br i1 %i.ga, label %.lr.ph.i70, label %._crit_edge.i51

._crit_edge.i51:                                  ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit34.i, %bb.au
  %.sroa.43.1.lcssa.i52 = phi ptr [ %.sroa.43.0.i47, %bb.au ], [ %i.fv, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit34.i ] ; 2 uses
  %.sroa.27.1.lcssa.i53 = phi i64 [ %.sroa.27.0.i48, %bb.au ], [ %i.fy, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit34.i ] ; 2 uses
  %.sroa.9.1.lcssa.i54 = phi ptr [ %.sroa.9.0.i49, %bb.au ], [ %i.fz, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit34.i ] ; 3 uses
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph194, i64 %.sroa.0.0.i50 ; 2 uses
  %i.gc = icmp ult ptr %.sroa.9.1.lcssa.i54, %i.gb
  br i1 %i.gc, label %.lr.ph53.i63, label %._crit_edge54.i55

._crit_edge54.i55:                                ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit38.i, %._crit_edge.i51
  %.sroa.43.2.lcssa.i56 = phi ptr [ %.sroa.43.1.lcssa.i52, %._crit_edge.i51 ], [ %i.gf, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit38.i ]
  %.sroa.27.2.lcssa.i57 = phi i64 [ %.sroa.27.1.lcssa.i53, %._crit_edge.i51 ], [ %i.gi, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit38.i ] ; 10 uses
  %.sroa.9.2.lcssa.i58 = phi ptr [ %.sroa.9.1.lcssa.i54, %._crit_edge.i51 ], [ %i.gj, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit38.i ] ; 2 uses
  %i.gd = icmp eq i64 %.sroa.0.0.i50, %.sroa.16.0187550
  br i1 %i.gd, label %bb.bb, label %bb.ba

.lr.ph53.i63:                                     ; preds = %._crit_edge.i51, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit38.i
  %.sroa.9.251.i64 = phi ptr [ %i.gj, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit38.i ], [ %.sroa.9.1.lcssa.i54, %._crit_edge.i51 ] ; 3 uses
  %.sroa.27.250.i65 = phi i64 [ %i.gi, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit38.i ], [ %.sroa.27.1.lcssa.i53, %._crit_edge.i51 ] ; 2 uses
  %.sroa.43.249.i66 = phi ptr [ %i.gf, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit38.i ], [ %.sroa.43.1.lcssa.i52, %._crit_edge.i51 ]
  %i.ge = getelementptr i8, ptr %.sroa.9.251.i64, i64 8
  %.val.i67 = load double, ptr %i.ge, align 8, !alias.scope !1062, !noundef !4 ; 2 uses
  %.val15.i68 = load double, ptr %i.co, align 8, !alias.scope !1062, !noundef !4 ; 2 uses
  %brmerge.not.i.i36.i = fcmp uno double %.val.i67, %.val15.i68
  br i1 %brmerge.not.i.i36.i, label %bb.az, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit38.i, !prof !8

bb.az:                                            ; preds = %.lr.ph53.i63
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22, !noalias !1064
  unreachable

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit38.i: ; preds = %.lr.ph53.i63
  %.mux.i.i37.i = fcmp uge double %.val.i67, %.val15.i68 ; 2 uses
  %i.gf = getelementptr inbounds i8, ptr %.sroa.43.249.i66, i64 -16 ; 3 uses
  %.sroa.01.0.i39.i69 = select i1 %.mux.i.i37.i, ptr %2, ptr %i.gf
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i39.i69, i64 %.sroa.27.250.i65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gg, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.251.i64, i64 16, i1 false), !alias.scope !1064, !noalias !1069
  %i.gh = zext i1 %.mux.i.i37.i to i64
  %i.gi = add i64 %.sroa.27.250.i65, %i.gh        ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.9.251.i64, i64 16 ; 3 uses
  %i.gk = icmp ult ptr %i.gj, %i.gb
  br i1 %i.gk, label %.lr.ph53.i63, label %._crit_edge54.i55

bb.ba:                                            ; preds = %._crit_edge54.i55
  %i.gl = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i56, i64 -16
  %i.gm = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gm, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i58, i64 16, i1 false), !alias.scope !1064, !noalias !1070
  %i.gn = add i64 %.sroa.27.2.lcssa.i57, 1
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i58, i64 16
  br label %bb.au

bb.bb:                                            ; preds = %._crit_edge54.i55
  %i.gp = shl i64 %.sroa.27.2.lcssa.i57, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph194, ptr nonnull align 8 %2, i64 %i.gp, i1 false), !alias.scope !1064
  %i.gq = sub i64 %.sroa.16.0187550, %.sroa.27.2.lcssa.i57 ; 6 uses
  %.not62.i59 = icmp eq i64 %.sroa.16.0187550, %.sroa.27.2.lcssa.i57
  br i1 %.not62.i59, label %.outer._crit_edge.thread, label %.lr.ph60.i60

.lr.ph60.i60:                                     ; preds = %bb.bb
  %i.gr = getelementptr [16 x i8], ptr %.sroa.0.0.ph194, i64 %.sroa.27.2.lcssa.i57 ; 3 uses
  %.neg740 = add i64 %.sroa.27.2.lcssa.i57, 1
  %xtraiter735 = and i64 %i.gq, 1
  %i.gs = icmp eq i64 %.sroa.16.0187550, %.neg740
  br i1 %i.gs, label %.epil.preheader720, label %.lr.ph60.i60.new

.lr.ph60.i60.new:                                 ; preds = %.lr.ph60.i60
  %unroll_iter738 = and i64 %i.gq, -2
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %.lr.ph60.i60.new
  %.sroa.07.058.i61 = phi i64 [ 0, %.lr.ph60.i60.new ], [ %i.gw, %bb.bc ] ; 5 uses
  %niter739 = phi i64 [ 0, %.lr.ph60.i60.new ], [ %niter739.next.1, %bb.bc ]
  %i.gt = xor i64 %.sroa.07.058.i61, -1
  %i.gu = getelementptr [16 x i8], ptr %i.ey, i64 %i.gt
  %i.gv = getelementptr [16 x i8], ptr %i.gr, i64 %.sroa.07.058.i61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gv, ptr noundef nonnull align 8 dereferenceable(16) %i.gu, i64 16, i1 false), !alias.scope !1064
  %i.gw = add nuw i64 %.sroa.07.058.i61, 2        ; 2 uses
  %i.gx = xor i64 %.sroa.07.058.i61, -2
  %i.gy = getelementptr [16 x i8], ptr %i.ey, i64 %i.gx
  %i.gz = getelementptr [16 x i8], ptr %i.gr, i64 %.sroa.07.058.i61
  %i.ha = getelementptr i8, ptr %i.gz, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ha, ptr noundef nonnull align 8 dereferenceable(16) %i.gy, i64 16, i1 false), !alias.scope !1064
  %niter739.next.1 = add i64 %niter739, 2         ; 2 uses
  %niter739.ncmp.1 = icmp eq i64 %niter739.next.1, %unroll_iter738
  br i1 %niter739.ncmp.1, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTjdENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2u_14UnigramTrainer21prune_sentence_piecess1_0E0E0EB2A_.exit.unr-lcssa, label %bb.bc

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTjdENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2u_14UnigramTrainer21prune_sentence_piecess1_0E0E0EB2A_.exit.unr-lcssa: ; preds = %bb.bc
  %lcmp.mod736.not = icmp eq i64 %xtraiter735, 0
  br i1 %lcmp.mod736.not, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTjdENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2u_14UnigramTrainer21prune_sentence_piecess1_0E0E0EB2A_.exit, label %.epil.preheader720

.epil.preheader720:                               ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTjdENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2u_14UnigramTrainer21prune_sentence_piecess1_0E0E0EB2A_.exit.unr-lcssa, %.lr.ph60.i60
  %.sroa.07.058.i61.epil.init = phi i64 [ 0, %.lr.ph60.i60 ], [ %i.gw, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTjdENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2u_14UnigramTrainer21prune_sentence_piecess1_0E0E0EB2A_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod737 = trunc i64 %i.gq to i1
  call void @llvm.assume(i1 %lcmp.mod737)
  %i.hb = xor i64 %.sroa.07.058.i61.epil.init, -1
  %i.hc = getelementptr [16 x i8], ptr %i.ey, i64 %i.hb
  %i.hd = getelementptr [16 x i8], ptr %i.gr, i64 %.sroa.07.058.i61.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hd, ptr noundef nonnull align 8 dereferenceable(16) %i.hc, i64 16, i1 false), !alias.scope !1064
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTjdENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2u_14UnigramTrainer21prune_sentence_piecess1_0E0E0EB2A_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTjdENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2u_14UnigramTrainer21prune_sentence_piecess1_0E0E0EB2A_.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTjdENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2u_14UnigramTrainer21prune_sentence_piecess1_0E0E0EB2A_.exit.unr-lcssa, %.epil.preheader720
  %i.he = icmp ugt i64 %.sroa.27.2.lcssa.i57, %.sroa.16.0187550
  br i1 %i.he, label %bb.bd, label %.outer, !prof !12

.outer._crit_edge.thread:                         ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2n_14UnigramTrainer21prune_sentence_piecess1_0E0EB2t_.exit

.outer:                                           ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTjdENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2u_14UnigramTrainer21prune_sentence_piecess1_0E0E0EB2A_.exit
  %i.hf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph194, i64 %.sroa.27.2.lcssa.i57 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.hg = icmp ult i64 %i.gq, 33
  br i1 %i.hg, label %.outer._crit_edge, label %.lr.ph

bb.bd:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTjdENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2u_14UnigramTrainer21prune_sentence_piecess1_0E0E0EB2A_.exit
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i57, i64 noundef %.sroa.16.0187550, i64 noundef %.sroa.16.0187550, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #22
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseB15_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2w_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2C_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(24) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1269 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph130 = phi ptr [ %i.fx, %.outer ], [ %0, %bb.a ] ; 22 uses
  %.sroa.16.0.ph129 = phi i64 [ %i.fi, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph128 = phi i32 [ %i.cd, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph127 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph130, i64 16 ; 2 uses
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph130, i64 8 ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph130 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph127, null
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph127, i64 16
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph127, i64 8
  %i.d = icmp eq i32 %.sroa.025.0.ph128, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph294

bb.b:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmRScE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit
  %i.e = icmp eq i32 %i.cd, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph294

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmRScE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit, %bb.a
  %.sroa.0.0.ph.lcssa121 = phi ptr [ %.sroa.0.0.ph130, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmRScE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit ], [ %0, %bb.a ], [ %i.fx, %.outer ] ; 7 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmRScE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit ], [ %1, %bb.a ], [ %i.fi, %.outer ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  %i.f = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.f, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyINtNtBa_3cmp7ReverseB1s_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2T_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2Z_.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.g = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.h = icmp samesign ult i64 %3, %i.g
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = lshr i64 %.sroa.16.0.lcssa, 1            ; 6 uses
  %i.j = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph.lcssa121, i64 %i.i ; 3 uses
  %i.l = getelementptr [24 x i8], ptr %2, i64 %i.i ; 7 uses
  br i1 %i.j, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB19_11sort_by_keyINtNtBa_3cmp7ReverseB19_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2A_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2G_(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa121, ptr noundef nonnull align 8 %2)
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB19_11sort_by_keyINtNtBa_3cmp7ReverseB19_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2A_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2G_(ptr noundef %i.k, ptr noundef %i.l)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.ph.lcssa121, i64 24, i1 false), !alias.scope !1271
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !alias.scope !1271
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 4, %bb.f ], [ 1, %bb.g ] ; 4 uses
  %i.m = sub nuw nsw i64 %.sroa.16.0.lcssa, %i.i  ; 2 uses
  %i.n = icmp samesign ult i64 %.sroa.0.0.i, %i.i
  br i1 %i.n, label %.lr.ph.i, label %.loopexit4.i

.loopexit4.i:                                     ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseB18_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2z_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2F_.exit.i, %bb.h
  %i.o = icmp samesign ult i64 %.sroa.0.0.i, %i.m
  br i1 %i.o, label %.lr.ph.1.i, label %.loopexit4.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit4.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseB18_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2z_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2F_.exit.1.i
  %.sroa.05.010.1.i = phi i64 [ %i.ad, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseB18_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2z_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2F_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit4.i ] ; 4 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %.sroa.05.010.1.i
  %.idx.1.i = mul nuw nsw i64 %.sroa.05.010.1.i, 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.1.i ; 11 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !alias.scope !1271
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -24 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1272)
  call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  %.sroa.0.0.copyload.i.i32.1.i = load i32, ptr %i.q, align 8, !alias.scope !1274 ; 6 uses
  %.sroa.02.0.copyload.i.i33.1.i = load i32, ptr %i.r, align 8, !alias.scope !1275 ; 2 uses
  %i.s = icmp eq i32 %.sroa.02.0.copyload.i.i33.1.i, %.sroa.0.0.copyload.i.i32.1.i
  br i1 %i.s, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i35.1.i, label %.split.i.1.i

.split.i.1.i:                                     ; preds = %.lr.ph.1.i
  %i.t = icmp ult i32 %.sroa.02.0.copyload.i.i33.1.i, %.sroa.0.0.copyload.i.i32.1.i
  br i1 %i.t, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit._crit_edge.i.1.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseB18_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2z_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2F_.exit.1.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i35.1.i: ; preds = %.lr.ph.1.i
  %.sroa.55.0..sroa_idx.i.i36.1.i = getelementptr inbounds i8, ptr %i.q, i64 -8
  %.sroa.55.0.copyload.i.i37.1.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i36.1.i, align 8, !alias.scope !1275
  %.sroa.44.0..sroa_idx.i.i38.1.i = getelementptr inbounds i8, ptr %i.q, i64 -16
  %.sroa.44.0.copyload.i.i39.1.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i38.1.i, align 8, !alias.scope !1275, !nonnull !4, !noundef !4
  %.sroa.5.0..sroa_idx.i.i40.1.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.5.0.copyload.i.i41.1.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i40.1.i, align 8, !alias.scope !1274
  %.sroa.41.0..sroa_idx.i.i42.1.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.41.0.copyload.i.i43.1.i = load ptr, ptr %.sroa.41.0..sroa_idx.i.i42.1.i, align 8, !alias.scope !1274, !nonnull !4, !noundef !4
  %i.u = call noundef i8 @_RNvXs5_NtNtCs4NRVxsYgnAr_4core5slice3cmpcNtB5_10SliceChain11chaining_ltCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.44.0.copyload.i.i39.1.i, i64 noundef range(i64 0, 2305843009213693952) %.sroa.55.0.copyload.i.i37.1.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.41.0.copyload.i.i43.1.i, i64 noundef range(i64 0, 2305843009213693952) %.sroa.5.0.copyload.i.i41.1.i), !noalias !1276
  %i.v = icmp eq i8 %i.u, 1
  br i1 %i.v, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit._crit_edge.i.1.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseB18_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2z_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2F_.exit.1.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit._crit_edge.i.1.i: ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i35.1.i, %.split.i.1.i
  %.sroa.423.0..sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.sroa.423.0.copyload.i.1.i = load i32, ptr %.sroa.423.0..sroa_idx.i.1.i, align 4, !alias.scope !1277 ; 2 uses
  %.sroa.524.0..sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.524.0.copyload.i.1.i = load ptr, ptr %.sroa.524.0..sroa_idx.i.1.i, align 8, !alias.scope !1277 ; 3 uses
  %.sroa.625.0..sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.625.0.copyload.i.1.i = load i64, ptr %.sroa.625.0..sroa_idx.i.1.i, align 8, !alias.scope !1277 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !alias.scope !1277
  %i.w = icmp eq i64 %.sroa.05.010.1.i, 1
  br i1 %i.w, label %.split5._crit_edge.i.1.i, label %.lr.ph.i34.1.i

.lr.ph.i34.1.i:                                   ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit._crit_edge.i.1.i, %.backedge.i.1.i
  %.sroa.0.07.i.1.i = phi ptr [ %i.x, %.backedge.i.1.i ], [ %i.r, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit._crit_edge.i.1.i ] ; 7 uses
  %i.x = getelementptr inbounds i8, ptr %.sroa.0.07.i.1.i, i64 -24 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1278)
  %.sroa.02.0.copyload.i9.i.1.i = load i32, ptr %i.x, align 8, !alias.scope !1279 ; 2 uses
  %i.y = icmp eq i32 %.sroa.02.0.copyload.i9.i.1.i, %.sroa.0.0.copyload.i.i32.1.i
  br i1 %i.y, label %bb.i, label %.split5.i.1.i

.split5.i.1.i:                                    ; preds = %.lr.ph.i34.1.i
  %i.z = icmp ult i32 %.sroa.02.0.copyload.i9.i.1.i, %.sroa.0.0.copyload.i.i32.1.i
  br i1 %i.z, label %.backedge.i.1.i, label %.split5._crit_edge.i.1.i

bb.i:                                             ; preds = %.lr.ph.i34.1.i
  %.sroa.55.0..sroa_idx.i11.i.1.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.1.i, i64 -8
  %.sroa.55.0.copyload.i12.i.1.i = load i64, ptr %.sroa.55.0..sroa_idx.i11.i.1.i, align 8, !alias.scope !1279
  %.sroa.44.0..sroa_idx.i13.i.1.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.1.i, i64 -16
  %.sroa.44.0.copyload.i14.i.1.i = load ptr, ptr %.sroa.44.0..sroa_idx.i13.i.1.i, align 8, !alias.scope !1279, !nonnull !4, !noundef !4
  %i.aa = invoke noundef i8 @_RNvXs5_NtNtCs4NRVxsYgnAr_4core5slice3cmpcNtB5_10SliceChain11chaining_ltCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.44.0.copyload.i14.i.1.i, i64 noundef range(i64 0, 2305843009213693952) %.sroa.55.0.copyload.i12.i.1.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.524.0.copyload.i.1.i, i64 noundef range(i64 0, 2305843009213693952) %.sroa.625.0.copyload.i.1.i)
          to label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit19.i.1.i unwind label %.loopexit.split-lp18.i, !noalias !1280

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit19.i.1.i: ; preds = %bb.i
  %i.ab = icmp eq i8 %i.aa, 1
  br i1 %i.ab, label %.backedge.i.1.i, label %.split5._crit_edge.i.1.i

.backedge.i.1.i:                                  ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit19.i.1.i, %.split5.i.1.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.07.i.1.i, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !alias.scope !1277
  %i.ac = icmp eq ptr %i.x, %i.l
  br i1 %i.ac, label %.split5._crit_edge.i.1.i, label %.lr.ph.i34.1.i

.split5._crit_edge.i.1.i:                         ; preds = %.backedge.i.1.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit19.i.1.i, %.split5.i.1.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit._crit_edge.i.1.i
  %.sroa.0.0.lcssa.i.1.i = phi ptr [ %i.r, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit._crit_edge.i.1.i ], [ %.sroa.0.07.i.1.i, %.split5.i.1.i ], [ %.sroa.0.07.i.1.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit19.i.1.i ], [ %i.l, %.backedge.i.1.i ] ; 4 uses
  store i32 %.sroa.0.0.copyload.i.i32.1.i, ptr %.sroa.0.0.lcssa.i.1.i, align 8, !alias.scope !1277, !noalias !1281
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.1.i, i64 4
  store i32 %.sroa.423.0.copyload.i.1.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 4, !alias.scope !1277, !noalias !1281
  %.sroa.615.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.1.i, i64 8
  store ptr %.sroa.524.0.copyload.i.1.i, ptr %.sroa.615.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !1277, !noalias !1281
  %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.1.i, i64 16
  store i64 %.sroa.625.0.copyload.i.1.i, ptr %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !1277, !noalias !1281
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseB18_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2z_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2F_.exit.1.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseB18_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2z_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2F_.exit.1.i: ; preds = %.split5._crit_edge.i.1.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i35.1.i, %.split.i.1.i
  %i.ad = add nuw nsw i64 %.sroa.05.010.1.i, 1    ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.ad, %i.m
  br i1 %exitcond.1.not.i, label %.loopexit4.1.i, label %.lr.ph.1.i

.loopexit4.1.i:                                   ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseB18_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2z_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2F_.exit.1.i, %.loopexit4.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  %i.ae = add nsw i64 %.sroa.16.0.lcssa, -1       ; 2 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph.lcssa121, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.ae
  %i.ah = getelementptr i8, ptr %i.l, i64 -24
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit35.i.i
  %i.ai = getelementptr i8, ptr %i.bd, i64 24     ; 2 uses
  %i.aj = getelementptr i8, ptr %i.bc, i64 24
  %i.ak = and i64 %.sroa.16.0.lcssa, 1
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.o, label %bb.n

.lr.ph.i.i:                                       ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit35.i.i, %.loopexit4.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.aw, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit35.i.i ], [ %.sroa.0.0.ph.lcssa121, %.loopexit4.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.am, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit35.i.i ], [ 0, %.loopexit4.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %i.av, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit35.i.i ], [ %2, %.loopexit4.1.i ] ; 5 uses
  %.sroa.011.07.i.i = phi ptr [ %i.at, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit35.i.i ], [ %i.l, %.loopexit4.1.i ] ; 5 uses
  %.sroa.015.06.i.i = phi ptr [ %i.bd, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit35.i.i ], [ %i.ah, %.loopexit4.1.i ] ; 5 uses
  %.sroa.017.05.i.i = phi ptr [ %i.bc, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit35.i.i ], [ %i.ag, %.loopexit4.1.i ] ; 5 uses
  %.sroa.019.04.i.i = phi ptr [ %i.be, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit35.i.i ], [ %i.af, %.loopexit4.1.i ] ; 2 uses
  %i.am = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1283)
  call void @llvm.experimental.noalias.scope.decl(metadata !1284)
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %.sroa.011.07.i.i, align 8, !alias.scope !1285 ; 2 uses
  %.sroa.02.0.copyload.i.i.i = load i32, ptr %.sroa.06.08.i.i, align 8, !alias.scope !1286 ; 2 uses
  %i.an = icmp eq i32 %.sroa.02.0.copyload.i.i.i, %.sroa.0.0.copyload.i.i.i
  br i1 %i.an, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.ao = icmp ult i32 %.sroa.02.0.copyload.i.i.i, %.sroa.0.0.copyload.i.i.i
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i.i

bb.k:                                             ; preds = %.lr.ph.i.i
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 16
  %.sroa.55.0.copyload.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i, align 8, !alias.scope !1286
  %.sroa.44.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 8
  %.sroa.44.0.copyload.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !alias.scope !1286, !nonnull !4, !noundef !4
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 16
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !1285
  %.sroa.41.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 8
  %.sroa.41.0.copyload.i.i.i = load ptr, ptr %.sroa.41.0..sroa_idx.i.i.i, align 8, !alias.scope !1285, !nonnull !4, !noundef !4
  %i.ap = invoke noundef i8 @_RNvXs5_NtNtCs4NRVxsYgnAr_4core5slice3cmpcNtB5_10SliceChain11chaining_ltCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.44.0.copyload.i.i.i, i64 noundef range(i64 0, 2305843009213693952) %.sroa.55.0.copyload.i.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.41.0.copyload.i.i.i, i64 noundef range(i64 0, 2305843009213693952) %.sroa.5.0.copyload.i.i.i)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1287

.noexc.i:                                         ; preds = %bb.k
  %i.aq = icmp eq i8 %i.ap, 1
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i.i: ; preds = %.noexc.i, %bb.j
  %.sroa.0.0.i.i.i.i.i = phi i1 [ %i.ao, %bb.j ], [ %i.aq, %.noexc.i ] ; 3 uses
  %..i23.i.i = select i1 %.sroa.0.0.i.i.i.i.i, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  %i.ar = xor i1 %.sroa.0.0.i.i.i.i.i, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(24) %..i23.i.i, i64 24, i1 false), !alias.scope !1271, !noalias !1288
  %i.as = zext i1 %.sroa.0.0.i.i.i.i.i to i64
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %.sroa.011.07.i.i, i64 %i.as ; 4 uses
  %i.au = zext i1 %i.ar to i64
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %.sroa.06.08.i.i, i64 %i.au ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  call void @llvm.experimental.noalias.scope.decl(metadata !1290)
  %.sroa.0.0.copyload.i24.i.i = load i32, ptr %.sroa.017.05.i.i, align 8, !alias.scope !1291 ; 2 uses
  %.sroa.02.0.copyload.i25.i.i = load i32, ptr %.sroa.015.06.i.i, align 8, !alias.scope !1292 ; 2 uses
  %i.ax = icmp eq i32 %.sroa.02.0.copyload.i25.i.i, %.sroa.0.0.copyload.i24.i.i
  br i1 %i.ax, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i.i
  %i.ay = icmp ult i32 %.sroa.02.0.copyload.i25.i.i, %.sroa.0.0.copyload.i24.i.i
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit35.i.i

bb.m:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i.i
  %.sroa.55.0..sroa_idx.i27.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.06.i.i, i64 16
  %.sroa.55.0.copyload.i28.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i27.i.i, align 8, !alias.scope !1292
  %.sroa.44.0..sroa_idx.i29.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.06.i.i, i64 8
  %.sroa.44.0.copyload.i30.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i29.i.i, align 8, !alias.scope !1292, !nonnull !4, !noundef !4
  %.sroa.5.0..sroa_idx.i31.i.i = getelementptr inbounds nuw i8, ptr %.sroa.017.05.i.i, i64 16
  %.sroa.5.0.copyload.i32.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i31.i.i, align 8, !alias.scope !1291
  %.sroa.41.0..sroa_idx.i33.i.i = getelementptr inbounds nuw i8, ptr %.sroa.017.05.i.i, i64 8
  %.sroa.41.0.copyload.i34.i.i = load ptr, ptr %.sroa.41.0..sroa_idx.i33.i.i, align 8, !alias.scope !1291, !nonnull !4, !noundef !4
  %i.az = invoke noundef i8 @_RNvXs5_NtNtCs4NRVxsYgnAr_4core5slice3cmpcNtB5_10SliceChain11chaining_ltCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.44.0.copyload.i30.i.i, i64 noundef range(i64 0, 2305843009213693952) %.sroa.55.0.copyload.i28.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.41.0.copyload.i34.i.i, i64 noundef range(i64 0, 2305843009213693952) %.sroa.5.0.copyload.i32.i.i)
          to label %.noexc30.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1293

.noexc30.i:                                       ; preds = %bb.m
  %i.ba = icmp eq i8 %i.az, 1
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit35.i.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit35.i.i: ; preds = %.noexc30.i, %bb.l
  %.sroa.0.0.i.i.i26.i.i = phi i1 [ %i.ay, %bb.l ], [ %i.ba, %.noexc30.i ] ; 3 uses
  %..i.i.i = select i1 %.sroa.0.0.i.i.i26.i.i, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.bb = xor i1 %.sroa.0.0.i.i.i26.i.i, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(24) %..i.i.i, i64 24, i1 false), !alias.scope !1271, !noalias !1294
  %.neg.i.i.i = sext i1 %i.bb to i64
  %i.bc = getelementptr [24 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %.sroa.0.0.i.i.i26.i.i to i64
  %i.bd = getelementptr [24 x i8], ptr %.sroa.015.06.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -24
  %exitcond.not.i.i = icmp eq i64 %i.am, %i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.bf = icmp ult ptr %i.av, %i.ai               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.bf, ptr %i.av, ptr %i.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.0..sroa.011.0.i.i, i64 24, i1 false), !alias.scope !1271
  %i.bg = zext i1 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.bg
  %i.bi = xor i1 %i.bf, true
  %i.bj = zext i1 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %i.bj
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.at, %._crit_edge.i.i ], [ %i.bk, %bb.n ]
  %.sroa.06.1.i.i = phi ptr [ %i.av, %._crit_edge.i.i ], [ %i.bh, %bb.n ]
  %i.bl = icmp ne ptr %.sroa.06.1.i.i, %i.ai
  %i.bm = icmp ne ptr %.sroa.011.1.i.i, %i.aj
  %or.cond.i.i = select i1 %i.bl, i1 true, i1 %i.bm, !prof !9
  br i1 %or.cond.i.i, label %bb.p, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyINtNtBa_3cmp7ReverseB1s_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2T_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2Z_.exit, !prof !9

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #22
          to label %.noexc31.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1295

.noexc31.i:                                       ; preds = %bb.p
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.k, %bb.p
  %lpad.loopexit.split-lp298 = landingpad { ptr, i32 }
          cleanup
  %i.bn = mul nuw nsw i64 %.sroa.16.0.lcssa, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa121, ptr nonnull align 8 %2, i64 %i.bn, i1 false), !alias.scope !1271, !noalias !1296
  br label %.body.i

.body.i:                                          ; preds = %bb.r, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp298, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.phi25.i, %bb.r ]
  resume { ptr, i32 } %.pn.i

.lr.ph.i:                                         ; preds = %bb.h, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseB18_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2z_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2F_.exit.i
  %.sroa.05.010.i = phi i64 [ %i.cc, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseB18_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2z_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2F_.exit.i ], [ %.sroa.0.0.i, %bb.h ] ; 4 uses
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph.lcssa121, i64 %.sroa.05.010.i
  %.idx.i = mul nuw nsw i64 %.sroa.05.010.i, 24
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i ; 11 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false), !alias.scope !1271
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -24 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  %.sroa.0.0.copyload.i.i32.i = load i32, ptr %i.bp, align 8, !alias.scope !1299 ; 6 uses
  %.sroa.02.0.copyload.i.i33.i = load i32, ptr %i.bq, align 8, !alias.scope !1300 ; 2 uses
  %i.br = icmp eq i32 %.sroa.02.0.copyload.i.i33.i, %.sroa.0.0.copyload.i.i32.i
  br i1 %i.br, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i35.i, label %.split.i.i

.split.i.i:                                       ; preds = %.lr.ph.i
  %i.bs = icmp ult i32 %.sroa.02.0.copyload.i.i33.i, %.sroa.0.0.copyload.i.i32.i
  br i1 %i.bs, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit._crit_edge.i.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseB18_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2z_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2F_.exit.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i35.i: ; preds = %.lr.ph.i
  %.sroa.55.0..sroa_idx.i.i36.i = getelementptr inbounds i8, ptr %i.bp, i64 -8
  %.sroa.55.0.copyload.i.i37.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i36.i, align 8, !alias.scope !1300
  %.sroa.44.0..sroa_idx.i.i38.i = getelementptr inbounds i8, ptr %i.bp, i64 -16
  %.sroa.44.0.copyload.i.i39.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i38.i, align 8, !alias.scope !1300, !nonnull !4, !noundef !4
  %.sroa.5.0..sroa_idx.i.i40.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %.sroa.5.0.copyload.i.i41.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i40.i, align 8, !alias.scope !1299
  %.sroa.41.0..sroa_idx.i.i42.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.41.0.copyload.i.i43.i = load ptr, ptr %.sroa.41.0..sroa_idx.i.i42.i, align 8, !alias.scope !1299, !nonnull !4, !noundef !4
  %i.bt = call noundef i8 @_RNvXs5_NtNtCs4NRVxsYgnAr_4core5slice3cmpcNtB5_10SliceChain11chaining_ltCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.44.0.copyload.i.i39.i, i64 noundef range(i64 0, 2305843009213693952) %.sroa.55.0.copyload.i.i37.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.41.0.copyload.i.i43.i, i64 noundef range(i64 0, 2305843009213693952) %.sroa.5.0.copyload.i.i41.i), !noalias !1301
  %i.bu = icmp eq i8 %i.bt, 1
  br i1 %i.bu, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit._crit_edge.i.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseB18_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2z_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2F_.exit.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit._crit_edge.i.i: ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i35.i, %.split.i.i
  %.sroa.423.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %.sroa.423.0.copyload.i.i = load i32, ptr %.sroa.423.0..sroa_idx.i.i, align 4, !alias.scope !1277 ; 2 uses
  %.sroa.524.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.524.0.copyload.i.i = load ptr, ptr %.sroa.524.0..sroa_idx.i.i, align 8, !alias.scope !1277 ; 3 uses
  %.sroa.625.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %.sroa.625.0.copyload.i.i = load i64, ptr %.sroa.625.0..sroa_idx.i.i, align 8, !alias.scope !1277 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 24, i1 false), !alias.scope !1277
  %i.bv = icmp eq i64 %.sroa.05.010.i, 1
  br i1 %i.bv, label %.split5._crit_edge.i.i, label %.lr.ph.i34.i

.lr.ph.i34.i:                                     ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit._crit_edge.i.i, %.backedge.i.i
  %.sroa.0.07.i.i = phi ptr [ %i.bw, %.backedge.i.i ], [ %i.bq, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit._crit_edge.i.i ] ; 7 uses
  %i.bw = getelementptr inbounds i8, ptr %.sroa.0.07.i.i, i64 -24 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  %.sroa.02.0.copyload.i9.i.i = load i32, ptr %i.bw, align 8, !alias.scope !1303 ; 2 uses
  %i.bx = icmp eq i32 %.sroa.02.0.copyload.i9.i.i, %.sroa.0.0.copyload.i.i32.i
  br i1 %i.bx, label %bb.q, label %.split5.i.i

.split5.i.i:                                      ; preds = %.lr.ph.i34.i
  %i.by = icmp ult i32 %.sroa.02.0.copyload.i9.i.i, %.sroa.0.0.copyload.i.i32.i
  br i1 %i.by, label %.backedge.i.i, label %.split5._crit_edge.i.i

bb.q:                                             ; preds = %.lr.ph.i34.i
  %.sroa.55.0..sroa_idx.i11.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i, i64 -8
  %.sroa.55.0.copyload.i12.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i11.i.i, align 8, !alias.scope !1303
  %.sroa.44.0..sroa_idx.i13.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i, i64 -16
  %.sroa.44.0.copyload.i14.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i13.i.i, align 8, !alias.scope !1303, !nonnull !4, !noundef !4
  %i.bz = invoke noundef i8 @_RNvXs5_NtNtCs4NRVxsYgnAr_4core5slice3cmpcNtB5_10SliceChain11chaining_ltCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.44.0.copyload.i14.i.i, i64 noundef range(i64 0, 2305843009213693952) %.sroa.55.0.copyload.i12.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.524.0.copyload.i.i, i64 noundef range(i64 0, 2305843009213693952) %.sroa.625.0.copyload.i.i)
          to label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit19.i.i unwind label %.loopexit.i, !noalias !1304

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit19.i.i: ; preds = %bb.q
  %i.ca = icmp eq i8 %i.bz, 1
  br i1 %i.ca, label %.backedge.i.i, label %.split5._crit_edge.i.i

.backedge.i.i:                                    ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit19.i.i, %.split5.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.07.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 24, i1 false), !alias.scope !1277
  %i.cb = icmp eq ptr %i.bw, %2
  br i1 %i.cb, label %.split5._crit_edge.i.i, label %.lr.ph.i34.i

.split5._crit_edge.i.i:                           ; preds = %.backedge.i.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit19.i.i, %.split5.i.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit._crit_edge.i.i
  %.sroa.0.0.lcssa.i.i = phi ptr [ %i.bq, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit._crit_edge.i.i ], [ %.sroa.0.07.i.i, %.split5.i.i ], [ %.sroa.0.07.i.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit19.i.i ], [ %2, %.backedge.i.i ] ; 4 uses
  store i32 %.sroa.0.0.copyload.i.i32.i, ptr %.sroa.0.0.lcssa.i.i, align 8, !alias.scope !1277, !noalias !1281
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 4
  store i32 %.sroa.423.0.copyload.i.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i, align 4, !alias.scope !1277, !noalias !1281
  %.sroa.615.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 8
  store ptr %.sroa.524.0.copyload.i.i, ptr %.sroa.615.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !1277, !noalias !1281
  %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 16
  store i64 %.sroa.625.0.copyload.i.i, ptr %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !1277, !noalias !1281
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseB18_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2z_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2F_.exit.i

.loopexit.i:                                      ; preds = %bb.q
  %lpad.loopexit24.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp18.i:                           ; preds = %bb.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp18.i, %.loopexit.i
  %.sroa.0.0.copyload.i.i32.lcssa.i = phi i32 [ %.sroa.0.0.copyload.i.i32.i, %.loopexit.i ], [ %.sroa.0.0.copyload.i.i32.1.i, %.loopexit.split-lp18.i ]
  %.sroa.423.0.copyload.i.lcssa.i = phi i32 [ %.sroa.423.0.copyload.i.i, %.loopexit.i ], [ %.sroa.423.0.copyload.i.1.i, %.loopexit.split-lp18.i ]
  %.sroa.524.0.copyload.i.lcssa.i = phi ptr [ %.sroa.524.0.copyload.i.i, %.loopexit.i ], [ %.sroa.524.0.copyload.i.1.i, %.loopexit.split-lp18.i ]
  %.sroa.625.0.copyload.i.lcssa.i = phi i64 [ %.sroa.625.0.copyload.i.i, %.loopexit.i ], [ %.sroa.625.0.copyload.i.1.i, %.loopexit.split-lp18.i ]
  %.sroa.0.07.i.lcssa16.i = phi ptr [ %.sroa.0.07.i.i, %.loopexit.i ], [ %.sroa.0.07.i.1.i, %.loopexit.split-lp18.i ] ; 4 uses
  %lpad.phi25.i = phi { ptr, i32 } [ %lpad.loopexit24.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp18.i ]
  store i32 %.sroa.0.0.copyload.i.i32.lcssa.i, ptr %.sroa.0.07.i.lcssa16.i, align 8, !alias.scope !1277, !noalias !1305
  %.sroa.6.0..sroa.0.07.lcssa10.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.lcssa16.i, i64 4
  store i32 %.sroa.423.0.copyload.i.lcssa.i, ptr %.sroa.6.0..sroa.0.07.lcssa10.sroa_idx.i.i, align 4, !alias.scope !1277, !noalias !1305
  %.sroa.615.0..sroa.0.07.lcssa10.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.lcssa16.i, i64 8
  store ptr %.sroa.524.0.copyload.i.lcssa.i, ptr %.sroa.615.0..sroa.0.07.lcssa10.sroa_idx.i.i, align 8, !alias.scope !1277, !noalias !1305
  %.sroa.7.0..sroa.0.07.lcssa10.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.lcssa16.i, i64 16
  store i64 %.sroa.625.0.copyload.i.lcssa.i, ptr %.sroa.7.0..sroa.0.07.lcssa10.sroa_idx.i.i, align 8, !alias.scope !1277, !noalias !1305
  br label %.body.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseB18_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2z_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2F_.exit.i: ; preds = %.split5._crit_edge.i.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i35.i, %.split.i.i
  %i.cc = add nuw nsw i64 %.sroa.05.010.i, 1      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cc, %i.i
  br i1 %exitcond.not.i, label %.loopexit4.i, label %.lr.ph.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0123.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph129, %.lr.ph ]
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSBW_11sort_by_keyINtNtBa_3cmp7ReverseBW_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2l_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2r_(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph130, i64 noundef %.sroa.16.0123.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyINtNtBa_3cmp7ReverseB1s_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2T_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2Z_.exit

.lr.ph294:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0122293 = phi i32 [ %i.cd, %bb.b ], [ %.sroa.025.0.ph128, %.lr.ph ]
  %.sroa.16.0123292 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph129, %.lr.ph ] ; 21 uses
  %i.cd = add i32 %.sroa.025.0122293, -1          ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  %i.ce = lshr i64 %.sroa.16.0123292, 3           ; 3 uses
  %.idx.i37 = mul nuw nsw i64 %i.ce, 96
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph130, i64 %.idx.i37 ; 7 uses
  %.idx2.i = mul nuw nsw i64 %i.ce, 168
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph130, i64 %.idx2.i ; 7 uses
  %i.ch = icmp samesign ult i64 %.sroa.16.0123292, 64
  br i1 %i.ch, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph294
  %i.ci = call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyINtNtBa_3cmp7ReverseB14_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2v_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2B_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph130, ptr noundef readonly %i.cf, ptr noundef readonly %i.cg, i64 noundef %i.ce)
  br label %bb.ab

bb.t:                                             ; preds = %.lr.ph294
  call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  %.sroa.0.0.copyload.i.i = load i32, ptr %.sroa.0.0.ph130, align 8, !alias.scope !1309 ; 4 uses
  %.sroa.02.0.copyload.i.i = load i32, ptr %i.cf, align 8, !alias.scope !1310 ; 4 uses
  %i.cj = icmp eq i32 %.sroa.02.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  br i1 %i.cj, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ck = icmp ult i32 %.sroa.02.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i

bb.v:                                             ; preds = %bb.t
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %.sroa.55.0.copyload.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !alias.scope !1310
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.44.0.copyload.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !alias.scope !1310, !nonnull !4, !noundef !4
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1309
  %.sroa.41.0.copyload.i.i = load ptr, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !1309, !nonnull !4, !noundef !4
  %i.cl = call noundef i8 @_RNvXs5_NtNtCs4NRVxsYgnAr_4core5slice3cmpcNtB5_10SliceChain11chaining_ltCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.44.0.copyload.i.i, i64 noundef range(i64 0, 2305843009213693952) %.sroa.55.0.copyload.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.41.0.copyload.i.i, i64 noundef range(i64 0, 2305843009213693952) %.sroa.5.0.copyload.i.i), !noalias !1311
  %i.cm = icmp eq i8 %i.cl, 1
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i: ; preds = %bb.v, %bb.u
  %.sroa.0.0.i.i.i.i = phi i1 [ %i.ck, %bb.u ], [ %i.cm, %bb.v ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  %.sroa.02.0.copyload.i4.i = load i32, ptr %i.cg, align 8, !alias.scope !1314 ; 4 uses
  %i.cn = icmp eq i32 %.sroa.02.0.copyload.i4.i, %.sroa.0.0.copyload.i.i
  br i1 %i.cn, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i
  %i.co = icmp ult i32 %.sroa.02.0.copyload.i4.i, %.sroa.0.0.copyload.i.i
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit14.i

bb.x:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i
  %.sroa.55.0..sroa_idx.i6.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %.sroa.55.0.copyload.i7.i = load i64, ptr %.sroa.55.0..sroa_idx.i6.i, align 8, !alias.scope !1314
  %.sroa.44.0..sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.sroa.44.0.copyload.i9.i = load ptr, ptr %.sroa.44.0..sroa_idx.i8.i, align 8, !alias.scope !1314, !nonnull !4, !noundef !4
  %.sroa.5.0.copyload.i11.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1315
  %.sroa.41.0.copyload.i13.i = load ptr, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !1315, !nonnull !4, !noundef !4
  %i.cp = call noundef i8 @_RNvXs5_NtNtCs4NRVxsYgnAr_4core5slice3cmpcNtB5_10SliceChain11chaining_ltCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.44.0.copyload.i9.i, i64 noundef range(i64 0, 2305843009213693952) %.sroa.55.0.copyload.i7.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.41.0.copyload.i13.i, i64 noundef range(i64 0, 2305843009213693952) %.sroa.5.0.copyload.i11.i), !noalias !1316
  %i.cq = icmp eq i8 %i.cp, 1
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit14.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit14.i: ; preds = %bb.x, %bb.w
  %.sroa.0.0.i.i.i5.i = phi i1 [ %i.co, %bb.w ], [ %i.cq, %bb.x ]
  %i.cr = xor i1 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i5.i
  br i1 %i.cr, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit14.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  %i.cs = icmp eq i32 %.sroa.02.0.copyload.i4.i, %.sroa.02.0.copyload.i.i
  br i1 %i.cs, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ct = icmp ult i32 %.sroa.02.0.copyload.i4.i, %.sroa.02.0.copyload.i.i
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit26.i

bb.aa:                                            ; preds = %bb.y
  %.sroa.55.0..sroa_idx.i18.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %.sroa.55.0.copyload.i19.i = load i64, ptr %.sroa.55.0..sroa_idx.i18.i, align 8, !alias.scope !1319
  %.sroa.44.0..sroa_idx.i20.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.sroa.44.0.copyload.i21.i = load ptr, ptr %.sroa.44.0..sroa_idx.i20.i, align 8, !alias.scope !1319, !nonnull !4, !noundef !4
  %.sroa.5.0..sroa_idx.i22.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %.sroa.5.0.copyload.i23.i = load i64, ptr %.sroa.5.0..sroa_idx.i22.i, align 8, !alias.scope !1320
  %.sroa.41.0..sroa_idx.i24.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.41.0.copyload.i25.i = load ptr, ptr %.sroa.41.0..sroa_idx.i24.i, align 8, !alias.scope !1320, !nonnull !4, !noundef !4
  %i.cu = call noundef i8 @_RNvXs5_NtNtCs4NRVxsYgnAr_4core5slice3cmpcNtB5_10SliceChain11chaining_ltCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.44.0.copyload.i21.i, i64 noundef range(i64 0, 2305843009213693952) %.sroa.55.0.copyload.i19.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.41.0.copyload.i25.i, i64 noundef range(i64 0, 2305843009213693952) %.sroa.5.0.copyload.i23.i), !noalias !1321
  %i.cv = icmp eq i8 %i.cu, 1
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit26.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit26.i: ; preds = %bb.aa, %bb.z
  %.sroa.0.0.i.i.i17.i = phi i1 [ %i.ct, %bb.z ], [ %i.cv, %bb.aa ]
  %i.cw = xor i1 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i17.i
  %..i.i = select i1 %i.cw, ptr %i.cg, ptr %i.cf
  br label %bb.ab

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyINtNtBa_3cmp7ReverseB1s_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2T_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2Z_.exit: ; preds = %.outer._crit_edge.thread, %bb.o, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.ab:                                            ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit26.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit14.i, %bb.s
  %.sroa.0.0.i.sink.i = phi ptr [ %i.ci, %bb.s ], [ %.sroa.0.0.ph130, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit14.i ], [ %..i.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit26.i ]
  %i.cx = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.cy = sub nuw i64 %i.cx, %i.c                 ; 2 uses
  %.sroa.0.0.i38 = udiv exact i64 %i.cy, 24       ; 3 uses
  %i.cz = icmp samesign ult i64 %.sroa.0.0.i38, %.sroa.16.0123292
  call void @llvm.assume(i1 %i.cz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph130, i64 %i.cy ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.da, i64 24, i1 false)
  br i1 %.not, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  call void @llvm.experimental.noalias.scope.decl(metadata !1323)
  %.sroa.0.0.copyload.i = load i32, ptr %.sroa.028.0.ph127, align 8, !alias.scope !1324 ; 2 uses
  %.sroa.02.0.copyload.i = load i32, ptr %i.da, align 8, !alias.scope !1325 ; 2 uses
  %i.db = icmp eq i32 %.sroa.02.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.db, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit, label %.split

.split:                                           ; preds = %bb.ac
  %i.dc = icmp ult i32 %.sroa.02.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.dc, label %bb.ad, label %.thread

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit: ; preds = %bb.ac
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !1325
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.sroa.44.0.copyload.i = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !1325, !nonnull !4, !noundef !4
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1324
  %.sroa.41.0.copyload.i = load ptr, ptr %.sroa.41.0..sroa_idx.i, align 8, !alias.scope !1324, !nonnull !4, !noundef !4
  %i.dd = call noundef i8 @_RNvXs5_NtNtCs4NRVxsYgnAr_4core5slice3cmpcNtB5_10SliceChain11chaining_ltCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.44.0.copyload.i, i64 noundef range(i64 0, 2305843009213693952) %.sroa.55.0.copyload.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.41.0.copyload.i, i64 noundef range(i64 0, 2305843009213693952) %.sroa.5.0.copyload.i), !noalias !1326
  %i.de = icmp eq i8 %i.dd, 1
  br i1 %i.de, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %.split, %bb.ab, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1327)
  call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  %.not88 = icmp samesign ult i64 %3, %.sroa.16.0123292
  br i1 %.not88, label %bb.af, label %bb.ae, !prof !9

bb.ae:                                            ; preds = %bb.ad
  %i.df = getelementptr [24 x i8], ptr %2, i64 %.sroa.16.0123292 ; 4 uses
  %.sroa.55.0..sroa_idx.i.i39 = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %.sroa.44.0..sroa_idx.i.i40 = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  call void @llvm.trap()
  unreachable

bb.ag:                                            ; preds = %bb.ak, %bb.ae
  %.sroa.19.0.i = phi ptr [ %i.df, %bb.ae ], [ %i.dt, %bb.ak ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.ae ], [ %.sroa.11.1.lcssa.i, %bb.ak ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph130, %bb.ae ], [ %i.dv, %bb.ak ] ; 3 uses
  %.sroa.0.0.i41 = phi i64 [ %.sroa.0.0.i38, %bb.ae ], [ %.sroa.16.0123292, %bb.ak ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph130, i64 %.sroa.0.0.i41 ; 2 uses
  %i.dh = icmp ult ptr %.sroa.5.0.i, %i.dg
  br i1 %i.dh, label %.lr.ph.i43, label %._crit_edge.i

.lr.ph.i43:                                       ; preds = %bb.ag
  %.sroa.02.0.copyload.i.i44 = load i32, ptr %i.da, align 8, !alias.scope !1329 ; 2 uses
  br label %bb.ah

._crit_edge.i:                                    ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i46, %bb.ag
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.ag ], [ %i.dn, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i46 ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.ag ], [ %i.dq, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i46 ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.ag ], [ %i.dr, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i46 ] ; 2 uses
  %i.di = icmp eq i64 %.sroa.0.0.i41, %.sroa.16.0123292
  br i1 %i.di, label %bb.al, label %bb.ak

bb.ah:                                            ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i46, %.lr.ph.i43
  %.sroa.5.111.i = phi ptr [ %.sroa.5.0.i, %.lr.ph.i43 ], [ %i.dr, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i46 ] ; 5 uses
  %.sroa.11.110.i = phi i64 [ %.sroa.11.0.i, %.lr.ph.i43 ], [ %i.dq, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i46 ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %.sroa.19.0.i, %.lr.ph.i43 ], [ %i.dn, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i46 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1330)
  call void @llvm.experimental.noalias.scope.decl(metadata !1331)
  %.sroa.0.0.copyload.i.i45 = load i32, ptr %.sroa.5.111.i, align 8, !alias.scope !1332 ; 2 uses
  %i.dj = icmp eq i32 %.sroa.02.0.copyload.i.i44, %.sroa.0.0.copyload.i.i45
  br i1 %i.dj, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dk = icmp ult i32 %.sroa.02.0.copyload.i.i44, %.sroa.0.0.copyload.i.i45
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i46
end_hunk_0

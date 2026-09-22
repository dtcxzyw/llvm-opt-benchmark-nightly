Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.03?download=true
inline.NumInlined: 920
inline.NumDeleted: 323
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortTRcRjENCINvMB6_SBT_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1H_10BpeTrainer16compute_alphabets0_0E0EB1N_:bb.a
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i ], [ %i.an, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE7reverseCs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod48 = trunc i64 %i.ab to i1
  tail call void @llvm.assume(i1 %lcmp.mod48)
  %i.x = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i.epil.init ; 2 uses
  %i.z = getelementptr [16 x i8], ptr %i.ac, i64 %i.x ; 2 uses
  %i.aa = load <2 x ptr>, ptr %i.y, align 8, !alias.scope !47, !noalias !48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !alias.scope !49
  store <2 x ptr> %i.aa, ptr %i.z, align 8, !alias.scope !50, !noalias !51
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE7reverseCs2JiOgHzbbc7_10tokenizers.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE7reverseCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.epil.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE7reverseCs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa, %bb.a, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRcRjENCINvMB6_SB12_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1R_10BpeTrainer16compute_alphabets0_0E0EB1X_.exit.thread, %bb.e
  ret void

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRcRjENCINvMB6_SB12_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1R_10BpeTrainer16compute_alphabets0_0E0EB1X_.exit.thread
  %i.ab = lshr i64 %1, 1                          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1 ; 3 uses
  %i.ad = icmp eq i64 %i.ab, 1
  br i1 %i.ad, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.epil.preheader, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i.new

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i.new: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i
  %unroll_iter = and i64 %i.ab, 288230376151711742
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i.new ], [ %i.an, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i ]
  %i.ae = xor i64 %.sroa.0.016.i.i, -1
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ag = getelementptr [16 x i8], ptr %i.ac, i64 %i.ae ; 2 uses
  %i.ah = load <2 x ptr>, ptr %i.af, align 8, !alias.scope !47, !noalias !48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !alias.scope !49
  store <2 x ptr> %i.ah, ptr %i.ag, align 8, !alias.scope !50, !noalias !51
  %i.ai = xor i64 %.sroa.0.016.i.i, -2
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.al = getelementptr [16 x i8], ptr %i.ac, i64 %i.ai ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.ak, align 8, !alias.scope !47, !noalias !48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !alias.scope !49
  store <2 x ptr> %i.am, ptr %i.al, align 8, !alias.scope !50, !noalias !51
  %i.an = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE7reverseCs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB19_5sliceSB14_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2k_14UnigramTrainer8finalizes_0E0EB2q_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 36028797018963968) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB19_5sliceSB14_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2k_14UnigramTrainer8finalizes_0E0EB2q_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB19_5sliceSB14_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2k_14UnigramTrainer8finalizes_0E0EB2q_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB19_5sliceSB14_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2k_14UnigramTrainer8finalizes_0E0EB2q_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 24
  %.sroa.0.0.val13 = load double, ptr %i.n, align 8, !noundef !3 ; 4 uses
  %i.o = getelementptr i8, ptr %.sroa.04.0, i64 24
  %.sroa.04.0.val14 = load double, ptr %i.o, align 8, !noundef !3 ; 4 uses
  %brmerge.not.i = fcmp uno double %.sroa.04.0.val14, %.sroa.0.0.val13
  br i1 %brmerge.not.i, label %bb.d, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22
  unreachable

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit: ; preds = %bb.c
  %.mux.i = fcmp olt double %.sroa.04.0.val14, %.sroa.0.0.val13 ; 2 uses
  %i.p = getelementptr i8, ptr %.sroa.08.0, i64 24
  %.sroa.08.0.val12 = load double, ptr %i.p, align 8, !noundef !3 ; 4 uses
  %brmerge.not.i15 = fcmp uno double %.sroa.08.0.val12, %.sroa.0.0.val13
  br i1 %brmerge.not.i15, label %bb.e, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit17, !prof !7

bb.e:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22
  unreachable

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit17: ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit
  %.mux.i16 = fcmp olt double %.sroa.08.0.val12, %.sroa.0.0.val13
  %i.q = xor i1 %.mux.i, %.mux.i16
  br i1 %i.q, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB14_5sliceSBZ_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2e_14UnigramTrainer8finalizes_0E0EB2k_.exit, label %bb.f

bb.f:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit17
  %brmerge.not.i18 = fcmp uno double %.sroa.08.0.val12, %.sroa.04.0.val14
  br i1 %brmerge.not.i18, label %bb.g, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit20, !prof !7

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22
  unreachable

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit20: ; preds = %bb.f
  %.mux.i19 = fcmp olt double %.sroa.08.0.val12, %.sroa.04.0.val14
  %i.r = xor i1 %.mux.i, %.mux.i19
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB14_5sliceSBZ_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2e_14UnigramTrainer8finalizes_0E0EB2k_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB14_5sliceSBZ_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2e_14UnigramTrainer8finalizes_0E0EB2k_.exit: ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit17, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit20
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit17 ], [ %..i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit20 ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB14_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2t_9WordPieceNtNtB2x_9tokenizer5Model4save0E0EB2x_(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 72057594037927936) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SBZ_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2n_9WordPieceNtNtB2r_9tokenizer5Model4save0E0EB2r_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB14_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2t_9WordPieceNtNtB2x_9tokenizer5Model4save0E0EB2x_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB14_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2t_9WordPieceNtNtB2x_9tokenizer5Model4save0E0EB2x_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB14_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2t_9WordPieceNtNtB2x_9tokenizer5Model4save0E0EB2x_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SBZ_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2n_9WordPieceNtNtB2r_9tokenizer5Model4save0E0EB2r_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SBZ_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2n_9WordPieceNtNtB2r_9tokenizer5Model4save0E0EB2r_.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 8
  %.sroa.0.0.val13 = load ptr, ptr %i.n, align 8, !nonnull !3, !align !4, !noundef !3
  %i.o = getelementptr i8, ptr %.sroa.04.0, i64 8
  %.sroa.04.0.val14 = load ptr, ptr %i.o, align 8, !nonnull !3, !align !4, !noundef !3
  %i.p = load i32, ptr %.sroa.0.0.val13, align 4, !noundef !3 ; 2 uses
  %i.q = load i32, ptr %.sroa.04.0.val14, align 4, !noundef !3 ; 2 uses
  %i.r = icmp ult i32 %i.p, %i.q                  ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.08.0, i64 8
  %.sroa.08.0.val12 = load ptr, ptr %i.s, align 8, !nonnull !3, !align !4, !noundef !3
  %i.t = load i32, ptr %.sroa.08.0.val12, align 4, !noundef !3 ; 2 uses
  %i.u = icmp ult i32 %i.p, %i.t
  %i.v = xor i1 %i.r, %i.u
  %i.w = icmp ult i32 %i.q, %i.t
  %i.x = xor i1 %i.r, %i.w
  %..i = select i1 %i.x, ptr %.sroa.08.0, ptr %.sroa.04.0
  %.sroa.0.0.i = select i1 %i.v, ptr %.sroa.0.0, ptr %..i
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1a_5sliceSB14_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2m_16WordLevelTrainer8do_train0E0EB2s_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 72057594037927936) %3) unnamed_addr #3 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1a_5sliceSB14_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2m_16WordLevelTrainer8do_train0E0EB2s_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1a_5sliceSB14_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2m_16WordLevelTrainer8do_train0E0EB2s_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1a_5sliceSB14_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2m_16WordLevelTrainer8do_train0E0EB2s_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %.sroa.0.0.val17 = load ptr, ptr %.sroa.0.0, align 8 ; 6 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 8
  %.sroa.0.0.val18 = load ptr, ptr %i.n, align 8, !nonnull !3, !align !5, !noundef !3
  %.sroa.04.0.val19 = load ptr, ptr %.sroa.04.0, align 8 ; 6 uses
  %i.o = getelementptr i8, ptr %.sroa.04.0, i64 8
  %.sroa.04.0.val20 = load ptr, ptr %i.o, align 8, !nonnull !3, !align !5, !noundef !3
  %i.p = load i64, ptr %.sroa.0.0.val18, align 8, !noundef !3 ; 4 uses
  %i.q = load i64, ptr %.sroa.04.0.val20, align 8, !noundef !3 ; 4 uses
  %.not.i.i = icmp eq i64 %i.p, %i.q
  br i1 %.not.i.i, label %bb.d, label %switch.lookup.i.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.val17), "nonnull"(ptr %.sroa.04.0.val19) ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val17, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !3, !noundef !3
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val17, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noundef !3 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val19, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !3, !noundef !3
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val19, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !3 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.y)
  %i.z = tail call i32 @memcmp(ptr nonnull %i.s, ptr nonnull %i.w, i64 %spec.store.select.i.i) ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp eq i32 %i.z, 0
  %i.ac = sub i64 %i.u, %i.y
  %spec.select.i.i = select i1 %i.ab, i64 %i.ac, i64 %i.aa
  %i.ad = icmp slt i64 %spec.select.i.i, 0
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit

switch.lookup.i.i:                                ; preds = %bb.c
  %i.ae = icmp ult i64 %i.q, %i.p
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit: ; preds = %bb.d, %switch.lookup.i.i
  %.sroa.0.0.i.i = phi i1 [ %i.ad, %bb.d ], [ %i.ae, %switch.lookup.i.i ] ; 2 uses
  %.sroa.08.0.val15 = load ptr, ptr %.sroa.08.0, align 8 ; 6 uses
  %i.af = getelementptr i8, ptr %.sroa.08.0, i64 8
  %.sroa.08.0.val16 = load ptr, ptr %i.af, align 8, !nonnull !3, !align !5, !noundef !3
  %i.ag = load i64, ptr %.sroa.08.0.val16, align 8, !noundef !3 ; 4 uses
  %.not.i.i21 = icmp eq i64 %i.p, %i.ag
  br i1 %.not.i.i21, label %bb.e, label %switch.lookup.i.i22

bb.e:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.val17), "nonnull"(ptr %.sroa.08.0.val15) ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val17, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !3, !noundef !3
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val17, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !3 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val15, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !3, !noundef !3
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val15, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !noundef !3 ; 2 uses
  %spec.store.select.i.i24 = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 %i.ao)
  %i.ap = tail call i32 @memcmp(ptr nonnull %i.ai, ptr nonnull %i.am, i64 %spec.store.select.i.i24) ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp eq i32 %i.ap, 0
  %i.as = sub i64 %i.ak, %i.ao
  %spec.select.i.i25 = select i1 %i.ar, i64 %i.as, i64 %i.aq
  %i.at = icmp slt i64 %spec.select.i.i25, 0
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit26

switch.lookup.i.i22:                              ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit
  %i.au = icmp ult i64 %i.ag, %i.p
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit26

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit26: ; preds = %bb.e, %switch.lookup.i.i22
  %.sroa.0.0.i.i23 = phi i1 [ %i.at, %bb.e ], [ %i.au, %switch.lookup.i.i22 ]
  %i.av = xor i1 %.sroa.0.0.i.i, %.sroa.0.0.i.i23
  br i1 %i.av, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB15_5sliceSBZ_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2g_16WordLevelTrainer8do_train0E0EB2m_.exit, label %bb.f

bb.f:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit26
  %.not.i.i27 = icmp eq i64 %i.q, %i.ag
  br i1 %.not.i.i27, label %bb.g, label %switch.lookup.i.i28

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.val19), "nonnull"(ptr %.sroa.08.0.val15) ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val19, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !3, !noundef !3
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.04.0.val19, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !noundef !3 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val15, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !3, !noundef !3
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.08.0.val15, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !3 ; 2 uses
  %spec.store.select.i.i30 = tail call i64 @llvm.umin.i64(i64 %i.az, i64 %i.bd)
  %i.be = tail call i32 @memcmp(ptr nonnull %i.ax, ptr nonnull %i.bb, i64 %spec.store.select.i.i30) ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp eq i32 %i.be, 0
  %i.bh = sub i64 %i.az, %i.bd
  %spec.select.i.i31 = select i1 %i.bg, i64 %i.bh, i64 %i.bf
  %i.bi = icmp slt i64 %spec.select.i.i31, 0
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit32

switch.lookup.i.i28:                              ; preds = %bb.f
  %i.bj = icmp ult i64 %i.ag, %i.q
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit32

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit32: ; preds = %bb.g, %switch.lookup.i.i28
  %.sroa.0.0.i.i29 = phi i1 [ %i.bi, %bb.g ], [ %i.bj, %switch.lookup.i.i28 ]
  %i.bk = xor i1 %.sroa.0.0.i.i, %.sroa.0.0.i.i29
  %..i = select i1 %i.bk, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB15_5sliceSBZ_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2g_16WordLevelTrainer8do_train0E0EB2m_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB15_5sliceSBZ_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2g_16WordLevelTrainer8do_train0E0EB2m_.exit: ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit26, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit32
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit26 ], [ %..i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit32 ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRTmmERmENCINvMB8_SB14_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1W_3BPENtNtB22_9tokenizer5Model4saves_0E0EB22_(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 72057594037927936) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRTmmERmENCINvMB8_SBZ_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1Q_3BPENtNtB1W_9tokenizer5Model4saves_0E0EB1W_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRTmmERmENCINvMB8_SB14_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1W_3BPENtNtB22_9tokenizer5Model4saves_0E0EB22_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRTmmERmENCINvMB8_SB14_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1W_3BPENtNtB22_9tokenizer5Model4saves_0E0EB22_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRTmmERmENCINvMB8_SB14_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1W_3BPENtNtB22_9tokenizer5Model4saves_0E0EB22_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRTmmERmENCINvMB8_SBZ_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1Q_3BPENtNtB1W_9tokenizer5Model4saves_0E0EB1W_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRTmmERmENCINvMB8_SBZ_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1Q_3BPENtNtB1W_9tokenizer5Model4saves_0E0EB1W_.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 8
  %.sroa.0.0.val13 = load ptr, ptr %i.n, align 8, !nonnull !3, !align !4, !noundef !3
  %i.o = getelementptr i8, ptr %.sroa.04.0, i64 8
  %.sroa.04.0.val14 = load ptr, ptr %i.o, align 8, !nonnull !3, !align !4, !noundef !3
  %i.p = load i32, ptr %.sroa.0.0.val13, align 4, !noundef !3 ; 2 uses
  %i.q = load i32, ptr %.sroa.04.0.val14, align 4, !noundef !3 ; 2 uses
  %i.r = icmp ult i32 %i.p, %i.q                  ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.08.0, i64 8
  %.sroa.08.0.val12 = load ptr, ptr %i.s, align 8, !nonnull !3, !align !4, !noundef !3
  %i.t = load i32, ptr %.sroa.08.0.val12, align 4, !noundef !3 ; 2 uses
  %i.u = icmp ult i32 %i.p, %i.t
  %i.v = xor i1 %i.r, %i.u
  %i.w = icmp ult i32 %i.q, %i.t
  %i.x = xor i1 %i.r, %i.w
  %..i = select i1 %i.x, ptr %.sroa.08.0, ptr %.sroa.04.0
  %.sroa.0.0.i = select i1 %i.v, ptr %.sroa.0.0, ptr %..i
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRcRjENCINvMB8_SB14_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1T_10BpeTrainer16compute_alphabets_0E0EB1Z_(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 72057594037927936) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRcRjENCINvMB8_SBZ_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1N_10BpeTrainer16compute_alphabets_0E0EB1T_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRcRjENCINvMB8_SB14_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1T_10BpeTrainer16compute_alphabets_0E0EB1Z_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRcRjENCINvMB8_SB14_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1T_10BpeTrainer16compute_alphabets_0E0EB1Z_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRcRjENCINvMB8_SB14_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1T_10BpeTrainer16compute_alphabets_0E0EB1Z_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRcRjENCINvMB8_SBZ_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1N_10BpeTrainer16compute_alphabets_0E0EB1T_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRcRjENCINvMB8_SBZ_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1N_10BpeTrainer16compute_alphabets_0E0EB1T_.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 8
  %.sroa.0.0.val13 = load ptr, ptr %i.n, align 8, !nonnull !3, !align !5, !noundef !3
  %i.o = getelementptr i8, ptr %.sroa.04.0, i64 8
  %.sroa.04.0.val14 = load ptr, ptr %i.o, align 8, !nonnull !3, !align !5, !noundef !3
  %i.p = load i64, ptr %.sroa.0.0.val13, align 8, !noundef !3 ; 2 uses
  %i.q = load i64, ptr %.sroa.04.0.val14, align 8, !noundef !3 ; 2 uses
  %i.r = icmp ult i64 %i.p, %i.q                  ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.08.0, i64 8
  %.sroa.08.0.val12 = load ptr, ptr %i.s, align 8, !nonnull !3, !align !5, !noundef !3
  %i.t = load i64, ptr %.sroa.08.0.val12, align 8, !noundef !3 ; 2 uses
  %i.u = icmp ult i64 %i.p, %i.t
  %i.v = xor i1 %i.r, %i.u
  %i.w = icmp ult i64 %i.q, %i.t
  %i.x = xor i1 %i.r, %i.w
  %..i = select i1 %i.x, ptr %.sroa.08.0, ptr %.sroa.04.0
  %.sroa.0.0.i = select i1 %i.v, ptr %.sroa.0.0, ptr %..i
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRcRjENCINvMB8_SB14_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1T_10BpeTrainer16compute_alphabets0_0E0EB1Z_(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 72057594037927936) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRcRjENCINvMB8_SBZ_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1N_10BpeTrainer16compute_alphabets0_0E0EB1T_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRcRjENCINvMB8_SB14_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1T_10BpeTrainer16compute_alphabets0_0E0EB1Z_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRcRjENCINvMB8_SB14_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1T_10BpeTrainer16compute_alphabets0_0E0EB1Z_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRcRjENCINvMB8_SB14_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1T_10BpeTrainer16compute_alphabets0_0E0EB1Z_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRcRjENCINvMB8_SBZ_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1N_10BpeTrainer16compute_alphabets0_0E0EB1T_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRcRjENCINvMB8_SBZ_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1N_10BpeTrainer16compute_alphabets0_0E0EB1T_.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.sroa.0.0.val13 = load ptr, ptr %.sroa.0.0, align 8, !nonnull !3, !align !4, !noundef !3
  %.sroa.04.0.val14 = load ptr, ptr %.sroa.04.0, align 8, !nonnull !3, !align !4, !noundef !3
  %i.n = load i32, ptr %.sroa.0.0.val13, align 4, !range !6, !noundef !3 ; 2 uses
  %i.o = load i32, ptr %.sroa.04.0.val14, align 4, !range !6, !noundef !3 ; 2 uses
  %i.p = icmp samesign ult i32 %i.n, %i.o         ; 2 uses
  %.sroa.08.0.val12 = load ptr, ptr %.sroa.08.0, align 8, !nonnull !3, !align !4, !noundef !3
  %i.q = load i32, ptr %.sroa.08.0.val12, align 4, !range !6, !noundef !3 ; 2 uses
  %i.r = icmp samesign ult i32 %i.n, %i.q
  %i.s = xor i1 %i.p, %i.r
  %i.t = icmp samesign ult i32 %i.o, %i.q
  %i.u = xor i1 %i.p, %i.t
  %..i = select i1 %i.u, ptr %.sroa.08.0, ptr %.sroa.04.0
  %.sroa.0.0.i = select i1 %i.s, ptr %.sroa.0.0, ptr %..i
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB24_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 72057594037927936) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3ThciENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB1Y_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB24_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB24_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB24_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3ThciENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB1Y_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3ThciENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB1Y_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 4
  %.sroa.0.0.val13 = load i8, ptr %i.n, align 4, !noundef !3 ; 2 uses
  %i.o = getelementptr i8, ptr %.sroa.04.0, i64 4
  %.sroa.04.0.val14 = load i8, ptr %i.o, align 4, !noundef !3 ; 2 uses
  %i.p = icmp ult i8 %.sroa.0.0.val13, %.sroa.04.0.val14 ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.08.0, i64 4
  %.sroa.08.0.val12 = load i8, ptr %i.q, align 4, !noundef !3 ; 2 uses
  %i.r = icmp ult i8 %.sroa.0.0.val13, %.sroa.08.0.val12
  %i.s = xor i1 %i.p, %i.r
  %i.t = icmp ult i8 %.sroa.04.0.val14, %.sroa.08.0.val12
  %i.u = xor i1 %i.p, %i.t
  %..i = select i1 %i.u, ptr %.sroa.08.0, ptr %.sroa.04.0
  %.sroa.0.0.i = select i1 %i.s, ptr %.sroa.0.0, ptr %..i
  ret ptr %.sroa.0.0.i
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1Z_14UnigramTrainer21prune_sentence_piecess1_0E0EB25_:bb.a
  %i.r = xor i1 %.mux.i, %.mux.i19
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TjdENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1T_14UnigramTrainer21prune_sentence_piecess1_0E0EB1Z_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TjdENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1T_14UnigramTrainer21prune_sentence_piecess1_0E0EB1Z_.exit: ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit17, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit20
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit17 ], [ %..i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit20 ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyINtNtBa_3cmp7ReverseB14_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2v_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2B_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 48038396025285291) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyINtNtBa_3cmp7ReverseB14_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2v_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2B_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyINtNtBa_3cmp7ReverseB14_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2v_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2B_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyINtNtBa_3cmp7ReverseB14_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2v_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2B_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 7 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 7 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %.sroa.0.0.copyload.i = load i32, ptr %.sroa.0.0, align 8, !alias.scope !99, !noalias !98 ; 3 uses
  %.sroa.02.0.copyload.i = load i32, ptr %.sroa.04.0, align 8, !alias.scope !100, !noalias !97 ; 2 uses
  %i.n = icmp eq i32 %.sroa.02.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp ult i32 %.sroa.02.0.copyload.i, %.sroa.0.0.copyload.i
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit

bb.e:                                             ; preds = %bb.c
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 16
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !100, !noalias !97
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 8
  %.sroa.44.0.copyload.i = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !100, !noalias !97, !nonnull !3, !noundef !3
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !99, !noalias !98
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %.sroa.41.0.copyload.i = load ptr, ptr %.sroa.41.0..sroa_idx.i, align 8, !alias.scope !99, !noalias !98, !nonnull !3, !noundef !3
  %i.p = tail call noundef i8 @_RNvXs5_NtNtCs4NRVxsYgnAr_4core5slice3cmpcNtB5_10SliceChain11chaining_ltCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.44.0.copyload.i, i64 noundef range(i64 0, 2305843009213693952) %.sroa.55.0.copyload.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.41.0.copyload.i, i64 noundef range(i64 0, 2305843009213693952) %.sroa.5.0.copyload.i), !noalias !101
  %i.q = icmp eq i8 %i.p, 1
  %.sroa.0.0.copyload.i12.pre = load i32, ptr %.sroa.0.0, align 8, !alias.scope !102, !noalias !103
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit: ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i12 = phi i32 [ %.sroa.0.0.copyload.i, %bb.d ], [ %.sroa.0.0.copyload.i12.pre, %bb.e ] ; 2 uses
  %.sroa.0.0.i.i.i = phi i1 [ %i.o, %bb.d ], [ %i.q, %bb.e ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %.sroa.02.0.copyload.i13 = load i32, ptr %.sroa.08.0, align 8, !alias.scope !105, !noalias !104 ; 2 uses
  %i.r = icmp eq i32 %.sroa.02.0.copyload.i13, %.sroa.0.0.copyload.i12
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit
  %i.s = icmp ult i32 %.sroa.02.0.copyload.i13, %.sroa.0.0.copyload.i12
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit23

bb.g:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit
  %.sroa.55.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 16
  %.sroa.55.0.copyload.i16 = load i64, ptr %.sroa.55.0..sroa_idx.i15, align 8, !alias.scope !105, !noalias !104
  %.sroa.44.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 8
  %.sroa.44.0.copyload.i18 = load ptr, ptr %.sroa.44.0..sroa_idx.i17, align 8, !alias.scope !105, !noalias !104, !nonnull !3, !noundef !3
  %.sroa.5.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %.sroa.5.0.copyload.i20 = load i64, ptr %.sroa.5.0..sroa_idx.i19, align 8, !alias.scope !102, !noalias !103
  %.sroa.41.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %.sroa.41.0.copyload.i22 = load ptr, ptr %.sroa.41.0..sroa_idx.i21, align 8, !alias.scope !102, !noalias !103, !nonnull !3, !noundef !3
  %i.t = tail call noundef i8 @_RNvXs5_NtNtCs4NRVxsYgnAr_4core5slice3cmpcNtB5_10SliceChain11chaining_ltCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.44.0.copyload.i18, i64 noundef range(i64 0, 2305843009213693952) %.sroa.55.0.copyload.i16, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.41.0.copyload.i22, i64 noundef range(i64 0, 2305843009213693952) %.sroa.5.0.copyload.i20), !noalias !106
  %i.u = icmp eq i8 %i.t, 1
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit23

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit23: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i.i.i14 = phi i1 [ %i.s, %bb.f ], [ %i.u, %bb.g ]
  %i.v = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i14
  br i1 %i.v, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyINtNtBa_3cmp7ReverseBZ_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2o_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2u_.exit, label %bb.h

bb.h:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %.sroa.0.0.copyload.i24 = load i32, ptr %.sroa.04.0, align 8, !alias.scope !109, !noalias !108 ; 2 uses
  %.sroa.02.0.copyload.i25 = load i32, ptr %.sroa.08.0, align 8, !alias.scope !110, !noalias !107 ; 2 uses
  %i.w = icmp eq i32 %.sroa.02.0.copyload.i25, %.sroa.0.0.copyload.i24
  br i1 %i.w, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = icmp ult i32 %.sroa.02.0.copyload.i25, %.sroa.0.0.copyload.i24
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit35

bb.j:                                             ; preds = %bb.h
  %.sroa.55.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 16
  %.sroa.55.0.copyload.i28 = load i64, ptr %.sroa.55.0..sroa_idx.i27, align 8, !alias.scope !110, !noalias !107
  %.sroa.44.0..sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 8
  %.sroa.44.0.copyload.i30 = load ptr, ptr %.sroa.44.0..sroa_idx.i29, align 8, !alias.scope !110, !noalias !107, !nonnull !3, !noundef !3
  %.sroa.5.0..sroa_idx.i31 = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 16
  %.sroa.5.0.copyload.i32 = load i64, ptr %.sroa.5.0..sroa_idx.i31, align 8, !alias.scope !109, !noalias !108
  %.sroa.41.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 8
  %.sroa.41.0.copyload.i34 = load ptr, ptr %.sroa.41.0..sroa_idx.i33, align 8, !alias.scope !109, !noalias !108, !nonnull !3, !noundef !3
  %i.y = tail call noundef i8 @_RNvXs5_NtNtCs4NRVxsYgnAr_4core5slice3cmpcNtB5_10SliceChain11chaining_ltCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.44.0.copyload.i30, i64 noundef range(i64 0, 2305843009213693952) %.sroa.55.0.copyload.i28, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.41.0.copyload.i34, i64 noundef range(i64 0, 2305843009213693952) %.sroa.5.0.copyload.i32), !noalias !111
  %i.z = icmp eq i8 %i.y, 1
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit35

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit35: ; preds = %bb.i, %bb.j
  %.sroa.0.0.i.i.i26 = phi i1 [ %i.x, %bb.i ], [ %i.z, %bb.j ]
  %i.aa = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i26
  %..i = select i1 %i.aa, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyINtNtBa_3cmp7ReverseBZ_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2o_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2u_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyINtNtBa_3cmp7ReverseBZ_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2o_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2u_.exit: ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit23, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit35
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit23 ], [ %..i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit35 ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyINtNtBa_3cmp7ReverseB14_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2t_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2z_(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 144115188075855872) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyINtNtBa_3cmp7ReverseB14_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2t_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2z_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyINtNtBa_3cmp7ReverseB14_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2t_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2z_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyINtNtBa_3cmp7ReverseB14_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2t_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2z_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %.sroa.0.0.val17 = load i32, ptr %.sroa.0.0, align 4, !noundef !3 ; 4 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 4
  %.sroa.0.0.val18 = load i32, ptr %i.n, align 4, !range !6, !noundef !3 ; 2 uses
  %.sroa.04.0.val19 = load i32, ptr %.sroa.04.0, align 4, !noundef !3 ; 4 uses
  %i.o = getelementptr i8, ptr %.sroa.04.0, i64 4
  %.sroa.04.0.val20 = load i32, ptr %i.o, align 4, !range !6, !noundef !3 ; 2 uses
  %i.p = icmp eq i32 %.sroa.04.0.val19, %.sroa.0.0.val17
  %i.q = icmp ult i32 %.sroa.04.0.val19, %.sroa.0.0.val17
  %i.r = icmp samesign ult i32 %.sroa.04.0.val20, %.sroa.0.0.val18
  %.sroa.0.0.i.i.i = select i1 %i.p, i1 %i.r, i1 %i.q ; 2 uses
  %.sroa.08.0.val15 = load i32, ptr %.sroa.08.0, align 4, !noundef !3 ; 4 uses
  %i.s = getelementptr i8, ptr %.sroa.08.0, i64 4
  %.sroa.08.0.val16 = load i32, ptr %i.s, align 4, !range !6, !noundef !3 ; 2 uses
  %i.t = icmp eq i32 %.sroa.08.0.val15, %.sroa.0.0.val17
  %i.u = icmp ult i32 %.sroa.08.0.val15, %.sroa.0.0.val17
  %i.v = icmp samesign ult i32 %.sroa.08.0.val16, %.sroa.0.0.val18
  %.sroa.0.0.i.i.i21 = select i1 %i.t, i1 %i.v, i1 %i.u
  %i.w = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i21
  br i1 %i.w, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TmcENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyINtNtBa_3cmp7ReverseBZ_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2m_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2s_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = icmp eq i32 %.sroa.08.0.val15, %.sroa.04.0.val19
  %i.y = icmp ult i32 %.sroa.08.0.val15, %.sroa.04.0.val19
  %i.z = icmp samesign ult i32 %.sroa.08.0.val16, %.sroa.04.0.val20
  %.sroa.0.0.i.i.i22 = select i1 %i.x, i1 %i.z, i1 %i.y
  %i.aa = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i22
  %..i = select i1 %i.aa, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TmcENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyINtNtBa_3cmp7ReverseBZ_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2m_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2s_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TmcENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyINtNtBa_3cmp7ReverseBZ_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2m_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2s_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1e_5sliceSB18_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2q_16WordLevelTrainer8do_train0E0EB2w_(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef nonnull captures(address) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -16 ; 5 uses
  %.val11 = load ptr, ptr %1, align 8             ; 6 uses
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val12 = load ptr, ptr %i.b, align 8, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.c = getelementptr i8, ptr %1, i64 -8
  %.val14 = load ptr, ptr %i.c, align 8, !nonnull !3, !align !5, !noundef !3
  %i.d = load i64, ptr %.val12, align 8, !noundef !3 ; 2 uses
  %i.e = load i64, ptr %.val14, align 8, !noundef !3 ; 2 uses
  %.not.i.i = icmp eq i64 %i.d, %i.e
  br i1 %.not.i.i, label %.split, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit

.split:                                           ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %.val13 = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val11, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %.val11, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !3 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val13, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !3, !noundef !3
  %i.l = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !3 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.m)
  %i.n = tail call i32 @memcmp(ptr nonnull %i.g, ptr nonnull %i.k, i64 %spec.store.select.i.i) ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp eq i32 %i.n, 0
  %i.q = sub i64 %i.i, %i.m
  %spec.select.i.i = select i1 %i.p, i64 %i.q, i64 %i.o
  %i.r = icmp slt i64 %spec.select.i.i, 0
  br i1 %i.r, label %bb.b, label %bb.c

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit: ; preds = %bb.a
  %i.s = icmp ult i64 %i.e, %i.d
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.split, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.t = icmp eq ptr %i.a, %0
  br i1 %i.t, label %.split6._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.val11, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %.val11, i64 16
  br label %bb.d

bb.c:                                             ; preds = %.split, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit, %.split6._crit_edge
  ret void

bb.d:                                             ; preds = %.lr.ph, %.backedge
  %.sroa.0.07 = phi ptr [ %i.a, %.lr.ph ], [ %i.w, %.backedge ] ; 5 uses
  %i.w = getelementptr inbounds i8, ptr %.sroa.0.07, i64 -16 ; 5 uses
  %i.x = getelementptr i8, ptr %.sroa.0.07, i64 -8
  %.val10 = load ptr, ptr %i.x, align 8, !nonnull !3, !align !5, !noundef !3
  %i.y = load i64, ptr %.val12, align 8, !noundef !3 ; 2 uses
  %i.z = load i64, ptr %.val10, align 8, !noundef !3 ; 2 uses
  %.not.i.i15 = icmp eq i64 %i.y, %i.z
  br i1 %.not.i.i15, label %.split6, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit20

.split6:                                          ; preds = %bb.d
  %.val9 = load ptr, ptr %i.w, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.aa = load ptr, ptr %i.u, align 8, !nonnull !3, !noundef !3
  %i.ab = load i64, ptr %i.v, align 8, !noundef !3 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !3, !noundef !3
  %i.ae = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noundef !3 ; 2 uses
  %spec.store.select.i.i18 = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.af)
  %i.ag = tail call i32 @memcmp(ptr nonnull %i.aa, ptr nonnull %i.ad, i64 %spec.store.select.i.i18) ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp eq i32 %i.ag, 0
  %i.aj = sub i64 %i.ab, %i.af
  %spec.select.i.i19 = select i1 %i.ai, i64 %i.aj, i64 %i.ah
  %i.ak = icmp slt i64 %spec.select.i.i19, 0
  br i1 %i.ak, label %.backedge, label %.split6._crit_edge

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit20: ; preds = %bb.d
  %i.al = icmp ult i64 %i.z, %i.y
  br i1 %i.al, label %.backedge, label %.split6._crit_edge

.backedge:                                        ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit20, %.split6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.07, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false)
  %i.am = icmp eq ptr %i.w, %0
  br i1 %i.am, label %.split6._crit_edge, label %bb.d

.split6._crit_edge:                               ; preds = %.backedge, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit20, %.split6, %bb.b
  %.sroa.0.0.lcssa = phi ptr [ %i.a, %bb.b ], [ %.sroa.0.07, %.split6 ], [ %.sroa.0.07, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit20 ], [ %i.w, %.backedge ] ; 2 uses
  store ptr %.val11, ptr %.sroa.0.0.lcssa, align 8, !noalias !116
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 8
  store ptr %.val12, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx, align 8, !noalias !116
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseB18_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2z_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2F_(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef nonnull captures(address) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -24 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !alias.scope !148, !noalias !147 ; 3 uses
  %.sroa.02.0.copyload.i = load i32, ptr %i.a, align 8, !alias.scope !149, !noalias !146 ; 2 uses
  %i.b = icmp eq i32 %.sroa.02.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.b, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit, label %.split

.split:                                           ; preds = %bb.a
  %i.c = icmp ult i32 %.sroa.02.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.c, label %bb.b, label %bb.c

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit: ; preds = %bb.a
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds i8, ptr %1, i64 -8
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !149, !noalias !146
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds i8, ptr %1, i64 -16
  %.sroa.44.0.copyload.i = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !149, !noalias !146, !nonnull !3, !noundef !3
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !148, !noalias !147
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.41.0.copyload.i = load ptr, ptr %.sroa.41.0..sroa_idx.i, align 8, !alias.scope !148, !noalias !147, !nonnull !3, !noundef !3
  %i.d = tail call noundef i8 @_RNvXs5_NtNtCs4NRVxsYgnAr_4core5slice3cmpcNtB5_10SliceChain11chaining_ltCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.44.0.copyload.i, i64 noundef range(i64 0, 2305843009213693952) %.sroa.55.0.copyload.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.41.0.copyload.i, i64 noundef range(i64 0, 2305843009213693952) %.sroa.5.0.copyload.i), !noalias !150
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit._crit_edge, label %bb.c

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit._crit_edge: ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit
  %.sroa.022.0.copyload.pre = load i32, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit._crit_edge, %.split
  %.sroa.022.0.copyload = phi i32 [ %.sroa.022.0.copyload.pre, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit._crit_edge ], [ %.sroa.0.0.copyload.i, %.split ] ; 4 uses
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.423.0.copyload = load i32, ptr %.sroa.423.0..sroa_idx, align 4 ; 2 uses
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.524.0.copyload = load ptr, ptr %.sroa.524.0..sroa_idx, align 8 ; 3 uses
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.625.0.copyload = load i64, ptr %.sroa.625.0..sroa_idx, align 8 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.f = icmp eq ptr %i.a, %0
  br i1 %i.f, label %.split5._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.split, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit, %.split5._crit_edge
  ret void

.lr.ph:                                           ; preds = %bb.b, %.backedge
  %.sroa.0.07 = phi ptr [ %i.g, %.backedge ], [ %i.a, %bb.b ] ; 10 uses
  %i.g = getelementptr inbounds i8, ptr %.sroa.0.07, i64 -24 ; 5 uses
  %.sroa.02.0.copyload.i9 = load i32, ptr %i.g, align 8, !alias.scope !151, !noalias !152 ; 2 uses
  %i.h = icmp eq i32 %.sroa.02.0.copyload.i9, %.sroa.022.0.copyload
  br i1 %i.h, label %bb.d, label %.split5

.split5:                                          ; preds = %.lr.ph
  %i.i = icmp ult i32 %.sroa.02.0.copyload.i9, %.sroa.022.0.copyload
  br i1 %i.i, label %.backedge, label %.split5._crit_edge

bb.d:                                             ; preds = %.lr.ph
  %.sroa.55.0..sroa_idx.i11 = getelementptr inbounds i8, ptr %.sroa.0.07, i64 -8
  %.sroa.55.0.copyload.i12 = load i64, ptr %.sroa.55.0..sroa_idx.i11, align 8, !alias.scope !151, !noalias !152
  %.sroa.44.0..sroa_idx.i13 = getelementptr inbounds i8, ptr %.sroa.0.07, i64 -16
  %.sroa.44.0.copyload.i14 = load ptr, ptr %.sroa.44.0..sroa_idx.i13, align 8, !alias.scope !151, !noalias !152, !nonnull !3, !noundef !3
  %i.j = invoke noundef i8 @_RNvXs5_NtNtCs4NRVxsYgnAr_4core5slice3cmpcNtB5_10SliceChain11chaining_ltCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.44.0.copyload.i14, i64 noundef range(i64 0, 2305843009213693952) %.sroa.55.0.copyload.i12, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.524.0.copyload, i64 noundef range(i64 0, 2305843009213693952) %.sroa.625.0.copyload)
          to label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit19 unwind label %bb.e

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit19: ; preds = %bb.d
  %i.k = icmp eq i8 %i.j, 1
  br i1 %i.k, label %.backedge, label %.split5._crit_edge

.backedge:                                        ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit19, %.split5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.07, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.l = icmp eq ptr %i.g, %0
  br i1 %i.l, label %.split5._crit_edge, label %.lr.ph

.split5._crit_edge:                               ; preds = %.backedge, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit19, %.split5, %bb.b
  %.sroa.0.0.lcssa = phi ptr [ %i.a, %bb.b ], [ %.sroa.0.07, %.split5 ], [ %.sroa.0.07, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit19 ], [ %i.g, %.backedge ] ; 4 uses
  store i32 %.sroa.022.0.copyload, ptr %.sroa.0.0.lcssa, align 8, !noalias !153
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 4
  store i32 %.sroa.423.0.copyload, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx, align 4, !noalias !153
  %.sroa.615.0..sroa.0.0.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 8
  store ptr %.sroa.524.0.copyload, ptr %.sroa.615.0..sroa.0.0.lcssa.sroa_idx, align 8, !noalias !153
  %.sroa.7.0..sroa.0.0.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 16
  store i64 %.sroa.625.0.copyload, ptr %.sroa.7.0..sroa.0.0.lcssa.sroa_idx, align 8, !noalias !153
  br label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  store i32 %.sroa.022.0.copyload, ptr %.sroa.0.07, align 8, !noalias !154
  %.sroa.6.0..sroa.0.07.lcssa10.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 4
  store i32 %.sroa.423.0.copyload, ptr %.sroa.6.0..sroa.0.07.lcssa10.sroa_idx, align 4, !noalias !154
  %.sroa.615.0..sroa.0.07.lcssa10.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 8
  store ptr %.sroa.524.0.copyload, ptr %.sroa.615.0..sroa.0.07.lcssa10.sroa_idx, align 8, !noalias !154
  %.sroa.7.0..sroa.0.07.lcssa10.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 16
  store i64 %.sroa.625.0.copyload, ptr %.sroa.7.0..sroa.0.07.lcssa10.sroa_idx, align 8, !noalias !154
  resume { ptr, i32 } %i.m
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB1e_5sliceSB19_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2p_14UnigramTrainer8finalizes_0E0EB2v_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %.val8 = load double, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %.val9 = load double, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %brmerge.not.i = fcmp uno double %.val9, %.val8
  br i1 %brmerge.not.i, label %bb.b, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22
  unreachable

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit: ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 120
  %.val6 = load double, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 88
  %.val7 = load double, ptr %i.d, align 8, !noundef !3 ; 2 uses
  %brmerge.not.i10 = fcmp uno double %.val7, %.val6
  br i1 %brmerge.not.i10, label %bb.c, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit12, !prof !7

bb.c:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB1a_5sliceSB15_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2l_14UnigramTrainer8finalizes_0E0EB2r_:bb.a
  %i.bu = call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB19_5sliceSB14_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2k_14UnigramTrainer8finalizes_0E0EB2q_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph140, ptr noundef readonly %i.br, ptr noundef readonly %i.bs, i64 noundef %i.bq)
  br label %bb.z

bb.u:                                             ; preds = %.lr.ph383
  %.val6.i = load double, ptr %i.c, align 8, !alias.scope !764, !noundef !3 ; 4 uses
  %i.bv = getelementptr i8, ptr %i.br, i64 24
  %.val7.i = load double, ptr %i.bv, align 8, !alias.scope !764, !noundef !3 ; 4 uses
  %brmerge.not.i.i = fcmp uno double %.val7.i, %.val6.i
  br i1 %brmerge.not.i.i, label %bb.v, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit.i, !prof !7

bb.v:                                             ; preds = %bb.u
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22, !noalias !764
  unreachable

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit.i: ; preds = %bb.u
  %.mux.i.i = fcmp olt double %.val7.i, %.val6.i  ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bs, i64 24
  %.val5.i = load double, ptr %i.bw, align 8, !alias.scope !764, !noundef !3 ; 4 uses
  %brmerge.not.i8.i = fcmp uno double %.val5.i, %.val6.i
  br i1 %brmerge.not.i8.i, label %bb.w, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit10.i, !prof !7

bb.w:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit.i
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22, !noalias !764
  unreachable

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit10.i: ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit.i
  %.mux.i9.i = fcmp olt double %.val5.i, %.val6.i
  %i.bx = xor i1 %.mux.i.i, %.mux.i9.i
  br i1 %i.bx, label %bb.z, label %bb.x

bb.x:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit10.i
  %brmerge.not.i11.i = fcmp uno double %.val5.i, %.val7.i
  br i1 %brmerge.not.i11.i, label %bb.y, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit13.i, !prof !7

bb.y:                                             ; preds = %bb.x
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22, !noalias !764
  unreachable

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit13.i: ; preds = %bb.x
  %.mux.i12.i = fcmp olt double %.val5.i, %.val7.i
  %i.by = xor i1 %.mux.i.i, %.mux.i12.i
  %..i.i = select i1 %i.by, ptr %i.bs, ptr %i.br
  br label %bb.z

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB1x_5sliceSB1s_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2I_14UnigramTrainer8finalizes_0E0EB2O_.exit: ; preds = %.outer._crit_edge.thread, %bb.m, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.z:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit13.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit10.i, %bb.t
  %.sroa.0.0.i.sink.i = phi ptr [ %i.bu, %bb.t ], [ %.sroa.0.0.ph140, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit10.i ], [ %..i.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit13.i ]
  %i.bz = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.ca = sub nuw i64 %i.bz, %i.d                 ; 2 uses
  %.sroa.0.0.i37 = lshr exact i64 %i.ca, 5        ; 3 uses
  %i.cb = icmp samesign ult i64 %.sroa.0.0.i37, %.sroa.16.0133381
  call void @llvm.assume(i1 %i.cb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph140, i64 %i.ca ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.cc, i64 32, i1 false)
  br i1 %.not, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.028.0.val = load double, ptr %i.e, align 8, !noundef !3 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 24
  %.val = load double, ptr %i.cd, align 8, !noundef !3 ; 2 uses
  %brmerge.not.i = fcmp uno double %.val, %.sroa.028.0.val
  br i1 %brmerge.not.i, label %bb.ab, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit, !prof !7

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22
  unreachable

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit: ; preds = %bb.aa
  %.mux.i = fcmp olt double %.val, %.sroa.028.0.val
  br i1 %.mux.i, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.z, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !765)
  call void @llvm.experimental.noalias.scope.decl(metadata !766)
  %.not71 = icmp samesign ult i64 %3, %.sroa.16.0133381
  br i1 %.not71, label %bb.ae, label %bb.ad, !prof !8

bb.ad:                                            ; preds = %bb.ac
  %i.ce = getelementptr [32 x i8], ptr %2, i64 %.sroa.16.0133381 ; 4 uses
  %i.cf = getelementptr i8, ptr %i.cc, i64 24
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.trap()
  unreachable

bb.af:                                            ; preds = %bb.ah, %bb.ad
  %.sroa.19.0.i = phi ptr [ %i.ce, %bb.ad ], [ %i.cq, %bb.ah ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.ad ], [ %.sroa.11.1.lcssa.i, %bb.ah ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph140, %bb.ad ], [ %i.cs, %bb.ah ] ; 3 uses
  %.sroa.0.0.i38 = phi i64 [ %.sroa.0.0.i37, %bb.ad ], [ %.sroa.16.0133381, %bb.ah ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph140, i64 %.sroa.0.0.i38 ; 2 uses
  %i.ch = icmp ult ptr %.sroa.5.0.i, %i.cg
  br i1 %i.ch, label %.lr.ph.i40, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit.i42, %bb.af
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.af ], [ %i.ck, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit.i42 ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.af ], [ %i.cn, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit.i42 ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.af ], [ %i.co, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit.i42 ] ; 2 uses
  %i.ci = icmp eq i64 %.sroa.0.0.i38, %.sroa.16.0133381
  br i1 %i.ci, label %bb.ai, label %bb.ah

.lr.ph.i40:                                       ; preds = %bb.af, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit.i42
  %.sroa.5.114.i = phi ptr [ %i.co, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit.i42 ], [ %.sroa.5.0.i, %bb.af ] ; 3 uses
  %.sroa.11.113.i = phi i64 [ %i.cn, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit.i42 ], [ %.sroa.11.0.i, %bb.af ] ; 2 uses
  %.sroa.19.112.i = phi ptr [ %i.ck, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit.i42 ], [ %.sroa.19.0.i, %bb.af ]
  %i.cj = getelementptr i8, ptr %.sroa.5.114.i, i64 24
  %.val.i = load double, ptr %i.cj, align 8, !alias.scope !765, !noalias !766, !noundef !3 ; 2 uses
  %.val12.i = load double, ptr %i.cf, align 8, !alias.scope !765, !noalias !766, !noundef !3 ; 2 uses
  %brmerge.not.i.i41 = fcmp uno double %.val12.i, %.val.i
  br i1 %brmerge.not.i.i41, label %bb.ag, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit.i42, !prof !7

bb.ag:                                            ; preds = %.lr.ph.i40
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22, !noalias !767
  unreachable

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit.i42: ; preds = %.lr.ph.i40
  %.mux.i.i43 = fcmp olt double %.val12.i, %.val.i ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %.sroa.19.112.i, i64 -32 ; 3 uses
  %.sroa.01.0.i.i = select i1 %.mux.i.i43, ptr %2, ptr %i.ck
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.113.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cl, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.114.i, i64 32, i1 false), !alias.scope !767, !noalias !768
  %i.cm = zext i1 %.mux.i.i43 to i64
  %i.cn = add i64 %.sroa.11.113.i, %i.cm          ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.5.114.i, i64 32 ; 3 uses
  %i.cp = icmp ult ptr %i.co, %i.cg
  br i1 %i.cp, label %.lr.ph.i40, label %._crit_edge.i

bb.ah:                                            ; preds = %._crit_edge.i
  %i.cq = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -32 ; 2 uses
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.cq, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.1.lcssa.i, i64 32, i1 false), !alias.scope !767, !noalias !769
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 32
  br label %bb.af

bb.ai:                                            ; preds = %._crit_edge.i
  %i.ct = shl i64 %.sroa.11.1.lcssa.i, 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph140, ptr nonnull align 8 %2, i64 %i.ct, i1 false), !alias.scope !767
  %i.cu = sub i64 %.sroa.16.0133381, %.sroa.11.1.lcssa.i ; 4 uses
  %.not21.i = icmp eq i64 %.sroa.16.0133381, %.sroa.11.1.lcssa.i
  br i1 %.not21.i, label %.loopexit, label %.lr.ph19.i

.lr.ph19.i:                                       ; preds = %bb.ai
  %i.cv = getelementptr [32 x i8], ptr %.sroa.0.0.ph140, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.cu, 1
  %i.cw = icmp eq i64 %.sroa.16.0133381, %.neg
  br i1 %i.cw, label %.epil.preheader, label %.lr.ph19.i.new

.lr.ph19.i.new:                                   ; preds = %.lr.ph19.i
  %unroll_iter = and i64 %i.cu, -2
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.lr.ph19.i.new
  %.sroa.06.017.i = phi i64 [ 0, %.lr.ph19.i.new ], [ %i.da, %bb.aj ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph19.i.new ], [ %niter.next.1, %bb.aj ]
  %i.cx = xor i64 %.sroa.06.017.i, -1
  %i.cy = getelementptr [32 x i8], ptr %i.ce, i64 %i.cx
  %i.cz = getelementptr [32 x i8], ptr %i.cv, i64 %.sroa.06.017.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, ptr noundef nonnull align 8 dereferenceable(32) %i.cy, i64 32, i1 false), !alias.scope !767
  %i.da = add nuw i64 %.sroa.06.017.i, 2          ; 2 uses
  %i.db = xor i64 %.sroa.06.017.i, -2
  %i.dc = getelementptr [32 x i8], ptr %i.ce, i64 %i.db
  %i.dd = getelementptr [32 x i8], ptr %i.cv, i64 %.sroa.06.017.i
  %i.de = getelementptr i8, ptr %i.dd, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.de, ptr noundef nonnull align 8 dereferenceable(32) %i.dc, i64 32, i1 false), !alias.scope !767
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.aj

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.aj
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph19.i
  %.sroa.06.017.i.epil.init = phi i64 [ 0, %.lr.ph19.i ], [ %i.da, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod506 = trunc i64 %i.cu to i1
  call void @llvm.assume(i1 %lcmp.mod506)
  %i.df = xor i64 %.sroa.06.017.i.epil.init, -1
  %i.dg = getelementptr [32 x i8], ptr %i.ce, i64 %i.df
  %i.dh = getelementptr [32 x i8], ptr %i.cv, i64 %.sroa.06.017.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %i.dg, i64 32, i1 false), !alias.scope !767
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.ai
  %i.di = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.di, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %.loopexit
  %.not.i44 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.0133381
  br i1 %.not.i44, label %bb.al, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCscdodAO9FK5_5alloc6string6StringdE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit, !prof !11

bb.al:                                            ; preds = %bb.ak
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22, !noalias !770
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCscdodAO9FK5_5alloc6string6StringdE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph140) ]
  %7 = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph140, i64 %.sroa.11.1.lcssa.i
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB1a_5sliceSB15_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2l_14UnigramTrainer8finalizes_0E0EB2r_(ptr noalias noundef nonnull align 8 %7, i64 noundef %i.cu, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.bp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dj = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.dj, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !771)
  call void @llvm.experimental.noalias.scope.decl(metadata !772)
  %.not72 = icmp samesign ult i64 %3, %.sroa.16.0133381
  br i1 %.not72, label %bb.an, label %bb.am, !prof !8

bb.am:                                            ; preds = %.thread
  %i.dk = getelementptr [32 x i8], ptr %2, i64 %.sroa.16.0133381 ; 4 uses
  %i.dl = getelementptr i8, ptr %i.cc, i64 24
  br label %bb.ao

bb.an:                                            ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.ao:                                            ; preds = %bb.aq, %bb.am
  %.sroa.19.0.i47 = phi ptr [ %i.dk, %bb.am ], [ %i.dw, %bb.aq ] ; 2 uses
  %.sroa.11.0.i48 = phi i64 [ 0, %bb.am ], [ %i.dy, %bb.aq ] ; 2 uses
  %.sroa.5.0.i49 = phi ptr [ %.sroa.0.0.ph140, %bb.am ], [ %i.dz, %bb.aq ] ; 3 uses
  %.sroa.0.0.i50 = phi i64 [ %.sroa.0.0.i37, %bb.am ], [ %.sroa.16.0133381, %bb.aq ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph140, i64 %.sroa.0.0.i50 ; 2 uses
  %i.dn = icmp ult ptr %.sroa.5.0.i49, %i.dm
  br i1 %i.dn, label %.lr.ph.i59, label %._crit_edge.i51

._crit_edge.i51:                                  ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB1c_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2n_14UnigramTrainer8finalizes_0E0E0B2t_.exit.i, %bb.ao
  %.sroa.19.1.lcssa.i52 = phi ptr [ %.sroa.19.0.i47, %bb.ao ], [ %i.dq, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB1c_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2n_14UnigramTrainer8finalizes_0E0E0B2t_.exit.i ]
  %.sroa.11.1.lcssa.i53 = phi i64 [ %.sroa.11.0.i48, %bb.ao ], [ %i.dt, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB1c_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2n_14UnigramTrainer8finalizes_0E0E0B2t_.exit.i ] ; 10 uses
  %.sroa.5.1.lcssa.i54 = phi ptr [ %.sroa.5.0.i49, %bb.ao ], [ %i.du, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB1c_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2n_14UnigramTrainer8finalizes_0E0E0B2t_.exit.i ] ; 2 uses
  %i.do = icmp eq i64 %.sroa.0.0.i50, %.sroa.16.0133381
  br i1 %i.do, label %bb.ar, label %bb.aq

.lr.ph.i59:                                       ; preds = %bb.ao, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB1c_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2n_14UnigramTrainer8finalizes_0E0E0B2t_.exit.i
  %.sroa.5.114.i60 = phi ptr [ %i.du, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB1c_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2n_14UnigramTrainer8finalizes_0E0E0B2t_.exit.i ], [ %.sroa.5.0.i49, %bb.ao ] ; 3 uses
  %.sroa.11.113.i61 = phi i64 [ %i.dt, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB1c_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2n_14UnigramTrainer8finalizes_0E0E0B2t_.exit.i ], [ %.sroa.11.0.i48, %bb.ao ] ; 2 uses
  %.sroa.19.112.i62 = phi ptr [ %i.dq, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB1c_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2n_14UnigramTrainer8finalizes_0E0E0B2t_.exit.i ], [ %.sroa.19.0.i47, %bb.ao ]
  %i.dp = getelementptr i8, ptr %.sroa.5.114.i60, i64 24
  %.val.i63 = load double, ptr %i.dp, align 8, !alias.scope !771, !noalias !772, !noundef !3 ; 2 uses
  %.val12.i64 = load double, ptr %i.dl, align 8, !alias.scope !771, !noalias !772, !noundef !3 ; 2 uses
  %brmerge.not.i.i.i65 = fcmp uno double %.val.i63, %.val12.i64
  br i1 %brmerge.not.i.i.i65, label %bb.ap, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB1c_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2n_14UnigramTrainer8finalizes_0E0E0B2t_.exit.i, !prof !7

bb.ap:                                            ; preds = %.lr.ph.i59
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22, !noalias !773
  unreachable

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB1c_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2n_14UnigramTrainer8finalizes_0E0E0B2t_.exit.i: ; preds = %.lr.ph.i59
  %.mux.i.i.i66 = fcmp uge double %.val.i63, %.val12.i64 ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %.sroa.19.112.i62, i64 -32 ; 3 uses
  %.sroa.01.0.i.i67 = select i1 %.mux.i.i.i66, ptr %2, ptr %i.dq
  %i.dr = getelementptr inbounds nuw [32 x i8], ptr %.sroa.01.0.i.i67, i64 %.sroa.11.113.i61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dr, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.114.i60, i64 32, i1 false), !alias.scope !773, !noalias !774
  %i.ds = zext i1 %.mux.i.i.i66 to i64
  %i.dt = add i64 %.sroa.11.113.i61, %i.ds        ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.5.114.i60, i64 32 ; 3 uses
  %i.dv = icmp ult ptr %i.du, %i.dm
  br i1 %i.dv, label %.lr.ph.i59, label %._crit_edge.i51

bb.aq:                                            ; preds = %._crit_edge.i51
  %i.dw = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i52, i64 -32
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.1.lcssa.i54, i64 32, i1 false), !alias.scope !773, !noalias !775
  %i.dy = add i64 %.sroa.11.1.lcssa.i53, 1
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i54, i64 32
  br label %bb.ao

bb.ar:                                            ; preds = %._crit_edge.i51
  %i.ea = shl i64 %.sroa.11.1.lcssa.i53, 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph140, ptr nonnull align 8 %2, i64 %i.ea, i1 false), !alias.scope !773
  %i.eb = sub i64 %.sroa.16.0133381, %.sroa.11.1.lcssa.i53 ; 6 uses
  %.not21.i55 = icmp eq i64 %.sroa.16.0133381, %.sroa.11.1.lcssa.i53
  br i1 %.not21.i55, label %.outer._crit_edge.thread, label %.lr.ph19.i56

.lr.ph19.i56:                                     ; preds = %bb.ar
  %i.ec = getelementptr [32 x i8], ptr %.sroa.0.0.ph140, i64 %.sroa.11.1.lcssa.i53 ; 3 uses
  %.neg523 = add i64 %.sroa.11.1.lcssa.i53, 1
  %xtraiter518 = and i64 %i.eb, 1
  %i.ed = icmp eq i64 %.sroa.16.0133381, %.neg523
  br i1 %i.ed, label %.epil.preheader507, label %.lr.ph19.i56.new

.lr.ph19.i56.new:                                 ; preds = %.lr.ph19.i56
  %unroll_iter521 = and i64 %i.eb, -2
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.lr.ph19.i56.new
  %.sroa.06.017.i57 = phi i64 [ 0, %.lr.ph19.i56.new ], [ %i.eh, %bb.as ] ; 5 uses
  %niter522 = phi i64 [ 0, %.lr.ph19.i56.new ], [ %niter522.next.1, %bb.as ]
  %i.ee = xor i64 %.sroa.06.017.i57, -1
  %i.ef = getelementptr [32 x i8], ptr %i.dk, i64 %i.ee
  %i.eg = getelementptr [32 x i8], ptr %i.ec, i64 %.sroa.06.017.i57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eg, ptr noundef nonnull align 8 dereferenceable(32) %i.ef, i64 32, i1 false), !alias.scope !773
  %i.eh = add nuw i64 %.sroa.06.017.i57, 2        ; 2 uses
  %i.ei = xor i64 %.sroa.06.017.i57, -2
  %i.ej = getelementptr [32 x i8], ptr %i.dk, i64 %i.ei
  %i.ek = getelementptr [32 x i8], ptr %i.ec, i64 %.sroa.06.017.i57
  %i.el = getelementptr i8, ptr %i.ek, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.el, ptr noundef nonnull align 8 dereferenceable(32) %i.ej, i64 32, i1 false), !alias.scope !773
  %niter522.next.1 = add i64 %niter522, 2         ; 2 uses
  %niter522.ncmp.1 = icmp eq i64 %niter522.next.1, %unroll_iter521
  br i1 %niter522.ncmp.1, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvB2_9quicksortB1d_NCINvMNtB1i_5sliceSB1d_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2P_14UnigramTrainer8finalizes_0E0E0EB2V_.exit.unr-lcssa, label %bb.as

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvB2_9quicksortB1d_NCINvMNtB1i_5sliceSB1d_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2P_14UnigramTrainer8finalizes_0E0E0EB2V_.exit.unr-lcssa: ; preds = %bb.as
  %lcmp.mod519.not = icmp eq i64 %xtraiter518, 0
  br i1 %lcmp.mod519.not, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvB2_9quicksortB1d_NCINvMNtB1i_5sliceSB1d_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2P_14UnigramTrainer8finalizes_0E0E0EB2V_.exit, label %.epil.preheader507

.epil.preheader507:                               ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvB2_9quicksortB1d_NCINvMNtB1i_5sliceSB1d_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2P_14UnigramTrainer8finalizes_0E0E0EB2V_.exit.unr-lcssa, %.lr.ph19.i56
  %.sroa.06.017.i57.epil.init = phi i64 [ 0, %.lr.ph19.i56 ], [ %i.eh, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvB2_9quicksortB1d_NCINvMNtB1i_5sliceSB1d_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2P_14UnigramTrainer8finalizes_0E0E0EB2V_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod520 = trunc i64 %i.eb to i1
  call void @llvm.assume(i1 %lcmp.mod520)
  %i.em = xor i64 %.sroa.06.017.i57.epil.init, -1
  %i.en = getelementptr [32 x i8], ptr %i.dk, i64 %i.em
  %i.eo = getelementptr [32 x i8], ptr %i.ec, i64 %.sroa.06.017.i57.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eo, ptr noundef nonnull align 8 dereferenceable(32) %i.en, i64 32, i1 false), !alias.scope !773
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvB2_9quicksortB1d_NCINvMNtB1i_5sliceSB1d_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2P_14UnigramTrainer8finalizes_0E0E0EB2V_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvB2_9quicksortB1d_NCINvMNtB1i_5sliceSB1d_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2P_14UnigramTrainer8finalizes_0E0E0EB2V_.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvB2_9quicksortB1d_NCINvMNtB1i_5sliceSB1d_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2P_14UnigramTrainer8finalizes_0E0E0EB2V_.exit.unr-lcssa, %.epil.preheader507
  %i.ep = icmp ugt i64 %.sroa.11.1.lcssa.i53, %.sroa.16.0133381
  br i1 %i.ep, label %bb.at, label %.outer, !prof !11

.outer._crit_edge.thread:                         ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB1x_5sliceSB1s_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2I_14UnigramTrainer8finalizes_0E0EB2O_.exit

.outer:                                           ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvB2_9quicksortB1d_NCINvMNtB1i_5sliceSB1d_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2P_14UnigramTrainer8finalizes_0E0E0EB2V_.exit
  %i.eq = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph140, i64 %.sroa.11.1.lcssa.i53 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.er = icmp ult i64 %i.eb, 33
  br i1 %i.er, label %.outer._crit_edge, label %.lr.ph

bb.at:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvB2_9quicksortB1d_NCINvMNtB1i_5sliceSB1d_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2P_14UnigramTrainer8finalizes_0E0E0EB2V_.exit
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i53, i64 noundef %.sroa.16.0133381, i64 noundef %.sroa.16.0133381, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #22
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1b_5sliceSB15_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2n_16WordLevelTrainer8do_train0E0EB2t_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(16) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.0.0.ph144 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %i.qo, %.outer ] ; 23 uses
  %.sroa.16.0.ph143 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.pz, %.outer ] ; 2 uses
  %.sroa.025.0.ph142 = phi i32 [ %4, %.lr.ph.lr.ph ], [ %i.dj, %.outer ] ; 2 uses
  %.sroa.028.0.ph141 = phi ptr [ %5, %.lr.ph.lr.ph ], [ null, %.outer ] ; 3 uses
  %i.d = getelementptr i8, ptr %.sroa.0.0.ph144, i64 8
  %i.e = ptrtoint ptr %.sroa.0.0.ph144 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph141, null
  %i.f = getelementptr i8, ptr %.sroa.028.0.ph141, i64 8
  %i.g = icmp eq i32 %.sroa.025.0.ph142, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph350

bb.b:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRyE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit
  %i.h = icmp eq i32 %i.dj, 0
  br i1 %i.h, label %.lr.ph._crit_edge, label %.lr.ph350

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRyE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit, %bb.a
  %.sroa.0.0.ph.lcssa135 = phi ptr [ %.sroa.0.0.ph144, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRyE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit ], [ %0, %bb.a ], [ %i.qo, %.outer ] ; 10 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRyE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit ], [ %1, %bb.a ], [ %i.pz, %.outer ] ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !822)
  call void @llvm.experimental.noalias.scope.decl(metadata !823)
  %i.i = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1y_5sliceSB1s_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2K_16WordLevelTrainer8do_train0E0EB2Q_.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.j = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.k = icmp samesign ult i64 %3, %i.j
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = lshr i64 %.sroa.16.0.lcssa, 1            ; 9 uses
  %i.m = icmp samesign ugt i64 %.sroa.16.0.lcssa, 15
  br i1 %i.m, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa135, i64 %i.l ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.l ; 2 uses
  br i1 %i.n, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.16.0.lcssa ; 5 uses
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1f_5sliceSB19_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2r_16WordLevelTrainer8do_train0E0EB2x_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph.lcssa135, ptr noundef nonnull %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa135, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1f_5sliceSB19_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2r_16WordLevelTrainer8do_train0E0EB2x_(ptr noundef readonly %i.r, ptr noundef %i.s)
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1m_5sliceSB1g_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2y_16WordLevelTrainer8do_train0E0EB2E_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.q, i64 noundef 8, ptr noundef nonnull align 8 %2), !noalias !822
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa135, i64 %i.l ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.l
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 128 ; 2 uses
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1f_5sliceSB19_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2r_16WordLevelTrainer8do_train0E0EB2x_(ptr noundef nonnull readonly %i.t, ptr noundef nonnull %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 192
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1f_5sliceSB19_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2r_16WordLevelTrainer8do_train0E0EB2x_(ptr noundef readonly %i.w, ptr noundef %i.x)
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1m_5sliceSB1g_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2y_16WordLevelTrainer8do_train0E0EB2E_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.v, i64 noundef 8, ptr noundef nonnull %i.u), !noalias !822
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1f_5sliceSB19_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2r_16WordLevelTrainer8do_train0E0EB2x_(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa135, ptr noundef nonnull align 8 %2)
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1f_5sliceSB19_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2r_16WordLevelTrainer8do_train0E0EB2x_(ptr noundef %i.o, ptr noundef %i.p)
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.ph.lcssa135, i64 16, i1 false), !alias.scope !824
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !alias.scope !824
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i = phi i64 [ 8, %bb.g ], [ 4, %bb.h ], [ 1, %bb.i ] ; 4 uses
  %i.y = sub nuw nsw i64 %.sroa.16.0.lcssa, %i.l  ; 2 uses
  %i.z = icmp samesign ult i64 %.sroa.0.0.i, %i.l
  br i1 %i.z, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1e_5sliceSB18_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2q_16WordLevelTrainer8do_train0E0EB2w_.exit.i, %bb.j
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa135, i64 %i.l
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.l ; 3 uses
  %i.ac = icmp samesign ult i64 %.sroa.0.0.i, %i.y
  br i1 %i.ac, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1e_5sliceSB18_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2q_16WordLevelTrainer8do_train0E0EB2w_.exit.1.i
  %.sroa.05.04.1.i = phi i64 [ %i.br, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1e_5sliceSB18_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2q_16WordLevelTrainer8do_train0E0EB2w_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %.sroa.05.04.1.i
  %.idx.1.i = shl nuw nsw i64 %.sroa.05.04.1.i, 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.1.i ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !alias.scope !824
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -16 ; 4 uses
  %.val11.i.1.i = load ptr, ptr %i.ae, align 8, !alias.scope !823, !noalias !822 ; 6 uses
  %i.ag = getelementptr i8, ptr %i.ae, i64 8
  %.val12.i.1.i = load ptr, ptr %i.ag, align 8, !alias.scope !823, !noalias !822, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ae, i64 -8
  %.val14.i.1.i = load ptr, ptr %i.ah, align 8, !alias.scope !823, !noalias !822, !nonnull !3, !align !5, !noundef !3
  %i.ai = load i64, ptr %.val12.i.1.i, align 8, !noalias !824, !noundef !3 ; 4 uses
  %i.aj = load i64, ptr %.val14.i.1.i, align 8, !noalias !824, !noundef !3 ; 2 uses
  %.not.i.i.i.1.i = icmp eq i64 %i.ai, %i.aj
  br i1 %.not.i.i.i.1.i, label %.split.i.1.i, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit.i.1.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit.i.1.i: ; preds = %.lr.ph.1.i
  %i.ak = icmp ult i64 %i.aj, %i.ai
  br i1 %i.ak, label %bb.k, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1e_5sliceSB18_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2q_16WordLevelTrainer8do_train0E0EB2w_.exit.1.i

.split.i.1.i:                                     ; preds = %.lr.ph.1.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i.1.i) ]
  %.val13.i.1.i = load ptr, ptr %i.af, align 8, !alias.scope !823, !noalias !822, !nonnull !3, !noundef !3 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val11.i.1.i, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !noalias !824, !nonnull !3, !noundef !3
  %i.an = getelementptr inbounds nuw i8, ptr %.val11.i.1.i, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !noalias !824, !noundef !3 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val13.i.1.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !824, !nonnull !3, !noundef !3
  %i.ar = getelementptr inbounds nuw i8, ptr %.val13.i.1.i, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !noalias !824, !noundef !3 ; 2 uses
  %spec.store.select.i.i.i.1.i = call i64 @llvm.umin.i64(i64 %i.ao, i64 %i.as)
  %i.at = call i32 @memcmp(ptr nonnull %i.am, ptr nonnull %i.aq, i64 %spec.store.select.i.i.i.1.i), !noalias !824 ; 2 uses
  %i.au = sext i32 %i.at to i64
  %i.av = icmp eq i32 %i.at, 0
  %i.aw = sub i64 %i.ao, %i.as
  %spec.select.i.i.i.1.i = select i1 %i.av, i64 %i.aw, i64 %i.au
  %i.ax = icmp slt i64 %spec.select.i.i.i.1.i, 0
  br i1 %i.ax, label %bb.k, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1e_5sliceSB18_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2q_16WordLevelTrainer8do_train0E0EB2w_.exit.1.i

bb.k:                                             ; preds = %.split.i.1.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit.i.1.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !alias.scope !823, !noalias !822
  %i.ay = icmp eq i64 %.sroa.05.04.1.i, 1
  br i1 %i.ay, label %.split6._crit_edge.i.1.i, label %.lr.ph.i.1.i

.lr.ph.i.1.i:                                     ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %.val11.i.1.i, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.val11.i.1.i, i64 16
  br label %bb.l

bb.l:                                             ; preds = %.backedge.i.1.i, %.lr.ph.i.1.i
  %.sroa.0.07.i.1.i = phi ptr [ %i.af, %.lr.ph.i.1.i ], [ %i.bb, %.backedge.i.1.i ] ; 5 uses
  %i.bb = getelementptr inbounds i8, ptr %.sroa.0.07.i.1.i, i64 -16 ; 4 uses
  %i.bc = getelementptr i8, ptr %.sroa.0.07.i.1.i, i64 -8
  %.val10.i.1.i = load ptr, ptr %i.bc, align 8, !alias.scope !823, !noalias !822, !nonnull !3, !align !5, !noundef !3
  %i.bd = load i64, ptr %.val10.i.1.i, align 8, !noalias !824, !noundef !3 ; 2 uses
  %.not.i.i15.i.1.i = icmp eq i64 %i.ai, %i.bd
  br i1 %.not.i.i15.i.1.i, label %.split6.i.1.i, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit20.i.1.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit20.i.1.i: ; preds = %bb.l
  %i.be = icmp ult i64 %i.bd, %i.ai
  br i1 %i.be, label %.backedge.i.1.i, label %.split6._crit_edge.i.1.i

.split6.i.1.i:                                    ; preds = %bb.l
  %.val9.i.1.i = load ptr, ptr %i.bb, align 8, !alias.scope !823, !noalias !822, !nonnull !3, !noundef !3 ; 2 uses
  %i.bf = load ptr, ptr %i.az, align 8, !noalias !824, !nonnull !3, !noundef !3
  %i.bg = load i64, ptr %i.ba, align 8, !noalias !824, !noundef !3 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val9.i.1.i, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !824, !nonnull !3, !noundef !3
  %i.bj = getelementptr inbounds nuw i8, ptr %.val9.i.1.i, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !824, !noundef !3 ; 2 uses
  %spec.store.select.i.i18.i.1.i = call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bk)
  %i.bl = call i32 @memcmp(ptr nonnull %i.bf, ptr nonnull %i.bi, i64 %spec.store.select.i.i18.i.1.i), !noalias !824 ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = icmp eq i32 %i.bl, 0
  %i.bo = sub i64 %i.bg, %i.bk
  %spec.select.i.i19.i.1.i = select i1 %i.bn, i64 %i.bo, i64 %i.bm
  %i.bp = icmp slt i64 %spec.select.i.i19.i.1.i, 0
  br i1 %i.bp, label %.backedge.i.1.i, label %.split6._crit_edge.i.1.i

.backedge.i.1.i:                                  ; preds = %.split6.i.1.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit20.i.1.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.07.i.1.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false), !alias.scope !823, !noalias !822
  %i.bq = icmp eq ptr %i.bb, %i.ab
  br i1 %i.bq, label %.split6._crit_edge.i.1.i, label %bb.l

.split6._crit_edge.i.1.i:                         ; preds = %.backedge.i.1.i, %.split6.i.1.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit20.i.1.i, %bb.k
  %.sroa.0.0.lcssa.i.1.i = phi ptr [ %i.af, %bb.k ], [ %.sroa.0.07.i.1.i, %.split6.i.1.i ], [ %.sroa.0.07.i.1.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit20.i.1.i ], [ %i.ab, %.backedge.i.1.i ] ; 2 uses
  store ptr %.val11.i.1.i, ptr %.sroa.0.0.lcssa.i.1.i, align 8, !alias.scope !823, !noalias !825
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.1.i, i64 8
  store ptr %.val12.i.1.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !823, !noalias !825
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1e_5sliceSB18_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2q_16WordLevelTrainer8do_train0E0EB2w_.exit.1.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1e_5sliceSB18_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2q_16WordLevelTrainer8do_train0E0EB2w_.exit.1.i: ; preds = %.split6._crit_edge.i.1.i, %.split.i.1.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit.i.1.i
  %i.br = add nuw nsw i64 %.sroa.05.04.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.br, %i.y
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1e_5sliceSB18_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2q_16WordLevelTrainer8do_train0E0EB2w_.exit.1.i, %.loopexit.i
  invoke fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1m_5sliceSB1g_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2y_16WordLevelTrainer8do_train0E0EB2E_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa135)
          to label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1y_5sliceSB1s_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2K_16WordLevelTrainer8do_train0E0EB2Q_.exit unwind label %bb.m

bb.m:                                             ; preds = %.loopexit.1.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  %i.bt = shl nuw nsw i64 %.sroa.16.0.lcssa, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa135, ptr nonnull align 8 %2, i64 %i.bt, i1 false), !alias.scope !824, !noalias !826
  resume { ptr, i32 } %i.bs

.lr.ph.i:                                         ; preds = %bb.j, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1e_5sliceSB18_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2q_16WordLevelTrainer8do_train0E0EB2w_.exit.i
  %.sroa.05.04.i = phi i64 [ %i.di, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1e_5sliceSB18_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2q_16WordLevelTrainer8do_train0E0EB2w_.exit.i ], [ %.sroa.0.0.i, %bb.j ] ; 4 uses
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa135, i64 %.sroa.05.04.i
  %.idx.i = shl nuw nsw i64 %.sroa.05.04.i, 4
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 16, i1 false), !alias.scope !824
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -16 ; 4 uses
  %.val11.i.i = load ptr, ptr %i.bv, align 8, !alias.scope !823, !noalias !822 ; 6 uses
  %i.bx = getelementptr i8, ptr %i.bv, i64 8
  %.val12.i.i = load ptr, ptr %i.bx, align 8, !alias.scope !823, !noalias !822, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  %i.by = getelementptr i8, ptr %i.bv, i64 -8
  %.val14.i.i = load ptr, ptr %i.by, align 8, !alias.scope !823, !noalias !822, !nonnull !3, !align !5, !noundef !3
  %i.bz = load i64, ptr %.val12.i.i, align 8, !noalias !824, !noundef !3 ; 4 uses
  %i.ca = load i64, ptr %.val14.i.i, align 8, !noalias !824, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.bz, %i.ca
  br i1 %.not.i.i.i.i, label %.split.i.i, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit.i.i

.split.i.i:                                       ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i.i) ]
  %.val13.i.i = load ptr, ptr %i.bw, align 8, !alias.scope !823, !noalias !822, !nonnull !3, !noundef !3 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !824, !nonnull !3, !noundef !3
  %i.cd = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !824, !noundef !3 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !824, !nonnull !3, !noundef !3
  %i.ch = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !824, !noundef !3 ; 2 uses
  %spec.store.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ce, i64 %i.ci)
  %i.cj = call i32 @memcmp(ptr nonnull %i.cc, ptr nonnull %i.cg, i64 %spec.store.select.i.i.i.i), !noalias !824 ; 2 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = icmp eq i32 %i.cj, 0
  %i.cm = sub i64 %i.ce, %i.ci
  %spec.select.i.i.i.i = select i1 %i.cl, i64 %i.cm, i64 %i.ck
  %i.cn = icmp slt i64 %spec.select.i.i.i.i, 0
  br i1 %i.cn, label %bb.n, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1e_5sliceSB18_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2q_16WordLevelTrainer8do_train0E0EB2w_.exit.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit.i.i: ; preds = %.lr.ph.i
  %i.co = icmp ult i64 %i.ca, %i.bz
  br i1 %i.co, label %bb.n, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1e_5sliceSB18_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2q_16WordLevelTrainer8do_train0E0EB2w_.exit.i

bb.n:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit.i.i, %.split.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 16, i1 false), !alias.scope !823, !noalias !822
  %i.cp = icmp eq i64 %.sroa.05.04.i, 1
  br i1 %i.cp, label %.split6._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 16
  br label %bb.o

bb.o:                                             ; preds = %.backedge.i.i, %.lr.ph.i.i
  %.sroa.0.07.i.i = phi ptr [ %i.bw, %.lr.ph.i.i ], [ %i.cs, %.backedge.i.i ] ; 5 uses
  %i.cs = getelementptr inbounds i8, ptr %.sroa.0.07.i.i, i64 -16 ; 4 uses
  %i.ct = getelementptr i8, ptr %.sroa.0.07.i.i, i64 -8
  %.val10.i.i = load ptr, ptr %i.ct, align 8, !alias.scope !823, !noalias !822, !nonnull !3, !align !5, !noundef !3
  %i.cu = load i64, ptr %.val10.i.i, align 8, !noalias !824, !noundef !3 ; 2 uses
  %.not.i.i15.i.i = icmp eq i64 %i.bz, %i.cu
  br i1 %.not.i.i15.i.i, label %.split6.i.i, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit20.i.i

.split6.i.i:                                      ; preds = %bb.o
  %.val9.i.i = load ptr, ptr %i.cs, align 8, !alias.scope !823, !noalias !822, !nonnull !3, !noundef !3 ; 2 uses
  %i.cv = load ptr, ptr %i.cq, align 8, !noalias !824, !nonnull !3, !noundef !3
  %i.cw = load i64, ptr %i.cr, align 8, !noalias !824, !noundef !3 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !824, !nonnull !3, !noundef !3
  %i.cz = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !noalias !824, !noundef !3 ; 2 uses
  %spec.store.select.i.i18.i.i = call i64 @llvm.umin.i64(i64 %i.cw, i64 %i.da)
  %i.db = call i32 @memcmp(ptr nonnull %i.cv, ptr nonnull %i.cy, i64 %spec.store.select.i.i18.i.i), !noalias !824 ; 2 uses
  %i.dc = sext i32 %i.db to i64
  %i.dd = icmp eq i32 %i.db, 0
  %i.de = sub i64 %i.cw, %i.da
  %spec.select.i.i19.i.i = select i1 %i.dd, i64 %i.de, i64 %i.dc
  %i.df = icmp slt i64 %spec.select.i.i19.i.i, 0
  br i1 %i.df, label %.backedge.i.i, label %.split6._crit_edge.i.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit20.i.i: ; preds = %bb.o
  %i.dg = icmp ult i64 %i.cu, %i.bz
  br i1 %i.dg, label %.backedge.i.i, label %.split6._crit_edge.i.i

.backedge.i.i:                                    ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit20.i.i, %.split6.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.07.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.cs, i64 16, i1 false), !alias.scope !823, !noalias !822
  %i.dh = icmp eq ptr %i.cs, %2
  br i1 %i.dh, label %.split6._crit_edge.i.i, label %bb.o

.split6._crit_edge.i.i:                           ; preds = %.backedge.i.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit20.i.i, %.split6.i.i, %bb.n
  %.sroa.0.0.lcssa.i.i = phi ptr [ %i.bw, %bb.n ], [ %.sroa.0.07.i.i, %.split6.i.i ], [ %.sroa.0.07.i.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit20.i.i ], [ %2, %.backedge.i.i ] ; 2 uses
  store ptr %.val11.i.i, ptr %.sroa.0.0.lcssa.i.i, align 8, !alias.scope !823, !noalias !825
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 8
  store ptr %.val12.i.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !823, !noalias !825
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1e_5sliceSB18_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2q_16WordLevelTrainer8do_train0E0EB2w_.exit.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1e_5sliceSB18_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2q_16WordLevelTrainer8do_train0E0EB2w_.exit.i: ; preds = %.split6._crit_edge.i.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit.i.i, %.split.i.i
  %i.di = add nuw nsw i64 %.sroa.05.04.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.di, %i.l
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0137.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph143, %.lr.ph ]
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB12_5sliceSBW_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2d_16WordLevelTrainer8do_train0E0EB2j_(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph144, i64 noundef %.sroa.16.0137.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1y_5sliceSB1s_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2K_16WordLevelTrainer8do_train0E0EB2Q_.exit

.lr.ph350:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0136349 = phi i32 [ %i.dj, %bb.b ], [ %.sroa.025.0.ph142, %.lr.ph ]
  %.sroa.16.0137348 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph143, %.lr.ph ] ; 21 uses
  %i.dj = add i32 %.sroa.025.0136349, -1          ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !827)
  %i.dk = lshr i64 %.sroa.16.0137348, 3           ; 3 uses
  %.idx.i39 = shl nuw nsw i64 %i.dk, 6
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph144, i64 %.idx.i39 ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.dk, 112
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph144, i64 %.idx2.i ; 4 uses
  %i.dn = icmp samesign ult i64 %.sroa.16.0137348, 64
  br i1 %i.dn, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph350
  %i.do = call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1a_5sliceSB14_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2m_16WordLevelTrainer8do_train0E0EB2s_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph144, ptr noundef readonly %i.dl, ptr noundef readonly %i.dm, i64 noundef %i.dk)
  br label %bb.v

bb.q:                                             ; preds = %.lr.ph350
  %.val10.i = load ptr, ptr %.sroa.0.0.ph144, align 8, !alias.scope !827 ; 6 uses
  %.val11.i = load ptr, ptr %i.d, align 8, !alias.scope !827, !nonnull !3, !align !5, !noundef !3
  %.val12.i = load ptr, ptr %i.dl, align 8, !alias.scope !827 ; 6 uses
  %i.dp = getelementptr i8, ptr %i.dl, i64 8
  %.val13.i = load ptr, ptr %i.dp, align 8, !alias.scope !827, !nonnull !3, !align !5, !noundef !3
  %i.dq = load i64, ptr %.val11.i, align 8, !noalias !827, !noundef !3 ; 4 uses
  %i.dr = load i64, ptr %.val13.i, align 8, !noalias !827, !noundef !3 ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.dq, %i.dr
  br i1 %.not.i.i.i, label %bb.r, label %switch.lookup.i.i.i

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i), "nonnull"(ptr %.val12.i) ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !noalias !827, !nonnull !3, !noundef !3
  %i.du = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !noalias !827, !noundef !3 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.val12.i, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !noalias !827, !nonnull !3, !noundef !3
  %i.dy = getelementptr inbounds nuw i8, ptr %.val12.i, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !noalias !827, !noundef !3 ; 2 uses
  %spec.store.select.i.i.i = call i64 @llvm.umin.i64(i64 %i.dv, i64 %i.dz)
  %i.ea = call i32 @memcmp(ptr nonnull %i.dt, ptr nonnull %i.dx, i64 %spec.store.select.i.i.i), !noalias !827 ; 2 uses
  %i.eb = sext i32 %i.ea to i64
  %i.ec = icmp eq i32 %i.ea, 0
  %i.ed = sub i64 %i.dv, %i.dz
  %spec.select.i.i.i = select i1 %i.ec, i64 %i.ed, i64 %i.eb
  %i.ee = icmp slt i64 %spec.select.i.i.i, 0
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit.i

switch.lookup.i.i.i:                              ; preds = %bb.q
  %i.ef = icmp ult i64 %i.dr, %i.dq
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit.i: ; preds = %switch.lookup.i.i.i, %bb.r
  %.sroa.0.0.i.i.i = phi i1 [ %i.ee, %bb.r ], [ %i.ef, %switch.lookup.i.i.i ] ; 2 uses
  %.val8.i = load ptr, ptr %i.dm, align 8, !alias.scope !827 ; 6 uses
  %i.eg = getelementptr i8, ptr %i.dm, i64 8
  %.val9.i = load ptr, ptr %i.eg, align 8, !alias.scope !827, !nonnull !3, !align !5, !noundef !3
  %i.eh = load i64, ptr %.val9.i, align 8, !noalias !827, !noundef !3 ; 4 uses
  %.not.i.i14.i = icmp eq i64 %i.dq, %i.eh
  br i1 %.not.i.i14.i, label %bb.s, label %switch.lookup.i.i15.i

bb.s:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i), "nonnull"(ptr %.val8.i) ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !noalias !827, !nonnull !3, !noundef !3
  %i.ek = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.el = load i64, ptr %i.ek, align 8, !noalias !827, !noundef !3 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.val8.i, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !noalias !827, !nonnull !3, !noundef !3
  %i.eo = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !noalias !827, !noundef !3 ; 2 uses
  %spec.store.select.i.i17.i = call i64 @llvm.umin.i64(i64 %i.el, i64 %i.ep)
  %i.eq = call i32 @memcmp(ptr nonnull %i.ej, ptr nonnull %i.en, i64 %spec.store.select.i.i17.i), !noalias !827 ; 2 uses
  %i.er = sext i32 %i.eq to i64
  %i.es = icmp eq i32 %i.eq, 0
  %i.et = sub i64 %i.el, %i.ep
  %spec.select.i.i18.i = select i1 %i.es, i64 %i.et, i64 %i.er
  %i.eu = icmp slt i64 %spec.select.i.i18.i, 0
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit19.i

switch.lookup.i.i15.i:                            ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit.i
  %i.ev = icmp ult i64 %i.eh, %i.dq
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit19.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit19.i: ; preds = %switch.lookup.i.i15.i, %bb.s
  %.sroa.0.0.i.i16.i = phi i1 [ %i.eu, %bb.s ], [ %i.ev, %switch.lookup.i.i15.i ]
  %i.ew = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i16.i
  br i1 %i.ew, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit19.i
  %.not.i.i20.i = icmp eq i64 %i.dr, %i.eh
  br i1 %.not.i.i20.i, label %bb.u, label %switch.lookup.i.i21.i

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12.i), "nonnull"(ptr %.val8.i) ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.val12.i, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !noalias !827, !nonnull !3, !noundef !3
  %i.ez = getelementptr inbounds nuw i8, ptr %.val12.i, i64 16
  %i.fa = load i64, ptr %i.ez, align 8, !noalias !827, !noundef !3 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.val8.i, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !noalias !827, !nonnull !3, !noundef !3
  %i.fd = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16
  %i.fe = load i64, ptr %i.fd, align 8, !noalias !827, !noundef !3 ; 2 uses
  %spec.store.select.i.i23.i = call i64 @llvm.umin.i64(i64 %i.fa, i64 %i.fe)
  %i.ff = call i32 @memcmp(ptr nonnull %i.ey, ptr nonnull %i.fc, i64 %spec.store.select.i.i23.i), !noalias !827 ; 2 uses
  %i.fg = sext i32 %i.ff to i64
  %i.fh = icmp eq i32 %i.ff, 0
  %i.fi = sub i64 %i.fa, %i.fe
  %spec.select.i.i24.i = select i1 %i.fh, i64 %i.fi, i64 %i.fg
  %i.fj = icmp slt i64 %spec.select.i.i24.i, 0
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit25.i

switch.lookup.i.i21.i:                            ; preds = %bb.t
  %i.fk = icmp ult i64 %i.eh, %i.dr
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit25.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit25.i: ; preds = %switch.lookup.i.i21.i, %bb.u
  %.sroa.0.0.i.i22.i = phi i1 [ %i.fj, %bb.u ], [ %i.fk, %switch.lookup.i.i21.i ]
  %i.fl = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i22.i
  %..i.i = select i1 %i.fl, ptr %i.dm, ptr %i.dl
  br label %bb.v

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1y_5sliceSB1s_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2K_16WordLevelTrainer8do_train0E0EB2Q_.exit: ; preds = %.outer._crit_edge.thread, %.loopexit.1.i, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.v:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit25.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit19.i, %bb.p
  %.sroa.0.0.i.sink.i = phi ptr [ %i.do, %bb.p ], [ %.sroa.0.0.ph144, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit19.i ], [ %..i.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit25.i ]
  %i.fm = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.fn = sub nuw i64 %i.fm, %i.e                 ; 2 uses
  %.sroa.0.0.i40 = lshr exact i64 %i.fn, 4        ; 3 uses
  %i.fo = icmp samesign ult i64 %.sroa.0.0.i40, %.sroa.16.0137348
  call void @llvm.assume(i1 %i.fo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph144, i64 %i.fn ; 6 uses
  %i.fq = load ptr, ptr %i.fp, align 8            ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 5 uses
  %i.fs = load ptr, ptr %i.fr, align 8            ; 3 uses
  store ptr %i.fq, ptr %i.a, align 8
  store ptr %i.fs, ptr %i.c, align 8
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fs) ]
  %.sroa.028.0.val37 = load ptr, ptr %i.f, align 8, !nonnull !3, !align !5, !noundef !3
  %i.ft = load i64, ptr %.sroa.028.0.val37, align 8, !noundef !3 ; 2 uses
  %i.fu = load i64, ptr %i.fs, align 8, !noundef !3 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ft, %i.fu
  br i1 %.not.i.i, label %.split, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit

.split:                                           ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fq) ]
  %.sroa.028.0.val = load ptr, ptr %.sroa.028.0.ph141, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.028.0.val, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !nonnull !3, !noundef !3
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.028.0.val, i64 16
  %i.fy = load i64, ptr %i.fx, align 8, !noundef !3 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !nonnull !3, !noundef !3
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.gc = load i64, ptr %i.gb, align 8, !noundef !3 ; 2 uses
  %spec.store.select.i.i = call i64 @llvm.umin.i64(i64 %i.fy, i64 %i.gc)
  %i.gd = call i32 @memcmp(ptr nonnull %i.fw, ptr nonnull %i.ga, i64 %spec.store.select.i.i) ; 2 uses
  %i.ge = sext i32 %i.gd to i64
  %i.gf = icmp eq i32 %i.gd, 0
  %i.gg = sub i64 %i.fy, %i.gc
  %spec.select.i.i = select i1 %i.gf, i64 %i.gg, i64 %i.ge
  %i.gh = icmp slt i64 %spec.select.i.i, 0
  br i1 %i.gh, label %bb.x, label %.thread

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit: ; preds = %bb.w
  %i.gi = icmp ult i64 %i.fu, %i.ft
  br i1 %i.gi, label %bb.x, label %.thread

bb.x:                                             ; preds = %.split, %bb.v, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !828)
  call void @llvm.experimental.noalias.scope.decl(metadata !829)
  %.not102 = icmp samesign ult i64 %3, %.sroa.16.0137348
  br i1 %.not102, label %bb.z, label %bb.y, !prof !8

bb.y:                                             ; preds = %bb.x
  %i.gj = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0137348 ; 4 uses
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  call void @llvm.trap()
  unreachable

bb.aa:                                            ; preds = %bb.ah, %bb.y
  %.sroa.43.0.i = phi ptr [ %i.gj, %bb.y ], [ %i.kp, %bb.ah ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.y ], [ %.sroa.27.2.lcssa.i, %bb.ah ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph144, %bb.y ], [ %i.kr, %bb.ah ] ; 3 uses
  %.sroa.0.0.i41 = phi i64 [ %.sroa.0.0.i40, %bb.y ], [ %.sroa.16.0137348, %bb.ah ] ; 3 uses
  %i.gk = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i41, i64 3)
  %i.gl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph144, i64 %i.gk ; 2 uses
  %i.gm = icmp ult ptr %.sroa.9.0.i, %i.gl
  br i1 %i.gm, label %.lr.ph.i43, label %._crit_edge.i

.lr.ph.i43:                                       ; preds = %bb.aa
  %.val32.i = load ptr, ptr %i.fp, align 8, !alias.scope !828, !noalias !829 ; 6 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.val32.i, i64 8 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.val32.i, i64 16 ; 4 uses
  br label %bb.ab

bb.ab:                                            ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit53.i, %.lr.ph.i43
  %.sroa.9.131.i = phi ptr [ %.sroa.9.0.i, %.lr.ph.i43 ], [ %i.jn, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit53.i ] ; 10 uses
  %.sroa.27.130.i = phi i64 [ %.sroa.27.0.i, %.lr.ph.i43 ], [ %i.jm, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit53.i ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %.sroa.43.0.i, %.lr.ph.i43 ], [ %i.jj, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit53.i ] ; 4 uses
  %i.gp = getelementptr i8, ptr %.sroa.9.131.i, i64 8
  %.val31.i = load ptr, ptr %i.gp, align 8, !alias.scope !828, !noalias !829, !nonnull !3, !align !5, !noundef !3
  %.val33.i = load ptr, ptr %i.fr, align 8, !alias.scope !828, !noalias !829, !nonnull !3, !align !5, !noundef !3
  %i.gq = load i64, ptr %.val31.i, align 8, !noalias !830, !noundef !3 ; 2 uses
  %i.gr = load i64, ptr %.val33.i, align 8, !noalias !830, !noundef !3 ; 8 uses
  %.not.i.i.i44 = icmp eq i64 %i.gq, %i.gr
  br i1 %.not.i.i.i44, label %bb.ac, label %switch.lookup.i.i.i45

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val32.i) ]
  %.val30.i = load ptr, ptr %.sroa.9.131.i, align 8, !alias.scope !828, !noalias !829, !nonnull !3, !noundef !3 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.val30.i, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !noalias !830, !nonnull !3, !noundef !3
  %i.gu = getelementptr inbounds nuw i8, ptr %.val30.i, i64 16
  %i.gv = load i64, ptr %i.gu, align 8, !noalias !830, !noundef !3 ; 2 uses
  %i.gw = load ptr, ptr %i.gn, align 8, !noalias !830, !nonnull !3, !noundef !3
  %i.gx = load i64, ptr %i.go, align 8, !noalias !830, !noundef !3 ; 2 uses
  %spec.store.select.i.i.i48 = call i64 @llvm.umin.i64(i64 %i.gv, i64 %i.gx)
  %i.gy = call i32 @memcmp(ptr nonnull %i.gt, ptr nonnull %i.gw, i64 %spec.store.select.i.i.i48), !noalias !830 ; 2 uses
  %i.gz = sext i32 %i.gy to i64
  %i.ha = icmp eq i32 %i.gy, 0
  %i.hb = sub i64 %i.gv, %i.gx
  %spec.select.i.i.i49 = select i1 %i.ha, i64 %i.hb, i64 %i.gz
  %i.hc = icmp slt i64 %spec.select.i.i.i49, 0
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit.i46

switch.lookup.i.i.i45:                            ; preds = %bb.ab
  %i.hd = icmp ult i64 %i.gr, %i.gq
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit.i46

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit.i46: ; preds = %switch.lookup.i.i.i45, %bb.ac
  %.sroa.0.0.i.i.i47 = phi i1 [ %i.hc, %bb.ac ], [ %i.hd, %switch.lookup.i.i.i45 ] ; 2 uses
  %i.he = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16
  %.sroa.01.0.i.i = select i1 %.sroa.0.0.i.i.i47, ptr %2, ptr %i.he
  %i.hf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hf, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.131.i, i64 16, i1 false), !alias.scope !830, !noalias !831
  %i.hg = zext i1 %.sroa.0.0.i.i.i47 to i64
  %i.hh = add i64 %.sroa.27.130.i, %i.hg          ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16 ; 2 uses
  %i.hj = getelementptr i8, ptr %.sroa.9.131.i, i64 24
  %.val27.i = load ptr, ptr %i.hj, align 8, !alias.scope !828, !noalias !829, !nonnull !3, !align !5, !noundef !3
  %i.hk = load i64, ptr %.val27.i, align 8, !noalias !830, !noundef !3 ; 2 uses
  %.not.i.i34.i = icmp eq i64 %i.hk, %i.gr
  br i1 %.not.i.i34.i, label %bb.ad, label %switch.lookup.i.i35.i

bb.ad:                                            ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit.i46
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val32.i) ]
  %.val26.i = load ptr, ptr %i.hi, align 8, !alias.scope !828, !noalias !829, !nonnull !3, !noundef !3 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.val26.i, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !noalias !830, !nonnull !3, !noundef !3
  %i.hn = getelementptr inbounds nuw i8, ptr %.val26.i, i64 16
  %i.ho = load i64, ptr %i.hn, align 8, !noalias !830, !noundef !3 ; 2 uses
  %i.hp = load ptr, ptr %i.gn, align 8, !noalias !830, !nonnull !3, !noundef !3
  %i.hq = load i64, ptr %i.go, align 8, !noalias !830, !noundef !3 ; 2 uses
  %spec.store.select.i.i37.i = call i64 @llvm.umin.i64(i64 %i.ho, i64 %i.hq)
  %i.hr = call i32 @memcmp(ptr nonnull %i.hm, ptr nonnull %i.hp, i64 %spec.store.select.i.i37.i), !noalias !830 ; 2 uses
  %i.hs = sext i32 %i.hr to i64
  %i.ht = icmp eq i32 %i.hr, 0
  %i.hu = sub i64 %i.ho, %i.hq
  %spec.select.i.i38.i = select i1 %i.ht, i64 %i.hu, i64 %i.hs
  %i.hv = icmp slt i64 %spec.select.i.i38.i, 0
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit39.i

switch.lookup.i.i35.i:                            ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit.i46
  %i.hw = icmp ult i64 %i.gr, %i.hk
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit39.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit39.i: ; preds = %switch.lookup.i.i35.i, %bb.ad
  %.sroa.0.0.i.i36.i = phi i1 [ %i.hv, %bb.ad ], [ %i.hw, %switch.lookup.i.i35.i ] ; 2 uses
  %i.hx = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32
  %.sroa.01.0.i40.i = select i1 %.sroa.0.0.i.i36.i, ptr %2, ptr %i.hx
  %i.hy = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i40.i, i64 %i.hh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hy, ptr noundef nonnull align 8 dereferenceable(16) %i.hi, i64 16, i1 false), !alias.scope !830, !noalias !832
  %i.hz = zext i1 %.sroa.0.0.i.i36.i to i64
  %i.ia = add i64 %i.hh, %i.hz                    ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32 ; 2 uses
  %i.ic = getelementptr i8, ptr %.sroa.9.131.i, i64 40
  %.val23.i = load ptr, ptr %i.ic, align 8, !alias.scope !828, !noalias !829, !nonnull !3, !align !5, !noundef !3
  %i.id = load i64, ptr %.val23.i, align 8, !noalias !830, !noundef !3 ; 2 uses
  %.not.i.i41.i = icmp eq i64 %i.id, %i.gr
  br i1 %.not.i.i41.i, label %bb.ae, label %switch.lookup.i.i42.i

bb.ae:                                            ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit39.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val32.i) ]
  %.val22.i = load ptr, ptr %i.ib, align 8, !alias.scope !828, !noalias !829, !nonnull !3, !noundef !3 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.val22.i, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !noalias !830, !nonnull !3, !noundef !3
  %i.ig = getelementptr inbounds nuw i8, ptr %.val22.i, i64 16
  %i.ih = load i64, ptr %i.ig, align 8, !noalias !830, !noundef !3 ; 2 uses
  %i.ii = load ptr, ptr %i.gn, align 8, !noalias !830, !nonnull !3, !noundef !3
  %i.ij = load i64, ptr %i.go, align 8, !noalias !830, !noundef !3 ; 2 uses
  %spec.store.select.i.i44.i = call i64 @llvm.umin.i64(i64 %i.ih, i64 %i.ij)
  %i.ik = call i32 @memcmp(ptr nonnull %i.if, ptr nonnull %i.ii, i64 %spec.store.select.i.i44.i), !noalias !830 ; 2 uses
  %i.il = sext i32 %i.ik to i64
  %i.im = icmp eq i32 %i.ik, 0
  %i.in = sub i64 %i.ih, %i.ij
  %spec.select.i.i45.i = select i1 %i.im, i64 %i.in, i64 %i.il
  %i.io = icmp slt i64 %spec.select.i.i45.i, 0
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit46.i

switch.lookup.i.i42.i:                            ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit39.i
  %i.ip = icmp ult i64 %i.gr, %i.id
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit46.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit46.i: ; preds = %switch.lookup.i.i42.i, %bb.ae
  %.sroa.0.0.i.i43.i = phi i1 [ %i.io, %bb.ae ], [ %i.ip, %switch.lookup.i.i42.i ] ; 2 uses
  %i.iq = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -48
  %.sroa.01.0.i47.i = select i1 %.sroa.0.0.i.i43.i, ptr %2, ptr %i.iq
  %i.ir = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i47.i, i64 %i.ia
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ir, ptr noundef nonnull align 8 dereferenceable(16) %i.ib, i64 16, i1 false), !alias.scope !830, !noalias !833
  %i.is = zext i1 %.sroa.0.0.i.i43.i to i64
  %i.it = add i64 %i.ia, %i.is                    ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 48 ; 2 uses
  %i.iv = getelementptr i8, ptr %.sroa.9.131.i, i64 56
  %.val19.i = load ptr, ptr %i.iv, align 8, !alias.scope !828, !noalias !829, !nonnull !3, !align !5, !noundef !3
  %i.iw = load i64, ptr %.val19.i, align 8, !noalias !830, !noundef !3 ; 2 uses
  %.not.i.i48.i = icmp eq i64 %i.iw, %i.gr
  br i1 %.not.i.i48.i, label %bb.af, label %switch.lookup.i.i49.i

bb.af:                                            ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit46.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val32.i) ]
  %.val18.i = load ptr, ptr %i.iu, align 8, !alias.scope !828, !noalias !829, !nonnull !3, !noundef !3 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.val18.i, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8, !noalias !830, !nonnull !3, !noundef !3
  %i.iz = getelementptr inbounds nuw i8, ptr %.val18.i, i64 16
  %i.ja = load i64, ptr %i.iz, align 8, !noalias !830, !noundef !3 ; 2 uses
  %i.jb = load ptr, ptr %i.gn, align 8, !noalias !830, !nonnull !3, !noundef !3
  %i.jc = load i64, ptr %i.go, align 8, !noalias !830, !noundef !3 ; 2 uses
  %spec.store.select.i.i51.i = call i64 @llvm.umin.i64(i64 %i.ja, i64 %i.jc)
  %i.jd = call i32 @memcmp(ptr nonnull %i.iy, ptr nonnull %i.jb, i64 %spec.store.select.i.i51.i), !noalias !830 ; 2 uses
  %i.je = sext i32 %i.jd to i64
  %i.jf = icmp eq i32 %i.jd, 0
  %i.jg = sub i64 %i.ja, %i.jc
  %spec.select.i.i52.i = select i1 %i.jf, i64 %i.jg, i64 %i.je
  %i.jh = icmp slt i64 %spec.select.i.i52.i, 0
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit53.i

switch.lookup.i.i49.i:                            ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit46.i
  %i.ji = icmp ult i64 %i.gr, %i.iw
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit53.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit53.i: ; preds = %switch.lookup.i.i49.i, %bb.af
  %.sroa.0.0.i.i50.i = phi i1 [ %i.jh, %bb.af ], [ %i.ji, %switch.lookup.i.i49.i ] ; 2 uses
  %i.jj = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -64 ; 3 uses
  %.sroa.01.0.i54.i = select i1 %.sroa.0.0.i.i50.i, ptr %2, ptr %i.jj
  %i.jk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i54.i, i64 %i.it
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jk, ptr noundef nonnull align 8 dereferenceable(16) %i.iu, i64 16, i1 false), !alias.scope !830, !noalias !834
  %i.jl = zext i1 %.sroa.0.0.i.i50.i to i64
  %i.jm = add i64 %i.it, %i.jl                    ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 64 ; 3 uses
  %i.jo = icmp ult ptr %i.jn, %i.gl
  br i1 %i.jo, label %bb.ab, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit53.i, %bb.aa
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.aa ], [ %i.jj, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit53.i ] ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.aa ], [ %i.jm, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit53.i ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.aa ], [ %i.jn, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit53.i ] ; 3 uses
  %i.jp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph144, i64 %.sroa.0.0.i41 ; 2 uses
  %i.jq = icmp ult ptr %.sroa.9.1.lcssa.i, %i.jp
  br i1 %i.jq, label %.lr.ph38.i, label %._crit_edge39.i

._crit_edge39.i:                                  ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit60.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.kj, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit60.i ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.km, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit60.i ] ; 14 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.kn, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit60.i ] ; 2 uses
  %i.jr = icmp eq i64 %.sroa.0.0.i41, %.sroa.16.0137348
  br i1 %i.jr, label %bb.ai, label %bb.ah

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit60.i
  %.sroa.9.236.i = phi ptr [ %i.kn, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit60.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.sroa.27.235.i = phi i64 [ %i.km, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit60.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.kj, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit60.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %i.js = getelementptr i8, ptr %.sroa.9.236.i, i64 8
  %.val15.i = load ptr, ptr %i.js, align 8, !alias.scope !828, !noalias !829, !nonnull !3, !align !5, !noundef !3
  %.val17.i = load ptr, ptr %i.fr, align 8, !alias.scope !828, !noalias !829, !nonnull !3, !align !5, !noundef !3
  %i.jt = load i64, ptr %.val15.i, align 8, !noalias !830, !noundef !3 ; 2 uses
  %i.ju = load i64, ptr %.val17.i, align 8, !noalias !830, !noundef !3 ; 2 uses
  %.not.i.i55.i = icmp eq i64 %i.jt, %i.ju
  br i1 %.not.i.i55.i, label %bb.ag, label %switch.lookup.i.i56.i

bb.ag:                                            ; preds = %.lr.ph38.i
  %.val16.i = load ptr, ptr %i.fp, align 8, !alias.scope !828, !noalias !829, !nonnull !3, !noundef !3 ; 2 uses
  %.val.i = load ptr, ptr %.sroa.9.236.i, align 8, !alias.scope !828, !noalias !829, !nonnull !3, !noundef !3 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8, !noalias !830, !nonnull !3, !noundef !3
  %i.jx = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.jy = load i64, ptr %i.jx, align 8, !noalias !830, !noundef !3 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.val16.i, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8, !noalias !830, !nonnull !3, !noundef !3
  %i.kb = getelementptr inbounds nuw i8, ptr %.val16.i, i64 16
  %i.kc = load i64, ptr %i.kb, align 8, !noalias !830, !noundef !3 ; 2 uses
  %spec.store.select.i.i58.i = call i64 @llvm.umin.i64(i64 %i.jy, i64 %i.kc)
  %i.kd = call i32 @memcmp(ptr nonnull %i.jw, ptr nonnull %i.ka, i64 %spec.store.select.i.i58.i), !noalias !830 ; 2 uses
  %i.ke = sext i32 %i.kd to i64
  %i.kf = icmp eq i32 %i.kd, 0
  %i.kg = sub i64 %i.jy, %i.kc
  %spec.select.i.i59.i = select i1 %i.kf, i64 %i.kg, i64 %i.ke
  %i.kh = icmp slt i64 %spec.select.i.i59.i, 0
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit60.i

switch.lookup.i.i56.i:                            ; preds = %.lr.ph38.i
  %i.ki = icmp ult i64 %i.ju, %i.jt
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit60.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit60.i: ; preds = %switch.lookup.i.i56.i, %bb.ag
  %.sroa.0.0.i.i57.i = phi i1 [ %i.kh, %bb.ag ], [ %i.ki, %switch.lookup.i.i56.i ] ; 2 uses
  %i.kj = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -16 ; 3 uses
  %.sroa.01.0.i61.i = select i1 %.sroa.0.0.i.i57.i, ptr %2, ptr %i.kj
  %i.kk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i61.i, i64 %.sroa.27.235.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kk, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.236.i, i64 16, i1 false), !alias.scope !830, !noalias !835
  %i.kl = zext i1 %.sroa.0.0.i.i57.i to i64
  %i.km = add i64 %.sroa.27.235.i, %i.kl          ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 16 ; 3 uses
  %i.ko = icmp ult ptr %i.kn, %i.jp
  br i1 %i.ko, label %.lr.ph38.i, label %._crit_edge39.i

bb.ah:                                            ; preds = %._crit_edge39.i
  %i.kp = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -16 ; 2 uses
  %i.kq = getelementptr inbounds nuw [16 x i8], ptr %i.kp, i64 %.sroa.27.2.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kq, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i, i64 16, i1 false), !alias.scope !830, !noalias !836
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 16
  br label %bb.aa

bb.ai:                                            ; preds = %._crit_edge39.i
  %i.ks = shl i64 %.sroa.27.2.lcssa.i, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph144, ptr nonnull align 8 %2, i64 %i.ks, i1 false), !alias.scope !830
  %i.kt = sub i64 %.sroa.16.0137348, %.sroa.27.2.lcssa.i ; 4 uses
  %.not47.i = icmp eq i64 %.sroa.16.0137348, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.ai
  %i.ku = getelementptr [16 x i8], ptr %.sroa.0.0.ph144, i64 %.sroa.27.2.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.27.2.lcssa.i, 1
  %xtraiter = and i64 %i.kt, 1
  %i.kv = icmp eq i64 %.sroa.16.0137348, %.neg
  br i1 %i.kv, label %.epil.preheader, label %.lr.ph45.i.new

.lr.ph45.i.new:                                   ; preds = %.lr.ph45.i
  %unroll_iter = and i64 %i.kt, -2
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.lr.ph45.i.new
  %.sroa.07.043.i = phi i64 [ 0, %.lr.ph45.i.new ], [ %i.kz, %bb.aj ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph45.i.new ], [ %niter.next.1, %bb.aj ]
  %i.kw = xor i64 %.sroa.07.043.i, -1
  %i.kx = getelementptr [16 x i8], ptr %i.gj, i64 %i.kw
  %i.ky = getelementptr [16 x i8], ptr %i.ku, i64 %.sroa.07.043.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ky, ptr noundef nonnull align 8 dereferenceable(16) %i.kx, i64 16, i1 false), !alias.scope !830
  %i.kz = add nuw i64 %.sroa.07.043.i, 2          ; 2 uses
  %i.la = xor i64 %.sroa.07.043.i, -2
  %i.lb = getelementptr [16 x i8], ptr %i.gj, i64 %i.la
  %i.lc = getelementptr [16 x i8], ptr %i.ku, i64 %.sroa.07.043.i
  %i.ld = getelementptr i8, ptr %i.lc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ld, ptr noundef nonnull align 8 dereferenceable(16) %i.lb, i64 16, i1 false), !alias.scope !830
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.aj

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.aj
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph45.i
  %.sroa.07.043.i.epil.init = phi i64 [ 0, %.lr.ph45.i ], [ %i.kz, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod419 = trunc i64 %i.kt to i1
  call void @llvm.assume(i1 %lcmp.mod419)
  %i.le = xor i64 %.sroa.07.043.i.epil.init, -1
  %i.lf = getelementptr [16 x i8], ptr %i.gj, i64 %i.le
  %i.lg = getelementptr [16 x i8], ptr %i.ku, i64 %.sroa.07.043.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lg, ptr noundef nonnull align 8 dereferenceable(16) %i.lf, i64 16, i1 false), !alias.scope !830
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.ai
  %i.lh = icmp eq i64 %.sroa.27.2.lcssa.i, 0
  br i1 %i.lh, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %.loopexit
  %.not.i50 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0137348
  br i1 %.not.i50, label %bb.al, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRyE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit, !prof !11

bb.al:                                            ; preds = %bb.ak
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22, !noalias !837
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRyE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph144) ]
  %7 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph144, i64 %.sroa.27.2.lcssa.i
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1b_5sliceSB15_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2n_16WordLevelTrainer8do_train0E0EB2t_(ptr noalias noundef nonnull align 8 %7, i64 noundef %i.kt, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.li = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.li, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %.split, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !838)
  call void @llvm.experimental.noalias.scope.decl(metadata !839)
  %.not103 = icmp samesign ult i64 %3, %.sroa.16.0137348
  br i1 %.not103, label %bb.an, label %bb.am, !prof !8

bb.am:                                            ; preds = %.thread
  %i.lj = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0137348 ; 4 uses
  br label %bb.ao

bb.an:                                            ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.ao:                                            ; preds = %bb.av, %bb.am
  %.sroa.43.0.i53 = phi ptr [ %i.lj, %bb.am ], [ %i.pu, %bb.av ] ; 2 uses
  %.sroa.27.0.i54 = phi i64 [ 0, %bb.am ], [ %i.pw, %bb.av ] ; 2 uses
  %.sroa.9.0.i55 = phi ptr [ %.sroa.0.0.ph144, %bb.am ], [ %i.px, %bb.av ] ; 3 uses
  %.sroa.0.0.i56 = phi i64 [ %.sroa.0.0.i40, %bb.am ], [ %.sroa.16.0137348, %bb.av ] ; 3 uses
  %i.lk = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i56, i64 3)
  %i.ll = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph144, i64 %i.lk ; 2 uses
  %i.lm = icmp ult ptr %.sroa.9.0.i55, %i.ll
  br i1 %i.lm, label %.lr.ph.i78, label %._crit_edge.i57

.lr.ph.i78:                                       ; preds = %bb.ao
  %.val32.i79 = load ptr, ptr %i.fp, align 8, !alias.scope !838, !noalias !839 ; 6 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.val32.i79, i64 8 ; 4 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.val32.i79, i64 16 ; 4 uses
  br label %bb.ap

bb.ap:                                            ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit53.i, %.lr.ph.i78
  %.sroa.9.131.i80 = phi ptr [ %.sroa.9.0.i55, %.lr.ph.i78 ], [ %i.or, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit53.i ] ; 10 uses
  %.sroa.27.130.i81 = phi i64 [ %.sroa.27.0.i54, %.lr.ph.i78 ], [ %i.oq, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit53.i ] ; 2 uses
  %.sroa.43.129.i82 = phi ptr [ %.sroa.43.0.i53, %.lr.ph.i78 ], [ %i.on, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit53.i ] ; 4 uses
  %i.lp = getelementptr i8, ptr %.sroa.9.131.i80, i64 8
  %.val31.i83 = load ptr, ptr %i.lp, align 8, !alias.scope !838, !noalias !839, !nonnull !3, !align !5, !noundef !3
  %.val33.i84 = load ptr, ptr %i.fr, align 8, !alias.scope !838, !noalias !839, !nonnull !3, !align !5, !noundef !3
  %i.lq = load i64, ptr %.val33.i84, align 8, !noalias !840, !noundef !3 ; 8 uses
  %i.lr = load i64, ptr %.val31.i83, align 8, !noalias !840, !noundef !3 ; 2 uses
  %.not.i.i.i.i85 = icmp eq i64 %i.lq, %i.lr
  br i1 %.not.i.i.i.i85, label %bb.aq, label %switch.lookup.i.i.i.i

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val32.i79) ]
  %.val30.i96 = load ptr, ptr %.sroa.9.131.i80, align 8, !alias.scope !838, !noalias !839, !nonnull !3, !noundef !3 ; 2 uses
  %i.ls = load ptr, ptr %i.ln, align 8, !noalias !840, !nonnull !3, !noundef !3
  %i.lt = load i64, ptr %i.lo, align 8, !noalias !840, !noundef !3 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.val30.i96, i64 8
  %i.lv = load ptr, ptr %i.lu, align 8, !noalias !840, !nonnull !3, !noundef !3
  %i.lw = getelementptr inbounds nuw i8, ptr %.val30.i96, i64 16
  %i.lx = load i64, ptr %i.lw, align 8, !noalias !840, !noundef !3 ; 2 uses
  %spec.store.select.i.i.i.i97 = call i64 @llvm.umin.i64(i64 %i.lt, i64 %i.lx)
  %i.ly = call i32 @memcmp(ptr nonnull %i.ls, ptr nonnull %i.lv, i64 %spec.store.select.i.i.i.i97), !noalias !840 ; 2 uses
  %i.lz = sext i32 %i.ly to i64
  %i.ma = icmp eq i32 %i.ly, 0
  %i.mb = sub i64 %i.lt, %i.lx
  %spec.select.i.i.i.i98 = select i1 %i.ma, i64 %i.mb, i64 %i.lz
  %i.mc = icmp slt i64 %spec.select.i.i.i.i98, 0
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit.i

switch.lookup.i.i.i.i:                            ; preds = %bb.ap
  %i.md = icmp ult i64 %i.lr, %i.lq
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit.i: ; preds = %switch.lookup.i.i.i.i, %bb.aq
  %.sroa.0.0.i.i.i.i = phi i1 [ %i.mc, %bb.aq ], [ %i.md, %switch.lookup.i.i.i.i ] ; 2 uses
  %i.me = xor i1 %.sroa.0.0.i.i.i.i, true
  %i.mf = getelementptr inbounds i8, ptr %.sroa.43.129.i82, i64 -16
  %.sroa.01.0.i.i86 = select i1 %.sroa.0.0.i.i.i.i, ptr %i.mf, ptr %2
  %i.mg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i86, i64 %.sroa.27.130.i81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mg, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.131.i80, i64 16, i1 false), !alias.scope !840, !noalias !841
  %i.mh = zext i1 %i.me to i64
  %i.mi = add i64 %.sroa.27.130.i81, %i.mh        ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i80, i64 16 ; 2 uses
  %i.mk = getelementptr i8, ptr %.sroa.9.131.i80, i64 24
  %.val27.i87 = load ptr, ptr %i.mk, align 8, !alias.scope !838, !noalias !839, !nonnull !3, !align !5, !noundef !3
  %i.ml = load i64, ptr %.val27.i87, align 8, !noalias !840, !noundef !3 ; 2 uses
  %.not.i.i.i34.i = icmp eq i64 %i.lq, %i.ml
  br i1 %.not.i.i.i34.i, label %bb.ar, label %switch.lookup.i.i.i35.i

bb.ar:                                            ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val32.i79) ]
  %.val26.i95 = load ptr, ptr %i.mj, align 8, !alias.scope !838, !noalias !839, !nonnull !3, !noundef !3 ; 2 uses
  %i.mm = load ptr, ptr %i.ln, align 8, !noalias !840, !nonnull !3, !noundef !3
  %i.mn = load i64, ptr %i.lo, align 8, !noalias !840, !noundef !3 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.val26.i95, i64 8
  %i.mp = load ptr, ptr %i.mo, align 8, !noalias !840, !nonnull !3, !noundef !3
  %i.mq = getelementptr inbounds nuw i8, ptr %.val26.i95, i64 16
  %i.mr = load i64, ptr %i.mq, align 8, !noalias !840, !noundef !3 ; 2 uses
  %spec.store.select.i.i.i37.i = call i64 @llvm.umin.i64(i64 %i.mn, i64 %i.mr)
  %i.ms = call i32 @memcmp(ptr nonnull %i.mm, ptr nonnull %i.mp, i64 %spec.store.select.i.i.i37.i), !noalias !840 ; 2 uses
  %i.mt = sext i32 %i.ms to i64
  %i.mu = icmp eq i32 %i.ms, 0
  %i.mv = sub i64 %i.mn, %i.mr
  %spec.select.i.i.i38.i = select i1 %i.mu, i64 %i.mv, i64 %i.mt
  %i.mw = icmp slt i64 %spec.select.i.i.i38.i, 0
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit39.i

switch.lookup.i.i.i35.i:                          ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit.i
  %i.mx = icmp ult i64 %i.ml, %i.lq
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit39.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit39.i: ; preds = %switch.lookup.i.i.i35.i, %bb.ar
  %.sroa.0.0.i.i.i36.i = phi i1 [ %i.mw, %bb.ar ], [ %i.mx, %switch.lookup.i.i.i35.i ] ; 2 uses
  %i.my = xor i1 %.sroa.0.0.i.i.i36.i, true
  %i.mz = getelementptr inbounds i8, ptr %.sroa.43.129.i82, i64 -32
  %.sroa.01.0.i40.i88 = select i1 %.sroa.0.0.i.i.i36.i, ptr %i.mz, ptr %2
  %i.na = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i40.i88, i64 %i.mi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.na, ptr noundef nonnull align 8 dereferenceable(16) %i.mj, i64 16, i1 false), !alias.scope !840, !noalias !842
  %i.nb = zext i1 %i.my to i64
  %i.nc = add i64 %i.mi, %i.nb                    ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i80, i64 32 ; 2 uses
  %i.ne = getelementptr i8, ptr %.sroa.9.131.i80, i64 40
  %.val23.i89 = load ptr, ptr %i.ne, align 8, !alias.scope !838, !noalias !839, !nonnull !3, !align !5, !noundef !3
  %i.nf = load i64, ptr %.val23.i89, align 8, !noalias !840, !noundef !3 ; 2 uses
  %.not.i.i.i41.i = icmp eq i64 %i.lq, %i.nf
  br i1 %.not.i.i.i41.i, label %bb.as, label %switch.lookup.i.i.i42.i

bb.as:                                            ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit39.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val32.i79) ]
  %.val22.i94 = load ptr, ptr %i.nd, align 8, !alias.scope !838, !noalias !839, !nonnull !3, !noundef !3 ; 2 uses
  %i.ng = load ptr, ptr %i.ln, align 8, !noalias !840, !nonnull !3, !noundef !3
  %i.nh = load i64, ptr %i.lo, align 8, !noalias !840, !noundef !3 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.val22.i94, i64 8
  %i.nj = load ptr, ptr %i.ni, align 8, !noalias !840, !nonnull !3, !noundef !3
  %i.nk = getelementptr inbounds nuw i8, ptr %.val22.i94, i64 16
  %i.nl = load i64, ptr %i.nk, align 8, !noalias !840, !noundef !3 ; 2 uses
  %spec.store.select.i.i.i44.i = call i64 @llvm.umin.i64(i64 %i.nh, i64 %i.nl)
  %i.nm = call i32 @memcmp(ptr nonnull %i.ng, ptr nonnull %i.nj, i64 %spec.store.select.i.i.i44.i), !noalias !840 ; 2 uses
  %i.nn = sext i32 %i.nm to i64
  %i.no = icmp eq i32 %i.nm, 0
  %i.np = sub i64 %i.nh, %i.nl
  %spec.select.i.i.i45.i = select i1 %i.no, i64 %i.np, i64 %i.nn
  %i.nq = icmp slt i64 %spec.select.i.i.i45.i, 0
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit46.i

switch.lookup.i.i.i42.i:                          ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit39.i
  %i.nr = icmp ult i64 %i.nf, %i.lq
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit46.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit46.i: ; preds = %switch.lookup.i.i.i42.i, %bb.as
  %.sroa.0.0.i.i.i43.i = phi i1 [ %i.nq, %bb.as ], [ %i.nr, %switch.lookup.i.i.i42.i ] ; 2 uses
  %i.ns = xor i1 %.sroa.0.0.i.i.i43.i, true
  %i.nt = getelementptr inbounds i8, ptr %.sroa.43.129.i82, i64 -48
  %.sroa.01.0.i47.i90 = select i1 %.sroa.0.0.i.i.i43.i, ptr %i.nt, ptr %2
  %i.nu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i47.i90, i64 %i.nc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nu, ptr noundef nonnull align 8 dereferenceable(16) %i.nd, i64 16, i1 false), !alias.scope !840, !noalias !843
  %i.nv = zext i1 %i.ns to i64
  %i.nw = add i64 %i.nc, %i.nv                    ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i80, i64 48 ; 2 uses
  %i.ny = getelementptr i8, ptr %.sroa.9.131.i80, i64 56
  %.val19.i91 = load ptr, ptr %i.ny, align 8, !alias.scope !838, !noalias !839, !nonnull !3, !align !5, !noundef !3
  %i.nz = load i64, ptr %.val19.i91, align 8, !noalias !840, !noundef !3 ; 2 uses
  %.not.i.i.i48.i = icmp eq i64 %i.lq, %i.nz
  br i1 %.not.i.i.i48.i, label %bb.at, label %switch.lookup.i.i.i49.i

bb.at:                                            ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit46.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val32.i79) ]
  %.val18.i93 = load ptr, ptr %i.nx, align 8, !alias.scope !838, !noalias !839, !nonnull !3, !noundef !3 ; 2 uses
  %i.oa = load ptr, ptr %i.ln, align 8, !noalias !840, !nonnull !3, !noundef !3
  %i.ob = load i64, ptr %i.lo, align 8, !noalias !840, !noundef !3 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.val18.i93, i64 8
  %i.od = load ptr, ptr %i.oc, align 8, !noalias !840, !nonnull !3, !noundef !3
  %i.oe = getelementptr inbounds nuw i8, ptr %.val18.i93, i64 16
  %i.of = load i64, ptr %i.oe, align 8, !noalias !840, !noundef !3 ; 2 uses
  %spec.store.select.i.i.i51.i = call i64 @llvm.umin.i64(i64 %i.ob, i64 %i.of)
  %i.og = call i32 @memcmp(ptr nonnull %i.oa, ptr nonnull %i.od, i64 %spec.store.select.i.i.i51.i), !noalias !840 ; 2 uses
  %i.oh = sext i32 %i.og to i64
  %i.oi = icmp eq i32 %i.og, 0
  %i.oj = sub i64 %i.ob, %i.of
  %spec.select.i.i.i52.i = select i1 %i.oi, i64 %i.oj, i64 %i.oh
  %i.ok = icmp slt i64 %spec.select.i.i.i52.i, 0
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit53.i

switch.lookup.i.i.i49.i:                          ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit46.i
  %i.ol = icmp ult i64 %i.nz, %i.lq
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit53.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit53.i: ; preds = %switch.lookup.i.i.i49.i, %bb.at
  %.sroa.0.0.i.i.i50.i = phi i1 [ %i.ok, %bb.at ], [ %i.ol, %switch.lookup.i.i.i49.i ] ; 2 uses
  %i.om = xor i1 %.sroa.0.0.i.i.i50.i, true
  %i.on = getelementptr inbounds i8, ptr %.sroa.43.129.i82, i64 -64 ; 3 uses
  %.sroa.01.0.i54.i92 = select i1 %.sroa.0.0.i.i.i50.i, ptr %i.on, ptr %2
  %i.oo = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i54.i92, i64 %i.nw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oo, ptr noundef nonnull align 8 dereferenceable(16) %i.nx, i64 16, i1 false), !alias.scope !840, !noalias !844
  %i.op = zext i1 %i.om to i64
  %i.oq = add i64 %i.nw, %i.op                    ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i80, i64 64 ; 3 uses
  %i.os = icmp ult ptr %i.or, %i.ll
  br i1 %i.os, label %bb.ap, label %._crit_edge.i57

._crit_edge.i57:                                  ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit53.i, %bb.ao
  %.sroa.43.1.lcssa.i58 = phi ptr [ %.sroa.43.0.i53, %bb.ao ], [ %i.on, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit53.i ] ; 2 uses
  %.sroa.27.1.lcssa.i59 = phi i64 [ %.sroa.27.0.i54, %bb.ao ], [ %i.oq, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit53.i ] ; 2 uses
  %.sroa.9.1.lcssa.i60 = phi ptr [ %.sroa.9.0.i55, %bb.ao ], [ %i.or, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit53.i ] ; 3 uses
  %i.ot = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph144, i64 %.sroa.0.0.i56 ; 2 uses
  %i.ou = icmp ult ptr %.sroa.9.1.lcssa.i60, %i.ot
  br i1 %i.ou, label %.lr.ph38.i69, label %._crit_edge39.i61

._crit_edge39.i61:                                ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit60.i, %._crit_edge.i57
  %.sroa.43.2.lcssa.i62 = phi ptr [ %.sroa.43.1.lcssa.i58, %._crit_edge.i57 ], [ %i.po, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit60.i ]
  %.sroa.27.2.lcssa.i63 = phi i64 [ %.sroa.27.1.lcssa.i59, %._crit_edge.i57 ], [ %i.pr, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit60.i ] ; 10 uses
  %.sroa.9.2.lcssa.i64 = phi ptr [ %.sroa.9.1.lcssa.i60, %._crit_edge.i57 ], [ %i.ps, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit60.i ] ; 2 uses
  %i.ov = icmp eq i64 %.sroa.0.0.i56, %.sroa.16.0137348
  br i1 %i.ov, label %bb.aw, label %bb.av

.lr.ph38.i69:                                     ; preds = %._crit_edge.i57, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit60.i
  %.sroa.9.236.i70 = phi ptr [ %i.ps, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit60.i ], [ %.sroa.9.1.lcssa.i60, %._crit_edge.i57 ] ; 4 uses
  %.sroa.27.235.i71 = phi i64 [ %i.pr, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit60.i ], [ %.sroa.27.1.lcssa.i59, %._crit_edge.i57 ] ; 2 uses
  %.sroa.43.234.i72 = phi ptr [ %i.po, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit60.i ], [ %.sroa.43.1.lcssa.i58, %._crit_edge.i57 ]
  %i.ow = getelementptr i8, ptr %.sroa.9.236.i70, i64 8
  %.val15.i73 = load ptr, ptr %i.ow, align 8, !alias.scope !838, !noalias !839, !nonnull !3, !align !5, !noundef !3
  %.val17.i74 = load ptr, ptr %i.fr, align 8, !alias.scope !838, !noalias !839, !nonnull !3, !align !5, !noundef !3
  %i.ox = load i64, ptr %.val17.i74, align 8, !noalias !840, !noundef !3 ; 2 uses
  %i.oy = load i64, ptr %.val15.i73, align 8, !noalias !840, !noundef !3 ; 2 uses
  %.not.i.i.i55.i = icmp eq i64 %i.ox, %i.oy
  br i1 %.not.i.i.i55.i, label %bb.au, label %switch.lookup.i.i.i56.i

bb.au:                                            ; preds = %.lr.ph38.i69
  %.val16.i76 = load ptr, ptr %i.fp, align 8, !alias.scope !838, !noalias !839, !nonnull !3, !noundef !3 ; 2 uses
  %.val.i77 = load ptr, ptr %.sroa.9.236.i70, align 8, !alias.scope !838, !noalias !839, !nonnull !3, !noundef !3 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.val16.i76, i64 8
  %i.pa = load ptr, ptr %i.oz, align 8, !noalias !840, !nonnull !3, !noundef !3
  %i.pb = getelementptr inbounds nuw i8, ptr %.val16.i76, i64 16
  %i.pc = load i64, ptr %i.pb, align 8, !noalias !840, !noundef !3 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.val.i77, i64 8
  %i.pe = load ptr, ptr %i.pd, align 8, !noalias !840, !nonnull !3, !noundef !3
  %i.pf = getelementptr inbounds nuw i8, ptr %.val.i77, i64 16
  %i.pg = load i64, ptr %i.pf, align 8, !noalias !840, !noundef !3 ; 2 uses
  %spec.store.select.i.i.i58.i = call i64 @llvm.umin.i64(i64 %i.pc, i64 %i.pg)
  %i.ph = call i32 @memcmp(ptr nonnull %i.pa, ptr nonnull %i.pe, i64 %spec.store.select.i.i.i58.i), !noalias !840 ; 2 uses
  %i.pi = sext i32 %i.ph to i64
  %i.pj = icmp eq i32 %i.ph, 0
  %i.pk = sub i64 %i.pc, %i.pg
  %spec.select.i.i.i59.i = select i1 %i.pj, i64 %i.pk, i64 %i.pi
  %i.pl = icmp slt i64 %spec.select.i.i.i59.i, 0
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit60.i

switch.lookup.i.i.i56.i:                          ; preds = %.lr.ph38.i69
  %i.pm = icmp ult i64 %i.oy, %i.ox
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit60.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1d_5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2p_16WordLevelTrainer8do_train0E0E0B2v_.exit60.i: ; preds = %switch.lookup.i.i.i56.i, %bb.au
  %.sroa.0.0.i.i.i57.i = phi i1 [ %i.pl, %bb.au ], [ %i.pm, %switch.lookup.i.i.i56.i ] ; 2 uses
  %i.pn = xor i1 %.sroa.0.0.i.i.i57.i, true
  %i.po = getelementptr inbounds i8, ptr %.sroa.43.234.i72, i64 -16 ; 3 uses
  %.sroa.01.0.i61.i75 = select i1 %.sroa.0.0.i.i.i57.i, ptr %i.po, ptr %2
  %i.pp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i61.i75, i64 %.sroa.27.235.i71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pp, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.236.i70, i64 16, i1 false), !alias.scope !840, !noalias !845
  %i.pq = zext i1 %i.pn to i64
  %i.pr = add i64 %.sroa.27.235.i71, %i.pq        ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i70, i64 16 ; 3 uses
  %i.pt = icmp ult ptr %i.ps, %i.ot
  br i1 %i.pt, label %.lr.ph38.i69, label %._crit_edge39.i61

bb.av:                                            ; preds = %._crit_edge39.i61
  %i.pu = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i62, i64 -16
  %i.pv = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pv, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i64, i64 16, i1 false), !alias.scope !840, !noalias !846
  %i.pw = add i64 %.sroa.27.2.lcssa.i63, 1
  %i.px = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i64, i64 16
  br label %bb.ao

bb.aw:                                            ; preds = %._crit_edge39.i61
  %i.py = shl i64 %.sroa.27.2.lcssa.i63, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph144, ptr nonnull align 8 %2, i64 %i.py, i1 false), !alias.scope !840
  %i.pz = sub i64 %.sroa.16.0137348, %.sroa.27.2.lcssa.i63 ; 6 uses
  %.not47.i65 = icmp eq i64 %.sroa.16.0137348, %.sroa.27.2.lcssa.i63
  br i1 %.not47.i65, label %.outer._crit_edge.thread, label %.lr.ph45.i66

.lr.ph45.i66:                                     ; preds = %bb.aw
  %i.qa = getelementptr [16 x i8], ptr %.sroa.0.0.ph144, i64 %.sroa.27.2.lcssa.i63 ; 3 uses
  %.neg432 = add i64 %.sroa.27.2.lcssa.i63, 1
  %xtraiter427 = and i64 %i.pz, 1
  %i.qb = icmp eq i64 %.sroa.16.0137348, %.neg432
  br i1 %i.qb, label %.epil.preheader420, label %.lr.ph45.i66.new

.lr.ph45.i66.new:                                 ; preds = %.lr.ph45.i66
  %unroll_iter430 = and i64 %i.pz, -2
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.lr.ph45.i66.new
  %.sroa.07.043.i67 = phi i64 [ 0, %.lr.ph45.i66.new ], [ %i.qf, %bb.ax ] ; 5 uses
  %niter431 = phi i64 [ 0, %.lr.ph45.i66.new ], [ %niter431.next.1, %bb.ax ]
  %i.qc = xor i64 %.sroa.07.043.i67, -1
  %i.qd = getelementptr [16 x i8], ptr %i.lj, i64 %i.qc
  %i.qe = getelementptr [16 x i8], ptr %i.qa, i64 %.sroa.07.043.i67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qe, ptr noundef nonnull align 8 dereferenceable(16) %i.qd, i64 16, i1 false), !alias.scope !840
  %i.qf = add nuw i64 %.sroa.07.043.i67, 2        ; 2 uses
  %i.qg = xor i64 %.sroa.07.043.i67, -2
  %i.qh = getelementptr [16 x i8], ptr %i.lj, i64 %i.qg
  %i.qi = getelementptr [16 x i8], ptr %i.qa, i64 %.sroa.07.043.i67
  %i.qj = getelementptr i8, ptr %i.qi, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qj, ptr noundef nonnull align 8 dereferenceable(16) %i.qh, i64 16, i1 false), !alias.scope !840
  %niter431.next.1 = add i64 %niter431, 2         ; 2 uses
  %niter431.ncmp.1 = icmp eq i64 %niter431.next.1, %unroll_iter430
  br i1 %niter431.ncmp.1, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvB2_9quicksortB1d_NCINvMNtB1j_5sliceSB1d_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2R_16WordLevelTrainer8do_train0E0E0EB2X_.exit.unr-lcssa, label %bb.ax

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvB2_9quicksortB1d_NCINvMNtB1j_5sliceSB1d_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2R_16WordLevelTrainer8do_train0E0E0EB2X_.exit.unr-lcssa: ; preds = %bb.ax
  %lcmp.mod428.not = icmp eq i64 %xtraiter427, 0
  br i1 %lcmp.mod428.not, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvB2_9quicksortB1d_NCINvMNtB1j_5sliceSB1d_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2R_16WordLevelTrainer8do_train0E0E0EB2X_.exit, label %.epil.preheader420

.epil.preheader420:                               ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvB2_9quicksortB1d_NCINvMNtB1j_5sliceSB1d_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2R_16WordLevelTrainer8do_train0E0E0EB2X_.exit.unr-lcssa, %.lr.ph45.i66
  %.sroa.07.043.i67.epil.init = phi i64 [ 0, %.lr.ph45.i66 ], [ %i.qf, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvB2_9quicksortB1d_NCINvMNtB1j_5sliceSB1d_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2R_16WordLevelTrainer8do_train0E0E0EB2X_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod429 = trunc i64 %i.pz to i1
  call void @llvm.assume(i1 %lcmp.mod429)
  %i.qk = xor i64 %.sroa.07.043.i67.epil.init, -1
  %i.ql = getelementptr [16 x i8], ptr %i.lj, i64 %i.qk
  %i.qm = getelementptr [16 x i8], ptr %i.qa, i64 %.sroa.07.043.i67.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qm, ptr noundef nonnull align 8 dereferenceable(16) %i.ql, i64 16, i1 false), !alias.scope !840
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvB2_9quicksortB1d_NCINvMNtB1j_5sliceSB1d_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2R_16WordLevelTrainer8do_train0E0E0EB2X_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvB2_9quicksortB1d_NCINvMNtB1j_5sliceSB1d_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2R_16WordLevelTrainer8do_train0E0E0EB2X_.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvB2_9quicksortB1d_NCINvMNtB1j_5sliceSB1d_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2R_16WordLevelTrainer8do_train0E0E0EB2X_.exit.unr-lcssa, %.epil.preheader420
  %i.qn = icmp ugt i64 %.sroa.27.2.lcssa.i63, %.sroa.16.0137348
  br i1 %i.qn, label %bb.ay, label %.outer, !prof !11

.outer._crit_edge.thread:                         ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1y_5sliceSB1s_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2K_16WordLevelTrainer8do_train0E0EB2Q_.exit

.outer:                                           ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvB2_9quicksortB1d_NCINvMNtB1j_5sliceSB1d_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2R_16WordLevelTrainer8do_train0E0E0EB2X_.exit
  %i.qo = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph144, i64 %.sroa.27.2.lcssa.i63 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.qp = icmp ult i64 %i.pz, 33
  br i1 %i.qp, label %.outer._crit_edge, label %.lr.ph

bb.ay:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvB2_9quicksortB1d_NCINvMNtB1j_5sliceSB1d_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2R_16WordLevelTrainer8do_train0E0E0EB2X_.exit
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i63, i64 noundef %.sroa.16.0137348, i64 noundef %.sroa.16.0137348, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #22
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB25_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(16) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph127 = phi ptr [ %i.kq, %.outer ], [ %0, %bb.a ] ; 22 uses
  %.sroa.16.0.ph126 = phi i64 [ %i.kb, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph125 = phi i32 [ %i.ex, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph124 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = getelementptr i8, ptr %.sroa.0.0.ph127, i64 4
  %i.d = ptrtoint ptr %.sroa.0.0.ph127 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph124, null
  %i.e = getelementptr i8, ptr %.sroa.028.0.ph124, i64 4
  %i.f = icmp eq i32 %.sroa.025.0.ph125, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph295

bb.b:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThciE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit
  %i.g = icmp eq i32 %i.ex, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph295

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThciE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit, %bb.a
  %.sroa.0.0.ph.lcssa118 = phi ptr [ %.sroa.0.0.ph127, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThciE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit ], [ %0, %bb.a ], [ %i.kq, %.outer ] ; 18 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThciE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit ], [ %1, %bb.a ], [ %i.kb, %.outer ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !901)
  call void @llvm.experimental.noalias.scope.decl(metadata !902)
end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB25_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers:bb.a
  %..i.i = select i1 %i.fj, ptr %i.fa, ptr %i.ez
  %.sroa.0.0.i.i = select i1 %i.fh, ptr %.sroa.0.0.ph127, ptr %..i.i
  br label %bb.t

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB2s_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.outer._crit_edge.thread, %bb.n, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.t:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3ThciENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB1Y_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.s
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3ThciENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB1Y_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit.i ], [ %i.fc, %bb.s ]
  %i.fk = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.fl = sub nuw i64 %i.fk, %i.d                 ; 2 uses
  %.sroa.0.0.i37 = lshr exact i64 %i.fl, 4        ; 3 uses
  %i.fm = icmp samesign ult i64 %.sroa.0.0.i37, %.sroa.16.0120293
  call void @llvm.assume(i1 %i.fm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph127, i64 %i.fl ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.fn, i64 16, i1 false)
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.028.0.val = load i8, ptr %i.e, align 4, !noundef !3
  %i.fo = getelementptr i8, ptr %i.fn, i64 4
  %.val = load i8, ptr %i.fo, align 4, !noundef !3
  %i.fp = icmp ult i8 %.sroa.028.0.val, %.val
  br i1 %i.fp, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.t, %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !910)
  %.not83 = icmp samesign ult i64 %3, %.sroa.16.0120293
  br i1 %.not83, label %bb.x, label %bb.w, !prof !8

bb.w:                                             ; preds = %bb.v
  %i.fq = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0120293 ; 4 uses
  %i.fr = getelementptr i8, ptr %i.fn, i64 4      ; 2 uses
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  call void @llvm.trap()
  unreachable

bb.y:                                             ; preds = %bb.z, %bb.w
  %.sroa.43.0.i = phi ptr [ %i.fq, %bb.w ], [ %i.hj, %bb.z ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.w ], [ %.sroa.27.2.lcssa.i, %bb.z ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph127, %bb.w ], [ %i.hl, %bb.z ] ; 3 uses
  %.sroa.0.0.i38 = phi i64 [ %.sroa.0.0.i37, %bb.w ], [ %.sroa.16.0120293, %bb.z ] ; 3 uses
  %i.fs = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i38, i64 3)
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %i.fs ; 2 uses
  %i.fu = icmp ult ptr %.sroa.9.0.i, %i.ft
  br i1 %i.fu, label %.lr.ph.i40, label %._crit_edge.i

.lr.ph.i40:                                       ; preds = %bb.y, %.lr.ph.i40
  %.sroa.9.131.i = phi ptr [ %i.gw, %.lr.ph.i40 ], [ %.sroa.9.0.i, %bb.y ] ; 9 uses
  %.sroa.27.130.i = phi i64 [ %i.gv, %.lr.ph.i40 ], [ %.sroa.27.0.i, %bb.y ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %i.gs, %.lr.ph.i40 ], [ %.sroa.43.0.i, %bb.y ] ; 4 uses
  %i.fv = getelementptr i8, ptr %.sroa.9.131.i, i64 4
  %.val22.i = load i8, ptr %i.fv, align 4, !alias.scope !911, !noalias !910, !noundef !3
  %.val23.i = load i8, ptr %i.fr, align 4, !alias.scope !911, !noalias !910, !noundef !3 ; 4 uses
  %i.fw = icmp ult i8 %.val22.i, %.val23.i        ; 2 uses
  %i.fx = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16
  %.sroa.01.0.i.i = select i1 %i.fw, ptr %2, ptr %i.fx
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fy, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.131.i, i64 16, i1 false), !alias.scope !912, !noalias !913
  %i.fz = zext i1 %i.fw to i64
  %i.ga = add i64 %.sroa.27.130.i, %i.fz          ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16
  %i.gc = getelementptr i8, ptr %.sroa.9.131.i, i64 20
  %.val20.i = load i8, ptr %i.gc, align 4, !alias.scope !911, !noalias !910, !noundef !3
  %i.gd = icmp ult i8 %.val20.i, %.val23.i        ; 2 uses
  %i.ge = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32
  %.sroa.01.0.i24.i = select i1 %i.gd, ptr %2, ptr %i.ge
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i24.i, i64 %i.ga
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gf, ptr noundef nonnull align 8 dereferenceable(16) %i.gb, i64 16, i1 false), !alias.scope !912, !noalias !914
  %i.gg = zext i1 %i.gd to i64
  %i.gh = add i64 %i.ga, %i.gg                    ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32
  %i.gj = getelementptr i8, ptr %.sroa.9.131.i, i64 36
  %.val18.i = load i8, ptr %i.gj, align 4, !alias.scope !911, !noalias !910, !noundef !3
  %i.gk = icmp ult i8 %.val18.i, %.val23.i        ; 2 uses
  %i.gl = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -48
  %.sroa.01.0.i25.i = select i1 %i.gk, ptr %2, ptr %i.gl
  %i.gm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i25.i, i64 %i.gh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gm, ptr noundef nonnull align 8 dereferenceable(16) %i.gi, i64 16, i1 false), !alias.scope !912, !noalias !915
  %i.gn = zext i1 %i.gk to i64
  %i.go = add i64 %i.gh, %i.gn                    ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 48
  %i.gq = getelementptr i8, ptr %.sroa.9.131.i, i64 52
  %.val16.i = load i8, ptr %i.gq, align 4, !alias.scope !911, !noalias !910, !noundef !3
  %i.gr = icmp ult i8 %.val16.i, %.val23.i        ; 2 uses
  %i.gs = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -64 ; 3 uses
  %.sroa.01.0.i26.i = select i1 %i.gr, ptr %2, ptr %i.gs
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i26.i, i64 %i.go
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gt, ptr noundef nonnull align 8 dereferenceable(16) %i.gp, i64 16, i1 false), !alias.scope !912, !noalias !916
  %i.gu = zext i1 %i.gr to i64
  %i.gv = add i64 %i.go, %i.gu                    ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 64 ; 3 uses
  %i.gx = icmp ult ptr %i.gw, %i.ft
  br i1 %i.gx, label %.lr.ph.i40, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i40, %bb.y
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.y ], [ %i.gs, %.lr.ph.i40 ] ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.y ], [ %i.gv, %.lr.ph.i40 ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.y ], [ %i.gw, %.lr.ph.i40 ] ; 3 uses
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %.sroa.0.0.i38 ; 2 uses
  %i.gz = icmp ult ptr %.sroa.9.1.lcssa.i, %i.gy
  br i1 %i.gz, label %.lr.ph38.i, label %._crit_edge39.i

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.hd, %.lr.ph38.i ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.hg, %.lr.ph38.i ] ; 14 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.hh, %.lr.ph38.i ] ; 2 uses
  %i.ha = icmp eq i64 %.sroa.0.0.i38, %.sroa.16.0120293
  br i1 %i.ha, label %bb.aa, label %bb.z

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.hh, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.27.235.i = phi i64 [ %i.hg, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.hd, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %i.hb = getelementptr i8, ptr %.sroa.9.236.i, i64 4
  %.val.i = load i8, ptr %i.hb, align 4, !alias.scope !911, !noalias !910, !noundef !3
  %.val15.i = load i8, ptr %i.fr, align 4, !alias.scope !911, !noalias !910, !noundef !3
  %i.hc = icmp ult i8 %.val.i, %.val15.i          ; 2 uses
  %i.hd = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -16 ; 3 uses
  %.sroa.01.0.i27.i = select i1 %i.hc, ptr %2, ptr %i.hd
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i27.i, i64 %.sroa.27.235.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.he, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.236.i, i64 16, i1 false), !alias.scope !912, !noalias !917
  %i.hf = zext i1 %i.hc to i64
  %i.hg = add i64 %.sroa.27.235.i, %i.hf          ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 16 ; 3 uses
  %i.hi = icmp ult ptr %i.hh, %i.gy
  br i1 %i.hi, label %.lr.ph38.i, label %._crit_edge39.i

bb.z:                                             ; preds = %._crit_edge39.i
  %i.hj = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -16 ; 2 uses
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %i.hj, i64 %.sroa.27.2.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hk, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i, i64 16, i1 false), !alias.scope !912, !noalias !918
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 16
  br label %bb.y

bb.aa:                                            ; preds = %._crit_edge39.i
  %i.hm = shl i64 %.sroa.27.2.lcssa.i, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph127, ptr nonnull align 8 %2, i64 %i.hm, i1 false), !alias.scope !912
  %i.hn = sub i64 %.sroa.16.0120293, %.sroa.27.2.lcssa.i ; 4 uses
  %.not47.i = icmp eq i64 %.sroa.16.0120293, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.aa
  %i.ho = getelementptr [16 x i8], ptr %.sroa.0.0.ph127, i64 %.sroa.27.2.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.27.2.lcssa.i, 1
  %xtraiter = and i64 %i.hn, 1
  %i.hp = icmp eq i64 %.sroa.16.0120293, %.neg
  br i1 %i.hp, label %.epil.preheader, label %.lr.ph45.i.new

.lr.ph45.i.new:                                   ; preds = %.lr.ph45.i
  %unroll_iter = and i64 %i.hn, -2
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.lr.ph45.i.new
  %.sroa.07.043.i = phi i64 [ 0, %.lr.ph45.i.new ], [ %i.ht, %bb.ab ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph45.i.new ], [ %niter.next.1, %bb.ab ]
  %i.hq = xor i64 %.sroa.07.043.i, -1
  %i.hr = getelementptr [16 x i8], ptr %i.fq, i64 %i.hq
  %i.hs = getelementptr [16 x i8], ptr %i.ho, i64 %.sroa.07.043.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hs, ptr noundef nonnull align 8 dereferenceable(16) %i.hr, i64 16, i1 false), !alias.scope !912
  %i.ht = add nuw i64 %.sroa.07.043.i, 2          ; 2 uses
  %i.hu = xor i64 %.sroa.07.043.i, -2
  %i.hv = getelementptr [16 x i8], ptr %i.fq, i64 %i.hu
  %i.hw = getelementptr [16 x i8], ptr %i.ho, i64 %.sroa.07.043.i
  %i.hx = getelementptr i8, ptr %i.hw, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hx, ptr noundef nonnull align 8 dereferenceable(16) %i.hv, i64 16, i1 false), !alias.scope !912
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.ab

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.ab
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph45.i
  %.sroa.07.043.i.epil.init = phi i64 [ 0, %.lr.ph45.i ], [ %i.ht, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod387 = trunc i64 %i.hn to i1
  call void @llvm.assume(i1 %lcmp.mod387)
  %i.hy = xor i64 %.sroa.07.043.i.epil.init, -1
  %i.hz = getelementptr [16 x i8], ptr %i.fq, i64 %i.hy
  %i.ia = getelementptr [16 x i8], ptr %i.ho, i64 %.sroa.07.043.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ia, ptr noundef nonnull align 8 dereferenceable(16) %i.hz, i64 16, i1 false), !alias.scope !912
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.aa
  %i.ib = icmp eq i64 %.sroa.27.2.lcssa.i, 0
  br i1 %i.ib, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %.loopexit
  %.not.i41 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0120293
  br i1 %.not.i41, label %bb.ad, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThciE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit, !prof !11

bb.ad:                                            ; preds = %bb.ac
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22, !noalias !919
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSThciE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph127) ]
  %7 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %.sroa.27.2.lcssa.i
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB25_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %7, i64 noundef %i.hn, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ex, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ic = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.ic, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.u, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !920)
  %.not84 = icmp samesign ult i64 %3, %.sroa.16.0120293
  br i1 %.not84, label %bb.af, label %bb.ae, !prof !8

bb.ae:                                            ; preds = %.thread
  %i.id = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0120293 ; 4 uses
  %i.ie = getelementptr i8, ptr %i.fn, i64 4      ; 2 uses
  br label %bb.ag

bb.af:                                            ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.ag:                                            ; preds = %bb.ah, %bb.ae
  %.sroa.43.0.i44 = phi ptr [ %i.id, %bb.ae ], [ %i.jw, %bb.ah ] ; 2 uses
  %.sroa.27.0.i45 = phi i64 [ 0, %bb.ae ], [ %i.jy, %bb.ah ] ; 2 uses
  %.sroa.9.0.i46 = phi ptr [ %.sroa.0.0.ph127, %bb.ae ], [ %i.jz, %bb.ah ] ; 3 uses
  %.sroa.0.0.i47 = phi i64 [ %.sroa.0.0.i37, %bb.ae ], [ %.sroa.16.0120293, %bb.ah ] ; 3 uses
  %i.if = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i47, i64 3)
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %i.if ; 2 uses
  %i.ih = icmp ult ptr %.sroa.9.0.i46, %i.ig
  br i1 %i.ih, label %.lr.ph.i67, label %._crit_edge.i48

.lr.ph.i67:                                       ; preds = %bb.ag, %.lr.ph.i67
  %.sroa.9.131.i68 = phi ptr [ %i.jj, %.lr.ph.i67 ], [ %.sroa.9.0.i46, %bb.ag ] ; 9 uses
  %.sroa.27.130.i69 = phi i64 [ %i.ji, %.lr.ph.i67 ], [ %.sroa.27.0.i45, %bb.ag ] ; 2 uses
  %.sroa.43.129.i70 = phi ptr [ %i.jf, %.lr.ph.i67 ], [ %.sroa.43.0.i44, %bb.ag ] ; 4 uses
  %i.ii = getelementptr i8, ptr %.sroa.9.131.i68, i64 4
  %.val22.i71 = load i8, ptr %i.ii, align 4, !alias.scope !921, !noalias !920, !noundef !3
  %.val23.i72 = load i8, ptr %i.ie, align 4, !alias.scope !921, !noalias !920, !noundef !3 ; 4 uses
  %i.ij = icmp uge i8 %.val23.i72, %.val22.i71    ; 2 uses
  %i.ik = getelementptr inbounds i8, ptr %.sroa.43.129.i70, i64 -16
  %.sroa.01.0.i.i73 = select i1 %i.ij, ptr %2, ptr %i.ik
  %i.il = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i73, i64 %.sroa.27.130.i69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.il, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.131.i68, i64 16, i1 false), !alias.scope !922, !noalias !923
  %i.im = zext i1 %i.ij to i64
  %i.in = add i64 %.sroa.27.130.i69, %i.im        ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i68, i64 16
  %i.ip = getelementptr i8, ptr %.sroa.9.131.i68, i64 20
  %.val20.i74 = load i8, ptr %i.ip, align 4, !alias.scope !921, !noalias !920, !noundef !3
  %i.iq = icmp uge i8 %.val23.i72, %.val20.i74    ; 2 uses
  %i.ir = getelementptr inbounds i8, ptr %.sroa.43.129.i70, i64 -32
  %.sroa.01.0.i24.i75 = select i1 %i.iq, ptr %2, ptr %i.ir
  %i.is = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i24.i75, i64 %i.in
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.is, ptr noundef nonnull align 8 dereferenceable(16) %i.io, i64 16, i1 false), !alias.scope !922, !noalias !924
  %i.it = zext i1 %i.iq to i64
  %i.iu = add i64 %i.in, %i.it                    ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i68, i64 32
  %i.iw = getelementptr i8, ptr %.sroa.9.131.i68, i64 36
  %.val18.i76 = load i8, ptr %i.iw, align 4, !alias.scope !921, !noalias !920, !noundef !3
  %i.ix = icmp uge i8 %.val23.i72, %.val18.i76    ; 2 uses
  %i.iy = getelementptr inbounds i8, ptr %.sroa.43.129.i70, i64 -48
  %.sroa.01.0.i25.i77 = select i1 %i.ix, ptr %2, ptr %i.iy
  %i.iz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i25.i77, i64 %i.iu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iz, ptr noundef nonnull align 8 dereferenceable(16) %i.iv, i64 16, i1 false), !alias.scope !922, !noalias !925
  %i.ja = zext i1 %i.ix to i64
  %i.jb = add i64 %i.iu, %i.ja                    ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i68, i64 48
  %i.jd = getelementptr i8, ptr %.sroa.9.131.i68, i64 52
  %.val16.i78 = load i8, ptr %i.jd, align 4, !alias.scope !921, !noalias !920, !noundef !3
  %i.je = icmp uge i8 %.val23.i72, %.val16.i78    ; 2 uses
  %i.jf = getelementptr inbounds i8, ptr %.sroa.43.129.i70, i64 -64 ; 3 uses
  %.sroa.01.0.i26.i79 = select i1 %i.je, ptr %2, ptr %i.jf
  %i.jg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i26.i79, i64 %i.jb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jg, ptr noundef nonnull align 8 dereferenceable(16) %i.jc, i64 16, i1 false), !alias.scope !922, !noalias !926
  %i.jh = zext i1 %i.je to i64
  %i.ji = add i64 %i.jb, %i.jh                    ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i68, i64 64 ; 3 uses
  %i.jk = icmp ult ptr %i.jj, %i.ig
  br i1 %i.jk, label %.lr.ph.i67, label %._crit_edge.i48

._crit_edge.i48:                                  ; preds = %.lr.ph.i67, %bb.ag
  %.sroa.43.1.lcssa.i49 = phi ptr [ %.sroa.43.0.i44, %bb.ag ], [ %i.jf, %.lr.ph.i67 ] ; 2 uses
  %.sroa.27.1.lcssa.i50 = phi i64 [ %.sroa.27.0.i45, %bb.ag ], [ %i.ji, %.lr.ph.i67 ] ; 2 uses
  %.sroa.9.1.lcssa.i51 = phi ptr [ %.sroa.9.0.i46, %bb.ag ], [ %i.jj, %.lr.ph.i67 ] ; 3 uses
  %i.jl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %.sroa.0.0.i47 ; 2 uses
  %i.jm = icmp ult ptr %.sroa.9.1.lcssa.i51, %i.jl
  br i1 %i.jm, label %.lr.ph38.i60, label %._crit_edge39.i52

._crit_edge39.i52:                                ; preds = %.lr.ph38.i60, %._crit_edge.i48
  %.sroa.43.2.lcssa.i53 = phi ptr [ %.sroa.43.1.lcssa.i49, %._crit_edge.i48 ], [ %i.jq, %.lr.ph38.i60 ]
  %.sroa.27.2.lcssa.i54 = phi i64 [ %.sroa.27.1.lcssa.i50, %._crit_edge.i48 ], [ %i.jt, %.lr.ph38.i60 ] ; 10 uses
  %.sroa.9.2.lcssa.i55 = phi ptr [ %.sroa.9.1.lcssa.i51, %._crit_edge.i48 ], [ %i.ju, %.lr.ph38.i60 ] ; 2 uses
  %i.jn = icmp eq i64 %.sroa.0.0.i47, %.sroa.16.0120293
  br i1 %i.jn, label %bb.ai, label %bb.ah

.lr.ph38.i60:                                     ; preds = %._crit_edge.i48, %.lr.ph38.i60
  %.sroa.9.236.i61 = phi ptr [ %i.ju, %.lr.ph38.i60 ], [ %.sroa.9.1.lcssa.i51, %._crit_edge.i48 ] ; 3 uses
  %.sroa.27.235.i62 = phi i64 [ %i.jt, %.lr.ph38.i60 ], [ %.sroa.27.1.lcssa.i50, %._crit_edge.i48 ] ; 2 uses
  %.sroa.43.234.i63 = phi ptr [ %i.jq, %.lr.ph38.i60 ], [ %.sroa.43.1.lcssa.i49, %._crit_edge.i48 ]
  %i.jo = getelementptr i8, ptr %.sroa.9.236.i61, i64 4
  %.val.i64 = load i8, ptr %i.jo, align 4, !alias.scope !921, !noalias !920, !noundef !3
  %.val15.i65 = load i8, ptr %i.ie, align 4, !alias.scope !921, !noalias !920, !noundef !3
  %i.jp = icmp uge i8 %.val15.i65, %.val.i64      ; 2 uses
  %i.jq = getelementptr inbounds i8, ptr %.sroa.43.234.i63, i64 -16 ; 3 uses
  %.sroa.01.0.i27.i66 = select i1 %i.jp, ptr %2, ptr %i.jq
  %i.jr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i27.i66, i64 %.sroa.27.235.i62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jr, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.236.i61, i64 16, i1 false), !alias.scope !922, !noalias !927
  %i.js = zext i1 %i.jp to i64
  %i.jt = add i64 %.sroa.27.235.i62, %i.js        ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i61, i64 16 ; 3 uses
  %i.jv = icmp ult ptr %i.ju, %i.jl
  br i1 %i.jv, label %.lr.ph38.i60, label %._crit_edge39.i52

bb.ah:                                            ; preds = %._crit_edge39.i52
  %i.jw = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i53, i64 -16
  %i.jx = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i55, i64 16, i1 false), !alias.scope !922, !noalias !928
  %i.jy = add i64 %.sroa.27.2.lcssa.i54, 1
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i55, i64 16
  br label %bb.ag

bb.ai:                                            ; preds = %._crit_edge39.i52
  %i.ka = shl i64 %.sroa.27.2.lcssa.i54, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph127, ptr nonnull align 8 %2, i64 %i.ka, i1 false), !alias.scope !922
  %i.kb = sub i64 %.sroa.16.0120293, %.sroa.27.2.lcssa.i54 ; 6 uses
  %.not47.i56 = icmp eq i64 %.sroa.16.0120293, %.sroa.27.2.lcssa.i54
  br i1 %.not47.i56, label %.outer._crit_edge.thread, label %.lr.ph45.i57

.lr.ph45.i57:                                     ; preds = %bb.ai
  %i.kc = getelementptr [16 x i8], ptr %.sroa.0.0.ph127, i64 %.sroa.27.2.lcssa.i54 ; 3 uses
  %.neg400 = add i64 %.sroa.27.2.lcssa.i54, 1
  %xtraiter395 = and i64 %i.kb, 1
  %i.kd = icmp eq i64 %.sroa.16.0120293, %.neg400
  br i1 %i.kd, label %.epil.preheader388, label %.lr.ph45.i57.new

.lr.ph45.i57.new:                                 ; preds = %.lr.ph45.i57
  %unroll_iter398 = and i64 %i.kb, -2
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.lr.ph45.i57.new
  %.sroa.07.043.i58 = phi i64 [ 0, %.lr.ph45.i57.new ], [ %i.kh, %bb.aj ] ; 5 uses
  %niter399 = phi i64 [ 0, %.lr.ph45.i57.new ], [ %niter399.next.1, %bb.aj ]
  %i.ke = xor i64 %.sroa.07.043.i58, -1
  %i.kf = getelementptr [16 x i8], ptr %i.id, i64 %i.ke
  %i.kg = getelementptr [16 x i8], ptr %i.kc, i64 %.sroa.07.043.i58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kg, ptr noundef nonnull align 8 dereferenceable(16) %i.kf, i64 16, i1 false), !alias.scope !922
  %i.kh = add nuw i64 %.sroa.07.043.i58, 2        ; 2 uses
  %i.ki = xor i64 %.sroa.07.043.i58, -2
  %i.kj = getelementptr [16 x i8], ptr %i.id, i64 %i.ki
  %i.kk = getelementptr [16 x i8], ptr %i.kc, i64 %.sroa.07.043.i58
  %i.kl = getelementptr i8, ptr %i.kk, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kl, ptr noundef nonnull align 8 dereferenceable(16) %i.kj, i64 16, i1 false), !alias.scope !922
  %niter399.next.1 = add i64 %niter399, 2         ; 2 uses
  %niter399.ncmp.1 = icmp eq i64 %niter399.next.1, %unroll_iter398
  br i1 %niter399.ncmp.1, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionThciENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB2z_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.unr-lcssa, label %bb.aj

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionThciENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB2z_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.unr-lcssa: ; preds = %bb.aj
  %lcmp.mod396.not = icmp eq i64 %xtraiter395, 0
  br i1 %lcmp.mod396.not, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionThciENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB2z_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0E0ECs2JiOgHzbbc7_10tokenizers.exit, label %.epil.preheader388

.epil.preheader388:                               ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionThciENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB2z_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.unr-lcssa, %.lr.ph45.i57
  %.sroa.07.043.i58.epil.init = phi i64 [ 0, %.lr.ph45.i57 ], [ %i.kh, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionThciENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB2z_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod397 = trunc i64 %i.kb to i1
  call void @llvm.assume(i1 %lcmp.mod397)
  %i.km = xor i64 %.sroa.07.043.i58.epil.init, -1
  %i.kn = getelementptr [16 x i8], ptr %i.id, i64 %i.km
  %i.ko = getelementptr [16 x i8], ptr %i.kc, i64 %.sroa.07.043.i58.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ko, ptr noundef nonnull align 8 dereferenceable(16) %i.kn, i64 16, i1 false), !alias.scope !922
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionThciENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB2z_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0E0ECs2JiOgHzbbc7_10tokenizers.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionThciENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB2z_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0E0ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionThciENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB2z_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0E0ECs2JiOgHzbbc7_10tokenizers.exit.unr-lcssa, %.epil.preheader388
  %i.kp = icmp ugt i64 %.sroa.27.2.lcssa.i54, %.sroa.16.0120293
  br i1 %i.kp, label %bb.ak, label %.outer, !prof !11

.outer._crit_edge.thread:                         ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB2s_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit

.outer:                                           ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionThciENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB2z_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0E0ECs2JiOgHzbbc7_10tokenizers.exit
  %i.kq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %.sroa.27.2.lcssa.i54 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.kr = icmp ult i64 %i.kb, 33
  br i1 %i.kr, label %.outer._crit_edge, label %.lr.ph

bb.ak:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionThciENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB2z_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0E0ECs2JiOgHzbbc7_10tokenizers.exit
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i54, i64 noundef %.sroa.16.0120293, i64 noundef %.sroa.16.0120293, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #22
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB20_14UnigramTrainer21prune_sentence_piecess1_0E0EB26_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(16) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.0.0.ph194 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %i.he, %.outer ] ; 22 uses
  %.sroa.16.0.ph193 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.gp, %.outer ] ; 2 uses
end_hunk_3
begin_hunk_4_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB20_14UnigramTrainer21prune_sentence_piecess1_0E0EB26_:bb.a
bb.ah:                                            ; preds = %bb.an, %bb.af
  %.sroa.43.0.i = phi ptr [ %i.cq, %bb.af ], [ %i.ed, %bb.an ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.af ], [ %.sroa.27.2.lcssa.i, %bb.an ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph194, %bb.af ], [ %i.ef, %bb.an ] ; 3 uses
  %.sroa.0.0.i38 = phi i64 [ %.sroa.0.0.i37, %bb.af ], [ %.sroa.16.0187550, %bb.an ] ; 3 uses
  %i.cr = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i38, i64 3)
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph194, i64 %i.cr ; 2 uses
  %i.ct = icmp ult ptr %.sroa.9.0.i, %i.cs
  br i1 %i.ct, label %.lr.ph.i40, label %._crit_edge.i

.lr.ph.i40:                                       ; preds = %bb.ah, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit34.i
  %.sroa.9.146.i = phi ptr [ %i.dr, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit34.i ], [ %.sroa.9.0.i, %bb.ah ] ; 9 uses
  %.sroa.27.145.i = phi i64 [ %i.dq, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit34.i ], [ %.sroa.27.0.i, %bb.ah ] ; 2 uses
  %.sroa.43.144.i = phi ptr [ %i.dn, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit34.i ], [ %.sroa.43.0.i, %bb.ah ] ; 4 uses
  %i.cu = getelementptr i8, ptr %.sroa.9.146.i, i64 8
  %.val22.i = load double, ptr %i.cu, align 8, !alias.scope !997, !noalias !998, !noundef !3 ; 2 uses
  %.val23.i = load double, ptr %i.co, align 8, !alias.scope !997, !noalias !998, !noundef !3 ; 8 uses
  %brmerge.not.i.i41 = fcmp uno double %.val23.i, %.val22.i
  br i1 %brmerge.not.i.i41, label %bb.ai, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit.i42, !prof !7

bb.ai:                                            ; preds = %.lr.ph.i40
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22, !noalias !999
  unreachable

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit.i42: ; preds = %.lr.ph.i40
  %.mux.i.i43 = fcmp olt double %.val23.i, %.val22.i ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %.sroa.43.144.i, i64 -16
  %.sroa.01.0.i.i = select i1 %.mux.i.i43, ptr %2, ptr %i.cv
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.145.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.146.i, i64 16, i1 false), !alias.scope !999, !noalias !1000
  %i.cx = getelementptr i8, ptr %.sroa.9.146.i, i64 24
  %.val20.i = load double, ptr %i.cx, align 8, !alias.scope !997, !noalias !998, !noundef !3 ; 2 uses
  %brmerge.not.i24.i = fcmp uno double %.val23.i, %.val20.i
  br i1 %brmerge.not.i24.i, label %bb.aj, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit26.i, !prof !7

bb.aj:                                            ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit.i42
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22, !noalias !999
  unreachable

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit26.i: ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit.i42
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.9.146.i, i64 16
  %i.cz = zext i1 %.mux.i.i43 to i64
  %i.da = add i64 %.sroa.27.145.i, %i.cz          ; 2 uses
  %.mux.i25.i = fcmp olt double %.val23.i, %.val20.i ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %.sroa.43.144.i, i64 -32
  %.sroa.01.0.i27.i = select i1 %.mux.i25.i, ptr %2, ptr %i.db
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i27.i, i64 %i.da
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i64 16, i1 false), !alias.scope !999, !noalias !1001
  %i.dd = getelementptr i8, ptr %.sroa.9.146.i, i64 40
  %.val18.i = load double, ptr %i.dd, align 8, !alias.scope !997, !noalias !998, !noundef !3 ; 2 uses
  %brmerge.not.i28.i = fcmp uno double %.val23.i, %.val18.i
  br i1 %brmerge.not.i28.i, label %bb.ak, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit30.i, !prof !7

bb.ak:                                            ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit26.i
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22, !noalias !999
  unreachable

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit30.i: ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit26.i
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.9.146.i, i64 32
  %i.df = zext i1 %.mux.i25.i to i64
  %i.dg = add i64 %i.da, %i.df                    ; 2 uses
  %.mux.i29.i = fcmp olt double %.val23.i, %.val18.i ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %.sroa.43.144.i, i64 -48
  %.sroa.01.0.i31.i = select i1 %.mux.i29.i, ptr %2, ptr %i.dh
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i31.i, i64 %i.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false), !alias.scope !999, !noalias !1002
  %i.dj = getelementptr i8, ptr %.sroa.9.146.i, i64 56
  %.val16.i = load double, ptr %i.dj, align 8, !alias.scope !997, !noalias !998, !noundef !3 ; 2 uses
  %brmerge.not.i32.i = fcmp uno double %.val23.i, %.val16.i
  br i1 %brmerge.not.i32.i, label %bb.al, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit34.i, !prof !7

bb.al:                                            ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit30.i
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22, !noalias !999
  unreachable

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit34.i: ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit30.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.9.146.i, i64 48
  %i.dl = zext i1 %.mux.i29.i to i64
  %i.dm = add i64 %i.dg, %i.dl                    ; 2 uses
  %.mux.i33.i = fcmp olt double %.val23.i, %.val16.i ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.43.144.i, i64 -64 ; 3 uses
  %.sroa.01.0.i35.i = select i1 %.mux.i33.i, ptr %2, ptr %i.dn
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i35.i, i64 %i.dm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.do, ptr noundef nonnull align 8 dereferenceable(16) %i.dk, i64 16, i1 false), !alias.scope !999, !noalias !1003
  %i.dp = zext i1 %.mux.i33.i to i64
  %i.dq = add i64 %i.dm, %i.dp                    ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.9.146.i, i64 64 ; 3 uses
  %i.ds = icmp ult ptr %i.dr, %i.cs
  br i1 %i.ds, label %.lr.ph.i40, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit34.i, %bb.ah
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.ah ], [ %i.dn, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit34.i ] ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.ah ], [ %i.dq, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit34.i ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.ah ], [ %i.dr, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit34.i ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph194, i64 %.sroa.0.0.i38 ; 2 uses
  %i.du = icmp ult ptr %.sroa.9.1.lcssa.i, %i.dt
  br i1 %i.du, label %.lr.ph53.i, label %._crit_edge54.i

._crit_edge54.i:                                  ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.dx, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit38.i ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.ea, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit38.i ] ; 14 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.eb, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit38.i ] ; 2 uses
  %i.dv = icmp eq i64 %.sroa.0.0.i38, %.sroa.16.0187550
  br i1 %i.dv, label %bb.ao, label %bb.an

.lr.ph53.i:                                       ; preds = %._crit_edge.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit38.i
  %.sroa.9.251.i = phi ptr [ %i.eb, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.27.250.i = phi i64 [ %i.ea, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.249.i = phi ptr [ %i.dx, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %i.dw = getelementptr i8, ptr %.sroa.9.251.i, i64 8
  %.val.i = load double, ptr %i.dw, align 8, !alias.scope !997, !noalias !998, !noundef !3 ; 2 uses
  %.val15.i = load double, ptr %i.co, align 8, !alias.scope !997, !noalias !998, !noundef !3 ; 2 uses
  %brmerge.not.i36.i = fcmp uno double %.val15.i, %.val.i
  br i1 %brmerge.not.i36.i, label %bb.am, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit38.i, !prof !7

bb.am:                                            ; preds = %.lr.ph53.i
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22, !noalias !999
  unreachable

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit38.i: ; preds = %.lr.ph53.i
  %.mux.i37.i = fcmp olt double %.val15.i, %.val.i ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %.sroa.43.249.i, i64 -16 ; 3 uses
  %.sroa.01.0.i39.i = select i1 %.mux.i37.i, ptr %2, ptr %i.dx
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i39.i, i64 %.sroa.27.250.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.251.i, i64 16, i1 false), !alias.scope !999, !noalias !1004
  %i.dz = zext i1 %.mux.i37.i to i64
  %i.ea = add i64 %.sroa.27.250.i, %i.dz          ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.9.251.i, i64 16 ; 3 uses
  %i.ec = icmp ult ptr %i.eb, %i.dt
  br i1 %i.ec, label %.lr.ph53.i, label %._crit_edge54.i

bb.an:                                            ; preds = %._crit_edge54.i
  %i.ed = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -16 ; 2 uses
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.ed, i64 %.sroa.27.2.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i, i64 16, i1 false), !alias.scope !999, !noalias !1005
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 16
  br label %bb.ah

bb.ao:                                            ; preds = %._crit_edge54.i
  %i.eg = shl i64 %.sroa.27.2.lcssa.i, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph194, ptr nonnull align 8 %2, i64 %i.eg, i1 false), !alias.scope !999
  %i.eh = sub i64 %.sroa.16.0187550, %.sroa.27.2.lcssa.i ; 4 uses
  %.not62.i = icmp eq i64 %.sroa.16.0187550, %.sroa.27.2.lcssa.i
  br i1 %.not62.i, label %.loopexit, label %.lr.ph60.i

.lr.ph60.i:                                       ; preds = %bb.ao
  %i.ei = getelementptr [16 x i8], ptr %.sroa.0.0.ph194, i64 %.sroa.27.2.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.27.2.lcssa.i, 1
  %xtraiter = and i64 %i.eh, 1
  %i.ej = icmp eq i64 %.sroa.16.0187550, %.neg
  br i1 %i.ej, label %.epil.preheader, label %.lr.ph60.i.new

.lr.ph60.i.new:                                   ; preds = %.lr.ph60.i
  %unroll_iter = and i64 %i.eh, -2
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.lr.ph60.i.new
  %.sroa.07.058.i = phi i64 [ 0, %.lr.ph60.i.new ], [ %i.en, %bb.ap ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph60.i.new ], [ %niter.next.1, %bb.ap ]
  %i.ek = xor i64 %.sroa.07.058.i, -1
  %i.el = getelementptr [16 x i8], ptr %i.cq, i64 %i.ek
  %i.em = getelementptr [16 x i8], ptr %i.ei, i64 %.sroa.07.058.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, ptr noundef nonnull align 8 dereferenceable(16) %i.el, i64 16, i1 false), !alias.scope !999
  %i.en = add nuw i64 %.sroa.07.058.i, 2          ; 2 uses
  %i.eo = xor i64 %.sroa.07.058.i, -2
  %i.ep = getelementptr [16 x i8], ptr %i.cq, i64 %i.eo
  %i.eq = getelementptr [16 x i8], ptr %i.ei, i64 %.sroa.07.058.i
  %i.er = getelementptr i8, ptr %i.eq, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.er, ptr noundef nonnull align 8 dereferenceable(16) %i.ep, i64 16, i1 false), !alias.scope !999
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.ap

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.ap
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph60.i
  %.sroa.07.058.i.epil.init = phi i64 [ 0, %.lr.ph60.i ], [ %i.en, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod719 = trunc i64 %i.eh to i1
  call void @llvm.assume(i1 %lcmp.mod719)
  %i.es = xor i64 %.sroa.07.058.i.epil.init, -1
  %i.et = getelementptr [16 x i8], ptr %i.cq, i64 %i.es
  %i.eu = getelementptr [16 x i8], ptr %i.ei, i64 %.sroa.07.058.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, ptr noundef nonnull align 8 dereferenceable(16) %i.et, i64 16, i1 false), !alias.scope !999
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.ao
  %i.ev = icmp eq i64 %.sroa.27.2.lcssa.i, 0
  br i1 %i.ev, label %.thread, label %bb.aq

bb.aq:                                            ; preds = %.loopexit
  %.not.i44 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0187550
  br i1 %.not.i44, label %bb.ar, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit, !prof !11

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22, !noalias !1006
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.aq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph194) ]
  %7 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph194, i64 %.sroa.27.2.lcssa.i
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB20_14UnigramTrainer21prune_sentence_piecess1_0E0EB26_(ptr noalias noundef nonnull align 8 %7, i64 noundef %i.eh, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.bz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ew = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.ew, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  %.not90 = icmp samesign ult i64 %3, %.sroa.16.0187550
  br i1 %.not90, label %bb.at, label %bb.as, !prof !8

bb.as:                                            ; preds = %.thread
  %i.ex = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0187550 ; 4 uses
  br label %bb.au

bb.at:                                            ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.au:                                            ; preds = %bb.ba, %bb.as
  %.sroa.43.0.i47 = phi ptr [ %i.ex, %bb.as ], [ %i.gk, %bb.ba ] ; 2 uses
  %.sroa.27.0.i48 = phi i64 [ 0, %bb.as ], [ %i.gm, %bb.ba ] ; 2 uses
  %.sroa.9.0.i49 = phi ptr [ %.sroa.0.0.ph194, %bb.as ], [ %i.gn, %bb.ba ] ; 3 uses
  %.sroa.0.0.i50 = phi i64 [ %.sroa.0.0.i37, %bb.as ], [ %.sroa.16.0187550, %bb.ba ] ; 3 uses
  %i.ey = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i50, i64 3)
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph194, i64 %i.ey ; 2 uses
  %i.fa = icmp ult ptr %.sroa.9.0.i49, %i.ez
  br i1 %i.fa, label %.lr.ph.i70, label %._crit_edge.i51

.lr.ph.i70:                                       ; preds = %bb.au, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit34.i
  %.sroa.9.146.i71 = phi ptr [ %i.fy, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit34.i ], [ %.sroa.9.0.i49, %bb.au ] ; 9 uses
  %.sroa.27.145.i72 = phi i64 [ %i.fx, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit34.i ], [ %.sroa.27.0.i48, %bb.au ] ; 2 uses
  %.sroa.43.144.i73 = phi ptr [ %i.fu, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit34.i ], [ %.sroa.43.0.i47, %bb.au ] ; 4 uses
  %i.fb = getelementptr i8, ptr %.sroa.9.146.i71, i64 8
  %.val22.i74 = load double, ptr %i.fb, align 8, !alias.scope !1007, !noalias !1008, !noundef !3 ; 2 uses
  %.val23.i75 = load double, ptr %i.co, align 8, !alias.scope !1007, !noalias !1008, !noundef !3 ; 8 uses
  %brmerge.not.i.i.i76 = fcmp uno double %.val22.i74, %.val23.i75
  br i1 %brmerge.not.i.i.i76, label %bb.av, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit.i, !prof !7

bb.av:                                            ; preds = %.lr.ph.i70
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22, !noalias !1009
  unreachable

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit.i: ; preds = %.lr.ph.i70
  %.mux.i.i.i77 = fcmp uge double %.val22.i74, %.val23.i75 ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %.sroa.43.144.i73, i64 -16
  %.sroa.01.0.i.i78 = select i1 %.mux.i.i.i77, ptr %2, ptr %i.fc
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i78, i64 %.sroa.27.145.i72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.146.i71, i64 16, i1 false), !alias.scope !1009, !noalias !1010
  %i.fe = getelementptr i8, ptr %.sroa.9.146.i71, i64 24
  %.val20.i79 = load double, ptr %i.fe, align 8, !alias.scope !1007, !noalias !1008, !noundef !3 ; 2 uses
  %brmerge.not.i.i24.i = fcmp uno double %.val20.i79, %.val23.i75
  br i1 %brmerge.not.i.i24.i, label %bb.aw, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit26.i, !prof !7

bb.aw:                                            ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit.i
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22, !noalias !1009
  unreachable

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit26.i: ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.9.146.i71, i64 16
  %i.fg = zext i1 %.mux.i.i.i77 to i64
  %i.fh = add i64 %.sroa.27.145.i72, %i.fg        ; 2 uses
  %.mux.i.i25.i = fcmp uge double %.val20.i79, %.val23.i75 ; 2 uses
  %i.fi = getelementptr inbounds i8, ptr %.sroa.43.144.i73, i64 -32
  %.sroa.01.0.i27.i80 = select i1 %.mux.i.i25.i, ptr %2, ptr %i.fi
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i27.i80, i64 %i.fh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fj, ptr noundef nonnull align 8 dereferenceable(16) %i.ff, i64 16, i1 false), !alias.scope !1009, !noalias !1011
  %i.fk = getelementptr i8, ptr %.sroa.9.146.i71, i64 40
  %.val18.i81 = load double, ptr %i.fk, align 8, !alias.scope !1007, !noalias !1008, !noundef !3 ; 2 uses
  %brmerge.not.i.i28.i = fcmp uno double %.val18.i81, %.val23.i75
  br i1 %brmerge.not.i.i28.i, label %bb.ax, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit30.i, !prof !7

bb.ax:                                            ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit26.i
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22, !noalias !1009
  unreachable

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit30.i: ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit26.i
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.9.146.i71, i64 32
  %i.fm = zext i1 %.mux.i.i25.i to i64
  %i.fn = add i64 %i.fh, %i.fm                    ; 2 uses
  %.mux.i.i29.i = fcmp uge double %.val18.i81, %.val23.i75 ; 2 uses
  %i.fo = getelementptr inbounds i8, ptr %.sroa.43.144.i73, i64 -48
  %.sroa.01.0.i31.i82 = select i1 %.mux.i.i29.i, ptr %2, ptr %i.fo
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i31.i82, i64 %i.fn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, ptr noundef nonnull align 8 dereferenceable(16) %i.fl, i64 16, i1 false), !alias.scope !1009, !noalias !1012
  %i.fq = getelementptr i8, ptr %.sroa.9.146.i71, i64 56
  %.val16.i83 = load double, ptr %i.fq, align 8, !alias.scope !1007, !noalias !1008, !noundef !3 ; 2 uses
  %brmerge.not.i.i32.i84 = fcmp uno double %.val16.i83, %.val23.i75
  br i1 %brmerge.not.i.i32.i84, label %bb.ay, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit34.i, !prof !7

bb.ay:                                            ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit30.i
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22, !noalias !1009
  unreachable

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit34.i: ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit30.i
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.9.146.i71, i64 48
  %i.fs = zext i1 %.mux.i.i29.i to i64
  %i.ft = add i64 %i.fn, %i.fs                    ; 2 uses
  %.mux.i.i33.i = fcmp uge double %.val16.i83, %.val23.i75 ; 2 uses
  %i.fu = getelementptr inbounds i8, ptr %.sroa.43.144.i73, i64 -64 ; 3 uses
  %.sroa.01.0.i35.i85 = select i1 %.mux.i.i33.i, ptr %2, ptr %i.fu
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i35.i85, i64 %i.ft
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fv, ptr noundef nonnull align 8 dereferenceable(16) %i.fr, i64 16, i1 false), !alias.scope !1009, !noalias !1013
  %i.fw = zext i1 %.mux.i.i33.i to i64
  %i.fx = add i64 %i.ft, %i.fw                    ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.9.146.i71, i64 64 ; 3 uses
  %i.fz = icmp ult ptr %i.fy, %i.ez
  br i1 %i.fz, label %.lr.ph.i70, label %._crit_edge.i51

._crit_edge.i51:                                  ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit34.i, %bb.au
  %.sroa.43.1.lcssa.i52 = phi ptr [ %.sroa.43.0.i47, %bb.au ], [ %i.fu, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit34.i ] ; 2 uses
  %.sroa.27.1.lcssa.i53 = phi i64 [ %.sroa.27.0.i48, %bb.au ], [ %i.fx, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit34.i ] ; 2 uses
  %.sroa.9.1.lcssa.i54 = phi ptr [ %.sroa.9.0.i49, %bb.au ], [ %i.fy, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit34.i ] ; 3 uses
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph194, i64 %.sroa.0.0.i50 ; 2 uses
  %i.gb = icmp ult ptr %.sroa.9.1.lcssa.i54, %i.ga
  br i1 %i.gb, label %.lr.ph53.i63, label %._crit_edge54.i55

._crit_edge54.i55:                                ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit38.i, %._crit_edge.i51
  %.sroa.43.2.lcssa.i56 = phi ptr [ %.sroa.43.1.lcssa.i52, %._crit_edge.i51 ], [ %i.ge, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit38.i ]
  %.sroa.27.2.lcssa.i57 = phi i64 [ %.sroa.27.1.lcssa.i53, %._crit_edge.i51 ], [ %i.gh, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit38.i ] ; 10 uses
  %.sroa.9.2.lcssa.i58 = phi ptr [ %.sroa.9.1.lcssa.i54, %._crit_edge.i51 ], [ %i.gi, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit38.i ] ; 2 uses
  %i.gc = icmp eq i64 %.sroa.0.0.i50, %.sroa.16.0187550
  br i1 %i.gc, label %bb.bb, label %bb.ba

.lr.ph53.i63:                                     ; preds = %._crit_edge.i51, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit38.i
  %.sroa.9.251.i64 = phi ptr [ %i.gi, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit38.i ], [ %.sroa.9.1.lcssa.i54, %._crit_edge.i51 ] ; 3 uses
  %.sroa.27.250.i65 = phi i64 [ %i.gh, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit38.i ], [ %.sroa.27.1.lcssa.i53, %._crit_edge.i51 ] ; 2 uses
  %.sroa.43.249.i66 = phi ptr [ %i.ge, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit38.i ], [ %.sroa.43.1.lcssa.i52, %._crit_edge.i51 ]
  %i.gd = getelementptr i8, ptr %.sroa.9.251.i64, i64 8
  %.val.i67 = load double, ptr %i.gd, align 8, !alias.scope !1007, !noalias !1008, !noundef !3 ; 2 uses
  %.val15.i68 = load double, ptr %i.co, align 8, !alias.scope !1007, !noalias !1008, !noundef !3 ; 2 uses
  %brmerge.not.i.i36.i = fcmp uno double %.val.i67, %.val15.i68
  br i1 %brmerge.not.i.i36.i, label %bb.az, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit38.i, !prof !7

bb.az:                                            ; preds = %.lr.ph53.i63
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22, !noalias !1009
  unreachable

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB22_14UnigramTrainer21prune_sentence_piecess1_0E0E0B28_.exit38.i: ; preds = %.lr.ph53.i63
  %.mux.i.i37.i = fcmp uge double %.val.i67, %.val15.i68 ; 2 uses
  %i.ge = getelementptr inbounds i8, ptr %.sroa.43.249.i66, i64 -16 ; 3 uses
  %.sroa.01.0.i39.i69 = select i1 %.mux.i.i37.i, ptr %2, ptr %i.ge
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i39.i69, i64 %.sroa.27.250.i65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gf, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.251.i64, i64 16, i1 false), !alias.scope !1009, !noalias !1014
  %i.gg = zext i1 %.mux.i.i37.i to i64
  %i.gh = add i64 %.sroa.27.250.i65, %i.gg        ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.9.251.i64, i64 16 ; 3 uses
  %i.gj = icmp ult ptr %i.gi, %i.ga
  br i1 %i.gj, label %.lr.ph53.i63, label %._crit_edge54.i55

bb.ba:                                            ; preds = %._crit_edge54.i55
  %i.gk = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i56, i64 -16
  %i.gl = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gl, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i58, i64 16, i1 false), !alias.scope !1009, !noalias !1015
  %i.gm = add i64 %.sroa.27.2.lcssa.i57, 1
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i58, i64 16
  br label %bb.au

bb.bb:                                            ; preds = %._crit_edge54.i55
  %i.go = shl i64 %.sroa.27.2.lcssa.i57, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph194, ptr nonnull align 8 %2, i64 %i.go, i1 false), !alias.scope !1009
  %i.gp = sub i64 %.sroa.16.0187550, %.sroa.27.2.lcssa.i57 ; 6 uses
  %.not62.i59 = icmp eq i64 %.sroa.16.0187550, %.sroa.27.2.lcssa.i57
  br i1 %.not62.i59, label %.outer._crit_edge.thread, label %.lr.ph60.i60

.lr.ph60.i60:                                     ; preds = %bb.bb
  %i.gq = getelementptr [16 x i8], ptr %.sroa.0.0.ph194, i64 %.sroa.27.2.lcssa.i57 ; 3 uses
  %.neg740 = add i64 %.sroa.27.2.lcssa.i57, 1
  %xtraiter735 = and i64 %i.gp, 1
  %i.gr = icmp eq i64 %.sroa.16.0187550, %.neg740
  br i1 %i.gr, label %.epil.preheader720, label %.lr.ph60.i60.new

.lr.ph60.i60.new:                                 ; preds = %.lr.ph60.i60
  %unroll_iter738 = and i64 %i.gp, -2
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %.lr.ph60.i60.new
  %.sroa.07.058.i61 = phi i64 [ 0, %.lr.ph60.i60.new ], [ %i.gv, %bb.bc ] ; 5 uses
  %niter739 = phi i64 [ 0, %.lr.ph60.i60.new ], [ %niter739.next.1, %bb.bc ]
  %i.gs = xor i64 %.sroa.07.058.i61, -1
  %i.gt = getelementptr [16 x i8], ptr %i.ex, i64 %i.gs
  %i.gu = getelementptr [16 x i8], ptr %i.gq, i64 %.sroa.07.058.i61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gu, ptr noundef nonnull align 8 dereferenceable(16) %i.gt, i64 16, i1 false), !alias.scope !1009
  %i.gv = add nuw i64 %.sroa.07.058.i61, 2        ; 2 uses
  %i.gw = xor i64 %.sroa.07.058.i61, -2
  %i.gx = getelementptr [16 x i8], ptr %i.ex, i64 %i.gw
  %i.gy = getelementptr [16 x i8], ptr %i.gq, i64 %.sroa.07.058.i61
  %i.gz = getelementptr i8, ptr %i.gy, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, ptr noundef nonnull align 8 dereferenceable(16) %i.gx, i64 16, i1 false), !alias.scope !1009
  %niter739.next.1 = add i64 %niter739, 2         ; 2 uses
  %niter739.ncmp.1 = icmp eq i64 %niter739.next.1, %unroll_iter738
  br i1 %niter739.ncmp.1, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTjdENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2u_14UnigramTrainer21prune_sentence_piecess1_0E0E0EB2A_.exit.unr-lcssa, label %bb.bc

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTjdENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2u_14UnigramTrainer21prune_sentence_piecess1_0E0E0EB2A_.exit.unr-lcssa: ; preds = %bb.bc
  %lcmp.mod736.not = icmp eq i64 %xtraiter735, 0
  br i1 %lcmp.mod736.not, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTjdENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2u_14UnigramTrainer21prune_sentence_piecess1_0E0E0EB2A_.exit, label %.epil.preheader720

.epil.preheader720:                               ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTjdENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2u_14UnigramTrainer21prune_sentence_piecess1_0E0E0EB2A_.exit.unr-lcssa, %.lr.ph60.i60
  %.sroa.07.058.i61.epil.init = phi i64 [ 0, %.lr.ph60.i60 ], [ %i.gv, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTjdENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2u_14UnigramTrainer21prune_sentence_piecess1_0E0E0EB2A_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod737 = trunc i64 %i.gp to i1
end_hunk_4
begin_hunk_5_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseB15_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2w_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2C_:bb.a

bb.ad:                                            ; preds = %bb.ab
  %.sroa.55.0..sroa_idx.i18.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %.sroa.55.0.copyload.i19.i = load i64, ptr %.sroa.55.0..sroa_idx.i18.i, align 8, !alias.scope !1233, !noalias !1231
  %.sroa.44.0..sroa_idx.i20.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.sroa.44.0.copyload.i21.i = load ptr, ptr %.sroa.44.0..sroa_idx.i20.i, align 8, !alias.scope !1233, !noalias !1231, !nonnull !3, !noundef !3
  %.sroa.5.0..sroa_idx.i22.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %.sroa.5.0.copyload.i23.i = load i64, ptr %.sroa.5.0..sroa_idx.i22.i, align 8, !alias.scope !1234, !noalias !1232
  %.sroa.41.0..sroa_idx.i24.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.41.0.copyload.i25.i = load ptr, ptr %.sroa.41.0..sroa_idx.i24.i, align 8, !alias.scope !1234, !noalias !1232, !nonnull !3, !noundef !3
  %i.cu = call noundef i8 @_RNvXs5_NtNtCs4NRVxsYgnAr_4core5slice3cmpcNtB5_10SliceChain11chaining_ltCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.44.0.copyload.i21.i, i64 noundef range(i64 0, 2305843009213693952) %.sroa.55.0.copyload.i19.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.41.0.copyload.i25.i, i64 noundef range(i64 0, 2305843009213693952) %.sroa.5.0.copyload.i23.i), !noalias !1235
  %i.cv = icmp eq i8 %i.cu, 1
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit26.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit26.i: ; preds = %bb.ad, %bb.ac
  %.sroa.0.0.i.i.i17.i = phi i1 [ %i.ct, %bb.ac ], [ %i.cv, %bb.ad ]
  %i.cw = xor i1 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i17.i
  %..i.i = select i1 %i.cw, ptr %i.cg, ptr %i.cf
  br label %bb.ae

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyINtNtBa_3cmp7ReverseB1s_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2T_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2Z_.exit: ; preds = %.outer._crit_edge.thread, %bb.p, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.ae:                                            ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit26.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit14.i, %bb.v
  %.sroa.0.0.i.sink.i = phi ptr [ %i.ci, %bb.v ], [ %.sroa.0.0.ph128, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit14.i ], [ %..i.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit26.i ]
  %i.cx = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.cy = sub nuw i64 %i.cx, %i.c                 ; 2 uses
  %.sroa.0.0.i38 = udiv exact i64 %i.cy, 24       ; 3 uses
  %i.cz = icmp samesign ult i64 %.sroa.0.0.i38, %.sroa.16.0121283
  call void @llvm.assume(i1 %i.cz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph128, i64 %i.cy ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.da, i64 24, i1 false)
  br i1 %.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  %.sroa.0.0.copyload.i = load i32, ptr %.sroa.028.0.ph125, align 8, !alias.scope !1238, !noalias !1237 ; 2 uses
  %.sroa.02.0.copyload.i = load i32, ptr %i.da, align 8, !alias.scope !1239, !noalias !1236 ; 2 uses
  %i.db = icmp eq i32 %.sroa.02.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.db, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit, label %.split

.split:                                           ; preds = %bb.af
  %i.dc = icmp ult i32 %.sroa.02.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.dc, label %bb.ag, label %.thread

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit: ; preds = %bb.af
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !1239, !noalias !1236
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.sroa.44.0.copyload.i = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !1239, !noalias !1236, !nonnull !3, !noundef !3
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1238, !noalias !1237
  %.sroa.41.0.copyload.i = load ptr, ptr %.sroa.41.0..sroa_idx.i, align 8, !alias.scope !1238, !noalias !1237, !nonnull !3, !noundef !3
  %i.dd = call noundef i8 @_RNvXs5_NtNtCs4NRVxsYgnAr_4core5slice3cmpcNtB5_10SliceChain11chaining_ltCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.44.0.copyload.i, i64 noundef range(i64 0, 2305843009213693952) %.sroa.55.0.copyload.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.41.0.copyload.i, i64 noundef range(i64 0, 2305843009213693952) %.sroa.5.0.copyload.i), !noalias !1240
  %i.de = icmp eq i8 %i.dd, 1
  br i1 %i.de, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %.split, %bb.ae, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  call void @llvm.experimental.noalias.scope.decl(metadata !1242)
  %.not88 = icmp samesign ult i64 %3, %.sroa.16.0121283
  br i1 %.not88, label %bb.ai, label %bb.ah, !prof !8

bb.ah:                                            ; preds = %bb.ag
  %i.df = getelementptr [24 x i8], ptr %2, i64 %.sroa.16.0121283 ; 4 uses
  %.sroa.55.0..sroa_idx.i.i39 = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %.sroa.44.0..sroa_idx.i.i40 = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.trap()
  unreachable

bb.aj:                                            ; preds = %bb.an, %bb.ah
  %.sroa.19.0.i = phi ptr [ %i.df, %bb.ah ], [ %i.dt, %bb.an ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.ah ], [ %.sroa.11.1.lcssa.i, %bb.an ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph128, %bb.ah ], [ %i.dv, %bb.an ] ; 3 uses
  %.sroa.0.0.i41 = phi i64 [ %.sroa.0.0.i38, %bb.ah ], [ %.sroa.16.0121283, %bb.an ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph128, i64 %.sroa.0.0.i41 ; 2 uses
  %i.dh = icmp ult ptr %.sroa.5.0.i, %i.dg
  br i1 %i.dh, label %.lr.ph.i43, label %._crit_edge.i

.lr.ph.i43:                                       ; preds = %bb.aj
  %.sroa.02.0.copyload.i.i44 = load i32, ptr %i.da, align 8, !alias.scope !1243, !noalias !1244 ; 2 uses
  br label %bb.ak

._crit_edge.i:                                    ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i46, %bb.aj
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.aj ], [ %i.dn, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i46 ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.aj ], [ %i.dq, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i46 ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.aj ], [ %i.dr, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i46 ] ; 2 uses
  %i.di = icmp eq i64 %.sroa.0.0.i41, %.sroa.16.0121283
  br i1 %i.di, label %bb.ao, label %bb.an

bb.ak:                                            ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i46, %.lr.ph.i43
  %.sroa.5.111.i = phi ptr [ %.sroa.5.0.i, %.lr.ph.i43 ], [ %i.dr, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i46 ] ; 5 uses
  %.sroa.11.110.i = phi i64 [ %.sroa.11.0.i, %.lr.ph.i43 ], [ %i.dq, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i46 ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %.sroa.19.0.i, %.lr.ph.i43 ], [ %i.dn, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i46 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1245)
  call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  %.sroa.0.0.copyload.i.i45 = load i32, ptr %.sroa.5.111.i, align 8, !alias.scope !1247, !noalias !1248 ; 2 uses
  %i.dj = icmp eq i32 %.sroa.02.0.copyload.i.i44, %.sroa.0.0.copyload.i.i45
  br i1 %i.dj, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dk = icmp ult i32 %.sroa.02.0.copyload.i.i44, %.sroa.0.0.copyload.i.i45
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i46

bb.am:                                            ; preds = %bb.ak
  %.sroa.55.0.copyload.i.i48 = load i64, ptr %.sroa.55.0..sroa_idx.i.i39, align 8, !alias.scope !1243, !noalias !1244
  %.sroa.44.0.copyload.i.i49 = load ptr, ptr %.sroa.44.0..sroa_idx.i.i40, align 8, !alias.scope !1243, !noalias !1244, !nonnull !3, !noundef !3
  %.sroa.5.0..sroa_idx.i.i50 = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 16
  %.sroa.5.0.copyload.i.i51 = load i64, ptr %.sroa.5.0..sroa_idx.i.i50, align 8, !alias.scope !1247, !noalias !1248
  %.sroa.41.0..sroa_idx.i.i52 = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 8
  %.sroa.41.0.copyload.i.i53 = load ptr, ptr %.sroa.41.0..sroa_idx.i.i52, align 8, !alias.scope !1247, !noalias !1248, !nonnull !3, !noundef !3
  %i.dl = call noundef i8 @_RNvXs5_NtNtCs4NRVxsYgnAr_4core5slice3cmpcNtB5_10SliceChain11chaining_ltCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.44.0.copyload.i.i49, i64 noundef range(i64 0, 2305843009213693952) %.sroa.55.0.copyload.i.i48, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.41.0.copyload.i.i53, i64 noundef range(i64 0, 2305843009213693952) %.sroa.5.0.copyload.i.i51), !noalias !1249
  %i.dm = icmp eq i8 %i.dl, 1
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i46

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i46: ; preds = %bb.am, %bb.al
  %.sroa.0.0.i.i.i.i47 = phi i1 [ %i.dk, %bb.al ], [ %i.dm, %bb.am ] ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -24 ; 3 uses
  %.sroa.01.0.i.i = select i1 %.sroa.0.0.i.i.i.i47, ptr %2, ptr %i.dn
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.110.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.do, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.111.i, i64 24, i1 false), !alias.scope !1250, !noalias !1251
  %i.dp = zext i1 %.sroa.0.0.i.i.i.i47 to i64
  %i.dq = add i64 %.sroa.11.110.i, %i.dp          ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 24 ; 3 uses
  %i.ds = icmp ult ptr %i.dr, %i.dg
  br i1 %i.ds, label %bb.ak, label %._crit_edge.i

bb.an:                                            ; preds = %._crit_edge.i
  %i.dt = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -24 ; 2 uses
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.dt, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.du, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.1.lcssa.i, i64 24, i1 false), !alias.scope !1250, !noalias !1252
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 24
  br label %bb.aj

bb.ao:                                            ; preds = %._crit_edge.i
  %i.dw = mul i64 %.sroa.11.1.lcssa.i, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph128, ptr nonnull align 8 %2, i64 %i.dw, i1 false), !alias.scope !1250
  %i.dx = sub i64 %.sroa.16.0121283, %.sroa.11.1.lcssa.i ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.16.0121283, %.sroa.11.1.lcssa.i
  br i1 %.not18.i, label %.loopexit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.ao
  %i.dy = getelementptr [24 x i8], ptr %.sroa.0.0.ph128, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.dx, 1
  %i.dz = icmp eq i64 %.sroa.16.0121283, %.neg
  br i1 %i.dz, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.dx, -2
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.lr.ph16.i.new
  %.sroa.06.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.ed, %bb.ap ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.ap ]
  %i.ea = xor i64 %.sroa.06.014.i, -1
  %i.eb = getelementptr [24 x i8], ptr %i.df, i64 %i.ea
  %i.ec = getelementptr [24 x i8], ptr %i.dy, i64 %.sroa.06.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i64 24, i1 false), !alias.scope !1250
  %i.ed = add nuw i64 %.sroa.06.014.i, 2          ; 2 uses
  %i.ee = xor i64 %.sroa.06.014.i, -2
  %i.ef = getelementptr [24 x i8], ptr %i.df, i64 %i.ee
  %i.eg = getelementptr [24 x i8], ptr %i.dy, i64 %.sroa.06.014.i
  %i.eh = getelementptr i8, ptr %i.eg, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, ptr noundef nonnull align 8 dereferenceable(24) %i.ef, i64 24, i1 false), !alias.scope !1250
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, ptr noundef nonnull align 8 dereferenceable(24) %i.ej, i64 24, i1 false), !alias.scope !1250
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.ao
  %i.el = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.el, label %.thread, label %bb.aq

bb.aq:                                            ; preds = %.loopexit
  %.not.i54 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.0121283
  br i1 %.not.i54, label %bb.ar, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmRScE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit, !prof !11

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22, !noalias !1253
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmRScE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.aq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph128) ]
  %7 = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph128, i64 %.sroa.11.1.lcssa.i
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseB15_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2w_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2C_(ptr noalias noundef nonnull align 8 %7, i64 noundef %i.dx, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.em = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.em, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %.split, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !1254)
  call void @llvm.experimental.noalias.scope.decl(metadata !1255)
  %.not89 = icmp samesign ult i64 %3, %.sroa.16.0121283
  br i1 %.not89, label %bb.at, label %bb.as, !prof !8

bb.as:                                            ; preds = %.thread
  %i.en = getelementptr [24 x i8], ptr %2, i64 %.sroa.16.0121283 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i.i57 = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %.sroa.41.0..sroa_idx.i.i.i58 = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  br label %bb.au

bb.at:                                            ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.au:                                            ; preds = %bb.ay, %bb.as
  %.sroa.19.0.i59 = phi ptr [ %i.en, %bb.as ], [ %i.fc, %bb.ay ] ; 2 uses
  %.sroa.11.0.i60 = phi i64 [ 0, %bb.as ], [ %i.fe, %bb.ay ] ; 2 uses
  %.sroa.5.0.i61 = phi ptr [ %.sroa.0.0.ph128, %bb.as ], [ %i.ff, %bb.ay ] ; 3 uses
  %.sroa.0.0.i62 = phi i64 [ %.sroa.0.0.i38, %bb.as ], [ %.sroa.16.0121283, %bb.ay ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph128, i64 %.sroa.0.0.i62 ; 2 uses
  %i.ep = icmp ult ptr %.sroa.5.0.i61, %i.eo
  br i1 %i.ep, label %.lr.ph.i71, label %._crit_edge.i63

.lr.ph.i71:                                       ; preds = %bb.au
  %.sroa.0.0.copyload.i.i.i72 = load i32, ptr %i.da, align 8, !alias.scope !1256, !noalias !1257 ; 2 uses
  br label %bb.av

._crit_edge.i63:                                  ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyINtNtBc_3cmp7ReverseB17_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2y_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0B2E_.exit.i, %bb.au
  %.sroa.19.1.lcssa.i64 = phi ptr [ %.sroa.19.0.i59, %bb.au ], [ %i.ew, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyINtNtBc_3cmp7ReverseB17_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2y_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0B2E_.exit.i ]
  %.sroa.11.1.lcssa.i65 = phi i64 [ %.sroa.11.0.i60, %bb.au ], [ %i.ez, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyINtNtBc_3cmp7ReverseB17_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2y_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0B2E_.exit.i ] ; 10 uses
  %.sroa.5.1.lcssa.i66 = phi ptr [ %.sroa.5.0.i61, %bb.au ], [ %i.fa, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyINtNtBc_3cmp7ReverseB17_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2y_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0B2E_.exit.i ] ; 2 uses
  %i.eq = icmp eq i64 %.sroa.0.0.i62, %.sroa.16.0121283
  br i1 %i.eq, label %bb.az, label %bb.ay

bb.av:                                            ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyINtNtBc_3cmp7ReverseB17_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2y_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0B2E_.exit.i, %.lr.ph.i71
  %.sroa.5.111.i73 = phi ptr [ %.sroa.5.0.i61, %.lr.ph.i71 ], [ %i.fa, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyINtNtBc_3cmp7ReverseB17_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2y_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0B2E_.exit.i ] ; 5 uses
  %.sroa.11.110.i74 = phi i64 [ %.sroa.11.0.i60, %.lr.ph.i71 ], [ %i.ez, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyINtNtBc_3cmp7ReverseB17_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2y_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0B2E_.exit.i ] ; 2 uses
  %.sroa.19.19.i75 = phi ptr [ %.sroa.19.0.i59, %.lr.ph.i71 ], [ %i.ew, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyINtNtBc_3cmp7ReverseB17_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2y_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0B2E_.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1258)
  call void @llvm.experimental.noalias.scope.decl(metadata !1259)
  call void @llvm.experimental.noalias.scope.decl(metadata !1260)
  call void @llvm.experimental.noalias.scope.decl(metadata !1261)
  %.sroa.02.0.copyload.i.i.i76 = load i32, ptr %.sroa.5.111.i73, align 8, !alias.scope !1262, !noalias !1263 ; 2 uses
  %i.er = icmp eq i32 %.sroa.02.0.copyload.i.i.i76, %.sroa.0.0.copyload.i.i.i72
  br i1 %i.er, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.es = icmp ult i32 %.sroa.02.0.copyload.i.i.i76, %.sroa.0.0.copyload.i.i.i72
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyINtNtBc_3cmp7ReverseB17_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2y_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0B2E_.exit.i

bb.ax:                                            ; preds = %bb.av
  %.sroa.55.0..sroa_idx.i.i.i79 = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i73, i64 16
  %.sroa.55.0.copyload.i.i.i80 = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i79, align 8, !alias.scope !1262, !noalias !1263
  %.sroa.44.0..sroa_idx.i.i.i81 = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i73, i64 8
  %.sroa.44.0.copyload.i.i.i82 = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i81, align 8, !alias.scope !1262, !noalias !1263, !nonnull !3, !noundef !3
  %.sroa.5.0.copyload.i.i.i83 = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i57, align 8, !alias.scope !1256, !noalias !1257
  %.sroa.41.0.copyload.i.i.i84 = load ptr, ptr %.sroa.41.0..sroa_idx.i.i.i58, align 8, !alias.scope !1256, !noalias !1257, !nonnull !3, !noundef !3
  %i.et = call noundef i8 @_RNvXs5_NtNtCs4NRVxsYgnAr_4core5slice3cmpcNtB5_10SliceChain11chaining_ltCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.44.0.copyload.i.i.i82, i64 noundef range(i64 0, 2305843009213693952) %.sroa.55.0.copyload.i.i.i80, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.41.0.copyload.i.i.i84, i64 noundef range(i64 0, 2305843009213693952) %.sroa.5.0.copyload.i.i.i83), !noalias !1264
  %i.eu = icmp eq i8 %i.et, 1
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyINtNtBc_3cmp7ReverseB17_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2y_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0B2E_.exit.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyINtNtBc_3cmp7ReverseB17_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2y_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0B2E_.exit.i: ; preds = %bb.ax, %bb.aw
  %.sroa.0.0.i.i.i.i.i77 = phi i1 [ %i.es, %bb.aw ], [ %i.eu, %bb.ax ] ; 2 uses
  %i.ev = xor i1 %.sroa.0.0.i.i.i.i.i77, true
  %i.ew = getelementptr inbounds i8, ptr %.sroa.19.19.i75, i64 -24 ; 3 uses
  %.sroa.01.0.i.i78 = select i1 %.sroa.0.0.i.i.i.i.i77, ptr %i.ew, ptr %2
  %i.ex = getelementptr inbounds nuw [24 x i8], ptr %.sroa.01.0.i.i78, i64 %.sroa.11.110.i74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ex, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.111.i73, i64 24, i1 false), !alias.scope !1265, !noalias !1266
  %i.ey = zext i1 %i.ev to i64
  %i.ez = add i64 %.sroa.11.110.i74, %i.ey        ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i73, i64 24 ; 3 uses
  %i.fb = icmp ult ptr %i.fa, %i.eo
  br i1 %i.fb, label %bb.av, label %._crit_edge.i63

bb.ay:                                            ; preds = %._crit_edge.i63
  %i.fc = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i64, i64 -24
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fd, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.1.lcssa.i66, i64 24, i1 false), !alias.scope !1265, !noalias !1267
  %i.fe = add i64 %.sroa.11.1.lcssa.i65, 1
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i66, i64 24
  br label %bb.au

bb.az:                                            ; preds = %._crit_edge.i63
  %i.fg = mul i64 %.sroa.11.1.lcssa.i65, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph128, ptr nonnull align 8 %2, i64 %i.fg, i1 false), !alias.scope !1265
  %i.fh = sub i64 %.sroa.16.0121283, %.sroa.11.1.lcssa.i65 ; 6 uses
  %.not18.i67 = icmp eq i64 %.sroa.16.0121283, %.sroa.11.1.lcssa.i65
  br i1 %.not18.i67, label %.outer._crit_edge.thread, label %.lr.ph16.i68

.lr.ph16.i68:                                     ; preds = %bb.az
  %i.fi = getelementptr [24 x i8], ptr %.sroa.0.0.ph128, i64 %.sroa.11.1.lcssa.i65 ; 3 uses
  %.neg363 = add i64 %.sroa.11.1.lcssa.i65, 1
  %xtraiter358 = and i64 %i.fh, 1
  %i.fj = icmp eq i64 %.sroa.16.0121283, %.neg363
  br i1 %i.fj, label %.epil.preheader351, label %.lr.ph16.i68.new

.lr.ph16.i68.new:                                 ; preds = %.lr.ph16.i68
  %unroll_iter361 = and i64 %i.fh, -2
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %.lr.ph16.i68.new
  %.sroa.06.014.i69 = phi i64 [ 0, %.lr.ph16.i68.new ], [ %i.fn, %bb.ba ] ; 5 uses
  %niter362 = phi i64 [ 0, %.lr.ph16.i68.new ], [ %niter362.next.1, %bb.ba ]
  %i.fk = xor i64 %.sroa.06.014.i69, -1
  %i.fl = getelementptr [24 x i8], ptr %i.en, i64 %i.fk
  %i.fm = getelementptr [24 x i8], ptr %i.fi, i64 %.sroa.06.014.i69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fm, ptr noundef nonnull align 8 dereferenceable(24) %i.fl, i64 24, i1 false), !alias.scope !1265
  %i.fn = add nuw i64 %.sroa.06.014.i69, 2        ; 2 uses
  %i.fo = xor i64 %.sroa.06.014.i69, -2
  %i.fp = getelementptr [24 x i8], ptr %i.en, i64 %i.fo
  %i.fq = getelementptr [24 x i8], ptr %i.fi, i64 %.sroa.06.014.i69
  %i.fr = getelementptr i8, ptr %i.fq, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fr, ptr noundef nonnull align 8 dereferenceable(24) %i.fp, i64 24, i1 false), !alias.scope !1265
  %niter362.next.1 = add i64 %niter362, 2         ; 2 uses
  %niter362.ncmp.1 = icmp eq i64 %niter362.next.1, %unroll_iter361
  br i1 %niter362.ncmp.1, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmRScENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB30_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0EB36_.exit.unr-lcssa, label %bb.ba

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmRScENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB30_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0EB36_.exit.unr-lcssa: ; preds = %bb.ba
  %lcmp.mod359.not = icmp eq i64 %xtraiter358, 0
  br i1 %lcmp.mod359.not, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmRScENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB30_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0EB36_.exit, label %.epil.preheader351

.epil.preheader351:                               ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmRScENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB30_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0EB36_.exit.unr-lcssa, %.lr.ph16.i68
  %.sroa.06.014.i69.epil.init = phi i64 [ 0, %.lr.ph16.i68 ], [ %i.fn, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmRScENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB30_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0EB36_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod360 = trunc i64 %i.fh to i1
  call void @llvm.assume(i1 %lcmp.mod360)
  %i.fs = xor i64 %.sroa.06.014.i69.epil.init, -1
  %i.ft = getelementptr [24 x i8], ptr %i.en, i64 %i.fs
  %i.fu = getelementptr [24 x i8], ptr %i.fi, i64 %.sroa.06.014.i69.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fu, ptr noundef nonnull align 8 dereferenceable(24) %i.ft, i64 24, i1 false), !alias.scope !1265
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmRScENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB30_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0EB36_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmRScENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB30_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0EB36_.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmRScENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB30_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0EB36_.exit.unr-lcssa, %.epil.preheader351
  %i.fv = icmp ugt i64 %.sroa.11.1.lcssa.i65, %.sroa.16.0121283
  br i1 %i.fv, label %bb.bb, label %.outer, !prof !11

.outer._crit_edge.thread:                         ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyINtNtBa_3cmp7ReverseB1s_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2T_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2Z_.exit

.outer:                                           ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmRScENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB30_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0EB36_.exit
  %i.fw = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph128, i64 %.sroa.11.1.lcssa.i65 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fx = icmp ult i64 %i.fh, 33
  br i1 %i.fx, label %.outer._crit_edge, label %.lr.ph

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
  %.sroa.0.0.ph143 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %i.oq, %.outer ] ; 23 uses
  %.sroa.16.0.ph142 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.ob, %.outer ] ; 2 uses
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
  %.sroa.0.0.ph.lcssa133 = phi ptr [ %.sroa.0.0.ph143, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit ], [ %0, %bb.a ], [ %i.oq, %.outer ] ; 22 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit ], [ %1, %bb.a ], [ %i.ob, %.outer ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1326)
  call void @llvm.experimental.noalias.scope.decl(metadata !1327)
  %i.i = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyINtNtBa_3cmp7ReverseB1s_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2R_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2X_.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.j = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.k = icmp samesign ult i64 %3, %i.j
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = lshr i64 %.sroa.16.0.lcssa, 1            ; 12 uses
  %i.m = icmp samesign ugt i64 %.sroa.16.0.lcssa, 15
end_hunk_5
begin_hunk_6_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseB15_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2u_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2A_:bb.a
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.028.0.val = load i32, ptr %.sroa.028.0.ph140, align 4, !noundef !3 ; 2 uses
  %.sroa.028.0.val37 = load i32, ptr %i.f, align 4, !range !6, !noundef !3
  %i.ij = icmp eq i32 %i.ii, %.sroa.028.0.val
  %i.ik = icmp ult i32 %i.ii, %.sroa.028.0.val
  %i.il = icmp samesign ult i32 %i.ih, %.sroa.028.0.val37
  %.sroa.0.0.i.i.i = select i1 %i.ij, i1 %i.il, i1 %i.ik
  br i1 %.sroa.0.0.i.i.i, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.r, %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  call void @llvm.experimental.noalias.scope.decl(metadata !1339)
  %.not95 = icmp samesign ult i64 %3, %.sroa.16.0136314
  br i1 %.not95, label %bb.v, label %bb.u, !prof !8

bb.u:                                             ; preds = %bb.t
  %i.im = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0136314 ; 3 uses
  %i.in = insertelement <4 x i32> poison, i32 %i.ii, i64 0
  %i.io = shufflevector <4 x i32> %i.in, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ip = insertelement <4 x i32> poison, i32 %i.ih, i64 0
  %i.iq = shufflevector <4 x i32> %i.ip, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.x, %bb.u
  %.sroa.43.0.i = phi ptr [ %i.im, %bb.u ], [ %i.ks, %bb.x ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.u ], [ %.sroa.27.2.lcssa.i, %bb.x ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph143, %bb.u ], [ %i.kv, %bb.x ] ; 3 uses
  %.sroa.0.0.i40 = phi i64 [ %.sroa.0.0.i39, %bb.u ], [ %.sroa.16.0136314, %bb.x ] ; 3 uses
  %i.ir = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i40, i64 3)
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph143, i64 %i.ir ; 2 uses
  %i.it = icmp ult ptr %.sroa.9.0.i, %i.is
  br i1 %i.it, label %.lr.ph.i42, label %._crit_edge.i

.lr.ph.i42:                                       ; preds = %bb.w, %.lr.ph.i42
  %.sroa.9.131.i = phi ptr [ %i.kc, %.lr.ph.i42 ], [ %.sroa.9.0.i, %bb.w ] ; 6 uses
  %.sroa.27.130.i = phi i64 [ %i.kb, %.lr.ph.i42 ], [ %.sroa.27.0.i, %bb.w ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %i.jd, %.lr.ph.i42 ], [ %.sroa.43.0.i, %bb.w ] ; 4 uses
  %i.iu = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -8
  %i.iv = load i64, ptr %.sroa.9.131.i, align 4, !alias.scope !1338, !noalias !1340
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 8
  %i.ix = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16
  %i.iy = load i64, ptr %i.iw, align 4, !alias.scope !1338, !noalias !1341
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16
  %i.ja = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -24
  %i.jb = load i64, ptr %i.iz, align 4, !alias.scope !1338, !noalias !1342
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 24
  %i.jd = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32 ; 3 uses
  %i.je = load i64, ptr %i.jc, align 4, !alias.scope !1338, !noalias !1343
  %i.jf = load <8 x i32>, ptr %.sroa.9.131.i, align 4, !alias.scope !1338, !noalias !1339 ; 2 uses
  %i.jg = shufflevector <8 x i32> %i.jf, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.jh = icmp eq <4 x i32> %i.io, %i.jg
  %i.ji = icmp ult <4 x i32> %i.io, %i.jg
  %i.jj = shufflevector <8 x i32> %i.jf, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.jk = icmp samesign ult <4 x i32> %i.iq, %i.jj
  %i.jl = select <4 x i1> %i.jh, <4 x i1> %i.jk, <4 x i1> %i.ji ; 4 uses
  %i.jm = extractelement <4 x i1> %i.jl, i64 0    ; 2 uses
  %.sroa.01.0.i.i = select i1 %i.jm, ptr %2, ptr %i.iu
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i
  store i64 %i.iv, ptr %i.jn, align 4, !alias.scope !1339, !noalias !1344
  %i.jo = zext i1 %i.jm to i64
  %i.jp = add i64 %.sroa.27.130.i, %i.jo          ; 2 uses
  %i.jq = extractelement <4 x i1> %i.jl, i64 1    ; 2 uses
  %.sroa.01.0.i35.i = select i1 %i.jq, ptr %2, ptr %i.ix
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i35.i, i64 %i.jp
  store i64 %i.iy, ptr %i.jr, align 4, !alias.scope !1339, !noalias !1345
  %i.js = zext i1 %i.jq to i64
  %i.jt = add i64 %i.jp, %i.js                    ; 2 uses
  %i.ju = extractelement <4 x i1> %i.jl, i64 2    ; 2 uses
  %.sroa.01.0.i37.i = select i1 %i.ju, ptr %2, ptr %i.ja
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i37.i, i64 %i.jt
  store i64 %i.jb, ptr %i.jv, align 4, !alias.scope !1339, !noalias !1346
  %i.jw = zext i1 %i.ju to i64
  %i.jx = add i64 %i.jt, %i.jw                    ; 2 uses
  %i.jy = extractelement <4 x i1> %i.jl, i64 3    ; 2 uses
  %.sroa.01.0.i39.i = select i1 %i.jy, ptr %2, ptr %i.jd
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i39.i, i64 %i.jx
  store i64 %i.je, ptr %i.jz, align 4, !alias.scope !1339, !noalias !1347
  %i.ka = zext i1 %i.jy to i64
  %i.kb = add i64 %i.jx, %i.ka                    ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32 ; 3 uses
  %i.kd = icmp ult ptr %i.kc, %i.is
  br i1 %i.kd, label %.lr.ph.i42, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i42, %bb.w
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.w ], [ %i.jd, %.lr.ph.i42 ] ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.w ], [ %i.kb, %.lr.ph.i42 ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.w ], [ %i.kc, %.lr.ph.i42 ] ; 3 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph143, i64 %.sroa.0.0.i40 ; 2 uses
  %i.kf = icmp ult ptr %.sroa.9.1.lcssa.i, %i.ke
  br i1 %i.kf, label %.lr.ph38.i, label %._crit_edge39.i

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.kl, %.lr.ph38.i ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.kp, %.lr.ph38.i ] ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.kq, %.lr.ph38.i ] ; 2 uses
  %i.kg = icmp eq i64 %.sroa.0.0.i40, %.sroa.16.0136314
  br i1 %i.kg, label %bb.y, label %bb.x

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.kq, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.sroa.27.235.i = phi i64 [ %i.kp, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.kl, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %.val.i = load i32, ptr %.sroa.9.236.i, align 4, !alias.scope !1338, !noalias !1339, !noundef !3 ; 2 uses
  %i.kh = getelementptr i8, ptr %.sroa.9.236.i, i64 4
  %.val15.i = load i32, ptr %i.kh, align 4, !range !6, !alias.scope !1338, !noalias !1339, !noundef !3
  %i.ki = icmp eq i32 %i.ii, %.val.i
  %i.kj = icmp ult i32 %i.ii, %.val.i
  %i.kk = icmp samesign ult i32 %i.ih, %.val15.i
  %.sroa.0.0.i.i.i40.i = select i1 %i.ki, i1 %i.kk, i1 %i.kj ; 2 uses
  %i.kl = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -8 ; 3 uses
  %.sroa.01.0.i41.i = select i1 %.sroa.0.0.i.i.i40.i, ptr %2, ptr %i.kl
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i41.i, i64 %.sroa.27.235.i
  %i.kn = load i64, ptr %.sroa.9.236.i, align 4, !alias.scope !1338, !noalias !1348
  store i64 %i.kn, ptr %i.km, align 4, !alias.scope !1339, !noalias !1349
  %i.ko = zext i1 %.sroa.0.0.i.i.i40.i to i64
  %i.kp = add i64 %.sroa.27.235.i, %i.ko          ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 8 ; 3 uses
  %i.kr = icmp ult ptr %i.kq, %i.ke
  br i1 %i.kr, label %.lr.ph38.i, label %._crit_edge39.i

bb.x:                                             ; preds = %._crit_edge39.i
  %i.ks = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -8 ; 2 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %.sroa.27.2.lcssa.i
  %i.ku = load i64, ptr %.sroa.9.2.lcssa.i, align 4, !alias.scope !1338, !noalias !1350
  store i64 %i.ku, ptr %i.kt, align 4, !alias.scope !1339, !noalias !1351
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 8
  br label %bb.w

bb.y:                                             ; preds = %._crit_edge39.i
  %i.kw = shl i64 %.sroa.27.2.lcssa.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph143, ptr nonnull align 4 %2, i64 %i.kw, i1 false), !alias.scope !1352
  %i.kx = sub i64 %.sroa.16.0136314, %.sroa.27.2.lcssa.i ; 5 uses
  %.not47.i = icmp eq i64 %.sroa.16.0136314, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.y
  %i.ky = getelementptr [8 x i8], ptr %.sroa.0.0.ph143, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check333 = icmp ult i64 %i.kx, 4
  br i1 %min.iters.check333, label %scalar.ph332.preheader, label %vector.ph334

vector.ph334:                                     ; preds = %.lr.ph45.i
  %n.vec335 = and i64 %i.kx, -4                   ; 3 uses
  br label %vector.body336

vector.body336:                                   ; preds = %vector.body336, %vector.ph334
  %index337 = phi i64 [ 0, %vector.ph334 ], [ %index.next342, %vector.body336 ] ; 3 uses
  %i.kz = xor i64 %index337, -1
  %i.la = getelementptr [8 x i8], ptr %i.im, i64 %i.kz ; 2 uses
  %i.lb = getelementptr [8 x i8], ptr %i.ky, i64 %index337 ; 2 uses
  %i.lc = getelementptr i8, ptr %i.la, i64 -8
  %i.ld = getelementptr i8, ptr %i.la, i64 -24
  %wide.load338 = load <2 x i64>, ptr %i.lc, align 4, !alias.scope !1339, !noalias !1338
  %wide.load339 = load <2 x i64>, ptr %i.ld, align 4, !alias.scope !1339, !noalias !1338
  %reverse340 = shufflevector <2 x i64> %wide.load338, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse341 = shufflevector <2 x i64> %wide.load339, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.le = getelementptr i8, ptr %i.lb, i64 16
  store <2 x i64> %reverse340, ptr %i.lb, align 4, !alias.scope !1338, !noalias !1339
  store <2 x i64> %reverse341, ptr %i.le, align 4, !alias.scope !1338, !noalias !1339
  %index.next342 = add nuw i64 %index337, 4       ; 2 uses
  %i.lf = icmp eq i64 %index.next342, %n.vec335
  br i1 %i.lf, label %middle.block343, label %vector.body336, !llvm.loop !1304

middle.block343:                                  ; preds = %vector.body336
  %cmp.n344 = icmp eq i64 %i.kx, %n.vec335
  br i1 %cmp.n344, label %.loopexit, label %scalar.ph332.preheader

scalar.ph332.preheader:                           ; preds = %.lr.ph45.i, %middle.block343
  %.sroa.07.043.i.ph = phi i64 [ 0, %.lr.ph45.i ], [ %n.vec335, %middle.block343 ]
  br label %scalar.ph332

scalar.ph332:                                     ; preds = %scalar.ph332.preheader, %scalar.ph332
  %.sroa.07.043.i = phi i64 [ %i.lg, %scalar.ph332 ], [ %.sroa.07.043.i.ph, %scalar.ph332.preheader ] ; 3 uses
  %i.lg = add nuw i64 %.sroa.07.043.i, 1          ; 2 uses
  %i.lh = xor i64 %.sroa.07.043.i, -1
  %i.li = getelementptr [8 x i8], ptr %i.im, i64 %i.lh
  %i.lj = getelementptr [8 x i8], ptr %i.ky, i64 %.sroa.07.043.i
  %i.lk = load i64, ptr %i.li, align 4, !alias.scope !1339, !noalias !1338
  store i64 %i.lk, ptr %i.lj, align 4, !alias.scope !1338, !noalias !1339
  %exitcond.not.i41 = icmp eq i64 %i.lg, %i.kx
  br i1 %exitcond.not.i41, label %.loopexit, label %scalar.ph332, !llvm.loop !1305

.loopexit:                                        ; preds = %scalar.ph332, %middle.block343, %bb.y
  %i.ll = icmp eq i64 %.sroa.27.2.lcssa.i, 0
  br i1 %i.ll, label %.thread, label %bb.z

bb.z:                                             ; preds = %.loopexit
  %.not.i44 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0136314
  br i1 %.not.i44, label %bb.aa, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit, !prof !11

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22, !noalias !1353
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph143) ]
  %7 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph143, i64 %.sroa.27.2.lcssa.i
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseB15_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2u_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2A_(ptr noalias noundef nonnull align 4 %7, i64 noundef %i.kx, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.hj, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.lm = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.lm, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.s, %.loopexit
  %i.ln = getelementptr inbounds nuw i8, ptr %i.if, i64 4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1354)
  call void @llvm.experimental.noalias.scope.decl(metadata !1355)
  %.not96 = icmp samesign ult i64 %3, %.sroa.16.0136314
  br i1 %.not96, label %bb.ac, label %bb.ab, !prof !8

bb.ab:                                            ; preds = %.thread
  %i.lo = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0136314 ; 3 uses
  br label %bb.ad

bb.ac:                                            ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.ad:                                            ; preds = %bb.af, %bb.ab
  %.sroa.43.0.i47 = phi ptr [ %i.lo, %bb.ab ], [ %i.nv, %bb.af ] ; 2 uses
  %.sroa.27.0.i48 = phi i64 [ 0, %bb.ab ], [ %i.ny, %bb.af ] ; 2 uses
  %.sroa.9.0.i49 = phi ptr [ %.sroa.0.0.ph143, %bb.ab ], [ %i.nz, %bb.af ] ; 3 uses
  %.sroa.0.0.i50 = phi i64 [ %.sroa.0.0.i39, %bb.ab ], [ %.sroa.16.0136314, %bb.af ] ; 3 uses
  %i.lp = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i50, i64 3)
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph143, i64 %i.lp ; 2 uses
  %i.lr = icmp ult ptr %.sroa.9.0.i49, %i.lq
  br i1 %i.lr, label %.lr.ph.i72, label %._crit_edge.i51

.lr.ph.i72:                                       ; preds = %bb.ad
  %.val32.i73 = load i32, ptr %i.if, align 4, !alias.scope !1354, !noalias !1355, !noundef !3 ; 8 uses
  %.val33.i79 = load i32, ptr %i.ln, align 4, !range !6, !alias.scope !1354, !noalias !1355, !noundef !3 ; 4 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.i72
  %.sroa.9.131.i74 = phi ptr [ %.sroa.9.0.i49, %.lr.ph.i72 ], [ %i.nf, %bb.ae ] ; 10 uses
  %.sroa.27.130.i75 = phi i64 [ %.sroa.27.0.i48, %.lr.ph.i72 ], [ %i.ne, %bb.ae ] ; 2 uses
  %.sroa.43.129.i76 = phi ptr [ %.sroa.43.0.i47, %.lr.ph.i72 ], [ %i.na, %bb.ae ] ; 4 uses
  %.val30.i77 = load i32, ptr %.sroa.9.131.i74, align 4, !alias.scope !1354, !noalias !1355, !noundef !3 ; 2 uses
  %i.ls = getelementptr i8, ptr %.sroa.9.131.i74, i64 4
  %.val31.i78 = load i32, ptr %i.ls, align 4, !range !6, !alias.scope !1354, !noalias !1355, !noundef !3
  %i.lt = icmp eq i32 %.val30.i77, %.val32.i73
  %i.lu = icmp uge i32 %.val30.i77, %.val32.i73
  %i.lv = icmp samesign uge i32 %.val31.i78, %.val33.i79
  %.sroa.0.0.i.i.i.i.i80 = select i1 %i.lt, i1 %i.lv, i1 %i.lu ; 2 uses
  %i.lw = getelementptr inbounds i8, ptr %.sroa.43.129.i76, i64 -8
  %.sroa.01.0.i.i81 = select i1 %.sroa.0.0.i.i.i.i.i80, ptr %2, ptr %i.lw
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i81, i64 %.sroa.27.130.i75
  %i.ly = load i64, ptr %.sroa.9.131.i74, align 4, !alias.scope !1354, !noalias !1356
  store i64 %i.ly, ptr %i.lx, align 4, !alias.scope !1355, !noalias !1357
  %i.lz = zext i1 %.sroa.0.0.i.i.i.i.i80 to i64
  %i.ma = add i64 %.sroa.27.130.i75, %i.lz        ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i74, i64 8 ; 2 uses
  %.val26.i82 = load i32, ptr %i.mb, align 4, !alias.scope !1354, !noalias !1355, !noundef !3 ; 2 uses
  %i.mc = getelementptr i8, ptr %.sroa.9.131.i74, i64 12
  %.val27.i83 = load i32, ptr %i.mc, align 4, !range !6, !alias.scope !1354, !noalias !1355, !noundef !3
  %i.md = icmp eq i32 %.val26.i82, %.val32.i73
  %i.me = icmp uge i32 %.val26.i82, %.val32.i73
  %i.mf = icmp samesign uge i32 %.val27.i83, %.val33.i79
  %.sroa.0.0.i.i.i.i34.i84 = select i1 %i.md, i1 %i.mf, i1 %i.me ; 2 uses
  %i.mg = getelementptr inbounds i8, ptr %.sroa.43.129.i76, i64 -16
  %.sroa.01.0.i35.i85 = select i1 %.sroa.0.0.i.i.i.i34.i84, ptr %2, ptr %i.mg
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i35.i85, i64 %i.ma
  %i.mi = load i64, ptr %i.mb, align 4, !alias.scope !1354, !noalias !1358
  store i64 %i.mi, ptr %i.mh, align 4, !alias.scope !1355, !noalias !1359
  %i.mj = zext i1 %.sroa.0.0.i.i.i.i34.i84 to i64
  %i.mk = add i64 %i.ma, %i.mj                    ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i74, i64 16 ; 2 uses
  %.val22.i86 = load i32, ptr %i.ml, align 4, !alias.scope !1354, !noalias !1355, !noundef !3 ; 2 uses
  %i.mm = getelementptr i8, ptr %.sroa.9.131.i74, i64 20
  %.val23.i87 = load i32, ptr %i.mm, align 4, !range !6, !alias.scope !1354, !noalias !1355, !noundef !3
  %i.mn = icmp eq i32 %.val22.i86, %.val32.i73
  %i.mo = icmp uge i32 %.val22.i86, %.val32.i73
  %i.mp = icmp samesign uge i32 %.val23.i87, %.val33.i79
  %.sroa.0.0.i.i.i.i36.i = select i1 %i.mn, i1 %i.mp, i1 %i.mo ; 2 uses
  %i.mq = getelementptr inbounds i8, ptr %.sroa.43.129.i76, i64 -24
  %.sroa.01.0.i37.i88 = select i1 %.sroa.0.0.i.i.i.i36.i, ptr %2, ptr %i.mq
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i37.i88, i64 %i.mk
  %i.ms = load i64, ptr %i.ml, align 4, !alias.scope !1354, !noalias !1360
  store i64 %i.ms, ptr %i.mr, align 4, !alias.scope !1355, !noalias !1361
  %i.mt = zext i1 %.sroa.0.0.i.i.i.i36.i to i64
  %i.mu = add i64 %i.mk, %i.mt                    ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i74, i64 24 ; 2 uses
  %.val18.i89 = load i32, ptr %i.mv, align 4, !alias.scope !1354, !noalias !1355, !noundef !3 ; 2 uses
  %i.mw = getelementptr i8, ptr %.sroa.9.131.i74, i64 28
  %.val19.i90 = load i32, ptr %i.mw, align 4, !range !6, !alias.scope !1354, !noalias !1355, !noundef !3
  %i.mx = icmp eq i32 %.val18.i89, %.val32.i73
  %i.my = icmp uge i32 %.val18.i89, %.val32.i73
  %i.mz = icmp samesign uge i32 %.val19.i90, %.val33.i79
  %.sroa.0.0.i.i.i.i38.i = select i1 %i.mx, i1 %i.mz, i1 %i.my ; 2 uses
  %i.na = getelementptr inbounds i8, ptr %.sroa.43.129.i76, i64 -32 ; 3 uses
  %.sroa.01.0.i39.i91 = select i1 %.sroa.0.0.i.i.i.i38.i, ptr %2, ptr %i.na
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i39.i91, i64 %i.mu
  %i.nc = load i64, ptr %i.mv, align 4, !alias.scope !1354, !noalias !1362
  store i64 %i.nc, ptr %i.nb, align 4, !alias.scope !1355, !noalias !1363
  %i.nd = zext i1 %.sroa.0.0.i.i.i.i38.i to i64
  %i.ne = add i64 %i.mu, %i.nd                    ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i74, i64 32 ; 3 uses
  %i.ng = icmp ult ptr %i.nf, %i.lq
  br i1 %i.ng, label %bb.ae, label %._crit_edge.i51

._crit_edge.i51:                                  ; preds = %bb.ae, %bb.ad
  %.sroa.43.1.lcssa.i52 = phi ptr [ %.sroa.43.0.i47, %bb.ad ], [ %i.na, %bb.ae ] ; 2 uses
  %.sroa.27.1.lcssa.i53 = phi i64 [ %.sroa.27.0.i48, %bb.ad ], [ %i.ne, %bb.ae ] ; 2 uses
  %.sroa.9.1.lcssa.i54 = phi ptr [ %.sroa.9.0.i49, %bb.ad ], [ %i.nf, %bb.ae ] ; 3 uses
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph143, i64 %.sroa.0.0.i50 ; 2 uses
  %i.ni = icmp ult ptr %.sroa.9.1.lcssa.i54, %i.nh
  br i1 %i.ni, label %.lr.ph38.i63.preheader, label %._crit_edge39.i55

.lr.ph38.i63.preheader:                           ; preds = %._crit_edge.i51
  %.val16.i69 = load i32, ptr %i.if, align 4, !alias.scope !1354, !noalias !1355, !noundef !3 ; 2 uses
  %.val17.i70 = load i32, ptr %i.ln, align 4, !range !6, !alias.scope !1354, !noalias !1355, !noundef !3
  br label %.lr.ph38.i63

._crit_edge39.i55:                                ; preds = %.lr.ph38.i63, %._crit_edge.i51
  %.sroa.43.2.lcssa.i56 = phi ptr [ %.sroa.43.1.lcssa.i52, %._crit_edge.i51 ], [ %i.no, %.lr.ph38.i63 ]
  %.sroa.27.2.lcssa.i57 = phi i64 [ %.sroa.27.1.lcssa.i53, %._crit_edge.i51 ], [ %i.ns, %.lr.ph38.i63 ] ; 9 uses
  %.sroa.9.2.lcssa.i58 = phi ptr [ %.sroa.9.1.lcssa.i54, %._crit_edge.i51 ], [ %i.nt, %.lr.ph38.i63 ] ; 2 uses
  %i.nj = icmp eq i64 %.sroa.0.0.i50, %.sroa.16.0136314
  br i1 %i.nj, label %bb.ag, label %bb.af

.lr.ph38.i63:                                     ; preds = %.lr.ph38.i63.preheader, %.lr.ph38.i63
  %.sroa.9.236.i64 = phi ptr [ %i.nt, %.lr.ph38.i63 ], [ %.sroa.9.1.lcssa.i54, %.lr.ph38.i63.preheader ] ; 4 uses
  %.sroa.27.235.i65 = phi i64 [ %i.ns, %.lr.ph38.i63 ], [ %.sroa.27.1.lcssa.i53, %.lr.ph38.i63.preheader ] ; 2 uses
  %.sroa.43.234.i66 = phi ptr [ %i.no, %.lr.ph38.i63 ], [ %.sroa.43.1.lcssa.i52, %.lr.ph38.i63.preheader ]
  %.val.i67 = load i32, ptr %.sroa.9.236.i64, align 4, !alias.scope !1354, !noalias !1355, !noundef !3 ; 2 uses
  %i.nk = getelementptr i8, ptr %.sroa.9.236.i64, i64 4
  %.val15.i68 = load i32, ptr %i.nk, align 4, !range !6, !alias.scope !1354, !noalias !1355, !noundef !3
  %i.nl = icmp eq i32 %.val.i67, %.val16.i69
  %i.nm = icmp uge i32 %.val.i67, %.val16.i69
  %i.nn = icmp samesign uge i32 %.val15.i68, %.val17.i70
  %.sroa.0.0.i.i.i.i40.i = select i1 %i.nl, i1 %i.nn, i1 %i.nm ; 2 uses
  %i.no = getelementptr inbounds i8, ptr %.sroa.43.234.i66, i64 -8 ; 3 uses
  %.sroa.01.0.i41.i71 = select i1 %.sroa.0.0.i.i.i.i40.i, ptr %2, ptr %i.no
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i41.i71, i64 %.sroa.27.235.i65
  %i.nq = load i64, ptr %.sroa.9.236.i64, align 4, !alias.scope !1354, !noalias !1364
  store i64 %i.nq, ptr %i.np, align 4, !alias.scope !1355, !noalias !1365
  %i.nr = zext i1 %.sroa.0.0.i.i.i.i40.i to i64
  %i.ns = add i64 %.sroa.27.235.i65, %i.nr        ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i64, i64 8 ; 3 uses
  %i.nu = icmp ult ptr %i.nt, %i.nh
  br i1 %i.nu, label %.lr.ph38.i63, label %._crit_edge39.i55

bb.af:                                            ; preds = %._crit_edge39.i55
  %i.nv = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i56, i64 -8
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i57
  %i.nx = load i64, ptr %.sroa.9.2.lcssa.i58, align 4, !alias.scope !1354, !noalias !1366
  store i64 %i.nx, ptr %i.nw, align 4, !alias.scope !1355, !noalias !1367
  %i.ny = add i64 %.sroa.27.2.lcssa.i57, 1
  %i.nz = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i58, i64 8
  br label %bb.ad

bb.ag:                                            ; preds = %._crit_edge39.i55
  %i.oa = shl i64 %.sroa.27.2.lcssa.i57, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph143, ptr nonnull align 4 %2, i64 %i.oa, i1 false), !alias.scope !1368
  %i.ob = sub i64 %.sroa.16.0136314, %.sroa.27.2.lcssa.i57 ; 7 uses
  %.not47.i59 = icmp eq i64 %.sroa.16.0136314, %.sroa.27.2.lcssa.i57
  br i1 %.not47.i59, label %.outer._crit_edge.thread, label %.lr.ph45.i60

.lr.ph45.i60:                                     ; preds = %bb.ag
  %i.oc = getelementptr [8 x i8], ptr %.sroa.0.0.ph143, i64 %.sroa.27.2.lcssa.i57 ; 2 uses
  %min.iters.check = icmp ult i64 %i.ob, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph45.i60
  %n.vec = and i64 %i.ob, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.od = xor i64 %index, -1
  %i.oe = getelementptr [8 x i8], ptr %i.lo, i64 %i.od ; 2 uses
  %i.of = getelementptr [8 x i8], ptr %i.oc, i64 %index ; 2 uses
  %i.og = getelementptr i8, ptr %i.oe, i64 -8
  %i.oh = getelementptr i8, ptr %i.oe, i64 -24
  %wide.load = load <2 x i64>, ptr %i.og, align 4, !alias.scope !1355, !noalias !1354
  %wide.load330 = load <2 x i64>, ptr %i.oh, align 4, !alias.scope !1355, !noalias !1354
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse331 = shufflevector <2 x i64> %wide.load330, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.oi = getelementptr i8, ptr %i.of, i64 16
  store <2 x i64> %reverse, ptr %i.of, align 4, !alias.scope !1354, !noalias !1355
  store <2 x i64> %reverse331, ptr %i.oi, align 4, !alias.scope !1354, !noalias !1355
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.oj = icmp eq i64 %index.next, %n.vec
  br i1 %i.oj, label %middle.block, label %vector.body, !llvm.loop !1324

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ob, %n.vec
  br i1 %cmp.n, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmcENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2Y_14UnigramTrainer25make_seed_sentence_piecess0_0E0E0EB34_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph45.i60, %middle.block
  %.sroa.07.043.i61.ph = phi i64 [ 0, %.lr.ph45.i60 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.07.043.i61 = phi i64 [ %i.ok, %scalar.ph ], [ %.sroa.07.043.i61.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ok = add nuw i64 %.sroa.07.043.i61, 1        ; 2 uses
  %i.ol = xor i64 %.sroa.07.043.i61, -1
  %i.om = getelementptr [8 x i8], ptr %i.lo, i64 %i.ol
end_hunk_6

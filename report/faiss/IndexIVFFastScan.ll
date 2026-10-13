Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexIVFFastScan?download=true
inline.NumInlined: 1899
inline.NumDeleted: 771
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEElNS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_T0_T1_":bb.a
  %i.au = sdiv i64 %i.at, 2
  %i.av = icmp sgt i64 %i.ar, 24
  br i1 %i.av, label %.lr.ph.i.i.i22.i, label %._crit_edge.i.i.i13.i

.lr.ph.i.i.i22.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i22.i
  %.045.i.i.i23.i = phi i64 [ %spec.select.i.i.i26.i, %.lr.ph.i.i.i22.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.aw = shl i64 %.045.i.i.i23.i, 1              ; 2 uses
  %i.ax = add i64 %i.aw, 2                        ; 2 uses
  %i.ay = getelementptr inbounds [12 x i8], ptr %0, i64 %i.ax
  %i.az = or disjoint i64 %i.aw, 1                ; 2 uses
  %i.ba = getelementptr inbounds [12 x i8], ptr %0, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ay, i64 4
  %.val2.i.i.i.i24.i = load i32, ptr %i.bb, align 4, !tbaa !158
  %i.bc = getelementptr i8, ptr %i.ba, i64 4
  %.val3.i.i.i.i25.i = load i32, ptr %i.bc, align 4, !tbaa !158
  %i.bd = icmp slt i32 %.val2.i.i.i.i24.i, %.val3.i.i.i.i25.i
  %spec.select.i.i.i26.i = select i1 %i.bd, i64 %i.az, i64 %i.ax ; 4 uses
  %i.be = getelementptr inbounds [12 x i8], ptr %0, i64 %spec.select.i.i.i26.i
  %i.bf = getelementptr inbounds [12 x i8], ptr %0, i64 %.045.i.i.i23.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bf, ptr noundef nonnull align 4 dereferenceable(12) %i.be, i64 12, i1 false), !tbaa.struct !146
  %i.bg = icmp slt i64 %spec.select.i.i.i26.i, %i.au
  br i1 %i.bg, label %.lr.ph.i.i.i22.i, label %._crit_edge.i.i.i13.i, !llvm.loop !331

._crit_edge.i.i.i13.i:                            ; preds = %.lr.ph.i.i.i22.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i14.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i26.i, %.lr.ph.i.i.i22.i ] ; 5 uses
  %i.bh = and i64 %i.as, 1
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i13.i
  %i.bj = add nsw i64 %i.as, -2
  %i.bk = ashr exact i64 %i.bj, 1
  %i.bl = icmp eq i64 %.0.lcssa.i.i.i14.i, %i.bk
  br i1 %i.bl, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bm = shl nuw nsw i64 %.0.lcssa.i.i.i14.i, 1
  %i.bn = or disjoint i64 %i.bm, 1                ; 2 uses
  %i.bo = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.bn
  %i.bp = getelementptr inbounds [12 x i8], ptr %0, i64 %.0.lcssa.i.i.i14.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bp, ptr noundef nonnull align 4 dereferenceable(12) %i.bo, i64 12, i1 false), !tbaa.struct !146
  br label %.lr.ph.i.i.preheader.i.i.i

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i13.i
  %.not.i.i15.i = icmp eq i64 %.0.lcssa.i.i.i14.i, 0
  br i1 %.not.i.i15.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_SU_RT0_.exit.i.i", label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.h, %.thread.i.i.i
  %.1.i10.i.i.i = phi i64 [ %i.bn, %.thread.i.i.i ], [ %.0.lcssa.i.i.i14.i, %bb.h ]
  %.sroa.03.sroa.2.0.extract.trunc.i.i11.in.i.i.i = lshr i64 %.sroa.05.0.copyload.i.i10.i, 32
  %.sroa.03.sroa.2.0.extract.trunc.i.i11.i.i.i = trunc nuw i64 %.sroa.03.sroa.2.0.extract.trunc.i.i11.in.i.i.i to i32
  br label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %bb.i, %.lr.ph.i.i.preheader.i.i.i
  %.07.i.i.i.i17.i = phi i64 [ %.0108.i.i34.i.i.i, %bb.i ], [ %.1.i10.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 3 uses
  %.0108.in.i.i.i.i18.i = add nsw i64 %.07.i.i.i.i17.i, -1
  %.0108.i.i34.i.i.i = lshr i64 %.0108.in.i.i.i.i18.i, 1 ; 3 uses
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.0108.i.i34.i.i.i ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 4
  %.val2.i.i.i.i.i19.i = load i32, ptr %i.br, align 4, !tbaa !158
  %i.bs = icmp slt i32 %.val2.i.i.i.i.i19.i, %.sroa.03.sroa.2.0.extract.trunc.i.i11.i.i.i
  br i1 %i.bs, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_SU_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i16.i
  %i.bt = getelementptr inbounds [12 x i8], ptr %0, i64 %.07.i.i.i.i17.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bt, ptr noundef nonnull align 4 dereferenceable(12) %i.bq, i64 12, i1 false), !tbaa.struct !146
  %.not5.i.i.i = icmp eq i64 %.0108.i.i34.i.i.i, 0
  br i1 %.not5.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_SU_RT0_.exit.i.i", label %.lr.ph.i.i.i.i16.i, !llvm.loop !332

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_SU_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i16.i, %bb.h
  %.0.lcssa.i.i.i.i20.i = phi i64 [ 0, %bb.h ], [ %.07.i.i.i.i17.i, %.lr.ph.i.i.i.i16.i ], [ 0, %bb.i ]
  %i.bu = getelementptr inbounds [12 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i20.i ; 2 uses
  store i64 %.sroa.05.0.copyload.i.i10.i, ptr %i.bu, align 4, !tbaa !100
  %.sroa.3.0..sroa.0.0..val14.sroa_idx.i.i.i.i21.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i32 %.sroa.4.0.copyload.i.i12.i, ptr %.sroa.3.0..sroa.0.0..val14.sroa_idx.i.i.i.i21.i, align 4, !tbaa !100
  %i.bv = icmp sgt i64 %i.ar, 12
  br i1 %i.bv, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_SU_T0_.exit", !llvm.loop !334

.lr.ph39:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2438 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02537 = phi i64 [ %i.bw, %bb.b ], [ %2, %.lr.ph ]
  %.fr57.i.i2636 = phi i64 [ %.fr57.i.i, %bb.b ], [ %.fr57.i.i23, %.lr.ph ]
  %i.bw = add nsw i64 %.02537, -1                 ; 3 uses
  %i.bx = udiv i64 %.fr57.i.i2636, 24
  %i.by = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.bx ; 5 uses
  %i.bz = getelementptr inbounds i8, ptr %storemerge2438, i64 -12 ; 4 uses
  %.val2.i.i.i = load i32, ptr %i.f, align 4, !tbaa !158 ; 3 uses
  %i.ca = getelementptr i8, ptr %i.by, i64 4
  %.val3.i.i.i = load i32, ptr %i.ca, align 4, !tbaa !158 ; 3 uses
  %i.cb = icmp slt i32 %.val2.i.i.i, %.val3.i.i.i
  %i.cc = getelementptr i8, ptr %storemerge2438, i64 -8
  %.val3.i27.i.i = load i32, ptr %i.cc, align 4, !tbaa !158 ; 4 uses
  br i1 %i.cb, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph39
  %i.cd = icmp slt i32 %.val3.i.i.i, %.val3.i27.i.i
  br i1 %i.cd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload = load <3 x i32>, ptr %0, align 4, !tbaa !100
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.by, i64 12, i1 false), !tbaa.struct !146
  store <3 x i32> %.sroa.0.0.copyload, ptr %i.by, align 4, !tbaa !100
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_SU_SU_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.ce = icmp slt i32 %.val2.i.i.i, %.val3.i27.i.i
  br i1 %i.ce, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.045.0.copyload = load <3 x i32>, ptr %0, align 4, !tbaa !100
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.bz, i64 12, i1 false), !tbaa.struct !146
  store <3 x i32> %.sroa.045.0.copyload, ptr %i.bz, align 4, !tbaa !100
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_SU_SU_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %.sroa.047.0.copyload = load <3 x i32>, ptr %0, align 4, !tbaa !100
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !146
  store <3 x i32> %.sroa.047.0.copyload, ptr %i.e, align 4, !tbaa !100
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_SU_SU_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph39
  %i.cf = icmp slt i32 %.val2.i.i.i, %.val3.i27.i.i
  br i1 %i.cf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.049.0.copyload = load <3 x i32>, ptr %0, align 4, !tbaa !100
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !146
  store <3 x i32> %.sroa.049.0.copyload, ptr %i.e, align 4, !tbaa !100
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_SU_SU_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.cg = icmp slt i32 %.val3.i.i.i, %.val3.i27.i.i
  br i1 %i.cg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.051.0.copyload = load <3 x i32>, ptr %0, align 4, !tbaa !100
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.bz, i64 12, i1 false), !tbaa.struct !146
  store <3 x i32> %.sroa.051.0.copyload, ptr %i.bz, align 4, !tbaa !100
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_SU_SU_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  %.sroa.053.0.copyload = load <3 x i32>, ptr %0, align 4, !tbaa !100
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.by, i64 12, i1 false), !tbaa.struct !146
  store <3 x i32> %.sroa.053.0.copyload, ptr %i.by, align 4, !tbaa !100
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_SU_SU_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_SU_SU_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_SU_SU_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_SU_SU_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_SU_SU_T0_.exit.i.preheader", %bb.v
  %.sroa.014.0.i.i = phi ptr [ %i.cj, %bb.v ], [ %i.e, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_SU_SU_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2438, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_SU_SU_T0_.exit.i.preheader" ]
  %.val3.i.i18.i = load i32, ptr %i.g, align 4, !tbaa !158 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_SU_SU_T0_.exit.i"
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_SU_SU_T0_.exit.i" ], [ %i.cj, %bb.t ] ; 9 uses
  %i.ch = getelementptr i8, ptr %.sroa.014.1.i.i, i64 4
  %.val2.i.i19.i = load i32, ptr %i.ch, align 4, !tbaa !158
  %i.ci = icmp slt i32 %.val2.i.i19.i, %.val3.i.i18.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 12 ; 2 uses
  br i1 %i.ci, label %bb.t, label %.preheader.i.i, !llvm.loop !335

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -12 ; 5 uses
  %i.ck = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %.val3.i12.i.i = load i32, ptr %i.ck, align 4, !tbaa !158
  %i.cl = icmp slt i32 %.val3.i.i18.i, %.val3.i12.i.i
  br i1 %i.cl, label %.preheader.i.i, label %bb.u, !llvm.loop !336

bb.u:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.014.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEET_SU_SU_T0_.exit"

bb.v:                                             ; preds = %bb.u
  %.sroa.055.0.copyload = load <3 x i32>, ptr %.sroa.014.1.i.i, align 4, !tbaa !100
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.014.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.1.i.i, i64 12, i1 false), !tbaa.struct !146
  store <3 x i32> %.sroa.055.0.copyload, ptr %.sroa.0.1.i.i, align 4, !tbaa !100
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_SU_SU_T0_.exit.i", !llvm.loop !337

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEET_SU_SU_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEElNS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_T0_T1_"(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2438, i64 noundef %i.bw)
  %i.cm = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.cn = sub i64 %i.cm, %i.a
  %.fr57.i.i = freeze i64 %i.cn                   ; 3 uses
  %i.co = icmp sgt i64 %.fr57.i.i, 192
  br i1 %i.co, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_SU_T0_.exit", !llvm.loop !330

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_SU_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEET_SU_SU_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_SU_RT0_.exit.i.i", %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #33

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr noundef %4, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr noundef nonnull align 8 dereferenceable(26) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %11, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %13, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %14, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %15, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %16, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %17, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %18, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %19, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %20, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %21, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %22, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %23) #28 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %24 = alloca %"class.std::unique_ptr", align 8  ; 6 uses
  %25 = alloca %"class.std::set", align 8         ; 8 uses
  %26 = alloca %"class.std::vector.74", align 8   ; 12 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 7 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca [2 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 0, ptr %i.b, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i64 0, ptr %i.c, align 8, !tbaa !72
  %i.i = load i64, ptr %2, align 8, !tbaa !72
  %i.j = load i64, ptr %3, align 8, !tbaa !72
  %i.k = mul nsw i64 %i.j, %i.i                   ; 5 uses
  %i.l = icmp ugt i64 %i.k, 1152921504606846975
  br i1 %i.l, label %.invoke, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.invoke:                                          ; preds = %.lr.ph263, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, %bb.i, %bb.h, %bb.a
  %i.m = phi ptr [ @.str.41, %bb.i ], [ @.str.15, %bb.a ], [ @.str.34, %bb.h ], [ @.str.15, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit ], [ @.str.15, %.lr.ph263 ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.m) #39
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.n = shl nuw nsw i64 %i.k, 3
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #41
          to label %.noexc135 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc135:                                        ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.k ; 2 uses
  store i64 0, ptr %i.o, align 8, !tbaa !72
  %i.q = add nsw i64 %i.k, -1                     ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc135
  %i.s = getelementptr i8, ptr %i.o, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.q, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !72
  br label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc135, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.9237.0 = phi ptr [ %i.p, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.p, %.noexc135 ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.0233.0 = phi ptr [ %i.o, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.o, %.noexc135 ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ] ; 5 uses
  %i.t = load i64, ptr %2, align 8, !tbaa !72
  %i.u = load i64, ptr %3, align 8, !tbaa !72
  %i.v = mul nsw i64 %i.u, %i.t                   ; 5 uses
  %i.w = icmp ugt i64 %i.v, 2305843009213693951
  br i1 %i.w, label %.invoke, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit
  %.not.i.i.i.i136 = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i136, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.x = shl nuw nsw i64 %i.v, 2
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #41
          to label %.noexc140 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc140:                                        ; preds = %bb.c
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.v ; 2 uses
  store float 0.000000e+00, ptr %i.y, align 4, !tbaa !136
  %i.aa = add nsw i64 %i.v, -1                    ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc140
  %i.ac = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i.i.i137 = shl nuw nsw i64 %i.aa, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ac, i8 0, i64 %.idx.i.i.i.i.i.i.i137, i1 false), !tbaa !136
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc140, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.9231.0 = phi ptr [ %i.z, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.z, %.noexc140 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.0227.0 = phi ptr [ %i.y, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.y, %.noexc140 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27
  %i.ad = load i8, ptr %5, align 1, !tbaa !105, !range !38, !noundef !39
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = load i64, ptr %3, align 8, !tbaa !72
  %i.ag = load i64, ptr %2, align 8, !tbaa !72
  %i.ah = load ptr, ptr %6, align 8, !tbaa !121
  %i.ai = load i32, ptr %7, align 4, !tbaa !100
  %i.aj = load ptr, ptr %4, align 8, !tbaa !25
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 360
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %24, ptr noundef nonnull align 8 dereferenceable(352) %4, i1 noundef zeroext %i.ae, i64 noundef %i.af, i64 noundef %i.ag, ptr noundef %.sroa.0227.0, ptr noundef %.sroa.0233.0, ptr noundef %i.ah, i32 noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(26) %8)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.am = load ptr, ptr %24, align 8, !tbaa !127  ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !25
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = invoke noundef ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

bb.e:                                             ; preds = %bb.d
  %i.ar = load ptr, ptr %9, align 8, !tbaa !99
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !25
  %i.at = load ptr, ptr %i.as, align 8
  invoke void %i.at(ptr noundef nonnull align 8 dereferenceable(88) %i.aq, ptr noundef %i.ar)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 328
  %i.av = load i64, ptr %i.au, align 8, !tbaa !150 ; 2 uses
  %.not = icmp eq i64 %i.av, 0
  %i.aw = shl i64 %i.av, 32
  %i.ax = ashr exact i64 %i.aw, 32
  %i.ay = select i1 %.not, i64 11, i64 %i.ax      ; 9 uses
  %i.az = load ptr, ptr %10, align 8, !tbaa !114
  %.not116 = icmp eq ptr %i.az, null
  br i1 %.not116, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not244 = icmp eq i64 %i.ay, 0
  br i1 %.not244, label %_ZNSt6vectorItSaItEE6resizeEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = icmp ugt i64 %i.ay, 4611686018427387903
  br i1 %i.ba, label %.invoke, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.h
  %i.bb = shl nuw nsw i64 %i.ay, 1
  %i.bc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #41
          to label %.noexc179 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc179:                                        ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i
  store i16 0, ptr %i.bc, align 2, !tbaa !159
  %i.bd = add nsw i64 %i.ay, -1                   ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %.noexc141, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc179
  %i.bf = getelementptr i8, ptr %i.bc, i64 2
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.bd, 1
  call void @llvm.memset.p0.i64(ptr align 2 %i.bf, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !159
  br label %.noexc141

.noexc141:                                        ; preds = %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc179
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %i.ay
  %i.bh = ptrtoint ptr %i.bg to i64
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit

_ZNSt6vectorItSaItEE6resizeEm.exit:               ; preds = %.noexc141, %bb.g
  %.sroa.0217.1 = phi ptr [ %i.bc, %.noexc141 ], [ null, %bb.g ] ; 2 uses
  %.sroa.14.1 = phi i64 [ %i.bh, %.noexc141 ], [ 0, %bb.g ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  store ptr %.sroa.0217.1, ptr %i.bi, align 8, !tbaa !162
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorItSaItEE6resizeEm.exit, %bb.f
  %.sroa.0217.0 = phi ptr [ null, %bb.f ], [ %.sroa.0217.1, %_ZNSt6vectorItSaItEE6resizeEm.exit ] ; 4 uses
  %.sroa.14.0 = phi i64 [ 0, %bb.f ], [ %.sroa.14.1, %_ZNSt6vectorItSaItEE6resizeEm.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #27
  %i.bj = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 8 uses
  store i32 0, ptr %i.bj, align 8, !tbaa !361
  %i.bk = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  store ptr null, ptr %i.bk, align 8, !tbaa !362
  %i.bl = getelementptr inbounds nuw i8, ptr %25, i64 24 ; 3 uses
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !363
  %i.bm = getelementptr inbounds nuw i8, ptr %25, i64 32
  store ptr %i.bj, ptr %i.bm, align 8, !tbaa !364
  %i.bn = getelementptr inbounds nuw i8, ptr %25, i64 40 ; 3 uses
  store i64 0, ptr %i.bn, align 8, !tbaa !365
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, i8 0, i64 24, i1 false)
  %i.bo = icmp ugt i64 %i.ay, 2305843009213693951
  br i1 %i.bo, label %.invoke, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  %.not356 = icmp eq i64 %i.ay, 0
  br i1 %.not356, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.br = shl nuw nsw i64 %i.ay, 2
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #41
          to label %.noexc143 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc143:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.bt = load ptr, ptr %26, align 8, !tbaa !164  ; 4 uses
  %i.bu = load ptr, ptr %i.bq, align 8, !tbaa !165
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.bx = sub i64 %i.bv, %i.bw                    ; 2 uses
  %i.by = icmp sgt i64 %i.bx, 0
  br i1 %i.by, label %bb.k, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.k:                                             ; preds = %.noexc143
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bs, ptr align 4 %i.bt, i64 %i.bx, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.k, %.noexc143
  %.not.i8.i = icmp eq ptr %i.bt, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.bz = load ptr, ptr %i.bp, align 8, !tbaa !166
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = sub i64 %i.ca, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.cb) #40
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  store ptr %i.bs, ptr %26, align 8, !tbaa !164
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !165
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.ay
  store ptr %i.cc, ptr %i.bp, align 8, !tbaa !166
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, %bb.j
  %.val124 = load ptr, ptr %11, align 8, !tbaa !154
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.val125 = load ptr, ptr %i.cd, align 8, !tbaa !153
  %i.ce = ptrtoint ptr %.val125 to i64
  %i.cf = ptrtoint ptr %.val124 to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 0
  %.pre288 = load i32, ptr %0, align 4, !tbaa !100 ; 17 uses
  br i1 %i.ch, label %bb.m, label %bb.an

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.ci = udiv exact i64 %i.cg, 24
  %i.cj = add nsw i64 %i.ci, -1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  store i64 0, ptr %i.d, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  store i64 %i.cj, ptr %i.e, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  store i64 1, ptr %i.f, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  store i32 0, ptr %i.g, align 4, !tbaa !100
  call void @__kmpc_dispatch_init_8(ptr nonnull @2, i32 %.pre288, i32 1073741859, i64 0, i64 %i.cj, i64 1, i64 1)
  %i.ck = call i32 @__kmpc_dispatch_next_8(ptr nonnull @2, i32 %.pre288, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f)
  %.not117264 = icmp eq i32 %i.ck, 0
  br i1 %.not117264, label %._crit_edge267, label %.lr.ph266

.lr.ph266:                                        ; preds = %bb.m
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 304 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 152 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.cq = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 4 uses
  br label %bb.n

.loopexit252:                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit166, %bb.n
  %27 = phi i64 [ %29, %bb.n ], [ %i.fs, %_ZNSt6vectorIiSaIiEED2Ev.exit166 ]
  %28 = phi i64 [ %30, %bb.n ], [ %i.da, %_ZNSt6vectorIiSaIiEED2Ev.exit166 ]
  %i.cr = call i32 @__kmpc_dispatch_next_8(ptr nonnull @2, i32 %.pre288, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f)
  %.not117 = icmp eq i32 %i.cr, 0
  br i1 %.not117, label %._crit_edge267, label %bb.n

bb.n:                                             ; preds = %.lr.ph266, %.loopexit252
  %29 = phi i64 [ 0, %.lr.ph266 ], [ %27, %.loopexit252 ] ; 2 uses
  %30 = phi i64 [ 0, %.lr.ph266 ], [ %28, %.loopexit252 ] ; 2 uses
  %i.cs = load i64, ptr %i.d, align 8, !tbaa !72  ; 2 uses
  %i.ct = load i64, ptr %i.e, align 8, !tbaa !72, !llvm.access.group !338
  %.not120260 = icmp sgt i64 %i.cs, %i.ct
  br i1 %.not120260, label %.loopexit252, label %.lr.ph263

.lr.ph263:                                        ; preds = %bb.n, %_ZNSt6vectorIiSaIiEED2Ev.exit166
  %31 = phi i64 [ %i.fs, %_ZNSt6vectorIiSaIiEED2Ev.exit166 ], [ %29, %bb.n ]
  %32 = phi i64 [ %i.da, %_ZNSt6vectorIiSaIiEED2Ev.exit166 ], [ %30, %bb.n ]
  %.0113261 = phi i64 [ %i.ln, %_ZNSt6vectorIiSaIiEED2Ev.exit166 ], [ %i.cs, %bb.n ] ; 3 uses
  %.val128 = load ptr, ptr %11, align 8, !tbaa !154
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %.val128, i64 %.0113261 ; 3 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !367, !llvm.access.group !338 ; 16 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !368, !llvm.access.group !338 ; 8 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !369, !llvm.access.group !338 ; 3 uses
  %i.da = add i64 %32, 1                          ; 3 uses
  store i64 %i.da, ptr %i.c, align 8, !tbaa !72, !llvm.access.group !338
  %.val123 = load ptr, ptr %13, align 8, !tbaa !149
  %i.db = getelementptr inbounds nuw [12 x i8], ptr %.val123, i64 %i.cv
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !145, !llvm.access.group !338
  %i.de = sub i64 %i.cx, %i.cv                    ; 6 uses
  %i.df = trunc i64 %i.de to i32
  %sext = shl i64 %i.de, 32                       ; 3 uses
  %i.dg = ashr exact i64 %sext, 32                ; 9 uses
  %i.dh = icmp ugt i64 %i.dg, 2305843009213693951
  br i1 %i.dh, label %.invoke, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.lr.ph263
  %.not.i.i.i.i144 = icmp eq i64 %sext, 0
  br i1 %.not.i.i.i.i144, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit157, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.di = ashr exact i64 %sext, 30                ; 2 uses
  %i.dj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.di) #41
          to label %.noexc148 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 5 uses

.noexc148:                                        ; preds = %bb.o
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dg ; 2 uses
  store i32 0, ptr %i.dj, align 4, !tbaa !100, !llvm.access.group !338
  %i.dl = add nsw i64 %i.dg, -1                   ; 3 uses
  %i.dm = icmp eq i64 %i.dl, 0                    ; 2 uses
  br i1 %i.dm, label %bb.p, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc148
  %i.dn = getelementptr i8, ptr %i.dj, i64 4
  %.idx.i.i.i.i.i.i.i145 = shl nuw nsw i64 %i.dl, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.dn, i8 0, i64 %.idx.i.i.i.i.i.i.i145, i1 false), !tbaa !100, !llvm.access.group !338
  br label %bb.p

bb.p:                                             ; preds = %.noexc148, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.do = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.di) #41
          to label %.noexc156 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 5 uses

.noexc156:                                        ; preds = %bb.p
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dg ; 2 uses
  store i32 0, ptr %i.do, align 4, !tbaa !100, !llvm.access.group !338
  br i1 %i.dm, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit157, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i151

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i151: ; preds = %.noexc156
  %i.dq = getelementptr i8, ptr %i.do, i64 4
  %.idx.i.i.i.i.i.i.i152 = shl nuw nsw i64 %i.dl, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.dq, i8 0, i64 %.idx.i.i.i.i.i.i.i152, i1 false), !tbaa !100, !llvm.access.group !338
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit157

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit157:            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i151, %.noexc156, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.9216.0242 = phi ptr [ %i.dk, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i151 ], [ %i.dk, %.noexc156 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.0212.0240 = phi ptr [ %i.dj, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i151 ], [ %i.dj, %.noexc156 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 5 uses
  %.sroa.0207.0 = phi ptr [ %i.do, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i151 ], [ %i.do, %.noexc156 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 5 uses
  %.sroa.9210.0 = phi ptr [ %i.dp, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i151 ], [ %i.dp, %.noexc156 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.dr = load i64, ptr %14, align 8, !tbaa !72, !llvm.access.group !338
  %i.ds = mul i64 %i.dr, %i.dg                    ; 4 uses
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %_ZN5faiss12AlignedTableIhLi32EEC2Em.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit157
  %i.du = icmp ult i64 %i.ds, 256
  br i1 %i.du, label %.loopexit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.q, %.preheader.i.i
  %.0.i.i = phi i64 [ %i.dw, %.preheader.i.i ], [ 256, %bb.q ] ; 3 uses
  %i.dv = icmp ult i64 %.0.i.i, %i.ds
  %i.dw = shl i64 %.0.i.i, 1
  br i1 %i.dv, label %.preheader.i.i, label %.loopexit.i, !llvm.loop !0

.loopexit.i:                                      ; preds = %.preheader.i.i, %bb.q
  %.07.i.ph.i = phi i64 [ 256, %bb.q ], [ %.0.i.i, %.preheader.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27, !llvm.access.group !338
  %i.dx = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %.07.i.ph.i) #27, !llvm.access.group !338
  %.not1.i.i.i = icmp eq i32 %i.dx, 0
  br i1 %.not1.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit.i
  %i.dy = call ptr @__cxa_allocate_exception(i64 8) #27, !llvm.access.group !338 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dy, align 8, !tbaa !25, !llvm.access.group !338
  invoke void @__cxa_throw(ptr nonnull %i.dy, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #39
          to label %.noexc158 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc158:                                        ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %.loopexit.i
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !70, !llvm.access.group !338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27, !llvm.access.group !338
  br label %_ZN5faiss12AlignedTableIhLi32EEC2Em.exit

_ZN5faiss12AlignedTableIhLi32EEC2Em.exit:         ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit157, %bb.s
  %.sroa.0202.0 = phi ptr [ %.pre.i.i.i, %bb.s ], [ null, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit157 ] ; 4 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.sroa.0202.0, i8 -1, i64 %i.ds, i1 false), !llvm.access.group !338
  %i.dz = invoke noundef i32 @_ZN5faiss17pq4_preferred_qbsEi(i32 noundef %i.df)
          to label %.preheader248 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !llvm.access.group !338 ; 2 uses

.preheader248:                                    ; preds = %_ZN5faiss12AlignedTableIhLi32EEC2Em.exit
  %i.ea = icmp ult i64 %i.cv, %i.cx               ; 2 uses
  br i1 %i.ea, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader248, %bb.y
  %.0112256 = phi i64 [ %i.fm, %bb.y ], [ %i.cv, %.preheader248 ] ; 3 uses
  %.val122 = load ptr, ptr %13, align 8, !tbaa !149
  %i.eb = getelementptr inbounds nuw [12 x i8], ptr %.val122, i64 %.0112256 ; 4 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !370, !llvm.access.group !338 ; 5 uses
  %i.ed = sub nuw i64 %.0112256, %i.cv            ; 3 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0212.0240, i64 %i.ed
  store i32 %i.ec, ptr %i.ee, align 4, !tbaa !100, !llvm.access.group !338
  %.02022.i.i.i = load ptr, ptr %i.bk, align 8, !tbaa !371, !llvm.access.group !338 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %.lr.ph ] ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !100, !llvm.access.group !338 ; 2 uses
  %i.eh = icmp slt i32 %i.ec, %i.eg               ; 2 uses
  %.in.v.i.i.i = select i1 %i.eh, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !371, !llvm.access.group !338 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !339

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.eh, label %._crit_edge.thread.i.i.i, label %bb.u

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %.lr.ph
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.bj, %.lr.ph ] ; 4 uses
  %i.ei = load ptr, ptr %i.bl, align 8, !tbaa !363, !llvm.access.group !338
  %i.ej = icmp eq ptr %.019.lcssa29.i.i.i, %i.ei
  br i1 %i.ej, label %select.unfold.i.i, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.ek = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #43, !llvm.access.group !338
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !100, !llvm.access.group !338
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i.i.i
  %i.el = phi i32 [ %.pre.i.i, %bb.t ], [ %i.eg, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.t ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.em = icmp slt i32 %i.el, %i.ec
  br i1 %i.em, label %select.unfold.i.i, label %bb.w

select.unfold.i.i:                                ; preds = %bb.u, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.u ] ; 3 uses
  %i.en = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.bj
  br i1 %i.en, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %select.unfold.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !100, !llvm.access.group !338
  %i.eq = icmp slt i32 %i.ec, %i.ep
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.v, %select.unfold.i.i
  %i.er = phi i1 [ %i.eq, %bb.v ], [ true, %select.unfold.i.i ]
  %i.es = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #41
          to label %.noexc159 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc159:                                        ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.eu = load i32, ptr %i.eb, align 4, !tbaa !100, !llvm.access.group !338
  store i32 %i.eu, ptr %i.et, align 4, !tbaa !100, !llvm.access.group !338
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.er, ptr noundef nonnull %i.es, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bj) #27, !llvm.access.group !338
  %i.ev = load i64, ptr %i.bn, align 8, !tbaa !365, !llvm.access.group !338
  %i.ew = add i64 %i.ev, 1
  store i64 %i.ew, ptr %i.bn, align 8, !tbaa !365, !llvm.access.group !338
  %.pre = load i32, ptr %i.eb, align 4, !tbaa !370, !llvm.access.group !338
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %.noexc159
  %i.ex = phi i32 [ %i.ec, %bb.u ], [ %.pre, %.noexc159 ] ; 2 uses
  %i.ey = load i64, ptr %15, align 8, !tbaa !72, !llvm.access.group !338
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !372, !llvm.access.group !338
  %i.fb = trunc i64 %i.ey to i32
  %i.fc = mul i32 %i.ex, %i.fb
  %i.fd = add i32 %i.fc, %i.fa                    ; 2 uses
  %i.fe = load i8, ptr %16, align 1, !tbaa !105, !range !38, !llvm.access.group !338, !noundef !39
  %i.ff = trunc nuw i8 %i.fe to i1
  %. = select i1 %i.ff, i32 %i.ex, i32 %i.fd
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0207.0, i64 %i.ed
  store i32 %., ptr %i.fg, align 4, !tbaa !100, !llvm.access.group !338
  %i.fh = load ptr, ptr %10, align 8, !tbaa !114, !llvm.access.group !338 ; 2 uses
  %.not121 = icmp eq ptr %i.fh, null
  br i1 %.not121, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fi = sext i32 %i.fd to i64
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.fh, i64 %i.fi
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !159, !llvm.access.group !338
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0217.0, i64 %i.ed
  store i16 %i.fk, ptr %i.fl, align 2, !tbaa !159, !llvm.access.group !338
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fm = add i64 %.0112256, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.fm, %i.cx
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !340

._crit_edge:                                      ; preds = %bb.y, %.preheader248
  %i.fn = load i64, ptr %i.cl, align 8, !tbaa !81, !llvm.access.group !338
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = load ptr, ptr %17, align 8, !tbaa !85, !llvm.access.group !338
  %i.fq = invoke noundef i32 @_ZN5faiss22pq4_pack_LUT_qbs_q_mapEiiPKhPKiPh(i32 noundef %i.dz, i32 noundef %i.fo, ptr noundef %i.fp, ptr noundef %.sroa.0207.0, ptr noundef %.sroa.0202.0)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !llvm.access.group !338 ; 0 uses

bb.z:                                             ; preds = %._crit_edge
  %i.fr = mul i64 %i.de, %i.cz
  %i.fs = add i64 %31, %i.fr                      ; 3 uses
  store i64 %i.fs, ptr %i.b, align 8, !tbaa !72, !llvm.access.group !338
  %i.ft = load ptr, ptr %i.cm, align 8, !tbaa !71, !llvm.access.group !338 ; 4 uses
  %i.fu = sext i32 %i.dd to i64                   ; 5 uses
  %i.fv = load ptr, ptr %i.ft, align 8, !tbaa !25, !llvm.access.group !338
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8, !llvm.access.group !338
  %i.fy = invoke noundef ptr %i.fx(ptr noundef nonnull align 8 dereferenceable(25) %i.ft, i64 noundef %i.fu)
          to label %_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !1 ; 2 uses

_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_m.exit: ; preds = %bb.z
  %i.fz = load ptr, ptr %i.cm, align 8, !tbaa !71, !llvm.access.group !338 ; 4 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !25, !llvm.access.group !338
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  %i.gc = load ptr, ptr %i.gb, align 8, !llvm.access.group !338
  %i.gd = invoke noundef ptr %i.gc(ptr noundef nonnull align 8 dereferenceable(25) %i.fz, i64 noundef %i.fu)
          to label %_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !9 ; 2 uses

_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit: ; preds = %_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_m.exit
  store i64 %i.cz, ptr %i.cn, align 8, !tbaa !167, !llvm.access.group !338
  store ptr %.sroa.0212.0240, ptr %i.co, align 8, !tbaa !168, !llvm.access.group !338
  store ptr %i.gd, ptr %i.cp, align 8, !tbaa !169, !llvm.access.group !338
  %i.ge = load ptr, ptr %i.cq, align 8, !tbaa !165, !llvm.access.group !338 ; 4 uses
  %i.gf = load ptr, ptr %26, align 8, !tbaa !164, !llvm.access.group !338 ; 9 uses
  %i.gg = ptrtoint ptr %i.ge to i64               ; 2 uses
  %i.gh = ptrtoint ptr %i.gf to i64               ; 2 uses
  %i.gi = sub i64 %i.gg, %i.gh                    ; 4 uses
  %i.gj = ashr exact i64 %i.gi, 2                 ; 6 uses
  %i.gk = icmp ugt i64 %i.dg, %i.gj
  br i1 %i.gk, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit
  %i.gl = sub nuw nsw i64 %i.dg, %i.gj            ; 5 uses
  %i.gm = load ptr, ptr %i.bp, align 8, !tbaa !166
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = sub i64 %i.gn, %i.gg
  %i.gp = ashr exact i64 %i.go, 2                 ; 2 uses
  %i.gq = xor i64 %i.gj, 2305843009213693951
  %i.gr = icmp ule i64 %i.gp, %i.gq
  call void @llvm.assume(i1 %i.gr)
  %.not28.i181 = icmp ult i64 %i.gp, %i.gl
  br i1 %.not28.i181, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.ge, align 4, !tbaa !100
  %i.gs = getelementptr i8, ptr %i.ge, i64 4      ; 3 uses
  %i.gt = add nsw i64 %i.gl, -1                   ; 2 uses
  %i.gu = icmp eq i64 %i.gt, 0
  br i1 %i.gu, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.ab
  %.idx.i.i.i.i.i.i182 = shl nuw nsw i64 %i.gt, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.gs, i8 0, i64 %.idx.i.i.i.i.i.i182, i1 false), !tbaa !100
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 %.idx.i.i.i.i.i.i182
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.ab
  %.0.i.i.i.i183 = phi ptr [ %i.gv, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.gs, %bb.ab ]
  store ptr %.0.i.i.i.i183, ptr %i.cq, align 8, !tbaa !165
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.aa
  %.sroa.speculated.i.i184 = call i64 @llvm.umax.i64(i64 %i.gj, i64 %i.gl)
  %i.gw = add nuw nsw i64 %.sroa.speculated.i.i184, %i.gj
  %i.gx = call i64 @llvm.umin.i64(i64 %i.gw, i64 2305843009213693951) ; 2 uses
  %i.gy = shl nuw nsw i64 %i.gx, 2
  %i.gz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gy) #41
          to label %.noexc189 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 5 uses

.noexc189:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gi ; 3 uses
  store i32 0, ptr %i.ha, align 4, !tbaa !100
  %i.hb = add nsw i64 %i.gl, -1                   ; 2 uses
  %i.hc = icmp eq i64 %i.hb, 0
  br i1 %i.hc, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc189
  %i.hd = getelementptr i8, ptr %i.ha, i64 4
  %.idx.i.i.i.i.i31.i185 = shl nuw nsw i64 %i.hb, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.hd, i8 0, i64 %.idx.i.i.i.i.i31.i185, i1 false), !tbaa !100
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc189
  %i.he = icmp sgt i64 %i.gi, 0
  br i1 %i.he, label %bb.ac, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i186

bb.ac:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gz, ptr align 4 %i.gf, i64 %i.gi, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i186

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i186: ; preds = %bb.ac, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i187 = icmp eq ptr %i.gf, null
  br i1 %.not.i35.i187, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i186
  %i.hf = load ptr, ptr %i.bp, align 8, !tbaa !166
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = sub i64 %i.hg, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.gf, i64 noundef %i.hh) #40
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i: ; preds = %bb.ad, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i186
  store ptr %i.gz, ptr %26, align 8, !tbaa !164
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.gl
  store ptr %i.hi, ptr %i.cq, align 8, !tbaa !165
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.gx
  store ptr %i.hj, ptr %i.bp, align 8, !tbaa !166
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.ae:                                            ; preds = %_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit
  %i.hk = icmp ult i64 %i.dg, %i.gj
  br i1 %i.hk, label %bb.af, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.af:                                            ; preds = %bb.ae
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.dg ; 2 uses
  %.not.i.i162 = icmp eq ptr %i.ge, %i.hl
  br i1 %.not.i.i162, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.af
  store ptr %i.hl, ptr %i.cq, align 8, !tbaa !165, !llvm.access.group !338
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, %bb.ae, %bb.af, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.hm = phi ptr [ %i.gf, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i ], [ %i.gz, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ], [ %i.gf, %bb.ae ], [ %i.gf, %bb.af ], [ %i.gf, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ] ; 8 uses
  br i1 %i.ea, label %.lr.ph258, label %._crit_edge259

.lr.ph258:                                        ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %.val = load ptr, ptr %13, align 8, !tbaa !149  ; 15 uses
  %min.iters.check = icmp ult i64 %i.de, 13
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph258
  %.0111257.ph = phi i64 [ %i.cv, %vector.memcheck ], [ %i.cv, %.lr.ph258 ], [ %i.id, %vector.body ] ; 4 uses
  %i.hn = sub i64 %i.cx, %.0111257.ph
  %xtraiter = and i64 %i.hn, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.0111257.prol = phi i64 [ %i.ht, %scalar.ph.prol ], [ %.0111257.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ho = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %.0111257.prol
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !372, !llvm.access.group !338
  %i.hr = sub nuw i64 %.0111257.prol, %i.cv
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.hr
  store i32 %i.hq, ptr %i.hs, align 4, !tbaa !100, !llvm.access.group !338
  %i.ht = add nuw i64 %.0111257.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !341

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0111257.unr = phi i64 [ %.0111257.ph, %scalar.ph.preheader ], [ %i.ht, %scalar.ph.prol ]
  %i.hu = sub i64 %.0111257.ph, %i.cx
  %i.hv = icmp ugt i64 %i.hu, -4
  br i1 %i.hv, label %._crit_edge259, label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph258
  %i.hw = sub i64 %i.cx, %i.cv
  %i.hx = shl i64 %i.hw, 2
  %scevgep = getelementptr i8, ptr %i.hm, i64 %i.hx
  %scevgep363 = getelementptr nuw i8, ptr %.val, i64 8
  %i.hy = mul i64 %i.cv, 12
  %scevgep364 = getelementptr nuw i8, ptr %scevgep363, i64 %i.hy
  %i.hz = mul i64 %i.cx, 12
  %scevgep365 = getelementptr i8, ptr %.val, i64 %i.hz
  %bound0 = icmp ult ptr %i.hm, %scevgep365
  %bound1 = icmp ult ptr %scevgep364, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ia = and i64 %i.de, 7                        ; 2 uses
  %i.ib = icmp eq i64 %i.ia, 0
  %i.ic = select i1 %i.ib, i64 8, i64 %i.ia
  %n.vec = sub i64 %i.de, %i.ic                   ; 2 uses
  %i.id = add i64 %i.cv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ie = add nuw i64 %i.cv, %index               ; 8 uses
  %i.if = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %i.ie
  %i.ig = getelementptr [12 x i8], ptr %.val, i64 %i.ie
  %i.ih = getelementptr [12 x i8], ptr %.val, i64 %i.ie
  %i.ii = getelementptr [12 x i8], ptr %.val, i64 %i.ie
  %i.ij = getelementptr [12 x i8], ptr %.val, i64 %i.ie
  %i.ik = getelementptr [12 x i8], ptr %.val, i64 %i.ie
  %i.il = getelementptr [12 x i8], ptr %.val, i64 %i.ie
  %i.im = getelementptr [12 x i8], ptr %.val, i64 %i.ie
  %i.in = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.io = getelementptr i8, ptr %i.ig, i64 20
  %i.ip = getelementptr i8, ptr %i.ih, i64 32
  %i.iq = getelementptr i8, ptr %i.ii, i64 44
  %i.ir = getelementptr i8, ptr %i.ij, i64 56
  %i.is = getelementptr i8, ptr %i.ik, i64 68
  %i.it = getelementptr i8, ptr %i.il, i64 80
  %i.iu = getelementptr i8, ptr %i.im, i64 92
  %i.iv = load i32, ptr %i.in, align 4, !tbaa !372, !alias.scope !373, !llvm.access.group !338
  %i.iw = load i32, ptr %i.io, align 4, !tbaa !372, !alias.scope !373, !llvm.access.group !338
  %i.ix = load i32, ptr %i.ip, align 4, !tbaa !372, !alias.scope !373, !llvm.access.group !338
  %i.iy = load i32, ptr %i.iq, align 4, !tbaa !372, !alias.scope !373, !llvm.access.group !338
  %i.iz = insertelement <4 x i32> poison, i32 %i.iv, i64 0
  %i.ja = insertelement <4 x i32> %i.iz, i32 %i.iw, i64 1
  %i.jb = insertelement <4 x i32> %i.ja, i32 %i.ix, i64 2
  %i.jc = insertelement <4 x i32> %i.jb, i32 %i.iy, i64 3
  %i.jd = load i32, ptr %i.ir, align 4, !tbaa !372, !alias.scope !373, !llvm.access.group !338
  %i.je = load i32, ptr %i.is, align 4, !tbaa !372, !alias.scope !373, !llvm.access.group !338
  %i.jf = load i32, ptr %i.it, align 4, !tbaa !372, !alias.scope !373, !llvm.access.group !338
  %i.jg = load i32, ptr %i.iu, align 4, !tbaa !372, !alias.scope !373, !llvm.access.group !338
  %i.jh = insertelement <4 x i32> poison, i32 %i.jd, i64 0
  %i.ji = insertelement <4 x i32> %i.jh, i32 %i.je, i64 1
  %i.jj = insertelement <4 x i32> %i.ji, i32 %i.jf, i64 2
  %i.jk = insertelement <4 x i32> %i.jj, i32 %i.jg, i64 3
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %index ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  store <4 x i32> %i.jc, ptr %i.jl, align 4, !tbaa !100, !alias.scope !374, !noalias !373, !llvm.access.group !338
  store <4 x i32> %i.jk, ptr %i.jm, align 4, !tbaa !100, !alias.scope !374, !noalias !373, !llvm.access.group !338
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jn = icmp eq i64 %index.next, %n.vec
  br i1 %i.jn, label %scalar.ph.preheader, label %vector.body, !llvm.loop !345

._crit_edge259:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.jo = load ptr, ptr %i.aq, align 8, !tbaa !25, !llvm.access.group !338
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  %i.jq = load ptr, ptr %i.jp, align 8, !llvm.access.group !338
  invoke void %i.jq(ptr noundef nonnull align 8 dereferenceable(88) %i.aq, i64 noundef %i.fu, ptr noundef nonnull align 8 dereferenceable(24) %26)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !llvm.access.group !338

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0111257 = phi i64 [ %i.ko, %scalar.ph ], [ %.0111257.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.jr = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %.0111257
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !372, !llvm.access.group !338
  %i.ju = sub nuw i64 %.0111257, %i.cv
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.ju
  store i32 %i.jt, ptr %i.jv, align 4, !tbaa !100, !llvm.access.group !338
  %i.jw = add nuw i64 %.0111257, 1                ; 2 uses
  %i.jx = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !372, !llvm.access.group !338
  %i.ka = sub nuw i64 %i.jw, %i.cv
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.ka
  store i32 %i.jz, ptr %i.kb, align 4, !tbaa !100, !llvm.access.group !338
  %i.kc = add nuw i64 %.0111257, 2                ; 2 uses
  %i.kd = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !372, !llvm.access.group !338
  %i.kg = sub nuw i64 %i.kc, %i.cv
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.kg
  store i32 %i.kf, ptr %i.kh, align 4, !tbaa !100, !llvm.access.group !338
  %i.ki = add nuw i64 %.0111257, 3                ; 2 uses
  %i.kj = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %i.ki
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !372, !llvm.access.group !338
  %i.km = sub nuw i64 %i.ki, %i.cv
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.km
  store i32 %i.kl, ptr %i.kn, align 4, !tbaa !100, !llvm.access.group !338
  %i.ko = add nuw i64 %.0111257, 4                ; 2 uses
  %exitcond287.not.3 = icmp eq i64 %i.ko, %i.cx
  br i1 %exitcond287.not.3, label %._crit_edge259, label %scalar.ph, !llvm.loop !346

bb.ag:                                            ; preds = %._crit_edge259
  %i.kp = load ptr, ptr %24, align 8, !tbaa !127, !llvm.access.group !338 ; 2 uses
  %i.kq = load i64, ptr %i.cl, align 8, !tbaa !81, !llvm.access.group !338
  %i.kr = load i32, ptr %8, align 8, !tbaa !142, !llvm.access.group !338
  %i.ks = invoke noundef i64 @_ZNK5faiss16IndexIVFFastScan16get_block_strideEv(ptr noundef nonnull align 8 dereferenceable(352) %4)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !llvm.access.group !338

bb.ah:                                            ; preds = %bb.ag
  %i.kt = trunc i64 %i.kq to i32
  %i.ku = load ptr, ptr %i.kp, align 8, !tbaa !25, !llvm.access.group !338
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 32
  %i.kw = load ptr, ptr %i.kv, align 8, !llvm.access.group !338
  invoke void %i.kw(ptr noundef nonnull align 8 dereferenceable(8) %i.kp, i32 noundef %i.dz, i64 noundef %i.cz, i32 noundef %i.kt, ptr noundef %i.fy, ptr noundef %.sroa.0202.0, i32 noundef %i.kr, i64 noundef %i.ks)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !llvm.access.group !338

bb.ai:                                            ; preds = %bb.ah
  %i.kx = load ptr, ptr %i.fz, align 8, !tbaa !25, !llvm.access.group !338
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 48
  %i.kz = load ptr, ptr %i.ky, align 8, !llvm.access.group !338
  invoke void %i.kz(ptr noundef nonnull align 8 dereferenceable(25) %i.fz, i64 noundef %i.fu, ptr noundef %i.gd)
          to label %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit unwind label %bb.aj, !llvm.access.group !338

bb.aj:                                            ; preds = %bb.ai
  %i.la = landingpad { ptr, i32 }
          catch ptr null
  %i.lb = extractvalue { ptr, i32 } %i.la, 0
  call void @__clang_call_terminate(ptr %i.lb) #38, !llvm.access.group !338
  unreachable

_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit:      ; preds = %bb.ai
  %i.lc = load ptr, ptr %i.ft, align 8, !tbaa !25, !llvm.access.group !338
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 40
  %i.le = load ptr, ptr %i.ld, align 8, !llvm.access.group !338
  invoke void %i.le(ptr noundef nonnull align 8 dereferenceable(25) %i.ft, i64 noundef %i.fu, ptr noundef %i.fy)
          to label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit unwind label %bb.ak, !llvm.access.group !338

bb.ak:                                            ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit
  %i.lf = landingpad { ptr, i32 }
          catch ptr null
  %i.lg = extractvalue { ptr, i32 } %i.lf, 0
  call void @__clang_call_terminate(ptr %i.lg) #38, !llvm.access.group !338
  unreachable

_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit:   ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit
  call void @free(ptr noundef %.sroa.0202.0) #27, !llvm.access.group !338
  %.not.i.i.i164 = icmp eq ptr %.sroa.0207.0, null
  br i1 %.not.i.i.i164, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit
  %i.lh = ptrtoint ptr %.sroa.9210.0 to i64
  %i.li = ptrtoint ptr %.sroa.0207.0 to i64
  %i.lj = sub i64 %i.lh, %i.li
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0207.0, i64 noundef %i.lj) #40, !llvm.access.group !338
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit, %bb.al
  %.not.i.i.i165 = icmp eq ptr %.sroa.0212.0240, null
  br i1 %.not.i.i.i165, label %_ZNSt6vectorIiSaIiEED2Ev.exit166, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.lk = ptrtoint ptr %.sroa.9216.0242 to i64
  %i.ll = ptrtoint ptr %.sroa.0212.0240 to i64
  %i.lm = sub i64 %i.lk, %i.ll
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0212.0240, i64 noundef %i.lm) #40, !llvm.access.group !338
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit166

_ZNSt6vectorIiSaIiEED2Ev.exit166:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.am
  %i.ln = add nsw i64 %.0113261, 1
  %i.lo = load i64, ptr %i.e, align 8, !tbaa !72, !llvm.access.group !338
  %.not120.not = icmp slt i64 %.0113261, %i.lo
  br i1 %.not120.not, label %.lr.ph263, label %.loopexit252, !llvm.loop !347

._crit_edge267:                                   ; preds = %.loopexit252, %bb.m
  call void @__kmpc_dispatch_deinit(ptr nonnull @2, i32 %.pre288)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  br label %bb.an

bb.an:                                            ; preds = %._crit_edge267, %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  call void @__kmpc_barrier(ptr nonnull @4, i32 %.pre288)
  %i.lp = load ptr, ptr %i.aq, align 8, !tbaa !25
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.lr = load ptr, ptr %i.lq, align 8
  invoke void %i.lr(ptr noundef nonnull align 8 dereferenceable(88) %i.aq)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %bb.an
  %i.ls = call i32 @__kmpc_single(ptr nonnull @2, i32 %.pre288)
  %.not118 = icmp eq i32 %i.ls, 0
  br i1 %.not118, label %bb.ap, label %.preheader247

.preheader247:                                    ; preds = %bb.ao
  %i.lt = load i64, ptr %3, align 8, !tbaa !72    ; 3 uses
  %i.lu = icmp sgt i64 %i.lt, 0
  br i1 %i.lu, label %.lr.ph269, label %._crit_edge270

.lr.ph269:                                        ; preds = %.preheader247
  %i.lv = load ptr, ptr %20, align 8, !tbaa !99   ; 2 uses
  %i.lw = load ptr, ptr %21, align 8, !tbaa !45   ; 2 uses
  %.val129 = load ptr, ptr %19, align 8, !tbaa !377
  %i.lx = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %.val129.val = load i8, ptr %.val129, align 1, !tbaa !105, !range !38, !noundef !39
  %i.ly = trunc nuw i8 %.val129.val to i1
  %i.lz = load ptr, ptr %i.lx, align 8
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !72
  %i.mb = icmp eq i64 %i.ma, 0                    ; 2 uses
  br i1 %i.ly, label %.lr.ph269.split.us, label %.lr.ph269.split

.lr.ph269.split.us:                               ; preds = %.lr.ph269
  br i1 %i.mb, label %._crit_edge270, label %.lr.ph269.split.us.split

.lr.ph269.split.us.split:                         ; preds = %.lr.ph269.split.us, %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us"
  %i.mc = phi i64 [ %i.mq, %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us" ], [ %i.lt, %.lr.ph269.split.us ]
  %.0110268.us = phi i64 [ %i.mr, %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us" ], [ 0, %.lr.ph269.split.us ] ; 2 uses
  %i.md = load i64, ptr %2, align 8, !tbaa !72
  %i.me = mul nsw i64 %i.md, %.0110268.us         ; 2 uses
  %i.mf = getelementptr inbounds [4 x i8], ptr %i.lv, i64 %i.me ; 2 uses
  %i.mg = getelementptr inbounds [8 x i8], ptr %i.lw, i64 %i.me ; 2 uses
  %.val130.us = load ptr, ptr %i.lx, align 8
  %i.mh = load i64, ptr %.val130.us, align 8, !tbaa !72 ; 5 uses
  %.not1.i.us = icmp eq i64 %i.mh, 0
  br i1 %.not1.i.us, label %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us", label %.lr.ph46.i5.i.us.preheader

.lr.ph46.i5.i.us.preheader:                       ; preds = %.lr.ph269.split.us.split
  %min.iters.check376 = icmp ult i64 %i.mh, 4
  br i1 %min.iters.check376, label %.lr.ph46.i5.i.us.preheader408, label %vector.ph377

vector.ph377:                                     ; preds = %.lr.ph46.i5.i.us.preheader
  %n.vec378 = and i64 %i.mh, -4                   ; 3 uses
  br label %vector.body379

vector.body379:                                   ; preds = %vector.body379, %vector.ph377
  %index380 = phi i64 [ 0, %vector.ph377 ], [ %index.next381, %vector.body379 ] ; 3 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %index380 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.mi, align 4, !tbaa !136
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.mj, align 4, !tbaa !136
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.mg, i64 %index380 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.mk, align 8, !tbaa !72
  store <2 x i64> splat (i64 -1), ptr %i.ml, align 8, !tbaa !72
  %index.next381 = add nuw i64 %index380, 4       ; 2 uses
  %i.mm = icmp eq i64 %index.next381, %n.vec378
  br i1 %i.mm, label %middle.block382, label %vector.body379, !llvm.loop !348

middle.block382:                                  ; preds = %vector.body379
  %cmp.n383 = icmp eq i64 %i.mh, %n.vec378
  br i1 %cmp.n383, label %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us.loopexit", label %.lr.ph46.i5.i.us.preheader408

.lr.ph46.i5.i.us.preheader408:                    ; preds = %.lr.ph46.i5.i.us.preheader, %middle.block382
  %.045.i6.i.us.ph = phi i64 [ 0, %.lr.ph46.i5.i.us.preheader ], [ %n.vec378, %middle.block382 ]
  br label %.lr.ph46.i5.i.us

.lr.ph46.i5.i.us:                                 ; preds = %.lr.ph46.i5.i.us.preheader408, %.lr.ph46.i5.i.us
  %.045.i6.i.us = phi i64 [ %i.mp, %.lr.ph46.i5.i.us ], [ %.045.i6.i.us.ph, %.lr.ph46.i5.i.us.preheader408 ] ; 3 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %.045.i6.i.us
  store float f0x7F7FFFFF, ptr %i.mn, align 4, !tbaa !136
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.mg, i64 %.045.i6.i.us
  store i64 -1, ptr %i.mo, align 8, !tbaa !72
  %i.mp = add nuw i64 %.045.i6.i.us, 1            ; 2 uses
  %exitcond51.not.i7.i.us = icmp eq i64 %i.mp, %i.mh
  br i1 %exitcond51.not.i7.i.us, label %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us.loopexit", label %.lr.ph46.i5.i.us, !llvm.loop !349

"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us.loopexit": ; preds = %.lr.ph46.i5.i.us, %middle.block382
  %.pre290 = load i64, ptr %3, align 8, !tbaa !72
  br label %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us"

"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us": ; preds = %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us.loopexit", %.lr.ph269.split.us.split
  %i.mq = phi i64 [ %.pre290, %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us.loopexit" ], [ %i.mc, %.lr.ph269.split.us.split ] ; 2 uses
  %i.mr = add nuw nsw i64 %.0110268.us, 1         ; 2 uses
  %i.ms = icmp slt i64 %i.mr, %i.mq
  br i1 %i.ms, label %.lr.ph269.split.us.split, label %._crit_edge270, !llvm.loop !350

.lr.ph269.split:                                  ; preds = %.lr.ph269
  br i1 %i.mb, label %._crit_edge270, label %.lr.ph269.split.split

._crit_edge270:                                   ; preds = %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit", %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit.us", %.lr.ph269.split, %.lr.ph269.split.us, %.preheader247
  call void @__kmpc_end_single(ptr nonnull @2, i32 %.pre288)
  br label %bb.ap

.lr.ph269.split.split:                            ; preds = %.lr.ph269.split, %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit"
  %i.mt = phi i64 [ %i.nh, %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit" ], [ %i.lt, %.lr.ph269.split ]
  %.0110268 = phi i64 [ %i.ni, %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit" ], [ 0, %.lr.ph269.split ] ; 2 uses
  %i.mu = load i64, ptr %2, align 8, !tbaa !72
  %i.mv = mul nsw i64 %i.mu, %.0110268            ; 2 uses
  %i.mw = getelementptr inbounds [4 x i8], ptr %i.lv, i64 %i.mv ; 2 uses
  %i.mx = getelementptr inbounds [8 x i8], ptr %i.lw, i64 %i.mv ; 2 uses
  %.val130 = load ptr, ptr %i.lx, align 8
  %i.my = load i64, ptr %.val130, align 8, !tbaa !72 ; 5 uses
  %.not1.i = icmp eq i64 %i.my, 0
  br i1 %.not1.i, label %"_ZZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFEENK3$_1clES3_S4_.exit", label %.lr.ph46.i.i.preheader

.lr.ph46.i.i.preheader:                           ; preds = %.lr.ph269.split.split
  %min.iters.check367 = icmp ult i64 %i.my, 4
  br i1 %min.iters.check367, label %.lr.ph46.i.i.preheader409, label %vector.ph368

vector.ph368:                                     ; preds = %.lr.ph46.i.i.preheader
  %n.vec369 = and i64 %i.my, -4                   ; 3 uses
  br label %vector.body370

vector.body370:                                   ; preds = %vector.body370, %vector.ph368
  %index371 = phi i64 [ 0, %vector.ph368 ], [ %index.next372, %vector.body370 ] ; 3 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %index371 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  store <2 x float> splat (float f0xFF7FFFFF), ptr %i.mz, align 4, !tbaa !136
  store <2 x float> splat (float f0xFF7FFFFF), ptr %i.na, align 4, !tbaa !136
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %index371 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.nb, align 8, !tbaa !72
  store <2 x i64> splat (i64 -1), ptr %i.nc, align 8, !tbaa !72
  %index.next372 = add nuw i64 %index371, 4       ; 2 uses
end_hunk_0

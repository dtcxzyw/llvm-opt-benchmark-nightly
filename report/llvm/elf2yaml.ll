Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/elf2yaml?download=true
inline.NumInlined: 22385
inline.NumDeleted: 8532
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb0EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_:bb.a
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 3                 ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.critedge.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.ax, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %i.ao, %.critedge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.aw, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %.0.lcssa.i26, %.critedge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.av, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %.sroa.026.0.lcssa.i, %.critedge.i ] ; 3 uses
  %i.aq = load ptr, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !171
  store ptr null, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !171
  %i.ar = load ptr, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !171 ; 3 uses
  store ptr %i.aq, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !167
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(49) %i.ar) #22, !inline_history !3605
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ax = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ay = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i, !llvm.loop !31

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i: ; preds = %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i, %.critedge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.0.lcssa.i26, %.critedge.i ], [ %i.aw, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.az = ptrtoint ptr %i.o to i64                ; 2 uses
  %i.ba = ptrtoint ptr %.sroa.022.0.lcssa.i25 to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3                 ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i13.i, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb0EEEE4dumpEvEUlRKS8_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit

.lr.ph.i.i.i.i.i13.i:                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i
  %.012.i.i.i.i.i14.i = phi i64 [ %i.bl, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i ], [ %i.bc, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i15.i = phi ptr [ %i.bk, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i ], [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i ] ; 3 uses
  %.0910.i.i.i.i.i16.i = phi ptr [ %i.bj, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i ], [ %.sroa.022.0.lcssa.i25, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i ] ; 3 uses
  %i.be = load ptr, ptr %.0910.i.i.i.i.i16.i, align 8, !tbaa !171
  store ptr null, ptr %.0910.i.i.i.i.i16.i, align 8, !tbaa !171
  %i.bf = load ptr, ptr %.0811.i.i.i.i.i15.i, align 8, !tbaa !171 ; 3 uses
  store ptr %i.be, ptr %.0811.i.i.i.i.i15.i, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i17.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i17.i, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i18.i

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i18.i: ; preds = %.lr.ph.i.i.i.i.i13.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !167
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(49) %i.bf) #22, !inline_history !3605
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i18.i, %.lr.ph.i.i.i.i.i13.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16.i, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i15.i, i64 8 ; 2 uses
  %i.bl = add nsw i64 %.012.i.i.i.i.i14.i, -1
  %i.bm = icmp sgt i64 %.012.i.i.i.i.i14.i, 1
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i13.i, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb0EEEE4dumpEvEUlRKS8_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit, !llvm.loop !31

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb0EEEE4dumpEvEUlRKS8_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit: ; preds = %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i
  %.08.lcssa.i.i.i.i.i12.i = phi ptr [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i ], [ %i.bk, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i ] ; 2 uses
  %i.bn = sub i64 %i.a, %i.az
  %i.bo = ashr exact i64 %i.bn, 3                 ; 2 uses
  %.not.i = icmp slt i64 %i.bo, %i.m
  br i1 %.not.i, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb0EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_T2_.exit, label %.lr.ph.i19, !llvm.loop !3606

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb0EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_T2_.exit: ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb0EEEE4dumpEvEUlRKS8_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit, %bb.b
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %i.o, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb0EEEE4dumpEvEUlRKS8_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.b ], [ %.08.lcssa.i.i.i.i.i12.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb0EEEE4dumpEvEUlRKS8_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit ]
  %.lcssa.i = phi i64 [ %i.d, %bb.b ], [ %i.bo, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb0EEEE4dumpEvEUlRKS8_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.061, i64 %.lcssa.i)
  %i.bp = getelementptr inbounds [8 x i8], ptr %.sroa.022.0.lcssa.i, i64 %.sroa.speculated.i ; 2 uses
  tail call fastcc void @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb0EEEE4dumpEvEUlRKS8_SO_E_EEET0_T_SS_SS_SS_SR_T1_(ptr %.sroa.022.0.lcssa.i, ptr %i.bp, ptr %i.bp, ptr %1, ptr noundef %.0.lcssa.i, ptr readonly %3)
  %i.bq = shl nsw i64 %.061, 2                    ; 4 uses
  %.not28.i = icmp slt i64 %i.d, %i.bq
  br i1 %.not28.i, label %_ZSt17__merge_sort_loopIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb0EEEE4dumpEvEUlRKS6_SO_E_EEEvT_SR_T0_T1_T2_.exit, label %.lr.ph.i20.preheader

.lr.ph.i20.preheader:                             ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb0EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_T2_.exit
  %.idx47 = shl nsw i64 %.061, 4                  ; 2 uses
  %.idx48 = shl nsw i64 %.061, 5                  ; 2 uses
  %.not49 = icmp eq i64 %.idx47, %.idx48
  br label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %.lr.ph.i20.preheader, %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb0EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit
  %.sroa.021.030.i = phi ptr [ %i.dx, %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb0EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit ], [ %0, %.lr.ph.i20.preheader ] ; 2 uses
  %.029.i = phi ptr [ %i.bs, %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb0EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit ], [ %2, %.lr.ph.i20.preheader ] ; 4 uses
  %i.br = getelementptr inbounds i8, ptr %.029.i, i64 %.idx47 ; 4 uses
  %i.bs = getelementptr inbounds i8, ptr %.029.i, i64 %.idx48 ; 4 uses
  br i1 %.not49, label %._crit_edge.i, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %.lr.ph.i20, %bb.h
  %.036.i = phi ptr [ %.1.i, %bb.h ], [ %.029.i, %.lr.ph.i20 ] ; 4 uses
  %.01635.i = phi ptr [ %.117.i, %bb.h ], [ %i.br, %.lr.ph.i20 ] ; 4 uses
  %.sroa.030.034.i = phi ptr [ %i.cm, %bb.h ], [ %.sroa.021.030.i, %.lr.ph.i20 ] ; 5 uses
  %.016.val.i = load ptr, ptr %.01635.i, align 8, !tbaa !171 ; 2 uses
  %.0.val.i = load ptr, ptr %.036.i, align 8, !tbaa !171 ; 2 uses
  %.val.val.i39 = load ptr, ptr %3, align 8, !tbaa !153 ; 2 uses
  %i.bt = getelementptr i8, ptr %.016.val.i, i64 184
  %.016.val.val.i = load i32, ptr %i.bt, align 8, !tbaa !240
  %i.bu = getelementptr i8, ptr %.0.val.i, i64 184
  %.0.val.val.i = load i32, ptr %i.bu, align 8, !tbaa !240
  %i.bv = zext i32 %.016.val.val.i to i64
  %i.bw = getelementptr inbounds nuw [40 x i8], ptr %.val.val.i39, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %.0.copyload.i.i.i.i.i.i40 = load i32, ptr %i.bx, align 1
  %i.by = zext i32 %.0.val.val.i to i64
  %i.bz = getelementptr inbounds nuw [40 x i8], ptr %.val.val.i39, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %.0.copyload.i.i.i3.i.i.i41 = load i32, ptr %i.ca, align 1
  %i.cb = icmp ult i32 %.0.copyload.i.i.i.i.i.i40, %.0.copyload.i.i.i3.i.i.i41
  br i1 %i.cb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i38
  store ptr null, ptr %.01635.i, align 8, !tbaa !171
  %i.cc = load ptr, ptr %.sroa.030.034.i, align 8, !tbaa !171 ; 3 uses
  store ptr %.016.val.i, ptr %.sroa.030.034.i, align 8, !tbaa !171
  %.not.i.i.i.i.i42 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i42, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i44, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i43

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i43: ; preds = %bb.f
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !167
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(49) %i.cc) #22, !inline_history !3607
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i44

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i44: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i43, %bb.f
  %i.cg = getelementptr inbounds nuw i8, ptr %.01635.i, i64 8
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i38
  store ptr null, ptr %.036.i, align 8, !tbaa !171
  %i.ch = load ptr, ptr %.sroa.030.034.i, align 8, !tbaa !171 ; 3 uses
  store ptr %.0.val.i, ptr %.sroa.030.034.i, align 8, !tbaa !171
  %.not.i.i.i.i18.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i18.i, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit20.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i19.i

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i19.i: ; preds = %bb.g
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !167
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(49) %i.ch) #22, !inline_history !3607
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit20.i

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit20.i: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i19.i, %bb.g
  %i.cl = getelementptr inbounds nuw i8, ptr %.036.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit20.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i44
  %.117.i = phi ptr [ %i.cg, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i44 ], [ %.01635.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit20.i ] ; 3 uses
  %.1.i = phi ptr [ %.036.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i44 ], [ %i.cl, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit20.i ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.030.034.i, i64 8 ; 2 uses
  %i.cn = icmp ne ptr %.1.i, %i.br
  %i.co = icmp ne ptr %.117.i, %i.bs
  %i.cp = select i1 %i.cn, i1 %i.co, i1 false
  br i1 %i.cp, label %.lr.ph.i38, label %._crit_edge.i, !llvm.loop !32

._crit_edge.i:                                    ; preds = %bb.h, %.lr.ph.i20
  %.sroa.030.0.lcssa.i = phi ptr [ %.sroa.021.030.i, %.lr.ph.i20 ], [ %i.cm, %bb.h ] ; 4 uses
  %.016.lcssa.i = phi ptr [ %i.br, %.lr.ph.i20 ], [ %.117.i, %bb.h ] ; 2 uses
  %.0.lcssa.i29 = phi ptr [ %.029.i, %.lr.ph.i20 ], [ %.1.i, %bb.h ] ; 2 uses
  %i.cq = ptrtoint ptr %i.br to i64
  %i.cr = ptrtoint ptr %.0.lcssa.i29 to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 3                 ; 2 uses
  %i.cu = icmp sgt i64 %i.ct, 0
  br i1 %i.cu, label %.lr.ph.i.i.i.i.i.i31, label %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i

.lr.ph.i.i.i.i.i.i31:                             ; preds = %._crit_edge.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37
  %.012.i.i.i.i.i.i32 = phi i64 [ %i.dc, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37 ], [ %i.ct, %._crit_edge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i33 = phi ptr [ %i.db, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37 ], [ %.sroa.030.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i34 = phi ptr [ %i.da, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37 ], [ %.0.lcssa.i29, %._crit_edge.i ] ; 3 uses
  %i.cv = load ptr, ptr %.0910.i.i.i.i.i.i34, align 8, !tbaa !171
  store ptr null, ptr %.0910.i.i.i.i.i.i34, align 8, !tbaa !171
  %i.cw = load ptr, ptr %.0811.i.i.i.i.i.i33, align 8, !tbaa !171 ; 3 uses
  store ptr %i.cv, ptr %.0811.i.i.i.i.i.i33, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i.i35 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i35, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i36

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i36: ; preds = %.lr.ph.i.i.i.i.i.i31
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !167
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  tail call void %i.cz(ptr noundef nonnull align 8 dereferenceable(49) %i.cw) #22, !inline_history !3608
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i36, %.lr.ph.i.i.i.i.i.i31
  %i.da = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i34, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i33, i64 8 ; 2 uses
  %i.dc = add nsw i64 %.012.i.i.i.i.i.i32, -1
  %i.dd = icmp sgt i64 %.012.i.i.i.i.i.i32, 1
  br i1 %i.dd, label %.lr.ph.i.i.i.i.i.i31, label %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i, !llvm.loop !31

_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i: ; preds = %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i30 = phi ptr [ %.sroa.030.0.lcssa.i, %._crit_edge.i ], [ %i.db, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37 ]
  %i.de = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30 to i64 ; 3 uses
  %i.df = ptrtoint ptr %.sroa.030.0.lcssa.i to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = getelementptr inbounds i8, ptr %.sroa.030.0.lcssa.i, i64 %i.dg ; 2 uses
  %i.di = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.dj = ptrtoint ptr %.016.lcssa.i to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = ashr exact i64 %i.dk, 3                 ; 2 uses
  %i.dm = icmp sgt i64 %i.dl, 0
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i22.i, label %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb0EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit

.lr.ph.i.i.i.i.i22.i:                             ; preds = %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i
  %.012.i.i.i.i.i23.i = phi i64 [ %i.du, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i ], [ %i.dl, %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i24.i = phi ptr [ %i.dt, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i ], [ %i.dh, %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i ] ; 3 uses
  %.0910.i.i.i.i.i25.i = phi ptr [ %i.ds, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i ], [ %.016.lcssa.i, %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i ] ; 3 uses
  %i.dn = load ptr, ptr %.0910.i.i.i.i.i25.i, align 8, !tbaa !171
  store ptr null, ptr %.0910.i.i.i.i.i25.i, align 8, !tbaa !171
  %i.do = load ptr, ptr %.0811.i.i.i.i.i24.i, align 8, !tbaa !171 ; 3 uses
  store ptr %i.dn, ptr %.0811.i.i.i.i.i24.i, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i26.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i.i.i.i.i.i.i26.i, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i27.i

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i27.i: ; preds = %.lr.ph.i.i.i.i.i22.i
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !167
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  tail call void %i.dr(ptr noundef nonnull align 8 dereferenceable(49) %i.do) #22, !inline_history !3608
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i27.i, %.lr.ph.i.i.i.i.i22.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25.i, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i, i64 8 ; 2 uses
  %i.du = add nsw i64 %.012.i.i.i.i.i23.i, -1
  %i.dv = icmp sgt i64 %.012.i.i.i.i.i23.i, 1
  br i1 %i.dv, label %.lr.ph.i.i.i.i.i22.i, label %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit29.loopexit.i, !llvm.loop !31

_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit29.loopexit.i: ; preds = %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i
  %4 = ptrtoint ptr %i.dt to i64
  br label %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb0EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit

_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb0EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit: ; preds = %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i, %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit29.loopexit.i
  %.08.lcssa.i.i.i.i.i21.i = phi i64 [ %i.de, %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i ], [ %4, %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit29.loopexit.i ]
  %i.dw = sub i64 %.08.lcssa.i.i.i.i.i21.i, %i.de
  %i.dx = getelementptr inbounds i8, ptr %i.dh, i64 %i.dw ; 2 uses
  %i.dy = sub i64 %i.l, %i.di
  %i.dz = ashr exact i64 %i.dy, 3                 ; 2 uses
  %.not.i21 = icmp slt i64 %i.dz, %i.bq
  br i1 %.not.i21, label %_ZSt17__merge_sort_loopIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb0EEEE4dumpEvEUlRKS6_SO_E_EEEvT_SR_T0_T1_T2_.exit, label %.lr.ph.i20, !llvm.loop !3609

_ZSt17__merge_sort_loopIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb0EEEE4dumpEvEUlRKS6_SO_E_EEEvT_SR_T0_T1_T2_.exit: ; preds = %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb0EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb0EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_T2_.exit
  %.0.lcssa.i22 = phi ptr [ %2, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb0EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_T2_.exit ], [ %i.bs, %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb0EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit ] ; 2 uses
  %.sroa.021.0.lcssa.i = phi ptr [ %0, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb0EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_T2_.exit ], [ %i.dx, %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb0EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit ]
  %.lcssa.i23 = phi i64 [ %i.d, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb0EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_T2_.exit ], [ %i.dz, %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb0EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit ]
  %.sroa.speculated.i24 = tail call i64 @llvm.smin.i64(i64 %i.m, i64 %.lcssa.i23)
  %i.ea = getelementptr inbounds [8 x i8], ptr %.0.lcssa.i22, i64 %.sroa.speculated.i24 ; 2 uses
  tail call fastcc void @_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb0EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_(ptr noundef %.0.lcssa.i22, ptr noundef %i.ea, ptr noundef %i.ea, ptr noundef %i.e, ptr %.sroa.021.0.lcssa.i, ptr readonly %3)
  %i.eb = icmp slt i64 %i.bq, %i.d
  br i1 %i.eb, label %bb.b, label %._crit_edge, !llvm.loop !3610

._crit_edge:                                      ; preds = %_ZSt17__merge_sort_loopIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb0EEEE4dumpEvEUlRKS6_SO_E_EEEvT_SR_T0_T1_T2_.exit, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb0EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb0EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_SR_T0_SS_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %6 to ptr                   ; 2 uses
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb0EEEE4dumpEvEUlRKS6_SO_E_EEEvT_SR_T0_SS_T1_T2_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.n, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.m, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %5, %bb.b ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.l, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %0, %bb.b ] ; 3 uses
  %i.g = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !171
  store ptr null, ptr %.0910.i.i.i.i.i, align 8, !tbaa !171
  %i.h = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !171 ; 3 uses
  store ptr %i.g, ptr %.0811.i.i.i.i.i, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !167
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(49) %i.h) #22, !inline_history !33
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 3 uses
  %i.n = add nsw i64 %.012.i.i.i.i.i, -1
  %i.o = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.o, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !31

.lr.ph.i:                                         ; preds = %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i, %bb.f
  %.030.i = phi ptr [ %.1.i, %bb.f ], [ %5, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ] ; 6 uses
  %.sroa.020.029.i = phi ptr [ %.sroa.020.1.i, %bb.f ], [ %1, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ] ; 5 uses
  %.sroa.016.028.i = phi ptr [ %i.ai, %bb.f ], [ %0, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ] ; 6 uses
  %.not23.i = icmp eq ptr %.sroa.020.029.i, %2
  br i1 %.not23.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %.0.val.i = load ptr, ptr %.030.i, align 8, !tbaa !171 ; 2 uses
  %.val.val.i = load ptr, ptr %i.a, align 8, !tbaa !153 ; 2 uses
  %i.p = getelementptr i8, ptr %.0.val.i, i64 184
  %.0.val.val.i = load i32, ptr %i.p, align 8, !tbaa !240
  %.val2.i.i = load ptr, ptr %.sroa.020.029.i, align 8, !tbaa !171 ; 2 uses
  %i.q = getelementptr i8, ptr %.val2.i.i, i64 184
  %.val2.val.i.i = load i32, ptr %i.q, align 8, !tbaa !240
  %i.r = zext i32 %.val2.val.i.i to i64
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %.val.val.i, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.t, align 1
  %i.u = zext i32 %.0.val.val.i to i64
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %.val.val.i, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.0.copyload.i.i.i3.i.i.i = load i32, ptr %i.w, align 1
  %i.x = icmp ult i32 %.0.copyload.i.i.i.i.i.i, %.0.copyload.i.i.i3.i.i.i
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %.sroa.020.029.i, align 8, !tbaa !171
  %i.y = load ptr, ptr %.sroa.016.028.i, align 8, !tbaa !171 ; 3 uses
  store ptr %.val2.i.i, ptr %.sroa.016.028.i, align 8, !tbaa !171
  %.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.d
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !167
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(49) %i.y) #22, !inline_history !3611
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.020.029.i, i64 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr null, ptr %.030.i, align 8, !tbaa !171
  %i.ad = load ptr, ptr %.sroa.016.028.i, align 8, !tbaa !171 ; 3 uses
  store ptr %.0.val.i, ptr %.sroa.016.028.i, align 8, !tbaa !171
  %.not.i.i.i.i13.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i13.i, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit15.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i14.i

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i14.i: ; preds = %bb.e
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !167
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(49) %i.ad) #22, !inline_history !3611
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit15.i

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit15.i: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i14.i, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.030.i, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit15.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i
  %.sroa.020.1.i = phi ptr [ %i.ac, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i ], [ %.sroa.020.029.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit15.i ]
  %.1.i = phi ptr [ %.030.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i ], [ %i.ah, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit15.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.016.028.i, i64 8
  %.not.i = icmp eq ptr %.1.i, %i.m
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb0EEEE4dumpEvEUlRKS6_SO_E_EEEvT_SR_T0_SS_T1_T2_.exit, label %.lr.ph.i, !llvm.loop !3612

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.aj = ptrtoint ptr %i.m to i64
  %i.ak = ptrtoint ptr %.030.i to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 3                 ; 2 uses
  %i.an = icmp sgt i64 %i.am, 0
  br i1 %i.an, label %.lr.ph.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb0EEEE4dumpEvEUlRKS6_SO_E_EEEvT_SR_T0_SS_T1_T2_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %.critedge.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.av, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %i.am, %.critedge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.au, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %.sroa.016.028.i, %.critedge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.at, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %.030.i, %.critedge.i ] ; 3 uses
  %i.ao = load ptr, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !171
  store ptr null, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !171
  %i.ap = load ptr, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !171 ; 3 uses
  store ptr %i.ao, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !167
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(49) %i.ap) #22, !inline_history !3613
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  %i.av = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.aw = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb0EEEE4dumpEvEUlRKS6_SO_E_EEEvT_SR_T0_SS_T1_T2_.exit, !llvm.loop !31

bb.g:                                             ; preds = %bb.a
  %i.ax = ptrtoint ptr %2 to i64
  %i.ay = ptrtoint ptr %1 to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 3                 ; 2 uses
  %i.bb = icmp sgt i64 %i.ba, 0
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i23, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit30

.lr.ph.i.i.i.i.i23:                               ; preds = %bb.g, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29
  %.012.i.i.i.i.i24 = phi i64 [ %i.bj, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29 ], [ %i.ba, %bb.g ] ; 2 uses
  %.0811.i.i.i.i.i25 = phi ptr [ %i.bi, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29 ], [ %5, %bb.g ] ; 3 uses
  %.0910.i.i.i.i.i26 = phi ptr [ %i.bh, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29 ], [ %1, %bb.g ] ; 3 uses
  %i.bc = load ptr, ptr %.0910.i.i.i.i.i26, align 8, !tbaa !171
  store ptr null, ptr %.0910.i.i.i.i.i26, align 8, !tbaa !171
  %i.bd = load ptr, ptr %.0811.i.i.i.i.i25, align 8, !tbaa !171 ; 3 uses
  store ptr %i.bc, ptr %.0811.i.i.i.i.i25, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i27 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i27, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i28

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i28: ; preds = %.lr.ph.i.i.i.i.i23
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !167
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(49) %i.bd) #22, !inline_history !33
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i28, %.lr.ph.i.i.i.i.i23
  %i.bh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 8 ; 2 uses
  %i.bj = add nsw i64 %.012.i.i.i.i.i24, -1
  %i.bk = icmp sgt i64 %.012.i.i.i.i.i24, 1
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i23, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit30, !llvm.loop !31

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit30: ; preds = %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29, %bb.g
  %.08.lcssa.i.i.i.i.i22 = phi ptr [ %5, %bb.g ], [ %i.bi, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29 ] ; 4 uses
  %i.bl = icmp eq ptr %0, %1
  br i1 %i.bl, label %bb.h, label %bb.i

end_hunk_0
begin_hunk_1_@_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb0EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_:bb.a
  %i.ar = icmp sgt i64 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.critedge.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.az, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %i.aq, %.critedge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.ay, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %.0.lcssa.i26, %.critedge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.ax, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %.sroa.026.0.lcssa.i, %.critedge.i ] ; 3 uses
  %i.as = load ptr, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !171
  store ptr null, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !171
  %i.at = load ptr, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !171 ; 3 uses
  store ptr %i.as, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !167
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(49) %i.at) #22, !inline_history !5528
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.az = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ba = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i, !llvm.loop !31

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i: ; preds = %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i, %.critedge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.0.lcssa.i26, %.critedge.i ], [ %i.ay, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.bb = ptrtoint ptr %i.o to i64                ; 2 uses
  %i.bc = ptrtoint ptr %.sroa.022.0.lcssa.i25 to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 3                 ; 2 uses
  %i.bf = icmp sgt i64 %i.be, 0
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i13.i, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb0EEEE4dumpEvEUlRKS8_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit

.lr.ph.i.i.i.i.i13.i:                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i
  %.012.i.i.i.i.i14.i = phi i64 [ %i.bn, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i ], [ %i.be, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i15.i = phi ptr [ %i.bm, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i ], [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i ] ; 3 uses
  %.0910.i.i.i.i.i16.i = phi ptr [ %i.bl, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i ], [ %.sroa.022.0.lcssa.i25, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i ] ; 3 uses
  %i.bg = load ptr, ptr %.0910.i.i.i.i.i16.i, align 8, !tbaa !171
  store ptr null, ptr %.0910.i.i.i.i.i16.i, align 8, !tbaa !171
  %i.bh = load ptr, ptr %.0811.i.i.i.i.i15.i, align 8, !tbaa !171 ; 3 uses
  store ptr %i.bg, ptr %.0811.i.i.i.i.i15.i, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i17.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i17.i, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i18.i

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i18.i: ; preds = %.lr.ph.i.i.i.i.i13.i
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !167
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(49) %i.bh) #22, !inline_history !5528
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i18.i, %.lr.ph.i.i.i.i.i13.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16.i, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i15.i, i64 8 ; 2 uses
  %i.bn = add nsw i64 %.012.i.i.i.i.i14.i, -1
  %i.bo = icmp sgt i64 %.012.i.i.i.i.i14.i, 1
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i13.i, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb0EEEE4dumpEvEUlRKS8_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit, !llvm.loop !31

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb0EEEE4dumpEvEUlRKS8_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit: ; preds = %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i
  %.08.lcssa.i.i.i.i.i12.i = phi ptr [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i ], [ %i.bm, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i ] ; 2 uses
  %i.bp = sub i64 %i.a, %i.bb
  %i.bq = ashr exact i64 %i.bp, 3                 ; 2 uses
  %.not.i = icmp slt i64 %i.bq, %i.m
  br i1 %.not.i, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb0EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_T2_.exit, label %.lr.ph.i19, !llvm.loop !5529

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb0EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_T2_.exit: ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb0EEEE4dumpEvEUlRKS8_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit, %bb.b
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %i.o, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb0EEEE4dumpEvEUlRKS8_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.b ], [ %.08.lcssa.i.i.i.i.i12.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb0EEEE4dumpEvEUlRKS8_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit ]
  %.lcssa.i = phi i64 [ %i.d, %bb.b ], [ %i.bq, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb0EEEE4dumpEvEUlRKS8_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.061, i64 %.lcssa.i)
  %i.br = getelementptr inbounds [8 x i8], ptr %.sroa.022.0.lcssa.i, i64 %.sroa.speculated.i ; 2 uses
  tail call fastcc void @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb0EEEE4dumpEvEUlRKS8_SO_E_EEET0_T_SS_SS_SS_SR_T1_(ptr %.sroa.022.0.lcssa.i, ptr %i.br, ptr %i.br, ptr %1, ptr noundef %.0.lcssa.i, ptr readonly %3)
  %i.bs = shl nsw i64 %.061, 2                    ; 4 uses
  %.not28.i = icmp slt i64 %i.d, %i.bs
  br i1 %.not28.i, label %_ZSt17__merge_sort_loopIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb0EEEE4dumpEvEUlRKS6_SO_E_EEEvT_SR_T0_T1_T2_.exit, label %.lr.ph.i20.preheader

.lr.ph.i20.preheader:                             ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb0EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_T2_.exit
  %.idx47 = shl nsw i64 %.061, 4                  ; 2 uses
  %.idx48 = shl nsw i64 %.061, 5                  ; 2 uses
  %.not49 = icmp eq i64 %.idx47, %.idx48
  br label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %.lr.ph.i20.preheader, %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb0EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit
  %.sroa.021.030.i = phi ptr [ %i.eb, %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb0EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit ], [ %0, %.lr.ph.i20.preheader ] ; 2 uses
  %.029.i = phi ptr [ %i.bu, %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb0EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit ], [ %2, %.lr.ph.i20.preheader ] ; 4 uses
  %i.bt = getelementptr inbounds i8, ptr %.029.i, i64 %.idx47 ; 4 uses
  %i.bu = getelementptr inbounds i8, ptr %.029.i, i64 %.idx48 ; 4 uses
  br i1 %.not49, label %._crit_edge.i, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %.lr.ph.i20, %bb.h
  %.036.i = phi ptr [ %.1.i, %bb.h ], [ %.029.i, %.lr.ph.i20 ] ; 4 uses
  %.01635.i = phi ptr [ %.117.i, %bb.h ], [ %i.bt, %.lr.ph.i20 ] ; 4 uses
  %.sroa.030.034.i = phi ptr [ %i.cq, %bb.h ], [ %.sroa.021.030.i, %.lr.ph.i20 ] ; 5 uses
  %.016.val.i = load ptr, ptr %.01635.i, align 8, !tbaa !171 ; 2 uses
  %.0.val.i = load ptr, ptr %.036.i, align 8, !tbaa !171 ; 2 uses
  %.val.val.i39 = load ptr, ptr %3, align 8, !tbaa !359 ; 2 uses
  %i.bv = getelementptr i8, ptr %.016.val.i, i64 184
  %.016.val.val.i = load i32, ptr %i.bv, align 8, !tbaa !240
  %i.bw = getelementptr i8, ptr %.0.val.i, i64 184
  %.0.val.val.i = load i32, ptr %i.bw, align 8, !tbaa !240
  %i.bx = zext i32 %.016.val.val.i to i64
  %i.by = getelementptr inbounds nuw [40 x i8], ptr %.val.val.i39, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %.0.copyload.i.i.i.i.i.i40 = load i32, ptr %i.bz, align 1
  %i.ca = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i40)
  %i.cb = zext i32 %.0.val.val.i to i64
  %i.cc = getelementptr inbounds nuw [40 x i8], ptr %.val.val.i39, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %.0.copyload.i.i.i3.i.i.i41 = load i32, ptr %i.cd, align 1
  %i.ce = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i3.i.i.i41)
  %i.cf = icmp ult i32 %i.ca, %i.ce
  br i1 %i.cf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i38
  store ptr null, ptr %.01635.i, align 8, !tbaa !171
  %i.cg = load ptr, ptr %.sroa.030.034.i, align 8, !tbaa !171 ; 3 uses
  store ptr %.016.val.i, ptr %.sroa.030.034.i, align 8, !tbaa !171
  %.not.i.i.i.i.i42 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i.i42, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i44, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i43

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i43: ; preds = %bb.f
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !167
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  tail call void %i.cj(ptr noundef nonnull align 8 dereferenceable(49) %i.cg) #22, !inline_history !5530
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i44

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i44: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i43, %bb.f
  %i.ck = getelementptr inbounds nuw i8, ptr %.01635.i, i64 8
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i38
  store ptr null, ptr %.036.i, align 8, !tbaa !171
  %i.cl = load ptr, ptr %.sroa.030.034.i, align 8, !tbaa !171 ; 3 uses
  store ptr %.0.val.i, ptr %.sroa.030.034.i, align 8, !tbaa !171
  %.not.i.i.i.i18.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i18.i, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit20.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i19.i

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i19.i: ; preds = %bb.g
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !167
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  tail call void %i.co(ptr noundef nonnull align 8 dereferenceable(49) %i.cl) #22, !inline_history !5530
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit20.i

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit20.i: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i19.i, %bb.g
  %i.cp = getelementptr inbounds nuw i8, ptr %.036.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit20.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i44
  %.117.i = phi ptr [ %i.ck, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i44 ], [ %.01635.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit20.i ] ; 3 uses
  %.1.i = phi ptr [ %.036.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i44 ], [ %i.cp, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit20.i ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.030.034.i, i64 8 ; 2 uses
  %i.cr = icmp ne ptr %.1.i, %i.bt
  %i.cs = icmp ne ptr %.117.i, %i.bu
  %i.ct = select i1 %i.cr, i1 %i.cs, i1 false
  br i1 %i.ct, label %.lr.ph.i38, label %._crit_edge.i, !llvm.loop !56

._crit_edge.i:                                    ; preds = %bb.h, %.lr.ph.i20
  %.sroa.030.0.lcssa.i = phi ptr [ %.sroa.021.030.i, %.lr.ph.i20 ], [ %i.cq, %bb.h ] ; 4 uses
  %.016.lcssa.i = phi ptr [ %i.bt, %.lr.ph.i20 ], [ %.117.i, %bb.h ] ; 2 uses
  %.0.lcssa.i29 = phi ptr [ %.029.i, %.lr.ph.i20 ], [ %.1.i, %bb.h ] ; 2 uses
  %i.cu = ptrtoint ptr %i.bt to i64
  %i.cv = ptrtoint ptr %.0.lcssa.i29 to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = ashr exact i64 %i.cw, 3                 ; 2 uses
  %i.cy = icmp sgt i64 %i.cx, 0
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i.i31, label %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i

.lr.ph.i.i.i.i.i.i31:                             ; preds = %._crit_edge.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37
  %.012.i.i.i.i.i.i32 = phi i64 [ %i.dg, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37 ], [ %i.cx, %._crit_edge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i33 = phi ptr [ %i.df, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37 ], [ %.sroa.030.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i34 = phi ptr [ %i.de, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37 ], [ %.0.lcssa.i29, %._crit_edge.i ] ; 3 uses
  %i.cz = load ptr, ptr %.0910.i.i.i.i.i.i34, align 8, !tbaa !171
  store ptr null, ptr %.0910.i.i.i.i.i.i34, align 8, !tbaa !171
  %i.da = load ptr, ptr %.0811.i.i.i.i.i.i33, align 8, !tbaa !171 ; 3 uses
  store ptr %i.cz, ptr %.0811.i.i.i.i.i.i33, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i.i35 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i35, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i36

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i36: ; preds = %.lr.ph.i.i.i.i.i.i31
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !167
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  tail call void %i.dd(ptr noundef nonnull align 8 dereferenceable(49) %i.da) #22, !inline_history !5531
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i36, %.lr.ph.i.i.i.i.i.i31
  %i.de = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i34, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i33, i64 8 ; 2 uses
  %i.dg = add nsw i64 %.012.i.i.i.i.i.i32, -1
  %i.dh = icmp sgt i64 %.012.i.i.i.i.i.i32, 1
  br i1 %i.dh, label %.lr.ph.i.i.i.i.i.i31, label %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i, !llvm.loop !31

_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i: ; preds = %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i30 = phi ptr [ %.sroa.030.0.lcssa.i, %._crit_edge.i ], [ %i.df, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37 ]
  %i.di = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30 to i64 ; 3 uses
  %i.dj = ptrtoint ptr %.sroa.030.0.lcssa.i to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = getelementptr inbounds i8, ptr %.sroa.030.0.lcssa.i, i64 %i.dk ; 2 uses
  %i.dm = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.dn = ptrtoint ptr %.016.lcssa.i to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = ashr exact i64 %i.do, 3                 ; 2 uses
  %i.dq = icmp sgt i64 %i.dp, 0
  br i1 %i.dq, label %.lr.ph.i.i.i.i.i22.i, label %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb0EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit

.lr.ph.i.i.i.i.i22.i:                             ; preds = %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i
  %.012.i.i.i.i.i23.i = phi i64 [ %i.dy, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i ], [ %i.dp, %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i24.i = phi ptr [ %i.dx, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i ], [ %i.dl, %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i ] ; 3 uses
  %.0910.i.i.i.i.i25.i = phi ptr [ %i.dw, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i ], [ %.016.lcssa.i, %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i ] ; 3 uses
  %i.dr = load ptr, ptr %.0910.i.i.i.i.i25.i, align 8, !tbaa !171
  store ptr null, ptr %.0910.i.i.i.i.i25.i, align 8, !tbaa !171
  %i.ds = load ptr, ptr %.0811.i.i.i.i.i24.i, align 8, !tbaa !171 ; 3 uses
  store ptr %i.dr, ptr %.0811.i.i.i.i.i24.i, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i26.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i.i.i.i.i.i.i26.i, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i27.i

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i27.i: ; preds = %.lr.ph.i.i.i.i.i22.i
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !167
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  tail call void %i.dv(ptr noundef nonnull align 8 dereferenceable(49) %i.ds) #22, !inline_history !5531
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i27.i, %.lr.ph.i.i.i.i.i22.i
  %i.dw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25.i, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i, i64 8 ; 2 uses
  %i.dy = add nsw i64 %.012.i.i.i.i.i23.i, -1
  %i.dz = icmp sgt i64 %.012.i.i.i.i.i23.i, 1
  br i1 %i.dz, label %.lr.ph.i.i.i.i.i22.i, label %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit29.loopexit.i, !llvm.loop !31

_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit29.loopexit.i: ; preds = %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i
  %4 = ptrtoint ptr %i.dx to i64
  br label %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb0EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit

_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb0EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit: ; preds = %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i, %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit29.loopexit.i
  %.08.lcssa.i.i.i.i.i21.i = phi i64 [ %i.di, %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i ], [ %4, %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit29.loopexit.i ]
  %i.ea = sub i64 %.08.lcssa.i.i.i.i.i21.i, %i.di
  %i.eb = getelementptr inbounds i8, ptr %i.dl, i64 %i.ea ; 2 uses
  %i.ec = sub i64 %i.l, %i.dm
  %i.ed = ashr exact i64 %i.ec, 3                 ; 2 uses
  %.not.i21 = icmp slt i64 %i.ed, %i.bs
  br i1 %.not.i21, label %_ZSt17__merge_sort_loopIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb0EEEE4dumpEvEUlRKS6_SO_E_EEEvT_SR_T0_T1_T2_.exit, label %.lr.ph.i20, !llvm.loop !5532

_ZSt17__merge_sort_loopIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb0EEEE4dumpEvEUlRKS6_SO_E_EEEvT_SR_T0_T1_T2_.exit: ; preds = %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb0EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb0EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_T2_.exit
  %.0.lcssa.i22 = phi ptr [ %2, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb0EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_T2_.exit ], [ %i.bu, %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb0EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit ] ; 2 uses
  %.sroa.021.0.lcssa.i = phi ptr [ %0, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb0EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_T2_.exit ], [ %i.eb, %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb0EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit ]
  %.lcssa.i23 = phi i64 [ %i.d, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb0EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_T2_.exit ], [ %i.ed, %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb0EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit ]
  %.sroa.speculated.i24 = tail call i64 @llvm.smin.i64(i64 %i.m, i64 %.lcssa.i23)
  %i.ee = getelementptr inbounds [8 x i8], ptr %.0.lcssa.i22, i64 %.sroa.speculated.i24 ; 2 uses
  tail call fastcc void @_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb0EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_(ptr noundef %.0.lcssa.i22, ptr noundef %i.ee, ptr noundef %i.ee, ptr noundef %i.e, ptr %.sroa.021.0.lcssa.i, ptr readonly %3)
  %i.ef = icmp slt i64 %i.bs, %i.d
  br i1 %i.ef, label %bb.b, label %._crit_edge, !llvm.loop !5533

._crit_edge:                                      ; preds = %_ZSt17__merge_sort_loopIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb0EEEE4dumpEvEUlRKS6_SO_E_EEEvT_SR_T0_T1_T2_.exit, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb0EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb0EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_SR_T0_SS_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %6 to ptr                   ; 2 uses
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb0EEEE4dumpEvEUlRKS6_SO_E_EEEvT_SR_T0_SS_T1_T2_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.n, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.m, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %5, %bb.b ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.l, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %0, %bb.b ] ; 3 uses
  %i.g = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !171
  store ptr null, ptr %.0910.i.i.i.i.i, align 8, !tbaa !171
  %i.h = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !171 ; 3 uses
  store ptr %i.g, ptr %.0811.i.i.i.i.i, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !167
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(49) %i.h) #22, !inline_history !33
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 3 uses
  %i.n = add nsw i64 %.012.i.i.i.i.i, -1
  %i.o = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.o, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !31

.lr.ph.i:                                         ; preds = %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i, %bb.f
  %.030.i = phi ptr [ %.1.i, %bb.f ], [ %5, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ] ; 6 uses
  %.sroa.020.029.i = phi ptr [ %.sroa.020.1.i, %bb.f ], [ %1, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ] ; 5 uses
  %.sroa.016.028.i = phi ptr [ %i.ak, %bb.f ], [ %0, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ] ; 6 uses
  %.not23.i = icmp eq ptr %.sroa.020.029.i, %2
  br i1 %.not23.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %.0.val.i = load ptr, ptr %.030.i, align 8, !tbaa !171 ; 2 uses
  %.val.val.i = load ptr, ptr %i.a, align 8, !tbaa !359 ; 2 uses
  %i.p = getelementptr i8, ptr %.0.val.i, i64 184
  %.0.val.val.i = load i32, ptr %i.p, align 8, !tbaa !240
  %.val2.i.i = load ptr, ptr %.sroa.020.029.i, align 8, !tbaa !171 ; 2 uses
  %i.q = getelementptr i8, ptr %.val2.i.i, i64 184
  %.val2.val.i.i = load i32, ptr %i.q, align 8, !tbaa !240
  %i.r = zext i32 %.val2.val.i.i to i64
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %.val.val.i, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.t, align 1
  %i.u = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i)
  %i.v = zext i32 %.0.val.val.i to i64
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %.val.val.i, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.0.copyload.i.i.i3.i.i.i = load i32, ptr %i.x, align 1
  %i.y = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i3.i.i.i)
  %i.z = icmp ult i32 %i.u, %i.y
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %.sroa.020.029.i, align 8, !tbaa !171
  %i.aa = load ptr, ptr %.sroa.016.028.i, align 8, !tbaa !171 ; 3 uses
  store ptr %.val2.i.i, ptr %.sroa.016.028.i, align 8, !tbaa !171
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.d
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !167
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(49) %i.aa) #22, !inline_history !5534
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.020.029.i, i64 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr null, ptr %.030.i, align 8, !tbaa !171
  %i.af = load ptr, ptr %.sroa.016.028.i, align 8, !tbaa !171 ; 3 uses
  store ptr %.0.val.i, ptr %.sroa.016.028.i, align 8, !tbaa !171
  %.not.i.i.i.i13.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i13.i, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit15.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i14.i

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i14.i: ; preds = %bb.e
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !167
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(49) %i.af) #22, !inline_history !5534
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit15.i

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit15.i: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i14.i, %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.030.i, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit15.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i
  %.sroa.020.1.i = phi ptr [ %i.ae, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i ], [ %.sroa.020.029.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit15.i ]
  %.1.i = phi ptr [ %.030.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i ], [ %i.aj, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit15.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.016.028.i, i64 8
  %.not.i = icmp eq ptr %.1.i, %i.m
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb0EEEE4dumpEvEUlRKS6_SO_E_EEEvT_SR_T0_SS_T1_T2_.exit, label %.lr.ph.i, !llvm.loop !5535

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.al = ptrtoint ptr %i.m to i64
  %i.am = ptrtoint ptr %.030.i to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 3                 ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb0EEEE4dumpEvEUlRKS6_SO_E_EEEvT_SR_T0_SS_T1_T2_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %.critedge.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.ax, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %i.ao, %.critedge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.aw, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %.sroa.016.028.i, %.critedge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.av, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %.030.i, %.critedge.i ] ; 3 uses
  %i.aq = load ptr, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !171
  store ptr null, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !171
  %i.ar = load ptr, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !171 ; 3 uses
  store ptr %i.aq, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !167
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(49) %i.ar) #22, !inline_history !5536
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  %i.ax = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ay = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb0EEEE4dumpEvEUlRKS6_SO_E_EEEvT_SR_T0_SS_T1_T2_.exit, !llvm.loop !31

bb.g:                                             ; preds = %bb.a
  %i.az = ptrtoint ptr %2 to i64
  %i.ba = ptrtoint ptr %1 to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3                 ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i23, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit30

.lr.ph.i.i.i.i.i23:                               ; preds = %bb.g, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29
  %.012.i.i.i.i.i24 = phi i64 [ %i.bl, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29 ], [ %i.bc, %bb.g ] ; 2 uses
  %.0811.i.i.i.i.i25 = phi ptr [ %i.bk, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29 ], [ %5, %bb.g ] ; 3 uses
  %.0910.i.i.i.i.i26 = phi ptr [ %i.bj, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29 ], [ %1, %bb.g ] ; 3 uses
  %i.be = load ptr, ptr %.0910.i.i.i.i.i26, align 8, !tbaa !171
  store ptr null, ptr %.0910.i.i.i.i.i26, align 8, !tbaa !171
  %i.bf = load ptr, ptr %.0811.i.i.i.i.i25, align 8, !tbaa !171 ; 3 uses
  store ptr %i.be, ptr %.0811.i.i.i.i.i25, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i27 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i27, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i28

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i28: ; preds = %.lr.ph.i.i.i.i.i23
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !167
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(49) %i.bf) #22, !inline_history !33
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i28, %.lr.ph.i.i.i.i.i23
  %i.bj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 8 ; 2 uses
  %i.bl = add nsw i64 %.012.i.i.i.i.i24, -1
  %i.bm = icmp sgt i64 %.012.i.i.i.i.i24, 1
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i23, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit30, !llvm.loop !31

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit30: ; preds = %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29, %bb.g
  %.08.lcssa.i.i.i.i.i22 = phi ptr [ %5, %bb.g ], [ %i.bk, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29 ] ; 4 uses
  %i.bn = icmp eq ptr %0, %1
end_hunk_1
begin_hunk_2_@_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb1EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_:bb.a
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 3                 ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.critedge.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.ax, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %i.ao, %.critedge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.aw, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %.0.lcssa.i26, %.critedge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.av, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %.sroa.026.0.lcssa.i, %.critedge.i ] ; 3 uses
  %i.aq = load ptr, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !171
  store ptr null, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !171
  %i.ar = load ptr, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !171 ; 3 uses
  store ptr %i.aq, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !167
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(49) %i.ar) #22, !inline_history !7403
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ax = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ay = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i, !llvm.loop !31

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i: ; preds = %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i, %.critedge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.0.lcssa.i26, %.critedge.i ], [ %i.aw, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.az = ptrtoint ptr %i.o to i64                ; 2 uses
  %i.ba = ptrtoint ptr %.sroa.022.0.lcssa.i25 to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3                 ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i13.i, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb1EEEE4dumpEvEUlRKS8_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit

.lr.ph.i.i.i.i.i13.i:                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i
  %.012.i.i.i.i.i14.i = phi i64 [ %i.bl, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i ], [ %i.bc, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i15.i = phi ptr [ %i.bk, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i ], [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i ] ; 3 uses
  %.0910.i.i.i.i.i16.i = phi ptr [ %i.bj, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i ], [ %.sroa.022.0.lcssa.i25, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i ] ; 3 uses
  %i.be = load ptr, ptr %.0910.i.i.i.i.i16.i, align 8, !tbaa !171
  store ptr null, ptr %.0910.i.i.i.i.i16.i, align 8, !tbaa !171
  %i.bf = load ptr, ptr %.0811.i.i.i.i.i15.i, align 8, !tbaa !171 ; 3 uses
  store ptr %i.be, ptr %.0811.i.i.i.i.i15.i, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i17.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i17.i, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i18.i

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i18.i: ; preds = %.lr.ph.i.i.i.i.i13.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !167
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(49) %i.bf) #22, !inline_history !7403
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i18.i, %.lr.ph.i.i.i.i.i13.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16.i, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i15.i, i64 8 ; 2 uses
  %i.bl = add nsw i64 %.012.i.i.i.i.i14.i, -1
  %i.bm = icmp sgt i64 %.012.i.i.i.i.i14.i, 1
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i13.i, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb1EEEE4dumpEvEUlRKS8_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit, !llvm.loop !31

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb1EEEE4dumpEvEUlRKS8_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit: ; preds = %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i
  %.08.lcssa.i.i.i.i.i12.i = phi ptr [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i ], [ %i.bk, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i ] ; 2 uses
  %i.bn = sub i64 %i.a, %i.az
  %i.bo = ashr exact i64 %i.bn, 3                 ; 2 uses
  %.not.i = icmp slt i64 %i.bo, %i.m
  br i1 %.not.i, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb1EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_T2_.exit, label %.lr.ph.i19, !llvm.loop !7404

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb1EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_T2_.exit: ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb1EEEE4dumpEvEUlRKS8_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit, %bb.b
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %i.o, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb1EEEE4dumpEvEUlRKS8_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.b ], [ %.08.lcssa.i.i.i.i.i12.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb1EEEE4dumpEvEUlRKS8_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit ]
  %.lcssa.i = phi i64 [ %i.d, %bb.b ], [ %i.bo, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb1EEEE4dumpEvEUlRKS8_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.061, i64 %.lcssa.i)
  %i.bp = getelementptr inbounds [8 x i8], ptr %.sroa.022.0.lcssa.i, i64 %.sroa.speculated.i ; 2 uses
  tail call fastcc void @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb1EEEE4dumpEvEUlRKS8_SO_E_EEET0_T_SS_SS_SS_SR_T1_(ptr %.sroa.022.0.lcssa.i, ptr %i.bp, ptr %i.bp, ptr %1, ptr noundef %.0.lcssa.i, ptr readonly %3)
  %i.bq = shl nsw i64 %.061, 2                    ; 4 uses
  %.not28.i = icmp slt i64 %i.d, %i.bq
  br i1 %.not28.i, label %_ZSt17__merge_sort_loopIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb1EEEE4dumpEvEUlRKS6_SO_E_EEEvT_SR_T0_T1_T2_.exit, label %.lr.ph.i20.preheader

.lr.ph.i20.preheader:                             ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb1EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_T2_.exit
  %.idx47 = shl nsw i64 %.061, 4                  ; 2 uses
  %.idx48 = shl nsw i64 %.061, 5                  ; 2 uses
  %.not49 = icmp eq i64 %.idx47, %.idx48
  br label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %.lr.ph.i20.preheader, %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb1EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit
  %.sroa.021.030.i = phi ptr [ %i.dx, %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb1EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit ], [ %0, %.lr.ph.i20.preheader ] ; 2 uses
  %.029.i = phi ptr [ %i.bs, %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb1EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit ], [ %2, %.lr.ph.i20.preheader ] ; 4 uses
  %i.br = getelementptr inbounds i8, ptr %.029.i, i64 %.idx47 ; 4 uses
  %i.bs = getelementptr inbounds i8, ptr %.029.i, i64 %.idx48 ; 4 uses
  br i1 %.not49, label %._crit_edge.i, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %.lr.ph.i20, %bb.h
  %.036.i = phi ptr [ %.1.i, %bb.h ], [ %.029.i, %.lr.ph.i20 ] ; 4 uses
  %.01635.i = phi ptr [ %.117.i, %bb.h ], [ %i.br, %.lr.ph.i20 ] ; 4 uses
  %.sroa.030.034.i = phi ptr [ %i.cm, %bb.h ], [ %.sroa.021.030.i, %.lr.ph.i20 ] ; 5 uses
  %.016.val.i = load ptr, ptr %.01635.i, align 8, !tbaa !171 ; 2 uses
  %.0.val.i = load ptr, ptr %.036.i, align 8, !tbaa !171 ; 2 uses
  %.val.val.i39 = load ptr, ptr %3, align 8, !tbaa !378 ; 2 uses
  %i.bt = getelementptr i8, ptr %.016.val.i, i64 184
  %.016.val.val.i = load i32, ptr %i.bt, align 8, !tbaa !240
  %i.bu = getelementptr i8, ptr %.0.val.i, i64 184
  %.0.val.val.i = load i32, ptr %i.bu, align 8, !tbaa !240
  %i.bv = zext i32 %.016.val.val.i to i64
  %i.bw = getelementptr inbounds nuw [64 x i8], ptr %.val.val.i39, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %.0.copyload.i.i.i.i.i.i40 = load i64, ptr %i.bx, align 1
  %i.by = zext i32 %.0.val.val.i to i64
  %i.bz = getelementptr inbounds nuw [64 x i8], ptr %.val.val.i39, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %.0.copyload.i.i.i3.i.i.i41 = load i64, ptr %i.ca, align 1
  %i.cb = icmp ult i64 %.0.copyload.i.i.i.i.i.i40, %.0.copyload.i.i.i3.i.i.i41
  br i1 %i.cb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i38
  store ptr null, ptr %.01635.i, align 8, !tbaa !171
  %i.cc = load ptr, ptr %.sroa.030.034.i, align 8, !tbaa !171 ; 3 uses
  store ptr %.016.val.i, ptr %.sroa.030.034.i, align 8, !tbaa !171
  %.not.i.i.i.i.i42 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i42, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i44, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i43

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i43: ; preds = %bb.f
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !167
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(49) %i.cc) #22, !inline_history !7405
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i44

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i44: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i43, %bb.f
  %i.cg = getelementptr inbounds nuw i8, ptr %.01635.i, i64 8
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i38
  store ptr null, ptr %.036.i, align 8, !tbaa !171
  %i.ch = load ptr, ptr %.sroa.030.034.i, align 8, !tbaa !171 ; 3 uses
  store ptr %.0.val.i, ptr %.sroa.030.034.i, align 8, !tbaa !171
  %.not.i.i.i.i18.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i18.i, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit20.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i19.i

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i19.i: ; preds = %bb.g
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !167
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(49) %i.ch) #22, !inline_history !7405
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit20.i

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit20.i: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i19.i, %bb.g
  %i.cl = getelementptr inbounds nuw i8, ptr %.036.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit20.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i44
  %.117.i = phi ptr [ %i.cg, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i44 ], [ %.01635.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit20.i ] ; 3 uses
  %.1.i = phi ptr [ %.036.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i44 ], [ %i.cl, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit20.i ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.030.034.i, i64 8 ; 2 uses
  %i.cn = icmp ne ptr %.1.i, %i.br
  %i.co = icmp ne ptr %.117.i, %i.bs
  %i.cp = select i1 %i.cn, i1 %i.co, i1 false
  br i1 %i.cp, label %.lr.ph.i38, label %._crit_edge.i, !llvm.loop !62

._crit_edge.i:                                    ; preds = %bb.h, %.lr.ph.i20
  %.sroa.030.0.lcssa.i = phi ptr [ %.sroa.021.030.i, %.lr.ph.i20 ], [ %i.cm, %bb.h ] ; 4 uses
  %.016.lcssa.i = phi ptr [ %i.br, %.lr.ph.i20 ], [ %.117.i, %bb.h ] ; 2 uses
  %.0.lcssa.i29 = phi ptr [ %.029.i, %.lr.ph.i20 ], [ %.1.i, %bb.h ] ; 2 uses
  %i.cq = ptrtoint ptr %i.br to i64
  %i.cr = ptrtoint ptr %.0.lcssa.i29 to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 3                 ; 2 uses
  %i.cu = icmp sgt i64 %i.ct, 0
  br i1 %i.cu, label %.lr.ph.i.i.i.i.i.i31, label %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i

.lr.ph.i.i.i.i.i.i31:                             ; preds = %._crit_edge.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37
  %.012.i.i.i.i.i.i32 = phi i64 [ %i.dc, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37 ], [ %i.ct, %._crit_edge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i33 = phi ptr [ %i.db, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37 ], [ %.sroa.030.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i34 = phi ptr [ %i.da, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37 ], [ %.0.lcssa.i29, %._crit_edge.i ] ; 3 uses
  %i.cv = load ptr, ptr %.0910.i.i.i.i.i.i34, align 8, !tbaa !171
  store ptr null, ptr %.0910.i.i.i.i.i.i34, align 8, !tbaa !171
  %i.cw = load ptr, ptr %.0811.i.i.i.i.i.i33, align 8, !tbaa !171 ; 3 uses
  store ptr %i.cv, ptr %.0811.i.i.i.i.i.i33, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i.i35 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i35, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i36

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i36: ; preds = %.lr.ph.i.i.i.i.i.i31
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !167
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  tail call void %i.cz(ptr noundef nonnull align 8 dereferenceable(49) %i.cw) #22, !inline_history !7406
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i36, %.lr.ph.i.i.i.i.i.i31
  %i.da = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i34, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i33, i64 8 ; 2 uses
  %i.dc = add nsw i64 %.012.i.i.i.i.i.i32, -1
  %i.dd = icmp sgt i64 %.012.i.i.i.i.i.i32, 1
  br i1 %i.dd, label %.lr.ph.i.i.i.i.i.i31, label %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i, !llvm.loop !31

_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i: ; preds = %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i30 = phi ptr [ %.sroa.030.0.lcssa.i, %._crit_edge.i ], [ %i.db, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37 ]
  %i.de = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30 to i64 ; 3 uses
  %i.df = ptrtoint ptr %.sroa.030.0.lcssa.i to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = getelementptr inbounds i8, ptr %.sroa.030.0.lcssa.i, i64 %i.dg ; 2 uses
  %i.di = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.dj = ptrtoint ptr %.016.lcssa.i to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = ashr exact i64 %i.dk, 3                 ; 2 uses
  %i.dm = icmp sgt i64 %i.dl, 0
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i22.i, label %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb1EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit

.lr.ph.i.i.i.i.i22.i:                             ; preds = %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i
  %.012.i.i.i.i.i23.i = phi i64 [ %i.du, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i ], [ %i.dl, %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i24.i = phi ptr [ %i.dt, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i ], [ %i.dh, %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i ] ; 3 uses
  %.0910.i.i.i.i.i25.i = phi ptr [ %i.ds, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i ], [ %.016.lcssa.i, %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i ] ; 3 uses
  %i.dn = load ptr, ptr %.0910.i.i.i.i.i25.i, align 8, !tbaa !171
  store ptr null, ptr %.0910.i.i.i.i.i25.i, align 8, !tbaa !171
  %i.do = load ptr, ptr %.0811.i.i.i.i.i24.i, align 8, !tbaa !171 ; 3 uses
  store ptr %i.dn, ptr %.0811.i.i.i.i.i24.i, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i26.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i.i.i.i.i.i.i26.i, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i27.i

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i27.i: ; preds = %.lr.ph.i.i.i.i.i22.i
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !167
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  tail call void %i.dr(ptr noundef nonnull align 8 dereferenceable(49) %i.do) #22, !inline_history !7406
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i27.i, %.lr.ph.i.i.i.i.i22.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25.i, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i, i64 8 ; 2 uses
  %i.du = add nsw i64 %.012.i.i.i.i.i23.i, -1
  %i.dv = icmp sgt i64 %.012.i.i.i.i.i23.i, 1
  br i1 %i.dv, label %.lr.ph.i.i.i.i.i22.i, label %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit29.loopexit.i, !llvm.loop !31

_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit29.loopexit.i: ; preds = %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i
  %4 = ptrtoint ptr %i.dt to i64
  br label %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb1EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit

_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb1EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit: ; preds = %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i, %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit29.loopexit.i
  %.08.lcssa.i.i.i.i.i21.i = phi i64 [ %i.de, %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i ], [ %4, %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit29.loopexit.i ]
  %i.dw = sub i64 %.08.lcssa.i.i.i.i.i21.i, %i.de
  %i.dx = getelementptr inbounds i8, ptr %i.dh, i64 %i.dw ; 2 uses
  %i.dy = sub i64 %i.l, %i.di
  %i.dz = ashr exact i64 %i.dy, 3                 ; 2 uses
  %.not.i21 = icmp slt i64 %i.dz, %i.bq
  br i1 %.not.i21, label %_ZSt17__merge_sort_loopIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb1EEEE4dumpEvEUlRKS6_SO_E_EEEvT_SR_T0_T1_T2_.exit, label %.lr.ph.i20, !llvm.loop !7407

_ZSt17__merge_sort_loopIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb1EEEE4dumpEvEUlRKS6_SO_E_EEEvT_SR_T0_T1_T2_.exit: ; preds = %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb1EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb1EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_T2_.exit
  %.0.lcssa.i22 = phi ptr [ %2, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb1EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_T2_.exit ], [ %i.bs, %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb1EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit ] ; 2 uses
  %.sroa.021.0.lcssa.i = phi ptr [ %0, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb1EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_T2_.exit ], [ %i.dx, %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb1EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit ]
  %.lcssa.i23 = phi i64 [ %i.d, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb1EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_T2_.exit ], [ %i.dz, %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb1EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit ]
  %.sroa.speculated.i24 = tail call i64 @llvm.smin.i64(i64 %i.m, i64 %.lcssa.i23)
  %i.ea = getelementptr inbounds [8 x i8], ptr %.0.lcssa.i22, i64 %.sroa.speculated.i24 ; 2 uses
  tail call fastcc void @_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb1EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_(ptr noundef %.0.lcssa.i22, ptr noundef %i.ea, ptr noundef %i.ea, ptr noundef %i.e, ptr %.sroa.021.0.lcssa.i, ptr readonly %3)
  %i.eb = icmp slt i64 %i.bq, %i.d
  br i1 %i.eb, label %bb.b, label %._crit_edge, !llvm.loop !7408

._crit_edge:                                      ; preds = %_ZSt17__merge_sort_loopIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb1EEEE4dumpEvEUlRKS6_SO_E_EEEvT_SR_T0_T1_T2_.exit, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb1EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE1ELb1EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_SR_T0_SS_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %6 to ptr                   ; 2 uses
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb1EEEE4dumpEvEUlRKS6_SO_E_EEEvT_SR_T0_SS_T1_T2_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.n, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.m, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %5, %bb.b ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.l, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %0, %bb.b ] ; 3 uses
  %i.g = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !171
  store ptr null, ptr %.0910.i.i.i.i.i, align 8, !tbaa !171
  %i.h = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !171 ; 3 uses
  store ptr %i.g, ptr %.0811.i.i.i.i.i, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !167
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(49) %i.h) #22, !inline_history !33
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 3 uses
  %i.n = add nsw i64 %.012.i.i.i.i.i, -1
  %i.o = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.o, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !31

.lr.ph.i:                                         ; preds = %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i, %bb.f
  %.030.i = phi ptr [ %.1.i, %bb.f ], [ %5, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ] ; 6 uses
  %.sroa.020.029.i = phi ptr [ %.sroa.020.1.i, %bb.f ], [ %1, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ] ; 5 uses
  %.sroa.016.028.i = phi ptr [ %i.ai, %bb.f ], [ %0, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ] ; 6 uses
  %.not23.i = icmp eq ptr %.sroa.020.029.i, %2
  br i1 %.not23.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %.0.val.i = load ptr, ptr %.030.i, align 8, !tbaa !171 ; 2 uses
  %.val.val.i = load ptr, ptr %i.a, align 8, !tbaa !378 ; 2 uses
  %i.p = getelementptr i8, ptr %.0.val.i, i64 184
  %.0.val.val.i = load i32, ptr %i.p, align 8, !tbaa !240
  %.val2.i.i = load ptr, ptr %.sroa.020.029.i, align 8, !tbaa !171 ; 2 uses
  %i.q = getelementptr i8, ptr %.val2.i.i, i64 184
  %.val2.val.i.i = load i32, ptr %i.q, align 8, !tbaa !240
  %i.r = zext i32 %.val2.val.i.i to i64
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %.val.val.i, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.t, align 1
  %i.u = zext i32 %.0.val.val.i to i64
  %i.v = getelementptr inbounds nuw [64 x i8], ptr %.val.val.i, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.0.copyload.i.i.i3.i.i.i = load i64, ptr %i.w, align 1
  %i.x = icmp ult i64 %.0.copyload.i.i.i.i.i.i, %.0.copyload.i.i.i3.i.i.i
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %.sroa.020.029.i, align 8, !tbaa !171
  %i.y = load ptr, ptr %.sroa.016.028.i, align 8, !tbaa !171 ; 3 uses
  store ptr %.val2.i.i, ptr %.sroa.016.028.i, align 8, !tbaa !171
  %.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.d
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !167
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(49) %i.y) #22, !inline_history !7409
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.020.029.i, i64 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr null, ptr %.030.i, align 8, !tbaa !171
  %i.ad = load ptr, ptr %.sroa.016.028.i, align 8, !tbaa !171 ; 3 uses
  store ptr %.0.val.i, ptr %.sroa.016.028.i, align 8, !tbaa !171
  %.not.i.i.i.i13.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i13.i, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit15.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i14.i

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i14.i: ; preds = %bb.e
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !167
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(49) %i.ad) #22, !inline_history !7409
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit15.i

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit15.i: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i14.i, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.030.i, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit15.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i
  %.sroa.020.1.i = phi ptr [ %i.ac, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i ], [ %.sroa.020.029.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit15.i ]
  %.1.i = phi ptr [ %.030.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i ], [ %i.ah, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit15.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.016.028.i, i64 8
  %.not.i = icmp eq ptr %.1.i, %i.m
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb1EEEE4dumpEvEUlRKS6_SO_E_EEEvT_SR_T0_SS_T1_T2_.exit, label %.lr.ph.i, !llvm.loop !7410

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.aj = ptrtoint ptr %i.m to i64
  %i.ak = ptrtoint ptr %.030.i to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 3                 ; 2 uses
  %i.an = icmp sgt i64 %i.am, 0
  br i1 %i.an, label %.lr.ph.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb1EEEE4dumpEvEUlRKS6_SO_E_EEEvT_SR_T0_SS_T1_T2_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %.critedge.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.av, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %i.am, %.critedge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.au, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %.sroa.016.028.i, %.critedge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.at, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %.030.i, %.critedge.i ] ; 3 uses
  %i.ao = load ptr, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !171
  store ptr null, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !171
  %i.ap = load ptr, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !171 ; 3 uses
  store ptr %i.ao, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !167
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(49) %i.ap) #22, !inline_history !7411
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  %i.av = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.aw = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE1ELb1EEEE4dumpEvEUlRKS6_SO_E_EEEvT_SR_T0_SS_T1_T2_.exit, !llvm.loop !31

bb.g:                                             ; preds = %bb.a
  %i.ax = ptrtoint ptr %2 to i64
  %i.ay = ptrtoint ptr %1 to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 3                 ; 2 uses
  %i.bb = icmp sgt i64 %i.ba, 0
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i23, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit30

.lr.ph.i.i.i.i.i23:                               ; preds = %bb.g, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29
  %.012.i.i.i.i.i24 = phi i64 [ %i.bj, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29 ], [ %i.ba, %bb.g ] ; 2 uses
  %.0811.i.i.i.i.i25 = phi ptr [ %i.bi, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29 ], [ %5, %bb.g ] ; 3 uses
  %.0910.i.i.i.i.i26 = phi ptr [ %i.bh, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29 ], [ %1, %bb.g ] ; 3 uses
  %i.bc = load ptr, ptr %.0910.i.i.i.i.i26, align 8, !tbaa !171
  store ptr null, ptr %.0910.i.i.i.i.i26, align 8, !tbaa !171
  %i.bd = load ptr, ptr %.0811.i.i.i.i.i25, align 8, !tbaa !171 ; 3 uses
  store ptr %i.bc, ptr %.0811.i.i.i.i.i25, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i27 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i27, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i28

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i28: ; preds = %.lr.ph.i.i.i.i.i23
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !167
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(49) %i.bd) #22, !inline_history !33
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i28, %.lr.ph.i.i.i.i.i23
  %i.bh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 8 ; 2 uses
  %i.bj = add nsw i64 %.012.i.i.i.i.i24, -1
  %i.bk = icmp sgt i64 %.012.i.i.i.i.i24, 1
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i23, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit30, !llvm.loop !31

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit30: ; preds = %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29, %bb.g
  %.08.lcssa.i.i.i.i.i22 = phi ptr [ %5, %bb.g ], [ %i.bi, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29 ] ; 4 uses
  %i.bl = icmp eq ptr %0, %1
  br i1 %i.bl, label %bb.h, label %bb.i

end_hunk_2
begin_hunk_3_@_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb1EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_:bb.a
  %i.ar = icmp sgt i64 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.critedge.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.az, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %i.aq, %.critedge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.ay, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %.0.lcssa.i26, %.critedge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.ax, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %.sroa.026.0.lcssa.i, %.critedge.i ] ; 3 uses
  %i.as = load ptr, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !171
  store ptr null, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !171
  %i.at = load ptr, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !171 ; 3 uses
  store ptr %i.as, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !167
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(49) %i.at) #22, !inline_history !9278
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.az = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ba = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i, !llvm.loop !31

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i: ; preds = %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i, %.critedge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.0.lcssa.i26, %.critedge.i ], [ %i.ay, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.bb = ptrtoint ptr %i.o to i64                ; 2 uses
  %i.bc = ptrtoint ptr %.sroa.022.0.lcssa.i25 to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 3                 ; 2 uses
  %i.bf = icmp sgt i64 %i.be, 0
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i13.i, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb1EEEE4dumpEvEUlRKS8_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit

.lr.ph.i.i.i.i.i13.i:                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i
  %.012.i.i.i.i.i14.i = phi i64 [ %i.bn, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i ], [ %i.be, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i15.i = phi ptr [ %i.bm, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i ], [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i ] ; 3 uses
  %.0910.i.i.i.i.i16.i = phi ptr [ %i.bl, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i ], [ %.sroa.022.0.lcssa.i25, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i ] ; 3 uses
  %i.bg = load ptr, ptr %.0910.i.i.i.i.i16.i, align 8, !tbaa !171
  store ptr null, ptr %.0910.i.i.i.i.i16.i, align 8, !tbaa !171
  %i.bh = load ptr, ptr %.0811.i.i.i.i.i15.i, align 8, !tbaa !171 ; 3 uses
  store ptr %i.bg, ptr %.0811.i.i.i.i.i15.i, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i17.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i17.i, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i18.i

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i18.i: ; preds = %.lr.ph.i.i.i.i.i13.i
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !167
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(49) %i.bh) #22, !inline_history !9278
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i18.i, %.lr.ph.i.i.i.i.i13.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16.i, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i15.i, i64 8 ; 2 uses
  %i.bn = add nsw i64 %.012.i.i.i.i.i14.i, -1
  %i.bo = icmp sgt i64 %.012.i.i.i.i.i14.i, 1
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i13.i, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb1EEEE4dumpEvEUlRKS8_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit, !llvm.loop !31

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb1EEEE4dumpEvEUlRKS8_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit: ; preds = %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i
  %.08.lcssa.i.i.i.i.i12.i = phi ptr [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i ], [ %i.bm, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i ] ; 2 uses
  %i.bp = sub i64 %i.a, %i.bb
  %i.bq = ashr exact i64 %i.bp, 3                 ; 2 uses
  %.not.i = icmp slt i64 %i.bq, %i.m
  br i1 %.not.i, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb1EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_T2_.exit, label %.lr.ph.i19, !llvm.loop !9279

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb1EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_T2_.exit: ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb1EEEE4dumpEvEUlRKS8_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit, %bb.b
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %i.o, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb1EEEE4dumpEvEUlRKS8_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.b ], [ %.08.lcssa.i.i.i.i.i12.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb1EEEE4dumpEvEUlRKS8_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit ]
  %.lcssa.i = phi i64 [ %i.d, %bb.b ], [ %i.bq, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb1EEEE4dumpEvEUlRKS8_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.061, i64 %.lcssa.i)
  %i.br = getelementptr inbounds [8 x i8], ptr %.sroa.022.0.lcssa.i, i64 %.sroa.speculated.i ; 2 uses
  tail call fastcc void @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb1EEEE4dumpEvEUlRKS8_SO_E_EEET0_T_SS_SS_SS_SR_T1_(ptr %.sroa.022.0.lcssa.i, ptr %i.br, ptr %i.br, ptr %1, ptr noundef %.0.lcssa.i, ptr readonly %3)
  %i.bs = shl nsw i64 %.061, 2                    ; 4 uses
  %.not28.i = icmp slt i64 %i.d, %i.bs
  br i1 %.not28.i, label %_ZSt17__merge_sort_loopIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb1EEEE4dumpEvEUlRKS6_SO_E_EEEvT_SR_T0_T1_T2_.exit, label %.lr.ph.i20.preheader

.lr.ph.i20.preheader:                             ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb1EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_T2_.exit
  %.idx47 = shl nsw i64 %.061, 4                  ; 2 uses
  %.idx48 = shl nsw i64 %.061, 5                  ; 2 uses
  %.not49 = icmp eq i64 %.idx47, %.idx48
  br label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %.lr.ph.i20.preheader, %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb1EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit
  %.sroa.021.030.i = phi ptr [ %i.eb, %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb1EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit ], [ %0, %.lr.ph.i20.preheader ] ; 2 uses
  %.029.i = phi ptr [ %i.bu, %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb1EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit ], [ %2, %.lr.ph.i20.preheader ] ; 4 uses
  %i.bt = getelementptr inbounds i8, ptr %.029.i, i64 %.idx47 ; 4 uses
  %i.bu = getelementptr inbounds i8, ptr %.029.i, i64 %.idx48 ; 4 uses
  br i1 %.not49, label %._crit_edge.i, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %.lr.ph.i20, %bb.h
  %.036.i = phi ptr [ %.1.i, %bb.h ], [ %.029.i, %.lr.ph.i20 ] ; 4 uses
  %.01635.i = phi ptr [ %.117.i, %bb.h ], [ %i.bt, %.lr.ph.i20 ] ; 4 uses
  %.sroa.030.034.i = phi ptr [ %i.cq, %bb.h ], [ %.sroa.021.030.i, %.lr.ph.i20 ] ; 5 uses
  %.016.val.i = load ptr, ptr %.01635.i, align 8, !tbaa !171 ; 2 uses
  %.0.val.i = load ptr, ptr %.036.i, align 8, !tbaa !171 ; 2 uses
  %.val.val.i39 = load ptr, ptr %3, align 8, !tbaa !393 ; 2 uses
  %i.bv = getelementptr i8, ptr %.016.val.i, i64 184
  %.016.val.val.i = load i32, ptr %i.bv, align 8, !tbaa !240
  %i.bw = getelementptr i8, ptr %.0.val.i, i64 184
  %.0.val.val.i = load i32, ptr %i.bw, align 8, !tbaa !240
  %i.bx = zext i32 %.016.val.val.i to i64
  %i.by = getelementptr inbounds nuw [64 x i8], ptr %.val.val.i39, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %.0.copyload.i.i.i.i.i.i40 = load i64, ptr %i.bz, align 1
  %i.ca = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i.i.i.i40)
  %i.cb = zext i32 %.0.val.val.i to i64
  %i.cc = getelementptr inbounds nuw [64 x i8], ptr %.val.val.i39, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %.0.copyload.i.i.i3.i.i.i41 = load i64, ptr %i.cd, align 1
  %i.ce = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i3.i.i.i41)
  %i.cf = icmp ult i64 %i.ca, %i.ce
  br i1 %i.cf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i38
  store ptr null, ptr %.01635.i, align 8, !tbaa !171
  %i.cg = load ptr, ptr %.sroa.030.034.i, align 8, !tbaa !171 ; 3 uses
  store ptr %.016.val.i, ptr %.sroa.030.034.i, align 8, !tbaa !171
  %.not.i.i.i.i.i42 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i.i42, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i44, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i43

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i43: ; preds = %bb.f
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !167
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  tail call void %i.cj(ptr noundef nonnull align 8 dereferenceable(49) %i.cg) #22, !inline_history !9280
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i44

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i44: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i43, %bb.f
  %i.ck = getelementptr inbounds nuw i8, ptr %.01635.i, i64 8
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i38
  store ptr null, ptr %.036.i, align 8, !tbaa !171
  %i.cl = load ptr, ptr %.sroa.030.034.i, align 8, !tbaa !171 ; 3 uses
  store ptr %.0.val.i, ptr %.sroa.030.034.i, align 8, !tbaa !171
  %.not.i.i.i.i18.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i18.i, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit20.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i19.i

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i19.i: ; preds = %bb.g
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !167
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  tail call void %i.co(ptr noundef nonnull align 8 dereferenceable(49) %i.cl) #22, !inline_history !9280
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit20.i

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit20.i: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i19.i, %bb.g
  %i.cp = getelementptr inbounds nuw i8, ptr %.036.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit20.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i44
  %.117.i = phi ptr [ %i.ck, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i44 ], [ %.01635.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit20.i ] ; 3 uses
  %.1.i = phi ptr [ %.036.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i44 ], [ %i.cp, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit20.i ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.030.034.i, i64 8 ; 2 uses
  %i.cr = icmp ne ptr %.1.i, %i.bt
  %i.cs = icmp ne ptr %.117.i, %i.bu
  %i.ct = select i1 %i.cr, i1 %i.cs, i1 false
  br i1 %i.ct, label %.lr.ph.i38, label %._crit_edge.i, !llvm.loop !68

._crit_edge.i:                                    ; preds = %bb.h, %.lr.ph.i20
  %.sroa.030.0.lcssa.i = phi ptr [ %.sroa.021.030.i, %.lr.ph.i20 ], [ %i.cq, %bb.h ] ; 4 uses
  %.016.lcssa.i = phi ptr [ %i.bt, %.lr.ph.i20 ], [ %.117.i, %bb.h ] ; 2 uses
  %.0.lcssa.i29 = phi ptr [ %.029.i, %.lr.ph.i20 ], [ %.1.i, %bb.h ] ; 2 uses
  %i.cu = ptrtoint ptr %i.bt to i64
  %i.cv = ptrtoint ptr %.0.lcssa.i29 to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = ashr exact i64 %i.cw, 3                 ; 2 uses
  %i.cy = icmp sgt i64 %i.cx, 0
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i.i31, label %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i

.lr.ph.i.i.i.i.i.i31:                             ; preds = %._crit_edge.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37
  %.012.i.i.i.i.i.i32 = phi i64 [ %i.dg, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37 ], [ %i.cx, %._crit_edge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i33 = phi ptr [ %i.df, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37 ], [ %.sroa.030.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i34 = phi ptr [ %i.de, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37 ], [ %.0.lcssa.i29, %._crit_edge.i ] ; 3 uses
  %i.cz = load ptr, ptr %.0910.i.i.i.i.i.i34, align 8, !tbaa !171
  store ptr null, ptr %.0910.i.i.i.i.i.i34, align 8, !tbaa !171
  %i.da = load ptr, ptr %.0811.i.i.i.i.i.i33, align 8, !tbaa !171 ; 3 uses
  store ptr %i.cz, ptr %.0811.i.i.i.i.i.i33, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i.i35 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i35, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i36

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i36: ; preds = %.lr.ph.i.i.i.i.i.i31
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !167
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  tail call void %i.dd(ptr noundef nonnull align 8 dereferenceable(49) %i.da) #22, !inline_history !9281
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i36, %.lr.ph.i.i.i.i.i.i31
  %i.de = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i34, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i33, i64 8 ; 2 uses
  %i.dg = add nsw i64 %.012.i.i.i.i.i.i32, -1
  %i.dh = icmp sgt i64 %.012.i.i.i.i.i.i32, 1
  br i1 %i.dh, label %.lr.ph.i.i.i.i.i.i31, label %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i, !llvm.loop !31

_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i: ; preds = %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i30 = phi ptr [ %.sroa.030.0.lcssa.i, %._crit_edge.i ], [ %i.df, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37 ]
  %i.di = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30 to i64 ; 3 uses
  %i.dj = ptrtoint ptr %.sroa.030.0.lcssa.i to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = getelementptr inbounds i8, ptr %.sroa.030.0.lcssa.i, i64 %i.dk ; 2 uses
  %i.dm = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.dn = ptrtoint ptr %.016.lcssa.i to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = ashr exact i64 %i.do, 3                 ; 2 uses
  %i.dq = icmp sgt i64 %i.dp, 0
  br i1 %i.dq, label %.lr.ph.i.i.i.i.i22.i, label %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb1EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit

.lr.ph.i.i.i.i.i22.i:                             ; preds = %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i
  %.012.i.i.i.i.i23.i = phi i64 [ %i.dy, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i ], [ %i.dp, %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i24.i = phi ptr [ %i.dx, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i ], [ %i.dl, %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i ] ; 3 uses
  %.0910.i.i.i.i.i25.i = phi ptr [ %i.dw, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i ], [ %.016.lcssa.i, %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i ] ; 3 uses
  %i.dr = load ptr, ptr %.0910.i.i.i.i.i25.i, align 8, !tbaa !171
  store ptr null, ptr %.0910.i.i.i.i.i25.i, align 8, !tbaa !171
  %i.ds = load ptr, ptr %.0811.i.i.i.i.i24.i, align 8, !tbaa !171 ; 3 uses
  store ptr %i.dr, ptr %.0811.i.i.i.i.i24.i, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i26.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i.i.i.i.i.i.i26.i, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i27.i

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i27.i: ; preds = %.lr.ph.i.i.i.i.i22.i
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !167
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  tail call void %i.dv(ptr noundef nonnull align 8 dereferenceable(49) %i.ds) #22, !inline_history !9281
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i27.i, %.lr.ph.i.i.i.i.i22.i
  %i.dw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25.i, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i, i64 8 ; 2 uses
  %i.dy = add nsw i64 %.012.i.i.i.i.i23.i, -1
  %i.dz = icmp sgt i64 %.012.i.i.i.i.i23.i, 1
  br i1 %i.dz, label %.lr.ph.i.i.i.i.i22.i, label %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit29.loopexit.i, !llvm.loop !31

_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit29.loopexit.i: ; preds = %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i
  %4 = ptrtoint ptr %i.dx to i64
  br label %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb1EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit

_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb1EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit: ; preds = %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i, %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit29.loopexit.i
  %.08.lcssa.i.i.i.i.i21.i = phi i64 [ %i.di, %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i ], [ %4, %_ZSt4moveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit29.loopexit.i ]
  %i.ea = sub i64 %.08.lcssa.i.i.i.i.i21.i, %i.di
  %i.eb = getelementptr inbounds i8, ptr %i.dl, i64 %i.ea ; 2 uses
  %i.ec = sub i64 %i.l, %i.dm
  %i.ed = ashr exact i64 %i.ec, 3                 ; 2 uses
  %.not.i21 = icmp slt i64 %i.ed, %i.bs
  br i1 %.not.i21, label %_ZSt17__merge_sort_loopIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb1EEEE4dumpEvEUlRKS6_SO_E_EEEvT_SR_T0_T1_T2_.exit, label %.lr.ph.i20, !llvm.loop !9282

_ZSt17__merge_sort_loopIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb1EEEE4dumpEvEUlRKS6_SO_E_EEEvT_SR_T0_T1_T2_.exit: ; preds = %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb1EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb1EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_T2_.exit
  %.0.lcssa.i22 = phi ptr [ %2, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb1EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_T2_.exit ], [ %i.bu, %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb1EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit ] ; 2 uses
  %.sroa.021.0.lcssa.i = phi ptr [ %0, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb1EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_T2_.exit ], [ %i.eb, %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb1EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit ]
  %.lcssa.i23 = phi i64 [ %i.d, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb1EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_T2_.exit ], [ %i.ed, %_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb1EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_.exit ]
  %.sroa.speculated.i24 = tail call i64 @llvm.smin.i64(i64 %i.m, i64 %.lcssa.i23)
  %i.ee = getelementptr inbounds [8 x i8], ptr %.0.lcssa.i22, i64 %.sroa.speculated.i24 ; 2 uses
  tail call fastcc void @_ZSt12__move_mergeIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb1EEEE4dumpEvEUlRKS6_SO_E_EEET0_T_SS_SS_SS_SR_T1_(ptr noundef %.0.lcssa.i22, ptr noundef %i.ee, ptr noundef %i.ee, ptr noundef %i.e, ptr %.sroa.021.0.lcssa.i, ptr readonly %3)
  %i.ef = icmp slt i64 %i.bs, %i.d
  br i1 %i.ef, label %bb.b, label %._crit_edge, !llvm.loop !9283

._crit_edge:                                      ; preds = %_ZSt17__merge_sort_loopIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb1EEEE4dumpEvEUlRKS6_SO_E_EEEvT_SR_T0_T1_T2_.exit, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb1EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS3_6object7ELFTypeILNS3_10endiannessE0ELb1EEEE4dumpEvEUlRKS8_SO_E_EEEvT_SR_SR_T0_SS_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %6 to ptr                   ; 2 uses
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb1EEEE4dumpEvEUlRKS6_SO_E_EEEvT_SR_T0_SS_T1_T2_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.n, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.m, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %5, %bb.b ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.l, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %0, %bb.b ] ; 3 uses
  %i.g = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !171
  store ptr null, ptr %.0910.i.i.i.i.i, align 8, !tbaa !171
  %i.h = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !171 ; 3 uses
  store ptr %i.g, ptr %.0811.i.i.i.i.i, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !167
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(49) %i.h) #22, !inline_history !33
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 3 uses
  %i.n = add nsw i64 %.012.i.i.i.i.i, -1
  %i.o = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.o, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !31

.lr.ph.i:                                         ; preds = %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i, %bb.f
  %.030.i = phi ptr [ %.1.i, %bb.f ], [ %5, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ] ; 6 uses
  %.sroa.020.029.i = phi ptr [ %.sroa.020.1.i, %bb.f ], [ %1, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ] ; 5 uses
  %.sroa.016.028.i = phi ptr [ %i.ak, %bb.f ], [ %0, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ] ; 6 uses
  %.not23.i = icmp eq ptr %.sroa.020.029.i, %2
  br i1 %.not23.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %.0.val.i = load ptr, ptr %.030.i, align 8, !tbaa !171 ; 2 uses
  %.val.val.i = load ptr, ptr %i.a, align 8, !tbaa !393 ; 2 uses
  %i.p = getelementptr i8, ptr %.0.val.i, i64 184
  %.0.val.val.i = load i32, ptr %i.p, align 8, !tbaa !240
  %.val2.i.i = load ptr, ptr %.sroa.020.029.i, align 8, !tbaa !171 ; 2 uses
  %i.q = getelementptr i8, ptr %.val2.i.i, i64 184
  %.val2.val.i.i = load i32, ptr %i.q, align 8, !tbaa !240
  %i.r = zext i32 %.val2.val.i.i to i64
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %.val.val.i, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.t, align 1
  %i.u = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i.i.i.i)
  %i.v = zext i32 %.0.val.val.i to i64
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %.val.val.i, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.0.copyload.i.i.i3.i.i.i = load i64, ptr %i.x, align 1
  %i.y = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i3.i.i.i)
  %i.z = icmp ult i64 %i.u, %i.y
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %.sroa.020.029.i, align 8, !tbaa !171
  %i.aa = load ptr, ptr %.sroa.016.028.i, align 8, !tbaa !171 ; 3 uses
  store ptr %.val2.i.i, ptr %.sroa.016.028.i, align 8, !tbaa !171
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.d
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !167
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(49) %i.aa) #22, !inline_history !9284
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.020.029.i, i64 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr null, ptr %.030.i, align 8, !tbaa !171
  %i.af = load ptr, ptr %.sroa.016.028.i, align 8, !tbaa !171 ; 3 uses
  store ptr %.0.val.i, ptr %.sroa.016.028.i, align 8, !tbaa !171
  %.not.i.i.i.i13.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i13.i, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit15.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i14.i

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i14.i: ; preds = %bb.e
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !167
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(49) %i.af) #22, !inline_history !9284
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit15.i

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit15.i: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i14.i, %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.030.i, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit15.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i
  %.sroa.020.1.i = phi ptr [ %i.ae, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i ], [ %.sroa.020.029.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit15.i ]
  %.1.i = phi ptr [ %.030.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i ], [ %i.aj, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit15.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.016.028.i, i64 8
  %.not.i = icmp eq ptr %.1.i, %i.m
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb1EEEE4dumpEvEUlRKS6_SO_E_EEEvT_SR_T0_SS_T1_T2_.exit, label %.lr.ph.i, !llvm.loop !9285

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.al = ptrtoint ptr %i.m to i64
  %i.am = ptrtoint ptr %.030.i to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 3                 ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb1EEEE4dumpEvEUlRKS6_SO_E_EEEvT_SR_T0_SS_T1_T2_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %.critedge.i, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.ax, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %i.ao, %.critedge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.aw, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %.sroa.016.028.i, %.critedge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.av, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %.030.i, %.critedge.i ] ; 3 uses
  %i.aq = load ptr, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !171
  store ptr null, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !171
  %i.ar = load ptr, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !171 ; 3 uses
  store ptr %i.aq, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !167
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(49) %i.ar) #22, !inline_history !9286
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  %i.ax = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ay = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_19ELFDumperINS1_6object7ELFTypeILNS1_10endiannessE0ELb1EEEE4dumpEvEUlRKS6_SO_E_EEEvT_SR_T0_SS_T1_T2_.exit, !llvm.loop !31

bb.g:                                             ; preds = %bb.a
  %i.az = ptrtoint ptr %2 to i64
  %i.ba = ptrtoint ptr %1 to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3                 ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i23, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit30

.lr.ph.i.i.i.i.i23:                               ; preds = %bb.g, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29
  %.012.i.i.i.i.i24 = phi i64 [ %i.bl, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29 ], [ %i.bc, %bb.g ] ; 2 uses
  %.0811.i.i.i.i.i25 = phi ptr [ %i.bk, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29 ], [ %5, %bb.g ] ; 3 uses
  %.0910.i.i.i.i.i26 = phi ptr [ %i.bj, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29 ], [ %1, %bb.g ] ; 3 uses
  %i.be = load ptr, ptr %.0910.i.i.i.i.i26, align 8, !tbaa !171
  store ptr null, ptr %.0910.i.i.i.i.i26, align 8, !tbaa !171
  %i.bf = load ptr, ptr %.0811.i.i.i.i.i25, align 8, !tbaa !171 ; 3 uses
  store ptr %i.be, ptr %.0811.i.i.i.i.i25, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i27 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i27, label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29, label %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i28

_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i28: ; preds = %.lr.ph.i.i.i.i.i23
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !167
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(49) %i.bf) #22, !inline_history !33
  br label %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29

_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29: ; preds = %_ZNKSt14default_deleteIN4llvm7ELFYAML5ChunkEEclEPS2_.exit.i.i.i.i.i.i.i.i.i28, %.lr.ph.i.i.i.i.i23
  %i.bj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 8 ; 2 uses
  %i.bl = add nsw i64 %.012.i.i.i.i.i24, -1
  %i.bm = icmp sgt i64 %.012.i.i.i.i.i24, 1
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i23, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit30, !llvm.loop !31

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit30: ; preds = %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29, %bb.g
  %.08.lcssa.i.i.i.i.i22 = phi ptr [ %5, %bb.g ], [ %i.bk, %_ZNSt10unique_ptrIN4llvm7ELFYAML5ChunkESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i29 ] ; 4 uses
  %i.bn = icmp eq ptr %0, %1
end_hunk_3

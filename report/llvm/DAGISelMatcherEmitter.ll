Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DAGISelMatcherEmitter?download=true
inline.NumInlined: 4945
inline.NumDeleted: 2230
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SQ_:bb.a
  %i.at = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -56
  store i32 %i.as, ptr %i.at, align 8, !tbaa !105
  %i.au = add nsw i64 %.010.i.i.i.i.i.i, -4
  %i.av = icmp sgt i64 %.010.i.i.i.i.i.i, 4
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i, !llvm.loop !4

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.d
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !104
  store i32 %.val.i.i, ptr %i.g, align 8, !tbaa !105
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aw = getelementptr i8, ptr %.pn19.i, i64 8
  %.val2.i7.i.i = load i32, ptr %i.aw, align 8, !tbaa !105 ; 2 uses
  %i.ax = icmp ugt i32 %.val.i.i, %.val2.i7.i.i
  br i1 %i.ax, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SQ_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.val2.i9.i.i = phi i32 [ %.val2.i.i.i, %.lr.ph.i.i ], [ %.val2.i7.i.i, %bb.e ]
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.08.020.i, %bb.e ] ; 4 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i, i64 -16 ; 3 uses
  %i.ay = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !102
  store ptr %i.ay, ptr %.sroa.04.08.i.i, align 8, !tbaa !104
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8
  store i32 %.val2.i9.i.i, ptr %i.az, align 8, !tbaa !105
  %i.ba = getelementptr i8, ptr %.sroa.04.08.i.i, i64 -24
  %.val2.i.i.i = load i32, ptr %i.ba, align 8, !tbaa !105 ; 2 uses
  %i.bb = icmp ugt i32 %.val.i.i, %.val2.i.i.i
  br i1 %i.bb, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SQ_.exit.i, !llvm.loop !5

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SQ_.exit.i: ; preds = %.lr.ph.i.i, %bb.e
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.08.020.i, %bb.e ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 2 uses
  store ptr %.sroa.0.0.copyload.i, ptr %.sroa.04.0.lcssa.i.i, align 8, !tbaa !104
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i, i64 8
  store i32 %.val.i.i, ptr %i.bc, align 8, !tbaa !105
  %.val1.i.pre.i = load i32, ptr %i.g, align 8, !tbaa !105
  br label %bb.f

bb.f:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SQ_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i
  %.val1.i24.i = phi i32 [ %.val.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i ], [ %.val1.i.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SQ_.exit.i ]
  %.sroa.08.0.i = getelementptr inbounds nuw i8, ptr %.sroa.08.020.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.08.0.i, %1
  br i1 %.not.i, label %common.ret30, label %bb.c, !llvm.loop !6

common.ret30:                                     ; preds = %.preheader.i, %bb.b, %bb.f, %bb.g
  ret void

bb.g:                                             ; preds = %bb.a
  %i.bd = lshr i64 %i.d, 1                        ; 2 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bd ; 4 uses
  tail call fastcc void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SQ_(ptr %0, ptr %i.be)
  tail call fastcc void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SQ_(ptr %i.be, ptr %1)
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.a, %i.bf
  %i.bh = ashr exact i64 %i.bg, 4
  tail call fastcc void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SN_SQ_SQ_T1_(ptr %0, ptr %i.be, ptr %1, i64 noundef %i.bd, i64 noundef %i.bh)
  br label %common.ret30
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SQ_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 4
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 4 uses
  %i.g = getelementptr inbounds [16 x i8], ptr %0, i64 %i.f ; 7 uses
  %i.h = icmp sgt i64 %i.f, %3
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 4                   ; 2 uses
  br i1 %i.h, label %bb.b, label %common.ret

common.ret33:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SQ_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3)
  tail call fastcc void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SQ_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3)
  tail call fastcc void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEElS8_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SN_SQ_SQ_T1_SQ_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3)
  br label %common.ret33

common.ret:                                       ; preds = %bb.a
  tail call fastcc void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SQ_T1_(ptr %0, ptr %i.g, ptr noundef %2)
  tail call fastcc void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SQ_T1_(ptr %i.g, ptr %1, ptr noundef %2)
  tail call fastcc void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEElS8_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SN_SQ_SQ_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2)
  br label %common.ret33
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SQ_T1_(ptr %0, ptr %1, ptr noundef %2) unnamed_addr #17 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 6 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c ; 3 uses
  %i.f = icmp sgt i64 %i.c, 96
  br i1 %i.f, label %.lr.ph.i.i, label %._crit_edge.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SQ_.exit.i
  %i.g = phi i64 [ %i.jz, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SQ_.exit.i ], [ %i.b, %bb.a ] ; 6 uses
  %.sroa.039.042.i = phi ptr [ %i.jy, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SQ_.exit.i ], [ %0, %bb.a ] ; 26 uses
  %i.h = getelementptr i8, ptr %.sroa.039.042.i, i64 8 ; 11 uses
  %.val1.i.pre22.i.i = load i32, ptr %i.h, align 8, !tbaa !105 ; 2 uses
  %.sroa.08.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.039.042.i, i64 16 ; 4 uses
  %i.i = getelementptr i8, ptr %.sroa.039.042.i, i64 24 ; 2 uses
  %.val.i.i.i = load i32, ptr %i.i, align 8, !tbaa !105 ; 3 uses
  %i.j = icmp ugt i32 %.val.i.i.i, %.val1.i.pre22.i.i
  %.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.08.020.i.ptr.i, align 8
  br i1 %i.j, label %bb.b, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SQ_.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = ptrtoint ptr %.sroa.08.020.i.ptr.i to i64
  %i.l = sub i64 %i.k, %i.g
  %i.m = ashr exact i64 %i.l, 4                   ; 5 uses
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.preheader.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i

.lr.ph.i.i.i.i.i.preheader.i.i:                   ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.039.042.i, i64 32 ; 2 uses
  %xtraiter = and i64 %i.m, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i, %.lr.ph.i.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.i.prol = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.m, %.lr.ph.i.i.i.i.i.preheader.i.i ]
  %.069.i.i.i.i.i.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.o, %.lr.ph.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %.078.i.i.i.i.i.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.sroa.08.020.i.ptr.i, %.lr.ph.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i ]
  %i.p = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.q = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !102
  store ptr %i.r, ptr %i.q, align 8, !tbaa !104
  %i.s = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.prol, i64 -8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !52
  %i.u = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.prol, i64 -8
  store i32 %i.t, ptr %i.u, align 8, !tbaa !105
  %i.v = add nsw i64 %.010.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !588

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i.i.unr = phi i64 [ %i.m, %.lr.ph.i.i.i.i.i.preheader.i.i ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.i.unr = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.preheader.i.i ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.08.020.i.ptr.i, %.lr.ph.i.i.i.i.i.preheader.i.i ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.w = icmp ult i64 %i.m, 4
  br i1 %i.w, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.x = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -16
  %i.y = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -16
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !102
  store ptr %i.z, ptr %i.y, align 8, !tbaa !104
  %i.aa = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !52
  %i.ac = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -8
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !105
  %i.ad = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -32
  %i.ae = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -32
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !102
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !104
  %i.ag = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !52
  %i.ai = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -24
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !105
  %i.aj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -48
  %i.ak = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -48
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !102
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !104
  %i.am = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -40
  %i.an = load i32, ptr %i.am, align 8, !tbaa !52
  %i.ao = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -40
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !105
  %i.ap = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !102
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !104
  %i.as = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !52
  %i.au = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -56
  store i32 %i.at, ptr %i.au, align 8, !tbaa !105
  %i.av = add nsw i64 %.010.i.i.i.i.i.i.i, -4
  %i.aw = icmp sgt i64 %.010.i.i.i.i.i.i.i, 4
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i, !llvm.loop !4

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.b
  store ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.039.042.i, align 8, !tbaa !104
  store i32 %.val.i.i.i, ptr %i.h, align 8, !tbaa !105
  br label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SQ_.exit.i.i

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SQ_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i
  %.val1.i24.i.i = phi i32 [ %.val.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i ], [ %.val1.i.pre22.i.i, %.lr.ph.i.i ]
  %.sroa.08.020.i.ptr.1.i = getelementptr inbounds nuw i8, ptr %.sroa.039.042.i, i64 32 ; 6 uses
  %i.ax = getelementptr i8, ptr %.sroa.039.042.i, i64 40 ; 2 uses
  %.val.i.i.1.i = load i32, ptr %i.ax, align 8, !tbaa !105 ; 6 uses
  %i.ay = icmp ugt i32 %.val.i.i.1.i, %.val1.i24.i.i
  %.sroa.0.0.copyload.i.1.i = load ptr, ptr %.sroa.08.020.i.ptr.1.i, align 8 ; 2 uses
  br i1 %i.ay, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SQ_.exit.i.i
  %.val2.i7.i.i.1.i = load i32, ptr %i.i, align 8, !tbaa !105 ; 2 uses
  %i.az = icmp ugt i32 %.val.i.i.1.i, %.val2.i7.i.i.1.i
  br i1 %i.az, label %.lr.ph.i.i.1.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SQ_.exit.i.1.i

.lr.ph.i.i.1.i:                                   ; preds = %bb.c, %.lr.ph.i.i.1.i
  %.val2.i9.i.i.1.i = phi i32 [ %.val2.i.i.i.1.i, %.lr.ph.i.i.1.i ], [ %.val2.i7.i.i.1.i, %bb.c ]
  %.sroa.04.08.i.i.1.i = phi ptr [ %.sroa.0.0.i.i.1.i, %.lr.ph.i.i.1.i ], [ %.sroa.08.020.i.ptr.1.i, %bb.c ] ; 4 uses
  %.sroa.0.0.i.i.1.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i.1.i, i64 -16 ; 3 uses
  %i.ba = load ptr, ptr %.sroa.0.0.i.i.1.i, align 8, !tbaa !102
  store ptr %i.ba, ptr %.sroa.04.08.i.i.1.i, align 8, !tbaa !104
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.1.i, i64 8
  store i32 %.val2.i9.i.i.1.i, ptr %i.bb, align 8, !tbaa !105
  %i.bc = getelementptr i8, ptr %.sroa.04.08.i.i.1.i, i64 -24
  %.val2.i.i.i.1.i = load i32, ptr %i.bc, align 8, !tbaa !105 ; 2 uses
  %i.bd = icmp ugt i32 %.val.i.i.1.i, %.val2.i.i.i.1.i
  br i1 %i.bd, label %.lr.ph.i.i.1.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SQ_.exit.i.1.i, !llvm.loop !5

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SQ_.exit.i.1.i: ; preds = %.lr.ph.i.i.1.i, %bb.c
  %.sroa.04.0.lcssa.i.i.1.i = phi ptr [ %.sroa.08.020.i.ptr.1.i, %bb.c ], [ %.sroa.0.0.i.i.1.i, %.lr.ph.i.i.1.i ] ; 2 uses
  store ptr %.sroa.0.0.copyload.i.1.i, ptr %.sroa.04.0.lcssa.i.i.1.i, align 8, !tbaa !104
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.1.i, i64 8
  store i32 %.val.i.i.1.i, ptr %i.be, align 8, !tbaa !105
  %.val1.i.pre.i.1.i = load i32, ptr %i.h, align 8, !tbaa !105
  br label %bb.e

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SQ_.exit.i.i
  %i.bf = ptrtoint ptr %.sroa.08.020.i.ptr.1.i to i64
  %i.bg = sub i64 %i.bf, %i.g
  %i.bh = ashr exact i64 %i.bg, 4                 ; 5 uses
  %i.bi = icmp sgt i64 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i.preheader.i.1.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.1.i

.lr.ph.i.i.i.i.i.preheader.i.1.i:                 ; preds = %bb.d
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.039.042.i, i64 48 ; 2 uses
  %xtraiter146 = and i64 %i.bh, 3                 ; 2 uses
  %lcmp.mod147.not = icmp eq i64 %xtraiter146, 0
  br i1 %lcmp.mod147.not, label %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.1.i.prol

.lr.ph.i.i.i.i.i.i.1.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.preheader.i.1.i, %.lr.ph.i.i.i.i.i.i.1.i.prol
  %.010.i.i.i.i.i.i.1.i.prol = phi i64 [ %i.bq, %.lr.ph.i.i.i.i.i.i.1.i.prol ], [ %i.bh, %.lr.ph.i.i.i.i.i.preheader.i.1.i ]
  %.069.i.i.i.i.i.i.1.i.prol = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.1.i.prol ], [ %i.bj, %.lr.ph.i.i.i.i.i.preheader.i.1.i ] ; 2 uses
  %.078.i.i.i.i.i.i.1.i.prol = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i.1.i.prol ], [ %.sroa.08.020.i.ptr.1.i, %.lr.ph.i.i.i.i.i.preheader.i.1.i ] ; 2 uses
  %prol.iter148 = phi i64 [ %prol.iter148.next, %.lr.ph.i.i.i.i.i.i.1.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.1.i ]
  %i.bk = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i.prol, i64 -16 ; 3 uses
  %i.bl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i.prol, i64 -16 ; 3 uses
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !102
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !104
  %i.bn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i.prol, i64 -8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !52
  %i.bp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i.prol, i64 -8
  store i32 %i.bo, ptr %i.bp, align 8, !tbaa !105
  %i.bq = add nsw i64 %.010.i.i.i.i.i.i.1.i.prol, -1 ; 2 uses
  %prol.iter148.next = add i64 %prol.iter148, 1   ; 2 uses
  %prol.iter148.cmp.not = icmp eq i64 %prol.iter148.next, %xtraiter146
  br i1 %prol.iter148.cmp.not, label %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.1.i.prol, !llvm.loop !589

.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.1.i.prol, %.lr.ph.i.i.i.i.i.preheader.i.1.i
  %.010.i.i.i.i.i.i.1.i.unr = phi i64 [ %i.bh, %.lr.ph.i.i.i.i.i.preheader.i.1.i ], [ %i.bq, %.lr.ph.i.i.i.i.i.i.1.i.prol ]
  %.069.i.i.i.i.i.i.1.i.unr = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.preheader.i.1.i ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.1.i.prol ]
  %.078.i.i.i.i.i.i.1.i.unr = phi ptr [ %.sroa.08.020.i.ptr.1.i, %.lr.ph.i.i.i.i.i.preheader.i.1.i ], [ %i.bk, %.lr.ph.i.i.i.i.i.i.1.i.prol ]
  %i.br = icmp ult i64 %i.bh, 4
  br i1 %i.br, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.1.i, label %.lr.ph.i.i.i.i.i.i.1.i

.lr.ph.i.i.i.i.i.i.1.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.1.i
  %.010.i.i.i.i.i.i.1.i = phi i64 [ %i.cq, %.lr.ph.i.i.i.i.i.i.1.i ], [ %.010.i.i.i.i.i.i.1.i.unr, %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.1.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i.1.i ], [ %.069.i.i.i.i.i.i.1.i.unr, %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.1.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i.1.i ], [ %.078.i.i.i.i.i.i.1.i.unr, %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit ] ; 8 uses
  %i.bs = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -16
  %i.bt = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -16
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !102
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !104
  %i.bv = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -8
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !52
  %i.bx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -8
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !105
  %i.by = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -32
  %i.bz = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -32
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !102
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !104
  %i.cb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -24
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !52
  %i.cd = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -24
  store i32 %i.cc, ptr %i.cd, align 8, !tbaa !105
  %i.ce = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -48
  %i.cf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -48
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !102
  store ptr %i.cg, ptr %i.cf, align 8, !tbaa !104
  %i.ch = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -40
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !52
  %i.cj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -40
  store i32 %i.ci, ptr %i.cj, align 8, !tbaa !105
  %i.ck = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -64 ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -64 ; 2 uses
  %i.cm = load ptr, ptr %i.ck, align 8, !tbaa !102
  store ptr %i.cm, ptr %i.cl, align 8, !tbaa !104
  %i.cn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -56
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !52
  %i.cp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -56
  store i32 %i.co, ptr %i.cp, align 8, !tbaa !105
  %i.cq = add nsw i64 %.010.i.i.i.i.i.i.1.i, -4
  %i.cr = icmp sgt i64 %.010.i.i.i.i.i.i.1.i, 4
  br i1 %i.cr, label %.lr.ph.i.i.i.i.i.i.1.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.1.i, !llvm.loop !4

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.1.i: ; preds = %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.1.i, %bb.d
  store ptr %.sroa.0.0.copyload.i.1.i, ptr %.sroa.039.042.i, align 8, !tbaa !104
  store i32 %.val.i.i.1.i, ptr %i.h, align 8, !tbaa !105
  br label %bb.e

bb.e:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.1.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SQ_.exit.i.1.i
  %.val1.i24.i.1.i = phi i32 [ %.val.i.i.1.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.1.i ], [ %.val1.i.pre.i.1.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SQ_.exit.i.1.i ]
  %.sroa.08.020.i.ptr.2.i = getelementptr inbounds nuw i8, ptr %.sroa.039.042.i, i64 48 ; 6 uses
  %i.cs = getelementptr i8, ptr %.sroa.039.042.i, i64 56 ; 2 uses
  %.val.i.i.2.i = load i32, ptr %i.cs, align 8, !tbaa !105 ; 6 uses
  %i.ct = icmp ugt i32 %.val.i.i.2.i, %.val1.i24.i.1.i
  %.sroa.0.0.copyload.i.2.i = load ptr, ptr %.sroa.08.020.i.ptr.2.i, align 8 ; 2 uses
  br i1 %i.ct, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val2.i7.i.i.2.i = load i32, ptr %i.ax, align 8, !tbaa !105 ; 2 uses
  %i.cu = icmp ugt i32 %.val.i.i.2.i, %.val2.i7.i.i.2.i
  br i1 %i.cu, label %.lr.ph.i.i.2.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SQ_.exit.i.2.i

.lr.ph.i.i.2.i:                                   ; preds = %bb.f, %.lr.ph.i.i.2.i
  %.val2.i9.i.i.2.i = phi i32 [ %.val2.i.i.i.2.i, %.lr.ph.i.i.2.i ], [ %.val2.i7.i.i.2.i, %bb.f ]
  %.sroa.04.08.i.i.2.i = phi ptr [ %.sroa.0.0.i.i.2.i, %.lr.ph.i.i.2.i ], [ %.sroa.08.020.i.ptr.2.i, %bb.f ] ; 4 uses
  %.sroa.0.0.i.i.2.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i.2.i, i64 -16 ; 3 uses
  %i.cv = load ptr, ptr %.sroa.0.0.i.i.2.i, align 8, !tbaa !102
  store ptr %i.cv, ptr %.sroa.04.08.i.i.2.i, align 8, !tbaa !104
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.2.i, i64 8
  store i32 %.val2.i9.i.i.2.i, ptr %i.cw, align 8, !tbaa !105
  %i.cx = getelementptr i8, ptr %.sroa.04.08.i.i.2.i, i64 -24
  %.val2.i.i.i.2.i = load i32, ptr %i.cx, align 8, !tbaa !105 ; 2 uses
  %i.cy = icmp ugt i32 %.val.i.i.2.i, %.val2.i.i.i.2.i
  br i1 %i.cy, label %.lr.ph.i.i.2.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SQ_.exit.i.2.i, !llvm.loop !5

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SQ_.exit.i.2.i: ; preds = %.lr.ph.i.i.2.i, %bb.f
  %.sroa.04.0.lcssa.i.i.2.i = phi ptr [ %.sroa.08.020.i.ptr.2.i, %bb.f ], [ %.sroa.0.0.i.i.2.i, %.lr.ph.i.i.2.i ] ; 2 uses
  store ptr %.sroa.0.0.copyload.i.2.i, ptr %.sroa.04.0.lcssa.i.i.2.i, align 8, !tbaa !104
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.2.i, i64 8
  store i32 %.val.i.i.2.i, ptr %i.cz, align 8, !tbaa !105
  %.val1.i.pre.i.2.i = load i32, ptr %i.h, align 8, !tbaa !105
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.da = ptrtoint ptr %.sroa.08.020.i.ptr.2.i to i64
  %i.db = sub i64 %i.da, %i.g
  %i.dc = ashr exact i64 %i.db, 4                 ; 5 uses
  %i.dd = icmp sgt i64 %i.dc, 0
  br i1 %i.dd, label %.lr.ph.i.i.i.i.i.preheader.i.2.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.2.i

.lr.ph.i.i.i.i.i.preheader.i.2.i:                 ; preds = %bb.g
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.039.042.i, i64 64 ; 2 uses
  %xtraiter149 = and i64 %i.dc, 3                 ; 2 uses
  %lcmp.mod150.not = icmp eq i64 %xtraiter149, 0
  br i1 %lcmp.mod150.not, label %.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.2.i.prol

.lr.ph.i.i.i.i.i.i.2.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.preheader.i.2.i, %.lr.ph.i.i.i.i.i.i.2.i.prol
  %.010.i.i.i.i.i.i.2.i.prol = phi i64 [ %i.dl, %.lr.ph.i.i.i.i.i.i.2.i.prol ], [ %i.dc, %.lr.ph.i.i.i.i.i.preheader.i.2.i ]
  %.069.i.i.i.i.i.i.2.i.prol = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.i.2.i.prol ], [ %i.de, %.lr.ph.i.i.i.i.i.preheader.i.2.i ] ; 2 uses
  %.078.i.i.i.i.i.i.2.i.prol = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i.i.2.i.prol ], [ %.sroa.08.020.i.ptr.2.i, %.lr.ph.i.i.i.i.i.preheader.i.2.i ] ; 2 uses
  %prol.iter151 = phi i64 [ %prol.iter151.next, %.lr.ph.i.i.i.i.i.i.2.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.2.i ]
  %i.df = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.2.i.prol, i64 -16 ; 3 uses
  %i.dg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.2.i.prol, i64 -16 ; 3 uses
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !102
  store ptr %i.dh, ptr %i.dg, align 8, !tbaa !104
  %i.di = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.2.i.prol, i64 -8
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !52
  %i.dk = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.2.i.prol, i64 -8
  store i32 %i.dj, ptr %i.dk, align 8, !tbaa !105
  %i.dl = add nsw i64 %.010.i.i.i.i.i.i.2.i.prol, -1 ; 2 uses
  %prol.iter151.next = add i64 %prol.iter151, 1   ; 2 uses
  %prol.iter151.cmp.not = icmp eq i64 %prol.iter151.next, %xtraiter149
  br i1 %prol.iter151.cmp.not, label %.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.2.i.prol, !llvm.loop !590

.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.2.i.prol, %.lr.ph.i.i.i.i.i.preheader.i.2.i
  %.010.i.i.i.i.i.i.2.i.unr = phi i64 [ %i.dc, %.lr.ph.i.i.i.i.i.preheader.i.2.i ], [ %i.dl, %.lr.ph.i.i.i.i.i.i.2.i.prol ]
  %.069.i.i.i.i.i.i.2.i.unr = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i.preheader.i.2.i ], [ %i.dg, %.lr.ph.i.i.i.i.i.i.2.i.prol ]
  %.078.i.i.i.i.i.i.2.i.unr = phi ptr [ %.sroa.08.020.i.ptr.2.i, %.lr.ph.i.i.i.i.i.preheader.i.2.i ], [ %i.df, %.lr.ph.i.i.i.i.i.i.2.i.prol ]
  %i.dm = icmp ult i64 %i.dc, 4
  br i1 %i.dm, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.2.i, label %.lr.ph.i.i.i.i.i.i.2.i

.lr.ph.i.i.i.i.i.i.2.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.2.i
  %.010.i.i.i.i.i.i.2.i = phi i64 [ %i.el, %.lr.ph.i.i.i.i.i.i.2.i ], [ %.010.i.i.i.i.i.i.2.i.unr, %.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.2.i = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i.i.2.i ], [ %.069.i.i.i.i.i.i.2.i.unr, %.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.2.i = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i.i.2.i ], [ %.078.i.i.i.i.i.i.2.i.unr, %.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit ] ; 8 uses
  %i.dn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.2.i, i64 -16
  %i.do = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.2.i, i64 -16
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !102
  store ptr %i.dp, ptr %i.do, align 8, !tbaa !104
  %i.dq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.2.i, i64 -8
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !52
end_hunk_0
begin_hunk_1_@_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SM_SP_:bb.a
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !123
  %i.ar = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -56
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !52
  %i.at = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -56
  store i32 %i.as, ptr %i.at, align 8, !tbaa !125
  %i.au = add nsw i64 %.010.i.i.i.i.i.i, -4
  %i.av = icmp sgt i64 %.010.i.i.i.i.i.i, 4
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i, !llvm.loop !18

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.d
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !123
  store i32 %.val.i.i, ptr %i.g, align 8, !tbaa !125
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aw = getelementptr i8, ptr %.pn19.i, i64 8
  %.val2.i7.i.i = load i32, ptr %i.aw, align 8, !tbaa !125 ; 2 uses
  %i.ax = icmp ugt i32 %.val.i.i, %.val2.i7.i.i
  br i1 %i.ax, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SP_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.val2.i9.i.i = phi i32 [ %.val2.i.i.i, %.lr.ph.i.i ], [ %.val2.i7.i.i, %bb.e ]
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.08.020.i, %bb.e ] ; 4 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i, i64 -16 ; 3 uses
  %i.ay = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !124
  store ptr %i.ay, ptr %.sroa.04.08.i.i, align 8, !tbaa !123
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8
  store i32 %.val2.i9.i.i, ptr %i.az, align 8, !tbaa !125
  %i.ba = getelementptr i8, ptr %.sroa.04.08.i.i, i64 -24
  %.val2.i.i.i = load i32, ptr %i.ba, align 8, !tbaa !125 ; 2 uses
  %i.bb = icmp ugt i32 %.val.i.i, %.val2.i.i.i
  br i1 %i.bb, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SP_.exit.i, !llvm.loop !19

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SP_.exit.i: ; preds = %.lr.ph.i.i, %bb.e
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.08.020.i, %bb.e ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 2 uses
  store ptr %.sroa.0.0.copyload.i, ptr %.sroa.04.0.lcssa.i.i, align 8, !tbaa !123
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i, i64 8
  store i32 %.val.i.i, ptr %i.bc, align 8, !tbaa !125
  %.val1.i.pre.i = load i32, ptr %i.g, align 8, !tbaa !125
  br label %bb.f

bb.f:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SP_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i
  %.val1.i24.i = phi i32 [ %.val.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i ], [ %.val1.i.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SP_.exit.i ]
  %.sroa.08.0.i = getelementptr inbounds nuw i8, ptr %.sroa.08.020.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.08.0.i, %1
  br i1 %.not.i, label %common.ret30, label %bb.c, !llvm.loop !20

common.ret30:                                     ; preds = %.preheader.i, %bb.b, %bb.f, %bb.g
  ret void

bb.g:                                             ; preds = %bb.a
  %i.bd = lshr i64 %i.d, 1                        ; 2 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bd ; 4 uses
  tail call fastcc void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SM_SP_(ptr %0, ptr %i.be)
  tail call fastcc void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SM_SP_(ptr %i.be, ptr %1)
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.a, %i.bf
  %i.bh = ashr exact i64 %i.bg, 4
  tail call fastcc void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SM_SM_SP_SP_T1_(ptr %0, ptr %i.be, ptr %1, i64 noundef %i.bd, i64 noundef %i.bh)
  br label %common.ret30
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SM_SP_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 4
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 4 uses
  %i.g = getelementptr inbounds [16 x i8], ptr %0, i64 %i.f ; 7 uses
  %i.h = icmp sgt i64 %i.f, %3
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 4                   ; 2 uses
  br i1 %i.h, label %bb.b, label %common.ret

common.ret33:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SM_SP_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3)
  tail call fastcc void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SM_SP_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3)
  tail call fastcc void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SM_SM_SP_SP_T1_SP_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3)
  br label %common.ret33

common.ret:                                       ; preds = %bb.a
  tail call fastcc void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SM_SP_T1_(ptr %0, ptr %i.g, ptr noundef %2)
  tail call fastcc void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SM_SP_T1_(ptr %i.g, ptr %1, ptr noundef %2)
  tail call fastcc void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SM_SM_SP_SP_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2)
  br label %common.ret33
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SM_SP_T1_(ptr %0, ptr %1, ptr noundef %2) unnamed_addr #17 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 6 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c ; 3 uses
  %i.f = icmp sgt i64 %i.c, 96
  br i1 %i.f, label %.lr.ph.i.i, label %._crit_edge.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SM_SP_.exit.i
  %i.g = phi i64 [ %i.jz, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SM_SP_.exit.i ], [ %i.b, %bb.a ] ; 6 uses
  %.sroa.039.042.i = phi ptr [ %i.jy, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SM_SP_.exit.i ], [ %0, %bb.a ] ; 26 uses
  %i.h = getelementptr i8, ptr %.sroa.039.042.i, i64 8 ; 11 uses
  %.val1.i.pre22.i.i = load i32, ptr %i.h, align 8, !tbaa !125 ; 2 uses
  %.sroa.08.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.039.042.i, i64 16 ; 4 uses
  %i.i = getelementptr i8, ptr %.sroa.039.042.i, i64 24 ; 2 uses
  %.val.i.i.i = load i32, ptr %i.i, align 8, !tbaa !125 ; 3 uses
  %i.j = icmp ugt i32 %.val.i.i.i, %.val1.i.pre22.i.i
  %.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.08.020.i.ptr.i, align 8
  br i1 %i.j, label %bb.b, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SP_.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = ptrtoint ptr %.sroa.08.020.i.ptr.i to i64
  %i.l = sub i64 %i.k, %i.g
  %i.m = ashr exact i64 %i.l, 4                   ; 5 uses
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.preheader.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i

.lr.ph.i.i.i.i.i.preheader.i.i:                   ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.039.042.i, i64 32 ; 2 uses
  %xtraiter = and i64 %i.m, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i, %.lr.ph.i.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.i.prol = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.m, %.lr.ph.i.i.i.i.i.preheader.i.i ]
  %.069.i.i.i.i.i.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.o, %.lr.ph.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %.078.i.i.i.i.i.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.sroa.08.020.i.ptr.i, %.lr.ph.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i ]
  %i.p = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.q = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !124
  store ptr %i.r, ptr %i.q, align 8, !tbaa !123
  %i.s = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.prol, i64 -8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !52
  %i.u = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.prol, i64 -8
  store i32 %i.t, ptr %i.u, align 8, !tbaa !125
  %i.v = add nsw i64 %.010.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !709

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i.i.unr = phi i64 [ %i.m, %.lr.ph.i.i.i.i.i.preheader.i.i ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.i.unr = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.preheader.i.i ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.08.020.i.ptr.i, %.lr.ph.i.i.i.i.i.preheader.i.i ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.w = icmp ult i64 %i.m, 4
  br i1 %i.w, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.x = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -16
  %i.y = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -16
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !124
  store ptr %i.z, ptr %i.y, align 8, !tbaa !123
  %i.aa = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !52
  %i.ac = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -8
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !125
  %i.ad = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -32
  %i.ae = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -32
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !124
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !123
  %i.ag = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !52
  %i.ai = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -24
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !125
  %i.aj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -48
  %i.ak = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -48
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !124
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !123
  %i.am = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -40
  %i.an = load i32, ptr %i.am, align 8, !tbaa !52
  %i.ao = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -40
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !125
  %i.ap = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !124
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !123
  %i.as = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !52
  %i.au = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -56
  store i32 %i.at, ptr %i.au, align 8, !tbaa !125
  %i.av = add nsw i64 %.010.i.i.i.i.i.i.i, -4
  %i.aw = icmp sgt i64 %.010.i.i.i.i.i.i.i, 4
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i, !llvm.loop !18

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.b
  store ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.039.042.i, align 8, !tbaa !123
  store i32 %.val.i.i.i, ptr %i.h, align 8, !tbaa !125
  br label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SP_.exit.i.i

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SP_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i
  %.val1.i24.i.i = phi i32 [ %.val.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i ], [ %.val1.i.pre22.i.i, %.lr.ph.i.i ]
  %.sroa.08.020.i.ptr.1.i = getelementptr inbounds nuw i8, ptr %.sroa.039.042.i, i64 32 ; 6 uses
  %i.ax = getelementptr i8, ptr %.sroa.039.042.i, i64 40 ; 2 uses
  %.val.i.i.1.i = load i32, ptr %i.ax, align 8, !tbaa !125 ; 6 uses
  %i.ay = icmp ugt i32 %.val.i.i.1.i, %.val1.i24.i.i
  %.sroa.0.0.copyload.i.1.i = load ptr, ptr %.sroa.08.020.i.ptr.1.i, align 8 ; 2 uses
  br i1 %i.ay, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SP_.exit.i.i
  %.val2.i7.i.i.1.i = load i32, ptr %i.i, align 8, !tbaa !125 ; 2 uses
  %i.az = icmp ugt i32 %.val.i.i.1.i, %.val2.i7.i.i.1.i
  br i1 %i.az, label %.lr.ph.i.i.1.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SP_.exit.i.1.i

.lr.ph.i.i.1.i:                                   ; preds = %bb.c, %.lr.ph.i.i.1.i
  %.val2.i9.i.i.1.i = phi i32 [ %.val2.i.i.i.1.i, %.lr.ph.i.i.1.i ], [ %.val2.i7.i.i.1.i, %bb.c ]
  %.sroa.04.08.i.i.1.i = phi ptr [ %.sroa.0.0.i.i.1.i, %.lr.ph.i.i.1.i ], [ %.sroa.08.020.i.ptr.1.i, %bb.c ] ; 4 uses
  %.sroa.0.0.i.i.1.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i.1.i, i64 -16 ; 3 uses
  %i.ba = load ptr, ptr %.sroa.0.0.i.i.1.i, align 8, !tbaa !124
  store ptr %i.ba, ptr %.sroa.04.08.i.i.1.i, align 8, !tbaa !123
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.1.i, i64 8
  store i32 %.val2.i9.i.i.1.i, ptr %i.bb, align 8, !tbaa !125
  %i.bc = getelementptr i8, ptr %.sroa.04.08.i.i.1.i, i64 -24
  %.val2.i.i.i.1.i = load i32, ptr %i.bc, align 8, !tbaa !125 ; 2 uses
  %i.bd = icmp ugt i32 %.val.i.i.1.i, %.val2.i.i.i.1.i
  br i1 %i.bd, label %.lr.ph.i.i.1.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SP_.exit.i.1.i, !llvm.loop !19

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SP_.exit.i.1.i: ; preds = %.lr.ph.i.i.1.i, %bb.c
  %.sroa.04.0.lcssa.i.i.1.i = phi ptr [ %.sroa.08.020.i.ptr.1.i, %bb.c ], [ %.sroa.0.0.i.i.1.i, %.lr.ph.i.i.1.i ] ; 2 uses
  store ptr %.sroa.0.0.copyload.i.1.i, ptr %.sroa.04.0.lcssa.i.i.1.i, align 8, !tbaa !123
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.1.i, i64 8
  store i32 %.val.i.i.1.i, ptr %i.be, align 8, !tbaa !125
  %.val1.i.pre.i.1.i = load i32, ptr %i.h, align 8, !tbaa !125
  br label %bb.e

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SP_.exit.i.i
  %i.bf = ptrtoint ptr %.sroa.08.020.i.ptr.1.i to i64
  %i.bg = sub i64 %i.bf, %i.g
  %i.bh = ashr exact i64 %i.bg, 4                 ; 5 uses
  %i.bi = icmp sgt i64 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i.preheader.i.1.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.1.i

.lr.ph.i.i.i.i.i.preheader.i.1.i:                 ; preds = %bb.d
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.039.042.i, i64 48 ; 2 uses
  %xtraiter146 = and i64 %i.bh, 3                 ; 2 uses
  %lcmp.mod147.not = icmp eq i64 %xtraiter146, 0
  br i1 %lcmp.mod147.not, label %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.1.i.prol

.lr.ph.i.i.i.i.i.i.1.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.preheader.i.1.i, %.lr.ph.i.i.i.i.i.i.1.i.prol
  %.010.i.i.i.i.i.i.1.i.prol = phi i64 [ %i.bq, %.lr.ph.i.i.i.i.i.i.1.i.prol ], [ %i.bh, %.lr.ph.i.i.i.i.i.preheader.i.1.i ]
  %.069.i.i.i.i.i.i.1.i.prol = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.1.i.prol ], [ %i.bj, %.lr.ph.i.i.i.i.i.preheader.i.1.i ] ; 2 uses
  %.078.i.i.i.i.i.i.1.i.prol = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i.1.i.prol ], [ %.sroa.08.020.i.ptr.1.i, %.lr.ph.i.i.i.i.i.preheader.i.1.i ] ; 2 uses
  %prol.iter148 = phi i64 [ %prol.iter148.next, %.lr.ph.i.i.i.i.i.i.1.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.1.i ]
  %i.bk = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i.prol, i64 -16 ; 3 uses
  %i.bl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i.prol, i64 -16 ; 3 uses
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !124
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !123
  %i.bn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i.prol, i64 -8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !52
  %i.bp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i.prol, i64 -8
  store i32 %i.bo, ptr %i.bp, align 8, !tbaa !125
  %i.bq = add nsw i64 %.010.i.i.i.i.i.i.1.i.prol, -1 ; 2 uses
  %prol.iter148.next = add i64 %prol.iter148, 1   ; 2 uses
  %prol.iter148.cmp.not = icmp eq i64 %prol.iter148.next, %xtraiter146
  br i1 %prol.iter148.cmp.not, label %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.1.i.prol, !llvm.loop !710

.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.1.i.prol, %.lr.ph.i.i.i.i.i.preheader.i.1.i
  %.010.i.i.i.i.i.i.1.i.unr = phi i64 [ %i.bh, %.lr.ph.i.i.i.i.i.preheader.i.1.i ], [ %i.bq, %.lr.ph.i.i.i.i.i.i.1.i.prol ]
  %.069.i.i.i.i.i.i.1.i.unr = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.preheader.i.1.i ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.1.i.prol ]
  %.078.i.i.i.i.i.i.1.i.unr = phi ptr [ %.sroa.08.020.i.ptr.1.i, %.lr.ph.i.i.i.i.i.preheader.i.1.i ], [ %i.bk, %.lr.ph.i.i.i.i.i.i.1.i.prol ]
  %i.br = icmp ult i64 %i.bh, 4
  br i1 %i.br, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.1.i, label %.lr.ph.i.i.i.i.i.i.1.i

.lr.ph.i.i.i.i.i.i.1.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.1.i
  %.010.i.i.i.i.i.i.1.i = phi i64 [ %i.cq, %.lr.ph.i.i.i.i.i.i.1.i ], [ %.010.i.i.i.i.i.i.1.i.unr, %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.1.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i.1.i ], [ %.069.i.i.i.i.i.i.1.i.unr, %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.1.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i.1.i ], [ %.078.i.i.i.i.i.i.1.i.unr, %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit ] ; 8 uses
  %i.bs = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -16
  %i.bt = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -16
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !124
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !123
  %i.bv = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -8
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !52
  %i.bx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -8
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !125
  %i.by = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -32
  %i.bz = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -32
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !124
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !123
  %i.cb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -24
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !52
  %i.cd = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -24
  store i32 %i.cc, ptr %i.cd, align 8, !tbaa !125
  %i.ce = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -48
  %i.cf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -48
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !124
  store ptr %i.cg, ptr %i.cf, align 8, !tbaa !123
  %i.ch = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -40
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !52
  %i.cj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -40
  store i32 %i.ci, ptr %i.cj, align 8, !tbaa !125
  %i.ck = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -64 ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -64 ; 2 uses
  %i.cm = load ptr, ptr %i.ck, align 8, !tbaa !124
  store ptr %i.cm, ptr %i.cl, align 8, !tbaa !123
  %i.cn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -56
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !52
  %i.cp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -56
  store i32 %i.co, ptr %i.cp, align 8, !tbaa !125
  %i.cq = add nsw i64 %.010.i.i.i.i.i.i.1.i, -4
  %i.cr = icmp sgt i64 %.010.i.i.i.i.i.i.1.i, 4
  br i1 %i.cr, label %.lr.ph.i.i.i.i.i.i.1.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.1.i, !llvm.loop !18

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.1.i: ; preds = %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.1.i, %bb.d
  store ptr %.sroa.0.0.copyload.i.1.i, ptr %.sroa.039.042.i, align 8, !tbaa !123
  store i32 %.val.i.i.1.i, ptr %i.h, align 8, !tbaa !125
  br label %bb.e

bb.e:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.1.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SP_.exit.i.1.i
  %.val1.i24.i.1.i = phi i32 [ %.val.i.i.1.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.1.i ], [ %.val1.i.pre.i.1.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SP_.exit.i.1.i ]
  %.sroa.08.020.i.ptr.2.i = getelementptr inbounds nuw i8, ptr %.sroa.039.042.i, i64 48 ; 6 uses
  %i.cs = getelementptr i8, ptr %.sroa.039.042.i, i64 56 ; 2 uses
  %.val.i.i.2.i = load i32, ptr %i.cs, align 8, !tbaa !125 ; 6 uses
  %i.ct = icmp ugt i32 %.val.i.i.2.i, %.val1.i24.i.1.i
  %.sroa.0.0.copyload.i.2.i = load ptr, ptr %.sroa.08.020.i.ptr.2.i, align 8 ; 2 uses
  br i1 %i.ct, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val2.i7.i.i.2.i = load i32, ptr %i.ax, align 8, !tbaa !125 ; 2 uses
  %i.cu = icmp ugt i32 %.val.i.i.2.i, %.val2.i7.i.i.2.i
  br i1 %i.cu, label %.lr.ph.i.i.2.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SP_.exit.i.2.i

.lr.ph.i.i.2.i:                                   ; preds = %bb.f, %.lr.ph.i.i.2.i
  %.val2.i9.i.i.2.i = phi i32 [ %.val2.i.i.i.2.i, %.lr.ph.i.i.2.i ], [ %.val2.i7.i.i.2.i, %bb.f ]
  %.sroa.04.08.i.i.2.i = phi ptr [ %.sroa.0.0.i.i.2.i, %.lr.ph.i.i.2.i ], [ %.sroa.08.020.i.ptr.2.i, %bb.f ] ; 4 uses
  %.sroa.0.0.i.i.2.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i.2.i, i64 -16 ; 3 uses
  %i.cv = load ptr, ptr %.sroa.0.0.i.i.2.i, align 8, !tbaa !124
  store ptr %i.cv, ptr %.sroa.04.08.i.i.2.i, align 8, !tbaa !123
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.2.i, i64 8
  store i32 %.val2.i9.i.i.2.i, ptr %i.cw, align 8, !tbaa !125
  %i.cx = getelementptr i8, ptr %.sroa.04.08.i.i.2.i, i64 -24
  %.val2.i.i.i.2.i = load i32, ptr %i.cx, align 8, !tbaa !125 ; 2 uses
  %i.cy = icmp ugt i32 %.val.i.i.2.i, %.val2.i.i.i.2.i
  br i1 %i.cy, label %.lr.ph.i.i.2.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SP_.exit.i.2.i, !llvm.loop !19

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E1_EEEvSM_SP_.exit.i.2.i: ; preds = %.lr.ph.i.i.2.i, %bb.f
  %.sroa.04.0.lcssa.i.i.2.i = phi ptr [ %.sroa.08.020.i.ptr.2.i, %bb.f ], [ %.sroa.0.0.i.i.2.i, %.lr.ph.i.i.2.i ] ; 2 uses
  store ptr %.sroa.0.0.copyload.i.2.i, ptr %.sroa.04.0.lcssa.i.i.2.i, align 8, !tbaa !123
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.2.i, i64 8
  store i32 %.val.i.i.2.i, ptr %i.cz, align 8, !tbaa !125
  %.val1.i.pre.i.2.i = load i32, ptr %i.h, align 8, !tbaa !125
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.da = ptrtoint ptr %.sroa.08.020.i.ptr.2.i to i64
  %i.db = sub i64 %i.da, %i.g
  %i.dc = ashr exact i64 %i.db, 4                 ; 5 uses
  %i.dd = icmp sgt i64 %i.dc, 0
  br i1 %i.dd, label %.lr.ph.i.i.i.i.i.preheader.i.2.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.2.i

.lr.ph.i.i.i.i.i.preheader.i.2.i:                 ; preds = %bb.g
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.039.042.i, i64 64 ; 2 uses
  %xtraiter149 = and i64 %i.dc, 3                 ; 2 uses
  %lcmp.mod150.not = icmp eq i64 %xtraiter149, 0
  br i1 %lcmp.mod150.not, label %.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.2.i.prol

.lr.ph.i.i.i.i.i.i.2.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.preheader.i.2.i, %.lr.ph.i.i.i.i.i.i.2.i.prol
  %.010.i.i.i.i.i.i.2.i.prol = phi i64 [ %i.dl, %.lr.ph.i.i.i.i.i.i.2.i.prol ], [ %i.dc, %.lr.ph.i.i.i.i.i.preheader.i.2.i ]
  %.069.i.i.i.i.i.i.2.i.prol = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.i.2.i.prol ], [ %i.de, %.lr.ph.i.i.i.i.i.preheader.i.2.i ] ; 2 uses
  %.078.i.i.i.i.i.i.2.i.prol = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i.i.2.i.prol ], [ %.sroa.08.020.i.ptr.2.i, %.lr.ph.i.i.i.i.i.preheader.i.2.i ] ; 2 uses
  %prol.iter151 = phi i64 [ %prol.iter151.next, %.lr.ph.i.i.i.i.i.i.2.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.2.i ]
  %i.df = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.2.i.prol, i64 -16 ; 3 uses
  %i.dg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.2.i.prol, i64 -16 ; 3 uses
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !124
  store ptr %i.dh, ptr %i.dg, align 8, !tbaa !123
  %i.di = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.2.i.prol, i64 -8
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !52
  %i.dk = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.2.i.prol, i64 -8
  store i32 %i.dj, ptr %i.dk, align 8, !tbaa !125
  %i.dl = add nsw i64 %.010.i.i.i.i.i.i.2.i.prol, -1 ; 2 uses
  %prol.iter151.next = add i64 %prol.iter151, 1   ; 2 uses
  %prol.iter151.cmp.not = icmp eq i64 %prol.iter151.next, %xtraiter149
  br i1 %prol.iter151.cmp.not, label %.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.2.i.prol, !llvm.loop !711

.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.2.i.prol, %.lr.ph.i.i.i.i.i.preheader.i.2.i
  %.010.i.i.i.i.i.i.2.i.unr = phi i64 [ %i.dc, %.lr.ph.i.i.i.i.i.preheader.i.2.i ], [ %i.dl, %.lr.ph.i.i.i.i.i.i.2.i.prol ]
  %.069.i.i.i.i.i.i.2.i.unr = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i.preheader.i.2.i ], [ %i.dg, %.lr.ph.i.i.i.i.i.i.2.i.prol ]
  %.078.i.i.i.i.i.i.2.i.unr = phi ptr [ %.sroa.08.020.i.ptr.2.i, %.lr.ph.i.i.i.i.i.preheader.i.2.i ], [ %i.df, %.lr.ph.i.i.i.i.i.i.2.i.prol ]
  %i.dm = icmp ult i64 %i.dc, 4
  br i1 %i.dm, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm11TreePatternEjESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.2.i, label %.lr.ph.i.i.i.i.i.i.2.i

.lr.ph.i.i.i.i.i.i.2.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.2.i
  %.010.i.i.i.i.i.i.2.i = phi i64 [ %i.el, %.lr.ph.i.i.i.i.i.i.2.i ], [ %.010.i.i.i.i.i.i.2.i.unr, %.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.2.i = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i.i.2.i ], [ %.069.i.i.i.i.i.i.2.i.unr, %.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.2.i = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i.i.2.i ], [ %.078.i.i.i.i.i.i.2.i.unr, %.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit ] ; 8 uses
  %i.dn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.2.i, i64 -16
  %i.do = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.2.i, i64 -16
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !124
  store ptr %i.dp, ptr %i.do, align 8, !tbaa !123
  %i.dq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.2.i, i64 -8
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !52
end_hunk_1

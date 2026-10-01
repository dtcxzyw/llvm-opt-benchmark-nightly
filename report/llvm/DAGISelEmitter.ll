Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DAGISelEmitter?download=true
inline.NumInlined: 1177
inline.NumDeleted: 725
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_SG_T0_T1_:bb.a
.lr.ph.i.i34.1:                                   ; preds = %bb.d, %.lr.ph.i.i34.1
  %.sroa.0.08.i.i.1 = phi ptr [ %.sroa.0.0.i.i.1, %.lr.ph.i.i34.1 ], [ %.sroa.0.020.i.ptr, %bb.d ] ; 4 uses
  %.sroa.03.07.i.i.1 = phi ptr [ %.sroa.0.08.i.i.1, %.lr.ph.i.i34.1 ], [ %.sroa.0.020.i.ptr.1, %bb.d ]
  %i.x = load ptr, ptr %.sroa.0.08.i.i.1, align 8, !tbaa !55
  store ptr %i.x, ptr %.sroa.03.07.i.i.1, align 8, !tbaa !55
  %.sroa.0.0.i.i.1 = getelementptr inbounds i8, ptr %.sroa.0.08.i.i.1, i64 -8 ; 2 uses
  %i.y = load ptr, ptr %.sroa.0.0.i.i.1, align 8, !tbaa !55
  %i.z = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_123PatternSortingPredicateclEPKN4llvm14PatternToMatchES4_(ptr noundef nonnull readonly align 8 dereferenceable(8) %4, ptr noundef %i.u, ptr noundef %i.y)
  br i1 %i.z, label %.lr.ph.i.i34.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_T0_.exit.i.1, !llvm.loop !3

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_T0_.exit.i.1: ; preds = %.lr.ph.i.i34.1, %bb.d
  %.sroa.03.0.lcssa.i.i.1 = phi ptr [ %.sroa.0.020.i.ptr.1, %bb.d ], [ %.sroa.0.08.i.i.1, %.lr.ph.i.i34.1 ]
  store ptr %i.u, ptr %.sroa.03.0.lcssa.i.i.1, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre95 = load ptr, ptr %.sroa.09.012.i, align 8, !tbaa !55
  br label %bb.e

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.1: ; preds = %bb.c
  %i.aa = load ptr, ptr %.sroa.0.020.i.ptr.1, align 8, !tbaa !55 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %indvars.iv, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.09.012.i, i64 16, i1 false)
  store ptr %i.aa, ptr %.sroa.09.012.i, align 8, !tbaa !55
  br label %bb.e

bb.e:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_T0_.exit.i.1
  %i.ab = phi ptr [ %i.aa, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.1 ], [ %.pre95, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_T0_.exit.i.1 ]
  %.sroa.0.020.i.ptr.2 = getelementptr inbounds nuw i8, ptr %.sroa.09.012.i, i64 24 ; 7 uses
  %i.ac = load ptr, ptr %.sroa.0.020.i.ptr.2, align 8, !tbaa !55
  %i.ad = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_123PatternSortingPredicateclEPKN4llvm14PatternToMatchES4_(ptr noundef nonnull readonly align 8 dereferenceable(8) %5, ptr noundef %i.ac, ptr noundef %i.ab)
  br i1 %i.ad, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.2, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  %i.ae = load ptr, ptr %.sroa.0.020.i.ptr.2, align 8, !tbaa !55 ; 3 uses
  %i.af = load ptr, ptr %.sroa.0.020.i.ptr.1, align 8, !tbaa !55
  %i.ag = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_123PatternSortingPredicateclEPKN4llvm14PatternToMatchES4_(ptr noundef nonnull readonly align 8 dereferenceable(8) %4, ptr noundef %i.ae, ptr noundef %i.af)
  br i1 %i.ag, label %.lr.ph.i.i34.2, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_T0_.exit.i.2

.lr.ph.i.i34.2:                                   ; preds = %bb.f, %.lr.ph.i.i34.2
  %.sroa.0.08.i.i.2 = phi ptr [ %.sroa.0.0.i.i.2, %.lr.ph.i.i34.2 ], [ %.sroa.0.020.i.ptr.1, %bb.f ] ; 4 uses
  %.sroa.03.07.i.i.2 = phi ptr [ %.sroa.0.08.i.i.2, %.lr.ph.i.i34.2 ], [ %.sroa.0.020.i.ptr.2, %bb.f ]
  %i.ah = load ptr, ptr %.sroa.0.08.i.i.2, align 8, !tbaa !55
  store ptr %i.ah, ptr %.sroa.03.07.i.i.2, align 8, !tbaa !55
  %.sroa.0.0.i.i.2 = getelementptr inbounds i8, ptr %.sroa.0.08.i.i.2, i64 -8 ; 2 uses
  %i.ai = load ptr, ptr %.sroa.0.0.i.i.2, align 8, !tbaa !55
  %i.aj = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_123PatternSortingPredicateclEPKN4llvm14PatternToMatchES4_(ptr noundef nonnull readonly align 8 dereferenceable(8) %4, ptr noundef %i.ae, ptr noundef %i.ai)
  br i1 %i.aj, label %.lr.ph.i.i34.2, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_T0_.exit.i.2, !llvm.loop !3

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_T0_.exit.i.2: ; preds = %.lr.ph.i.i34.2, %bb.f
  %.sroa.03.0.lcssa.i.i.2 = phi ptr [ %.sroa.0.020.i.ptr.2, %bb.f ], [ %.sroa.0.08.i.i.2, %.lr.ph.i.i34.2 ]
  store ptr %i.ae, ptr %.sroa.03.0.lcssa.i.i.2, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre96 = load ptr, ptr %.sroa.09.012.i, align 8, !tbaa !55
  br label %bb.g

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.2: ; preds = %bb.e
  %i.ak = load ptr, ptr %.sroa.0.020.i.ptr.2, align 8, !tbaa !55 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %indvars.iv, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.012.i, i64 24, i1 false)
  store ptr %i.ak, ptr %.sroa.09.012.i, align 8, !tbaa !55
  br label %bb.g

bb.g:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.2, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_T0_.exit.i.2
  %i.al = phi ptr [ %i.ak, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.2 ], [ %.pre96, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_T0_.exit.i.2 ]
  %.sroa.0.020.i.ptr.3 = getelementptr inbounds nuw i8, ptr %.sroa.09.012.i, i64 32 ; 7 uses
  %i.am = load ptr, ptr %.sroa.0.020.i.ptr.3, align 8, !tbaa !55
  %i.an = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_123PatternSortingPredicateclEPKN4llvm14PatternToMatchES4_(ptr noundef nonnull readonly align 8 dereferenceable(8) %5, ptr noundef %i.am, ptr noundef %i.al)
  br i1 %i.an, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.3, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  %i.ao = load ptr, ptr %.sroa.0.020.i.ptr.3, align 8, !tbaa !55 ; 3 uses
  %i.ap = load ptr, ptr %.sroa.0.020.i.ptr.2, align 8, !tbaa !55
  %i.aq = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_123PatternSortingPredicateclEPKN4llvm14PatternToMatchES4_(ptr noundef nonnull readonly align 8 dereferenceable(8) %4, ptr noundef %i.ao, ptr noundef %i.ap)
  br i1 %i.aq, label %.lr.ph.i.i34.3, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_T0_.exit.i.3

.lr.ph.i.i34.3:                                   ; preds = %bb.h, %.lr.ph.i.i34.3
  %.sroa.0.08.i.i.3 = phi ptr [ %.sroa.0.0.i.i.3, %.lr.ph.i.i34.3 ], [ %.sroa.0.020.i.ptr.2, %bb.h ] ; 4 uses
  %.sroa.03.07.i.i.3 = phi ptr [ %.sroa.0.08.i.i.3, %.lr.ph.i.i34.3 ], [ %.sroa.0.020.i.ptr.3, %bb.h ]
  %i.ar = load ptr, ptr %.sroa.0.08.i.i.3, align 8, !tbaa !55
  store ptr %i.ar, ptr %.sroa.03.07.i.i.3, align 8, !tbaa !55
  %.sroa.0.0.i.i.3 = getelementptr inbounds i8, ptr %.sroa.0.08.i.i.3, i64 -8 ; 2 uses
  %i.as = load ptr, ptr %.sroa.0.0.i.i.3, align 8, !tbaa !55
  %i.at = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_123PatternSortingPredicateclEPKN4llvm14PatternToMatchES4_(ptr noundef nonnull readonly align 8 dereferenceable(8) %4, ptr noundef %i.ao, ptr noundef %i.as)
  br i1 %i.at, label %.lr.ph.i.i34.3, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_T0_.exit.i.3, !llvm.loop !3

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_T0_.exit.i.3: ; preds = %.lr.ph.i.i34.3, %bb.h
  %.sroa.03.0.lcssa.i.i.3 = phi ptr [ %.sroa.0.020.i.ptr.3, %bb.h ], [ %.sroa.0.08.i.i.3, %.lr.ph.i.i34.3 ]
  store ptr %i.ao, ptr %.sroa.03.0.lcssa.i.i.3, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre97 = load ptr, ptr %.sroa.09.012.i, align 8, !tbaa !55
  br label %bb.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.3: ; preds = %bb.g
  %i.au = load ptr, ptr %.sroa.0.020.i.ptr.3, align 8, !tbaa !55 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %indvars.iv, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.012.i, i64 32, i1 false)
  store ptr %i.au, ptr %.sroa.09.012.i, align 8, !tbaa !55
  br label %bb.i

bb.i:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.3, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_T0_.exit.i.3
  %i.av = phi ptr [ %i.au, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.3 ], [ %.pre97, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_T0_.exit.i.3 ]
  %.sroa.0.020.i.ptr.4 = getelementptr inbounds nuw i8, ptr %.sroa.09.012.i, i64 40 ; 7 uses
  %i.aw = load ptr, ptr %.sroa.0.020.i.ptr.4, align 8, !tbaa !55
  %i.ax = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_123PatternSortingPredicateclEPKN4llvm14PatternToMatchES4_(ptr noundef nonnull readonly align 8 dereferenceable(8) %5, ptr noundef %i.aw, ptr noundef %i.av)
  br i1 %i.ax, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.4, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  %i.ay = load ptr, ptr %.sroa.0.020.i.ptr.4, align 8, !tbaa !55 ; 3 uses
  %i.az = load ptr, ptr %.sroa.0.020.i.ptr.3, align 8, !tbaa !55
  %i.ba = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_123PatternSortingPredicateclEPKN4llvm14PatternToMatchES4_(ptr noundef nonnull readonly align 8 dereferenceable(8) %4, ptr noundef %i.ay, ptr noundef %i.az)
  br i1 %i.ba, label %.lr.ph.i.i34.4, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_T0_.exit.i.4

.lr.ph.i.i34.4:                                   ; preds = %bb.j, %.lr.ph.i.i34.4
  %.sroa.0.08.i.i.4 = phi ptr [ %.sroa.0.0.i.i.4, %.lr.ph.i.i34.4 ], [ %.sroa.0.020.i.ptr.3, %bb.j ] ; 4 uses
  %.sroa.03.07.i.i.4 = phi ptr [ %.sroa.0.08.i.i.4, %.lr.ph.i.i34.4 ], [ %.sroa.0.020.i.ptr.4, %bb.j ]
  %i.bb = load ptr, ptr %.sroa.0.08.i.i.4, align 8, !tbaa !55
  store ptr %i.bb, ptr %.sroa.03.07.i.i.4, align 8, !tbaa !55
  %.sroa.0.0.i.i.4 = getelementptr inbounds i8, ptr %.sroa.0.08.i.i.4, i64 -8 ; 2 uses
  %i.bc = load ptr, ptr %.sroa.0.0.i.i.4, align 8, !tbaa !55
  %i.bd = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_123PatternSortingPredicateclEPKN4llvm14PatternToMatchES4_(ptr noundef nonnull readonly align 8 dereferenceable(8) %4, ptr noundef %i.ay, ptr noundef %i.bc)
  br i1 %i.bd, label %.lr.ph.i.i34.4, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_T0_.exit.i.4, !llvm.loop !3

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_T0_.exit.i.4: ; preds = %.lr.ph.i.i34.4, %bb.j
  %.sroa.03.0.lcssa.i.i.4 = phi ptr [ %.sroa.0.020.i.ptr.4, %bb.j ], [ %.sroa.0.08.i.i.4, %.lr.ph.i.i34.4 ]
  store ptr %i.ay, ptr %.sroa.03.0.lcssa.i.i.4, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre98 = load ptr, ptr %.sroa.09.012.i, align 8, !tbaa !55
  br label %bb.k

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.4: ; preds = %bb.i
  %i.be = load ptr, ptr %.sroa.0.020.i.ptr.4, align 8, !tbaa !55 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %indvars.iv, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.09.012.i, i64 40, i1 false)
  store ptr %i.be, ptr %.sroa.09.012.i, align 8, !tbaa !55
  br label %bb.k

bb.k:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.4, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_T0_.exit.i.4
  %i.bf = phi ptr [ %i.be, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.4 ], [ %.pre98, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_T0_.exit.i.4 ]
  %.sroa.0.020.i.ptr.5 = getelementptr inbounds nuw i8, ptr %.sroa.09.012.i, i64 48 ; 5 uses
  %i.bg = load ptr, ptr %.sroa.0.020.i.ptr.5, align 8, !tbaa !55
  %i.bh = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_123PatternSortingPredicateclEPKN4llvm14PatternToMatchES4_(ptr noundef nonnull readonly align 8 dereferenceable(8) %5, ptr noundef %i.bg, ptr noundef %i.bf)
  br i1 %i.bh, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.5, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  %i.bi = load ptr, ptr %.sroa.0.020.i.ptr.5, align 8, !tbaa !55 ; 3 uses
  %i.bj = load ptr, ptr %.sroa.0.020.i.ptr.4, align 8, !tbaa !55
  %i.bk = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_123PatternSortingPredicateclEPKN4llvm14PatternToMatchES4_(ptr noundef nonnull readonly align 8 dereferenceable(8) %4, ptr noundef %i.bi, ptr noundef %i.bj)
  br i1 %i.bk, label %.lr.ph.i.i34.5, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_T0_.exit.i.5

.lr.ph.i.i34.5:                                   ; preds = %bb.l, %.lr.ph.i.i34.5
  %.sroa.0.08.i.i.5 = phi ptr [ %.sroa.0.0.i.i.5, %.lr.ph.i.i34.5 ], [ %.sroa.0.020.i.ptr.4, %bb.l ] ; 4 uses
  %.sroa.03.07.i.i.5 = phi ptr [ %.sroa.0.08.i.i.5, %.lr.ph.i.i34.5 ], [ %.sroa.0.020.i.ptr.5, %bb.l ]
  %i.bl = load ptr, ptr %.sroa.0.08.i.i.5, align 8, !tbaa !55
  store ptr %i.bl, ptr %.sroa.03.07.i.i.5, align 8, !tbaa !55
  %.sroa.0.0.i.i.5 = getelementptr inbounds i8, ptr %.sroa.0.08.i.i.5, i64 -8 ; 2 uses
  %i.bm = load ptr, ptr %.sroa.0.0.i.i.5, align 8, !tbaa !55
  %i.bn = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_123PatternSortingPredicateclEPKN4llvm14PatternToMatchES4_(ptr noundef nonnull readonly align 8 dereferenceable(8) %4, ptr noundef %i.bi, ptr noundef %i.bm)
  br i1 %i.bn, label %.lr.ph.i.i34.5, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_T0_.exit.i.5, !llvm.loop !3

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_T0_.exit.i.5: ; preds = %.lr.ph.i.i34.5, %bb.l
  %.sroa.03.0.lcssa.i.i.5 = phi ptr [ %.sroa.0.020.i.ptr.5, %bb.l ], [ %.sroa.0.08.i.i.5, %.lr.ph.i.i34.5 ]
  store ptr %i.bi, ptr %.sroa.03.0.lcssa.i.i.5, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_SG_T0_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.5: ; preds = %bb.k
  %i.bo = load ptr, ptr %.sroa.0.020.i.ptr.5, align 8, !tbaa !55
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %indvars.iv, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.09.012.i, i64 48, i1 false)
  store ptr %i.bo, ptr %.sroa.09.012.i, align 8, !tbaa !55
  br label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_SG_T0_.exit

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_SG_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.5, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_T0_.exit.i.5
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.09.012.i, i64 56 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.a, %i.bq
  %i.bs = icmp sgt i64 %i.br, 48
  %scevgep94 = getelementptr i8, ptr %indvars.iv, i64 56
  br i1 %i.bs, label %.lr.ph.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_SG_T0_T1_.exit, !llvm.loop !208

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_SG_T0_T1_.exit: ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_SG_T0_.exit, %bb.a
  %.sroa.09.0.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.bp, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_SG_T0_.exit ]
  tail call fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_SG_T0_(ptr %.sroa.09.0.lcssa.i, ptr %1, ptr %3)
  %i.bt = icmp sgt i64 %i.d, 7
  br i1 %i.bt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_SG_T0_T1_.exit
  %i.bu = ptrtoint ptr %i.e to i64                ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZSt17__merge_sort_loopIPPKN4llvm14PatternToMatchEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEElNS5_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_SG_T0_T1_T2_.exit
  %.067 = phi i64 [ 7, %.lr.ph ], [ %i.ei, %_ZSt17__merge_sort_loopIPPKN4llvm14PatternToMatchEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEElNS5_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_SG_T0_T1_T2_.exit ] ; 8 uses
  %i.bv = shl nsw i64 %.067, 1                    ; 6 uses
  %.not54.i = icmp slt i64 %i.d, %i.bv
  br i1 %.not54.i, label %._crit_edge.i, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %bb.m
  %.idx.i = shl i64 %.067, 3                      ; 12 uses
  %.idx48.i = shl i64 %.067, 4                    ; 2 uses
  %.not49.i = icmp eq i64 %.idx.i, %.idx48.i
  br i1 %.not49.i, label %.critedge.i.us.preheader.i, label %.lr.ph.i.preheader.i

.critedge.i.us.preheader.i:                       ; preds = %.lr.ph.i19
  %i.bw = icmp sgt i64 %.idx.i, 8
  br i1 %i.bw, label %.critedge.i.us.i.us, label %.critedge.i.us.preheader.i.split, !prof !57

.critedge.i.us.i.us:                              ; preds = %.critedge.i.us.preheader.i, %.critedge.i.us.i.us
  %.056.us.i.us = phi ptr [ %10, %.critedge.i.us.i.us ], [ %2, %.critedge.i.us.preheader.i ] ; 2 uses
  %.sroa.040.055.us.i.us = phi ptr [ %i.bx, %.critedge.i.us.i.us ], [ %0, %.critedge.i.us.preheader.i ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.040.055.us.i.us, i64 %.idx.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.056.us.i.us, ptr align 8 %.sroa.040.055.us.i.us, i64 %.idx.i, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %.056.us.i.us, i64 %.idx.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.by, ptr nonnull align 8 %i.bx, i64 %.idx.i, i1 false)
  %10 = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.a, %i.bz
  %i.cb = ashr exact i64 %i.ca, 3                 ; 2 uses
  %.not.us.i.us = icmp slt i64 %i.cb, %i.bv
  br i1 %.not.us.i.us, label %._crit_edge.i, label %.critedge.i.us.i.us, !llvm.loop !209

.critedge.i.us.preheader.i.split:                 ; preds = %.critedge.i.us.preheader.i
  %i.cc = icmp eq i64 %.idx.i, 8
  br i1 %i.cc, label %.critedge.i.us.i.us56.preheader, label %.critedge.i.us.i

.critedge.i.us.i.us56.preheader:                  ; preds = %.critedge.i.us.preheader.i.split
  %.pre99 = load ptr, ptr %0, align 8, !tbaa !55
  br label %.critedge.i.us.i.us56

.critedge.i.us.i.us56:                            ; preds = %.critedge.i.us.i.us56.preheader, %.critedge.i.us.i.us56
  %i.cd = phi ptr [ %i.cg, %.critedge.i.us.i.us56 ], [ %.pre99, %.critedge.i.us.i.us56.preheader ]
  %.056.us.i.us57 = phi ptr [ %11, %.critedge.i.us.i.us56 ], [ %2, %.critedge.i.us.i.us56.preheader ] ; 3 uses
  %.sroa.040.055.us.i.us58 = phi ptr [ %i.ce, %.critedge.i.us.i.us56 ], [ %0, %.critedge.i.us.i.us56.preheader ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.040.055.us.i.us58, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.cd, ptr %.056.us.i.us57, align 8, !tbaa !55
  %i.cf = getelementptr inbounds nuw i8, ptr %.056.us.i.us57, i64 8
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !55 ; 2 uses
  store ptr %i.cg, ptr %i.cf, align 8, !tbaa !55
  %11 = getelementptr inbounds nuw i8, ptr %.056.us.i.us57, i64 16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = sub i64 %i.a, %i.ch
  %i.cj = ashr exact i64 %i.ci, 3                 ; 2 uses
  %.not.us.i.us60 = icmp slt i64 %i.cj, %i.bv
  br i1 %.not.us.i.us60, label %._crit_edge.i, label %.critedge.i.us.i.us56, !llvm.loop !209

.critedge.i.us.i:                                 ; preds = %.critedge.i.us.preheader.i.split, %.critedge.i.us.i
  %.056.us.i = phi ptr [ %i.cl, %.critedge.i.us.i ], [ %2, %.critedge.i.us.preheader.i.split ]
  %.sroa.040.055.us.i = phi ptr [ %i.ck, %.critedge.i.us.i ], [ %0, %.critedge.i.us.preheader.i.split ]
  %i.ck = getelementptr inbounds i8, ptr %.sroa.040.055.us.i, i64 %.idx.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %12 = getelementptr inbounds i8, ptr %.056.us.i, i64 %.idx.i
  %i.cl = getelementptr inbounds i8, ptr %12, i64 %.idx.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.a, %i.cm
  %i.co = ashr exact i64 %i.cn, 3                 ; 2 uses
  %.not.us.i = icmp slt i64 %i.co, %i.bv
  br i1 %.not.us.i, label %._crit_edge.i, label %.critedge.i.us.i, !llvm.loop !209

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i19, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEET0_T_SH_SH_SH_SG_T1_.exit.i
  %.056.i = phi ptr [ %i.dk, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEET0_T_SH_SH_SH_SG_T1_.exit.i ], [ %2, %.lr.ph.i19 ]
  %.sroa.040.055.i = phi ptr [ %i.cq, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEET0_T_SH_SH_SH_SG_T1_.exit.i ], [ %0, %.lr.ph.i19 ] ; 3 uses
  %i.cp = getelementptr inbounds i8, ptr %.sroa.040.055.i, i64 %.idx.i ; 3 uses
  %i.cq = getelementptr inbounds i8, ptr %.sroa.040.055.i, i64 %.idx48.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %3, ptr %9, align 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.020.i.i = phi ptr [ %i.cu, %.lr.ph.i.i ], [ %.056.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.014.019.i.i = phi ptr [ %.sroa.014.1.i.i, %.lr.ph.i.i ], [ %.sroa.040.055.i, %.lr.ph.i.preheader.i ] ; 3 uses
  %.sroa.010.018.i.i = phi ptr [ %.sroa.010.1.i.i, %.lr.ph.i.i ], [ %i.cp, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.cr = load ptr, ptr %.sroa.010.018.i.i, align 8, !tbaa !55
  %i.cs = load ptr, ptr %.sroa.014.019.i.i, align 8, !tbaa !55
  %i.ct = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_123PatternSortingPredicateclEPKN4llvm14PatternToMatchES4_(ptr noundef nonnull readonly align 8 dereferenceable(8) %9, ptr noundef %i.cr, ptr noundef %i.cs) ; 3 uses
  %.sink.in.i.i = select i1 %i.ct, ptr %.sroa.010.018.i.i, ptr %.sroa.014.019.i.i
  %.sroa.010.1.idx.i.i = select i1 %i.ct, i64 8, i64 0
  %.sroa.010.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.i, i64 %.sroa.010.1.idx.i.i ; 5 uses
  %.sroa.014.1.idx.i.i = select i1 %i.ct, i64 0, i64 8
  %.sroa.014.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i.i, i64 %.sroa.014.1.idx.i.i ; 5 uses
  %.sink.i.i = load ptr, ptr %.sink.in.i.i, align 8, !tbaa !55
  store ptr %.sink.i.i, ptr %.020.i.i, align 8, !tbaa !55
  %i.cu = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 8 ; 4 uses
  %i.cv = icmp ne ptr %.sroa.014.1.i.i, %i.cp
  %i.cw = icmp ne ptr %.sroa.010.1.i.i, %i.cq
  %or.cond.i.i = select i1 %i.cv, i1 %i.cw, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %.critedge.i.loopexit.i, !llvm.loop !210

.critedge.i.loopexit.i:                           ; preds = %.lr.ph.i.i
  %i.cx = ptrtoint ptr %i.cp to i64
  %i.cy = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.cz = sub i64 %i.cx, %i.cy                    ; 4 uses
  %i.da = icmp sgt i64 %i.cz, 8
  br i1 %i.da, label %bb.n, label %bb.o, !prof !57

bb.n:                                             ; preds = %.critedge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cu, ptr nonnull align 8 %.sroa.014.1.i.i, i64 %i.cz, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i.i

bb.o:                                             ; preds = %.critedge.i.loopexit.i
  %i.db = icmp eq i64 %i.cz, 8
  br i1 %i.db, label %bb.p, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.dc = load ptr, ptr %.sroa.014.1.i.i, align 8, !tbaa !55
  store ptr %i.dc, ptr %i.cu, align 8, !tbaa !55
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i.i: ; preds = %bb.p, %bb.o, %bb.n
  %i.dd = getelementptr inbounds i8, ptr %i.cu, i64 %i.cz ; 3 uses
  %i.de = ptrtoint ptr %i.cq to i64               ; 2 uses
  %i.df = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.dg = sub i64 %i.de, %i.df                    ; 4 uses
  %i.dh = icmp sgt i64 %i.dg, 8
  br i1 %i.dh, label %bb.q, label %bb.r, !prof !57

bb.q:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dd, ptr nonnull align 8 %.sroa.010.1.i.i, i64 %i.dg, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEET0_T_SH_SH_SH_SG_T1_.exit.i

bb.r:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i.i
  %i.di = icmp eq i64 %i.dg, 8
  br i1 %i.di, label %bb.s, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEET0_T_SH_SH_SH_SG_T1_.exit.i

bb.s:                                             ; preds = %bb.r
  %i.dj = load ptr, ptr %.sroa.010.1.i.i, align 8, !tbaa !55
  store ptr %i.dj, ptr %i.dd, align 8, !tbaa !55
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEET0_T_SH_SH_SH_SG_T1_.exit.i

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEET0_T_SH_SH_SH_SG_T1_.exit.i: ; preds = %bb.s, %bb.r, %bb.q
  %i.dk = getelementptr inbounds i8, ptr %i.dd, i64 %i.dg ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.dl = sub i64 %i.a, %i.de
  %i.dm = ashr exact i64 %i.dl, 3                 ; 2 uses
  %.not.i = icmp slt i64 %i.dm, %i.bv
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i.preheader.i, !llvm.loop !209

._crit_edge.i:                                    ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEET0_T_SH_SH_SH_SG_T1_.exit.i, %.critedge.i.us.i, %.critedge.i.us.i.us56, %.critedge.i.us.i.us, %bb.m
  %.sroa.040.0.lcssa.i = phi ptr [ %0, %bb.m ], [ %i.bx, %.critedge.i.us.i.us ], [ %i.ce, %.critedge.i.us.i.us56 ], [ %i.ck, %.critedge.i.us.i ], [ %i.cq, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEET0_T_SH_SH_SH_SG_T1_.exit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.m ], [ %10, %.critedge.i.us.i.us ], [ %11, %.critedge.i.us.i.us56 ], [ %i.cl, %.critedge.i.us.i ], [ %i.dk, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEET0_T_SH_SH_SH_SG_T1_.exit.i ] ; 2 uses
  %.lcssa52.i = phi i64 [ %i.d, %bb.m ], [ %i.cb, %.critedge.i.us.i.us ], [ %i.cj, %.critedge.i.us.i.us56 ], [ %i.co, %.critedge.i.us.i ], [ %i.dm, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEET0_T_SH_SH_SH_SG_T1_.exit.i ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.067, i64 %.lcssa52.i) ; 2 uses
  %.idx50.i = shl nsw i64 %.sroa.speculated.i, 3
  %i.dn = getelementptr inbounds i8, ptr %.sroa.040.0.lcssa.i, i64 %.idx50.i ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %3, ptr %8, align 8
  %i.do = icmp ne i64 %.sroa.speculated.i, 0
  %i.dp = icmp ne ptr %i.dn, %1
  %or.cond17.i15.i = select i1 %i.do, i1 %i.dp, i1 false
  br i1 %or.cond17.i15.i, label %.lr.ph.i21.i, label %.critedge.i16.i

.lr.ph.i21.i:                                     ; preds = %._crit_edge.i, %.lr.ph.i21.i
  %.020.i22.i = phi ptr [ %i.dt, %.lr.ph.i21.i ], [ %.0.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.014.019.i23.i = phi ptr [ %.sroa.014.1.i29.i, %.lr.ph.i21.i ], [ %.sroa.040.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.010.018.i24.i = phi ptr [ %.sroa.010.1.i27.i, %.lr.ph.i21.i ], [ %i.dn, %._crit_edge.i ] ; 3 uses
  %i.dq = load ptr, ptr %.sroa.010.018.i24.i, align 8, !tbaa !55
  %i.dr = load ptr, ptr %.sroa.014.019.i23.i, align 8, !tbaa !55
  %i.ds = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_123PatternSortingPredicateclEPKN4llvm14PatternToMatchES4_(ptr noundef nonnull readonly align 8 dereferenceable(8) %8, ptr noundef %i.dq, ptr noundef %i.dr) ; 3 uses
  %.sink.in.i25.i = select i1 %i.ds, ptr %.sroa.010.018.i24.i, ptr %.sroa.014.019.i23.i
  %.sroa.010.1.idx.i26.i = select i1 %i.ds, i64 8, i64 0
  %.sroa.010.1.i27.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i24.i, i64 %.sroa.010.1.idx.i26.i ; 3 uses
  %.sroa.014.1.idx.i28.i = select i1 %i.ds, i64 0, i64 8
  %.sroa.014.1.i29.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i23.i, i64 %.sroa.014.1.idx.i28.i ; 3 uses
  %.sink.i30.i = load ptr, ptr %.sink.in.i25.i, align 8, !tbaa !55
  store ptr %.sink.i30.i, ptr %.020.i22.i, align 8, !tbaa !55
  %i.dt = getelementptr inbounds nuw i8, ptr %.020.i22.i, i64 8 ; 2 uses
  %i.du = icmp ne ptr %.sroa.014.1.i29.i, %i.dn
  %i.dv = icmp ne ptr %.sroa.010.1.i27.i, %1
  %or.cond.i31.i = select i1 %i.du, i1 %i.dv, i1 false
  br i1 %or.cond.i31.i, label %.lr.ph.i21.i, label %.critedge.i16.i, !llvm.loop !210

.critedge.i16.i:                                  ; preds = %.lr.ph.i21.i, %._crit_edge.i
  %.sroa.010.0.lcssa.i17.i = phi ptr [ %i.dn, %._crit_edge.i ], [ %.sroa.010.1.i27.i, %.lr.ph.i21.i ] ; 3 uses
  %.sroa.014.0.lcssa.i18.i = phi ptr [ %.sroa.040.0.lcssa.i, %._crit_edge.i ], [ %.sroa.014.1.i29.i, %.lr.ph.i21.i ] ; 3 uses
  %.0.lcssa.i19.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i ], [ %i.dt, %.lr.ph.i21.i ] ; 3 uses
  %i.dw = ptrtoint ptr %i.dn to i64
  %i.dx = ptrtoint ptr %.sroa.014.0.lcssa.i18.i to i64
  %i.dy = sub i64 %i.dw, %i.dx                    ; 4 uses
  %i.dz = icmp sgt i64 %i.dy, 8
  br i1 %i.dz, label %bb.t, label %bb.u, !prof !57

bb.t:                                             ; preds = %.critedge.i16.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i19.i, ptr align 8 %.sroa.014.0.lcssa.i18.i, i64 %i.dy, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i20.i

bb.u:                                             ; preds = %.critedge.i16.i
  %i.ea = icmp eq i64 %i.dy, 8
  br i1 %i.ea, label %bb.v, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i20.i

bb.v:                                             ; preds = %bb.u
  %i.eb = load ptr, ptr %.sroa.014.0.lcssa.i18.i, align 8, !tbaa !55
  store ptr %i.eb, ptr %.0.lcssa.i19.i, align 8, !tbaa !55
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i20.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i20.i: ; preds = %bb.v, %bb.u, %bb.t
  %i.ec = getelementptr inbounds i8, ptr %.0.lcssa.i19.i, i64 %i.dy ; 2 uses
  %i.ed = ptrtoint ptr %.sroa.010.0.lcssa.i17.i to i64
  %i.ee = sub i64 %i.a, %i.ed                     ; 3 uses
  %i.ef = icmp sgt i64 %i.ee, 8
  br i1 %i.ef, label %bb.w, label %bb.x, !prof !57

bb.w:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i20.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ec, ptr align 8 %.sroa.010.0.lcssa.i17.i, i64 %i.ee, i1 false)
  br label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_SG_T0_T1_T2_.exit

bb.x:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i20.i
  %i.eg = icmp eq i64 %i.ee, 8
  br i1 %i.eg, label %bb.y, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_SG_T0_T1_T2_.exit

bb.y:                                             ; preds = %bb.x
  %i.eh = load ptr, ptr %.sroa.010.0.lcssa.i17.i, align 8, !tbaa !55
  store ptr %i.eh, ptr %i.ec, align 8, !tbaa !55
  br label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_SG_T0_T1_T2_.exit

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_SG_T0_T1_T2_.exit: ; preds = %bb.w, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ei = shl nsw i64 %.067, 2                    ; 5 uses
  %.not52.i = icmp slt i64 %i.d, %i.ei
  br i1 %.not52.i, label %._crit_edge.i27, label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_SG_T0_T1_T2_.exit
  %.idx.i21 = shl i64 %.067, 4                    ; 8 uses
  %.idx46.i = shl nsw i64 %.067, 5                ; 2 uses
  %.not47.i = icmp eq i64 %.idx.i21, %.idx46.i
  br i1 %.not47.i, label %._crit_edge.i.us.preheader.i, label %.lr.ph.i.preheader.i22

._crit_edge.i.us.preheader.i:                     ; preds = %.lr.ph.i20
  %i.ej = icmp sgt i64 %.067, 0
  %i.ek = icmp sgt i64 %.idx.i21, 8
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %_ZSt12__move_mergeIPPKN4llvm14PatternToMatchEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEET0_T_SH_SH_SH_SG_T1_.exit.us.i, %._crit_edge.i.us.preheader.i
  %.sroa.021.054.us.i = phi ptr [ %i.en, %_ZSt12__move_mergeIPPKN4llvm14PatternToMatchEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEET0_T_SH_SH_SH_SG_T1_.exit.us.i ], [ %0, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %.053.us.i = phi ptr [ %i.el, %_ZSt12__move_mergeIPPKN4llvm14PatternToMatchEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEET0_T_SH_SH_SH_SG_T1_.exit.us.i ], [ %2, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %.053.us.i, i64 %.idx.i21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  br i1 %i.ej, label %bb.z, label %_ZSt4moveIPPKN4llvm14PatternToMatchEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.us.i, !prof !57

bb.z:                                             ; preds = %._crit_edge.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.021.054.us.i, ptr align 8 %.053.us.i, i64 %.idx.i21, i1 false)
  br label %_ZSt4moveIPPKN4llvm14PatternToMatchEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.us.i

_ZSt4moveIPPKN4llvm14PatternToMatchEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.us.i: ; preds = %._crit_edge.i.us.i, %bb.z
  %i.em = getelementptr inbounds i8, ptr %.sroa.021.054.us.i, i64 %.idx.i21 ; 2 uses
  br i1 %i.ek, label %bb.aa, label %_ZSt12__move_mergeIPPKN4llvm14PatternToMatchEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEET0_T_SH_SH_SH_SG_T1_.exit.us.i, !prof !214

bb.aa:                                            ; preds = %_ZSt4moveIPPKN4llvm14PatternToMatchEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.em, ptr nonnull align 8 %i.el, i64 %.idx.i21, i1 false)
  br label %_ZSt12__move_mergeIPPKN4llvm14PatternToMatchEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEET0_T_SH_SH_SH_SG_T1_.exit.us.i

_ZSt12__move_mergeIPPKN4llvm14PatternToMatchEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEET0_T_SH_SH_SH_SG_T1_.exit.us.i: ; preds = %_ZSt4moveIPPKN4llvm14PatternToMatchEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.us.i, %bb.aa
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 %.idx.i21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.eo = ptrtoint ptr %i.el to i64
  %i.ep = sub i64 %i.bu, %i.eo
  %i.eq = ashr exact i64 %i.ep, 3                 ; 2 uses
  %.not.us.i31 = icmp slt i64 %i.eq, %i.ei
  br i1 %.not.us.i31, label %._crit_edge.i27, label %._crit_edge.i.us.i, !llvm.loop !211

.lr.ph.i.preheader.i22:                           ; preds = %.lr.ph.i20, %_ZSt12__move_mergeIPPKN4llvm14PatternToMatchEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEET0_T_SH_SH_SH_SG_T1_.exit.i
  %.sroa.021.054.i = phi ptr [ %i.fl, %_ZSt12__move_mergeIPPKN4llvm14PatternToMatchEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEET0_T_SH_SH_SH_SG_T1_.exit.i ], [ %0, %.lr.ph.i20 ]
  %.053.i = phi ptr [ %i.es, %_ZSt12__move_mergeIPPKN4llvm14PatternToMatchEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEET0_T_SH_SH_SH_SG_T1_.exit.i ], [ %2, %.lr.ph.i20 ] ; 3 uses
  %i.er = getelementptr inbounds i8, ptr %.053.i, i64 %.idx.i21 ; 3 uses
  %i.es = getelementptr inbounds i8, ptr %.053.i, i64 %.idx46.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %3, ptr %7, align 8
  br label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %.lr.ph.i.i23, %.lr.ph.i.preheader.i22
  %.023.i.i = phi ptr [ %.1.i.i, %.lr.ph.i.i23 ], [ %.053.i, %.lr.ph.i.preheader.i22 ] ; 3 uses
  %.01622.i.i = phi ptr [ %.117.i.i, %.lr.ph.i.i23 ], [ %i.er, %.lr.ph.i.preheader.i22 ] ; 3 uses
  %.sroa.0.021.i.i = phi ptr [ %i.eu, %.lr.ph.i.i23 ], [ %.sroa.021.054.i, %.lr.ph.i.preheader.i22 ] ; 2 uses
  %.016.val.i.i = load ptr, ptr %.01622.i.i, align 8, !tbaa !55
  %.0.val.i.i = load ptr, ptr %.023.i.i, align 8, !tbaa !55
  %i.et = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_123PatternSortingPredicateclEPKN4llvm14PatternToMatchES4_(ptr noundef nonnull readonly align 8 dereferenceable(8) %7, ptr noundef %.016.val.i.i, ptr noundef %.0.val.i.i) ; 3 uses
  %.sink.in.i.i24 = select i1 %i.et, ptr %.01622.i.i, ptr %.023.i.i
  %.117.idx.i.i = select i1 %i.et, i64 8, i64 0
  %.117.i.i = getelementptr inbounds nuw i8, ptr %.01622.i.i, i64 %.117.idx.i.i ; 5 uses
  %.1.idx.i.i = select i1 %i.et, i64 0, i64 8
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 %.1.idx.i.i ; 5 uses
  %.sink.i.i25 = load ptr, ptr %.sink.in.i.i24, align 8, !tbaa !55
  store ptr %.sink.i.i25, ptr %.sroa.0.021.i.i, align 8, !tbaa !55
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i, i64 8 ; 4 uses
  %i.ev = icmp ne ptr %.1.i.i, %i.er
  %i.ew = icmp ne ptr %.117.i.i, %i.es
  %i.ex = select i1 %i.ev, i1 %i.ew, i1 false
  br i1 %i.ex, label %.lr.ph.i.i23, label %._crit_edge.i.loopexit.i, !llvm.loop !212

._crit_edge.i.loopexit.i:                         ; preds = %.lr.ph.i.i23
  %i.ey = ptrtoint ptr %i.er to i64
  %i.ez = ptrtoint ptr %.1.i.i to i64
  %i.fa = sub i64 %i.ey, %i.ez                    ; 4 uses
  %i.fb = icmp sgt i64 %i.fa, 8
  br i1 %i.fb, label %bb.ab, label %bb.ac, !prof !57

bb.ab:                                            ; preds = %._crit_edge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eu, ptr nonnull align 8 %.1.i.i, i64 %i.fa, i1 false)
  br label %_ZSt4moveIPPKN4llvm14PatternToMatchEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.i

bb.ac:                                            ; preds = %._crit_edge.i.loopexit.i
  %i.fc = icmp eq i64 %i.fa, 8
  br i1 %i.fc, label %bb.ad, label %_ZSt4moveIPPKN4llvm14PatternToMatchEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.fd = load ptr, ptr %.1.i.i, align 8, !tbaa !55
  store ptr %i.fd, ptr %i.eu, align 8, !tbaa !55
  br label %_ZSt4moveIPPKN4llvm14PatternToMatchEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.i

_ZSt4moveIPPKN4llvm14PatternToMatchEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.i: ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.fe = getelementptr inbounds i8, ptr %i.eu, i64 %i.fa ; 3 uses
  %i.ff = ptrtoint ptr %i.es to i64               ; 2 uses
  %i.fg = ptrtoint ptr %.117.i.i to i64
  %i.fh = sub i64 %i.ff, %i.fg                    ; 4 uses
  %i.fi = icmp sgt i64 %i.fh, 8
  br i1 %i.fi, label %bb.ae, label %bb.af, !prof !57

bb.ae:                                            ; preds = %_ZSt4moveIPPKN4llvm14PatternToMatchEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fe, ptr nonnull align 8 %.117.i.i, i64 %i.fh, i1 false)
  br label %_ZSt12__move_mergeIPPKN4llvm14PatternToMatchEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEET0_T_SH_SH_SH_SG_T1_.exit.i

bb.af:                                            ; preds = %_ZSt4moveIPPKN4llvm14PatternToMatchEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.i
  %i.fj = icmp eq i64 %i.fh, 8
  br i1 %i.fj, label %bb.ag, label %_ZSt12__move_mergeIPPKN4llvm14PatternToMatchEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEET0_T_SH_SH_SH_SG_T1_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.fk = load ptr, ptr %.117.i.i, align 8, !tbaa !55
  store ptr %i.fk, ptr %i.fe, align 8, !tbaa !55
  br label %_ZSt12__move_mergeIPPKN4llvm14PatternToMatchEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEET0_T_SH_SH_SH_SG_T1_.exit.i

_ZSt12__move_mergeIPPKN4llvm14PatternToMatchEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEET0_T_SH_SH_SH_SG_T1_.exit.i: ; preds = %bb.ag, %bb.af, %bb.ae
  %i.fl = getelementptr inbounds i8, ptr %i.fe, i64 %i.fh ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.fm = sub i64 %i.bu, %i.ff
  %i.fn = ashr exact i64 %i.fm, 3                 ; 2 uses
  %.not.i26 = icmp slt i64 %i.fn, %i.ei
  br i1 %.not.i26, label %._crit_edge.i27, label %.lr.ph.i.preheader.i22, !llvm.loop !211

._crit_edge.i27:                                  ; preds = %_ZSt12__move_mergeIPPKN4llvm14PatternToMatchEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEET0_T_SH_SH_SH_SG_T1_.exit.i, %_ZSt12__move_mergeIPPKN4llvm14PatternToMatchEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEET0_T_SH_SH_SH_SG_T1_.exit.us.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_SG_T0_T1_T2_.exit
  %.0.lcssa.i28 = phi ptr [ %2, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_SG_T0_T1_T2_.exit ], [ %i.el, %_ZSt12__move_mergeIPPKN4llvm14PatternToMatchEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEET0_T_SH_SH_SH_SG_T1_.exit.us.i ], [ %i.es, %_ZSt12__move_mergeIPPKN4llvm14PatternToMatchEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEET0_T_SH_SH_SH_SG_T1_.exit.i ] ; 3 uses
  %.sroa.021.0.lcssa.i = phi ptr [ %0, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPKN4llvm14PatternToMatchESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEEvT_SG_T0_T1_T2_.exit ], [ %i.en, %_ZSt12__move_mergeIPPKN4llvm14PatternToMatchEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEET0_T_SH_SH_SH_SG_T1_.exit.us.i ], [ %i.fl, %_ZSt12__move_mergeIPPKN4llvm14PatternToMatchEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIN12_GLOBAL__N_123PatternSortingPredicateEEEET0_T_SH_SH_SH_SG_T1_.exit.i ] ; 2 uses
end_hunk_0

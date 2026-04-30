inline.NumInlined: 29982
inline.NumDeleted: 10454
begin_hunk_0_@_ZN6duckdb25BoxRendererImplementation21FetchBottomCollectionERNS_20RenderDataCollectionERKNS_20ColumnDataCollectionEm:bb.a

.lr.ph.i.i:                                       ; preds = %bb.aa, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS2_9DataChunkESt14default_deleteIS4_ELb1EEESt6vectorIS7_SaIS7_EEEESC_EvT_T0_.exit.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS2_9DataChunkESt14default_deleteIS4_ELb1EEESt6vectorIS7_SaIS7_EEEESC_EvT_T0_.exit.i.i ], [ %.sroa.0.08.i.i, %bb.aa ] ; 5 uses
  %.sroa.05.09.i.i = phi ptr [ %i.cn, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS2_9DataChunkESt14default_deleteIS4_ELb1EEESt6vectorIS7_SaIS7_EEEESC_EvT_T0_.exit.i.i ], [ %i.cg, %bb.aa ] ; 5 uses
  %i.cj = load i64, ptr %.sroa.05.09.i.i, align 8, !tbaa !376
  %i.ck = inttoptr i64 %i.cj to ptr
  store ptr null, ptr %.sroa.05.09.i.i, align 8, !tbaa !376
  %i.cl = load ptr, ptr %.sroa.0.010.i.i, align 8, !tbaa !376
  store ptr null, ptr %.sroa.0.010.i.i, align 8, !tbaa !376
  %i.cm = load ptr, ptr %.sroa.05.09.i.i, align 8, !tbaa !376 ; 3 uses
  store ptr %i.cl, ptr %.sroa.05.09.i.i, align 8, !tbaa !376
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.cm) #60
  call void @_ZdlPv(ptr noundef nonnull %i.cm) #62
  br label %_ZN6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i

_ZN6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i
  %18 = load ptr, ptr %.sroa.0.010.i.i, align 8, !tbaa !376 ; 3 uses
  store ptr %i.ck, ptr %.sroa.0.010.i.i, align 8, !tbaa !376
  %.not.i.i.i.i.i4.i.i.i.i = icmp eq ptr %18, null
  br i1 %.not.i.i.i.i.i4.i.i.i.i, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS2_9DataChunkESt14default_deleteIS4_ELb1EEESt6vectorIS7_SaIS7_EEEESC_EvT_T0_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i5.i.i.i.i

_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i5.i.i.i.i: ; preds = %_ZN6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %18) #60
  call void @_ZdlPv(ptr noundef nonnull %18) #62
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS2_9DataChunkESt14default_deleteIS4_ELb1EEESt6vectorIS7_SaIS7_EEEESC_EvT_T0_.exit.i.i

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN6duckdb10unique_ptrINS2_9DataChunkESt14default_deleteIS4_ELb1EEESt6vectorIS7_SaIS7_EEEESC_EvT_T0_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i5.i.i.i.i, %_ZN6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 8 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -8 ; 2 uses
  %i.co = icmp ult ptr %i.cn, %.sroa.0.0.i.i
end_hunk_0

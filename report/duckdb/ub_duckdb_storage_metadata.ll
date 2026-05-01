inline.NumInlined: 1642
inline.NumDeleted: 696
begin_hunk_0_@_ZNK6duckdb15MetadataManager15GetMetadataInfoEv:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit.i.i.i.i"
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.aj, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit.i.i.i.i" ], [ %i.r, %bb.d ] ; 8 uses
  %.sroa.05.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.0.07.i.i.i.i, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 16 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !175  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 24 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK6duckdb15MetadataManager15GetMetadataInfoEv:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %.sroa.0.014.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i.i, i64 -40 ; 2 uses
  %.val2.i15.i.i.i.i.i = load i64, ptr %.sroa.0.014.i.i.i.i.i, align 8, !tbaa !180
  %i.y = icmp slt i64 %.sroa.05.0.copyload.i.i.i.i.i, %.val2.i15.i.i.i.i.i
  br i1 %i.y, label %.lr.ph.i.i.i.i.i, label %._crit_edge.thread.i.i.i.i.i

._crit_edge.thread.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZNK6duckdb15MetadataManager15GetMetadataInfoEv:bb.a
  br label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i, %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i.i.i.i.i
  %.sroa.0.017.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i.i.i.i.i ], [ %.sroa.0.014.i.i.i.i.i, %.lr.ph.i.i.i.i ] ; 8 uses
  %.sroa.011.016.i.i.i.i.i = phi ptr [ %.sroa.0.017.i.i.i.i.i, %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.011.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.017.i.i.i.i.i, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.011.016.i.i.i.i.i, i64 16 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNK6duckdb15MetadataManager15GetMetadataInfoEv:bb.a
_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.017.i.i.i.i.i, i64 -40 ; 2 uses
  %.val2.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !180
  %i.ag = icmp slt i64 %.sroa.05.0.copyload.i.i.i.i.i, %.val2.i.i.i.i.i.i
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !187

._crit_edge.i.i.i.i.i:                            ; preds = %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i.i.i.i.i
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i.i.i.i, i64 16 ; 2 uses
  %.pre.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !175 ; 2 uses
  store i64 %.sroa.05.0.copyload.i.i.i.i.i, ptr %.sroa.0.017.i.i.i.i.i, align 8
  %.sroa.5.0..sroa_idx7.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i.i.i.i, i64 8
  store i64 %.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx7.i.i.i.i.i, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i.i.i.i, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i.i.i.i.i, i64 32
  store ptr %i.t, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !175
end_hunk_3

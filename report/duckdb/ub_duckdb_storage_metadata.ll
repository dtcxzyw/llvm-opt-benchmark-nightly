begin_hunk_0
; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i38.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %.sroa.0.i.i37.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %.sroa.0.i.i34.i.i = alloca { i64, i64 }, align 8 ; 4 uses
end_hunk_0
begin_hunk_1
  br i1 %i.ce, label %bb.s, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEET_SE_SE_T0_.exit"

bb.s:                                             ; preds = %bb.r
  %.sroa.0.i.i.sroa.0.0.copyload.i.i = load <2 x i64>, ptr %.sroa.012.1.i.i, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 16 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 32 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !164
end_hunk_1
begin_hunk_2
  store <2 x ptr> %i.cl, ptr %i.cf, align 8, !tbaa !171
  %i.cm = load ptr, ptr %i.cj, align 8, !tbaa !164
  store ptr %i.cm, ptr %i.cg, align 8, !tbaa !164
  store <2 x i64> %.sroa.0.i.i.sroa.0.0.copyload.i.i, ptr %.sroa.0.1.i.i, align 8
  store <2 x ptr> %i.ck, ptr %i.ci, align 8, !tbaa !171
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !164
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i", !llvm.loop !322

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEET_SE_SE_T0_.exit": ; preds = %bb.r
end_hunk_2
begin_hunk_3
; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_T0_"(ptr %0, ptr readnone captures(address) %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit21, label %.preheader

end_hunk_3
begin_hunk_4

bb.b:                                             ; preds = %.lr.ph, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit"
  %.sroa.012.025 = phi ptr [ %.sroa.012.022, %.lr.ph ], [ %.sroa.012.0, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit" ] ; 7 uses
  %.pn24 = phi ptr [ %0, %.lr.ph ], [ %.sroa.012.025, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit" ] ; 9 uses
  %.val.i = load i64, ptr %.sroa.012.025, align 8, !tbaa !165 ; 4 uses
  %.val1.i = load i64, ptr %0, align 8, !tbaa !165
  %i.e = icmp slt i64 %.val.i, %.val1.i
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.sroa.0.sroa.0.0.copyload = load <2 x i64>, ptr %.sroa.012.025, align 8
  %2 = getelementptr inbounds nuw i8, ptr %.pn24, i64 56 ; 2 uses
  %i.f = load <2 x ptr>, ptr %2, align 8, !tbaa !171
  %3 = getelementptr inbounds nuw i8, ptr %.pn24, i64 72
  %i.g = load ptr, ptr %3, align 8, !tbaa !164
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.h = ptrtoint ptr %.sroa.012.025 to i64
  %i.i = sub i64 %i.h, %i.b                       ; 2 uses
end_hunk_4
begin_hunk_5
  br i1 %i.w, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !325

.loopexit:                                        ; preds = %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i.i.i.i.i, %bb.c
  store <2 x i64> %.sroa.0.sroa.0.0.copyload, ptr %0, align 8
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !160  ; 2 uses
  store <2 x ptr> %i.f, ptr %i.c, align 8, !tbaa !171
  store ptr %i.g, ptr %i.d, align 8, !tbaa !164
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit", label %bb.e

bb.e:                                             ; preds = %.loopexit
  tail call void @_ZdlPv(ptr noundef nonnull %i.x) #25
  br label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit"

bb.f:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn24, i64 48
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8
  %4 = getelementptr inbounds nuw i8, ptr %.pn24, i64 56 ; 3 uses
  %i.y = load ptr, ptr %4, align 8, !tbaa !160    ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %.pn24, i64 64 ; 2 uses
  %i.z = load ptr, ptr %5, align 8, !tbaa !163    ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.pn24, i64 72 ; 2 uses
  %i.aa = load ptr, ptr %6, align 8, !tbaa !164   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.val2.i15.i = load i64, ptr %.pn24, align 8, !tbaa !165
  %i.ab = icmp slt i64 %.val.i, %.val2.i15.i
  br i1 %i.ab, label %.lr.ph.i, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.f
  store ptr %i.y, ptr %4, align 8, !tbaa !160
  store ptr %i.z, ptr %5, align 8, !tbaa !163
  store ptr %i.aa, ptr %6, align 8, !tbaa !164
  br label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit"

.lr.ph.i:                                         ; preds = %bb.f, %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i
end_hunk_5
begin_hunk_6
  tail call void @_ZdlPv(ptr noundef nonnull %.pre.i) #25
  br label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit"

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit": ; preds = %.loopexit, %bb.e, %bb.h, %._crit_edge.i, %._crit_edge.thread.i
  %.sroa.012.0 = getelementptr inbounds nuw i8, ptr %.sroa.012.025, i64 40 ; 2 uses
  %.not = icmp eq ptr %.sroa.012.0, %1
  br i1 %.not, label %.loopexit21, label %bb.b, !llvm.loop !326
end_hunk_6

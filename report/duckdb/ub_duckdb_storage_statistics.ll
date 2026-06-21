inline.NumInlined: 3702
inline.NumDeleted: 1232
begin_hunk_0_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS9_14BaseStatisticsEE3$_0EEEvT_SF_T0_T1_":bb.a
  br label %.lr.ph.i.i.i.i.i.i.i31.i.i

.lr.ph.i.i.i.i.i.i.i31.i.i:                       ; preds = %bb.g, %.lr.ph.preheader.i.i.i.i.i.i.i29.i.i
  %.01924.i.i.i.i.i.i.i32.i.i = phi ptr [ %i.bq, %bb.g ], [ %i.bg, %.lr.ph.preheader.i.i.i.i.i.i.i29.i.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i33.i.i = phi ptr [ %i.bp, %bb.g ], [ %i.bd, %.lr.ph.preheader.i.i.i.i.i.i.i29.i.i ] ; 2 uses
  %i.bl = load i8, ptr %.02023.i.i.i.i.i.i.i33.i.i, align 1, !tbaa !43 ; 2 uses
  %i.bm = load i8, ptr %.01924.i.i.i.i.i.i.i32.i.i, align 1, !tbaa !43 ; 2 uses
  %i.bn = icmp slt i8 %i.bl, %i.bm
  br i1 %i.bn, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS9_14BaseStatisticsEE3$_0EEEvT_SF_SF_SF_T0_.exit.i", label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i31.i.i
  %i.bo = icmp slt i8 %i.bm, %i.bl
  br i1 %i.bo, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit38.thread91.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i33.i.i, i64 1 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i32.i.i, i64 1
  %.not.i.i.i.i.i.i.i34.i.i = icmp eq ptr %i.bp, %i.bk
  br i1 %.not.i.i.i.i.i.i.i34.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit38.i.i", label %.lr.ph.i.i.i.i.i.i.i31.i.i, !llvm.loop !792

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit38.i.i": ; preds = %bb.g, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.thread.i.i"
  %.019.lcssa.i.i.i.i.i.i.i36.i.i = phi ptr [ %i.bg, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.thread.i.i" ], [ %scevgep.i.i.i.i.i.i.i30.i.i, %bb.g ]
  %.not104.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i36.i.i, %i.bj
  br i1 %.not104.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit38.thread91.i.i", label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS9_14BaseStatisticsEE3$_0EEEvT_SF_SF_SF_T0_.exit.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit38.thread91.i.i": ; preds = %bb.f, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit38.i.i"
  %.val.i39.i.i = load i64, ptr %i.o, align 8, !tbaa !123
  %i.br = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.val.i39.i.i) ; 2 uses
  %i.bs = load i64, ptr %i.ai, align 8, !tbaa !123
  %i.bt = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bs) ; 2 uses
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !105 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !122
  %i.bx = load ptr, ptr %i.bt, align 8, !tbaa !105 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !122 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bz
  %.v.i.i40.i.i = tail call i64 @llvm.smin.i64(i64 %i.bz, i64 %i.bw) ; 3 uses
  %i.cb = getelementptr inbounds i8, ptr %i.bu, i64 %.v.i.i40.i.i
  %.not22.i.i.i.i.i.i.i41.i.i = icmp eq i64 %.v.i.i40.i.i, 0
  br i1 %.not22.i.i.i.i.i.i.i41.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit51.i.i", label %.lr.ph.preheader.i.i.i.i.i.i.i42.i.i

.lr.ph.preheader.i.i.i.i.i.i.i42.i.i:             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit38.thread91.i.i"
  %scevgep.i.i.i.i.i.i.i43.i.i = getelementptr i8, ptr %i.bx, i64 %.v.i.i40.i.i
  br label %.lr.ph.i.i.i.i.i.i.i44.i.i

.lr.ph.i.i.i.i.i.i.i44.i.i:                       ; preds = %bb.i, %.lr.ph.preheader.i.i.i.i.i.i.i42.i.i
  %.01924.i.i.i.i.i.i.i45.i.i = phi ptr [ %i.ch, %bb.i ], [ %i.bx, %.lr.ph.preheader.i.i.i.i.i.i.i42.i.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i46.i.i = phi ptr [ %i.cg, %bb.i ], [ %i.bu, %.lr.ph.preheader.i.i.i.i.i.i.i42.i.i ] ; 2 uses
  %i.cc = load i8, ptr %.02023.i.i.i.i.i.i.i46.i.i, align 1, !tbaa !43 ; 2 uses
  %i.cd = load i8, ptr %.01924.i.i.i.i.i.i.i45.i.i, align 1, !tbaa !43 ; 2 uses
  %i.ce = icmp slt i8 %i.cc, %i.cd
  br i1 %i.ce, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS9_14BaseStatisticsEE3$_0EEEvT_SF_SF_SF_T0_.exit.i", label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i44.i.i
  %i.cf = icmp slt i8 %i.cd, %i.cc
  br i1 %i.cf, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit51.thread94.i.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cg = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i46.i.i, i64 1 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i45.i.i, i64 1
  %.not.i.i.i.i.i.i.i47.i.i = icmp eq ptr %i.cg, %i.cb
  br i1 %.not.i.i.i.i.i.i.i47.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit51.i.i", label %.lr.ph.i.i.i.i.i.i.i44.i.i, !llvm.loop !792

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit51.i.i": ; preds = %bb.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit38.thread91.i.i"
  %.019.lcssa.i.i.i.i.i.i.i49.i.i = phi ptr [ %i.bx, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit38.thread91.i.i" ], [ %scevgep.i.i.i.i.i.i.i43.i.i, %bb.i ]
  %.not105.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i49.i.i, %i.ca
  br i1 %.not105.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit51.thread94.i.i", label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS9_14BaseStatisticsEE3$_0EEEvT_SF_SF_SF_T0_.exit.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit51.thread94.i.i": ; preds = %bb.h, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit51.i.i"
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS9_14BaseStatisticsEE3$_0EEEvT_SF_SF_SF_T0_.exit.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.thread88.i.i": ; preds = %bb.d, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.i.i"
  %.val.i52.i.i = load i64, ptr %i.o, align 8, !tbaa !123
  %i.ci = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.val.i52.i.i) ; 2 uses
  %i.cj = load i64, ptr %i.ai, align 8, !tbaa !123
  %i.ck = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.cj) ; 2 uses
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !105 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !122
  %i.co = load ptr, ptr %i.ck, align 8, !tbaa !105 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !122 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cq
  %.v.i.i53.i.i = tail call i64 @llvm.smin.i64(i64 %i.cq, i64 %i.cn) ; 3 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cl, i64 %.v.i.i53.i.i
  %.not22.i.i.i.i.i.i.i54.i.i = icmp eq i64 %.v.i.i53.i.i, 0
  br i1 %.not22.i.i.i.i.i.i.i54.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit64.i.i", label %.lr.ph.preheader.i.i.i.i.i.i.i55.i.i

.lr.ph.preheader.i.i.i.i.i.i.i55.i.i:             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.thread88.i.i"
  %scevgep.i.i.i.i.i.i.i56.i.i = getelementptr i8, ptr %i.co, i64 %.v.i.i53.i.i
  br label %.lr.ph.i.i.i.i.i.i.i57.i.i

.lr.ph.i.i.i.i.i.i.i57.i.i:                       ; preds = %bb.k, %.lr.ph.preheader.i.i.i.i.i.i.i55.i.i
  %.01924.i.i.i.i.i.i.i58.i.i = phi ptr [ %i.cy, %bb.k ], [ %i.co, %.lr.ph.preheader.i.i.i.i.i.i.i55.i.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i59.i.i = phi ptr [ %i.cx, %bb.k ], [ %i.cl, %.lr.ph.preheader.i.i.i.i.i.i.i55.i.i ] ; 2 uses
  %i.ct = load i8, ptr %.02023.i.i.i.i.i.i.i59.i.i, align 1, !tbaa !43 ; 2 uses
  %i.cu = load i8, ptr %.01924.i.i.i.i.i.i.i58.i.i, align 1, !tbaa !43 ; 2 uses
  %i.cv = icmp slt i8 %i.ct, %i.cu
  br i1 %i.cv, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS9_14BaseStatisticsEE3$_0EEEvT_SF_SF_SF_T0_.exit.i", label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i57.i.i
  %i.cw = icmp slt i8 %i.cu, %i.ct
  br i1 %i.cw, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit64.thread97.i.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cx = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i59.i.i, i64 1 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i58.i.i, i64 1
  %.not.i.i.i.i.i.i.i60.i.i = icmp eq ptr %i.cx, %i.cs
  br i1 %.not.i.i.i.i.i.i.i60.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit64.i.i", label %.lr.ph.i.i.i.i.i.i.i57.i.i, !llvm.loop !792

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit64.i.i": ; preds = %bb.k, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.thread88.i.i"
  %.019.lcssa.i.i.i.i.i.i.i62.i.i = phi ptr [ %i.co, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.thread88.i.i" ], [ %scevgep.i.i.i.i.i.i.i56.i.i, %bb.k ]
  %.not102.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i62.i.i, %i.cr
  br i1 %.not102.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit64.thread97.i.i", label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS9_14BaseStatisticsEE3$_0EEEvT_SF_SF_SF_T0_.exit.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit64.thread97.i.i": ; preds = %bb.j, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit64.i.i"
  %.val.i65.i.i = load i64, ptr %i.ah, align 8, !tbaa !123
  %i.cz = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.val.i65.i.i) ; 2 uses
  %i.da = load i64, ptr %i.ai, align 8, !tbaa !123
  %i.db = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.da) ; 2 uses
  %i.dc = load ptr, ptr %i.cz, align 8, !tbaa !105 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !122
  %i.df = load ptr, ptr %i.db, align 8, !tbaa !105 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !122 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dh
  %.v.i.i66.i.i = tail call i64 @llvm.smin.i64(i64 %i.dh, i64 %i.de) ; 3 uses
  %i.dj = getelementptr inbounds i8, ptr %i.dc, i64 %.v.i.i66.i.i
  %.not22.i.i.i.i.i.i.i67.i.i = icmp eq i64 %.v.i.i66.i.i, 0
  br i1 %.not22.i.i.i.i.i.i.i67.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit77.i.i", label %.lr.ph.preheader.i.i.i.i.i.i.i68.i.i

.lr.ph.preheader.i.i.i.i.i.i.i68.i.i:             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit64.thread97.i.i"
  %scevgep.i.i.i.i.i.i.i69.i.i = getelementptr i8, ptr %i.df, i64 %.v.i.i66.i.i
  br label %.lr.ph.i.i.i.i.i.i.i70.i.i

.lr.ph.i.i.i.i.i.i.i70.i.i:                       ; preds = %bb.m, %.lr.ph.preheader.i.i.i.i.i.i.i68.i.i
  %.01924.i.i.i.i.i.i.i71.i.i = phi ptr [ %i.dp, %bb.m ], [ %i.df, %.lr.ph.preheader.i.i.i.i.i.i.i68.i.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i72.i.i = phi ptr [ %i.do, %bb.m ], [ %i.dc, %.lr.ph.preheader.i.i.i.i.i.i.i68.i.i ] ; 2 uses
  %i.dk = load i8, ptr %.02023.i.i.i.i.i.i.i72.i.i, align 1, !tbaa !43 ; 2 uses
  %i.dl = load i8, ptr %.01924.i.i.i.i.i.i.i71.i.i, align 1, !tbaa !43 ; 2 uses
  %i.dm = icmp slt i8 %i.dk, %i.dl
  br i1 %i.dm, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS9_14BaseStatisticsEE3$_0EEEvT_SF_SF_SF_T0_.exit.i", label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i70.i.i
  %i.dn = icmp slt i8 %i.dl, %i.dk
  br i1 %i.dn, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit77.thread100.i.i", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.do = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i72.i.i, i64 1 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i71.i.i, i64 1
  %.not.i.i.i.i.i.i.i73.i.i = icmp eq ptr %i.do, %i.dj
  br i1 %.not.i.i.i.i.i.i.i73.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit77.i.i", label %.lr.ph.i.i.i.i.i.i.i70.i.i, !llvm.loop !792

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit77.i.i": ; preds = %bb.m, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit64.thread97.i.i"
  %.019.lcssa.i.i.i.i.i.i.i75.i.i = phi ptr [ %i.df, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit64.thread97.i.i" ], [ %scevgep.i.i.i.i.i.i.i69.i.i, %bb.m ]
  %.not103.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i75.i.i, %i.di
  br i1 %.not103.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit77.thread100.i.i", label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS9_14BaseStatisticsEE3$_0EEEvT_SF_SF_SF_T0_.exit.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit77.thread100.i.i": ; preds = %bb.l, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit77.i.i"
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS9_14BaseStatisticsEE3$_0EEEvT_SF_SF_SF_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS9_14BaseStatisticsEE3$_0EEEvT_SF_SF_SF_T0_.exit.i": ; preds = %.lr.ph.i.i.i.i.i.i.i31.i.i, %.lr.ph.i.i.i.i.i.i.i44.i.i, %.lr.ph.i.i.i.i.i.i.i57.i.i, %.lr.ph.i.i.i.i.i.i.i70.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit77.thread100.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit77.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit64.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit51.thread94.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit51.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit38.i.i"
  %.sink122.i.i = phi ptr [ %i.ai, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit51.i.i" ], [ %i.ah, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit77.thread100.i.i" ], [ %i.o, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit64.i.i" ], [ %i.ah, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit38.i.i" ], [ %i.o, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit51.thread94.i.i" ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i44.i.i ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i57.i.i ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i70.i.i ], [ %i.ai, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit77.i.i" ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i31.i.i ] ; 2 uses
  %i.dq = load i64, ptr %0, align 8, !tbaa !123
  %i.dr = load i64, ptr %.sink122.i.i, align 8, !tbaa !123
  store i64 %i.dr, ptr %0, align 8, !tbaa !123
  store i64 %i.dq, ptr %.sink122.i.i, align 8, !tbaa !123
  %i.ds = load ptr, ptr %i.p, align 8, !tbaa !45
  %i.dt = load ptr, ptr %3, align 8, !tbaa !48    ; 4 uses
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = sdiv exact i64 %i.dw, 56                ; 12 uses
  %.val.i99124.i.i = load i64, ptr %i.o, align 8, !tbaa !123 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.val.i99124.i.i, ptr %i.f, align 8, !tbaa !123
  store i64 %i.dx, ptr %i.g, align 8, !tbaa !123
  %.not.i.i.i21100125.i.i = icmp ult i64 %.val.i99124.i.i, %i.dx
  br i1 %.not.i.i.i21100125.i.i, label %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit28.lr.ph.i.i, label %.noexc.i46.i.i, !prof !743

_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit28.lr.ph.i.i: ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS9_14BaseStatisticsEE3$_0EEEvT_SF_SF_SF_T0_.exit.i", %bb.aa
  %.val.i99128.i.i = phi i64 [ %.val.i99.i.i, %bb.aa ], [ %.val.i99124.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS9_14BaseStatisticsEE3$_0EEEvT_SF_SF_SF_T0_.exit.i" ]
  %.sroa.063.0127.i.i = phi ptr [ %i.gj, %bb.aa ], [ %i.o, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS9_14BaseStatisticsEE3$_0EEEvT_SF_SF_SF_T0_.exit.i" ]
  %.sroa.060.0126.i.i = phi ptr [ %.sroa.060.1123.i.i, %bb.aa ], [ %storemerge67234, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS9_14BaseStatisticsEE3$_0EEEvT_SF_SF_SF_T0_.exit.i" ]
  %i.dy = load i64, ptr %0, align 8, !tbaa !123   ; 3 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.dy, %i.dx
  br i1 %.not.i.i.i.i.i, label %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit28.us.preheader.i.i, label %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit28.i.i, !prof !357

_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit28.us.preheader.i.i: ; preds = %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit28.lr.ph.i.i
  %i.dz = getelementptr inbounds nuw [56 x i8], ptr %i.dt, i64 %i.dy ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %.pre.i.i = load ptr, ptr %i.dz, align 8, !tbaa !105 ; 6 uses
  %.pre146.i.i = load i64, ptr %i.ea, align 8, !tbaa !122 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %.pre146.i.i
  br label %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit28.us.i.i

_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit28.us.i.i: ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.thread.us.i.i", %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit28.us.preheader.i.i
  %.val.i102.us.i.i = phi i64 [ %.val.i.us.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.thread.us.i.i" ], [ %.val.i99128.i.i, %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit28.us.preheader.i.i ] ; 2 uses
  %.sroa.063.1101.us.i.i = phi ptr [ %i.en, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.thread.us.i.i" ], [ %.sroa.063.0127.i.i, %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit28.us.preheader.i.i ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ec = getelementptr inbounds nuw [56 x i8], ptr %i.dt, i64 %.val.i102.us.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !105 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !122
  %.v.i.i.us.i.i = tail call i64 @llvm.smin.i64(i64 %.pre146.i.i, i64 %i.ef) ; 3 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ed, i64 %.v.i.i.us.i.i
  %.not22.i.i.i.i.i.i.i.us.i.i = icmp eq i64 %.v.i.i.us.i.i, 0
  br i1 %.not22.i.i.i.i.i.i.i.us.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.us.i.i", label %.lr.ph.preheader.i.i.i.i.i.i.i.us.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.us.i.i:            ; preds = %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit28.us.i.i
  %scevgep.i.i.i.i.i.i.i.us.i.i = getelementptr i8, ptr %.pre.i.i, i64 %.v.i.i.us.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.us.i.i

.lr.ph.i.i.i.i.i.i.i.us.i.i:                      ; preds = %bb.o, %.lr.ph.preheader.i.i.i.i.i.i.i.us.i.i
  %.01924.i.i.i.i.i.i.i.us.i.i = phi ptr [ %i.em, %bb.o ], [ %.pre.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.us.i.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.us.i.i = phi ptr [ %i.el, %bb.o ], [ %i.ed, %.lr.ph.preheader.i.i.i.i.i.i.i.us.i.i ] ; 2 uses
  %i.eh = load i8, ptr %.02023.i.i.i.i.i.i.i.us.i.i, align 1, !tbaa !43 ; 2 uses
  %i.ei = load i8, ptr %.01924.i.i.i.i.i.i.i.us.i.i, align 1, !tbaa !43 ; 2 uses
  %i.ej = icmp slt i8 %i.eh, %i.ei
  br i1 %i.ej, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.thread.us.i.i", label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i.i
  %i.ek = icmp slt i8 %i.ei, %i.eh
  br i1 %i.ek, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.thread71.i.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.el = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.us.i.i, i64 1 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.us.i.i, i64 1
  %.not.i.i.i.i.i.i.i.us.i.i = icmp eq ptr %i.el, %i.eg
  br i1 %.not.i.i.i.i.i.i.i.us.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.us.i.i", label %.lr.ph.i.i.i.i.i.i.i.us.i.i, !llvm.loop !792

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.us.i.i": ; preds = %bb.o, %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit28.us.i.i
  %.019.lcssa.i.i.i.i.i.i.i.us.i.i = phi ptr [ %.pre.i.i, %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit28.us.i.i ], [ %scevgep.i.i.i.i.i.i.i.us.i.i, %bb.o ]
  %.not.us.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.us.i.i, %i.eb
  br i1 %.not.us.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.thread71.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.thread.us.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.thread.us.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.us.i.i"
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.063.1101.us.i.i, i64 8 ; 2 uses
  %.val.i.us.i.i = load i64, ptr %i.en, align 8, !tbaa !123 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.val.i.us.i.i, ptr %i.f, align 8, !tbaa !123
  store i64 %i.dx, ptr %i.g, align 8, !tbaa !123
  %.not.i.i.i21.us.i.i = icmp ult i64 %.val.i.us.i.i, %i.dx
  br i1 %.not.i.i.i21.us.i.i, label %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit28.us.i.i, label %.noexc.i46.i.i, !prof !744, !llvm.loop !892

.noexc.i46.i.i:                                   ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS9_14BaseStatisticsEE3$_0EEEvT_SF_SF_SF_T0_.exit.i", %bb.aa, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.thread.us.i.i"
  %i.eo = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ep, ptr %5, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 55, ptr %i.b, align 8, !tbaa !123
  %i.eq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc47.i.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i22.i.i ; 3 uses

.noexc47.i.i:                                     ; preds = %.noexc.i46.i.i
  store ptr %i.eq, ptr %5, align 8, !tbaa !105
  %i.er = load i64, ptr %i.b, align 8, !tbaa !123 ; 3 uses
  store i64 %i.er, ptr %i.ep, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.eq, ptr noundef nonnull align 1 dereferenceable(55) @.str.111, i64 55, i1 false)
  %i.es = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.er, ptr %i.es, align 8, !tbaa !122
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.er
  store i8 0, ptr %i.et, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.noexc47.i.i
  invoke void @__cxa_throw(ptr nonnull %i.eo, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.r unwind label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i22.i.i: ; preds = %.noexc.i46.i.i
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %common.resume.sink.split.i.i

bb.q:                                             ; preds = %bb.p, %.noexc47.i.i
  %.0.i.i.i25.i.i = phi i1 [ false, %bb.p ], [ true, %.noexc47.i.i ] ; 2 uses
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ew = load ptr, ptr %5, align 8, !tbaa !105   ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.ep
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i27.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i26.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i26.i.i: ; preds = %bb.q
  call void @_ZdlPv(ptr noundef %i.ew) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %.0.i.i.i25.i.i, label %common.resume.sink.split.i.i, label %common.resume.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i27.i.i: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %.0.i.i.i25.i.i, label %common.resume.sink.split.i.i, label %common.resume.i.i

common.resume.sink.split.i.i:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i35.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i34.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i30.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i27.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i26.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i22.i.i
  %.sink.i.i = phi ptr [ %i.ey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i ], [ %i.fj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i30.i.i ], [ %i.ey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i ], [ %i.ey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.fj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i35.i.i ], [ %i.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i34.i.i ], [ %i.eo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i27.i.i ], [ %i.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i26.i.i ], [ %i.eo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i22.i.i ]
  %common.resume.op.ph.i.i = phi { ptr, i32 } [ %i.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i ], [ %i.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i30.i.i ], [ %i.ff, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i ], [ %i.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i35.i.i ], [ %i.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i34.i.i ], [ %i.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i27.i.i ], [ %i.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i26.i.i ], [ %i.eu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i22.i.i ]
  call void @__cxa_free_exception(ptr %.sink.i.i) #28
  br label %common.resume.i.i

common.resume.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i35.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i34.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %common.resume.sink.split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i27.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i26.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i26.i.i ], [ %i.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i27.i.i ], [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i35.i.i ], [ %i.ff, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i ], [ %i.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i34.i.i ], [ %common.resume.op.ph.i.i, %common.resume.sink.split.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.r:                                             ; preds = %bb.p
  unreachable

_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit28.i.i: ; preds = %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit28.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %i.dy, ptr %i.h, align 8, !tbaa !123
  store i64 %i.dx, ptr %i.i, align 8, !tbaa !123
  %i.ey = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.ez, ptr %6, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i64 55, ptr %i.c, align 8, !tbaa !123
  %i.fa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc.i.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i ; 3 uses

.noexc.i.i:                                       ; preds = %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit28.i.i
  store ptr %i.fa, ptr %6, align 8, !tbaa !105
  %i.fb = load i64, ptr %i.c, align 8, !tbaa !123 ; 3 uses
  store i64 %i.fb, ptr %i.ez, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.fa, ptr noundef nonnull align 1 dereferenceable(55) @.str.111, i64 55, i1 false)
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.fb, ptr %i.fc, align 8, !tbaa !122
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fb
  store i8 0, ptr %i.fd, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ey, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.noexc.i.i
  invoke void @__cxa_throw(ptr nonnull %i.ey, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.u unwind label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i: ; preds = %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit28.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %common.resume.sink.split.i.i

bb.t:                                             ; preds = %bb.s, %.noexc.i.i
  %.0.i.i.i.i.i = phi i1 [ false, %bb.s ], [ true, %.noexc.i.i ] ; 2 uses
  %i.ff = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fg = load ptr, ptr %6, align 8, !tbaa !105   ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.ez
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.fg) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br i1 %.0.i.i.i.i.i, label %common.resume.sink.split.i.i, label %common.resume.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br i1 %.0.i.i.i.i.i, label %common.resume.sink.split.i.i, label %common.resume.i.i

bb.u:                                             ; preds = %bb.s
  unreachable

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.thread71.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.us.i.i", %bb.n
  %.sroa.060.1121.i.i = getelementptr inbounds i8, ptr %.sroa.060.0126.i.i, i64 -8 ; 2 uses
  %i.fi = load i64, ptr %.sroa.060.1121.i.i, align 8, !tbaa !123 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.fi, ptr %i.d, align 8, !tbaa !123
  store i64 %i.dx, ptr %i.e, align 8, !tbaa !123
  %.not.i.i.i29122.i.i = icmp ult i64 %i.fi, %i.dx
  br i1 %.not.i.i.i29122.i.i, label %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit36.i.i, label %.noexc.i50.i.i, !prof !743

.noexc.i50.i.i:                                   ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.thread71.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit20.thread.i.i"
  %i.fj = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.fk, ptr %4, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 55, ptr %i.a, align 8, !tbaa !123
  %i.fl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc51.i.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i30.i.i ; 3 uses

.noexc51.i.i:                                     ; preds = %.noexc.i50.i.i
  store ptr %i.fl, ptr %4, align 8, !tbaa !105
  %i.fm = load i64, ptr %i.a, align 8, !tbaa !123 ; 3 uses
  store i64 %i.fm, ptr %i.fk, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.fl, ptr noundef nonnull align 1 dereferenceable(55) @.str.111, i64 55, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.fm, ptr %i.fn, align 8, !tbaa !122
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fm
  store i8 0, ptr %i.fo, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fj, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %.noexc51.i.i
  invoke void @__cxa_throw(ptr nonnull %i.fj, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.x unwind label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i30.i.i: ; preds = %.noexc.i50.i.i
  %i.fp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %common.resume.sink.split.i.i

bb.w:                                             ; preds = %bb.v, %.noexc51.i.i
  %.0.i.i.i33.i.i = phi i1 [ false, %bb.v ], [ true, %.noexc51.i.i ] ; 2 uses
  %i.fq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fr = load ptr, ptr %4, align 8, !tbaa !105   ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.fk
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i35.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i34.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i34.i.i: ; preds = %bb.w
  call void @_ZdlPv(ptr noundef %i.fr) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %.0.i.i.i33.i.i, label %common.resume.sink.split.i.i, label %common.resume.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i35.i.i: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %.0.i.i.i33.i.i, label %common.resume.sink.split.i.i, label %common.resume.i.i

bb.x:                                             ; preds = %bb.v
  unreachable

_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit36.i.i: ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.thread71.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit20.thread.i.i"
  %i.ft = phi i64 [ %i.gg, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit20.thread.i.i" ], [ %i.fi, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.thread71.i.i" ]
  %.sroa.060.1123.i.i = phi ptr [ %.sroa.060.1.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit20.thread.i.i" ], [ %.sroa.060.1121.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.thread71.i.i" ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.fu = getelementptr inbounds nuw [56 x i8], ptr %i.dt, i64 %i.ft ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !105 ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !122 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fx
  %.v.i.i9.i.i = tail call i64 @llvm.smin.i64(i64 %i.fx, i64 %.pre146.i.i) ; 3 uses
  %i.fz = getelementptr inbounds i8, ptr %.pre.i.i, i64 %.v.i.i9.i.i
  %.not22.i.i.i.i.i.i.i10.i.i = icmp eq i64 %.v.i.i9.i.i, 0
  br i1 %.not22.i.i.i.i.i.i.i10.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit20.i.i", label %.lr.ph.preheader.i.i.i.i.i.i.i11.i.i

.lr.ph.preheader.i.i.i.i.i.i.i11.i.i:             ; preds = %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit36.i.i
  %scevgep.i.i.i.i.i.i.i12.i.i = getelementptr i8, ptr %i.fv, i64 %.v.i.i9.i.i
  br label %.lr.ph.i.i.i.i.i.i.i13.i.i

.lr.ph.i.i.i.i.i.i.i13.i.i:                       ; preds = %bb.z, %.lr.ph.preheader.i.i.i.i.i.i.i11.i.i
  %.01924.i.i.i.i.i.i.i14.i.i = phi ptr [ %i.gf, %bb.z ], [ %i.fv, %.lr.ph.preheader.i.i.i.i.i.i.i11.i.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i15.i.i = phi ptr [ %i.ge, %bb.z ], [ %.pre.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i11.i.i ] ; 2 uses
  %i.ga = load i8, ptr %.02023.i.i.i.i.i.i.i15.i.i, align 1, !tbaa !43 ; 2 uses
  %i.gb = load i8, ptr %.01924.i.i.i.i.i.i.i14.i.i, align 1, !tbaa !43 ; 2 uses
  %i.gc = icmp slt i8 %i.ga, %i.gb
  br i1 %i.gc, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit20.thread.i.i", label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i13.i.i
  %i.gd = icmp slt i8 %i.gb, %i.ga
  br i1 %i.gd, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit20.thread74.i.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ge = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i15.i.i, i64 1 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i14.i.i, i64 1
  %.not.i.i.i.i.i.i.i16.i.i = icmp eq ptr %i.ge, %i.fz
  br i1 %.not.i.i.i.i.i.i.i16.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit20.i.i", label %.lr.ph.i.i.i.i.i.i.i13.i.i, !llvm.loop !792

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit20.i.i": ; preds = %bb.z, %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit36.i.i
  %.019.lcssa.i.i.i.i.i.i.i18.i.i = phi ptr [ %i.fv, %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit36.i.i ], [ %scevgep.i.i.i.i.i.i.i12.i.i, %bb.z ]
  %.not76.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i18.i.i, %i.fy
  br i1 %.not76.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit20.thread74.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit20.thread.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit20.thread.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i13.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit20.i.i"
  %.sroa.060.1.i.i = getelementptr inbounds i8, ptr %.sroa.060.1123.i.i, i64 -8 ; 2 uses
  %i.gg = load i64, ptr %.sroa.060.1.i.i, align 8, !tbaa !123 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.gg, ptr %i.d, align 8, !tbaa !123
  store i64 %i.dx, ptr %i.e, align 8, !tbaa !123
  %.not.i.i.i29.i.i = icmp ult i64 %i.gg, %i.dx
  br i1 %.not.i.i.i29.i.i, label %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit36.i.i, label %.noexc.i50.i.i, !prof !744, !llvm.loop !893

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit20.thread74.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit20.i.i", %bb.y
  %i.gh = icmp ult ptr %.sroa.063.1101.us.i.i, %.sroa.060.1123.i.i
  br i1 %i.gh, label %bb.aa, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS9_14BaseStatisticsEE3$_0EEET_SF_SF_T0_.exit"

bb.aa:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit20.thread74.i.i"
  %i.gi = load i64, ptr %.sroa.060.1123.i.i, align 8, !tbaa !123
  store i64 %i.gi, ptr %.sroa.063.1101.us.i.i, align 8, !tbaa !123
  store i64 %.val.i102.us.i.i, ptr %.sroa.060.1123.i.i, align 8, !tbaa !123
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.063.1101.us.i.i, i64 8 ; 2 uses
  %.val.i99.i.i = load i64, ptr %i.gj, align 8, !tbaa !123 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.val.i99.i.i, ptr %i.f, align 8, !tbaa !123
  store i64 %i.dx, ptr %i.g, align 8, !tbaa !123
  %.not.i.i.i21100.i.i = icmp ult i64 %.val.i99.i.i, %i.dx
  br i1 %.not.i.i.i21100.i.i, label %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit28.lr.ph.i.i, label %.noexc.i46.i.i, !prof !894, !llvm.loop !895

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS9_14BaseStatisticsEE3$_0EEET_SF_SF_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit20.thread74.i.i"
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS9_14BaseStatisticsEE3$_0EEEvT_SF_T0_T1_"(ptr %.sroa.063.1101.us.i.i, ptr %storemerge67234, i64 noundef %i.af, ptr nonnull %3)
  %i.gk = ptrtoint ptr %.sroa.063.1101.us.i.i to i64
  %i.gl = sub i64 %i.gk, %i.j
  %i.gm = ashr exact i64 %i.gl, 3                 ; 3 uses
  %i.gn = icmp sgt i64 %i.gm, 16
  br i1 %i.gn, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS9_14BaseStatisticsEE3$_0EEEvT_SF_SF_T0_.exit", !llvm.loop !889

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS9_14BaseStatisticsEE3$_0EEEvT_SF_SF_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS9_14BaseStatisticsEE3$_0EEET_SF_SF_T0_.exit", %.lr.ph.i9.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS9_14BaseStatisticsEE3$_0EEEvT_T0_SG_T1_T2_"(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr %4) unnamed_addr #0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.thread40"
  %.045 = phi i64 [ %i.aa, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.thread40" ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.045, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 3 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %.val.i = load i64, ptr %i.f, align 8, !tbaa !123
  %i.i = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %.val.i) ; 2 uses
  %i.j = load i64, ptr %i.h, align 8, !tbaa !123
  %i.k = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.j) ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !105  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !122
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !105  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !122  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  %.v.i.i = tail call i64 @llvm.smin.i64(i64 %i.q, i64 %i.n) ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %i.l, i64 %.v.i.i
  %.not22.i.i.i.i.i.i.i = icmp eq i64 %.v.i.i, 0
  br i1 %.not22.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit", label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %.lr.ph
  %scevgep.i.i.i.i.i.i.i = getelementptr i8, ptr %i.o, i64 %.v.i.i
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.01924.i.i.i.i.i.i.i = phi ptr [ %i.y, %bb.c ], [ %i.o, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i = phi ptr [ %i.x, %bb.c ], [ %i.l, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %i.t = load i8, ptr %.02023.i.i.i.i.i.i.i, align 1, !tbaa !43 ; 2 uses
  %i.u = load i8, ptr %.01924.i.i.i.i.i.i.i, align 1, !tbaa !43 ; 2 uses
  %i.v = icmp slt i8 %i.t, %i.u
  br i1 %i.v, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.thread", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.w = icmp slt i8 %i.u, %i.t
  br i1 %i.w, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.thread40", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i, i64 1
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.x, %i.s
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit", label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !792

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit": ; preds = %bb.c, %.lr.ph
  %.019.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph ], [ %scevgep.i.i.i.i.i.i.i, %bb.c ]
  %i.z = icmp ne ptr %.019.lcssa.i.i.i.i.i.i.i, %i.r
  %cond.fr = freeze i1 %i.z
  br i1 %cond.fr, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.thread", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.thread40"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.thread": ; preds = %.lr.ph.i.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit"
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.thread40"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.thread40": ; preds = %bb.b, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.thread"
  %i.aa = phi i64 [ %i.g, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.thread" ], [ %i.e, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit" ], [ %i.e, %bb.b ] ; 4 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !123
  %i.ad = getelementptr inbounds [8 x i8], ptr %0, i64 %.045
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !123
  %i.ae = icmp slt i64 %i.aa, %i.b
  br i1 %i.ae, label %.lr.ph, label %._crit_edge, !llvm.loop !896

._crit_edge:                                      ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.thread40", %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.aa, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.thread40" ] ; 5 uses
  %i.af = and i64 %2, 1
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.ah = add nsw i64 %2, -2
  %i.ai = ashr exact i64 %i.ah, 1
  %i.aj = icmp eq i64 %.0.lcssa, %i.ai
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ak = shl nsw i64 %.0.lcssa, 1
  %i.al = or disjoint i64 %i.ak, 1                ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %0, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !123
  %i.ao = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !123
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.al, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.ap = icmp sgt i64 %.1, %1
  br i1 %i.ap, label %.lr.ph.i, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops14_Iter_comp_valIZN6duckdbL16ToStringInternalB5cxx11ERKNS9_14BaseStatisticsEE3$_0EEEvT_T0_SG_T1_RT2_.exit"

.lr.ph.i:                                         ; preds = %bb.f, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEEmEEbT_RT0_.exit.thread.i"
  %.016.i = phi i64 [ %.0917.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEEmEEbT_RT0_.exit.thread.i" ], [ %.1, %bb.f ] ; 4 uses
  %.0917.in.i = add nsw i64 %.016.i, -1
  %.0917.i = sdiv i64 %.0917.in.i, 2              ; 4 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.0917.i ; 2 uses
  %.val.i.i = load i64, ptr %i.aq, align 8, !tbaa !123
  %i.ar = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %.val.i.i) ; 2 uses
  %i.as = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %3) ; 2 uses
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !105 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !122
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !105 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !122 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ay
  %.v.i.i.i = tail call i64 @llvm.smin.i64(i64 %i.ay, i64 %i.av) ; 3 uses
  %i.ba = getelementptr inbounds i8, ptr %i.at, i64 %.v.i.i.i
  %.not22.i.i.i.i.i.i.i.i = icmp eq i64 %.v.i.i.i, 0
  br i1 %.not22.i.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEEmEEbT_RT0_.exit.i", label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i
  %scevgep.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.aw, i64 %.v.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.h, %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %.01924.i.i.i.i.i.i.i.i = phi ptr [ %i.bg, %bb.h ], [ %i.aw, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i = phi ptr [ %i.bf, %bb.h ], [ %i.at, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bb = load i8, ptr %.02023.i.i.i.i.i.i.i.i, align 1, !tbaa !43 ; 2 uses
  %i.bc = load i8, ptr %.01924.i.i.i.i.i.i.i.i, align 1, !tbaa !43 ; 2 uses
  %i.bd = icmp slt i8 %i.bb, %i.bc
  br i1 %i.bd, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEEmEEbT_RT0_.exit.thread.i", label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.be = icmp slt i8 %i.bc, %i.bb
  br i1 %i.be, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops14_Iter_comp_valIZN6duckdbL16ToStringInternalB5cxx11ERKNS9_14BaseStatisticsEE3$_0EEEvT_T0_SG_T1_RT2_.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i, i64 1
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, %i.ba
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEEmEEbT_RT0_.exit.i", label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !792

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEEmEEbT_RT0_.exit.i": ; preds = %bb.h, %.lr.ph.i
  %.019.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i ], [ %scevgep.i.i.i.i.i.i.i.i, %bb.h ]
  %.not.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i, %i.az
  br i1 %.not.i, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops14_Iter_comp_valIZN6duckdbL16ToStringInternalB5cxx11ERKNS9_14BaseStatisticsEE3$_0EEEvT_T0_SG_T1_RT2_.exit", label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEEmEEbT_RT0_.exit.thread.i"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEEmEEbT_RT0_.exit.thread.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEEmEEbT_RT0_.exit.i"
  %i.bh = load i64, ptr %i.aq, align 8, !tbaa !123
  %i.bi = getelementptr inbounds [8 x i8], ptr %0, i64 %.016.i
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !123
  %i.bj = icmp sgt i64 %.0917.i, %1
  br i1 %i.bj, label %.lr.ph.i, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops14_Iter_comp_valIZN6duckdbL16ToStringInternalB5cxx11ERKNS9_14BaseStatisticsEE3$_0EEEvT_T0_SG_T1_RT2_.exit", !llvm.loop !897

"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops14_Iter_comp_valIZN6duckdbL16ToStringInternalB5cxx11ERKNS9_14BaseStatisticsEE3$_0EEEvT_T0_SG_T1_RT2_.exit": ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEEmEEbT_RT0_.exit.i", %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEEmEEbT_RT0_.exit.thread.i", %bb.g, %bb.f
  %.013.i = phi i64 [ %.016.i, %bb.g ], [ %.1, %bb.f ], [ %.016.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEEmEEbT_RT0_.exit.i" ], [ %.0917.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6duckdbL16ToStringInternalB5cxx11ERKNS2_14BaseStatisticsEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEEmEEbT_RT0_.exit.thread.i" ]
  %i.bk = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.i
  store i64 %3, ptr %i.bk, align 8, !tbaa !123
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #25

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdbL16ToStringInternalB5cxx11ERKNS9_14BaseStatisticsEE3$_0EEEvT_SF_T0_"(ptr %0, ptr nofree readnone captures(address) %1, ptr %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.026 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not27 = icmp eq ptr %.sroa.0.026, %1
  br i1 %.not27, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.0.029 = phi ptr [ %.sroa.0.026, %.lr.ph ], [ %.sroa.0.0, %bb.k ] ; 7 uses
  %.pn28 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.029, %bb.k ] ; 2 uses
end_hunk_0
begin_hunk_1_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS9_11LogicalTypeEE3$_0EEEvT_SF_T0_T1_":bb.a
  %i.av = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br i1 %i.av, label %bb.d, label %bb.i

bb.d:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.i.i"
  %.val.i26.i.i = load i64, ptr %i.ah, align 8, !tbaa !123
  %i.aw = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.val.i26.i.i) ; 2 uses
  %i.ax = load i64, ptr %i.ai, align 8, !tbaa !123
  %i.ay = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.ax) ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !122 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !122 ; 2 uses
  %.sroa.speculated.i.i.i.i27.i.i = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 %i.ba) ; 2 uses
  %i.bd = icmp eq i64 %.sroa.speculated.i.i.i.i27.i.i, 0
  br i1 %i.bd, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i31.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i28.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i28.i.i: ; preds = %bb.d
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !105
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !105
  %i.bg = tail call i32 @memcmp(ptr noundef %i.bf, ptr noundef %i.be, i64 noundef %.sroa.speculated.i.i.i.i27.i.i) #28 ; 2 uses
  %.not.i.i.i.i29.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i.i29.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i31.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit35.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i31.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i28.i.i, %bb.d
  %i.bh = sub i64 %i.ba, %i.bc
  %spec.select7.i.i.i.i.i32.i.i = tail call i64 @llvm.smax.i64(i64 %i.bh, i64 -2147483648)
  %.08.i.i.i.i.i33.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i32.i.i, i64 2147483647)
  %.0.i6.i.i.i.i34.i.i = trunc nsw i64 %.08.i.i.i.i.i33.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit35.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit35.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i31.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i28.i.i
  %.0.i.i.i.i30.i.i = phi i32 [ %i.bg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i28.i.i ], [ %.0.i6.i.i.i.i34.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i31.i.i ]
  %i.bi = icmp slt i32 %.0.i.i.i.i30.i.i, 0
  br i1 %i.bi, label %bb.e, label %bb.f

bb.e:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit35.i.i"
  %i.bj = load i64, ptr %0, align 8, !tbaa !123
  %i.bk = load i64, ptr %i.ah, align 8, !tbaa !123
  store i64 %i.bk, ptr %0, align 8, !tbaa !123
  store i64 %i.bj, ptr %i.ah, align 8, !tbaa !123
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS9_11LogicalTypeEE3$_0EEEvT_SF_SF_SF_T0_.exit.i"

bb.f:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit35.i.i"
  %.val.i36.i.i = load i64, ptr %i.o, align 8, !tbaa !123
  %i.bl = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.val.i36.i.i) ; 2 uses
  %i.bm = load i64, ptr %i.ai, align 8, !tbaa !123
  %i.bn = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bm) ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !122 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !122 ; 2 uses
  %.sroa.speculated.i.i.i.i37.i.i = tail call i64 @llvm.umin.i64(i64 %i.br, i64 %i.bp) ; 2 uses
  %i.bs = icmp eq i64 %.sroa.speculated.i.i.i.i37.i.i, 0
  br i1 %i.bs, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i41.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i38.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i38.i.i: ; preds = %bb.f
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !105
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !105
  %i.bv = tail call i32 @memcmp(ptr noundef %i.bu, ptr noundef %i.bt, i64 noundef %.sroa.speculated.i.i.i.i37.i.i) #28 ; 2 uses
  %.not.i.i.i.i39.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i.i39.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i41.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit45.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i41.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i38.i.i, %bb.f
  %i.bw = sub i64 %i.bp, %i.br
  %spec.select7.i.i.i.i.i42.i.i = tail call i64 @llvm.smax.i64(i64 %i.bw, i64 -2147483648)
  %.08.i.i.i.i.i43.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i42.i.i, i64 2147483647)
  %.0.i6.i.i.i.i44.i.i = trunc nsw i64 %.08.i.i.i.i.i43.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit45.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit45.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i41.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i38.i.i
  %.0.i.i.i.i40.i.i = phi i32 [ %i.bv, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i38.i.i ], [ %.0.i6.i.i.i.i44.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i41.i.i ]
  %i.bx = icmp slt i32 %.0.i.i.i.i40.i.i, 0
  %i.by = load i64, ptr %0, align 8, !tbaa !123   ; 2 uses
  br i1 %i.bx, label %bb.g, label %bb.h

bb.g:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit45.i.i"
  %i.bz = load i64, ptr %i.ai, align 8, !tbaa !123
  store i64 %i.bz, ptr %0, align 8, !tbaa !123
  store i64 %i.by, ptr %i.ai, align 8, !tbaa !123
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS9_11LogicalTypeEE3$_0EEEvT_SF_SF_SF_T0_.exit.i"

bb.h:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit45.i.i"
  %i.ca = load i64, ptr %i.o, align 8, !tbaa !123
  store i64 %i.ca, ptr %0, align 8, !tbaa !123
  store i64 %i.by, ptr %i.o, align 8, !tbaa !123
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS9_11LogicalTypeEE3$_0EEEvT_SF_SF_SF_T0_.exit.i"

bb.i:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.i.i"
  %.val.i46.i.i = load i64, ptr %i.o, align 8, !tbaa !123
  %i.cb = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.val.i46.i.i) ; 2 uses
  %i.cc = load i64, ptr %i.ai, align 8, !tbaa !123
  %i.cd = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.cc) ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !122 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !122 ; 2 uses
  %.sroa.speculated.i.i.i.i47.i.i = tail call i64 @llvm.umin.i64(i64 %i.ch, i64 %i.cf) ; 2 uses
  %i.ci = icmp eq i64 %.sroa.speculated.i.i.i.i47.i.i, 0
  br i1 %i.ci, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i51.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i48.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i48.i.i: ; preds = %bb.i
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !105
  %i.ck = load ptr, ptr %i.cb, align 8, !tbaa !105
  %i.cl = tail call i32 @memcmp(ptr noundef %i.ck, ptr noundef %i.cj, i64 noundef %.sroa.speculated.i.i.i.i47.i.i) #28 ; 2 uses
  %.not.i.i.i.i49.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i.i.i49.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i51.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit55.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i51.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i48.i.i, %bb.i
  %i.cm = sub i64 %i.cf, %i.ch
  %spec.select7.i.i.i.i.i52.i.i = tail call i64 @llvm.smax.i64(i64 %i.cm, i64 -2147483648)
  %.08.i.i.i.i.i53.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i52.i.i, i64 2147483647)
  %.0.i6.i.i.i.i54.i.i = trunc nsw i64 %.08.i.i.i.i.i53.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit55.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit55.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i51.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i48.i.i
  %.0.i.i.i.i50.i.i = phi i32 [ %i.cl, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i48.i.i ], [ %.0.i6.i.i.i.i54.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i51.i.i ]
  %i.cn = icmp slt i32 %.0.i.i.i.i50.i.i, 0
  br i1 %i.cn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit55.i.i"
  %i.co = load <2 x i64>, ptr %0, align 8, !tbaa !123
  %i.cp = shufflevector <2 x i64> %i.co, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.cp, ptr %0, align 8, !tbaa !123
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS9_11LogicalTypeEE3$_0EEEvT_SF_SF_SF_T0_.exit.i"

bb.k:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit55.i.i"
  %.val.i56.i.i = load i64, ptr %i.ah, align 8, !tbaa !123
  %i.cq = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.val.i56.i.i) ; 2 uses
  %i.cr = load i64, ptr %i.ai, align 8, !tbaa !123
  %i.cs = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.cr) ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !122 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !122 ; 2 uses
  %.sroa.speculated.i.i.i.i57.i.i = tail call i64 @llvm.umin.i64(i64 %i.cw, i64 %i.cu) ; 2 uses
  %i.cx = icmp eq i64 %.sroa.speculated.i.i.i.i57.i.i, 0
  br i1 %i.cx, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i61.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i58.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i58.i.i: ; preds = %bb.k
  %i.cy = load ptr, ptr %i.cs, align 8, !tbaa !105
  %i.cz = load ptr, ptr %i.cq, align 8, !tbaa !105
  %i.da = tail call i32 @memcmp(ptr noundef %i.cz, ptr noundef %i.cy, i64 noundef %.sroa.speculated.i.i.i.i57.i.i) #28 ; 2 uses
  %.not.i.i.i.i59.i.i = icmp eq i32 %i.da, 0
  br i1 %.not.i.i.i.i59.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i61.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit65.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i61.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i58.i.i, %bb.k
  %i.db = sub i64 %i.cu, %i.cw
  %spec.select7.i.i.i.i.i62.i.i = tail call i64 @llvm.smax.i64(i64 %i.db, i64 -2147483648)
  %.08.i.i.i.i.i63.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i62.i.i, i64 2147483647)
  %.0.i6.i.i.i.i64.i.i = trunc nsw i64 %.08.i.i.i.i.i63.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit65.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit65.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i61.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i58.i.i
  %.0.i.i.i.i60.i.i = phi i32 [ %i.da, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i58.i.i ], [ %.0.i6.i.i.i.i64.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i61.i.i ]
  %i.dc = icmp slt i32 %.0.i.i.i.i60.i.i, 0
  %i.dd = load i64, ptr %0, align 8, !tbaa !123   ; 2 uses
  br i1 %i.dc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit65.i.i"
  %i.de = load i64, ptr %i.ai, align 8, !tbaa !123
  store i64 %i.de, ptr %0, align 8, !tbaa !123
  store i64 %i.dd, ptr %i.ai, align 8, !tbaa !123
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS9_11LogicalTypeEE3$_0EEEvT_SF_SF_SF_T0_.exit.i"

bb.m:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit65.i.i"
  %i.df = load i64, ptr %i.ah, align 8, !tbaa !123
  store i64 %i.df, ptr %0, align 8, !tbaa !123
  store i64 %i.dd, ptr %i.ah, align 8, !tbaa !123
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS9_11LogicalTypeEE3$_0EEEvT_SF_SF_SF_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS9_11LogicalTypeEE3$_0EEEvT_SF_SF_SF_T0_.exit.i": ; preds = %bb.m, %bb.l, %bb.j, %bb.h, %bb.g, %bb.e
  %i.dg = load ptr, ptr %i.p, align 8, !tbaa !45
  %i.dh = load ptr, ptr %3, align 8, !tbaa !48    ; 4 uses
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = sdiv exact i64 %i.dk, 56                ; 10 uses
  %.val.i78104.i.i = load i64, ptr %i.o, align 8, !tbaa !123 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.val.i78104.i.i, ptr %i.f, align 8, !tbaa !123
  store i64 %i.dl, ptr %i.g, align 8, !tbaa !123
  %.not.i.i.i1879105.i.i = icmp ult i64 %.val.i78104.i.i, %i.dl
  br i1 %.not.i.i.i1879105.i.i, label %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit25.lr.ph.i.i, label %.noexc.i43.i.i, !prof !743

_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit25.lr.ph.i.i: ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS9_11LogicalTypeEE3$_0EEEvT_SF_SF_SF_T0_.exit.i", %bb.y
  %.val.i78108.i.i = phi i64 [ %.val.i78.i.i, %bb.y ], [ %.val.i78104.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS9_11LogicalTypeEE3$_0EEEvT_SF_SF_SF_T0_.exit.i" ]
  %.sroa.060.0107.i.i = phi ptr [ %i.fo, %bb.y ], [ %i.o, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS9_11LogicalTypeEE3$_0EEEvT_SF_SF_SF_T0_.exit.i" ]
  %.sroa.057.0106.i.i = phi ptr [ %.sroa.057.1.i.i, %bb.y ], [ %storemerge51158, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS9_11LogicalTypeEE3$_0EEEvT_SF_SF_SF_T0_.exit.i" ]
  %i.dm = load i64, ptr %0, align 8, !tbaa !123   ; 3 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.dm, %i.dl
  %i.dn = getelementptr inbounds nuw [56 x i8], ptr %i.dh, i64 %i.dm ; 3 uses
  br i1 %.not.i.i.i.i.i, label %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit25.us.preheader.i.i, label %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit25.i.i, !prof !357

_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit25.us.preheader.i.i: ; preds = %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit25.lr.ph.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %.pre.i.i = load i64, ptr %i.do, align 8, !tbaa !122 ; 4 uses
  br label %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit25.us.i.i

_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit25.us.i.i: ; preds = %bb.n, %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit25.us.preheader.i.i
  %.val.i81.us.i.i = phi i64 [ %.val.i.us.i.i, %bb.n ], [ %.val.i78108.i.i, %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit25.us.preheader.i.i ] ; 2 uses
  %.sroa.060.180.us.i.i = phi ptr [ %i.dy, %bb.n ], [ %.sroa.060.0107.i.i, %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit25.us.preheader.i.i ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.dp = getelementptr inbounds nuw [56 x i8], ptr %i.dh, i64 %.val.i81.us.i.i ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !122 ; 2 uses
  %.sroa.speculated.i.i.i.i.us.i.i = tail call i64 @llvm.umin.i64(i64 %.pre.i.i, i64 %i.dr) ; 2 uses
  %i.ds = icmp eq i64 %.sroa.speculated.i.i.i.i.us.i.i, 0
  br i1 %i.ds, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.us.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.us.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.us.i.i: ; preds = %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit25.us.i.i
  %i.dt = load ptr, ptr %i.dn, align 8, !tbaa !105
  %i.du = load ptr, ptr %i.dp, align 8, !tbaa !105
  %i.dv = tail call i32 @memcmp(ptr noundef %i.du, ptr noundef %i.dt, i64 noundef %.sroa.speculated.i.i.i.i.us.i.i) #28 ; 2 uses
  %.not.i.i.i.i.us.i.i = icmp eq i32 %i.dv, 0
  br i1 %.not.i.i.i.i.us.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.us.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.us.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.us.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.us.i.i, %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit25.us.i.i
  %i.dw = sub i64 %i.dr, %.pre.i.i
  %spec.select7.i.i.i.i.i.us.i.i = tail call i64 @llvm.smax.i64(i64 %i.dw, i64 -2147483648)
  %.08.i.i.i.i.i.us.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.us.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.us.i.i = trunc nsw i64 %.08.i.i.i.i.i.us.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.us.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.us.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.us.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.us.i.i
  %.0.i.i.i.i.us.i.i = phi i32 [ %i.dv, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.us.i.i ], [ %.0.i6.i.i.i.i.us.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.us.i.i ]
  %i.dx = icmp slt i32 %.0.i.i.i.i.us.i.i, 0
  br i1 %i.dx, label %bb.n, label %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit41.i.i

bb.n:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.us.i.i"
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.060.180.us.i.i, i64 8 ; 2 uses
  %.val.i.us.i.i = load i64, ptr %i.dy, align 8, !tbaa !123 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.val.i.us.i.i, ptr %i.f, align 8, !tbaa !123
  store i64 %i.dl, ptr %i.g, align 8, !tbaa !123
  %.not.i.i.i18.us.i.i = icmp ult i64 %.val.i.us.i.i, %i.dl
  br i1 %.not.i.i.i18.us.i.i, label %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit25.us.i.i, label %.noexc.i43.i.i, !prof !744, !llvm.loop !1003

.noexc.i43.i.i:                                   ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS9_11LogicalTypeEE3$_0EEEvT_SF_SF_SF_T0_.exit.i", %bb.y, %bb.n
  %i.dz = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ea, ptr %5, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 55, ptr %i.b, align 8, !tbaa !123
  %i.eb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc44.i.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i19.i.i ; 3 uses

.noexc44.i.i:                                     ; preds = %.noexc.i43.i.i
  store ptr %i.eb, ptr %5, align 8, !tbaa !105
  %i.ec = load i64, ptr %i.b, align 8, !tbaa !123 ; 3 uses
  store i64 %i.ec, ptr %i.ea, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.eb, ptr noundef nonnull align 1 dereferenceable(55) @.str.111, i64 55, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !122
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ec
  store i8 0, ptr %i.ee, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.noexc44.i.i
  invoke void @__cxa_throw(ptr nonnull %i.dz, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.q unwind label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i19.i.i: ; preds = %.noexc.i43.i.i
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %common.resume.sink.split.i.i

bb.p:                                             ; preds = %bb.o, %.noexc44.i.i
  %.0.i.i.i22.i.i = phi i1 [ false, %bb.o ], [ true, %.noexc44.i.i ] ; 2 uses
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.eh = load ptr, ptr %5, align 8, !tbaa !105   ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.ea
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i24.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i23.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i23.i.i: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.eh) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %.0.i.i.i22.i.i, label %common.resume.sink.split.i.i, label %common.resume.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i24.i.i: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %.0.i.i.i22.i.i, label %common.resume.sink.split.i.i, label %common.resume.i.i

common.resume.sink.split.i.i:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i32.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i31.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i27.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i24.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i23.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i19.i.i
  %.sink.i.i = phi ptr [ %i.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i ], [ %i.eu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i27.i.i ], [ %i.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i ], [ %i.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.eu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i32.i.i ], [ %i.eu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i31.i.i ], [ %i.dz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i24.i.i ], [ %i.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i23.i.i ], [ %i.dz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i19.i.i ]
  %common.resume.op.ph.i.i = phi { ptr, i32 } [ %i.ep, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i ], [ %i.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i27.i.i ], [ %i.eq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i ], [ %i.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i32.i.i ], [ %i.fb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i31.i.i ], [ %i.eg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i24.i.i ], [ %i.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i23.i.i ], [ %i.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i19.i.i ]
  call void @__cxa_free_exception(ptr %.sink.i.i) #28
  br label %common.resume.i.i

common.resume.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i32.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i31.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %common.resume.sink.split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i24.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i23.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i23.i.i ], [ %i.eg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i24.i.i ], [ %i.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i32.i.i ], [ %i.eq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i ], [ %i.fb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i31.i.i ], [ %common.resume.op.ph.i.i, %common.resume.sink.split.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.q:                                             ; preds = %bb.o
  unreachable

_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit25.i.i: ; preds = %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit25.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %i.dm, ptr %i.h, align 8, !tbaa !123
  store i64 %i.dl, ptr %i.i, align 8, !tbaa !123
  %i.ej = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.ek, ptr %6, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i64 55, ptr %i.c, align 8, !tbaa !123
  %i.el = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc.i.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i ; 3 uses

.noexc.i.i:                                       ; preds = %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit25.i.i
  store ptr %i.el, ptr %6, align 8, !tbaa !105
  %i.em = load i64, ptr %i.c, align 8, !tbaa !123 ; 3 uses
  store i64 %i.em, ptr %i.ek, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.el, ptr noundef nonnull align 1 dereferenceable(55) @.str.111, i64 55, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.em, ptr %i.en, align 8, !tbaa !122
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.em
  store i8 0, ptr %i.eo, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ej, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %.noexc.i.i
  invoke void @__cxa_throw(ptr nonnull %i.ej, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.t unwind label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i: ; preds = %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit25.i.i
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %common.resume.sink.split.i.i

bb.s:                                             ; preds = %bb.r, %.noexc.i.i
  %.0.i.i.i.i.i = phi i1 [ false, %bb.r ], [ true, %.noexc.i.i ] ; 2 uses
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.er = load ptr, ptr %6, align 8, !tbaa !105   ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.ek
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.er) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br i1 %.0.i.i.i.i.i, label %common.resume.sink.split.i.i, label %common.resume.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br i1 %.0.i.i.i.i.i, label %common.resume.sink.split.i.i, label %common.resume.i.i

bb.t:                                             ; preds = %bb.r
  unreachable

_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit41.i.i: ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.us.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit17.i.i"
  %.sroa.057.0.pn.i.i = phi ptr [ %.sroa.057.1.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit17.i.i" ], [ %.sroa.057.0106.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit.us.i.i" ]
  %.sroa.057.1.i.i = getelementptr inbounds i8, ptr %.sroa.057.0.pn.i.i, i64 -8 ; 5 uses
  %i.et = load i64, ptr %.sroa.057.1.i.i, align 8, !tbaa !123 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.et, ptr %i.d, align 8, !tbaa !123
  store i64 %i.dl, ptr %i.e, align 8, !tbaa !123
  %.not.i.i.i26.i.i = icmp ult i64 %i.et, %i.dl
  br i1 %.not.i.i.i26.i.i, label %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit33.i.i, label %.noexc.i47.i.i, !prof !357

.noexc.i47.i.i:                                   ; preds = %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit41.i.i
  %i.eu = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.ev, ptr %4, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 55, ptr %i.a, align 8, !tbaa !123
  %i.ew = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc48.i.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i27.i.i ; 3 uses

.noexc48.i.i:                                     ; preds = %.noexc.i47.i.i
  store ptr %i.ew, ptr %4, align 8, !tbaa !105
  %i.ex = load i64, ptr %i.a, align 8, !tbaa !123 ; 3 uses
  store i64 %i.ex, ptr %i.ev, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.ew, ptr noundef nonnull align 1 dereferenceable(55) @.str.111, i64 55, i1 false)
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !122
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ex
  store i8 0, ptr %i.ez, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %.noexc48.i.i
  invoke void @__cxa_throw(ptr nonnull %i.eu, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.w unwind label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i27.i.i: ; preds = %.noexc.i47.i.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %common.resume.sink.split.i.i

bb.v:                                             ; preds = %bb.u, %.noexc48.i.i
  %.0.i.i.i30.i.i = phi i1 [ false, %bb.u ], [ true, %.noexc48.i.i ] ; 2 uses
  %i.fb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fc = load ptr, ptr %4, align 8, !tbaa !105   ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.ev
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i32.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i31.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i31.i.i: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.fc) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %.0.i.i.i30.i.i, label %common.resume.sink.split.i.i, label %common.resume.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i32.i.i: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %.0.i.i.i30.i.i, label %common.resume.sink.split.i.i, label %common.resume.i.i

bb.w:                                             ; preds = %bb.u
  unreachable

_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit33.i.i: ; preds = %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit41.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.fe = getelementptr inbounds nuw [56 x i8], ptr %i.dh, i64 %i.et ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !122 ; 2 uses
  %.sroa.speculated.i.i.i.i9.i.i = tail call i64 @llvm.umin.i64(i64 %i.fg, i64 %.pre.i.i) ; 2 uses
  %i.fh = icmp eq i64 %.sroa.speculated.i.i.i.i9.i.i, 0
  br i1 %i.fh, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i13.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i10.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i10.i.i: ; preds = %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit33.i.i
  %i.fi = load ptr, ptr %i.fe, align 8, !tbaa !105
  %i.fj = load ptr, ptr %i.dn, align 8, !tbaa !105
  %i.fk = tail call i32 @memcmp(ptr noundef %i.fj, ptr noundef %i.fi, i64 noundef %.sroa.speculated.i.i.i.i9.i.i) #28 ; 2 uses
  %.not.i.i.i.i11.i.i = icmp eq i32 %i.fk, 0
  br i1 %.not.i.i.i.i11.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i13.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit17.i.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i13.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i10.i.i, %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit33.i.i
  %i.fl = sub i64 %.pre.i.i, %i.fg
  %spec.select7.i.i.i.i.i14.i.i = tail call i64 @llvm.smax.i64(i64 %i.fl, i64 -2147483648)
  %.08.i.i.i.i.i15.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i14.i.i, i64 2147483647)
  %.0.i6.i.i.i.i16.i.i = trunc nsw i64 %.08.i.i.i.i.i15.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit17.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit17.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i13.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i10.i.i
  %.0.i.i.i.i12.i.i = phi i32 [ %i.fk, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i10.i.i ], [ %.0.i6.i.i.i.i16.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i13.i.i ]
  %i.fm = icmp slt i32 %.0.i.i.i.i12.i.i, 0
  br i1 %i.fm, label %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit41.i.i, label %bb.x, !llvm.loop !1004

bb.x:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit17.i.i"
  %i.fn = icmp ult ptr %.sroa.060.180.us.i.i, %.sroa.057.1.i.i
  br i1 %i.fn, label %bb.y, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS9_11LogicalTypeEE3$_0EEET_SF_SF_T0_.exit"

bb.y:                                             ; preds = %bb.x
  store i64 %i.et, ptr %.sroa.060.180.us.i.i, align 8, !tbaa !123
  store i64 %.val.i81.us.i.i, ptr %.sroa.057.1.i.i, align 8, !tbaa !123
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.060.180.us.i.i, i64 8 ; 2 uses
  %.val.i78.i.i = load i64, ptr %i.fo, align 8, !tbaa !123 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.val.i78.i.i, ptr %i.f, align 8, !tbaa !123
  store i64 %i.dl, ptr %i.g, align 8, !tbaa !123
  %.not.i.i.i1879.i.i = icmp ult i64 %.val.i78.i.i, %i.dl
  br i1 %.not.i.i.i1879.i.i, label %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm.exit25.lr.ph.i.i, label %.noexc.i43.i.i, !prof !894, !llvm.loop !1005

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS9_11LogicalTypeEE3$_0EEET_SF_SF_T0_.exit": ; preds = %bb.x
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS9_11LogicalTypeEE3$_0EEEvT_SF_T0_T1_"(ptr %.sroa.060.180.us.i.i, ptr %storemerge51158, i64 noundef %i.af, ptr nonnull %3)
  %i.fp = ptrtoint ptr %.sroa.060.180.us.i.i to i64
  %i.fq = sub i64 %i.fp, %i.j
  %i.fr = ashr exact i64 %i.fq, 3                 ; 3 uses
  %i.fs = icmp sgt i64 %i.fr, 16
  br i1 %i.fs, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS9_11LogicalTypeEE3$_0EEEvT_SF_SF_T0_.exit", !llvm.loop !1000

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS9_11LogicalTypeEE3$_0EEEvT_SF_SF_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS9_11LogicalTypeEE3$_0EEET_SF_SF_T0_.exit", %.lr.ph.i9.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS9_11LogicalTypeEE3$_0EEEvT_T0_SG_T1_T2_"(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit"
  %.038 = phi i64 [ %spec.select, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit" ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.038, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %.val.i = load i64, ptr %i.f, align 8, !tbaa !123
  %i.i = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %.val.i) ; 2 uses
  %i.j = load i64, ptr %i.h, align 8, !tbaa !123
  %i.k = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.j) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !122  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !122  ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.m) ; 2 uses
  %i.p = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.p, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %.lr.ph
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !105
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !105
  %i.s = tail call i32 @memcmp(ptr noundef %i.r, ptr noundef %i.q, i64 noundef %.sroa.speculated.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %.lr.ph
  %i.t = sub i64 %i.m, %i.o
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.t, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.s, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.u = icmp slt i32 %.0.i.i.i.i, 0
  %spec.select = select i1 %i.u, i64 %i.g, i64 %i.e ; 4 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select
  %i.w = load i64, ptr %i.v, align 8, !tbaa !123
  %i.x = getelementptr inbounds [8 x i8], ptr %0, i64 %.038
  store i64 %i.w, ptr %i.x, align 8, !tbaa !123
  %i.y = icmp slt i64 %spec.select, %i.b
  br i1 %i.y, label %.lr.ph, label %._crit_edge, !llvm.loop !1006

._crit_edge:                                      ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit", %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit" ] ; 5 uses
  %i.z = and i64 %2, 1
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.ab = add nsw i64 %2, -2
  %i.ac = ashr exact i64 %i.ab, 1
  %i.ad = icmp eq i64 %.0.lcssa, %i.ac
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ae = shl nsw i64 %.0.lcssa, 1
  %i.af = or disjoint i64 %i.ae, 1                ; 2 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !123
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !123
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.1 = phi i64 [ %i.af, %bb.c ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.aj = icmp sgt i64 %.1, %1
  br i1 %i.aj, label %.lr.ph.i, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops14_Iter_comp_valIZN6duckdb16ToStructuredTypeERKNS9_11LogicalTypeEE3$_0EEEvT_T0_SG_T1_RT2_.exit"

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.010.i = phi i64 [ %.0911.i, %bb.e ], [ %.1, %bb.d ] ; 3 uses
  %.0911.in.i = add nsw i64 %.010.i, -1
  %.0911.i = sdiv i64 %.0911.in.i, 2              ; 4 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %0, i64 %.0911.i ; 2 uses
  %.val.i.i = load i64, ptr %i.ak, align 8, !tbaa !123
  %i.al = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %.val.i.i) ; 2 uses
  %i.am = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %3) ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !122 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !122 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 %i.ao) ; 2 uses
  %i.ar = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ar, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !105
  %i.at = load ptr, ptr %i.al, align 8, !tbaa !105
  %i.au = tail call i32 @memcmp(ptr noundef %i.at, ptr noundef %i.as, i64 noundef %.sroa.speculated.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEEmEEbT_RT0_.exit.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %.lr.ph.i
  %i.av = sub i64 %i.ao, %i.aq
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.av, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEEmEEbT_RT0_.exit.i"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEEmEEbT_RT0_.exit.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.au, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.aw = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.aw, label %bb.e, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops14_Iter_comp_valIZN6duckdb16ToStructuredTypeERKNS9_11LogicalTypeEE3$_0EEEvT_T0_SG_T1_RT2_.exit"

bb.e:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEEmEEbT_RT0_.exit.i"
  %i.ax = load i64, ptr %i.ak, align 8, !tbaa !123
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %.010.i
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !123
  %i.az = icmp sgt i64 %.0911.i, %1
  br i1 %i.az, label %.lr.ph.i, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops14_Iter_comp_valIZN6duckdb16ToStructuredTypeERKNS9_11LogicalTypeEE3$_0EEEvT_T0_SG_T1_RT2_.exit", !llvm.loop !1007

"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops14_Iter_comp_valIZN6duckdb16ToStructuredTypeERKNS9_11LogicalTypeEE3$_0EEEvT_T0_SG_T1_RT2_.exit": ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEEmEEbT_RT0_.exit.i", %bb.e, %bb.d
  %.0.lcssa.i = phi i64 [ %.1, %bb.d ], [ %.010.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEEmEEbT_RT0_.exit.i" ], [ %.0911.i, %bb.e ]
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i
  store i64 %3, ptr %i.ba, align 8, !tbaa !123
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS9_11LogicalTypeEE3$_0EEEvT_SF_T0_"(ptr %0, ptr nofree readnone captures(address) %1, ptr %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.g = icmp eq ptr %0, %1
  br i1 %i.g, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.053 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not54 = icmp eq ptr %.sroa.0.053, %1
  br i1 %.not54, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit
  %.sroa.0.056 = phi ptr [ %.sroa.0.053, %.lr.ph ], [ %.sroa.0.0, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit ] ; 7 uses
  %.pn55 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.056, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit ] ; 2 uses
  %.val.i = load i64, ptr %.sroa.0.056, align 8, !tbaa !123
  %i.j = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.val.i) ; 2 uses
  %i.k = load i64, ptr %0, align 8, !tbaa !123
  %i.l = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.k) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !122  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !122  ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.n) ; 2 uses
  %i.q = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.q, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.b
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !105
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !105
  %i.t = tail call i32 @memcmp(ptr noundef %i.s, ptr noundef %i.r, i64 noundef %.sroa.speculated.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.b
  %i.u = sub i64 %i.n, %i.p
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.u, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb16ToStructuredTypeERKNS2_11LogicalTypeEE3$_0EclINS_17__normal_iteratorIPmSt6vectorImSaImEEEESE_EEbT_T0_.exit"
end_hunk_1

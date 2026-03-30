begin_hunk_0
; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::MetadataBlockInfo", align 16 ; 6 uses
  %4 = alloca %"struct.duckdb::MetadataBlockInfo", align 16 ; 6 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
end_hunk_0
begin_hunk_1

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 15 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.j = icmp eq i64 %2, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph43
end_hunk_1
begin_hunk_2
bb.c:                                             ; preds = %_ZN6duckdb17MetadataBlockInfoD2Ev.exit12.i.i.i, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.n, %._crit_edge ], [ %i.w, %_ZN6duckdb17MetadataBlockInfoD2Ev.exit12.i.i.i ] ; 4 uses
  %i.q = getelementptr inbounds [40 x i8], ptr %0, i64 %.010.i.i.i ; 3 uses
  %.sroa.01.0.copyload.i.i.i = load <2 x i64>, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !164
  %i.u = load <2 x ptr>, ptr %i.r, align 8, !tbaa !171
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  store <2 x i64> %.sroa.01.0.copyload.i.i.i, ptr %4, align 16
  store <2 x ptr> %i.u, ptr %i.o, align 16, !tbaa !171
  store ptr %i.t, ptr %i.p, align 16, !tbaa !164
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_SF_T1_T2_"(ptr nonnull %0, i64 noundef %.010.i.i.i, i64 noundef %i.l, ptr noundef %4)
  %i.v = load ptr, ptr %i.o, align 16, !tbaa !160 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6duckdb17MetadataBlockInfoD2Ev.exit12.i.i.i, label %bb.d

end_hunk_2
begin_hunk_3
  %.sroa.0.03.i.i = phi ptr [ %storemerge24.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_RT0_.exit.i.i" ], [ %i.z, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_RT0_.exit.i11.i" ] ; 3 uses
  %i.z = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %.sroa.0.0.copyload.i.i10.i = load <2 x i64>, ptr %i.z, align 8
  %i.aa = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24 ; 3 uses
  %i.ab = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !164
end_hunk_3
begin_hunk_4
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !164
  store ptr %i.ai, ptr %i.ab, align 8, !tbaa !164
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store <2 x i64> %.sroa.0.0.copyload.i.i10.i, ptr %3, align 16
  store <2 x ptr> %i.ag, ptr %i.x, align 16, !tbaa !171
  store ptr %i.ac, ptr %i.y, align 16, !tbaa !164
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_SF_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.af, ptr noundef %3)
  %i.aj = load ptr, ptr %i.x, align 16, !tbaa !160 ; 2 uses
  %.not.i.i.i.i.i.i10.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i10.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_RT0_.exit.i11.i", label %bb.f

end_hunk_4
begin_hunk_5
  br i1 %i.ak, label %bb.e, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_T0_.exit", !llvm.loop !319

.lr.ph43:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2442 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 9 uses
  %.02541 = phi i64 [ %i.am, %bb.b ], [ %2, %.lr.ph ]
  %i.al = phi i64 [ %i.cf, %bb.b ], [ %i.c, %.lr.ph ]
  %i.am = add nsw i64 %.02541, -1                 ; 3 uses
  %i.an = udiv i64 %i.al, 80
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.an ; 10 uses
  %i.ap = getelementptr inbounds i8, ptr %storemerge2442, i64 -40 ; 5 uses
  %.val.i.i.i = load i64, ptr %i.e, align 8, !tbaa !165 ; 3 uses
  %.val1.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !165 ; 3 uses
end_hunk_5
begin_hunk_6
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i.i.i = load <2 x i64>, ptr %0, align 8
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !164
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
end_hunk_6
begin_hunk_7
  store <2 x ptr> %i.aw, ptr %i.f, align 8, !tbaa !171
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !164
  store ptr %i.ax, ptr %i.g, align 8, !tbaa !164
  store <2 x i64> %.sroa.0.0.copyload.i.i.i.i, ptr %i.ao, align 8
  store <2 x ptr> %i.av, ptr %i.at, align 8, !tbaa !171
  store ptr %i.as, ptr %i.au, align 8, !tbaa !164
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.i:                                             ; preds = %bb.g
  %i.ay = icmp slt i64 %.val.i.i.i, %.val1.i27.i.i
  %.sroa.0.0.copyload.i.i30.i.i = load <2 x i64>, ptr %0, align 8 ; 2 uses
  %7 = load ptr, ptr %i.f, align 8, !tbaa !160    ; 2 uses
  %8 = load ptr, ptr %5, align 8, !tbaa !163      ; 2 uses
  %9 = load ptr, ptr %i.g, align 8, !tbaa !164    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i64 16, i1 false)
  %i.az = getelementptr inbounds i8, ptr %storemerge2442, i64 -24 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %storemerge2442, i64 -16
  %i.bb = load <2 x ptr>, ptr %i.az, align 8, !tbaa !171
  store <2 x ptr> %i.bb, ptr %i.f, align 8, !tbaa !171
  %10 = getelementptr inbounds i8, ptr %storemerge2442, i64 -8 ; 2 uses
  %i.bc = load ptr, ptr %10, align 8, !tbaa !164
  store ptr %i.bc, ptr %i.g, align 8, !tbaa !164
  store <2 x i64> %.sroa.0.0.copyload.i.i30.i.i, ptr %i.ap, align 8
  store ptr %7, ptr %i.az, align 8, !tbaa !160
  store ptr %8, ptr %i.ba, align 8, !tbaa !163
  store ptr %9, ptr %10, align 8, !tbaa !164
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 16, i1 false)
  %i.bd = load <2 x ptr>, ptr %i.h, align 8, !tbaa !171
  store <2 x ptr> %i.bd, ptr %i.f, align 8, !tbaa !171
  %11 = load ptr, ptr %i.i, align 8, !tbaa !164
  store ptr %11, ptr %i.g, align 8, !tbaa !164
  store <2 x i64> %.sroa.0.0.copyload.i.i30.i.i, ptr %i.e, align 8
  store ptr %7, ptr %i.h, align 8, !tbaa !160
  store ptr %8, ptr %6, align 8, !tbaa !163
  store ptr %9, ptr %i.i, align 8, !tbaa !164
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.l:                                             ; preds = %.lr.ph43
end_hunk_7
begin_hunk_8
  br i1 %i.be, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.copyload.i.i34.i.i = load <2 x i64>, ptr %0, align 8
  %i.bf = load ptr, ptr %i.g, align 8, !tbaa !164
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 16, i1 false)
  %i.bg = load <2 x ptr>, ptr %i.h, align 8, !tbaa !171
  %i.bh = load ptr, ptr %i.i, align 8, !tbaa !164
  store ptr %i.bh, ptr %i.g, align 8, !tbaa !164
  store <2 x i64> %.sroa.0.0.copyload.i.i34.i.i, ptr %i.e, align 8
  %i.bi = load <2 x ptr>, ptr %i.f, align 8, !tbaa !171
  store <2 x ptr> %i.bg, ptr %i.f, align 8, !tbaa !171
  store <2 x ptr> %i.bi, ptr %i.h, align 8, !tbaa !171
  store ptr %i.bf, ptr %i.i, align 8, !tbaa !164
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %i.bj = icmp slt i64 %.val1.i.i.i, %.val1.i27.i.i
  %.sroa.0.0.copyload.i.i37.i.i = load <2 x i64>, ptr %0, align 8 ; 2 uses
  %12 = load ptr, ptr %i.f, align 8, !tbaa !160   ; 2 uses
  %13 = load ptr, ptr %5, align 8, !tbaa !163     ; 2 uses
  %14 = load ptr, ptr %i.g, align 8, !tbaa !164   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  br i1 %i.bj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i64 16, i1 false)
  %i.bk = getelementptr inbounds i8, ptr %storemerge2442, i64 -24 ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %storemerge2442, i64 -16
  %i.bm = load <2 x ptr>, ptr %i.bk, align 8, !tbaa !171
  store <2 x ptr> %i.bm, ptr %i.f, align 8, !tbaa !171
  %15 = getelementptr inbounds i8, ptr %storemerge2442, i64 -8 ; 2 uses
  %i.bn = load ptr, ptr %15, align 8, !tbaa !164
  store ptr %i.bn, ptr %i.g, align 8, !tbaa !164
  store <2 x i64> %.sroa.0.0.copyload.i.i37.i.i, ptr %i.ap, align 8
  store ptr %12, ptr %i.bk, align 8, !tbaa !160
  store ptr %13, ptr %i.bl, align 8, !tbaa !163
  store ptr %14, ptr %15, align 8, !tbaa !164
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i64 16, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.bq = load <2 x ptr>, ptr %i.bo, align 8, !tbaa !171
  store <2 x ptr> %i.bq, ptr %i.f, align 8, !tbaa !171
  %16 = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.br = load ptr, ptr %16, align 8, !tbaa !164
  store ptr %i.br, ptr %i.g, align 8, !tbaa !164
  store <2 x i64> %.sroa.0.0.copyload.i.i37.i.i, ptr %i.ao, align 8
  store ptr %12, ptr %i.bo, align 8, !tbaa !160
  store ptr %13, ptr %i.bp, align 8, !tbaa !163
  store ptr %14, ptr %16, align 8, !tbaa !164
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader": ; preds = %bb.p, %bb.o, %bb.m, %bb.k, %bb.j, %bb.h
end_hunk_8
begin_hunk_9
  br i1 %i.bv, label %bb.s, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEET_SE_SE_T0_.exit"

bb.s:                                             ; preds = %bb.r
  %.sroa.0.0.copyload.i.i.i15.i = load <2 x i64>, ptr %.sroa.012.1.i.i, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 16 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 32 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !164
end_hunk_9
begin_hunk_10
  store <2 x ptr> %i.cc, ptr %i.bw, align 8, !tbaa !171
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !164
  store ptr %i.cd, ptr %i.bx, align 8, !tbaa !164
  store <2 x i64> %.sroa.0.0.copyload.i.i.i15.i, ptr %.sroa.0.1.i.i, align 8
  store <2 x ptr> %i.cb, ptr %i.bz, align 8, !tbaa !171
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !164
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i", !llvm.loop !322

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEET_SE_SE_T0_.exit": ; preds = %bb.r
end_hunk_10
begin_hunk_11
; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_T0_"(ptr %0, ptr readnone captures(address) %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit21, label %.preheader

end_hunk_11
begin_hunk_12

bb.b:                                             ; preds = %.lr.ph, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit"
  %.sroa.012.025 = phi ptr [ %.sroa.012.022, %.lr.ph ], [ %.sroa.012.0, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit" ] ; 7 uses
  %.pn24 = phi ptr [ %0, %.lr.ph ], [ %.sroa.012.025, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit" ] ; 9 uses
  %.val.i = load i64, ptr %.sroa.012.025, align 8, !tbaa !165 ; 4 uses
  %.val1.i = load i64, ptr %0, align 8, !tbaa !165
  %i.e = icmp slt i64 %.val.i, %.val1.i
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload = load <2 x i64>, ptr %.sroa.012.025, align 8
  %2 = getelementptr inbounds nuw i8, ptr %.pn24, i64 56 ; 2 uses
  %i.f = load <2 x ptr>, ptr %2, align 8, !tbaa !171
  %3 = getelementptr inbounds nuw i8, ptr %.pn24, i64 72
  %i.g = load ptr, ptr %3, align 8, !tbaa !164
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.h = ptrtoint ptr %.sroa.012.025 to i64
  %i.i = sub i64 %i.h, %i.b                       ; 2 uses
end_hunk_12
begin_hunk_13
  br i1 %i.w, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !325

.loopexit:                                        ; preds = %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i.i.i.i.i, %bb.c
  store <2 x i64> %.sroa.0.0.copyload, ptr %0, align 8
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
end_hunk_13
begin_hunk_14
  tail call void @_ZdlPv(ptr noundef nonnull %.pre.i) #25
  br label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit"

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit": ; preds = %bb.h, %._crit_edge.i, %._crit_edge.thread.i, %.loopexit, %bb.e
  %.sroa.012.0 = getelementptr inbounds nuw i8, ptr %.sroa.012.025, i64 40 ; 2 uses
  %.not = icmp eq ptr %.sroa.012.0, %1
  br i1 %.not, label %.loopexit21, label %bb.b, !llvm.loop !326
end_hunk_14

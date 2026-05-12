inline.NumInlined: 1642
inline.NumDeleted: 696
begin_hunk_0_@_ZNSt6vectorIN6duckdb17MetadataBlockInfoESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i13.i = alloca { i64, i64 }, align 8 ; 4 uses
  %.sroa.0.i.i38.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %.sroa.0.i.i37.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %.sroa.0.i.i34.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %.sroa.0.i.i31.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %.sroa.0.i.i30.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %.sroa.0.i.i.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %3 = alloca %"struct.duckdb::MetadataBlockInfo", align 8 ; 6 uses
  %4 = alloca %"struct.duckdb::MetadataBlockInfo", align 8 ; 6 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
end_hunk_0
begin_hunk_1_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_T0_T1_":bb.a
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 16, i1 false)
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !179
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
end_hunk_1
begin_hunk_2_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_T0_T1_":bb.a
  store <2 x ptr> %i.aw, ptr %i.f, align 8, !tbaa !186
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !179
  store ptr %i.ax, ptr %i.g, align 8, !tbaa !179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, i64 16, i1 false)
  store <2 x ptr> %i.av, ptr %i.at, align 8, !tbaa !186
  store ptr %i.as, ptr %i.au, align 8, !tbaa !179
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.i:                                             ; preds = %bb.g
end_hunk_2
begin_hunk_3_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_T0_T1_":bb.a
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i30.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i30.i.i, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 16, i1 false)
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !179
  %i.ba = getelementptr inbounds i8, ptr %storemerge2442, i64 -24 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %storemerge2442, i64 -8 ; 2 uses
end_hunk_3
begin_hunk_4_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_T0_T1_":bb.a
  store <2 x ptr> %i.bd, ptr %i.f, align 8, !tbaa !186
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !179
  store ptr %i.be, ptr %i.g, align 8, !tbaa !179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i30.i.i, i64 16, i1 false)
  store <2 x ptr> %i.bc, ptr %i.ba, align 8, !tbaa !186
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !179
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i30.i.i)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i31.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i31.i.i, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 16, i1 false)
  %i.bf = load ptr, ptr %i.g, align 8, !tbaa !179
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 16, i1 false)
  %i.bg = load <2 x ptr>, ptr %i.h, align 8, !tbaa !186
  %i.bh = load ptr, ptr %i.i, align 8, !tbaa !179
  store ptr %i.bh, ptr %i.g, align 8, !tbaa !179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i31.i.i, i64 16, i1 false)
  %i.bi = load <2 x ptr>, ptr %i.f, align 8, !tbaa !186
  store <2 x ptr> %i.bg, ptr %i.f, align 8, !tbaa !186
  store <2 x ptr> %i.bi, ptr %i.h, align 8, !tbaa !186
  store ptr %i.bf, ptr %i.i, align 8, !tbaa !179
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i31.i.i)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.l:                                             ; preds = %.lr.ph43
end_hunk_4
begin_hunk_5_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_T0_T1_":bb.a
  br i1 %i.bj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i34.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i34.i.i, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 16, i1 false)
  %i.bk = load ptr, ptr %i.g, align 8, !tbaa !179
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 16, i1 false)
  %i.bl = load <2 x ptr>, ptr %i.h, align 8, !tbaa !186
  %i.bm = load ptr, ptr %i.i, align 8, !tbaa !179
  store ptr %i.bm, ptr %i.g, align 8, !tbaa !179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i34.i.i, i64 16, i1 false)
  %i.bn = load <2 x ptr>, ptr %i.f, align 8, !tbaa !186
  store <2 x ptr> %i.bl, ptr %i.f, align 8, !tbaa !186
  store <2 x ptr> %i.bn, ptr %i.h, align 8, !tbaa !186
  store ptr %i.bk, ptr %i.i, align 8, !tbaa !179
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i34.i.i)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
end_hunk_5
begin_hunk_6_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_T0_T1_":bb.a
  br i1 %i.bo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i37.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i37.i.i, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 16, i1 false)
  %i.bp = load ptr, ptr %i.g, align 8, !tbaa !179
  %i.bq = getelementptr inbounds i8, ptr %storemerge2442, i64 -24 ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %storemerge2442, i64 -8 ; 2 uses
end_hunk_6
begin_hunk_7_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_T0_T1_":bb.a
  store <2 x ptr> %i.bt, ptr %i.f, align 8, !tbaa !186
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !179
  store ptr %i.bu, ptr %i.g, align 8, !tbaa !179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i37.i.i, i64 16, i1 false)
  store <2 x ptr> %i.bs, ptr %i.bq, align 8, !tbaa !186
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !179
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i37.i.i)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i38.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i38.i.i, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 16, i1 false)
  %i.bv = load ptr, ptr %i.g, align 8, !tbaa !179
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
end_hunk_7
begin_hunk_8_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_T0_T1_":bb.a
  store <2 x ptr> %i.bz, ptr %i.f, align 8, !tbaa !186
  %i.ca = load ptr, ptr %i.bx, align 8, !tbaa !179
  store ptr %i.ca, ptr %i.g, align 8, !tbaa !179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i38.i.i, i64 16, i1 false)
  store <2 x ptr> %i.by, ptr %i.bw, align 8, !tbaa !186
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !179
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i38.i.i)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader": ; preds = %bb.p, %bb.o, %bb.m, %bb.k, %bb.j, %bb.h
end_hunk_8
begin_hunk_9_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_T0_T1_":bb.a
  br i1 %i.ce, label %bb.s, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEET_SE_SE_T0_.exit"

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i13.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i13.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.012.1.i.i, i64 16, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 16 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 32 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !179
end_hunk_9
begin_hunk_10_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_T0_T1_":bb.a
  store <2 x ptr> %i.cl, ptr %i.cf, align 8, !tbaa !186
  %i.cm = load ptr, ptr %i.cj, align 8, !tbaa !179
  store ptr %i.cm, ptr %i.cg, align 8, !tbaa !179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i13.i, i64 16, i1 false)
  store <2 x ptr> %i.ck, ptr %i.ci, align 8, !tbaa !186
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !179
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i13.i)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i", !llvm.loop !341

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEET_SE_SE_T0_.exit": ; preds = %bb.r
end_hunk_10
begin_hunk_11_@"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_SF_T1_T2_":bb.a
; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_T0_"(ptr %0, ptr readnone captures(address) %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0 = alloca { i64, i64 }, align 8         ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit21, label %.preheader

end_hunk_11
begin_hunk_12_@"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_T0_":bb.a
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.012.025, i64 16, i1 false)
  %i.i = load <2 x ptr>, ptr %i.f, align 8, !tbaa !186
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !179
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
end_hunk_12
begin_hunk_13_@"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_T0_":bb.a
  br i1 %i.z, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !344

.loopexit:                                        ; preds = %_ZN6duckdb17MetadataBlockInfoaSEOS0_.exit.i.i.i.i.i, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !175 ; 2 uses
  store <2 x ptr> %i.i, ptr %i.c, align 8, !tbaa !186
  store ptr %i.j, ptr %i.d, align 8, !tbaa !179
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6duckdb17MetadataBlockInfoD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.loopexit
  tail call void @_ZdlPv(ptr noundef nonnull %i.aa) #24
  br label %_ZN6duckdb17MetadataBlockInfoD2Ev.exit

_ZN6duckdb17MetadataBlockInfoD2Ev.exit:           ; preds = %bb.e, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit"

bb.f:                                             ; preds = %bb.b
end_hunk_13
begin_hunk_14_@"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_SE_T0_":bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %.pre.i) #24
  br label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit"

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb17MetadataBlockInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNKS2_15MetadataManager15GetMetadataInfoEvE3$_0EEEvT_T0_.exit": ; preds = %bb.h, %._crit_edge.i, %._crit_edge.thread.i, %_ZN6duckdb17MetadataBlockInfoD2Ev.exit
  %.sroa.012.0 = getelementptr inbounds nuw i8, ptr %.sroa.012.025, i64 40 ; 2 uses
  %.not = icmp eq ptr %.sroa.012.0, %1
  br i1 %.not, label %.loopexit21, label %bb.b, !llvm.loop !345
end_hunk_14

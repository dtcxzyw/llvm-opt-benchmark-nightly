inline.NumInlined: 5869
inline.NumDeleted: 2271
begin_hunk_0_@_ZN5arrow24RunEndEncodeTableColumnsERKNS_5TableERKSt6vectorIiSaIiEE:bb.a
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.z, %bb.e ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.v, %bb.e ] ; 5 uses
  %i.ar = ashr exact i64 %.pre-phi61.i.i.i, 2
  switch i64 %i.ar, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.thread [
    i64 3, label %bb.k
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.as = load i32, ptr %.sroa.032.0.lcssa.i.i.i, align 4, !tbaa !3
  %i.at = icmp eq i32 %i.as, %storemerge105
end_hunk_0
begin_hunk_1_@_ZN5arrow24RunEndEncodeTableColumnsERKNS_5TableERKSt6vectorIiSaIiEE:bb.a
_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit: ; preds = %bb.f, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.loopexit.split.loop.exit143, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.loopexit.split.loop.exit145, %._crit_edge._crit_edge57.i.i.i, %._crit_edge._crit_edge.i.i.i, %bb.k
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.k ], [ %i.bc, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.loopexit.split.loop.exit145 ], [ %i.bb, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.loopexit.split.loop.exit143 ], [ %i.ba, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.f ]
  %.not90 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.w
  br i1 %.not90, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %16 = load ptr, ptr %1, align 8, !tbaa !63
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  invoke void %i.be(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.93") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %storemerge105)
          to label %bb.o unwind label %bb.ag
end_hunk_1
begin_hunk_2_@_ZN5arrow24RunEndEncodeTableColumnsERKNS_5TableERKSt6vectorIiSaIiEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br i1 %i.co, label %bb.bl, label %.loopexit92

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEiET_S8_S8_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  %17 = load ptr, ptr %1, align 8, !tbaa !63
  %i.dp = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8
  invoke void %i.dq(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.93") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %storemerge105)
          to label %bb.az unwind label %bb.bi
end_hunk_2

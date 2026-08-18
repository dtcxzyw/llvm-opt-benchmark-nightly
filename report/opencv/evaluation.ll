inline.NumInlined: 1086
inline.NumDeleted: 425
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) %.fr22, i64 12, i1 false), !tbaa.struct !99
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr22, ptr noundef nonnull align 4 dereferenceable(12) %i.bz, i64 12, i1 false), !tbaa.struct !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bz, ptr noundef nonnull align 4 dereferenceable(12) %8, i64 12, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %.fr22, i64 12, i1 false), !tbaa.struct !99
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr22, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.q:                                             ; preds = %.lr.ph44
  %i.cg = fcmp ogt float %i.ca, %i.cd
  br i1 %i.cg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %.fr22, i64 12, i1 false), !tbaa.struct !99
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr22, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  %i.ch = fcmp ogt float %i.cb, %i.cd
  br i1 %i.ch, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %.fr22, i64 12, i1 false), !tbaa.struct !99
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr22, ptr noundef nonnull align 4 dereferenceable(12) %i.bz, i64 12, i1 false), !tbaa.struct !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bz, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %.fr22, i64 12, i1 false), !tbaa.struct !99
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.fr22, ptr noundef nonnull align 4 dereferenceable(12) %i.by, i64 12, i1 false), !tbaa.struct !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.by, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i.preheader: ; preds = %bb.u, %bb.t, %bb.r, %bb.p, %bb.o, %bb.m
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i.preheader, %bb.x
  %.sroa.010.0.i.i = phi ptr [ %i.cl, %bb.x ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.x ], [ %storemerge1943, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i.preheader ]
  %i.ci = load float, ptr %.fr22, align 4, !tbaa !188 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i ], [ %i.cl, %bb.v ] ; 9 uses
  %i.cj = load float, ptr %.sroa.010.1.i.i, align 4, !tbaa !188
  %i.ck = fcmp ogt float %i.cj, %i.ci
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 12 ; 2 uses
  br i1 %i.ck, label %bb.v, label %.preheader.i.i, !llvm.loop !193

.preheader.i.i:                                   ; preds = %bb.v, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.v ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -12 ; 6 uses
  %i.cm = load float, ptr %.sroa.0.1.i.i, align 4, !tbaa !188
  %i.cn = fcmp ogt float %i.ci, %i.cm
  br i1 %i.cn, label %.preheader.i.i, label %bb.w, !llvm.loop !194

bb.w:                                             ; preds = %.preheader.i.i
  %i.co = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.co, label %bb.x, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEET_SA_SA_T0_.exit

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.010.1.i.i, i64 12, i1 false), !tbaa.struct !99
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.010.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.1.i.i, i64 12, i1 false), !tbaa.struct !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.1.i.i, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i, !llvm.loop !195

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEET_SA_SA_T0_.exit: ; preds = %bb.w
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge1943, i64 noundef %i.bw)
  %i.cp = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.cq = sub i64 %i.cp, %i.a                     ; 3 uses
  %i.cr = icmp sgt i64 %i.cq, 192
  br i1 %i.cr, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_.exit, !llvm.loop !187

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEET_SA_SA_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_(ptr %0, ptr %1) local_unnamed_addr #5 comdat {
bb.a:
  %2 = alloca %struct.SIdx, align 4               ; 4 uses
  %3 = alloca %struct.SIdx, align 4               ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 192
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 12
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.018.i.idx = phi i64 [ 12, %.lr.ph.i ], [ %.sroa.0.018.i.add, %bb.g ] ; 4 uses
  %.pn17.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.018.i.ptr, %bb.g ] ; 4 uses
  %.sroa.0.018.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.018.i.idx ; 5 uses
  %i.e = load float, ptr %.sroa.0.018.i.ptr, align 4, !tbaa !188 ; 4 uses
  %i.f = load float, ptr %0, align 4, !tbaa !188
  %i.g = fcmp ogt float %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.018.i.ptr, i64 12, i1 false), !tbaa.struct !99
  %i.h = icmp samesign ugt i64 %.sroa.0.018.i.idx, 12
  br i1 %i.h, label %bb.d, label %bb.e, !prof !196

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.018.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !99
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 16
  %i.j = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  %i.k = load float, ptr %.pn17.i, align 4, !tbaa !188
  %i.l = fcmp ogt float %i.e, %i.k
  br i1 %i.l, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn17.i, %bb.f ] ; 4 uses
  %.sroa.06.010.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.0.018.i.ptr, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.06.010.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.011.i.i, i64 12, i1 false), !tbaa.struct !99
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -12 ; 2 uses
  %i.m = load float, ptr %.sroa.0.0.i.i, align 4, !tbaa !188
  %i.n = fcmp ogt float %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !197

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.06.0.lcssa.i.i = phi ptr [ %.sroa.0.018.i.ptr, %bb.f ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ] ; 2 uses
  store float %i.e, ptr %.sroa.06.0.lcssa.i.i, align 4, !tbaa !10
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 4
  store i64 %i.j, ptr %.sroa.5.0..sroa_idx5.i.i, align 4
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i
  %.sroa.0.018.i.add = add nuw nsw i64 %.sroa.0.018.i.idx, 12 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.018.i.add, 192
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, label %bb.b, !llvm.loop !198

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit: ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %.not4.i = icmp eq ptr %i.o, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8
  %.sroa.0.05.i = phi ptr [ %i.u, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8 ], [ %i.o, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit ] ; 6 uses
  %.sroa.03.0.copyload.i.i = load float, ptr %.sroa.0.05.i, align 4, !tbaa !10 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i7 = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 4
  %i.p = load i64, ptr %.sroa.5.0..sroa_idx.i.i7, align 4
  %.sroa.0.09.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i, i64 -12 ; 2 uses
  %i.q = load float, ptr %.sroa.0.09.i.i, align 4, !tbaa !188
  %i.r = fcmp ogt float %.sroa.03.0.copyload.i.i, %i.q
  br i1 %i.r, label %.lr.ph.i.i12, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8

.lr.ph.i.i12:                                     ; preds = %.lr.ph.i6, %.lr.ph.i.i12
  %.sroa.0.011.i.i13 = phi ptr [ %.sroa.0.0.i.i15, %.lr.ph.i.i12 ], [ %.sroa.0.09.i.i, %.lr.ph.i6 ] ; 4 uses
  %.sroa.06.010.i.i14 = phi ptr [ %.sroa.0.011.i.i13, %.lr.ph.i.i12 ], [ %.sroa.0.05.i, %.lr.ph.i6 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.06.010.i.i14, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.011.i.i13, i64 12, i1 false), !tbaa.struct !99
  %.sroa.0.0.i.i15 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i13, i64 -12 ; 2 uses
  %i.s = load float, ptr %.sroa.0.0.i.i15, align 4, !tbaa !188
  %i.t = fcmp ogt float %.sroa.03.0.copyload.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i12, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8, !llvm.loop !197

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8: ; preds = %.lr.ph.i.i12, %.lr.ph.i6
  %.sroa.06.0.lcssa.i.i9 = phi ptr [ %.sroa.0.05.i, %.lr.ph.i6 ], [ %.sroa.0.011.i.i13, %.lr.ph.i.i12 ] ; 2 uses
  store float %.sroa.03.0.copyload.i.i, ptr %.sroa.06.0.lcssa.i.i9, align 4, !tbaa !10
  %.sroa.5.0..sroa_idx5.i.i10 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i9, i64 4
  store i64 %i.p, ptr %.sroa.5.0..sroa_idx5.i.i10, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 12 ; 2 uses
  %.not.i11 = icmp eq ptr %i.u, %1
  br i1 %.not.i11, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, label %.lr.ph.i6, !llvm.loop !199

bb.h:                                             ; preds = %bb.a
  %i.v = icmp eq ptr %0, %1
  %.sroa.0.015.i17 = getelementptr i8, ptr %0, i64 12 ; 3 uses
  %.not16.i18 = icmp eq ptr %.sroa.0.015.i17, %1
  %or.cond = or i1 %i.v, %.not16.i18
  br i1 %or.cond, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %bb.h, %bb.n
  %.sroa.0.018.i20 = phi ptr [ %.sroa.0.0.i26, %bb.n ], [ %.sroa.0.015.i17, %bb.h ] ; 7 uses
  %.pn17.i21 = phi ptr [ %.sroa.0.018.i20, %bb.n ], [ %0, %bb.h ] ; 4 uses
  %i.w = load float, ptr %.sroa.0.018.i20, align 4, !tbaa !188 ; 4 uses
  %i.x = load float, ptr %0, align 4, !tbaa !188
  %i.y = fcmp ogt float %i.w, %i.x
  br i1 %i.y, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.lr.ph.i19
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.018.i20, i64 12, i1 false), !tbaa.struct !99
  %i.z = ptrtoint ptr %.sroa.0.018.i20 to i64
  %i.aa = sub i64 %i.z, %i.b                      ; 3 uses
  %i.ab = icmp sgt i64 %i.aa, 12
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !196

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0.015.i17, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.aa, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i32

bb.k:                                             ; preds = %bb.i
  %i.ac = icmp eq i64 %i.aa, 12
  br i1 %i.ac, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i32

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn17.i21, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ad, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !99
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i32

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i32: ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i19
  %.sroa.5.0..sroa_idx.i.i22 = getelementptr inbounds nuw i8, ptr %.pn17.i21, i64 16
  %i.ae = load i64, ptr %.sroa.5.0..sroa_idx.i.i22, align 4
  %i.af = load float, ptr %.pn17.i21, align 4, !tbaa !188
  %i.ag = fcmp ogt float %i.w, %i.af
  br i1 %i.ag, label %.lr.ph.i.i28, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i23

.lr.ph.i.i28:                                     ; preds = %bb.m, %.lr.ph.i.i28
  %.sroa.0.011.i.i29 = phi ptr [ %.sroa.0.0.i.i31, %.lr.ph.i.i28 ], [ %.pn17.i21, %bb.m ] ; 4 uses
  %.sroa.06.010.i.i30 = phi ptr [ %.sroa.0.011.i.i29, %.lr.ph.i.i28 ], [ %.sroa.0.018.i20, %bb.m ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.06.010.i.i30, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.011.i.i29, i64 12, i1 false), !tbaa.struct !99
  %.sroa.0.0.i.i31 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i29, i64 -12 ; 2 uses
  %i.ah = load float, ptr %.sroa.0.0.i.i31, align 4, !tbaa !188
  %i.ai = fcmp ogt float %i.w, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i28, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i23, !llvm.loop !197

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i23: ; preds = %.lr.ph.i.i28, %bb.m
  %.sroa.06.0.lcssa.i.i24 = phi ptr [ %.sroa.0.018.i20, %bb.m ], [ %.sroa.0.011.i.i29, %.lr.ph.i.i28 ] ; 2 uses
  store float %i.w, ptr %.sroa.06.0.lcssa.i.i24, align 4, !tbaa !10
  %.sroa.5.0..sroa_idx5.i.i25 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i24, i64 4
  store i64 %i.ae, ptr %.sroa.5.0..sroa_idx5.i.i25, align 4
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i23, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i32
  %.sroa.0.0.i26 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i20, i64 12 ; 2 uses
  %.not.i27 = icmp eq ptr %.sroa.0.0.i26, %1
  br i1 %.not.i27, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, label %.lr.ph.i19, !llvm.loop !198

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i8, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIP4SIdxSt6vectorIS2_SaIS2_EEEENS0_5__ops10_Iter_predINS2_10UsedFinderEEEET_SC_SC_T0_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 12
  %i.e = ashr i64 %i.d, 2                         ; 3 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !106  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = mul nuw nsw i64 %i.e, 48
  %scevgep = getelementptr i8, ptr %0, i64 %i.j   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.062 = phi i64 [ %i.e, %.lr.ph ], [ %i.ak, %bb.f ] ; 2 uses
  %.sroa.031.061 = phi ptr [ %0, %.lr.ph ], [ %i.aj, %bb.f ] ; 17 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.031.061, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !106
  %i.m = icmp eq i32 %i.l, %i.h
  br i1 %i.m, label %_ZN9__gnu_cxx5__ops10_Iter_predIN4SIdx10UsedFinderEEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops10_Iter_predIN4SIdx10UsedFinderEEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit

_ZN9__gnu_cxx5__ops10_Iter_predIN4SIdx10UsedFinderEEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.031.061, i64 8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !108
  %i.p = load i32, ptr %i.i, align 4, !tbaa !108  ; 4 uses
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops10_Iter_predIN4SIdx10UsedFinderEEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN4SIdx10UsedFinderEEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.031.061, i64 16
  %i.s = load i32, ptr %i.r, align 4, !tbaa !106
  %i.t = icmp eq i32 %i.s, %i.h
  br i1 %i.t, label %_ZN9__gnu_cxx5__ops10_Iter_predIN4SIdx10UsedFinderEEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit.thread.loopexit.split.loop.exit49, label %_ZN9__gnu_cxx5__ops10_Iter_predIN4SIdx10UsedFinderEEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit16

_ZN9__gnu_cxx5__ops10_Iter_predIN4SIdx10UsedFinderEEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit16: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.031.061, i64 20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !108
  %i.w = icmp eq i32 %i.v, %i.p
  br i1 %i.w, label %_ZN9__gnu_cxx5__ops10_Iter_predIN4SIdx10UsedFinderEEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit.thread.loopexit.split.loop.exit41, label %bb.d

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN4SIdx10UsedFinderEEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit16
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.031.061, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !106
  %i.z = icmp eq i32 %i.y, %i.h
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops10_Iter_predIN4SIdx10UsedFinderEEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit.thread.loopexit.split.loop.exit51, label %_ZN9__gnu_cxx5__ops10_Iter_predIN4SIdx10UsedFinderEEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit17

_ZN9__gnu_cxx5__ops10_Iter_predIN4SIdx10UsedFinderEEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit17: ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.031.061, i64 32
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !108
  %i.ac = icmp eq i32 %i.ab, %i.p
  br i1 %i.ac, label %_ZN9__gnu_cxx5__ops10_Iter_predIN4SIdx10UsedFinderEEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit.thread.loopexit.split.loop.exit43, label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN4SIdx10UsedFinderEEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit17
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.031.061, i64 40
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !106
  %i.af = icmp eq i32 %i.ae, %i.h
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops10_Iter_predIN4SIdx10UsedFinderEEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit.thread.loopexit.split.loop.exit53, label %_ZN9__gnu_cxx5__ops10_Iter_predIN4SIdx10UsedFinderEEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit18

_ZN9__gnu_cxx5__ops10_Iter_predIN4SIdx10UsedFinderEEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit18: ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.031.061, i64 44
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !108
  %i.ai = icmp eq i32 %i.ah, %i.p
  br i1 %i.ai, label %_ZN9__gnu_cxx5__ops10_Iter_predIN4SIdx10UsedFinderEEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit.thread.loopexit.split.loop.exit45, label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN4SIdx10UsedFinderEEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit18
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.031.061, i64 48
  %i.ak = add nsw i64 %.062, -1
  %i.al = icmp sgt i64 %.062, 1
  br i1 %i.al, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !200

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre73 = ptrtoint ptr %scevgep to i64
  %.pre74 = sub i64 %i.a, %.pre73
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi75 = phi i64 [ %.pre74, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %.sroa.031.0.lcssa = phi ptr [ %scevgep, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 7 uses
  %i.am = sdiv exact i64 %.pre-phi75, 12
  switch i64 %i.am, label %_ZN9__gnu_cxx5__ops10_Iter_predIN4SIdx10UsedFinderEEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit.thread [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge
    i64 1, label %._crit_edge._crit_edge70
  ]

._crit_edge._crit_edge70:                         ; preds = %._crit_edge
  %.phi.trans.insert71 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre72 = load i32, ptr %.phi.trans.insert71, align 4, !tbaa !106
  br label %bb.k

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !106
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.031.0.lcssa, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !106
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !106 ; 2 uses
  %i.ar = icmp eq i32 %i.ao, %i.aq
  br i1 %i.ar, label %_ZN9__gnu_cxx5__ops10_Iter_predIN4SIdx10UsedFinderEEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops10_Iter_predIN4SIdx10UsedFinderEEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit19

_ZN9__gnu_cxx5__ops10_Iter_predIN4SIdx10UsedFinderEEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit19: ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.031.0.lcssa, i64 8
  %i.at = load i32, ptr %i.as, align 4, !tbaa !108
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !108
  %i.aw = icmp eq i32 %i.at, %i.av
  br i1 %i.aw, label %_ZN9__gnu_cxx5__ops10_Iter_predIN4SIdx10UsedFinderEEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN4SIdx10UsedFinderEEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit19
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.031.0.lcssa, i64 12
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge, %bb.h
  %i.ay = phi i32 [ %i.aq, %bb.h ], [ %.pre, %._crit_edge._crit_edge ] ; 2 uses
  %.sroa.031.1 = phi ptr [ %i.ax, %bb.h ], [ %.sroa.031.0.lcssa, %._crit_edge._crit_edge ] ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.031.1, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !106
  %i.bb = icmp eq i32 %i.ba, %i.ay
  br i1 %i.bb, label %_ZN9__gnu_cxx5__ops10_Iter_predIN4SIdx10UsedFinderEEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops10_Iter_predIN4SIdx10UsedFinderEEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit20

_ZN9__gnu_cxx5__ops10_Iter_predIN4SIdx10UsedFinderEEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit20: ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.031.1, i64 8
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !108
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !108
  %i.bg = icmp eq i32 %i.bd, %i.bf
  br i1 %i.bg, label %_ZN9__gnu_cxx5__ops10_Iter_predIN4SIdx10UsedFinderEEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN4SIdx10UsedFinderEEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_.exit20
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.031.1, i64 12
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge70, %bb.j
  %i.bi = phi i32 [ %i.ay, %bb.j ], [ %.pre72, %._crit_edge._crit_edge70 ]
  %.sroa.031.2 = phi ptr [ %i.bh, %bb.j ], [ %.sroa.031.0.lcssa, %._crit_edge._crit_edge70 ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.031.2, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !106
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_:bb.a
  br i1 %i.cp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %0, ptr noundef nonnull align 4 dereferenceable(17) %i.e, i64 17, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %i.e, ptr noundef nonnull align 4 dereferenceable(17) %6, i64 17, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.cq = fcmp olt float %i.cj, %i.cm
  br i1 %i.cq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %0, ptr noundef nonnull align 4 dereferenceable(17) %i.cg, i64 17, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %i.cg, ptr noundef nonnull align 4 dereferenceable(17) %5, i64 17, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %0, ptr noundef nonnull align 4 dereferenceable(17) %i.cf, i64 17, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %i.cf, ptr noundef nonnull align 4 dereferenceable(17) %4, i64 17, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i.preheader, %bb.v
  %.sroa.010.0.i.i = phi ptr [ %i.cv, %bb.v ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge1942, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i.preheader ]
  %i.cr = load float, ptr %i.g, align 4, !tbaa !225 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i ], [ %i.cv, %bb.t ] ; 9 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 12
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !225
  %i.cu = fcmp olt float %i.ct, %i.cr
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 20 ; 2 uses
  br i1 %i.cu, label %bb.t, label %.preheader.i.i, !llvm.loop !230

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -20 ; 5 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !225
  %i.cy = fcmp olt float %i.cr, %i.cx
  br i1 %i.cy, label %.preheader.i.i, label %bb.u, !llvm.loop !231

bb.u:                                             ; preds = %.preheader.i.i
  %i.cz = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.cz, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEET_SA_SA_T0_.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.010.1.i.i, i64 20, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %.sroa.010.1.i.i, ptr noundef nonnull align 4 dereferenceable(17) %.sroa.0.1.i.i, i64 17, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %.sroa.0.1.i.i, ptr noundef nonnull align 4 dereferenceable(17) %3, i64 17, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i, !llvm.loop !232

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEET_SA_SA_T0_.exit: ; preds = %bb.u
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge1942, i64 noundef %i.cd)
  %i.da = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.db = sub i64 %i.da, %i.a                     ; 3 uses
  %i.dc = icmp sgt i64 %i.db, 320
  br i1 %i.dc, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_.exit, !llvm.loop !224

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEET_SA_SA_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_(ptr %0, ptr %1) local_unnamed_addr #5 comdat {
bb.a:
  %2 = alloca %struct.DMatchForEvaluation, align 4 ; 4 uses
  %3 = alloca %struct.DMatchForEvaluation, align 4 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 320
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %scevgep = getelementptr i8, ptr %0, i64 20
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.018.i.idx = phi i64 [ 20, %.lr.ph.i ], [ %.sroa.0.018.i.add, %bb.g ] ; 4 uses
  %.pn17.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.018.i.ptr, %bb.g ] ; 4 uses
  %.sroa.0.018.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.018.i.idx ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 32
  %i.g = load float, ptr %i.f, align 4, !tbaa !225 ; 4 uses
  %i.h = load float, ptr %i.e, align 4, !tbaa !225
  %i.i = fcmp olt float %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.018.i.ptr, i64 20, i1 false)
  %i.j = icmp samesign ugt i64 %.sroa.0.018.i.idx, 20
  br i1 %i.j, label %bb.d, label %bb.e, !prof !196

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.018.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %i.k, ptr noundef nonnull align 4 dereferenceable(17) %0, i64 17, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %0, ptr noundef nonnull align 4 dereferenceable(17) %3, i64 17, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %.sroa.03.i.i.sroa.0.0.copyload = load <3 x i32>, ptr %.sroa.0.018.i.ptr, align 4
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 36
  %i.l = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 12
  %i.n = load float, ptr %i.m, align 4, !tbaa !225
  %i.o = fcmp olt float %i.g, %i.n
  br i1 %i.o, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.07.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.018.i.ptr, %bb.f ] ; 3 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.07.010.i.i, i64 -20 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %.sroa.07.010.i.i, ptr noundef nonnull align 4 dereferenceable(17) %.sroa.0.0.i.i, i64 17, i1 false)
  %i.p = getelementptr inbounds i8, ptr %.sroa.07.010.i.i, i64 -28
  %i.q = load float, ptr %i.p, align 4, !tbaa !225
  %i.r = fcmp olt float %i.g, %i.q
  br i1 %i.r, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !233

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.07.0.lcssa.i.i = phi ptr [ %.sroa.0.018.i.ptr, %bb.f ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 3 uses
  %.sroa.5.sroa.0.0.extract.trunc.i.i = trunc i32 %i.l to i8
  store <3 x i32> %.sroa.03.i.i.sroa.0.0.copyload, ptr %.sroa.07.0.lcssa.i.i, align 4
  %.sroa.4.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i, i64 12
  store float %i.g, ptr %.sroa.4.0..sroa_idx4.i.i, align 4
  %.sroa.5.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i, i64 16
  store i8 %.sroa.5.sroa.0.0.extract.trunc.i.i, ptr %.sroa.5.0..sroa_idx6.i.i, align 4
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i
  %.sroa.0.018.i.add = add nuw nsw i64 %.sroa.0.018.i.idx, 20 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.018.i.add, 320
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, label %bb.b, !llvm.loop !234

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit: ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %.not4.i = icmp eq ptr %i.s, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i9
  %.sroa.0.05.i = phi ptr [ %i.aa, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i9 ], [ %i.s, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit ] ; 7 uses
  %.sroa.03.i.i6.sroa.0.0.copyload = load <3 x i32>, ptr %.sroa.0.05.i, align 4
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 12
  %.sroa.4.0.copyload.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i, align 4 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i8 = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 16
  %i.t = load i32, ptr %.sroa.5.0..sroa_idx.i.i8, align 4
  %i.u = getelementptr inbounds i8, ptr %.sroa.0.05.i, i64 -8
  %i.v = load float, ptr %i.u, align 4, !tbaa !225
  %i.w = fcmp olt float %.sroa.4.0.copyload.i.i, %i.v
  br i1 %i.w, label %.lr.ph.i.i15, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i9

.lr.ph.i.i15:                                     ; preds = %.lr.ph.i7, %.lr.ph.i.i15
  %.sroa.07.010.i.i16 = phi ptr [ %.sroa.0.0.i.i17, %.lr.ph.i.i15 ], [ %.sroa.0.05.i, %.lr.ph.i7 ] ; 3 uses
  %.sroa.0.0.i.i17 = getelementptr inbounds i8, ptr %.sroa.07.010.i.i16, i64 -20 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %.sroa.07.010.i.i16, ptr noundef nonnull align 4 dereferenceable(17) %.sroa.0.0.i.i17, i64 17, i1 false)
  %i.x = getelementptr inbounds i8, ptr %.sroa.07.010.i.i16, i64 -28
  %i.y = load float, ptr %i.x, align 4, !tbaa !225
  %i.z = fcmp olt float %.sroa.4.0.copyload.i.i, %i.y
  br i1 %i.z, label %.lr.ph.i.i15, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i9, !llvm.loop !233

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i9: ; preds = %.lr.ph.i.i15, %.lr.ph.i7
  %.sroa.07.0.lcssa.i.i10 = phi ptr [ %.sroa.0.05.i, %.lr.ph.i7 ], [ %.sroa.0.0.i.i17, %.lr.ph.i.i15 ] ; 3 uses
  %.sroa.5.sroa.0.0.extract.trunc.i.i11 = trunc i32 %i.t to i8
  store <3 x i32> %.sroa.03.i.i6.sroa.0.0.copyload, ptr %.sroa.07.0.lcssa.i.i10, align 4
  %.sroa.4.0..sroa_idx4.i.i12 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i10, i64 12
  store float %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx4.i.i12, align 4
  %.sroa.5.0..sroa_idx6.i.i13 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i10, i64 16
  store i8 %.sroa.5.sroa.0.0.extract.trunc.i.i11, ptr %.sroa.5.0..sroa_idx6.i.i13, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 20 ; 2 uses
  %.not.i14 = icmp eq ptr %i.aa, %1
  br i1 %.not.i14, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, label %.lr.ph.i7, !llvm.loop !235

bb.h:                                             ; preds = %bb.a
  %i.ab = icmp eq ptr %0, %1
  br i1 %i.ab, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, label %.preheader.i19

.preheader.i19:                                   ; preds = %bb.h
  %.sroa.0.015.i20 = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %.not16.i21 = icmp eq ptr %.sroa.0.015.i20, %1
  br i1 %.not16.i21, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %.preheader.i19
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i22
  %.sroa.0.018.i23 = phi ptr [ %.sroa.0.015.i20, %.lr.ph.i22 ], [ %.sroa.0.0.i31, %bb.o ] ; 7 uses
  %.pn17.i24 = phi ptr [ %0, %.lr.ph.i22 ], [ %.sroa.0.018.i23, %bb.o ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn17.i24, i64 32
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !225 ; 4 uses
  %i.af = load float, ptr %i.ac, align 4, !tbaa !225
  %i.ag = fcmp olt float %i.ae, %i.af
  br i1 %i.ag, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.018.i23, i64 20, i1 false)
  %i.ah = ptrtoint ptr %.sroa.0.018.i23 to i64
  %i.ai = sub i64 %i.ah, %i.b                     ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, 20
  br i1 %i.aj, label %bb.k, label %bb.l, !prof !196

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0.015.i20, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.ai, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i36

bb.l:                                             ; preds = %bb.j
  %i.ak = icmp eq i64 %i.ai, 20
  br i1 %i.ak, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i36

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %.pn17.i24, i64 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %i.al, ptr noundef nonnull align 4 dereferenceable(17) %0, i64 17, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i36

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i36: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %0, ptr noundef nonnull align 4 dereferenceable(17) %2, i64 17, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %.sroa.03.i.i18.sroa.0.0.copyload = load <3 x i32>, ptr %.sroa.0.018.i23, align 4
  %.sroa.5.0..sroa_idx.i.i25 = getelementptr inbounds nuw i8, ptr %.pn17.i24, i64 36
  %i.am = load i32, ptr %.sroa.5.0..sroa_idx.i.i25, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %.pn17.i24, i64 12
  %i.ao = load float, ptr %i.an, align 4, !tbaa !225
  %i.ap = fcmp olt float %i.ae, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i33, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i26

.lr.ph.i.i33:                                     ; preds = %bb.n, %.lr.ph.i.i33
  %.sroa.07.010.i.i34 = phi ptr [ %.sroa.0.0.i.i35, %.lr.ph.i.i33 ], [ %.sroa.0.018.i23, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i35 = getelementptr inbounds i8, ptr %.sroa.07.010.i.i34, i64 -20 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %.sroa.07.010.i.i34, ptr noundef nonnull align 4 dereferenceable(17) %.sroa.0.0.i.i35, i64 17, i1 false)
  %i.aq = getelementptr inbounds i8, ptr %.sroa.07.010.i.i34, i64 -28
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !225
  %i.as = fcmp olt float %i.ae, %i.ar
  br i1 %i.as, label %.lr.ph.i.i33, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i26, !llvm.loop !233

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i26: ; preds = %.lr.ph.i.i33, %bb.n
  %.sroa.07.0.lcssa.i.i27 = phi ptr [ %.sroa.0.018.i23, %bb.n ], [ %.sroa.0.0.i.i35, %.lr.ph.i.i33 ] ; 3 uses
  %.sroa.5.sroa.0.0.extract.trunc.i.i28 = trunc i32 %i.am to i8
  store <3 x i32> %.sroa.03.i.i18.sroa.0.0.copyload, ptr %.sroa.07.0.lcssa.i.i27, align 4
  %.sroa.4.0..sroa_idx4.i.i29 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i27, i64 12
  store float %i.ae, ptr %.sroa.4.0..sroa_idx4.i.i29, align 4
  %.sroa.5.0..sroa_idx6.i.i30 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i27, i64 16
  store i8 %.sroa.5.sroa.0.0.extract.trunc.i.i28, ptr %.sroa.5.0..sroa_idx6.i.i30, align 4
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i26, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i36
  %.sroa.0.0.i31 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i23, i64 20 ; 2 uses
  %.not.i32 = icmp eq ptr %.sroa.0.0.i31, %1
  br i1 %.not.i32, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, label %bb.i, !llvm.loop !234

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i9, %.preheader.i19, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP19DMatchForEvaluationSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nounwind }
attributes #26 = { noreturn }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"float", !6, i64 0}
!12 = !{!13, !5, i64 4}
!13 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !16, i64 56, !17, i64 64, !18, i64 72, !20, i64 128}
!14 = !{!"p1 omnipotent char", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"p1 _ZTSN2cv12MatAllocatorE", !15, i64 0}
!17 = !{!"p1 _ZTSN2cv8UMatDataE", !15, i64 0}
!18 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !19, i64 4, !5, i64 8, !6, i64 12}
!19 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!20 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!21 = !{!13, !14, i64 24}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZN16EllipticKeyPoint22getSecondMomentsMatrixERKN2cv7Scalar_IdEE: argument 0"}
!24 = distinct !{!24, !"_ZN16EllipticKeyPoint22getSecondMomentsMatrixERKN2cv7Scalar_IdEE"}
!25 = !{!26, !11, i64 0}
!26 = !{!"_ZTSN2cv6Point_IfEE", !11, i64 0, !11, i64 4}
!27 = !{!26, !11, i64 4}
!28 = !{!13, !5, i64 0}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZNK16EllipticKeyPoint22getSecondMomentsMatrixEv: argument 0"}
!31 = distinct !{!31, !"_ZNK16EllipticKeyPoint22getSecondMomentsMatrixEv"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZN16EllipticKeyPoint22getSecondMomentsMatrixERKN2cv7Scalar_IdEE: argument 0"}
!34 = distinct !{!34, !"_ZN16EllipticKeyPoint22getSecondMomentsMatrixERKN2cv7Scalar_IdEE"}
!35 = !{!33, !30}
!36 = !{!37, !5, i64 0}
!37 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!38 = !{!37, !5, i64 4}
!39 = !{!40, !5, i64 0}
!40 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !15, i64 8, !37, i64 16}
!41 = !{!40, !15, i64 8}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZN2cv7Scalar_IdE3allEd: argument 0"}
!44 = distinct !{!44, !"_ZN2cv7Scalar_IdE3allEd"}
!45 = !{!46, !46, i64 0}
!46 = !{!"p1 _ZTSN2cv8KeyPointE", !15, i64 0}
!47 = !{!48, !49, i64 8}
!48 = !{!"_ZTSNSt12_Vector_baseI16EllipticKeyPointSaIS0_EE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!49 = !{!"p1 _ZTS16EllipticKeyPoint", !15, i64 0}
!50 = !{!48, !49, i64 0}
!51 = !{!52, !46, i64 8}
!52 = !{!"_ZTSNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!53 = !{!52, !46, i64 0}
!54 = !{!55, !11, i64 8}
!55 = !{!"_ZTSN2cv8KeyPointE", !26, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !5, i64 20, !5, i64 24}
!56 = !{!57, !14, i64 0}
!57 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !58, i64 0, !59, i64 8, !6, i64 16}
!58 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!59 = !{!"long", !6, i64 0}
!60 = !{!6, !6, i64 0}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!64, !5, i64 8}
!64 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !65, i64 0, !5, i64 8}
!65 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !15, i64 0}
!66 = !{!58, !14, i64 0}
!67 = !{!59, !59, i64 0}
!68 = !{!57, !59, i64 8}
!69 = !{!49, !49, i64 0}
!70 = !{!5, !5, i64 0}
!71 = distinct !{!71, !62}
!72 = !{!13, !5, i64 12}
!73 = !{!13, !5, i64 8}
!74 = distinct !{!74, !62}
!75 = !{!76, !77, i64 0}
!76 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !77, i64 0}
!77 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !15, i64 0}
!78 = !{!15, !15, i64 0}
end_hunk_1

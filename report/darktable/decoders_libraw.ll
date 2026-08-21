inline.NumInlined: 308
inline.NumDeleted: 133
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_:bb.a
  %i.da = load i64, ptr %i.h, align 8, !tbaa !191 ; 2 uses
  br i1 %i.cy, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.co, i64 16, i1 false), !tbaa.struct !208
  store i32 %i.cz, ptr %i.co, align 8, !tbaa !118
  store i64 %i.da, ptr %i.ct, align 8, !tbaa !157
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !208
  store i32 %i.cz, ptr %i.f, align 8, !tbaa !118
  store i64 %i.da, ptr %i.g, align 8, !tbaa !157
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph49
  %i.db = icmp slt i64 %i.cp, %i.cu
  br i1 %i.db, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dc = load i32, ptr %0, align 8, !tbaa !189
  %i.dd = load i64, ptr %i.h, align 8, !tbaa !191
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !208
  store i32 %i.dc, ptr %i.f, align 8, !tbaa !118
  store i64 %i.dd, ptr %i.g, align 8, !tbaa !157
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.de = icmp slt i64 %i.cr, %i.cu
  %i.df = load i32, ptr %0, align 8, !tbaa !189   ; 2 uses
  %i.dg = load i64, ptr %i.h, align 8, !tbaa !191 ; 2 uses
  br i1 %i.de, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.co, i64 16, i1 false), !tbaa.struct !208
  store i32 %i.df, ptr %i.co, align 8, !tbaa !118
  store i64 %i.dg, ptr %i.ct, align 8, !tbaa !157
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i64 16, i1 false), !tbaa.struct !208
  store i32 %i.df, ptr %i.cn, align 8, !tbaa !118
  store i64 %i.dg, ptr %i.cq, align 8, !tbaa !157
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i.preheader, %bb.v
  %.sroa.010.0.i.i = phi ptr [ %i.dl, %bb.v ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2148, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i.preheader ]
  %i.dh = load i64, ptr %i.h, align 8, !tbaa !191 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i ], [ %i.dl, %bb.t ] ; 9 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !191 ; 2 uses
  %i.dk = icmp slt i64 %i.dj, %i.dh
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16 ; 2 uses
  br i1 %i.dk, label %bb.t, label %.preheader.i.i, !llvm.loop !213

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ] ; 3 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %i.dm = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !191
  %i.do = icmp slt i64 %i.dh, %i.dn
  br i1 %i.do, label %.preheader.i.i, label %bb.u, !llvm.loop !214

bb.u:                                             ; preds = %.preheader.i.i
  %i.dp = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.dp, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEET_SA_SA_T0_.exit

bb.v:                                             ; preds = %bb.u
  %i.dq = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %i.dr = load i32, ptr %.sroa.010.1.i.i, align 8, !tbaa !189
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, i64 16, i1 false), !tbaa.struct !208
  store i32 %i.dr, ptr %.sroa.0.1.i.i, align 8, !tbaa !118
  store i64 %i.dj, ptr %i.dq, align 8, !tbaa !157
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i, !llvm.loop !215

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEET_SA_SA_T0_.exit: ; preds = %bb.u
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2148, i64 noundef %i.cl)
  %i.ds = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.dt = sub i64 %i.ds, %i.a
  %.fr.i = freeze i64 %i.dt                       ; 2 uses
  %i.du = ashr exact i64 %.fr.i, 4                ; 2 uses
  %i.dv = icmp sgt i64 %i.du, 16
  br i1 %i.dv, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_.exit, !llvm.loop !207

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEET_SA_SA_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_RT0_.exit.i.i, %bb.a, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph.i, label %bb.e

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.sroa.09.021.i.idx = phi i64 [ 16, %.lr.ph.i ], [ %.sroa.09.021.i.add, %bb.d ] ; 3 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.09.021.i.ptr, %bb.d ] ; 2 uses
  %.sroa.09.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.021.i.idx ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !191  ; 5 uses
  %i.h = load i64, ptr %i.e, align 8, !tbaa !191
  %i.i = icmp slt i64 %i.g, %i.h
  %i.j = load i32, ptr %.sroa.09.021.i.ptr, align 8, !tbaa !189 ; 2 uses
  br i1 %i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i, label %bb.c

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i: ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.09.021.i.idx, i1 false)
  store i32 %i.j, ptr %0, align 8, !tbaa !118
  store i64 %i.g, ptr %i.e, align 8, !tbaa !157
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !191
  %i.m = icmp slt i64 %i.g, %i.l
  br i1 %i.m, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.05.08.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.09.021.i.ptr, %bb.c ] ; 3 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.05.08.i.i, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.08.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i, i64 16, i1 false), !tbaa.struct !208
  %i.n = getelementptr inbounds i8, ptr %.sroa.05.08.i.i, i64 -24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !191
  %i.p = icmp slt i64 %i.g, %i.o
  br i1 %i.p, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !216

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.09.021.i.ptr, %bb.c ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 2 uses
  store i32 %i.j, ptr %.sroa.05.0.lcssa.i.i, align 8, !tbaa !118
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i, i64 8
  store i64 %i.g, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !tbaa !157
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i
  %.sroa.09.021.i.add = add nuw nsw i64 %.sroa.09.021.i.idx, 16 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.09.021.i.add, 256
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, label %bb.b, !llvm.loop !217

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit: ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.not4.i = icmp eq ptr %i.q, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7
  %.sroa.0.05.i = phi ptr [ %i.aa, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7 ], [ %i.q, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit ] ; 6 uses
  %i.r = load i32, ptr %.sroa.0.05.i, align 8, !tbaa !189
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !191  ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %.sroa.0.05.i, i64 -8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !191
  %i.w = icmp slt i64 %i.t, %i.v
  br i1 %i.w, label %.lr.ph.i.i11, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7

.lr.ph.i.i11:                                     ; preds = %.lr.ph.i6, %.lr.ph.i.i11
  %.sroa.05.08.i.i12 = phi ptr [ %.sroa.0.0.i.i13, %.lr.ph.i.i11 ], [ %.sroa.0.05.i, %.lr.ph.i6 ] ; 3 uses
  %.sroa.0.0.i.i13 = getelementptr inbounds i8, ptr %.sroa.05.08.i.i12, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.08.i.i12, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i13, i64 16, i1 false), !tbaa.struct !208
  %i.x = getelementptr inbounds i8, ptr %.sroa.05.08.i.i12, i64 -24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !191
  %i.z = icmp slt i64 %i.t, %i.y
  br i1 %i.z, label %.lr.ph.i.i11, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7, !llvm.loop !216

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7: ; preds = %.lr.ph.i.i11, %.lr.ph.i6
  %.sroa.05.0.lcssa.i.i8 = phi ptr [ %.sroa.0.05.i, %.lr.ph.i6 ], [ %.sroa.0.0.i.i13, %.lr.ph.i.i11 ] ; 2 uses
  store i32 %i.r, ptr %.sroa.05.0.lcssa.i.i8, align 8, !tbaa !118
  %.sroa.44.0..sroa_idx.i.i9 = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i8, i64 8
  store i64 %i.t, ptr %.sroa.44.0..sroa_idx.i.i9, align 8, !tbaa !157
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 16 ; 2 uses
  %.not.i10 = icmp eq ptr %i.aa, %1
  br i1 %.not.i10, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, label %.lr.ph.i6, !llvm.loop !218

bb.e:                                             ; preds = %bb.a
  %i.ab = icmp eq ptr %0, %1
  br i1 %i.ab, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, label %.preheader.i14

.preheader.i14:                                   ; preds = %bb.e
  %.sroa.09.018.i15 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not19.i16 = icmp eq ptr %.sroa.09.018.i15, %1
  br i1 %.not19.i16, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %.preheader.i14
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i17
  %indvar.i18 = phi i64 [ 0, %.lr.ph.i17 ], [ %indvar.next.i27, %bb.i ] ; 2 uses
  %.sroa.09.021.i19 = phi ptr [ %.sroa.09.018.i15, %.lr.ph.i17 ], [ %.sroa.09.0.i25, %bb.i ] ; 7 uses
  %.pn20.i20 = phi ptr [ %0, %.lr.ph.i17 ], [ %.sroa.09.021.i19, %bb.i ] ; 2 uses
  %2 = shl nuw i64 %indvar.i18, 4
  %3 = getelementptr i8, ptr %0, i64 %2
  %scevgep.i21 = getelementptr i8, ptr %3, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn20.i20, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !191 ; 5 uses
  %i.af = load i64, ptr %i.ac, align 8, !tbaa !191
  %i.ag = icmp slt i64 %i.ae, %i.af
  %i.ah = load i32, ptr %.sroa.09.021.i19, align 8, !tbaa !189 ; 2 uses
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = ptrtoint ptr %.sroa.09.021.i19 to i64
  %i.aj = sub i64 %i.ai, %i.b                     ; 2 uses
  %i.ak = ashr exact i64 %i.aj, 4                 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %.lr.ph.i.i.i.i.i.preheader.i32, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i31

.lr.ph.i.i.i.i.i.preheader.i32:                   ; preds = %bb.g
  %i.am = mul nsw i64 %i.ak, -16                  ; 2 uses
  %scevgep23.i33 = getelementptr i8, ptr %scevgep.i21, i64 %i.am
  %scevgep24.i34 = getelementptr i8, ptr %.sroa.09.021.i19, i64 %i.am
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep23.i33, ptr align 8 %scevgep24.i34, i64 %i.aj, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i31

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i31: ; preds = %.lr.ph.i.i.i.i.i.preheader.i32, %bb.g
  store i32 %i.ah, ptr %0, align 8, !tbaa !118
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !157
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %.pn20.i20, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !191
  %i.ap = icmp slt i64 %i.ae, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i28, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i22

.lr.ph.i.i28:                                     ; preds = %bb.h, %.lr.ph.i.i28
  %.sroa.05.08.i.i29 = phi ptr [ %.sroa.0.0.i.i30, %.lr.ph.i.i28 ], [ %.sroa.09.021.i19, %bb.h ] ; 3 uses
  %.sroa.0.0.i.i30 = getelementptr inbounds i8, ptr %.sroa.05.08.i.i29, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.08.i.i29, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i30, i64 16, i1 false), !tbaa.struct !208
  %i.aq = getelementptr inbounds i8, ptr %.sroa.05.08.i.i29, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !191
  %i.as = icmp slt i64 %i.ae, %i.ar
  br i1 %i.as, label %.lr.ph.i.i28, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i22, !llvm.loop !216

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i22: ; preds = %.lr.ph.i.i28, %bb.h
  %.sroa.05.0.lcssa.i.i23 = phi ptr [ %.sroa.09.021.i19, %bb.h ], [ %.sroa.0.0.i.i30, %.lr.ph.i.i28 ] ; 2 uses
  store i32 %i.ah, ptr %.sroa.05.0.lcssa.i.i23, align 8, !tbaa !118
  %.sroa.44.0..sroa_idx.i.i24 = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i23, i64 8
  store i64 %i.ae, ptr %.sroa.44.0..sroa_idx.i.i24, align 8, !tbaa !157
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i22, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i31
  %.sroa.09.0.i25 = getelementptr inbounds nuw i8, ptr %.sroa.09.021.i19, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %.sroa.09.0.i25, %1
  %indvar.next.i27 = add nuw nsw i64 %indvar.i18, 1
  br i1 %.not.i26, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, label %bb.f, !llvm.loop !217

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit: ; preds = %bb.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7, %.preheader.i14, %bb.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.bswap.v8i32(<8 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x i8> @llvm.masked.load.v5i8.p0(ptr captures(none), <5 x i1>, <5 x i8>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4i32.v4p0(<4 x i32>, <4 x ptr>, <4 x i1>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4i64.v4p0(<4 x i64>, <4 x ptr>, <4 x i1>) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold noreturn }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { builtin allocsize(0) }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !8, i64 544}
!12 = !{!"_ZTS6LibRaw", !13, i64 8, !60, i64 381584, !61, i64 381592, !9, i64 384344, !71, i64 433496, !71, i64 433504, !9, i64 433512, !72, i64 768232, !73, i64 768248, !9, i64 768400, !9, i64 768416, !9, i64 768432, !15, i64 768448, !15, i64 768456, !15, i64 768464, !52, i64 768472, !15, i64 768480, !15, i64 768488, !15, i64 768496, !15, i64 768504}
!13 = !{!"_ZTS13libraw_data_t", !14, i64 0, !16, i64 8, !19, i64 192, !21, i64 632, !27, i64 1928, !43, i64 5088, !44, i64 5232, !45, i64 5536, !8, i64 5584, !8, i64 5588, !48, i64 5592, !51, i64 192680, !54, i64 193480, !56, i64 193504, !57, i64 193768, !15, i64 381568}
!14 = !{!"p1 short", !15, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"_ZTS20libraw_image_sizes_t", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6, !17, i64 8, !17, i64 10, !17, i64 12, !17, i64 14, !8, i64 16, !18, i64 24, !8, i64 32, !9, i64 36, !17, i64 164, !9, i64 166}
!17 = !{!"short", !9, i64 0}
!18 = !{!"double", !9, i64 0}
!19 = !{!"_ZTS16libraw_iparams_t", !9, i64 0, !9, i64 4, !9, i64 68, !9, i64 132, !9, i64 196, !9, i64 260, !8, i64 324, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !9, i64 348, !9, i64 384, !9, i64 420, !8, i64 428, !20, i64 432}
!20 = !{!"p1 omnipotent char", !15, i64 0}
!21 = !{!"_ZTS17libraw_lensinfo_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !9, i64 20, !9, i64 148, !9, i64 276, !9, i64 404, !17, i64 532, !23, i64 536, !24, i64 544, !25, i64 560}
!22 = !{!"float", !9, i64 0}
!23 = !{!"_ZTS18libraw_nikonlens_t", !22, i64 0, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7}
!24 = !{!"_ZTS16libraw_dnglens_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12}
!25 = !{!"_ZTS24libraw_makernotes_lens_t", !26, i64 0, !9, i64 8, !17, i64 136, !17, i64 138, !26, i64 144, !17, i64 152, !17, i64 154, !9, i64 156, !17, i64 220, !9, i64 222, !9, i64 238, !22, i64 256, !22, i64 260, !22, i64 264, !22, i64 268, !22, i64 272, !22, i64 276, !22, i64 280, !22, i64 284, !22, i64 288, !22, i64 292, !22, i64 296, !22, i64 300, !22, i64 304, !22, i64 308, !22, i64 312, !26, i64 320, !9, i64 328, !26, i64 456, !9, i64 464, !26, i64 592, !9, i64 600, !17, i64 728, !22, i64 732}
!26 = !{!"long long", !9, i64 0}
!27 = !{!"_ZTS19libraw_makernotes_t", !28, i64 0, !30, i64 168, !32, i64 464, !33, i64 848, !34, i64 1200, !35, i64 1664, !36, i64 1848, !37, i64 2092, !38, i64 2160, !39, i64 2196, !40, i64 2648, !41, i64 2720, !42, i64 2856}
!28 = !{!"_ZTS25libraw_canon_makernotes_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !9, i64 16, !8, i64 32, !9, i64 36, !17, i64 52, !17, i64 54, !9, i64 56, !17, i64 58, !17, i64 60, !17, i64 62, !17, i64 64, !17, i64 66, !17, i64 68, !17, i64 70, !17, i64 72, !17, i64 74, !17, i64 76, !17, i64 78, !17, i64 80, !17, i64 82, !8, i64 84, !22, i64 88, !17, i64 92, !17, i64 94, !17, i64 96, !17, i64 98, !8, i64 100, !17, i64 104, !8, i64 108, !8, i64 112, !17, i64 116, !8, i64 120, !29, i64 124, !29, i64 132, !29, i64 140, !29, i64 148, !29, i64 156, !9, i64 164}
!29 = !{!"_ZTS13libraw_area_t", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6}
!30 = !{!"_ZTS25libraw_nikon_makernotes_t", !18, i64 0, !17, i64 8, !17, i64 10, !9, i64 12, !9, i64 19, !9, i64 20, !9, i64 21, !9, i64 34, !9, i64 54, !9, i64 58, !9, i64 62, !9, i64 66, !9, i64 67, !9, i64 68, !9, i64 69, !9, i64 70, !9, i64 71, !9, i64 73, !9, i64 74, !9, i64 75, !9, i64 76, !9, i64 77, !9, i64 78, !9, i64 82, !9, i64 86, !17, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !9, i64 112, !9, i64 144, !9, i64 145, !9, i64 146, !8, i64 148, !8, i64 152, !8, i64 156, !9, i64 160, !9, i64 162, !17, i64 170, !31, i64 172, !17, i64 180, !17, i64 182, !17, i64 184, !8, i64 188, !9, i64 192, !9, i64 212, !8, i64 232, !9, i64 236, !8, i64 248, !20, i64 256, !17, i64 264, !17, i64 266, !9, i64 268, !17, i64 270, !18, i64 272, !18, i64 280, !18, i64 288}
!31 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6}
!32 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !8, i64 0, !18, i64 8, !9, i64 16, !9, i64 24, !9, i64 88, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !9, i64 168, !9, i64 200, !8, i64 264, !9, i64 268, !9, i64 276, !9, i64 288}
!33 = !{!"_ZTS18libraw_fuji_info_t", !22, i64 0, !17, i64 4, !17, i64 6, !17, i64 8, !17, i64 10, !17, i64 12, !17, i64 14, !17, i64 16, !17, i64 18, !9, i64 20, !9, i64 53, !22, i64 88, !17, i64 92, !17, i64 94, !9, i64 96, !17, i64 100, !8, i64 104, !8, i64 108, !17, i64 112, !9, i64 114, !17, i64 120, !17, i64 122, !17, i64 124, !17, i64 126, !17, i64 128, !8, i64 132, !17, i64 136, !9, i64 138, !9, i64 151, !9, i64 156, !8, i64 164, !17, i64 168, !8, i64 172, !17, i64 176, !9, i64 178, !9, i64 196, !8, i64 324, !8, i64 328, !8, i64 332, !9, i64 336, !8, i64 344}
!34 = !{!"_ZTS27libraw_olympus_makernotes_t", !9, i64 0, !17, i64 6, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !9, i64 64, !9, i64 72, !17, i64 82, !9, i64 84, !17, i64 88, !17, i64 90, !9, i64 92, !9, i64 352, !17, i64 392, !9, i64 394, !9, i64 396, !9, i64 404, !17, i64 416, !17, i64 418, !17, i64 420, !17, i64 422, !18, i64 424, !9, i64 432, !9, i64 440, !9, i64 448, !8, i64 452, !17, i64 456, !17, i64 458}
!35 = !{!"_ZTS18libraw_sony_info_t", !17, i64 0, !9, i64 2, !9, i64 3, !8, i64 4, !9, i64 8, !8, i64 12, !9, i64 16, !9, i64 17, !17, i64 18, !9, i64 20, !9, i64 24, !9, i64 25, !17, i64 26, !9, i64 28, !9, i64 38, !9, i64 39, !9, i64 40, !17, i64 48, !9, i64 50, !9, i64 51, !9, i64 52, !17, i64 54, !8, i64 56, !17, i64 60, !9, i64 62, !17, i64 66, !17, i64 68, !17, i64 70, !17, i64 72, !17, i64 74, !17, i64 76, !17, i64 78, !8, i64 80, !22, i64 84, !17, i64 88, !8, i64 92, !8, i64 96, !17, i64 100, !9, i64 102, !8, i64 124, !17, i64 128, !8, i64 132, !9, i64 136, !9, i64 137, !17, i64 138, !17, i64 140, !17, i64 142, !17, i64 144, !17, i64 146, !17, i64 148, !17, i64 150, !17, i64 152, !17, i64 154, !8, i64 156, !17, i64 160, !9, i64 162, !22, i64 180}
!36 = !{!"_ZTS25libraw_kodak_makernotes_t", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6, !17, i64 8, !17, i64 10, !9, i64 12, !9, i64 48, !9, i64 84, !9, i64 120, !9, i64 156, !9, i64 192, !17, i64 228, !17, i64 230, !17, i64 232, !17, i64 234, !22, i64 236, !22, i64 240}
!37 = !{!"_ZTS29libraw_panasonic_makernotes_t", !17, i64 0, !17, i64 2, !9, i64 4, !8, i64 36, !22, i64 40, !9, i64 44, !17, i64 56, !17, i64 58, !8, i64 60, !8, i64 64}
!38 = !{!"_ZTS26libraw_pentax_makernotes_t", !9, i64 0, !9, i64 4, !9, i64 8, !17, i64 12, !8, i64 16, !8, i64 20, !17, i64 24, !9, i64 26, !17, i64 30, !9, i64 32, !9, i64 33, !17, i64 34}
!39 = !{!"_ZTS22libraw_p1_makernotes_t", !9, i64 0, !9, i64 64, !9, i64 128, !9, i64 384}
!40 = !{!"_ZTS25libraw_ricoh_makernotes_t", !17, i64 0, !9, i64 4, !9, i64 12, !17, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !17, i64 40, !17, i64 42, !17, i64 44, !17, i64 46, !17, i64 48, !17, i64 50, !18, i64 56, !18, i64 64}
!41 = !{!"_ZTS27libraw_samsung_makernotes_t", !9, i64 0, !9, i64 16, !9, i64 32, !9, i64 40, !18, i64 88, !8, i64 96, !9, i64 100}
!42 = !{!"_ZTS24libraw_metadata_common_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20, !22, i64 24, !22, i64 28, !22, i64 32, !22, i64 36, !22, i64 40, !22, i64 44, !22, i64 48, !22, i64 52, !22, i64 56, !22, i64 60, !17, i64 64, !9, i64 66, !22, i64 196, !9, i64 200, !8, i64 296}
!43 = !{!"_ZTS21libraw_shootinginfo_t", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6, !17, i64 8, !17, i64 10, !17, i64 12, !9, i64 14, !9, i64 78}
!44 = !{!"_ZTS22libraw_output_params_t", !9, i64 0, !9, i64 16, !9, i64 32, !9, i64 64, !9, i64 112, !22, i64 128, !22, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !20, i64 168, !20, i64 176, !20, i64 184, !20, i64 192, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !9, i64 224, !8, i64 240, !8, i64 244, !22, i64 248, !22, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !22, i64 288, !22, i64 292, !8, i64 296, !8, i64 300}
!45 = !{!"_ZTS26libraw_raw_unpack_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !22, i64 28, !9, i64 32, !46, i64 40}
!46 = !{!"p2 omnipotent char", !47, i64 0}
!47 = !{!"any p2 pointer", !15, i64 0}
!48 = !{!"_ZTS18libraw_colordata_t", !9, i64 0, !9, i64 131072, !8, i64 147488, !8, i64 147492, !8, i64 147496, !9, i64 147500, !22, i64 147516, !22, i64 147520, !9, i64 147524, !9, i64 147652, !9, i64 147668, !9, i64 147684, !9, i64 147732, !9, i64 147780, !9, i64 147828, !49, i64 147876, !22, i64 147912, !22, i64 147916, !9, i64 147920, !9, i64 147984, !9, i64 148048, !9, i64 148112, !9, i64 148176, !9, i64 148193, !15, i64 148264, !8, i64 148272, !9, i64 148276, !9, i64 148308, !50, i64 148648, !9, i64 181624, !9, i64 185720, !8, i64 187000, !9, i64 187004, !8, i64 187076, !8, i64 187080}
!49 = !{!"_ZTS5ph1_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !22, i64 32}
!50 = !{!"_ZTS19libraw_dng_levels_t", !8, i64 0, !9, i64 4, !8, i64 16420, !9, i64 16424, !22, i64 32840, !9, i64 32844, !9, i64 32860, !9, i64 32868, !8, i64 32884, !9, i64 32888, !9, i64 32904, !22, i64 32920, !22, i64 32924, !9, i64 32928}
!51 = !{!"_ZTS17libraw_imgother_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !52, i64 16, !8, i64 24, !9, i64 28, !53, i64 156, !9, i64 204, !9, i64 716, !9, i64 780}
!52 = !{!"long", !9, i64 0}
!53 = !{!"_ZTS17libraw_gps_info_t", !9, i64 0, !9, i64 12, !9, i64 24, !22, i64 36, !9, i64 40, !9, i64 41, !9, i64 42, !9, i64 43, !9, i64 44}
!54 = !{!"_ZTS18libraw_thumbnail_t", !55, i64 0, !17, i64 4, !17, i64 6, !8, i64 8, !8, i64 12, !20, i64 16}
!55 = !{!"_ZTS24LibRaw_thumbnail_formats", !9, i64 0}
!56 = !{!"_ZTS23libraw_thumbnail_list_t", !8, i64 0, !9, i64 8}
!57 = !{!"_ZTS16libraw_rawdata_t", !15, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !58, i64 32, !58, i64 40, !58, i64 48, !14, i64 56, !14, i64 64, !19, i64 72, !16, i64 512, !59, i64 696, !48, i64 712}
!58 = !{!"p1 float", !15, i64 0}
!59 = !{!"_ZTS31libraw_internal_output_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !17, i64 12, !17, i64 14}
!60 = !{!"p1 _ZTS10LibRaw_TLS", !15, i64 0}
!61 = !{!"_ZTS22libraw_internal_data_t", !62, i64 0, !59, i64 64, !65, i64 80, !67, i64 96, !68, i64 136}
!62 = !{!"_ZTS15internal_data_t", !63, i64 0, !64, i64 8, !8, i64 16, !20, i64 24, !26, i64 32, !26, i64 40, !9, i64 48}
!63 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !15, i64 0}
!64 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!65 = !{!"_ZTS13output_data_t", !66, i64 0, !66, i64 8}
!66 = !{!"p1 int", !15, i64 0}
!67 = !{!"_ZTS15identify_data_t", !8, i64 0, !26, i64 8, !26, i64 16, !8, i64 24, !8, i64 28, !8, i64 32}
!68 = !{!"_ZTS15unpacker_data_t", !17, i64 0, !9, i64 2, !9, i64 10, !8, i64 16, !26, i64 24, !26, i64 32, !26, i64 40, !26, i64 48, !26, i64 56, !26, i64 64, !26, i64 72, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !69, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !26, i64 144, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !70, i64 192, !9, i64 440, !8, i64 2488, !8, i64 2492, !17, i64 2496, !17, i64 2498, !8, i64 2500, !8, i64 2504, !8, i64 2508, !8, i64 2512, !8, i64 2516, !8, i64 2520, !8, i64 2524, !9, i64 2528, !17, i64 2608}
!69 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !9, i64 0}
!70 = !{!"_ZTS12pana8_tags_t", !9, i64 0, !9, i64 24, !17, i64 36, !9, i64 38, !9, i64 46, !9, i64 80, !9, i64 114, !17, i64 148, !17, i64 150, !9, i64 152, !9, i64 192, !9, i64 204, !9, i64 224, !9, i64 234}
!71 = !{!"p1 _ZTS6decode", !15, i64 0}
!72 = !{!"_ZTS13libraw_memmgr", !47, i64 0, !8, i64 8}
!73 = !{!"_ZTS18libraw_callbacks_t", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144}
!74 = !{!75, !75, i64 0}
!75 = !{!"_ZTS17LibRaw_exceptions", !9, i64 0}
!76 = !{!12, !14, i64 193784}
!77 = !{!12, !17, i64 18}
!78 = !{!12, !17, i64 16}
!79 = !{!12, !63, i64 381592}
!80 = !{!81, !81, i64 0}
!81 = !{!"vtable pointer", !10, i64 0}
!82 = !DISubprogram(name: "seek", linkageName: "_ZN26LibRaw_abstract_datastream4seekExi", scope: !84, file: !83, line: 102, type: !85, scopeLine: 102, containingType: !84, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!83 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_datastream.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "505b914805f57d87ebbd6647c463dab8")
!84 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "LibRaw_abstract_datastream", file: !83, line: 95, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS26LibRaw_abstract_datastream")
!85 = !DISubroutineType(types: !86)
!86 = !{!87, !88, !89, !87}
!87 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT64", file: !90, line: 109, baseType: !91)
!90 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_types.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "b83e9769365a38f23d349f0ab8a63a99")
!91 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!92 = !{!12, !8, i64 5552}
!93 = !{!17, !17, i64 0}
!94 = !{!12, !17, i64 24}
!95 = !{!12, !17, i64 20}
!96 = !{!12, !17, i64 26}
!97 = !{!12, !17, i64 22}
!98 = !{!12, !8, i64 153096}
!99 = distinct !{!99, !100}
!100 = !{!"llvm.loop.mustprogress"}
!101 = distinct !{!101, !100}
!102 = !{!12, !8, i64 5564}
!103 = !{!9, !9, i64 0}
!104 = !{!105, !8, i64 0}
!105 = !{!"_ZTSZN6LibRaw21pentax_4shot_load_rawEvE10movement_t", !8, i64 0, !8, i64 4}
!106 = !{!105, !8, i64 4}
!107 = !{!108, !8, i64 0}
!108 = !{!"_ZTS10tiff_ifd_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !26, i64 32, !26, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !109, i64 72, !8, i64 80, !109, i64 88, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !22, i64 124, !26, i64 128, !26, i64 136, !8, i64 144, !9, i64 148, !50, i64 488, !8, i64 33464}
!109 = !{!"p1 long long", !15, i64 0}
!110 = !{!108, !8, i64 4}
!111 = !{!108, !8, i64 8}
!112 = !{!108, !8, i64 24}
!113 = distinct !{!113, !100}
!114 = !{!108, !26, i64 32}
!115 = !{!12, !26, i64 381760}
!116 = !{!12, !9, i64 768432}
!117 = !{}
!118 = !{!8, !8, i64 0}
!119 = !{!12, !17, i64 381670}
!120 = !{!12, !8, i64 381828}
!121 = distinct !{!121, !100}
!122 = distinct !{!122, !100}
!123 = distinct !{!123, !100}
!124 = !{!12, !8, i64 32}
!125 = !{!12, !14, i64 193792}
!126 = !{!12, !15, i64 193776}
!127 = !{!12, !14, i64 8}
!128 = distinct !{!128, !100}
!129 = distinct !{!129, !100}
!130 = !DISubprogram(name: "read", linkageName: "_ZN26LibRaw_abstract_datastream4readEPvmm", scope: !84, file: !83, line: 101, type: !131, scopeLine: 101, containingType: !84, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
end_hunk_0

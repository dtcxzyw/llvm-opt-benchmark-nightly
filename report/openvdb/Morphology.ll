Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/Morphology?download=true
inline.NumInlined: 68333
inline.NumDeleted: 20965
loop-unroll.NumCompletelyUnrolled: 253
loop-unroll.NumRuntimeUnrolled: 335
loop-unroll.NumUnrolled: 1703
begin_hunk_0_@_ZSt13__introselectIPN7openvdb5v13_010PointIndexIjLj1EEElN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SB_SB_SE_T1_:bb.a
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph70, !llvm.loop !6837

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.036.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.0., %.lr.ph ] ; 3 uses
  %.02135.lcssa = phi ptr [ %2, %.lr.ph.preheader ], [ %..021, %.lr.ph ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @_ZSt13__heap_selectIPN7openvdb5v13_010PointIndexIjLj1EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SB_SB_SE_(ptr noundef %.036.lcssa, ptr noundef nonnull %i.g, ptr noundef %.02135.lcssa)
  %.sroa.0.0.copyload.i.i = load i32, ptr %.036.lcssa, align 4, !tbaa !464
  %i.h = load i32, ptr %1, align 4, !tbaa !464
  store i32 %i.h, ptr %.036.lcssa, align 4, !tbaa !464
  store i32 %.sroa.0.0.copyload.i.i, ptr %1, align 4, !tbaa !464
  br label %_ZSt16__insertion_sortIPN7openvdb5v13_010PointIndexIjLj1EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SB_SE_.exit

.lr.ph70:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0233469 = phi i64 [ %i.j, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.0213568 = phi ptr [ %..021, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.03667 = phi ptr [ %.0., %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 14 uses
  %i.i = phi i64 [ %i.af, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %i.j = add nsw i64 %.0233469, -1                ; 2 uses
  %i.k = lshr i64 %i.i, 3
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.03667, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.03667, i64 4 ; 4 uses
  %i.n = getelementptr inbounds i8, ptr %.0213568, i64 -4 ; 3 uses
  %i.o = load i32, ptr %i.m, align 4, !tbaa !2526 ; 5 uses
  %i.p = load i32, ptr %i.l, align 4, !tbaa !2526 ; 5 uses
  %i.q = icmp ult i32 %i.o, %i.p
  %i.r = load i32, ptr %i.n, align 4, !tbaa !2526 ; 6 uses
  br i1 %i.q, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph70
  %i.s = icmp ult i32 %i.p, %i.r
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.03667, align 4, !tbaa !464
  store i32 %i.p, ptr %.03667, align 4, !tbaa !464
  store i32 %.sroa.0.0.copyload.i.i.i.i, ptr %i.l, align 4, !tbaa !464
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_010PointIndexIjLj1EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SB_SB_SB_SE_.exit.i.preheader

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i32 %i.o, %i.r
  %.sroa.0.0.copyload.i.i22.i.i = load i32, ptr %.03667, align 4, !tbaa !464 ; 2 uses
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.r, ptr %.03667, align 4, !tbaa !464
  store i32 %.sroa.0.0.copyload.i.i22.i.i, ptr %i.n, align 4, !tbaa !464
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_010PointIndexIjLj1EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SB_SB_SB_SE_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  store i32 %i.o, ptr %.03667, align 4, !tbaa !464
  store i32 %.sroa.0.0.copyload.i.i22.i.i, ptr %i.m, align 4, !tbaa !464
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_010PointIndexIjLj1EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SB_SB_SB_SE_.exit.i.preheader

bb.g:                                             ; preds = %.lr.ph70
  %i.u = icmp ult i32 %i.o, %i.r
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i24.i.i = load i32, ptr %.03667, align 4, !tbaa !464
  store i32 %i.o, ptr %.03667, align 4, !tbaa !464
  store i32 %.sroa.0.0.copyload.i.i24.i.i, ptr %i.m, align 4, !tbaa !464
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_010PointIndexIjLj1EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SB_SB_SB_SE_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.v = icmp ult i32 %i.p, %i.r
  %.sroa.0.0.copyload.i.i25.i.i = load i32, ptr %.03667, align 4, !tbaa !464 ; 2 uses
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.r, ptr %.03667, align 4, !tbaa !464
  store i32 %.sroa.0.0.copyload.i.i25.i.i, ptr %i.n, align 4, !tbaa !464
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_010PointIndexIjLj1EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SB_SB_SB_SE_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  store i32 %i.p, ptr %.03667, align 4, !tbaa !464
  store i32 %.sroa.0.0.copyload.i.i25.i.i, ptr %i.l, align 4, !tbaa !464
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_010PointIndexIjLj1EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SB_SB_SB_SE_.exit.i.preheader

_ZSt22__move_median_to_firstIPN7openvdb5v13_010PointIndexIjLj1EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SB_SB_SB_SE_.exit.i.preheader: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_010PointIndexIjLj1EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SB_SB_SB_SE_.exit.i

_ZSt22__move_median_to_firstIPN7openvdb5v13_010PointIndexIjLj1EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SB_SB_SB_SE_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPN7openvdb5v13_010PointIndexIjLj1EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SB_SB_SB_SE_.exit.i.preheader, %bb.n
  %.013.i.i = phi ptr [ %.114.i.i, %bb.n ], [ %.0213568, %_ZSt22__move_median_to_firstIPN7openvdb5v13_010PointIndexIjLj1EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SB_SB_SB_SE_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.z, %bb.n ], [ %i.m, %_ZSt22__move_median_to_firstIPN7openvdb5v13_010PointIndexIjLj1EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SB_SB_SB_SE_.exit.i.preheader ]
  %i.w = load i32, ptr %.03667, align 4, !tbaa !2526 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIPN7openvdb5v13_010PointIndexIjLj1EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SB_SB_SB_SE_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPN7openvdb5v13_010PointIndexIjLj1EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SB_SB_SB_SE_.exit.i ], [ %i.z, %bb.l ] ; 7 uses
  %i.x = load i32, ptr %.1.i.i, align 4, !tbaa !2526 ; 2 uses
  %i.y = icmp ult i32 %i.x, %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4 ; 2 uses
  br i1 %i.y, label %bb.l, label %.preheader.i.i, !llvm.loop !6838

.preheader.i.i:                                   ; preds = %bb.l, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.l ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -4 ; 5 uses
  %i.aa = load i32, ptr %.114.i.i, align 4, !tbaa !2526 ; 2 uses
  %i.ab = icmp ult i32 %i.w, %i.aa
  br i1 %i.ab, label %.preheader.i.i, label %bb.m, !llvm.loop !6839

bb.m:                                             ; preds = %.preheader.i.i
  %i.ac = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.ac, label %bb.n, label %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_010PointIndexIjLj1EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEESB_SB_SB_SE_.exit

bb.n:                                             ; preds = %bb.m
  store i32 %i.aa, ptr %.1.i.i, align 4, !tbaa !464
  store i32 %i.x, ptr %.114.i.i, align 4, !tbaa !464
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_010PointIndexIjLj1EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SB_SB_SB_SE_.exit.i, !llvm.loop !6840

_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_010PointIndexIjLj1EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEESB_SB_SB_SE_.exit: ; preds = %bb.m
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %..021 = select i1 %.not, ptr %.1.i.i, ptr %.0213568 ; 4 uses
  %.0. = select i1 %.not, ptr %.03667, ptr %.1.i.i ; 4 uses
  %i.ad = ptrtoint ptr %..021 to i64
  %i.ae = ptrtoint ptr %.0. to i64                ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 12
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !6837

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_010PointIndexIjLj1EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEESB_SB_SB_SE_.exit, %bb.a
  %.021.lcssa = phi ptr [ %2, %bb.a ], [ %..021, %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_010PointIndexIjLj1EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEESB_SB_SB_SE_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.0., %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_010PointIndexIjLj1EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEESB_SB_SB_SE_.exit ] ; 8 uses
  %.lcssa30 = phi i64 [ %i.b, %bb.a ], [ %i.ae, %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_010PointIndexIjLj1EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEESB_SB_SB_SE_.exit ]
  %i.ah = icmp eq ptr %.0.lcssa, %.021.lcssa
  %.018.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 4 ; 2 uses
  %.not19.i = icmp eq ptr %.018.i, %.021.lcssa
  %or.cond = select i1 %i.ah, i1 true, i1 %.not19.i
  br i1 %or.cond, label %_ZSt16__insertion_sortIPN7openvdb5v13_010PointIndexIjLj1EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SB_SE_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %_ZSt13move_backwardIPN7openvdb5v13_010PointIndexIjLj1EEES4_ET0_T_S6_S5_.exit.i
  %.021.i = phi ptr [ %.0.i, %_ZSt13move_backwardIPN7openvdb5v13_010PointIndexIjLj1EEES4_ET0_T_S6_S5_.exit.i ], [ %.018.i, %._crit_edge ] ; 6 uses
  %.pn20.i = phi ptr [ %.021.i, %_ZSt13move_backwardIPN7openvdb5v13_010PointIndexIjLj1EEES4_ET0_T_S6_S5_.exit.i ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.ai = load i32, ptr %.021.i, align 4, !tbaa !2526 ; 4 uses
  %i.aj = load i32, ptr %.0.lcssa, align 4, !tbaa !2526 ; 2 uses
  %i.ak = icmp ult i32 %i.ai, %i.aj
  br i1 %i.ak, label %bb.o, label %bb.s

bb.o:                                             ; preds = %.lr.ph.i
  %i.al = ptrtoint ptr %.021.i to i64
  %i.am = sub i64 %i.al, %.lcssa30                ; 3 uses
  %i.an = ashr exact i64 %i.am, 2                 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 1
  br i1 %i.ao, label %bb.p, label %bb.q, !prof !1506

bb.p:                                             ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  %i.aq = sub nsw i64 0, %i.an
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.aq
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ar, ptr noundef nonnull align 4 dereferenceable(1) %.0.lcssa, i64 %i.am, i1 false)
  br label %_ZSt13move_backwardIPN7openvdb5v13_010PointIndexIjLj1EEES4_ET0_T_S6_S5_.exit.i

bb.q:                                             ; preds = %bb.o
  %i.as = icmp eq i64 %i.am, 4
  br i1 %i.as, label %bb.r, label %_ZSt13move_backwardIPN7openvdb5v13_010PointIndexIjLj1EEES4_ET0_T_S6_S5_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 4
  store i32 %i.aj, ptr %i.at, align 4, !tbaa !464
  br label %_ZSt13move_backwardIPN7openvdb5v13_010PointIndexIjLj1EEES4_ET0_T_S6_S5_.exit.i

bb.s:                                             ; preds = %.lr.ph.i
  %i.au = load i32, ptr %.pn20.i, align 4, !tbaa !2526 ; 2 uses
  %i.av = icmp ult i32 %i.ai, %i.au
  br i1 %i.av, label %.lr.ph.i.i, label %_ZSt13move_backwardIPN7openvdb5v13_010PointIndexIjLj1EEES4_ET0_T_S6_S5_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.i.i
  %i.aw = phi i32 [ %i.ax, %.lr.ph.i.i ], [ %i.au, %bb.s ]
  %.013.i.i26 = phi ptr [ %.0.i.i27, %.lr.ph.i.i ], [ %.pn20.i, %bb.s ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i26, %.lr.ph.i.i ], [ %.021.i, %bb.s ]
  store i32 %i.aw, ptr %.0912.i.i, align 4, !tbaa !464
  %.0.i.i27 = getelementptr inbounds i8, ptr %.013.i.i26, i64 -4 ; 2 uses
  %i.ax = load i32, ptr %.0.i.i27, align 4, !tbaa !2526 ; 2 uses
  %i.ay = icmp ult i32 %i.ai, %i.ax
  br i1 %i.ay, label %.lr.ph.i.i, label %_ZSt13move_backwardIPN7openvdb5v13_010PointIndexIjLj1EEES4_ET0_T_S6_S5_.exit.i, !llvm.loop !6841

_ZSt13move_backwardIPN7openvdb5v13_010PointIndexIjLj1EEES4_ET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i, %bb.s, %bb.r, %bb.q, %bb.p
  %.sink.i = phi ptr [ %.0.lcssa, %bb.r ], [ %.0.lcssa, %bb.p ], [ %.0.lcssa, %bb.q ], [ %.021.i, %bb.s ], [ %.013.i.i26, %.lr.ph.i.i ]
  store i32 %i.ai, ptr %.sink.i, align 4, !tbaa !464
  %.0.i = getelementptr inbounds nuw i8, ptr %.021.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %.021.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIPN7openvdb5v13_010PointIndexIjLj1EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SB_SE_.exit, label %.lr.ph.i, !llvm.loop !6842

_ZSt16__insertion_sortIPN7openvdb5v13_010PointIndexIjLj1EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SB_SE_.exit: ; preds = %_ZSt13move_backwardIPN7openvdb5v13_010PointIndexIjLj1EEES4_ET0_T_S6_S5_.exit.i, %._crit_edge, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIPN7openvdb5v13_010PointIndexIjLj1EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SB_SB_SE_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1874", align 1
  call void @_ZSt11__make_heapIPN7openvdb5v13_010PointIndexIjLj1EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SB_RSE_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr i64 %i.d, 2                         ; 3 uses
  %i.f = add nsw i64 %i.e, -1
  %i.g = lshr i64 %i.f, 1
  %i.h = icmp sgt i64 %i.e, 2
  %i.i = and i64 %i.d, 4
  %i.j = icmp eq i64 %i.i, 0                      ; 2 uses
  %i.k = add nsw i64 %i.e, -2                     ; 3 uses
  %i.l = ashr exact i64 %i.k, 1                   ; 2 uses
  br i1 %i.h, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %4 = or disjoint i64 %i.k, 1                    ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %4
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.d
  %.011.us = phi ptr [ %i.ak, %bb.d ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.o = load i32, ptr %.011.us, align 4, !tbaa !2526 ; 3 uses
  %i.p = load i32, ptr %0, align 4, !tbaa !2526   ; 2 uses
  %i.q = icmp ult i32 %i.o, %i.p
  br i1 %i.q, label %.lr.ph.i.i.preheader.us, label %bb.d

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  store i32 %i.p, ptr %.011.us, align 4, !tbaa !464
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.029.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.r = shl i64 %.029.i.i.us, 1                  ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [4 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.t, align 4, !tbaa !2526
  %i.x = load i32, ptr %i.v, align 4, !tbaa !2526
  %i.y = icmp ult i32 %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i.us
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.i.us
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !464
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !464
  %i.ad = icmp slt i64 %spec.select.i.i.us, %i.g
  br i1 %i.ad, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !217

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  br i1 %.not.i.us, label %_ZSt10__pop_heapIPN7openvdb5v13_010PointIndexIjLj1EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SB_SB_RSE_.exit.us, label %.lr.ph.i.i.i.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.ae = load i32, ptr %i.m, align 4, !tbaa !464
  store i32 %i.ae, ptr %i.n, align 4, !tbaa !464
  br label %.lr.ph.i.i.i.us.preheader

.lr.ph.i.i.i.us.preheader:                        ; preds = %.thread.i.us, %bb.b
  %.01317.i.i.i.us.ph = phi i64 [ %spec.select.i.i.us, %bb.b ], [ %4, %.thread.i.us ]
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %bb.c
  %.01317.i.i.i.us = phi i64 [ %.018.i.i910.i.us, %bb.c ], [ %.01317.i.i.i.us.ph, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %.018.in.i.i.i.us = add nsw i64 %.01317.i.i.i.us, -1
  %.018.i.i910.i.us = lshr i64 %.018.in.i.i.i.us, 1 ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i910.i.us
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !2526 ; 2 uses
  %i.ah = icmp ult i32 %i.ag, %i.o
  br i1 %i.ah, label %bb.c, label %_ZSt10__pop_heapIPN7openvdb5v13_010PointIndexIjLj1EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SB_SB_RSE_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %.01317.i.i.i.us
  store i32 %i.ag, ptr %i.ai, align 4, !tbaa !464
  %.not11.i.us = icmp eq i64 %.018.i.i910.i.us, 0
  br i1 %.not11.i.us, label %_ZSt10__pop_heapIPN7openvdb5v13_010PointIndexIjLj1EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SB_SB_RSE_.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !218

_ZSt10__pop_heapIPN7openvdb5v13_010PointIndexIjLj1EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SB_SB_RSE_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %bb.b
  %.013.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ %.01317.i.i.i.us, %.lr.ph.i.i.i.us ], [ 0, %bb.c ]
  %i.aj = getelementptr inbounds [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i.us
  store i32 %i.o, ptr %i.aj, align 4, !tbaa !464
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__pop_heapIPN7openvdb5v13_010PointIndexIjLj1EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SB_SB_RSE_.exit.us, %.lr.ph.split.us
  %i.ak = getelementptr inbounds nuw i8, ptr %.011.us, i64 4 ; 2 uses
  %i.al = icmp ult ptr %i.ak, %2
  br i1 %i.al, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !6843

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.am = icmp eq i64 %spec.select.i.i.us, %i.l
  %or.cond = select i1 %i.j, i1 %i.am, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  br i1 %i.j, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load i32, ptr %0, align 4, !tbaa !2526
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.ao = icmp eq i64 %i.k, 0
  br i1 %i.ao, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split.preheader

.lr.ph.split.split.us.split.preheader:            ; preds = %.lr.ph.split.split.us
  %.pre29 = load i32, ptr %0, align 4, !tbaa !2526
  br label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.e
  %.011.us12.us = phi ptr [ %i.av, %bb.e ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.ap = load i32, ptr %.011.us12.us, align 4, !tbaa !2526 ; 3 uses
  %i.aq = load i32, ptr %0, align 4, !tbaa !2526  ; 2 uses
  %i.ar = icmp ult i32 %i.ap, %i.aq
  br i1 %i.ar, label %._crit_edge.i.i.us13.us, label %bb.e

._crit_edge.i.i.us13.us:                          ; preds = %.lr.ph.split.split.us.split.us
  store i32 %i.aq, ptr %.011.us12.us, align 4, !tbaa !464
  %i.as = load i32, ptr %i.an, align 4, !tbaa !464 ; 2 uses
  store i32 %i.as, ptr %0, align 4, !tbaa !464
  %i.at = icmp uge i32 %i.as, %i.ap
  %spec.select = zext i1 %i.at to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %spec.select
  store i32 %i.ap, ptr %i.au, align 4, !tbaa !464
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.us13.us, %.lr.ph.split.split.us.split.us
  %i.av = getelementptr inbounds nuw i8, ptr %.011.us12.us, i64 4 ; 2 uses
  %i.aw = icmp ult ptr %i.av, %2
  br i1 %i.aw, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !6843

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us.split.preheader, %bb.f
  %i.ax = phi i32 [ %i.ba, %bb.f ], [ %.pre29, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %.011.us12 = phi ptr [ %i.bb, %bb.f ], [ %1, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %i.ay = load i32, ptr %.011.us12, align 4, !tbaa !2526 ; 3 uses
  %i.az = icmp ult i32 %i.ay, %i.ax
  br i1 %i.az, label %._crit_edge.i.i.us13, label %bb.f

._crit_edge.i.i.us13:                             ; preds = %.lr.ph.split.split.us.split
  store i32 %i.ax, ptr %.011.us12, align 4, !tbaa !464
  store i32 %i.ay, ptr %0, align 4, !tbaa !464
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.us13, %.lr.ph.split.split.us.split
  %i.ba = phi i32 [ %i.ay, %._crit_edge.i.i.us13 ], [ %i.ax, %.lr.ph.split.split.us.split ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.011.us12, i64 4 ; 2 uses
  %i.bc = icmp ult ptr %i.bb, %2
  br i1 %i.bc, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !6843

._crit_edge:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.g
  %i.bd = phi i32 [ %i.bg, %bb.g ], [ %.pre, %.lr.ph.split.split.preheader ] ; 3 uses
  %.011 = phi ptr [ %i.bh, %bb.g ], [ %1, %.lr.ph.split.split.preheader ] ; 3 uses
  %i.be = load i32, ptr %.011, align 4, !tbaa !2526 ; 3 uses
  %i.bf = icmp ult i32 %i.be, %i.bd
  br i1 %i.bf, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.split
  store i32 %i.bd, ptr %.011, align 4, !tbaa !464
  store i32 %i.be, ptr %0, align 4, !tbaa !464
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i
  %i.bg = phi i32 [ %i.bd, %.lr.ph.split.split ], [ %i.be, %._crit_edge.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.011, i64 4 ; 2 uses
  %i.bi = icmp ult ptr %i.bh, %2
  br i1 %i.bi, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !6843
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPN7openvdb5v13_010PointIndexIjLj1EEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SB_RSE_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %3 = or disjoint i64 %i.f, 1                    ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPN7openvdb5v13_010PointIndexIjLj1EEElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SE_SE_T1_T2_.exit.us
  %.015.us = phi i64 [ %i.ak, %_ZSt13__adjust_heapIPN7openvdb5v13_010PointIndexIjLj1EEElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SE_SE_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015.us
  %.sroa.02.0.copyload.us = load i32, ptr %i.o, align 4, !tbaa !464 ; 2 uses
  %i.p = icmp slt i64 %.015.us, %i.i
  br i1 %i.p, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPN7openvdb5v13_010PointIndexIjLj1EEElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SE_SE_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.015.us, %.split.us ] ; 2 uses
  %i.q = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr [4 x i8], ptr %0, i64 %i.q
  %i.u = getelementptr i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.s, align 4, !tbaa !2526
  %i.w = load i32, ptr %i.u, align 4, !tbaa !2526
  %i.x = icmp ult i32 %i.v, %i.w
  %i.y = or disjoint i64 %i.q, 1
  %spec.select.i.us = select i1 %i.x, i64 %i.y, i64 %i.r ; 6 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.us
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !464
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !464
  %i.ac = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ac, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !217

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ad = icmp sgt i64 %spec.select.i.us, %.015.us
  br i1 %i.ad, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPN7openvdb5v13_010PointIndexIjLj1EEElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SE_SE_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i.us
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !2526 ; 2 uses
  %i.ag = icmp ult i32 %i.af, %.sroa.02.0.copyload.us
  br i1 %i.ag, label %bb.c, label %_ZSt13__adjust_heapIPN7openvdb5v13_010PointIndexIjLj1EEElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SE_SE_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i.i.us
  store i32 %i.af, ptr %i.ah, align 4, !tbaa !464
  %i.ai = icmp sgt i64 %.018.i.i.us, %.015.us
  br i1 %i.ai, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPN7openvdb5v13_010PointIndexIjLj1EEElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SE_SE_T1_T2_.exit.us, !llvm.loop !218

_ZSt13__adjust_heapIPN7openvdb5v13_010PointIndexIjLj1EEElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SE_SE_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.015.us, %.split.us ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i32 %.sroa.02.0.copyload.us, ptr %i.aj, align 4, !tbaa !464
  %.not.us = icmp eq i64 %.015.us, 0
  %i.ak = add nsw i64 %.015.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !6844

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPN7openvdb5v13_010PointIndexIjLj1EEElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SE_SE_T1_T2_.exit
  %.015 = phi i64 [ %i.bj, %_ZSt13__adjust_heapIPN7openvdb5v13_010PointIndexIjLj1EEElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SE_SE_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015
  %.sroa.02.0.copyload = load i32, ptr %i.al, align 4, !tbaa !464 ; 2 uses
  %i.am = icmp slt i64 %.015, %i.i
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.015, %.split ] ; 2 uses
  %i.an = shl i64 %.029.i, 1                      ; 3 uses
  %i.ao = add i64 %i.an, 2                        ; 2 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ao
  %i.aq = getelementptr [4 x i8], ptr %0, i64 %i.an
  %i.ar = getelementptr i8, ptr %i.aq, i64 4
  %i.as = load i32, ptr %i.ap, align 4, !tbaa !2526
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !2526
  %i.au = icmp ult i32 %i.as, %i.at
  %i.av = or disjoint i64 %i.an, 1
  %spec.select.i = select i1 %i.au, i64 %i.av, i64 %i.ao ; 4 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.ax = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !464
  store i32 %i.ay, ptr %i.ax, align 4, !tbaa !464
  %i.az = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.az, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !217

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.015, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ba = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.ba, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bb = load i32, ptr %i.m, align 4, !tbaa !464
  store i32 %i.bb, ptr %i.n, align 4, !tbaa !464
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bc = icmp sgt i64 %.1.i, %.015
  br i1 %i.bc, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPN7openvdb5v13_010PointIndexIjLj1EEElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SE_SE_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01317.i.i = phi i64 [ %.018.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !2526 ; 2 uses
  %i.bf = icmp ult i32 %i.be, %.sroa.02.0.copyload
  br i1 %i.bf, label %bb.f, label %_ZSt13__adjust_heapIPN7openvdb5v13_010PointIndexIjLj1EEElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SE_SE_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i.i
  store i32 %i.be, ptr %i.bg, align 4, !tbaa !464
  %i.bh = icmp sgt i64 %.018.i.i, %.015
  br i1 %i.bh, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPN7openvdb5v13_010PointIndexIjLj1EEElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SE_SE_T1_T2_.exit, !llvm.loop !218

_ZSt13__adjust_heapIPN7openvdb5v13_010PointIndexIjLj1EEElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SE_SE_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i32 %.sroa.02.0.copyload, ptr %i.bi, align 4, !tbaa !464
  %.not = icmp eq i64 %.015, 0
  %i.bj = add nsw i64 %.015, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !6844

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPN7openvdb5v13_010PointIndexIjLj1EEElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SE_SE_T1_T2_.exit.us, %_ZSt13__adjust_heapIPN7openvdb5v13_010PointIndexIjLj1EEElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS3_Lj3EE9medianAllES4_EUlRKT_RKT0_E_EEEvSB_SE_SE_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EE18makeChildNodeEmptyEjRKS6_(ptr noundef nonnull align 8 dereferenceable(33808) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32768
  %i.b = lshr i32 %1, 6
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.c ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !513  ; 2 uses
  %i.f = and i32 %1, 63
  %i.g = zext nneg i32 %i.f to i64
  %i.h = shl nuw i64 1, %i.g                      ; 2 uses
  %i.i = and i64 %i.e, %i.h
  %.not.i.i.i = icmp eq i64 %i.i, 0
  %i.j = zext i32 %1 to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.j ; 3 uses
  br i1 %.not.i.i.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EE14unsetChildNodeEjRKS6_.exit.thread, label %_ZN7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EE14unsetChildNodeEjRKS6_.exit

_ZN7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EE14unsetChildNodeEjRKS6_.exit.thread: ; preds = %bb.a
  %i.l = load i32, ptr %2, align 4, !tbaa !464
  store i32 %i.l, ptr %i.k, align 8, !tbaa !464
  br label %bb.i

_ZN7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EE14unsetChildNodeEjRKS6_.exit: ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !485  ; 7 uses
  %i.n = xor i64 %i.h, -1
  %i.o = and i64 %i.e, %i.n
  store i64 %i.o, ptr %i.d, align 8, !tbaa !513
  %i.p = load i32, ptr %2, align 4, !tbaa !464
  store i32 %i.p, ptr %i.k, align 8, !tbaa !464
  %i.q = icmp eq ptr %i.m, null
  br i1 %i.q, label %bb.i, label %bb.b

bb.b:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EE14unsetChildNodeEjRKS6_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2565 ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN7openvdb5v13_06points12AttributeSetESt14default_deleteIS3_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN7openvdb5v13_06points12AttributeSetEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN7openvdb5v13_06points12AttributeSetEEclEPS3_.exit.i.i: ; preds = %bb.b
  tail call void @_ZN7openvdb5v13_06points12AttributeSetD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.s) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 40) #30
  br label %_ZNSt10unique_ptrIN7openvdb5v13_06points12AttributeSetESt14default_deleteIS3_EED2Ev.exit.i

_ZNSt10unique_ptrIN7openvdb5v13_06points12AttributeSetESt14default_deleteIS3_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_06points12AttributeSetEEclEPS3_.exit.i.i, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.u = load atomic i32, ptr %i.t seq_cst, align 8
  %.not.i.i.i2 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i2, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_06points12AttributeSetESt14default_deleteIS3_EED2Ev.exit.i
  %i.v = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferINS0_10PointIndexIjLj1EEELj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(106) %i.m)
          to label %_ZN7openvdb5v13_06points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EED2Ev.exit unwind label %bb.h ; 0 uses

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_06points12AttributeSetESt14default_deleteIS3_EED2Ev.exit.i
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !485
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %_ZN7openvdb5v13_06points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load atomic i32, ptr %i.t seq_cst, align 8
  %.not3.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not3.i.i.i.i, label %bb.f, label %_ZN7openvdb5v13_06points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !485  ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZN7openvdb5v13_06points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.y) #30
  br label %_ZN7openvdb5v13_06points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EED2Ev.exit

bb.h:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
end_hunk_0
begin_hunk_1_@_ZSt13__introselectIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEElN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_T0_T1_:bb.a
  %i.k = lshr i64 %i.i, 4
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.03454, i64 %i.k ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.03454, i64 8 ; 6 uses
  %i.n = getelementptr inbounds i8, ptr %.0213355, i64 -8 ; 5 uses
  %i.o = load i32, ptr %i.m, align 4, !tbaa !2526 ; 3 uses
  %i.p = load i32, ptr %i.l, align 4, !tbaa !2526 ; 3 uses
  %i.q = icmp ult i32 %i.o, %i.p
  %i.r = load i32, ptr %i.n, align 4, !tbaa !2526 ; 4 uses
  br i1 %i.q, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph57
  %i.s = icmp ult i32 %i.p, %i.r
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.03454, align 8, !tbaa !485
  %i.t = load i64, ptr %i.l, align 8, !tbaa !485
  store i64 %i.t, ptr %.03454, align 8, !tbaa !485
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.l, align 8, !tbaa !485
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i.preheader

bb.d:                                             ; preds = %bb.b
  %i.u = icmp ult i32 %i.o, %i.r
  %.sroa.0.0.copyload.i.i22.i.i = load ptr, ptr %.03454, align 8, !tbaa !485 ; 2 uses
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.n, align 8, !tbaa !485
  store i64 %i.v, ptr %.03454, align 8, !tbaa !485
  store ptr %.sroa.0.0.copyload.i.i22.i.i, ptr %i.n, align 8, !tbaa !485
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  %i.w = load i64, ptr %i.m, align 8, !tbaa !485
  store i64 %i.w, ptr %.03454, align 8, !tbaa !485
  store ptr %.sroa.0.0.copyload.i.i22.i.i, ptr %i.m, align 8, !tbaa !485
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i.preheader

bb.g:                                             ; preds = %.lr.ph57
  %i.x = icmp ult i32 %i.o, %i.r
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i24.i.i = load ptr, ptr %.03454, align 8, !tbaa !485
  %i.y = load i64, ptr %i.m, align 8, !tbaa !485
  store i64 %i.y, ptr %.03454, align 8, !tbaa !485
  store ptr %.sroa.0.0.copyload.i.i24.i.i, ptr %i.m, align 8, !tbaa !485
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.z = icmp ult i32 %i.p, %i.r
  %.sroa.0.0.copyload.i.i25.i.i = load ptr, ptr %.03454, align 8, !tbaa !485 ; 2 uses
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !485
  store i64 %i.aa, ptr %.03454, align 8, !tbaa !485
  store ptr %.sroa.0.0.copyload.i.i25.i.i, ptr %i.n, align 8, !tbaa !485
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  %i.ab = load i64, ptr %i.l, align 8, !tbaa !485
  store i64 %i.ab, ptr %.03454, align 8, !tbaa !485
  store ptr %.sroa.0.0.copyload.i.i25.i.i, ptr %i.l, align 8, !tbaa !485
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i.preheader: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i

_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i.preheader, %bb.n
  %.013.i.i = phi ptr [ %.114.i.i, %bb.n ], [ %.0213355, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.af, %bb.n ], [ %i.m, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i.preheader ]
  %i.ac = load i32, ptr %.03454, align 4, !tbaa !2526 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i ], [ %i.af, %bb.l ] ; 8 uses
  %i.ad = load i32, ptr %.1.i.i, align 4, !tbaa !2526
  %i.ae = icmp ult i32 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.ae, label %bb.l, label %.preheader.i.i, !llvm.loop !6857

.preheader.i.i:                                   ; preds = %bb.l, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.l ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 6 uses
  %i.ag = load i32, ptr %.114.i.i, align 4, !tbaa !2526
  %i.ah = icmp ult i32 %i.ac, %i.ag
  br i1 %i.ah, label %.preheader.i.i, label %bb.m, !llvm.loop !6858

bb.m:                                             ; preds = %.preheader.i.i
  %i.ai = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.ai, label %bb.n, label %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEESP_SP_SP_T0_.exit

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i.i.i13.i = load ptr, ptr %.1.i.i, align 8, !tbaa !485
  %i.aj = load i64, ptr %.114.i.i, align 8, !tbaa !485
  store i64 %i.aj, ptr %.1.i.i, align 8, !tbaa !485
  store ptr %.sroa.0.0.copyload.i.i.i13.i, ptr %.114.i.i, align 8, !tbaa !485
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i, !llvm.loop !6859

_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEESP_SP_SP_T0_.exit: ; preds = %bb.m
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %..021 = select i1 %.not, ptr %.1.i.i, ptr %.0213355 ; 4 uses
  %.0. = select i1 %.not, ptr %.03454, ptr %.1.i.i ; 4 uses
  %i.ak = ptrtoint ptr %..021 to i64
  %i.al = ptrtoint ptr %.0. to i64                ; 2 uses
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = icmp sgt i64 %i.am, 24
  br i1 %i.an, label %.lr.ph, label %._crit_edge, !llvm.loop !6856

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEESP_SP_SP_T0_.exit, %bb.a
  %.021.lcssa = phi ptr [ %2, %bb.a ], [ %..021, %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEESP_SP_SP_T0_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.0., %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEESP_SP_SP_T0_.exit ] ; 7 uses
  %.lcssa28 = phi i64 [ %i.b, %bb.a ], [ %i.al, %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEESP_SP_SP_T0_.exit ]
  %i.ao = icmp eq ptr %.0.lcssa, %.021.lcssa
  %.018.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8 ; 2 uses
  %.not19.i = icmp eq ptr %.018.i, %.021.lcssa
  %or.cond = select i1 %i.ao, i1 true, i1 %.not19.i
  br i1 %or.cond, label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.t
  %.021.i = phi ptr [ %.0.i, %bb.t ], [ %.018.i, %._crit_edge ] ; 8 uses
  %.pn20.i = phi ptr [ %.021.i, %bb.t ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.ap = load i32, ptr %.021.i, align 4, !tbaa !2526
  %i.aq = load i32, ptr %.0.lcssa, align 4, !tbaa !2526
  %i.ar = icmp ult i32 %i.ap, %i.aq
  br i1 %i.ar, label %bb.o, label %bb.s

bb.o:                                             ; preds = %.lr.ph.i
  %.sroa.01.0.copyload.i = load ptr, ptr %.021.i, align 8, !tbaa !485
  %i.as = ptrtoint ptr %.021.i to i64
  %i.at = sub i64 %i.as, %.lcssa28                ; 3 uses
  %i.au = ashr exact i64 %i.at, 3                 ; 2 uses
  %i.av = icmp sgt i64 %i.au, 1
  br i1 %i.av, label %bb.p, label %bb.q, !prof !1506

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 16
  %i.ax = sub nsw i64 0, %i.au
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ax
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %.0.lcssa, i64 %i.at, i1 false)
  br label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEESA_ET0_T_SC_SB_.exit.i

bb.q:                                             ; preds = %bb.o
  %i.az = icmp eq i64 %i.at, 8
  br i1 %i.az, label %bb.r, label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEESA_ET0_T_SC_SB_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  %i.bb = load i64, ptr %.0.lcssa, align 8, !tbaa !485
  store i64 %i.bb, ptr %i.ba, align 8, !tbaa !485
  br label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEESA_ET0_T_SC_SB_.exit.i

_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEESA_ET0_T_SC_SB_.exit.i: ; preds = %bb.r, %bb.q, %bb.p
  store ptr %.sroa.01.0.copyload.i, ptr %.0.lcssa, align 8, !tbaa !485
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph.i
  %i.bc = load i64, ptr %.021.i, align 8, !tbaa !485 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.bc to i32 ; 2 uses
  %i.bd = load i32, ptr %.pn20.i, align 4, !tbaa !2526
  %i.be = icmp ugt i32 %i.bd, %.sroa.0.0.extract.trunc.i.i
  br i1 %i.be, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.i.i
  %.013.i.i26 = phi ptr [ %.0.i.i27, %.lr.ph.i.i ], [ %.pn20.i, %bb.s ] ; 4 uses
  %.0912.i.i = phi ptr [ %.013.i.i26, %.lr.ph.i.i ], [ %.021.i, %bb.s ]
  %i.bf = load i64, ptr %.013.i.i26, align 8, !tbaa !485
  store i64 %i.bf, ptr %.0912.i.i, align 8, !tbaa !485
  %.0.i.i27 = getelementptr inbounds i8, ptr %.013.i.i26, i64 -8 ; 2 uses
  %i.bg = load i32, ptr %.0.i.i27, align 8, !tbaa !2526
  %i.bh = icmp ugt i32 %i.bg, %.sroa.0.0.extract.trunc.i.i
  br i1 %i.bh, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_T0_.exit.i, !llvm.loop !6860

_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.s
  %.09.lcssa.i.i = phi ptr [ %.021.i, %bb.s ], [ %.013.i.i26, %.lr.ph.i.i ]
  store i64 %i.bc, ptr %.09.lcssa.i.i, align 8, !tbaa !485
  br label %bb.t

bb.t:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_T0_.exit.i, %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEESA_ET0_T_SC_SB_.exit.i
  %.0.i = getelementptr inbounds nuw i8, ptr %.021.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %.021.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_T0_.exit, label %.lr.ph.i, !llvm.loop !6861

_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_T0_.exit: ; preds = %bb.t, %._crit_edge, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1883", align 1
  call void @_ZSt11__make_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr i64 %i.d, 3                         ; 3 uses
  %i.f = add nsw i64 %i.e, -1
  %i.g = lshr i64 %i.f, 1
  %i.h = icmp sgt i64 %i.e, 2
  %i.i = and i64 %i.d, 8
  %i.j = icmp eq i64 %i.i, 0                      ; 2 uses
  %i.k = add nsw i64 %i.e, -2                     ; 3 uses
  %i.l = ashr exact i64 %i.k, 1                   ; 2 uses
  br i1 %i.h, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %4 = or disjoint i64 %i.k, 1                    ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.e
  %.011.us = phi ptr [ %i.aq, %bb.e ], [ %1, %.lr.ph.split.us.preheader ] ; 4 uses
  %i.o = load i32, ptr %.011.us, align 4, !tbaa !2526
  %i.p = load i32, ptr %0, align 4, !tbaa !2526
  %i.q = icmp ult i32 %i.o, %i.p
  br i1 %i.q, label %.lr.ph.i.i.preheader.us, label %bb.e

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  %.sroa.02.0.copyload.i.us = load ptr, ptr %.011.us, align 8, !tbaa !485 ; 2 uses
  %i.r = load i64, ptr %0, align 8, !tbaa !485
  store i64 %i.r, ptr %.011.us, align 8, !tbaa !485
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.029.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.s = shl i64 %.029.i.i.us, 1                  ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr [8 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.u, align 4, !tbaa !2526
  %i.y = load i32, ptr %i.w, align 4, !tbaa !2526
  %i.z = icmp ult i32 %i.x, %i.y
  %i.aa = or disjoint i64 %i.s, 1
  %spec.select.i.i.us = select i1 %i.z, i64 %i.aa, i64 %i.t ; 6 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.us
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.i.us
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !485
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !485
  %i.ae = icmp slt i64 %spec.select.i.i.us, %i.g
  br i1 %i.ae, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !220

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  %i.af = ptrtoint ptr %.sroa.02.0.copyload.i.us to i64 ; 2 uses
  br i1 %.not.i.us, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_RT0_.exit.us, label %.lr.ph.i.i.i.us

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !485
  store i64 %i.ag, ptr %i.n, align 8, !tbaa !485
  %i.ah = ptrtoint ptr %.sroa.02.0.copyload.i.us to i64
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.thread.i.us, %bb.b
  %i.ai = phi i64 [ %i.ah, %.thread.i.us ], [ %i.af, %bb.b ] ; 3 uses
  %.1.i10.i.us = phi i64 [ %4, %.thread.i.us ], [ %spec.select.i.i.us, %bb.b ]
  %.sroa.0.0.extract.trunc.i.i.i.us = trunc i64 %i.ai to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.i.us
  %.01317.i.i.i.us = phi i64 [ %.1.i10.i.us, %.lr.ph.i.i.i.us ], [ %.018.i.i1112.i.us, %bb.d ] ; 3 uses
  %.018.in.i.i.i.us = add nsw i64 %.01317.i.i.i.us, -1
  %.018.i.i1112.i.us = lshr i64 %.018.in.i.i.i.us, 1 ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i1112.i.us ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !2526
  %i.al = icmp ult i32 %i.ak, %.sroa.0.0.extract.trunc.i.i.i.us
  br i1 %i.al, label %bb.d, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_RT0_.exit.us

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i.us
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !485
  store i64 %i.an, ptr %i.am, align 8, !tbaa !485
  %.not13.i.us = icmp eq i64 %.018.i.i1112.i.us, 0
  br i1 %.not13.i.us, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_RT0_.exit.us, label %bb.c, !llvm.loop !221

_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_RT0_.exit.us: ; preds = %bb.c, %bb.d, %bb.b
  %i.ao = phi i64 [ %i.af, %bb.b ], [ %i.ai, %bb.d ], [ %i.ai, %bb.c ]
  %.013.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ %.01317.i.i.i.us, %bb.c ], [ 0, %bb.d ]
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.us
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !485
  br label %bb.e

bb.e:                                             ; preds = %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_RT0_.exit.us, %.lr.ph.split.us
  %i.aq = getelementptr inbounds nuw i8, ptr %.011.us, i64 8 ; 2 uses
  %i.ar = icmp ult ptr %i.aq, %2
  br i1 %i.ar, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !6862

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.as = icmp eq i64 %spec.select.i.i.us, %i.l
  %or.cond = select i1 %i.j, i1 %i.as, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %i.j, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load i32, ptr %0, align 4, !tbaa !2526
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.au = icmp eq i64 %i.k, 0
  br i1 %i.au, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split.preheader

.lr.ph.split.split.us.split.preheader:            ; preds = %.lr.ph.split.split.us
  %.pre30 = load i32, ptr %0, align 4, !tbaa !2526
  br label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.f
  %.011.us12.us = phi ptr [ %i.be, %bb.f ], [ %1, %.lr.ph.split.split.us ] ; 4 uses
  %i.av = load i32, ptr %.011.us12.us, align 4, !tbaa !2526
  %i.aw = load i32, ptr %0, align 4, !tbaa !2526
  %i.ax = icmp ult i32 %i.av, %i.aw
  br i1 %i.ax, label %._crit_edge.i.i.us13.us, label %bb.f

._crit_edge.i.i.us13.us:                          ; preds = %.lr.ph.split.split.us.split.us
  %.sroa.02.0.copyload.i.us14.us = load ptr, ptr %.011.us12.us, align 8, !tbaa !485
  %i.ay = load i64, ptr %0, align 8, !tbaa !485
  store i64 %i.ay, ptr %.011.us12.us, align 8, !tbaa !485
  %i.az = load i64, ptr %i.at, align 8, !tbaa !485 ; 2 uses
  store i64 %i.az, ptr %0, align 8, !tbaa !485
  %i.ba = ptrtoint ptr %.sroa.02.0.copyload.i.us14.us to i64 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i.us16.us = trunc i64 %i.ba to i32
  %i.bb = trunc i64 %i.az to i32
  %i.bc = icmp uge i32 %i.bb, %.sroa.0.0.extract.trunc.i.i.i.us16.us
  %spec.select = zext i1 %i.bc to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %spec.select
  store i64 %i.ba, ptr %i.bd, align 8, !tbaa !485
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.us13.us, %.lr.ph.split.split.us.split.us
  %i.be = getelementptr inbounds nuw i8, ptr %.011.us12.us, i64 8 ; 2 uses
  %i.bf = icmp ult ptr %i.be, %2
  br i1 %i.bf, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !6862

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us.split.preheader, %bb.g
  %i.bg = phi i32 [ %i.bm, %bb.g ], [ %.pre30, %.lr.ph.split.split.us.split.preheader ] ; 2 uses
  %.011.us12 = phi ptr [ %i.bn, %bb.g ], [ %1, %.lr.ph.split.split.us.split.preheader ] ; 4 uses
  %i.bh = load i32, ptr %.011.us12, align 4, !tbaa !2526
  %i.bi = icmp ult i32 %i.bh, %i.bg
  br i1 %i.bi, label %._crit_edge.i.i.us13, label %bb.g

._crit_edge.i.i.us13:                             ; preds = %.lr.ph.split.split.us.split
  %.sroa.02.0.copyload.i.us14 = load ptr, ptr %.011.us12, align 8, !tbaa !485
  %i.bj = load i64, ptr %0, align 8, !tbaa !485
  store i64 %i.bj, ptr %.011.us12, align 8, !tbaa !485
  %i.bk = ptrtoint ptr %.sroa.02.0.copyload.i.us14 to i64 ; 2 uses
  store i64 %i.bk, ptr %0, align 8, !tbaa !485
  %i.bl = trunc i64 %i.bk to i32
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.us13, %.lr.ph.split.split.us.split
  %i.bm = phi i32 [ %i.bl, %._crit_edge.i.i.us13 ], [ %i.bg, %.lr.ph.split.split.us.split ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.011.us12, i64 8 ; 2 uses
  %i.bo = icmp ult ptr %i.bn, %2
  br i1 %i.bo, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !6862

._crit_edge:                                      ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.a
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.h
  %i.bp = phi i32 [ %i.bv, %bb.h ], [ %.pre, %.lr.ph.split.split.preheader ] ; 2 uses
  %.011 = phi ptr [ %i.bw, %bb.h ], [ %1, %.lr.ph.split.split.preheader ] ; 4 uses
  %i.bq = load i32, ptr %.011, align 4, !tbaa !2526
  %i.br = icmp ult i32 %i.bq, %i.bp
  br i1 %i.br, label %._crit_edge.i.i, label %bb.h

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.split
  %.sroa.02.0.copyload.i = load ptr, ptr %.011, align 8, !tbaa !485
  %i.bs = load i64, ptr %0, align 8, !tbaa !485
  store i64 %i.bs, ptr %.011, align 8, !tbaa !485
  %i.bt = ptrtoint ptr %.sroa.02.0.copyload.i to i64 ; 2 uses
  store i64 %i.bt, ptr %0, align 8, !tbaa !485
  %i.bu = trunc i64 %i.bt to i32
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i
  %i.bv = phi i32 [ %i.bp, %.lr.ph.split.split ], [ %i.bu, %._crit_edge.i.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.011, i64 8 ; 2 uses
  %i.bx = icmp ult ptr %i.bw, %2
  br i1 %i.bx, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !6862
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %3 = or disjoint i64 %i.f, 1                    ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_T0_SW_T1_T2_.exit.us
  %.015.us = phi i64 [ %i.ao, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_T0_SW_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us
  %.sroa.02.0.copyload.us = load ptr, ptr %i.o, align 8, !tbaa !485 ; 2 uses
  %i.p = icmp slt i64 %.015.us, %i.i
  br i1 %i.p, label %.lr.ph.i.us, label %._crit_edge.i.us.thread

._crit_edge.i.us.thread:                          ; preds = %.split.us
  %i.q = ptrtoint ptr %.sroa.02.0.copyload.us to i64
  br label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_T0_SW_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.015.us, %.split.us ] ; 2 uses
  %i.r = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [8 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.t, align 4, !tbaa !2526
  %i.x = load i32, ptr %i.v, align 4, !tbaa !2526
  %i.y = icmp ult i32 %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.us
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !485
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !485
  %i.ad = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ad, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !220

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ae = icmp sgt i64 %spec.select.i.us, %.015.us
  %i.af = ptrtoint ptr %.sroa.02.0.copyload.us to i64 ; 4 uses
  br i1 %i.ae, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_T0_SW_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %.sroa.0.0.extract.trunc.i.i.us = trunc i64 %i.af to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.us
  %.01317.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.d ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i.us ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !2526
  %i.ai = icmp ult i32 %i.ah, %.sroa.0.0.extract.trunc.i.i.us
  br i1 %i.ai, label %bb.d, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_T0_SW_T1_T2_.exit.us

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i.us
  %i.ak = load i64, ptr %i.ag, align 8, !tbaa !485
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !485
  %i.al = icmp sgt i64 %.018.i.i.us, %.015.us
  br i1 %i.al, label %bb.c, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_T0_SW_T1_T2_.exit.us, !llvm.loop !221

_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_T0_SW_T1_T2_.exit.us: ; preds = %bb.c, %bb.d, %._crit_edge.i.us.thread, %._crit_edge.i.us
  %i.am = phi i64 [ %i.af, %._crit_edge.i.us ], [ %i.q, %._crit_edge.i.us.thread ], [ %i.af, %bb.d ], [ %i.af, %bb.c ]
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.015.us, %._crit_edge.i.us.thread ], [ %.01317.i.i.us, %bb.c ], [ %.018.i.i.us, %bb.d ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i64 %i.am, ptr %i.an, align 8, !tbaa !485
  %.not.us = icmp eq i64 %.015.us, 0
  %i.ao = add nsw i64 %.015.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !6863

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_T0_SW_T1_T2_.exit
  %.015 = phi i64 [ %i.bp, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_T0_SW_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015
  %.sroa.02.0.copyload = load ptr, ptr %i.ap, align 8, !tbaa !485
  %i.aq = icmp slt i64 %.015, %i.i
  br i1 %i.aq, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.015, %.split ] ; 2 uses
  %i.ar = shl i64 %.029.i, 1                      ; 3 uses
  %i.as = add i64 %i.ar, 2                        ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %0, i64 %i.as
  %i.au = getelementptr [8 x i8], ptr %0, i64 %i.ar
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !2526
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !2526
  %i.ay = icmp ult i32 %i.aw, %i.ax
  %i.az = or disjoint i64 %i.ar, 1
  %spec.select.i = select i1 %i.ay, i64 %i.az, i64 %i.as ; 4 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !485
  store i64 %i.bc, ptr %i.bb, align 8, !tbaa !485
  %i.bd = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bd, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !220

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.015, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.be = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.be, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.bf = load i64, ptr %i.m, align 8, !tbaa !485
  store i64 %i.bf, ptr %i.n, align 8, !tbaa !485
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.e ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bg = icmp sgt i64 %.1.i, %.015
  %i.bh = ptrtoint ptr %.sroa.02.0.copyload to i64 ; 2 uses
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_T0_SW_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.f
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.bh to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.01317.i.i = phi i64 [ %.1.i, %.lr.ph.i.i ], [ %.018.i.i, %bb.h ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !2526
  %i.bk = icmp ult i32 %i.bj, %.sroa.0.0.extract.trunc.i.i
  br i1 %i.bk, label %bb.h, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_T0_SW_T1_T2_.exit

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i
  %i.bm = load i64, ptr %i.bi, align 8, !tbaa !485
  store i64 %i.bm, ptr %i.bl, align 8, !tbaa !485
  %i.bn = icmp sgt i64 %.018.i.i, %.015
  br i1 %i.bn, label %bb.g, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_T0_SW_T1_T2_.exit, !llvm.loop !221

_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_T0_SW_T1_T2_.exit: ; preds = %bb.g, %bb.h, %bb.f
  %.013.lcssa.i.i = phi i64 [ %.1.i, %bb.f ], [ %.018.i.i, %bb.h ], [ %.01317.i.i, %bb.g ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i64 %i.bh, ptr %i.bo, align 8, !tbaa !485
  %.not = icmp eq i64 %.015, 0
  %i.bp = add nsw i64 %.015, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !6863

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_T0_SW_T1_T2_.exit.us, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS1_6points17PointDataLeafNodeIS5_Lj3EEEvEElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_T0_SW_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE7addTileERKNS0_4math5CoordERKS7_b(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i1 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  %5 = alloca %"struct.openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::points::PointDataLeafNode<openvdb::v13_0::PointIndex<unsigned int, 1>, 3>, 4>, 5>>::Tile", align 4 ; 8 uses
  %6 = alloca %"struct.openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::points::PointDataLeafNode<openvdb::v13_0::PointIndex<unsigned int, 1>, 3>, 4>, 5>>::Tile", align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i32, ptr %1, align 4, !tbaa !464
  %i.c = load i32, ptr %i.a, align 4, !tbaa !464
  %i.d = sub nsw i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !464
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i32, ptr %i.g, align 8, !tbaa !464
  %i.i = sub nsw i32 %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !464
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.m = load i32, ptr %i.l, align 4, !tbaa !464
  %i.n = sub nsw i32 %i.k, %i.m
  %i.o = and i32 %i.d, -4096                      ; 9 uses
  %i.p = and i32 %i.i, -4096                      ; 9 uses
  %i.q = and i32 %i.n, -4096                      ; 5 uses
  %.sroa.2.0.insert.ext.i10.i = zext i32 %i.p to i64
  %.sroa.2.0.insert.shift.i11.i = shl nuw i64 %.sroa.2.0.insert.ext.i10.i, 32
  %.sroa.0.0.insert.ext.i12.i = zext i32 %i.o to i64
  %.sroa.0.0.insert.insert.i13.i = or disjoint i64 %.sroa.2.0.insert.shift.i11.i, %.sroa.0.0.insert.ext.i12.i
  store i64 %.sroa.0.0.insert.insert.i13.i, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.q, ptr %.sroa.2.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !644  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not12.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread, label %.lr.ph.i.i.i.i

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS0_6points17PointDataLeafNodeINS0_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.u = zext i1 %3 to i8
  %i.v = load i32, ptr %2, align 4, !tbaa !464
  store i32 %i.v, ptr %5, align 4, !tbaa !464
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 %i.u, ptr %i.w, align 4, !tbaa !2574
  br label %.critedge.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.s, %bb.a ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %bb.a ]
  %i.x = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.y = load i32, ptr %i.x, align 4, !tbaa !464  ; 2 uses
  %i.z = icmp slt i32 %i.y, %i.o
  br i1 %i.z, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aa = icmp sgt i32 %i.y, %i.o
  br i1 %i.aa, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.c

end_hunk_1
begin_hunk_2_@_ZSt13__introselectIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEElN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_SP_T0_T1_:bb.a
  %i.k = lshr i64 %i.i, 4
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.03454, i64 %i.k ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.03454, i64 8 ; 6 uses
  %i.n = getelementptr inbounds i8, ptr %.0213355, i64 -8 ; 5 uses
  %i.o = load i32, ptr %i.m, align 4, !tbaa !2526 ; 3 uses
  %i.p = load i32, ptr %i.l, align 4, !tbaa !2526 ; 3 uses
  %i.q = icmp ult i32 %i.o, %i.p
  %i.r = load i32, ptr %i.n, align 4, !tbaa !2526 ; 4 uses
  br i1 %i.q, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph57
  %i.s = icmp ult i32 %i.p, %i.r
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.03454, align 8, !tbaa !485
  %i.t = load i64, ptr %i.l, align 8, !tbaa !485
  store i64 %i.t, ptr %.03454, align 8, !tbaa !485
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.l, align 8, !tbaa !485
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i.preheader

bb.d:                                             ; preds = %bb.b
  %i.u = icmp ult i32 %i.o, %i.r
  %.sroa.0.0.copyload.i.i22.i.i = load ptr, ptr %.03454, align 8, !tbaa !485 ; 2 uses
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.n, align 8, !tbaa !485
  store i64 %i.v, ptr %.03454, align 8, !tbaa !485
  store ptr %.sroa.0.0.copyload.i.i22.i.i, ptr %i.n, align 8, !tbaa !485
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  %i.w = load i64, ptr %i.m, align 8, !tbaa !485
  store i64 %i.w, ptr %.03454, align 8, !tbaa !485
  store ptr %.sroa.0.0.copyload.i.i22.i.i, ptr %i.m, align 8, !tbaa !485
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i.preheader

bb.g:                                             ; preds = %.lr.ph57
  %i.x = icmp ult i32 %i.o, %i.r
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i24.i.i = load ptr, ptr %.03454, align 8, !tbaa !485
  %i.y = load i64, ptr %i.m, align 8, !tbaa !485
  store i64 %i.y, ptr %.03454, align 8, !tbaa !485
  store ptr %.sroa.0.0.copyload.i.i24.i.i, ptr %i.m, align 8, !tbaa !485
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.z = icmp ult i32 %i.p, %i.r
  %.sroa.0.0.copyload.i.i25.i.i = load ptr, ptr %.03454, align 8, !tbaa !485 ; 2 uses
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !485
  store i64 %i.aa, ptr %.03454, align 8, !tbaa !485
  store ptr %.sroa.0.0.copyload.i.i25.i.i, ptr %i.n, align 8, !tbaa !485
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  %i.ab = load i64, ptr %i.l, align 8, !tbaa !485
  store i64 %i.ab, ptr %.03454, align 8, !tbaa !485
  store ptr %.sroa.0.0.copyload.i.i25.i.i, ptr %i.l, align 8, !tbaa !485
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i.preheader: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i

_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i.preheader, %bb.n
  %.013.i.i = phi ptr [ %.114.i.i, %bb.n ], [ %.0213355, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.af, %bb.n ], [ %i.m, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i.preheader ]
  %i.ac = load i32, ptr %.03454, align 4, !tbaa !2526 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i ], [ %i.af, %bb.l ] ; 8 uses
  %i.ad = load i32, ptr %.1.i.i, align 4, !tbaa !2526
  %i.ae = icmp ult i32 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.ae, label %bb.l, label %.preheader.i.i, !llvm.loop !6867

.preheader.i.i:                                   ; preds = %bb.l, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.l ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 6 uses
  %i.ag = load i32, ptr %.114.i.i, align 4, !tbaa !2526
  %i.ah = icmp ult i32 %i.ac, %i.ag
  br i1 %i.ah, label %.preheader.i.i, label %bb.m, !llvm.loop !6868

bb.m:                                             ; preds = %.preheader.i.i
  %i.ai = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.ai, label %bb.n, label %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEESP_SP_SP_T0_.exit

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i.i.i13.i = load ptr, ptr %.1.i.i, align 8, !tbaa !485
  %i.aj = load i64, ptr %.114.i.i, align 8, !tbaa !485
  store i64 %i.aj, ptr %.1.i.i, align 8, !tbaa !485
  store ptr %.sroa.0.0.copyload.i.i.i13.i, ptr %.114.i.i, align 8, !tbaa !485
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_SP_SP_T0_.exit.i, !llvm.loop !6869

_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEESP_SP_SP_T0_.exit: ; preds = %bb.m
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %..021 = select i1 %.not, ptr %.1.i.i, ptr %.0213355 ; 4 uses
  %.0. = select i1 %.not, ptr %.03454, ptr %.1.i.i ; 4 uses
  %i.ak = ptrtoint ptr %..021 to i64
  %i.al = ptrtoint ptr %.0. to i64                ; 2 uses
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = icmp sgt i64 %i.am, 24
  br i1 %i.an, label %.lr.ph, label %._crit_edge, !llvm.loop !6866

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEESP_SP_SP_T0_.exit, %bb.a
  %.021.lcssa = phi ptr [ %2, %bb.a ], [ %..021, %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEESP_SP_SP_T0_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.0., %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEESP_SP_SP_T0_.exit ] ; 7 uses
  %.lcssa28 = phi i64 [ %i.b, %bb.a ], [ %i.al, %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEESP_SP_SP_T0_.exit ]
  %i.ao = icmp eq ptr %.0.lcssa, %.021.lcssa
  %.018.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8 ; 2 uses
  %.not19.i = icmp eq ptr %.018.i, %.021.lcssa
  %or.cond = select i1 %i.ao, i1 true, i1 %.not19.i
  br i1 %or.cond, label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.t
  %.021.i = phi ptr [ %.0.i, %bb.t ], [ %.018.i, %._crit_edge ] ; 8 uses
  %.pn20.i = phi ptr [ %.021.i, %bb.t ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.ap = load i32, ptr %.021.i, align 4, !tbaa !2526
  %i.aq = load i32, ptr %.0.lcssa, align 4, !tbaa !2526
  %i.ar = icmp ult i32 %i.ap, %i.aq
  br i1 %i.ar, label %bb.o, label %bb.s

bb.o:                                             ; preds = %.lr.ph.i
  %.sroa.01.0.copyload.i = load ptr, ptr %.021.i, align 8, !tbaa !485
  %i.as = ptrtoint ptr %.021.i to i64
  %i.at = sub i64 %i.as, %.lcssa28                ; 3 uses
  %i.au = ashr exact i64 %i.at, 3                 ; 2 uses
  %i.av = icmp sgt i64 %i.au, 1
  br i1 %i.av, label %bb.p, label %bb.q, !prof !1506

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 16
  %i.ax = sub nsw i64 0, %i.au
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ax
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %.0.lcssa, i64 %i.at, i1 false)
  br label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEESC_ET0_T_SE_SD_.exit.i

bb.q:                                             ; preds = %bb.o
  %i.az = icmp eq i64 %i.at, 8
  br i1 %i.az, label %bb.r, label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEESC_ET0_T_SE_SD_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  %i.bb = load i64, ptr %.0.lcssa, align 8, !tbaa !485
  store i64 %i.bb, ptr %i.ba, align 8, !tbaa !485
  br label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEESC_ET0_T_SE_SD_.exit.i

_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEESC_ET0_T_SE_SD_.exit.i: ; preds = %bb.r, %bb.q, %bb.p
  store ptr %.sroa.01.0.copyload.i, ptr %.0.lcssa, align 8, !tbaa !485
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph.i
  %i.bc = load i64, ptr %.021.i, align 8, !tbaa !485 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.bc to i32 ; 2 uses
  %i.bd = load i32, ptr %.pn20.i, align 4, !tbaa !2526
  %i.be = icmp ugt i32 %i.bd, %.sroa.0.0.extract.trunc.i.i
  br i1 %i.be, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.i.i
  %.013.i.i26 = phi ptr [ %.0.i.i27, %.lr.ph.i.i ], [ %.pn20.i, %bb.s ] ; 4 uses
  %.0912.i.i = phi ptr [ %.013.i.i26, %.lr.ph.i.i ], [ %.021.i, %bb.s ]
  %i.bf = load i64, ptr %.013.i.i26, align 8, !tbaa !485
  store i64 %i.bf, ptr %.0912.i.i, align 8, !tbaa !485
  %.0.i.i27 = getelementptr inbounds i8, ptr %.013.i.i26, i64 -8 ; 2 uses
  %i.bg = load i32, ptr %.0.i.i27, align 8, !tbaa !2526
  %i.bh = icmp ugt i32 %i.bg, %.sroa.0.0.extract.trunc.i.i
  br i1 %i.bh, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_T0_.exit.i, !llvm.loop !6870

_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.s
  %.09.lcssa.i.i = phi ptr [ %.021.i, %bb.s ], [ %.013.i.i26, %.lr.ph.i.i ]
  store i64 %i.bc, ptr %.09.lcssa.i.i, align 8, !tbaa !485
  br label %bb.t

bb.t:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_T0_.exit.i, %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEESC_ET0_T_SE_SD_.exit.i
  %.0.i = getelementptr inbounds nuw i8, ptr %.021.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %.021.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_T0_.exit, label %.lr.ph.i, !llvm.loop !6871

_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_T0_.exit: ; preds = %bb.t, %._crit_edge, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_SP_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1888", align 1
  call void @_ZSt11__make_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr i64 %i.d, 3                         ; 3 uses
  %i.f = add nsw i64 %i.e, -1
  %i.g = lshr i64 %i.f, 1
  %i.h = icmp sgt i64 %i.e, 2
  %i.i = and i64 %i.d, 8
  %i.j = icmp eq i64 %i.i, 0                      ; 2 uses
  %i.k = add nsw i64 %i.e, -2                     ; 3 uses
  %i.l = ashr exact i64 %i.k, 1                   ; 2 uses
  br i1 %i.h, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %4 = or disjoint i64 %i.k, 1                    ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.e
  %.011.us = phi ptr [ %i.aq, %bb.e ], [ %1, %.lr.ph.split.us.preheader ] ; 4 uses
  %i.o = load i32, ptr %.011.us, align 4, !tbaa !2526
  %i.p = load i32, ptr %0, align 4, !tbaa !2526
  %i.q = icmp ult i32 %i.o, %i.p
  br i1 %i.q, label %.lr.ph.i.i.preheader.us, label %bb.e

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  %.sroa.02.0.copyload.i.us = load ptr, ptr %.011.us, align 8, !tbaa !485 ; 2 uses
  %i.r = load i64, ptr %0, align 8, !tbaa !485
  store i64 %i.r, ptr %.011.us, align 8, !tbaa !485
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.029.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.s = shl i64 %.029.i.i.us, 1                  ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr [8 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.u, align 4, !tbaa !2526
  %i.y = load i32, ptr %i.w, align 4, !tbaa !2526
  %i.z = icmp ult i32 %i.x, %i.y
  %i.aa = or disjoint i64 %i.s, 1
  %spec.select.i.i.us = select i1 %i.z, i64 %i.aa, i64 %i.t ; 6 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.us
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.i.us
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !485
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !485
  %i.ae = icmp slt i64 %spec.select.i.i.us, %i.g
  br i1 %i.ae, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !222

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  %i.af = ptrtoint ptr %.sroa.02.0.copyload.i.us to i64 ; 2 uses
  br i1 %.not.i.us, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_SP_RT0_.exit.us, label %.lr.ph.i.i.i.us

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !485
  store i64 %i.ag, ptr %i.n, align 8, !tbaa !485
  %i.ah = ptrtoint ptr %.sroa.02.0.copyload.i.us to i64
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.thread.i.us, %bb.b
  %i.ai = phi i64 [ %i.ah, %.thread.i.us ], [ %i.af, %bb.b ] ; 3 uses
  %.1.i10.i.us = phi i64 [ %4, %.thread.i.us ], [ %spec.select.i.i.us, %bb.b ]
  %.sroa.0.0.extract.trunc.i.i.i.us = trunc i64 %i.ai to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.i.us
  %.01317.i.i.i.us = phi i64 [ %.1.i10.i.us, %.lr.ph.i.i.i.us ], [ %.018.i.i1112.i.us, %bb.d ] ; 3 uses
  %.018.in.i.i.i.us = add nsw i64 %.01317.i.i.i.us, -1
  %.018.i.i1112.i.us = lshr i64 %.018.in.i.i.i.us, 1 ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i1112.i.us ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !2526
  %i.al = icmp ult i32 %i.ak, %.sroa.0.0.extract.trunc.i.i.i.us
  br i1 %i.al, label %bb.d, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_SP_RT0_.exit.us

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i.us
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !485
  store i64 %i.an, ptr %i.am, align 8, !tbaa !485
  %.not13.i.us = icmp eq i64 %.018.i.i1112.i.us, 0
  br i1 %.not13.i.us, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_SP_RT0_.exit.us, label %bb.c, !llvm.loop !223

_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_SP_RT0_.exit.us: ; preds = %bb.c, %bb.d, %bb.b
  %i.ao = phi i64 [ %i.af, %bb.b ], [ %i.ai, %bb.d ], [ %i.ai, %bb.c ]
  %.013.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ %.01317.i.i.i.us, %bb.c ], [ 0, %bb.d ]
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.us
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !485
  br label %bb.e

bb.e:                                             ; preds = %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_SP_RT0_.exit.us, %.lr.ph.split.us
  %i.aq = getelementptr inbounds nuw i8, ptr %.011.us, i64 8 ; 2 uses
  %i.ar = icmp ult ptr %i.aq, %2
  br i1 %i.ar, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !6872

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.as = icmp eq i64 %spec.select.i.i.us, %i.l
  %or.cond = select i1 %i.j, i1 %i.as, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %i.j, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load i32, ptr %0, align 4, !tbaa !2526
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.au = icmp eq i64 %i.k, 0
  br i1 %i.au, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split.preheader

.lr.ph.split.split.us.split.preheader:            ; preds = %.lr.ph.split.split.us
  %.pre30 = load i32, ptr %0, align 4, !tbaa !2526
  br label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.f
  %.011.us12.us = phi ptr [ %i.be, %bb.f ], [ %1, %.lr.ph.split.split.us ] ; 4 uses
  %i.av = load i32, ptr %.011.us12.us, align 4, !tbaa !2526
  %i.aw = load i32, ptr %0, align 4, !tbaa !2526
  %i.ax = icmp ult i32 %i.av, %i.aw
  br i1 %i.ax, label %._crit_edge.i.i.us13.us, label %bb.f

._crit_edge.i.i.us13.us:                          ; preds = %.lr.ph.split.split.us.split.us
  %.sroa.02.0.copyload.i.us14.us = load ptr, ptr %.011.us12.us, align 8, !tbaa !485
  %i.ay = load i64, ptr %0, align 8, !tbaa !485
  store i64 %i.ay, ptr %.011.us12.us, align 8, !tbaa !485
  %i.az = load i64, ptr %i.at, align 8, !tbaa !485 ; 2 uses
  store i64 %i.az, ptr %0, align 8, !tbaa !485
  %i.ba = ptrtoint ptr %.sroa.02.0.copyload.i.us14.us to i64 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i.us16.us = trunc i64 %i.ba to i32
  %i.bb = trunc i64 %i.az to i32
  %i.bc = icmp uge i32 %i.bb, %.sroa.0.0.extract.trunc.i.i.i.us16.us
  %spec.select = zext i1 %i.bc to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %spec.select
  store i64 %i.ba, ptr %i.bd, align 8, !tbaa !485
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.us13.us, %.lr.ph.split.split.us.split.us
  %i.be = getelementptr inbounds nuw i8, ptr %.011.us12.us, i64 8 ; 2 uses
  %i.bf = icmp ult ptr %i.be, %2
  br i1 %i.bf, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !6872

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us.split.preheader, %bb.g
  %i.bg = phi i32 [ %i.bm, %bb.g ], [ %.pre30, %.lr.ph.split.split.us.split.preheader ] ; 2 uses
  %.011.us12 = phi ptr [ %i.bn, %bb.g ], [ %1, %.lr.ph.split.split.us.split.preheader ] ; 4 uses
  %i.bh = load i32, ptr %.011.us12, align 4, !tbaa !2526
  %i.bi = icmp ult i32 %i.bh, %i.bg
  br i1 %i.bi, label %._crit_edge.i.i.us13, label %bb.g

._crit_edge.i.i.us13:                             ; preds = %.lr.ph.split.split.us.split
  %.sroa.02.0.copyload.i.us14 = load ptr, ptr %.011.us12, align 8, !tbaa !485
  %i.bj = load i64, ptr %0, align 8, !tbaa !485
  store i64 %i.bj, ptr %.011.us12, align 8, !tbaa !485
  %i.bk = ptrtoint ptr %.sroa.02.0.copyload.i.us14 to i64 ; 2 uses
  store i64 %i.bk, ptr %0, align 8, !tbaa !485
  %i.bl = trunc i64 %i.bk to i32
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.us13, %.lr.ph.split.split.us.split
  %i.bm = phi i32 [ %i.bl, %._crit_edge.i.i.us13 ], [ %i.bg, %.lr.ph.split.split.us.split ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.011.us12, i64 8 ; 2 uses
  %i.bo = icmp ult ptr %i.bn, %2
  br i1 %i.bo, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !6872

._crit_edge:                                      ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.a
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.h
  %i.bp = phi i32 [ %i.bv, %bb.h ], [ %.pre, %.lr.ph.split.split.preheader ] ; 2 uses
  %.011 = phi ptr [ %i.bw, %bb.h ], [ %1, %.lr.ph.split.split.preheader ] ; 4 uses
  %i.bq = load i32, ptr %.011, align 4, !tbaa !2526
  %i.br = icmp ult i32 %i.bq, %i.bp
  br i1 %i.br, label %._crit_edge.i.i, label %bb.h

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.split
  %.sroa.02.0.copyload.i = load ptr, ptr %.011, align 8, !tbaa !485
  %i.bs = load i64, ptr %0, align 8, !tbaa !485
  store i64 %i.bs, ptr %.011, align 8, !tbaa !485
  %i.bt = ptrtoint ptr %.sroa.02.0.copyload.i to i64 ; 2 uses
  store i64 %i.bt, ptr %0, align 8, !tbaa !485
  %i.bu = trunc i64 %i.bt to i32
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i
  %i.bv = phi i32 [ %i.bp, %.lr.ph.split.split ], [ %i.bu, %._crit_edge.i.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.011, i64 8 ; 2 uses
  %i.bx = icmp ult ptr %i.bw, %2
  br i1 %i.bx, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !6872
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %3 = or disjoint i64 %i.f, 1                    ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEElSB_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_T0_SW_T1_T2_.exit.us
  %.015.us = phi i64 [ %i.ao, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEElSB_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_T0_SW_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us
  %.sroa.02.0.copyload.us = load ptr, ptr %i.o, align 8, !tbaa !485 ; 2 uses
  %i.p = icmp slt i64 %.015.us, %i.i
  br i1 %i.p, label %.lr.ph.i.us, label %._crit_edge.i.us.thread

._crit_edge.i.us.thread:                          ; preds = %.split.us
  %i.q = ptrtoint ptr %.sroa.02.0.copyload.us to i64
  br label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEElSB_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_T0_SW_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.015.us, %.split.us ] ; 2 uses
  %i.r = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [8 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.t, align 4, !tbaa !2526
  %i.x = load i32, ptr %i.v, align 4, !tbaa !2526
  %i.y = icmp ult i32 %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.us
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !485
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !485
  %i.ad = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ad, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !222

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ae = icmp sgt i64 %spec.select.i.us, %.015.us
  %i.af = ptrtoint ptr %.sroa.02.0.copyload.us to i64 ; 4 uses
  br i1 %i.ae, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEElSB_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_T0_SW_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %.sroa.0.0.extract.trunc.i.i.us = trunc i64 %i.af to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.us
  %.01317.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.d ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i.us ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !2526
  %i.ai = icmp ult i32 %i.ah, %.sroa.0.0.extract.trunc.i.i.us
  br i1 %i.ai, label %bb.d, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEElSB_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_T0_SW_T1_T2_.exit.us

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i.us
  %i.ak = load i64, ptr %i.ag, align 8, !tbaa !485
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !485
  %i.al = icmp sgt i64 %.018.i.i.us, %.015.us
  br i1 %i.al, label %bb.c, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEElSB_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_T0_SW_T1_T2_.exit.us, !llvm.loop !223

_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEElSB_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_T0_SW_T1_T2_.exit.us: ; preds = %bb.c, %bb.d, %._crit_edge.i.us.thread, %._crit_edge.i.us
  %i.am = phi i64 [ %i.af, %._crit_edge.i.us ], [ %i.q, %._crit_edge.i.us.thread ], [ %i.af, %bb.d ], [ %i.af, %bb.c ]
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.015.us, %._crit_edge.i.us.thread ], [ %.01317.i.i.us, %bb.c ], [ %.018.i.i.us, %bb.d ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i64 %i.am, ptr %i.an, align 8, !tbaa !485
  %.not.us = icmp eq i64 %.015.us, 0
  %i.ao = add nsw i64 %.015.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !6873

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEElSB_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_T0_SW_T1_T2_.exit
  %.015 = phi i64 [ %i.bp, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEElSB_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_T0_SW_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015
  %.sroa.02.0.copyload = load ptr, ptr %i.ap, align 8, !tbaa !485
  %i.aq = icmp slt i64 %.015, %i.i
  br i1 %i.aq, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.015, %.split ] ; 2 uses
  %i.ar = shl i64 %.029.i, 1                      ; 3 uses
  %i.as = add i64 %i.ar, 2                        ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %0, i64 %i.as
  %i.au = getelementptr [8 x i8], ptr %0, i64 %i.ar
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !2526
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !2526
  %i.ay = icmp ult i32 %i.aw, %i.ax
  %i.az = or disjoint i64 %i.ar, 1
  %spec.select.i = select i1 %i.ay, i64 %i.az, i64 %i.as ; 4 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !485
  store i64 %i.bc, ptr %i.bb, align 8, !tbaa !485
  %i.bd = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bd, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !222

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.015, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.be = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.be, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.bf = load i64, ptr %i.m, align 8, !tbaa !485
  store i64 %i.bf, ptr %i.n, align 8, !tbaa !485
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.e ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bg = icmp sgt i64 %.1.i, %.015
  %i.bh = ptrtoint ptr %.sroa.02.0.copyload to i64 ; 2 uses
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEElSB_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_T0_SW_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.f
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.bh to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.01317.i.i = phi i64 [ %.1.i, %.lr.ph.i.i ], [ %.018.i.i, %bb.h ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !2526
  %i.bk = icmp ult i32 %i.bj, %.sroa.0.0.extract.trunc.i.i
  br i1 %i.bk, label %bb.h, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEElSB_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_T0_SW_T1_T2_.exit

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i
  %i.bm = load i64, ptr %i.bi, align 8, !tbaa !485
  store i64 %i.bm, ptr %i.bl, align 8, !tbaa !485
  %i.bn = icmp sgt i64 %.018.i.i, %.015
  br i1 %i.bn, label %bb.g, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEElSB_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_T0_SW_T1_T2_.exit, !llvm.loop !223

_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEElSB_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_T0_SW_T1_T2_.exit: ; preds = %bb.g, %bb.h, %bb.f
  %.013.lcssa.i.i = phi i64 [ %.1.i, %bb.f ], [ %.018.i.i, %bb.h ], [ %.01317.i.i, %bb.g ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i64 %i.bh, ptr %i.bo, align 8, !tbaa !485
  %.not = icmp eq i64 %.015, 0
  %i.bp = add nsw i64 %.015, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !6873

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEElSB_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_T0_SW_T1_T2_.exit.us, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_10PointIndexIjLj1EEENS2_12InternalNodeINS1_6points17PointDataLeafNodeIS5_Lj3EEELj4EEEvEElSB_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS6_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_T0_SW_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISI_ESt4lessIS3_ESaISI_EE5eraseERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISI_ESt4lessIS3_ESaISI_EE11equal_rangeERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 3 uses
  %i.c = extractvalue { ptr, ptr } %i.a, 1        ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !646  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !507
  %i.h = icmp eq ptr %i.b, %i.g
  br i1 %i.h, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = icmp eq ptr %i.c, %i.i
  br i1 %i.j, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !644
  invoke void @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISI_ESt4lessIS3_ESaISI_EE8_M_eraseEPSt13_Rb_tree_nodeISI_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.l)
          to label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISI_ESt4lessIS3_ESaISI_EE5clearEv.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #31
  unreachable

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISI_ESt4lessIS3_ESaISI_EE5clearEv.exit.i: ; preds = %bb.c
  store ptr null, ptr %i.k, align 8, !tbaa !644
  store ptr %i.i, ptr %i.f, align 8, !tbaa !507
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.i, ptr %i.o, align 8, !tbaa !645
  store i64 0, ptr %i.d, align 8, !tbaa !646
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISI_ESt4lessIS3_ESaISI_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISI_ESQ_.exit

.critedge.i:                                      ; preds = %bb.b, %bb.a
  %.not8.i = icmp eq ptr %i.b, %i.c
  br i1 %.not8.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISI_ESt4lessIS3_ESaISI_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISI_ESQ_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.sroa.06.09.i = phi ptr [ %i.b, %.lr.ph.i ], [ %i.q, %bb.e ] ; 2 uses
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.09.i) #32 ; 2 uses
  %i.r = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.09.i, ptr noundef nonnull align 8 dereferenceable(32) %i.p) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 64) #30
  %i.s = load i64, ptr %i.d, align 8, !tbaa !646
  %i.t = add i64 %i.s, -1                         ; 2 uses
  store i64 %i.t, ptr %i.d, align 8, !tbaa !646
  %.not.i = icmp eq ptr %i.q, %i.c
  br i1 %.not.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS1_6points17PointDataLeafNodeINS1_10PointIndexIjLj1EEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISI_ESt4lessIS3_ESaISI_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISI_ESQ_.exit, label %bb.e, !llvm.loop !6874

end_hunk_2

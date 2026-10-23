Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetDilatedMesh?download=true
inline.NumInlined: 79533
inline.NumDeleted: 25229
loop-unroll.NumCompletelyUnrolled: 202
loop-unroll.NumRuntimeUnrolled: 278
loop-unroll.NumUnrolled: 951
begin_hunk_0_@_ZSt13__introselectIPilN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_SC_T1_:bb.a
  %.0213568 = phi ptr [ %..021, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.03667 = phi ptr [ %.0., %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 14 uses
  %i.j = phi i64 [ %i.ak, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %i.k = add nsw i64 %.0233469, -1                ; 2 uses
  %i.l = lshr i64 %i.j, 3
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.03667, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.03667, i64 4 ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %.0213568, i64 -4 ; 3 uses
  %i.p = load i32, ptr %i.n, align 4, !tbaa !741  ; 5 uses
  %i.q = load i32, ptr %i.m, align 4, !tbaa !741  ; 5 uses
  %i.r = icmp slt i32 %i.p, %i.q
  %i.s = load i32, ptr %i.o, align 4, !tbaa !741  ; 6 uses
  br i1 %i.r, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph70
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = load i32, ptr %.03667, align 4, !tbaa !741
  store i32 %i.q, ptr %.03667, align 4, !tbaa !741
  store i32 %i.u, ptr %i.m, align 4, !tbaa !741
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader

bb.d:                                             ; preds = %bb.b
  %i.v = icmp slt i32 %i.p, %i.s
  %i.w = load i32, ptr %.03667, align 4, !tbaa !741 ; 2 uses
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.s, ptr %.03667, align 4, !tbaa !741
  store i32 %i.w, ptr %i.o, align 4, !tbaa !741
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  store i32 %i.p, ptr %.03667, align 4, !tbaa !741
  store i32 %i.w, ptr %i.n, align 4, !tbaa !741
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader

bb.g:                                             ; preds = %.lr.ph70
  %i.x = icmp slt i32 %i.p, %i.s
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load i32, ptr %.03667, align 4, !tbaa !741
  store i32 %i.p, ptr %.03667, align 4, !tbaa !741
  store i32 %i.y, ptr %i.n, align 4, !tbaa !741
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.z = icmp slt i32 %i.q, %i.s
  %i.aa = load i32, ptr %.03667, align 4, !tbaa !741 ; 2 uses
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.s, ptr %.03667, align 4, !tbaa !741
  store i32 %i.aa, ptr %i.o, align 4, !tbaa !741
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  store i32 %i.q, ptr %.03667, align 4, !tbaa !741
  store i32 %i.aa, ptr %i.m, align 4, !tbaa !741
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader

_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i

_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader, %bb.n
  %.013.i.i = phi ptr [ %.114.i.i, %bb.n ], [ %.0213568, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.ae, %bb.n ], [ %i.n, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader ]
  %i.ab = load i32, ptr %.03667, align 4, !tbaa !741 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i ], [ %i.ae, %bb.l ] ; 7 uses
  %i.ac = load i32, ptr %.1.i.i, align 4, !tbaa !741 ; 2 uses
  %i.ad = icmp slt i32 %i.ac, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4 ; 2 uses
  br i1 %i.ad, label %bb.l, label %.preheader.i.i, !llvm.loop !13978

.preheader.i.i:                                   ; preds = %bb.l, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.l ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -4 ; 5 uses
  %i.af = load i32, ptr %.114.i.i, align 4, !tbaa !741 ; 2 uses
  %i.ag = icmp slt i32 %i.ab, %i.af
  br i1 %i.ag, label %.preheader.i.i, label %bb.m, !llvm.loop !13979

bb.m:                                             ; preds = %.preheader.i.i
  %i.ah = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.ah, label %bb.n, label %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEES9_S9_S9_SC_.exit

bb.n:                                             ; preds = %bb.m
  store i32 %i.af, ptr %.1.i.i, align 4, !tbaa !741
  store i32 %i.ac, ptr %.114.i.i, align 4, !tbaa !741
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i, !llvm.loop !13980

_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEES9_S9_S9_SC_.exit: ; preds = %bb.m
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %..021 = select i1 %.not, ptr %.1.i.i, ptr %.0213568 ; 4 uses
  %.0. = select i1 %.not, ptr %.03667, ptr %.1.i.i ; 4 uses
  %i.ai = ptrtoint ptr %..021 to i64
  %i.aj = ptrtoint ptr %.0. to i64                ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 12
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !13977

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEES9_S9_S9_SC_.exit, %bb.a
  %.021.lcssa = phi ptr [ %2, %bb.a ], [ %..021, %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEES9_S9_S9_SC_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.0., %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEES9_S9_S9_SC_.exit ] ; 7 uses
  %.lcssa30 = phi i64 [ %i.b, %bb.a ], [ %i.aj, %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEES9_S9_S9_SC_.exit ]
  %i.am = icmp eq ptr %.0.lcssa, %.021.lcssa
  br i1 %i.am, label %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_SC_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge
  %.016.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 4 ; 2 uses
  %.not17.i = icmp eq ptr %.016.i, %.021.lcssa
  br i1 %.not17.i, label %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_SC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.pre21.i = load i32, ptr %.0.lcssa, align 4, !tbaa !741
  br label %bb.o

bb.o:                                             ; preds = %bb.u, %.lr.ph.i
  %i.an = phi i32 [ %.pre21.i, %.lr.ph.i ], [ %i.be, %bb.u ] ; 2 uses
  %.019.i = phi ptr [ %.016.i, %.lr.ph.i ], [ %.0.i, %bb.u ] ; 6 uses
  %.pn18.i = phi ptr [ %.0.lcssa, %.lr.ph.i ], [ %.019.i, %bb.u ] ; 4 uses
  %i.ao = load i32, ptr %.019.i, align 4, !tbaa !741 ; 6 uses
  %i.ap = icmp slt i32 %i.ao, %i.an
  br i1 %i.ap, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.aq = ptrtoint ptr %.019.i to i64
  %i.ar = sub i64 %i.aq, %.lcssa30                ; 3 uses
  %i.as = ashr exact i64 %i.ar, 2                 ; 2 uses
  %i.at = icmp sgt i64 %i.as, 1
  br i1 %i.at, label %bb.q, label %bb.r, !prof !1979

bb.q:                                             ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 8
  %i.av = sub nsw i64 0, %i.as
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.av
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aw, ptr noundef nonnull align 4 dereferenceable(1) %.0.lcssa, i64 %i.ar, i1 false)
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.ax = icmp eq i64 %i.ar, 4
  br i1 %i.ax, label %bb.s, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

bb.s:                                             ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 4
  store i32 %i.an, ptr %i.ay, align 4, !tbaa !741
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i:     ; preds = %bb.s, %bb.r, %bb.q
  store i32 %i.ao, ptr %.0.lcssa, align 4, !tbaa !741
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.az = load i32, ptr %.pn18.i, align 4, !tbaa !741 ; 2 uses
  %i.ba = icmp slt i32 %i.ao, %i.az
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.t, %.lr.ph.i.i
  %i.bb = phi i32 [ %i.bc, %.lr.ph.i.i ], [ %i.az, %bb.t ]
  %.013.i.i26 = phi ptr [ %.0.i.i27, %.lr.ph.i.i ], [ %.pn18.i, %bb.t ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i26, %.lr.ph.i.i ], [ %.019.i, %bb.t ]
  store i32 %i.bb, ptr %.0912.i.i, align 4, !tbaa !741
  %.0.i.i27 = getelementptr inbounds i8, ptr %.013.i.i26, i64 -4 ; 2 uses
  %i.bc = load i32, ptr %.0.i.i27, align 4, !tbaa !741 ; 2 uses
  %i.bd = icmp slt i32 %i.ao, %i.bc
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_.exit.i, !llvm.loop !13981

_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_.exit.i: ; preds = %.lr.ph.i.i, %bb.t
  %.09.lcssa.i.i = phi ptr [ %.019.i, %bb.t ], [ %.013.i.i26, %.lr.ph.i.i ]
  store i32 %i.ao, ptr %.09.lcssa.i.i, align 4, !tbaa !741
  %.pre.i = load i32, ptr %.0.lcssa, align 4, !tbaa !741
  br label %bb.u

bb.u:                                             ; preds = %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_.exit.i, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i
  %i.be = phi i32 [ %i.ao, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_.exit.i ]
  %.0.i = getelementptr inbounds nuw i8, ptr %.019.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %.021.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_SC_.exit, label %bb.o, !llvm.loop !13982

_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_SC_.exit: ; preds = %bb.u, %.preheader.i, %._crit_edge, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_SC_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3902", align 1
  call void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_RSC_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr i64 %i.d, 2                         ; 4 uses
  %i.f = add nsw i64 %i.e, -1
  %i.g = lshr i64 %i.f, 1
  %i.h = icmp sgt i64 %i.e, 2
  %i.i = and i64 %i.d, 4
  %i.j = icmp eq i64 %i.i, 0                      ; 2 uses
  %i.k = add nsw i64 %i.e, -2                     ; 2 uses
  %i.l = ashr exact i64 %i.k, 1                   ; 2 uses
  br i1 %i.h, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %4 = add nsw i64 %i.e, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %4
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.d
  %.011.us = phi ptr [ %i.ak, %bb.d ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.o = load i32, ptr %.011.us, align 4, !tbaa !741 ; 3 uses
  %i.p = load i32, ptr %0, align 4, !tbaa !741    ; 2 uses
  %i.q = icmp slt i32 %i.o, %i.p
  br i1 %i.q, label %.lr.ph.i.i.preheader.us, label %bb.d

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  store i32 %i.p, ptr %.011.us, align 4, !tbaa !741
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.029.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.r = shl i64 %.029.i.i.us, 1                  ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [4 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.t, align 4, !tbaa !741
  %i.x = load i32, ptr %i.v, align 4, !tbaa !741
  %i.y = icmp slt i32 %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i.us
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !741
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.i.us
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !741
  %i.ad = icmp slt i64 %spec.select.i.i.us, %i.g
  br i1 %i.ad, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !649

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  br i1 %.not.i.us, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_RSC_.exit.us, label %.lr.ph.i.i.i.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.ae = load i32, ptr %i.m, align 4, !tbaa !741
  store i32 %i.ae, ptr %i.n, align 4, !tbaa !741
  br label %.lr.ph.i.i.i.us.preheader

.lr.ph.i.i.i.us.preheader:                        ; preds = %.thread.i.us, %bb.b
  %.01317.i.i.i.us.ph = phi i64 [ %spec.select.i.i.us, %bb.b ], [ %4, %.thread.i.us ]
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %bb.c
  %.01317.i.i.i.us = phi i64 [ %.018.i.i78.i.us, %bb.c ], [ %.01317.i.i.i.us.ph, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %.018.in.i.i.i.us = add nsw i64 %.01317.i.i.i.us, -1
  %.018.i.i78.i.us = lshr i64 %.018.in.i.i.i.us, 1 ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i78.i.us
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !741 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.o
  br i1 %i.ah, label %bb.c, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_RSC_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %.01317.i.i.i.us
  store i32 %i.ag, ptr %i.ai, align 4, !tbaa !741
  %.not9.i.us = icmp eq i64 %.018.i.i78.i.us, 0
  br i1 %.not9.i.us, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_RSC_.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !650

_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_RSC_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %bb.b
  %.013.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ %.01317.i.i.i.us, %.lr.ph.i.i.i.us ], [ 0, %bb.c ]
  %i.aj = getelementptr inbounds [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i.us
  store i32 %i.o, ptr %i.aj, align 4, !tbaa !741
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_RSC_.exit.us, %.lr.ph.split.us
  %i.ak = getelementptr inbounds nuw i8, ptr %.011.us, i64 4 ; 2 uses
  %i.al = icmp ult ptr %i.ak, %2
  br i1 %i.al, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !13983

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.am = icmp eq i64 %spec.select.i.i.us, %i.l
  %or.cond = select i1 %i.j, i1 %i.am, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  br i1 %i.j, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load i32, ptr %0, align 4, !tbaa !741
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.ao = icmp eq i64 %i.k, 0
  %.pre31 = load i32, ptr %0, align 4, !tbaa !741 ; 2 uses
  br i1 %i.ao, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.e
  %i.ap = phi i32 [ %i.av, %bb.e ], [ %.pre31, %.lr.ph.split.split.us ] ; 3 uses
  %.011.us12.us = phi ptr [ %i.aw, %bb.e ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.aq = load i32, ptr %.011.us12.us, align 4, !tbaa !741 ; 3 uses
  %i.ar = icmp slt i32 %i.aq, %i.ap
  br i1 %i.ar, label %._crit_edge.i.i.us13.us, label %bb.e

._crit_edge.i.i.us13.us:                          ; preds = %.lr.ph.split.split.us.split.us
  store i32 %i.ap, ptr %.011.us12.us, align 4, !tbaa !741
  %i.as = load i32, ptr %i.an, align 4, !tbaa !741 ; 2 uses
  store i32 %i.as, ptr %0, align 4, !tbaa !741
  %i.at = icmp sge i32 %i.as, %i.aq
  %spec.select = zext i1 %i.at to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %spec.select
  store i32 %i.aq, ptr %i.au, align 4, !tbaa !741
  %.pre30 = load i32, ptr %0, align 4, !tbaa !741
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.us13.us, %.lr.ph.split.split.us.split.us
  %i.av = phi i32 [ %.pre30, %._crit_edge.i.i.us13.us ], [ %i.ap, %.lr.ph.split.split.us.split.us ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.011.us12.us, i64 4 ; 2 uses
  %i.ax = icmp ult ptr %i.aw, %2
  br i1 %i.ax, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !13983

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us, %bb.f
  %i.ay = phi i32 [ %i.bb, %bb.f ], [ %.pre31, %.lr.ph.split.split.us ] ; 3 uses
  %.011.us12 = phi ptr [ %i.bc, %bb.f ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.az = load i32, ptr %.011.us12, align 4, !tbaa !741 ; 3 uses
  %i.ba = icmp slt i32 %i.az, %i.ay
  br i1 %i.ba, label %._crit_edge.i.i.us13, label %bb.f

._crit_edge.i.i.us13:                             ; preds = %.lr.ph.split.split.us.split
  store i32 %i.ay, ptr %.011.us12, align 4, !tbaa !741
  store i32 %i.az, ptr %0, align 4, !tbaa !741
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.us13, %.lr.ph.split.split.us.split
  %i.bb = phi i32 [ %i.az, %._crit_edge.i.i.us13 ], [ %i.ay, %.lr.ph.split.split.us.split ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.011.us12, i64 4 ; 2 uses
  %i.bd = icmp ult ptr %i.bc, %2
  br i1 %i.bd, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !13983

._crit_edge:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.g
  %i.be = phi i32 [ %i.bh, %bb.g ], [ %.pre, %.lr.ph.split.split.preheader ] ; 3 uses
  %.011 = phi ptr [ %i.bi, %bb.g ], [ %1, %.lr.ph.split.split.preheader ] ; 3 uses
  %i.bf = load i32, ptr %.011, align 4, !tbaa !741 ; 3 uses
  %i.bg = icmp slt i32 %i.bf, %i.be
  br i1 %i.bg, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.split
  store i32 %i.be, ptr %.011, align 4, !tbaa !741
  store i32 %i.bf, ptr %0, align 4, !tbaa !741
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i
  %i.bh = phi i32 [ %i.be, %.lr.ph.split.split ], [ %i.bf, %._crit_edge.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.011, i64 4 ; 2 uses
  %i.bj = icmp ult ptr %i.bi, %2
  br i1 %i.bj, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !13983
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_RSC_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 4 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %3 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit.us
  %.014.us = phi i64 [ %i.al, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014.us
  %i.p = load i32, ptr %i.o, align 4, !tbaa !741  ; 2 uses
  %i.q = icmp slt i64 %.014.us, %i.i
  br i1 %i.q, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.014.us, %.split.us ] ; 2 uses
  %i.r = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [4 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.t, align 4, !tbaa !741
  %i.x = load i32, ptr %i.v, align 4, !tbaa !741
  %i.y = icmp slt i32 %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !741
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.us
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !741
  %i.ad = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ad, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !649

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ae = icmp sgt i64 %spec.select.i.us, %.014.us
  br i1 %i.ae, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i.us
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !741 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.p
  br i1 %i.ah, label %bb.c, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i.i.us
  store i32 %i.ag, ptr %i.ai, align 4, !tbaa !741
  %i.aj = icmp sgt i64 %.018.i.i.us, %.014.us
  br i1 %i.aj, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit.us, !llvm.loop !650

_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.014.us, %.split.us ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i32 %i.p, ptr %i.ak, align 4, !tbaa !741
  %.not.us = icmp eq i64 %.014.us, 0
  %i.al = add nsw i64 %.014.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !13984

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit
  %.014 = phi i64 [ %i.bl, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014
  %i.an = load i32, ptr %i.am, align 4, !tbaa !741 ; 2 uses
  %i.ao = icmp slt i64 %.014, %i.i
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.014, %.split ] ; 2 uses
  %i.ap = shl i64 %.029.i, 1                      ; 3 uses
  %i.aq = add i64 %i.ap, 2                        ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aq
  %i.as = getelementptr [4 x i8], ptr %0, i64 %i.ap
  %i.at = getelementptr i8, ptr %i.as, i64 4
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !741
  %i.av = load i32, ptr %i.at, align 4, !tbaa !741
  %i.aw = icmp slt i32 %i.au, %i.av
  %i.ax = or disjoint i64 %i.ap, 1
  %spec.select.i = select i1 %i.aw, i64 %i.ax, i64 %i.aq ; 4 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !741
  %i.ba = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !741
  %i.bb = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bb, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !649

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.014, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bc = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bd = load i32, ptr %i.m, align 4, !tbaa !741
  store i32 %i.bd, ptr %i.n, align 4, !tbaa !741
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.128.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.be = icmp sgt i64 %.128.i, %.014
  br i1 %i.be, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01317.i.i = phi i64 [ %.018.i.i, %bb.f ], [ %.128.i, %bb.e ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !741 ; 2 uses
  %i.bh = icmp slt i32 %i.bg, %i.an
  br i1 %i.bh, label %bb.f, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i.i
  store i32 %i.bg, ptr %i.bi, align 4, !tbaa !741
  %i.bj = icmp sgt i64 %.018.i.i, %.014
  br i1 %i.bj, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit, !llvm.loop !650

_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i32 %i.an, ptr %i.bk, align 4, !tbaa !741
  %.not = icmp eq i64 %.014, 0
  %i.bl = add nsw i64 %.014, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !13984

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit.us, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIiLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEE9NodeRangeENSC_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeISB_EEEELj0EEENSC_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSD_RKSN_RSP_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !1997
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !1998
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !768
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1493
  %i.g = load i64, ptr %0, align 8, !tbaa !1492
  %.not.i = icmp ult i64 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEE9NodeRangeENSC_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeISB_EEEELj0EEENSC_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSD_RKSN_RSP_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr null, ptr %3, align 8, !tbaa !2001
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 192)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEE9NodeRangeENSC_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeISB_EEEELj0EEENSC_14OpWithoutIndexEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !743
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !5367
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.l = load i32, ptr %1, align 4, !tbaa !741
  store i32 %i.l, ptr %i.k, align 32, !tbaa !741
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !5370
  %i.n = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  store i32 0, ptr %i.q, align 8, !tbaa !2014
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 124
  store i8 5, ptr %i.r, align 4, !tbaa !2015
  %i.s = shl nsw i64 %i.p, 1
  %i.t = and i64 %i.s, 9223372036854775806
  store i64 %i.t, ptr %i.o, align 16, !tbaa !2016
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.v = load i64, ptr %3, align 8, !tbaa !2017
  store i64 %i.v, ptr %i.u, align 64, !tbaa !2017
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr null, ptr %4, align 8, !tbaa !2021
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.w, align 8, !tbaa !2022
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.x, align 8, !tbaa !2025
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.y, align 8, !tbaa !827
  store ptr %4, ptr %i.m, align 8, !tbaa !5370
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEE9NodeRangeENSC_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeISB_EEEELj0EEENSC_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSD_RKSN_RSP_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS5_8LeafNodeIiLj3EEELj4EEELj5EEEE9NodeRangeENSC_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeISB_EEEELj0EEENSC_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSD_RKSN_RSP_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.aa = load atomic i8, ptr %i.z monotonic, align 1
end_hunk_0
begin_hunk_1_@_ZSt13__introselectIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEElN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_T0_T1_:bb.a
bb.b:                                             ; preds = %.lr.ph57
  %i.s = icmp slt i32 %i.p, %i.r
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.03454, align 8, !tbaa !768
  %i.t = load i64, ptr %i.l, align 8, !tbaa !768
  store i64 %i.t, ptr %.03454, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.l, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.d:                                             ; preds = %bb.b
  %i.u = icmp slt i32 %i.o, %i.r
  %.sroa.0.0.copyload.i.i22.i.i = load ptr, ptr %.03454, align 8, !tbaa !768 ; 2 uses
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.n, align 8, !tbaa !768
  store i64 %i.v, ptr %.03454, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i22.i.i, ptr %i.n, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  %i.w = load i64, ptr %i.m, align 8, !tbaa !768
  store i64 %i.w, ptr %.03454, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i22.i.i, ptr %i.m, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.g:                                             ; preds = %.lr.ph57
  %i.x = icmp slt i32 %i.o, %i.r
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i24.i.i = load ptr, ptr %.03454, align 8, !tbaa !768
  %i.y = load i64, ptr %i.m, align 8, !tbaa !768
  store i64 %i.y, ptr %.03454, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i24.i.i, ptr %i.m, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.z = icmp slt i32 %i.p, %i.r
  %.sroa.0.0.copyload.i.i25.i.i = load ptr, ptr %.03454, align 8, !tbaa !768 ; 2 uses
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !768
  store i64 %i.aa, ptr %.03454, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i25.i.i, ptr %i.n, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  %i.ab = load i64, ptr %i.l, align 8, !tbaa !768
  store i64 %i.ab, ptr %.03454, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i25.i.i, ptr %i.l, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i

_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader, %bb.n
  %.013.i.i = phi ptr [ %.114.i.i, %bb.n ], [ %.0213355, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.af, %bb.n ], [ %i.m, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader ]
  %i.ac = load i32, ptr %.03454, align 4, !tbaa !741 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i ], [ %i.af, %bb.l ] ; 8 uses
  %i.ad = load i32, ptr %.1.i.i, align 4, !tbaa !741
  %i.ae = icmp slt i32 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.ae, label %bb.l, label %.preheader.i.i, !llvm.loop !13996

.preheader.i.i:                                   ; preds = %bb.l, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.l ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 6 uses
  %i.ag = load i32, ptr %.114.i.i, align 4, !tbaa !741
  %i.ah = icmp slt i32 %i.ac, %i.ag
  br i1 %i.ah, label %.preheader.i.i, label %bb.m, !llvm.loop !13997

bb.m:                                             ; preds = %.preheader.i.i
  %i.ai = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.ai, label %bb.n, label %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEESM_SM_SM_T0_.exit

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i.i.i13.i = load ptr, ptr %.1.i.i, align 8, !tbaa !768
  %i.aj = load i64, ptr %.114.i.i, align 8, !tbaa !768
  store i64 %i.aj, ptr %.1.i.i, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i.i13.i, ptr %.114.i.i, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i, !llvm.loop !13998

_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEESM_SM_SM_T0_.exit: ; preds = %bb.m
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %..021 = select i1 %.not, ptr %.1.i.i, ptr %.0213355 ; 4 uses
  %.0. = select i1 %.not, ptr %.03454, ptr %.1.i.i ; 4 uses
  %i.ak = ptrtoint ptr %..021 to i64
  %i.al = ptrtoint ptr %.0. to i64                ; 2 uses
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = icmp sgt i64 %i.am, 24
  br i1 %i.an, label %.lr.ph, label %._crit_edge, !llvm.loop !13995

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEESM_SM_SM_T0_.exit, %bb.a
  %.021.lcssa = phi ptr [ %2, %bb.a ], [ %..021, %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEESM_SM_SM_T0_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.0., %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEESM_SM_SM_T0_.exit ] ; 8 uses
  %.lcssa28 = phi i64 [ %i.b, %bb.a ], [ %i.al, %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEESM_SM_SM_T0_.exit ]
  %i.ao = icmp eq ptr %.0.lcssa, %.021.lcssa
  br i1 %i.ao, label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_T0_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge
  %.018.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8 ; 2 uses
  %.not19.i = icmp eq ptr %.018.i, %.021.lcssa
  br i1 %.not19.i, label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.pre23.i = load i32, ptr %.0.lcssa, align 4, !tbaa !741
  br label %bb.o

bb.o:                                             ; preds = %bb.u, %.lr.ph.i
  %i.ap = phi i32 [ %.pre23.i, %.lr.ph.i ], [ %i.bk, %bb.u ]
  %.021.i = phi ptr [ %.018.i, %.lr.ph.i ], [ %.0.i, %bb.u ] ; 8 uses
  %.pn20.i = phi ptr [ %.0.lcssa, %.lr.ph.i ], [ %.021.i, %bb.u ] ; 4 uses
  %i.aq = load i32, ptr %.021.i, align 4, !tbaa !741
  %i.ar = icmp slt i32 %i.aq, %i.ap
  br i1 %i.ar, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %.sroa.01.0.copyload.i = load ptr, ptr %.021.i, align 8, !tbaa !768 ; 2 uses
  %i.as = ptrtoint ptr %.021.i to i64
  %i.at = sub i64 %i.as, %.lcssa28                ; 3 uses
  %i.au = ashr exact i64 %i.at, 3                 ; 2 uses
  %i.av = icmp sgt i64 %i.au, 1
  br i1 %i.av, label %bb.q, label %bb.r, !prof !1979

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 16
  %i.ax = sub nsw i64 0, %i.au
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ax
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %.0.lcssa, i64 %i.at, i1 false)
  br label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEES7_ET0_T_S9_S8_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.az = icmp eq i64 %i.at, 8
  br i1 %i.az, label %bb.s, label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEES7_ET0_T_S9_S8_.exit.i

bb.s:                                             ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  %i.bb = load i64, ptr %.0.lcssa, align 8, !tbaa !768
  store i64 %i.bb, ptr %i.ba, align 8, !tbaa !768
  br label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEES7_ET0_T_S9_S8_.exit.i

_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEES7_ET0_T_S9_S8_.exit.i: ; preds = %bb.s, %bb.r, %bb.q
  store ptr %.sroa.01.0.copyload.i, ptr %.0.lcssa, align 8, !tbaa !768
  %i.bc = ptrtoint ptr %.sroa.01.0.copyload.i to i64
  %i.bd = trunc i64 %i.bc to i32
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.be = load i64, ptr %.021.i, align 8, !tbaa !768 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.be to i32 ; 2 uses
  %i.bf = load i32, ptr %.pn20.i, align 4, !tbaa !741
  %i.bg = icmp sgt i32 %i.bf, %.sroa.0.0.extract.trunc.i.i
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.t, %.lr.ph.i.i
  %.013.i.i26 = phi ptr [ %.0.i.i27, %.lr.ph.i.i ], [ %.pn20.i, %bb.t ] ; 4 uses
  %.0912.i.i = phi ptr [ %.013.i.i26, %.lr.ph.i.i ], [ %.021.i, %bb.t ]
  %i.bh = load i64, ptr %.013.i.i26, align 8, !tbaa !768
  store i64 %i.bh, ptr %.0912.i.i, align 8, !tbaa !768
  %.0.i.i27 = getelementptr inbounds i8, ptr %.013.i.i26, i64 -8 ; 2 uses
  %i.bi = load i32, ptr %.0.i.i27, align 8, !tbaa !741
  %i.bj = icmp sgt i32 %i.bi, %.sroa.0.0.extract.trunc.i.i
  br i1 %i.bj, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_.exit.i, !llvm.loop !13999

_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.t
  %.09.lcssa.i.i = phi ptr [ %.021.i, %bb.t ], [ %.013.i.i26, %.lr.ph.i.i ]
  store i64 %i.be, ptr %.09.lcssa.i.i, align 8, !tbaa !768
  %.pre.i = load i32, ptr %.0.lcssa, align 4, !tbaa !741
  br label %bb.u

bb.u:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_.exit.i, %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEES7_ET0_T_S9_S8_.exit.i
  %i.bk = phi i32 [ %i.bd, %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEES7_ET0_T_S9_S8_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_.exit.i ]
  %.0.i = getelementptr inbounds nuw i8, ptr %.021.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %.021.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_T0_.exit, label %bb.o, !llvm.loop !14000

_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_T0_.exit: ; preds = %bb.u, %.preheader.i, %._crit_edge, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3911", align 1
  call void @_ZSt11__make_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr i64 %i.d, 3                         ; 4 uses
  %i.f = add nsw i64 %i.e, -1
  %i.g = lshr i64 %i.f, 1
  %i.h = icmp sgt i64 %i.e, 2
  %i.i = and i64 %i.d, 8
  %i.j = icmp eq i64 %i.i, 0                      ; 2 uses
  %i.k = add nsw i64 %i.e, -2                     ; 2 uses
  %i.l = ashr exact i64 %i.k, 1                   ; 2 uses
  br i1 %i.h, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %4 = add nsw i64 %i.e, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.e
  %.011.us = phi ptr [ %i.aq, %bb.e ], [ %1, %.lr.ph.split.us.preheader ] ; 4 uses
  %i.o = load i32, ptr %.011.us, align 4, !tbaa !741
  %i.p = load i32, ptr %0, align 4, !tbaa !741
  %i.q = icmp slt i32 %i.o, %i.p
  br i1 %i.q, label %.lr.ph.i.i.preheader.us, label %bb.e

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  %.sroa.02.0.copyload.i.us = load ptr, ptr %.011.us, align 8, !tbaa !768 ; 2 uses
  %i.r = load i64, ptr %0, align 8, !tbaa !768
  store i64 %i.r, ptr %.011.us, align 8, !tbaa !768
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.029.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.s = shl i64 %.029.i.i.us, 1                  ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr [8 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.u, align 4, !tbaa !741
  %i.y = load i32, ptr %i.w, align 4, !tbaa !741
  %i.z = icmp slt i32 %i.x, %i.y
  %i.aa = or disjoint i64 %i.s, 1
  %spec.select.i.i.us = select i1 %i.z, i64 %i.aa, i64 %i.t ; 6 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.us
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.i.us
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !768
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !768
  %i.ae = icmp slt i64 %spec.select.i.i.us, %i.g
  br i1 %i.ae, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !653

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  %i.af = ptrtoint ptr %.sroa.02.0.copyload.i.us to i64 ; 2 uses
  br i1 %.not.i.us, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_RT0_.exit.us, label %.lr.ph.i.i.i.us

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !768
  store i64 %i.ag, ptr %i.n, align 8, !tbaa !768
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
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !741
  %i.al = icmp slt i32 %i.ak, %.sroa.0.0.extract.trunc.i.i.i.us
  br i1 %i.al, label %bb.d, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_RT0_.exit.us

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i.us
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !768
  store i64 %i.an, ptr %i.am, align 8, !tbaa !768
  %.not13.i.us = icmp eq i64 %.018.i.i1112.i.us, 0
  br i1 %.not13.i.us, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_RT0_.exit.us, label %bb.c, !llvm.loop !654

_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_RT0_.exit.us: ; preds = %bb.c, %bb.d, %bb.b
  %i.ao = phi i64 [ %i.af, %bb.b ], [ %i.ai, %bb.d ], [ %i.ai, %bb.c ]
  %.013.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ %.01317.i.i.i.us, %bb.c ], [ 0, %bb.d ]
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.us
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !768
  br label %bb.e

bb.e:                                             ; preds = %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_RT0_.exit.us, %.lr.ph.split.us
  %i.aq = getelementptr inbounds nuw i8, ptr %.011.us, i64 8 ; 2 uses
  %i.ar = icmp ult ptr %i.aq, %2
  br i1 %i.ar, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !14001

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.as = icmp eq i64 %spec.select.i.i.us, %i.l
  %or.cond = select i1 %i.j, i1 %i.as, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %i.j, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load i32, ptr %0, align 4, !tbaa !741
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.au = icmp eq i64 %i.k, 0
  %.pre32 = load i32, ptr %0, align 4, !tbaa !741 ; 2 uses
  br i1 %i.au, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.f
  %i.av = phi i32 [ %i.be, %bb.f ], [ %.pre32, %.lr.ph.split.split.us ] ; 2 uses
  %.011.us12.us = phi ptr [ %i.bf, %bb.f ], [ %1, %.lr.ph.split.split.us ] ; 4 uses
  %i.aw = load i32, ptr %.011.us12.us, align 4, !tbaa !741
  %i.ax = icmp slt i32 %i.aw, %i.av
  br i1 %i.ax, label %._crit_edge.i.i.us13.us, label %bb.f

._crit_edge.i.i.us13.us:                          ; preds = %.lr.ph.split.split.us.split.us
  %.sroa.02.0.copyload.i.us14.us = load ptr, ptr %.011.us12.us, align 8, !tbaa !768
  %i.ay = load i64, ptr %0, align 8, !tbaa !768
  store i64 %i.ay, ptr %.011.us12.us, align 8, !tbaa !768
  %i.az = load i64, ptr %i.at, align 8, !tbaa !768 ; 2 uses
  store i64 %i.az, ptr %0, align 8, !tbaa !768
  %i.ba = ptrtoint ptr %.sroa.02.0.copyload.i.us14.us to i64 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i.us16.us = trunc i64 %i.ba to i32
  %i.bb = trunc i64 %i.az to i32
  %i.bc = icmp sge i32 %i.bb, %.sroa.0.0.extract.trunc.i.i.i.us16.us
  %spec.select = zext i1 %i.bc to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %spec.select
  store i64 %i.ba, ptr %i.bd, align 8, !tbaa !768
  %.pre31 = load i32, ptr %0, align 8, !tbaa !741
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.us13.us, %.lr.ph.split.split.us.split.us
  %i.be = phi i32 [ %.pre31, %._crit_edge.i.i.us13.us ], [ %i.av, %.lr.ph.split.split.us.split.us ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.011.us12.us, i64 8 ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %2
  br i1 %i.bg, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !14001

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us, %bb.g
  %i.bh = phi i32 [ %i.bn, %bb.g ], [ %.pre32, %.lr.ph.split.split.us ] ; 2 uses
  %.011.us12 = phi ptr [ %i.bo, %bb.g ], [ %1, %.lr.ph.split.split.us ] ; 4 uses
  %i.bi = load i32, ptr %.011.us12, align 4, !tbaa !741
  %i.bj = icmp slt i32 %i.bi, %i.bh
  br i1 %i.bj, label %._crit_edge.i.i.us13, label %bb.g

._crit_edge.i.i.us13:                             ; preds = %.lr.ph.split.split.us.split
  %.sroa.02.0.copyload.i.us14 = load ptr, ptr %.011.us12, align 8, !tbaa !768
  %i.bk = load i64, ptr %0, align 8, !tbaa !768
  store i64 %i.bk, ptr %.011.us12, align 8, !tbaa !768
  %i.bl = ptrtoint ptr %.sroa.02.0.copyload.i.us14 to i64 ; 2 uses
  store i64 %i.bl, ptr %0, align 8, !tbaa !768
  %i.bm = trunc i64 %i.bl to i32
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.us13, %.lr.ph.split.split.us.split
  %i.bn = phi i32 [ %i.bm, %._crit_edge.i.i.us13 ], [ %i.bh, %.lr.ph.split.split.us.split ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.011.us12, i64 8 ; 2 uses
  %i.bp = icmp ult ptr %i.bo, %2
  br i1 %i.bp, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !14001

._crit_edge:                                      ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.a
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.h
  %i.bq = phi i32 [ %i.bw, %bb.h ], [ %.pre, %.lr.ph.split.split.preheader ] ; 2 uses
  %.011 = phi ptr [ %i.bx, %bb.h ], [ %1, %.lr.ph.split.split.preheader ] ; 4 uses
  %i.br = load i32, ptr %.011, align 4, !tbaa !741
  %i.bs = icmp slt i32 %i.br, %i.bq
  br i1 %i.bs, label %._crit_edge.i.i, label %bb.h

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.split
  %.sroa.02.0.copyload.i = load ptr, ptr %.011, align 8, !tbaa !768
  %i.bt = load i64, ptr %0, align 8, !tbaa !768
  store i64 %i.bt, ptr %.011, align 8, !tbaa !768
  %i.bu = ptrtoint ptr %.sroa.02.0.copyload.i to i64 ; 2 uses
  store i64 %i.bu, ptr %0, align 8, !tbaa !768
  %i.bv = trunc i64 %i.bu to i32
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i
  %i.bw = phi i32 [ %i.bq, %.lr.ph.split.split ], [ %i.bv, %._crit_edge.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.011, i64 8 ; 2 uses
  %i.by = icmp ult ptr %i.bx, %2
  br i1 %i.by, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !14001
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 4 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %3 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us
  %.015.us = phi i64 [ %i.ao, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us
  %.sroa.02.0.copyload.us = load ptr, ptr %i.o, align 8, !tbaa !768 ; 2 uses
  %i.p = icmp slt i64 %.015.us, %i.i
  br i1 %i.p, label %.lr.ph.i.us, label %._crit_edge.i.us.thread

._crit_edge.i.us.thread:                          ; preds = %.split.us
  %i.q = ptrtoint ptr %.sroa.02.0.copyload.us to i64
  br label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.015.us, %.split.us ] ; 2 uses
  %i.r = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [8 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.t, align 4, !tbaa !741
  %i.x = load i32, ptr %i.v, align 4, !tbaa !741
  %i.y = icmp slt i32 %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.us
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !768
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !768
  %i.ad = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ad, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !653

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ae = icmp sgt i64 %spec.select.i.us, %.015.us
  %i.af = ptrtoint ptr %.sroa.02.0.copyload.us to i64 ; 4 uses
  br i1 %i.ae, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %.sroa.0.0.extract.trunc.i.i.us = trunc i64 %i.af to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.us
  %.01317.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.d ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i.us ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !741
  %i.ai = icmp slt i32 %i.ah, %.sroa.0.0.extract.trunc.i.i.us
  br i1 %i.ai, label %bb.d, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i.us
  %i.ak = load i64, ptr %i.ag, align 8, !tbaa !768
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !768
  %i.al = icmp sgt i64 %.018.i.i.us, %.015.us
  br i1 %i.al, label %bb.c, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us, !llvm.loop !654

_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us: ; preds = %bb.c, %bb.d, %._crit_edge.i.us.thread, %._crit_edge.i.us
  %i.am = phi i64 [ %i.af, %._crit_edge.i.us ], [ %i.q, %._crit_edge.i.us.thread ], [ %i.af, %bb.d ], [ %i.af, %bb.c ]
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.015.us, %._crit_edge.i.us.thread ], [ %.01317.i.i.us, %bb.c ], [ %.018.i.i.us, %bb.d ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i64 %i.am, ptr %i.an, align 8, !tbaa !768
  %.not.us = icmp eq i64 %.015.us, 0
  %i.ao = add nsw i64 %.015.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !14002

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit
  %.015 = phi i64 [ %i.bp, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015
  %.sroa.02.0.copyload = load ptr, ptr %i.ap, align 8, !tbaa !768
  %i.aq = icmp slt i64 %.015, %i.i
  br i1 %i.aq, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.015, %.split ] ; 2 uses
  %i.ar = shl i64 %.029.i, 1                      ; 3 uses
  %i.as = add i64 %i.ar, 2                        ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %0, i64 %i.as
  %i.au = getelementptr [8 x i8], ptr %0, i64 %i.ar
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !741
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !741
  %i.ay = icmp slt i32 %i.aw, %i.ax
  %i.az = or disjoint i64 %i.ar, 1
  %spec.select.i = select i1 %i.ay, i64 %i.az, i64 %i.as ; 4 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !768
  store i64 %i.bc, ptr %i.bb, align 8, !tbaa !768
  %i.bd = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bd, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !653

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.015, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.be = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.be, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.bf = load i64, ptr %i.m, align 8, !tbaa !768
  store i64 %i.bf, ptr %i.n, align 8, !tbaa !768
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.e ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bg = icmp sgt i64 %.1.i, %.015
  %i.bh = ptrtoint ptr %.sroa.02.0.copyload to i64 ; 2 uses
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.f
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.bh to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.01317.i.i = phi i64 [ %.1.i, %.lr.ph.i.i ], [ %.018.i.i, %bb.h ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !741
  %i.bk = icmp slt i32 %i.bj, %.sroa.0.0.extract.trunc.i.i
  br i1 %i.bk, label %bb.h, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i
  %i.bm = load i64, ptr %i.bi, align 8, !tbaa !768
  store i64 %i.bm, ptr %i.bl, align 8, !tbaa !768
  %i.bn = icmp sgt i64 %.018.i.i, %.015
  br i1 %i.bn, label %bb.g, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit, !llvm.loop !654

_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit: ; preds = %bb.g, %bb.h, %bb.f
  %.013.lcssa.i.i = phi i64 [ %.1.i, %bb.f ], [ %.018.i.i, %bb.h ], [ %.01317.i.i, %bb.g ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i64 %i.bh, ptr %i.bo, align 8, !tbaa !768
  %.not = icmp eq i64 %.015, 0
  %i.bp = add nsw i64 %.015, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !14002

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_8LeafNodeIiLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i64 @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE20eraseBackgroundTilesEv(ptr noundef nonnull align 8 dereferenceable(68) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::set", align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store i32 0, ptr %i.a, align 8, !tbaa !812
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !813
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !814
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !815
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !816
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !814  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not15 = icmp eq ptr %i.g, %i.h
  br i1 %.not15, label %._crit_edge21, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt3setIN7openvdb5v13_04math5CoordESt4lessIS3_ESaIS3_EE6insertERKS3_.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !814 ; 2 uses
  %.not1417 = icmp eq ptr %.pre, %i.a
  br i1 %.not1417, label %._crit_edge21, label %.lr.ph20

bb.b:                                             ; preds = %.lr.ph, %_ZNSt3setIN7openvdb5v13_04math5CoordESt4lessIS3_ESaIS3_EE6insertERKS3_.exit
  %.sroa.010.016 = phi ptr [ %i.g, %.lr.ph ], [ %i.v, %_ZNSt3setIN7openvdb5v13_04math5CoordESt4lessIS3_ESaIS3_EE6insertERKS3_.exit ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.010.016, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !984
  %i.l = icmp ne ptr %i.k, null
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.010.016, i64 60
  %i.n = load i8, ptr %i.m, align 4, !range !788
  %i.o = trunc nuw i8 %i.n to i1
  %.not3.i = select i1 %i.l, i1 true, i1 %i.o
  br i1 %.not3.i, label %_ZNSt3setIN7openvdb5v13_04math5CoordESt4lessIS3_ESaIS3_EE6insertERKS3_.exit, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE16isBackgroundTileERKSt23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEE.exit

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE16isBackgroundTileERKSt23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEE.exit: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.010.016, i64 56
  %i.q = load i32, ptr %i.p, align 8, !tbaa !741
  %i.r = load i32, ptr %i.i, align 8, !tbaa !741
  %i.s = icmp eq i32 %i.q, %i.r
  br i1 %i.s, label %bb.c, label %_ZNSt3setIN7openvdb5v13_04math5CoordESt4lessIS3_ESaIS3_EE6insertERKS3_.exit

bb.c:                                             ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE16isBackgroundTileERKSt23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.010.016, i64 32
  %i.u = invoke { ptr, i8 } @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE16_M_insert_uniqueIRKS3_EESt4pairISt17_Rb_tree_iteratorIS3_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(12) %i.t)
          to label %_ZNSt3setIN7openvdb5v13_04math5CoordESt4lessIS3_ESaIS3_EE6insertERKS3_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt3setIN7openvdb5v13_04math5CoordESt4lessIS3_ESaIS3_EE6insertERKS3_.exit: ; preds = %bb.b, %bb.c, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIiLj3EEELj4EEELj5EEEE16isBackgroundTileERKSt23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEE.exit
  %i.v = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.010.016) #32 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.h
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !14003

end_hunk_1
begin_hunk_2_@_ZSt13__introselectIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEElN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_T0_T1_:bb.a
bb.b:                                             ; preds = %.lr.ph57
  %i.s = icmp slt i32 %i.p, %i.r
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.03454, align 8, !tbaa !768
  %i.t = load i64, ptr %i.l, align 8, !tbaa !768
  store i64 %i.t, ptr %.03454, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.l, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.d:                                             ; preds = %bb.b
  %i.u = icmp slt i32 %i.o, %i.r
  %.sroa.0.0.copyload.i.i22.i.i = load ptr, ptr %.03454, align 8, !tbaa !768 ; 2 uses
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.n, align 8, !tbaa !768
  store i64 %i.v, ptr %.03454, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i22.i.i, ptr %i.n, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  %i.w = load i64, ptr %i.m, align 8, !tbaa !768
  store i64 %i.w, ptr %.03454, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i22.i.i, ptr %i.m, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.g:                                             ; preds = %.lr.ph57
  %i.x = icmp slt i32 %i.o, %i.r
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i24.i.i = load ptr, ptr %.03454, align 8, !tbaa !768
  %i.y = load i64, ptr %i.m, align 8, !tbaa !768
  store i64 %i.y, ptr %.03454, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i24.i.i, ptr %i.m, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.z = icmp slt i32 %i.p, %i.r
  %.sroa.0.0.copyload.i.i25.i.i = load ptr, ptr %.03454, align 8, !tbaa !768 ; 2 uses
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !768
  store i64 %i.aa, ptr %.03454, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i25.i.i, ptr %i.n, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  %i.ab = load i64, ptr %i.l, align 8, !tbaa !768
  store i64 %i.ab, ptr %.03454, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i25.i.i, ptr %i.l, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i

_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader, %bb.n
  %.013.i.i = phi ptr [ %.114.i.i, %bb.n ], [ %.0213355, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.af, %bb.n ], [ %i.m, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader ]
  %i.ac = load i32, ptr %.03454, align 4, !tbaa !741 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i ], [ %i.af, %bb.l ] ; 8 uses
  %i.ad = load i32, ptr %.1.i.i, align 4, !tbaa !741
  %i.ae = icmp slt i32 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.ae, label %bb.l, label %.preheader.i.i, !llvm.loop !14006

.preheader.i.i:                                   ; preds = %bb.l, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.l ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 6 uses
  %i.ag = load i32, ptr %.114.i.i, align 4, !tbaa !741
  %i.ah = icmp slt i32 %i.ac, %i.ag
  br i1 %i.ah, label %.preheader.i.i, label %bb.m, !llvm.loop !14007

bb.m:                                             ; preds = %.preheader.i.i
  %i.ai = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.ai, label %bb.n, label %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEESM_SM_SM_T0_.exit

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i.i.i13.i = load ptr, ptr %.1.i.i, align 8, !tbaa !768
  %i.aj = load i64, ptr %.114.i.i, align 8, !tbaa !768
  store i64 %i.aj, ptr %.1.i.i, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i.i13.i, ptr %.114.i.i, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i, !llvm.loop !14008

_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEESM_SM_SM_T0_.exit: ; preds = %bb.m
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %..021 = select i1 %.not, ptr %.1.i.i, ptr %.0213355 ; 4 uses
  %.0. = select i1 %.not, ptr %.03454, ptr %.1.i.i ; 4 uses
  %i.ak = ptrtoint ptr %..021 to i64
  %i.al = ptrtoint ptr %.0. to i64                ; 2 uses
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = icmp sgt i64 %i.am, 24
  br i1 %i.an, label %.lr.ph, label %._crit_edge, !llvm.loop !14005

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEESM_SM_SM_T0_.exit, %bb.a
  %.021.lcssa = phi ptr [ %2, %bb.a ], [ %..021, %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEESM_SM_SM_T0_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.0., %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEESM_SM_SM_T0_.exit ] ; 8 uses
  %.lcssa28 = phi i64 [ %i.b, %bb.a ], [ %i.al, %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEESM_SM_SM_T0_.exit ]
  %i.ao = icmp eq ptr %.0.lcssa, %.021.lcssa
  br i1 %i.ao, label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_T0_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge
  %.018.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8 ; 2 uses
  %.not19.i = icmp eq ptr %.018.i, %.021.lcssa
  br i1 %.not19.i, label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.pre23.i = load i32, ptr %.0.lcssa, align 4, !tbaa !741
  br label %bb.o

bb.o:                                             ; preds = %bb.u, %.lr.ph.i
  %i.ap = phi i32 [ %.pre23.i, %.lr.ph.i ], [ %i.bk, %bb.u ]
  %.021.i = phi ptr [ %.018.i, %.lr.ph.i ], [ %.0.i, %bb.u ] ; 8 uses
  %.pn20.i = phi ptr [ %.0.lcssa, %.lr.ph.i ], [ %.021.i, %bb.u ] ; 4 uses
  %i.aq = load i32, ptr %.021.i, align 4, !tbaa !741
  %i.ar = icmp slt i32 %i.aq, %i.ap
  br i1 %i.ar, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %.sroa.01.0.copyload.i = load ptr, ptr %.021.i, align 8, !tbaa !768 ; 2 uses
  %i.as = ptrtoint ptr %.021.i to i64
  %i.at = sub i64 %i.as, %.lcssa28                ; 3 uses
  %i.au = ashr exact i64 %i.at, 3                 ; 2 uses
  %i.av = icmp sgt i64 %i.au, 1
  br i1 %i.av, label %bb.q, label %bb.r, !prof !1979

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 16
  %i.ax = sub nsw i64 0, %i.au
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ax
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %.0.lcssa, i64 %i.at, i1 false)
  br label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEES9_ET0_T_SB_SA_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.az = icmp eq i64 %i.at, 8
  br i1 %i.az, label %bb.s, label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEES9_ET0_T_SB_SA_.exit.i

bb.s:                                             ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  %i.bb = load i64, ptr %.0.lcssa, align 8, !tbaa !768
  store i64 %i.bb, ptr %i.ba, align 8, !tbaa !768
  br label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEES9_ET0_T_SB_SA_.exit.i

_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEES9_ET0_T_SB_SA_.exit.i: ; preds = %bb.s, %bb.r, %bb.q
  store ptr %.sroa.01.0.copyload.i, ptr %.0.lcssa, align 8, !tbaa !768
  %i.bc = ptrtoint ptr %.sroa.01.0.copyload.i to i64
  %i.bd = trunc i64 %i.bc to i32
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.be = load i64, ptr %.021.i, align 8, !tbaa !768 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.be to i32 ; 2 uses
  %i.bf = load i32, ptr %.pn20.i, align 4, !tbaa !741
  %i.bg = icmp sgt i32 %i.bf, %.sroa.0.0.extract.trunc.i.i
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.t, %.lr.ph.i.i
  %.013.i.i26 = phi ptr [ %.0.i.i27, %.lr.ph.i.i ], [ %.pn20.i, %bb.t ] ; 4 uses
  %.0912.i.i = phi ptr [ %.013.i.i26, %.lr.ph.i.i ], [ %.021.i, %bb.t ]
  %i.bh = load i64, ptr %.013.i.i26, align 8, !tbaa !768
  store i64 %i.bh, ptr %.0912.i.i, align 8, !tbaa !768
  %.0.i.i27 = getelementptr inbounds i8, ptr %.013.i.i26, i64 -8 ; 2 uses
  %i.bi = load i32, ptr %.0.i.i27, align 8, !tbaa !741
  %i.bj = icmp sgt i32 %i.bi, %.sroa.0.0.extract.trunc.i.i
  br i1 %i.bj, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_.exit.i, !llvm.loop !14009

_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.t
  %.09.lcssa.i.i = phi ptr [ %.021.i, %bb.t ], [ %.013.i.i26, %.lr.ph.i.i ]
  store i64 %i.be, ptr %.09.lcssa.i.i, align 8, !tbaa !768
  %.pre.i = load i32, ptr %.0.lcssa, align 4, !tbaa !741
  br label %bb.u

bb.u:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_.exit.i, %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEES9_ET0_T_SB_SA_.exit.i
  %i.bk = phi i32 [ %i.bd, %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEES9_ET0_T_SB_SA_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_.exit.i ]
  %.0.i = getelementptr inbounds nuw i8, ptr %.021.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %.021.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_T0_.exit, label %bb.o, !llvm.loop !14010

_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_T0_.exit: ; preds = %bb.u, %.preheader.i, %._crit_edge, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3916", align 1
  call void @_ZSt11__make_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr i64 %i.d, 3                         ; 4 uses
  %i.f = add nsw i64 %i.e, -1
  %i.g = lshr i64 %i.f, 1
  %i.h = icmp sgt i64 %i.e, 2
  %i.i = and i64 %i.d, 8
  %i.j = icmp eq i64 %i.i, 0                      ; 2 uses
  %i.k = add nsw i64 %i.e, -2                     ; 2 uses
  %i.l = ashr exact i64 %i.k, 1                   ; 2 uses
  br i1 %i.h, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %4 = add nsw i64 %i.e, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.e
  %.011.us = phi ptr [ %i.aq, %bb.e ], [ %1, %.lr.ph.split.us.preheader ] ; 4 uses
  %i.o = load i32, ptr %.011.us, align 4, !tbaa !741
  %i.p = load i32, ptr %0, align 4, !tbaa !741
  %i.q = icmp slt i32 %i.o, %i.p
  br i1 %i.q, label %.lr.ph.i.i.preheader.us, label %bb.e

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  %.sroa.02.0.copyload.i.us = load ptr, ptr %.011.us, align 8, !tbaa !768 ; 2 uses
  %i.r = load i64, ptr %0, align 8, !tbaa !768
  store i64 %i.r, ptr %.011.us, align 8, !tbaa !768
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.029.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.s = shl i64 %.029.i.i.us, 1                  ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr [8 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.u, align 4, !tbaa !741
  %i.y = load i32, ptr %i.w, align 4, !tbaa !741
  %i.z = icmp slt i32 %i.x, %i.y
  %i.aa = or disjoint i64 %i.s, 1
  %spec.select.i.i.us = select i1 %i.z, i64 %i.aa, i64 %i.t ; 6 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.us
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.i.us
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !768
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !768
  %i.ae = icmp slt i64 %spec.select.i.i.us, %i.g
  br i1 %i.ae, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !655

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  %i.af = ptrtoint ptr %.sroa.02.0.copyload.i.us to i64 ; 2 uses
  br i1 %.not.i.us, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_RT0_.exit.us, label %.lr.ph.i.i.i.us

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !768
  store i64 %i.ag, ptr %i.n, align 8, !tbaa !768
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
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !741
  %i.al = icmp slt i32 %i.ak, %.sroa.0.0.extract.trunc.i.i.i.us
  br i1 %i.al, label %bb.d, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_RT0_.exit.us

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i.us
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !768
  store i64 %i.an, ptr %i.am, align 8, !tbaa !768
  %.not13.i.us = icmp eq i64 %.018.i.i1112.i.us, 0
  br i1 %.not13.i.us, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_RT0_.exit.us, label %bb.c, !llvm.loop !656

_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_RT0_.exit.us: ; preds = %bb.c, %bb.d, %bb.b
  %i.ao = phi i64 [ %i.af, %bb.b ], [ %i.ai, %bb.d ], [ %i.ai, %bb.c ]
  %.013.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ %.01317.i.i.i.us, %bb.c ], [ 0, %bb.d ]
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.us
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !768
  br label %bb.e

bb.e:                                             ; preds = %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_RT0_.exit.us, %.lr.ph.split.us
  %i.aq = getelementptr inbounds nuw i8, ptr %.011.us, i64 8 ; 2 uses
  %i.ar = icmp ult ptr %i.aq, %2
  br i1 %i.ar, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !14011

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.as = icmp eq i64 %spec.select.i.i.us, %i.l
  %or.cond = select i1 %i.j, i1 %i.as, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %i.j, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load i32, ptr %0, align 4, !tbaa !741
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.au = icmp eq i64 %i.k, 0
  %.pre32 = load i32, ptr %0, align 4, !tbaa !741 ; 2 uses
  br i1 %i.au, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.f
  %i.av = phi i32 [ %i.be, %bb.f ], [ %.pre32, %.lr.ph.split.split.us ] ; 2 uses
  %.011.us12.us = phi ptr [ %i.bf, %bb.f ], [ %1, %.lr.ph.split.split.us ] ; 4 uses
  %i.aw = load i32, ptr %.011.us12.us, align 4, !tbaa !741
  %i.ax = icmp slt i32 %i.aw, %i.av
  br i1 %i.ax, label %._crit_edge.i.i.us13.us, label %bb.f

._crit_edge.i.i.us13.us:                          ; preds = %.lr.ph.split.split.us.split.us
  %.sroa.02.0.copyload.i.us14.us = load ptr, ptr %.011.us12.us, align 8, !tbaa !768
  %i.ay = load i64, ptr %0, align 8, !tbaa !768
  store i64 %i.ay, ptr %.011.us12.us, align 8, !tbaa !768
  %i.az = load i64, ptr %i.at, align 8, !tbaa !768 ; 2 uses
  store i64 %i.az, ptr %0, align 8, !tbaa !768
  %i.ba = ptrtoint ptr %.sroa.02.0.copyload.i.us14.us to i64 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i.us16.us = trunc i64 %i.ba to i32
  %i.bb = trunc i64 %i.az to i32
  %i.bc = icmp sge i32 %i.bb, %.sroa.0.0.extract.trunc.i.i.i.us16.us
  %spec.select = zext i1 %i.bc to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %spec.select
  store i64 %i.ba, ptr %i.bd, align 8, !tbaa !768
  %.pre31 = load i32, ptr %0, align 8, !tbaa !741
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.us13.us, %.lr.ph.split.split.us.split.us
  %i.be = phi i32 [ %.pre31, %._crit_edge.i.i.us13.us ], [ %i.av, %.lr.ph.split.split.us.split.us ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.011.us12.us, i64 8 ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %2
  br i1 %i.bg, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !14011

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us, %bb.g
  %i.bh = phi i32 [ %i.bn, %bb.g ], [ %.pre32, %.lr.ph.split.split.us ] ; 2 uses
  %.011.us12 = phi ptr [ %i.bo, %bb.g ], [ %1, %.lr.ph.split.split.us ] ; 4 uses
  %i.bi = load i32, ptr %.011.us12, align 4, !tbaa !741
  %i.bj = icmp slt i32 %i.bi, %i.bh
  br i1 %i.bj, label %._crit_edge.i.i.us13, label %bb.g

._crit_edge.i.i.us13:                             ; preds = %.lr.ph.split.split.us.split
  %.sroa.02.0.copyload.i.us14 = load ptr, ptr %.011.us12, align 8, !tbaa !768
  %i.bk = load i64, ptr %0, align 8, !tbaa !768
  store i64 %i.bk, ptr %.011.us12, align 8, !tbaa !768
  %i.bl = ptrtoint ptr %.sroa.02.0.copyload.i.us14 to i64 ; 2 uses
  store i64 %i.bl, ptr %0, align 8, !tbaa !768
  %i.bm = trunc i64 %i.bl to i32
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.us13, %.lr.ph.split.split.us.split
  %i.bn = phi i32 [ %i.bm, %._crit_edge.i.i.us13 ], [ %i.bh, %.lr.ph.split.split.us.split ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.011.us12, i64 8 ; 2 uses
  %i.bp = icmp ult ptr %i.bo, %2
  br i1 %i.bp, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !14011

._crit_edge:                                      ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.a
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.h
  %i.bq = phi i32 [ %i.bw, %bb.h ], [ %.pre, %.lr.ph.split.split.preheader ] ; 2 uses
  %.011 = phi ptr [ %i.bx, %bb.h ], [ %1, %.lr.ph.split.split.preheader ] ; 4 uses
  %i.br = load i32, ptr %.011, align 4, !tbaa !741
  %i.bs = icmp slt i32 %i.br, %i.bq
  br i1 %i.bs, label %._crit_edge.i.i, label %bb.h

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.split
  %.sroa.02.0.copyload.i = load ptr, ptr %.011, align 8, !tbaa !768
  %i.bt = load i64, ptr %0, align 8, !tbaa !768
  store i64 %i.bt, ptr %.011, align 8, !tbaa !768
  %i.bu = ptrtoint ptr %.sroa.02.0.copyload.i to i64 ; 2 uses
  store i64 %i.bu, ptr %0, align 8, !tbaa !768
  %i.bv = trunc i64 %i.bu to i32
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i
  %i.bw = phi i32 [ %i.bq, %.lr.ph.split.split ], [ %i.bv, %._crit_edge.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.011, i64 8 ; 2 uses
  %i.by = icmp ult ptr %i.bx, %2
  br i1 %i.by, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !14011
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 4 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %3 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us
  %.015.us = phi i64 [ %i.ao, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us
  %.sroa.02.0.copyload.us = load ptr, ptr %i.o, align 8, !tbaa !768 ; 2 uses
  %i.p = icmp slt i64 %.015.us, %i.i
  br i1 %i.p, label %.lr.ph.i.us, label %._crit_edge.i.us.thread

._crit_edge.i.us.thread:                          ; preds = %.split.us
  %i.q = ptrtoint ptr %.sroa.02.0.copyload.us to i64
  br label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.015.us, %.split.us ] ; 2 uses
  %i.r = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [8 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.t, align 4, !tbaa !741
  %i.x = load i32, ptr %i.v, align 4, !tbaa !741
  %i.y = icmp slt i32 %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.us
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !768
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !768
  %i.ad = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ad, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !655

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ae = icmp sgt i64 %spec.select.i.us, %.015.us
  %i.af = ptrtoint ptr %.sroa.02.0.copyload.us to i64 ; 4 uses
  br i1 %i.ae, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %.sroa.0.0.extract.trunc.i.i.us = trunc i64 %i.af to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.us
  %.01317.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.d ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i.us ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !741
  %i.ai = icmp slt i32 %i.ah, %.sroa.0.0.extract.trunc.i.i.us
  br i1 %i.ai, label %bb.d, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i.us
  %i.ak = load i64, ptr %i.ag, align 8, !tbaa !768
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !768
  %i.al = icmp sgt i64 %.018.i.i.us, %.015.us
  br i1 %i.al, label %bb.c, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us, !llvm.loop !656

_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us: ; preds = %bb.c, %bb.d, %._crit_edge.i.us.thread, %._crit_edge.i.us
  %i.am = phi i64 [ %i.af, %._crit_edge.i.us ], [ %i.q, %._crit_edge.i.us.thread ], [ %i.af, %bb.d ], [ %i.af, %bb.c ]
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.015.us, %._crit_edge.i.us.thread ], [ %.01317.i.i.us, %bb.c ], [ %.018.i.i.us, %bb.d ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i64 %i.am, ptr %i.an, align 8, !tbaa !768
  %.not.us = icmp eq i64 %.015.us, 0
  %i.ao = add nsw i64 %.015.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !14012

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit
  %.015 = phi i64 [ %i.bp, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015
  %.sroa.02.0.copyload = load ptr, ptr %i.ap, align 8, !tbaa !768
  %i.aq = icmp slt i64 %.015, %i.i
  br i1 %i.aq, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.015, %.split ] ; 2 uses
  %i.ar = shl i64 %.029.i, 1                      ; 3 uses
  %i.as = add i64 %i.ar, 2                        ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %0, i64 %i.as
  %i.au = getelementptr [8 x i8], ptr %0, i64 %i.ar
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !741
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !741
  %i.ay = icmp slt i32 %i.aw, %i.ax
  %i.az = or disjoint i64 %i.ar, 1
  %spec.select.i = select i1 %i.ay, i64 %i.az, i64 %i.as ; 4 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !768
  store i64 %i.bc, ptr %i.bb, align 8, !tbaa !768
  %i.bd = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bd, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !655

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.015, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.be = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.be, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.bf = load i64, ptr %i.m, align 8, !tbaa !768
  store i64 %i.bf, ptr %i.n, align 8, !tbaa !768
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.e ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bg = icmp sgt i64 %.1.i, %.015
  %i.bh = ptrtoint ptr %.sroa.02.0.copyload to i64 ; 2 uses
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.f
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.bh to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.01317.i.i = phi i64 [ %.1.i, %.lr.ph.i.i ], [ %.018.i.i, %bb.h ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !741
  %i.bk = icmp slt i32 %i.bj, %.sroa.0.0.extract.trunc.i.i
  br i1 %i.bk, label %bb.h, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i
  %i.bm = load i64, ptr %i.bi, align 8, !tbaa !768
  store i64 %i.bm, ptr %i.bl, align 8, !tbaa !768
  %i.bn = icmp sgt i64 %.018.i.i, %.015
  br i1 %i.bn, label %bb.g, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit, !llvm.loop !656

_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit: ; preds = %bb.g, %bb.h, %bb.f
  %.013.lcssa.i.i = phi i64 [ %.1.i, %bb.f ], [ %.018.i.i, %bb.h ], [ %.01317.i.i, %bb.g ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i64 %i.bh, ptr %i.bo, align 8, !tbaa !768
  %.not = icmp eq i64 %.015, 0
  %i.bp = add nsw i64 %.015, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !14012

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIiNS2_12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE5eraseERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE11equal_rangeERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 3 uses
  %i.c = extractvalue { ptr, ptr } %i.a, 1        ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !816  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !814
  %i.h = icmp eq ptr %i.b, %i.g
  br i1 %i.h, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = icmp eq ptr %i.c, %i.i
  br i1 %i.j, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !813
  invoke void @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE8_M_eraseEPSt13_Rb_tree_nodeISF_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.l)
          to label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE5clearEv.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #33
  unreachable

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE5clearEv.exit.i: ; preds = %bb.c
  store ptr null, ptr %i.k, align 8, !tbaa !813
  store ptr %i.i, ptr %i.f, align 8, !tbaa !814
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.i, ptr %i.o, align 8, !tbaa !815
  store i64 0, ptr %i.d, align 8, !tbaa !816
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISF_ESN_.exit

.critedge.i:                                      ; preds = %bb.b, %bb.a
  %.not8.i = icmp eq ptr %i.b, %i.c
  br i1 %.not8.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISF_ESN_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.sroa.06.09.i = phi ptr [ %i.b, %.lr.ph.i ], [ %i.q, %bb.e ] ; 2 uses
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.09.i) #32 ; 2 uses
  %i.r = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.09.i, ptr noundef nonnull align 8 dereferenceable(32) %i.p) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 64) #31
  %i.s = load i64, ptr %i.d, align 8, !tbaa !816
  %i.t = add i64 %i.s, -1                         ; 2 uses
  store i64 %i.t, ptr %i.d, align 8, !tbaa !816
  %.not.i = icmp eq ptr %i.q, %i.c
  br i1 %.not.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIiLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISF_ESN_.exit, label %bb.e, !llvm.loop !14013

end_hunk_2
begin_hunk_3_@_ZSt13__introselectIPllN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_SC_T1_:bb.a
  %.0213568 = phi ptr [ %..021, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.03667 = phi ptr [ %.0., %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 14 uses
  %i.j = phi i64 [ %i.ak, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %i.k = add nsw i64 %.0233469, -1                ; 2 uses
  %i.l = lshr i64 %i.j, 4
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.03667, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.03667, i64 8 ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %.0213568, i64 -8 ; 3 uses
  %i.p = load i64, ptr %i.n, align 8, !tbaa !1112 ; 5 uses
  %i.q = load i64, ptr %i.m, align 8, !tbaa !1112 ; 5 uses
  %i.r = icmp slt i64 %i.p, %i.q
  %i.s = load i64, ptr %i.o, align 8, !tbaa !1112 ; 6 uses
  br i1 %i.r, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph70
  %i.t = icmp slt i64 %i.q, %i.s
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = load i64, ptr %.03667, align 8, !tbaa !1112
  store i64 %i.q, ptr %.03667, align 8, !tbaa !1112
  store i64 %i.u, ptr %i.m, align 8, !tbaa !1112
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader

bb.d:                                             ; preds = %bb.b
  %i.v = icmp slt i64 %i.p, %i.s
  %i.w = load i64, ptr %.03667, align 8, !tbaa !1112 ; 2 uses
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %i.s, ptr %.03667, align 8, !tbaa !1112
  store i64 %i.w, ptr %i.o, align 8, !tbaa !1112
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  store i64 %i.p, ptr %.03667, align 8, !tbaa !1112
  store i64 %i.w, ptr %i.n, align 8, !tbaa !1112
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader

bb.g:                                             ; preds = %.lr.ph70
  %i.x = icmp slt i64 %i.p, %i.s
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load i64, ptr %.03667, align 8, !tbaa !1112
  store i64 %i.p, ptr %.03667, align 8, !tbaa !1112
  store i64 %i.y, ptr %i.n, align 8, !tbaa !1112
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.z = icmp slt i64 %i.q, %i.s
  %i.aa = load i64, ptr %.03667, align 8, !tbaa !1112 ; 2 uses
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 %i.s, ptr %.03667, align 8, !tbaa !1112
  store i64 %i.aa, ptr %i.o, align 8, !tbaa !1112
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  store i64 %i.q, ptr %.03667, align 8, !tbaa !1112
  store i64 %i.aa, ptr %i.m, align 8, !tbaa !1112
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader

_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i

_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader, %bb.n
  %.013.i.i = phi ptr [ %.114.i.i, %bb.n ], [ %.0213568, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.ae, %bb.n ], [ %i.n, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader ]
  %i.ab = load i64, ptr %.03667, align 8, !tbaa !1112 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i ], [ %i.ae, %bb.l ] ; 7 uses
  %i.ac = load i64, ptr %.1.i.i, align 8, !tbaa !1112 ; 2 uses
  %i.ad = icmp slt i64 %i.ac, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.ad, label %bb.l, label %.preheader.i.i, !llvm.loop !14080

.preheader.i.i:                                   ; preds = %bb.l, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.l ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 5 uses
  %i.af = load i64, ptr %.114.i.i, align 8, !tbaa !1112 ; 2 uses
  %i.ag = icmp slt i64 %i.ab, %i.af
  br i1 %i.ag, label %.preheader.i.i, label %bb.m, !llvm.loop !14081

bb.m:                                             ; preds = %.preheader.i.i
  %i.ah = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.ah, label %bb.n, label %_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEES9_S9_S9_SC_.exit

bb.n:                                             ; preds = %bb.m
  store i64 %i.af, ptr %.1.i.i, align 8, !tbaa !1112
  store i64 %i.ac, ptr %.114.i.i, align 8, !tbaa !1112
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i, !llvm.loop !14082

_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEES9_S9_S9_SC_.exit: ; preds = %bb.m
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %..021 = select i1 %.not, ptr %.1.i.i, ptr %.0213568 ; 4 uses
  %.0. = select i1 %.not, ptr %.03667, ptr %.1.i.i ; 4 uses
  %i.ai = ptrtoint ptr %..021 to i64
  %i.aj = ptrtoint ptr %.0. to i64                ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 24
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !14079

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEES9_S9_S9_SC_.exit, %bb.a
  %.021.lcssa = phi ptr [ %2, %bb.a ], [ %..021, %_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEES9_S9_S9_SC_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.0., %_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEES9_S9_S9_SC_.exit ] ; 7 uses
  %.lcssa30 = phi i64 [ %i.b, %bb.a ], [ %i.aj, %_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEES9_S9_S9_SC_.exit ]
  %i.am = icmp eq ptr %.0.lcssa, %.021.lcssa
  br i1 %i.am, label %_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_SC_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge
  %.016.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8 ; 2 uses
  %.not17.i = icmp eq ptr %.016.i, %.021.lcssa
  br i1 %.not17.i, label %_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_SC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.pre21.i = load i64, ptr %.0.lcssa, align 8, !tbaa !1112
  br label %bb.o

bb.o:                                             ; preds = %bb.u, %.lr.ph.i
  %i.an = phi i64 [ %.pre21.i, %.lr.ph.i ], [ %i.be, %bb.u ] ; 2 uses
  %.019.i = phi ptr [ %.016.i, %.lr.ph.i ], [ %.0.i, %bb.u ] ; 6 uses
  %.pn18.i = phi ptr [ %.0.lcssa, %.lr.ph.i ], [ %.019.i, %bb.u ] ; 4 uses
  %i.ao = load i64, ptr %.019.i, align 8, !tbaa !1112 ; 6 uses
  %i.ap = icmp slt i64 %i.ao, %i.an
  br i1 %i.ap, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.aq = ptrtoint ptr %.019.i to i64
  %i.ar = sub i64 %i.aq, %.lcssa30                ; 3 uses
  %i.as = ashr exact i64 %i.ar, 3                 ; 2 uses
  %i.at = icmp sgt i64 %i.as, 1
  br i1 %i.at, label %bb.q, label %bb.r, !prof !1979

bb.q:                                             ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 16
  %i.av = sub nsw i64 0, %i.as
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %.0.lcssa, i64 %i.ar, i1 false)
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.ax = icmp eq i64 %i.ar, 8
  br i1 %i.ax, label %bb.s, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

bb.s:                                             ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 8
  store i64 %i.an, ptr %i.ay, align 8, !tbaa !1112
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i:     ; preds = %bb.s, %bb.r, %bb.q
  store i64 %i.ao, ptr %.0.lcssa, align 8, !tbaa !1112
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.az = load i64, ptr %.pn18.i, align 8, !tbaa !1112 ; 2 uses
  %i.ba = icmp slt i64 %i.ao, %i.az
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPlN9__gnu_cxx5__ops14_Val_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.t, %.lr.ph.i.i
  %i.bb = phi i64 [ %i.bc, %.lr.ph.i.i ], [ %i.az, %bb.t ]
  %.013.i.i26 = phi ptr [ %.0.i.i27, %.lr.ph.i.i ], [ %.pn18.i, %bb.t ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i26, %.lr.ph.i.i ], [ %.019.i, %bb.t ]
  store i64 %i.bb, ptr %.0912.i.i, align 8, !tbaa !1112
  %.0.i.i27 = getelementptr inbounds i8, ptr %.013.i.i26, i64 -8 ; 2 uses
  %i.bc = load i64, ptr %.0.i.i27, align 8, !tbaa !1112 ; 2 uses
  %i.bd = icmp slt i64 %i.ao, %i.bc
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPlN9__gnu_cxx5__ops14_Val_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_.exit.i, !llvm.loop !14083

_ZSt25__unguarded_linear_insertIPlN9__gnu_cxx5__ops14_Val_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_.exit.i: ; preds = %.lr.ph.i.i, %bb.t
  %.09.lcssa.i.i = phi ptr [ %.019.i, %bb.t ], [ %.013.i.i26, %.lr.ph.i.i ]
  store i64 %i.ao, ptr %.09.lcssa.i.i, align 8, !tbaa !1112
  %.pre.i = load i64, ptr %.0.lcssa, align 8, !tbaa !1112
  br label %bb.u

bb.u:                                             ; preds = %_ZSt25__unguarded_linear_insertIPlN9__gnu_cxx5__ops14_Val_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_.exit.i, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i
  %i.be = phi i64 [ %i.ao, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIPlN9__gnu_cxx5__ops14_Val_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_.exit.i ]
  %.0.i = getelementptr inbounds nuw i8, ptr %.019.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %.021.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_SC_.exit, label %bb.o, !llvm.loop !14084

_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_SC_.exit: ; preds = %bb.u, %.preheader.i, %._crit_edge, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_SC_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3947", align 1
  call void @_ZSt11__make_heapIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_RSC_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr i64 %i.d, 3                         ; 4 uses
  %i.f = add nsw i64 %i.e, -1
  %i.g = lshr i64 %i.f, 1
  %i.h = icmp sgt i64 %i.e, 2
  %i.i = and i64 %i.d, 8
  %i.j = icmp eq i64 %i.i, 0                      ; 2 uses
  %i.k = add nsw i64 %i.e, -2                     ; 2 uses
  %i.l = ashr exact i64 %i.k, 1                   ; 2 uses
  br i1 %i.h, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %4 = add nsw i64 %i.e, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.d
  %.011.us = phi ptr [ %i.ak, %bb.d ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.o = load i64, ptr %.011.us, align 8, !tbaa !1112 ; 3 uses
  %i.p = load i64, ptr %0, align 8, !tbaa !1112   ; 2 uses
  %i.q = icmp slt i64 %i.o, %i.p
  br i1 %i.q, label %.lr.ph.i.i.preheader.us, label %bb.d

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  store i64 %i.p, ptr %.011.us, align 8, !tbaa !1112
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.029.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.r = shl i64 %.029.i.i.us, 1                  ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [8 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.t, align 8, !tbaa !1112
  %i.x = load i64, ptr %i.v, align 8, !tbaa !1112
  %i.y = icmp slt i64 %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.us
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !1112
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.i.us
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !1112
  %i.ad = icmp slt i64 %spec.select.i.i.us, %i.g
  br i1 %i.ad, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !662

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  br i1 %.not.i.us, label %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_RSC_.exit.us, label %.lr.ph.i.i.i.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.ae = load i64, ptr %i.m, align 8, !tbaa !1112
  store i64 %i.ae, ptr %i.n, align 8, !tbaa !1112
  br label %.lr.ph.i.i.i.us.preheader

.lr.ph.i.i.i.us.preheader:                        ; preds = %.thread.i.us, %bb.b
  %.01317.i.i.i.us.ph = phi i64 [ %spec.select.i.i.us, %bb.b ], [ %4, %.thread.i.us ]
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %bb.c
  %.01317.i.i.i.us = phi i64 [ %.018.i.i78.i.us, %bb.c ], [ %.01317.i.i.i.us.ph, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %.018.in.i.i.i.us = add nsw i64 %.01317.i.i.i.us, -1
  %.018.i.i78.i.us = lshr i64 %.018.in.i.i.i.us, 1 ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i78.i.us
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !1112 ; 2 uses
  %i.ah = icmp slt i64 %i.ag, %i.o
  br i1 %i.ah, label %bb.c, label %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_RSC_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i.us
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !1112
  %.not9.i.us = icmp eq i64 %.018.i.i78.i.us, 0
  br i1 %.not9.i.us, label %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_RSC_.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !663

_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_RSC_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %bb.b
  %.013.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ %.01317.i.i.i.us, %.lr.ph.i.i.i.us ], [ 0, %bb.c ]
  %i.aj = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.us
  store i64 %i.o, ptr %i.aj, align 8, !tbaa !1112
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_RSC_.exit.us, %.lr.ph.split.us
  %i.ak = getelementptr inbounds nuw i8, ptr %.011.us, i64 8 ; 2 uses
  %i.al = icmp ult ptr %i.ak, %2
  br i1 %i.al, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !14085

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.am = icmp eq i64 %spec.select.i.i.us, %i.l
  %or.cond = select i1 %i.j, i1 %i.am, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %i.j, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load i64, ptr %0, align 8, !tbaa !1112
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.ao = icmp eq i64 %i.k, 0
  %.pre31 = load i64, ptr %0, align 8, !tbaa !1112 ; 2 uses
  br i1 %i.ao, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.e
  %i.ap = phi i64 [ %i.av, %bb.e ], [ %.pre31, %.lr.ph.split.split.us ] ; 3 uses
  %.011.us12.us = phi ptr [ %i.aw, %bb.e ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.aq = load i64, ptr %.011.us12.us, align 8, !tbaa !1112 ; 3 uses
  %i.ar = icmp slt i64 %i.aq, %i.ap
  br i1 %i.ar, label %._crit_edge.i.i.us13.us, label %bb.e

._crit_edge.i.i.us13.us:                          ; preds = %.lr.ph.split.split.us.split.us
  store i64 %i.ap, ptr %.011.us12.us, align 8, !tbaa !1112
  %i.as = load i64, ptr %i.an, align 8, !tbaa !1112 ; 2 uses
  store i64 %i.as, ptr %0, align 8, !tbaa !1112
  %i.at = icmp sge i64 %i.as, %i.aq
  %spec.select = zext i1 %i.at to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %spec.select
  store i64 %i.aq, ptr %i.au, align 8, !tbaa !1112
  %.pre30 = load i64, ptr %0, align 8, !tbaa !1112
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.us13.us, %.lr.ph.split.split.us.split.us
  %i.av = phi i64 [ %.pre30, %._crit_edge.i.i.us13.us ], [ %i.ap, %.lr.ph.split.split.us.split.us ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.011.us12.us, i64 8 ; 2 uses
  %i.ax = icmp ult ptr %i.aw, %2
  br i1 %i.ax, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !14085

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us, %bb.f
  %i.ay = phi i64 [ %i.bb, %bb.f ], [ %.pre31, %.lr.ph.split.split.us ] ; 3 uses
  %.011.us12 = phi ptr [ %i.bc, %bb.f ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.az = load i64, ptr %.011.us12, align 8, !tbaa !1112 ; 3 uses
  %i.ba = icmp slt i64 %i.az, %i.ay
  br i1 %i.ba, label %._crit_edge.i.i.us13, label %bb.f

._crit_edge.i.i.us13:                             ; preds = %.lr.ph.split.split.us.split
  store i64 %i.ay, ptr %.011.us12, align 8, !tbaa !1112
  store i64 %i.az, ptr %0, align 8, !tbaa !1112
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.us13, %.lr.ph.split.split.us.split
  %i.bb = phi i64 [ %i.az, %._crit_edge.i.i.us13 ], [ %i.ay, %.lr.ph.split.split.us.split ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.011.us12, i64 8 ; 2 uses
  %i.bd = icmp ult ptr %i.bc, %2
  br i1 %i.bd, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !14085

._crit_edge:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.g
  %i.be = phi i64 [ %i.bh, %bb.g ], [ %.pre, %.lr.ph.split.split.preheader ] ; 3 uses
  %.011 = phi ptr [ %i.bi, %bb.g ], [ %1, %.lr.ph.split.split.preheader ] ; 3 uses
  %i.bf = load i64, ptr %.011, align 8, !tbaa !1112 ; 3 uses
  %i.bg = icmp slt i64 %i.bf, %i.be
  br i1 %i.bg, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.split
  store i64 %i.be, ptr %.011, align 8, !tbaa !1112
  store i64 %i.bf, ptr %0, align 8, !tbaa !1112
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i
  %i.bh = phi i64 [ %i.be, %.lr.ph.split.split ], [ %i.bf, %._crit_edge.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.011, i64 8 ; 2 uses
  %i.bj = icmp ult ptr %i.bi, %2
  br i1 %i.bj, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !14085
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPlN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_RSC_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 4 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %3 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit.us
  %.014.us = phi i64 [ %i.al, %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014.us
  %i.p = load i64, ptr %i.o, align 8, !tbaa !1112 ; 2 uses
  %i.q = icmp slt i64 %.014.us, %i.i
  br i1 %i.q, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.014.us, %.split.us ] ; 2 uses
  %i.r = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [8 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.t, align 8, !tbaa !1112
  %i.x = load i64, ptr %i.v, align 8, !tbaa !1112
  %i.y = icmp slt i64 %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !1112
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.us
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !1112
  %i.ad = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ad, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !662

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ae = icmp sgt i64 %spec.select.i.us, %.014.us
  br i1 %i.ae, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i.us
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !1112 ; 2 uses
  %i.ah = icmp slt i64 %i.ag, %i.p
  br i1 %i.ah, label %bb.c, label %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i.us
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !1112
  %i.aj = icmp sgt i64 %.018.i.i.us, %.014.us
  br i1 %i.aj, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit.us, !llvm.loop !663

_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.014.us, %.split.us ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i64 %i.p, ptr %i.ak, align 8, !tbaa !1112
  %.not.us = icmp eq i64 %.014.us, 0
  %i.al = add nsw i64 %.014.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !14086

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit
  %.014 = phi i64 [ %i.bl, %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014
  %i.an = load i64, ptr %i.am, align 8, !tbaa !1112 ; 2 uses
  %i.ao = icmp slt i64 %.014, %i.i
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.014, %.split ] ; 2 uses
  %i.ap = shl i64 %.029.i, 1                      ; 3 uses
  %i.aq = add i64 %i.ap, 2                        ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aq
  %i.as = getelementptr [8 x i8], ptr %0, i64 %i.ap
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %i.au = load i64, ptr %i.ar, align 8, !tbaa !1112
  %i.av = load i64, ptr %i.at, align 8, !tbaa !1112
  %i.aw = icmp slt i64 %i.au, %i.av
  %i.ax = or disjoint i64 %i.ap, 1
  %spec.select.i = select i1 %i.aw, i64 %i.ax, i64 %i.aq ; 4 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1112
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !1112
  %i.bb = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bb, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !662

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.014, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bc = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bd = load i64, ptr %i.m, align 8, !tbaa !1112
  store i64 %i.bd, ptr %i.n, align 8, !tbaa !1112
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.128.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.be = icmp sgt i64 %.128.i, %.014
  br i1 %i.be, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01317.i.i = phi i64 [ %.018.i.i, %bb.f ], [ %.128.i, %bb.e ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !1112 ; 2 uses
  %i.bh = icmp slt i64 %i.bg, %i.an
  br i1 %i.bh, label %bb.f, label %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i
  store i64 %i.bg, ptr %i.bi, align 8, !tbaa !1112
  %i.bj = icmp sgt i64 %.018.i.i, %.014
  br i1 %i.bj, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit, !llvm.loop !663

_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i64 %i.an, ptr %i.bk, align 8, !tbaa !1112
  %.not = icmp eq i64 %.014, 0
  %i.bl = add nsw i64 %.014, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !14086

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit.us, %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIlLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS5_8LeafNodeIlLj3EEELj4EEELj5EEEE9NodeRangeENSC_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeISB_EEEELj0EEENSC_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSD_RKSN_RSP_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !1997
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !1998
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !768
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1535
  %i.g = load i64, ptr %0, align 8, !tbaa !1534
  %.not.i = icmp ult i64 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS5_8LeafNodeIlLj3EEELj4EEELj5EEEE9NodeRangeENSC_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeISB_EEEELj0EEENSC_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSD_RKSN_RSP_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr null, ptr %3, align 8, !tbaa !2001
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 192)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS5_8LeafNodeIlLj3EEELj4EEELj5EEEE9NodeRangeENSC_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeISB_EEEELj0EEENSC_14OpWithoutIndexEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !743
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !5386
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.l = load i64, ptr %1, align 8, !tbaa !1112
  store i64 %i.l, ptr %i.k, align 32, !tbaa !1112
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !5389
  %i.n = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  store i32 0, ptr %i.q, align 8, !tbaa !2014
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 124
  store i8 5, ptr %i.r, align 4, !tbaa !2015
  %i.s = shl nsw i64 %i.p, 1
  %i.t = and i64 %i.s, 9223372036854775806
  store i64 %i.t, ptr %i.o, align 16, !tbaa !2016
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.v = load i64, ptr %3, align 8, !tbaa !2017
  store i64 %i.v, ptr %i.u, align 64, !tbaa !2017
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr null, ptr %4, align 8, !tbaa !2021
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.w, align 8, !tbaa !2022
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.x, align 8, !tbaa !2025
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.y, align 8, !tbaa !827
  store ptr %4, ptr %i.m, align 8, !tbaa !5389
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS5_8LeafNodeIlLj3EEELj4EEELj5EEEE9NodeRangeENSC_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeISB_EEEELj0EEENSC_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSD_RKSN_RSP_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS5_8LeafNodeIlLj3EEELj4EEELj5EEEE9NodeRangeENSC_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeISB_EEEELj0EEENSC_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSD_RKSN_RSP_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.aa = load atomic i8, ptr %i.z monotonic, align 1
end_hunk_3
begin_hunk_4_@_ZSt13__introselectIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEElN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_T0_T1_:bb.a
  %i.i = phi i64 [ %i.ag, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %i.j = add nsw i64 %.0233469, -1                ; 2 uses
  %i.k = lshr i64 %i.i, 4
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.03667, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.03667, i64 8 ; 4 uses
  %i.n = getelementptr inbounds i8, ptr %.0213568, i64 -8 ; 3 uses
  %i.o = load i64, ptr %i.m, align 8, !tbaa !1112 ; 5 uses
  %i.p = load i64, ptr %i.l, align 8, !tbaa !1112 ; 5 uses
  %i.q = icmp slt i64 %i.o, %i.p
  %i.r = load i64, ptr %i.n, align 8, !tbaa !1112 ; 6 uses
  br i1 %i.q, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph70
  %i.s = icmp slt i64 %i.p, %i.r
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.03667, align 8, !tbaa !768
  store i64 %i.p, ptr %.03667, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.l, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.d:                                             ; preds = %bb.b
  %i.t = icmp slt i64 %i.o, %i.r
  %.sroa.0.0.copyload.i.i22.i.i = load ptr, ptr %.03667, align 8, !tbaa !768 ; 2 uses
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %i.r, ptr %.03667, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i22.i.i, ptr %i.n, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  store i64 %i.o, ptr %.03667, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i22.i.i, ptr %i.m, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.g:                                             ; preds = %.lr.ph70
  %i.u = icmp slt i64 %i.o, %i.r
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i24.i.i = load ptr, ptr %.03667, align 8, !tbaa !768
  store i64 %i.o, ptr %.03667, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i24.i.i, ptr %i.m, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.v = icmp slt i64 %i.p, %i.r
  %.sroa.0.0.copyload.i.i25.i.i = load ptr, ptr %.03667, align 8, !tbaa !768 ; 2 uses
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 %i.r, ptr %.03667, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i25.i.i, ptr %i.n, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  store i64 %i.p, ptr %.03667, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i25.i.i, ptr %i.l, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i

_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader, %bb.n
  %.013.i.i = phi ptr [ %.114.i.i, %bb.n ], [ %.0213568, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.z, %bb.n ], [ %i.m, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader ]
  %i.w = load i64, ptr %.03667, align 8, !tbaa !1112 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i ], [ %i.z, %bb.l ] ; 7 uses
  %i.x = load i64, ptr %.1.i.i, align 8           ; 2 uses
  %i.y = icmp slt i64 %i.x, %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.y, label %bb.l, label %.preheader.i.i, !llvm.loop !14098

.preheader.i.i:                                   ; preds = %bb.l, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.l ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 5 uses
  %i.aa = load i64, ptr %.114.i.i, align 8, !tbaa !1112 ; 2 uses
  %i.ab = icmp slt i64 %i.w, %i.aa
  br i1 %i.ab, label %.preheader.i.i, label %bb.m, !llvm.loop !14099

bb.m:                                             ; preds = %.preheader.i.i
  %i.ac = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.ac, label %bb.n, label %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEESM_SM_SM_T0_.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = inttoptr i64 %i.x to ptr
  store i64 %i.aa, ptr %.1.i.i, align 8, !tbaa !768
  store ptr %i.ad, ptr %.114.i.i, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i, !llvm.loop !14100

_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEESM_SM_SM_T0_.exit: ; preds = %bb.m
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %..021 = select i1 %.not, ptr %.1.i.i, ptr %.0213568 ; 4 uses
  %.0. = select i1 %.not, ptr %.03667, ptr %.1.i.i ; 4 uses
  %i.ae = ptrtoint ptr %..021 to i64
  %i.af = ptrtoint ptr %.0. to i64                ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 24
  br i1 %i.ah, label %.lr.ph, label %._crit_edge, !llvm.loop !14097

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEESM_SM_SM_T0_.exit, %bb.a
  %.021.lcssa = phi ptr [ %2, %bb.a ], [ %..021, %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEESM_SM_SM_T0_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.0., %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEESM_SM_SM_T0_.exit ] ; 7 uses
  %.lcssa30 = phi i64 [ %i.b, %bb.a ], [ %i.af, %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEESM_SM_SM_T0_.exit ]
  %i.ai = icmp eq ptr %.0.lcssa, %.021.lcssa
  br i1 %i.ai, label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_T0_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge
  %.018.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8 ; 2 uses
  %.not19.i = icmp eq ptr %.018.i, %.021.lcssa
  br i1 %.not19.i, label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.pre23.i = load i64, ptr %.0.lcssa, align 8, !tbaa !1112
  br label %bb.o

bb.o:                                             ; preds = %bb.u, %.lr.ph.i
  %i.aj = phi i64 [ %.pre23.i, %.lr.ph.i ], [ %i.bb, %bb.u ] ; 2 uses
  %.021.i = phi ptr [ %.018.i, %.lr.ph.i ], [ %.0.i, %bb.u ] ; 6 uses
  %.pn20.i = phi ptr [ %.0.lcssa, %.lr.ph.i ], [ %.021.i, %bb.u ] ; 4 uses
  %i.ak = load i64, ptr %.021.i, align 8          ; 6 uses
  %i.al = icmp slt i64 %i.ak, %i.aj
  %i.am = inttoptr i64 %i.ak to ptr
  br i1 %i.al, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.an = ptrtoint ptr %.021.i to i64
  %i.ao = sub i64 %i.an, %.lcssa30                ; 3 uses
  %i.ap = ashr exact i64 %i.ao, 3                 ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 1
  br i1 %i.aq, label %bb.q, label %bb.r, !prof !1979

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 16
  %i.as = sub nsw i64 0, %i.ap
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.as
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %.0.lcssa, i64 %i.ao, i1 false)
  br label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEES7_ET0_T_S9_S8_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.au = icmp eq i64 %i.ao, 8
  br i1 %i.au, label %bb.s, label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEES7_ET0_T_S9_S8_.exit.i

bb.s:                                             ; preds = %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  store i64 %i.aj, ptr %i.av, align 8, !tbaa !768
  br label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEES7_ET0_T_S9_S8_.exit.i

_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEES7_ET0_T_S9_S8_.exit.i: ; preds = %bb.s, %bb.r, %bb.q
  store ptr %i.am, ptr %.0.lcssa, align 8, !tbaa !768
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.aw = load i64, ptr %.pn20.i, align 8, !tbaa !1112 ; 2 uses
  %i.ax = icmp slt i64 %i.ak, %i.aw
  br i1 %i.ax, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.t, %.lr.ph.i.i
  %i.ay = phi i64 [ %i.az, %.lr.ph.i.i ], [ %i.aw, %bb.t ]
  %.013.i.i26 = phi ptr [ %.0.i.i27, %.lr.ph.i.i ], [ %.pn20.i, %bb.t ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i26, %.lr.ph.i.i ], [ %.021.i, %bb.t ]
  store i64 %i.ay, ptr %.0912.i.i, align 8, !tbaa !768
  %.0.i.i27 = getelementptr inbounds i8, ptr %.013.i.i26, i64 -8 ; 2 uses
  %i.az = load i64, ptr %.0.i.i27, align 8, !tbaa !1112 ; 2 uses
  %i.ba = icmp slt i64 %i.ak, %i.az
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_.exit.i, !llvm.loop !14101

_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.t
  %.09.lcssa.i.i = phi ptr [ %.021.i, %bb.t ], [ %.013.i.i26, %.lr.ph.i.i ]
  store i64 %i.ak, ptr %.09.lcssa.i.i, align 8, !tbaa !768
  %.pre.i = load i64, ptr %.0.lcssa, align 8, !tbaa !1112
  br label %bb.u

bb.u:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_.exit.i, %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEES7_ET0_T_S9_S8_.exit.i
  %i.bb = phi i64 [ %i.ak, %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEES7_ET0_T_S9_S8_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_.exit.i ]
  %.0.i = getelementptr inbounds nuw i8, ptr %.021.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %.021.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_T0_.exit, label %bb.o, !llvm.loop !14102

_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_T0_.exit: ; preds = %bb.u, %.preheader.i, %._crit_edge, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3956", align 1
  call void @_ZSt11__make_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr i64 %i.d, 3                         ; 4 uses
  %i.f = add nsw i64 %i.e, -1
  %i.g = lshr i64 %i.f, 1
  %i.h = icmp sgt i64 %i.e, 2
  %i.i = and i64 %i.d, 8
  %i.j = icmp eq i64 %i.i, 0                      ; 2 uses
  %i.k = add nsw i64 %i.e, -2                     ; 2 uses
  %i.l = ashr exact i64 %i.k, 1                   ; 2 uses
  br i1 %i.h, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %4 = add nsw i64 %i.e, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.d
  %.011.us = phi ptr [ %i.ak, %bb.d ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.o = load i64, ptr %.011.us, align 8          ; 3 uses
  %i.p = load i64, ptr %0, align 8, !tbaa !1112   ; 2 uses
  %i.q = icmp slt i64 %i.o, %i.p
  br i1 %i.q, label %.lr.ph.i.i.preheader.us, label %bb.d

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  store i64 %i.p, ptr %.011.us, align 8, !tbaa !768
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.029.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.r = shl i64 %.029.i.i.us, 1                  ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [8 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.t, align 8, !tbaa !1112
  %i.x = load i64, ptr %i.v, align 8, !tbaa !1112
  %i.y = icmp slt i64 %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.us
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.i.us
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !768
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !768
  %i.ad = icmp slt i64 %spec.select.i.i.us, %i.g
  br i1 %i.ad, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !666

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  br i1 %.not.i.us, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_RT0_.exit.us, label %.lr.ph.i.i.i.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.ae = load i64, ptr %i.m, align 8, !tbaa !768
  store i64 %i.ae, ptr %i.n, align 8, !tbaa !768
  br label %.lr.ph.i.i.i.us.preheader

.lr.ph.i.i.i.us.preheader:                        ; preds = %.thread.i.us, %bb.b
  %.01317.i.i.i.us.ph = phi i64 [ %spec.select.i.i.us, %bb.b ], [ %4, %.thread.i.us ]
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %bb.c
  %.01317.i.i.i.us = phi i64 [ %.018.i.i910.i.us, %bb.c ], [ %.01317.i.i.i.us.ph, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %.018.in.i.i.i.us = add nsw i64 %.01317.i.i.i.us, -1
  %.018.i.i910.i.us = lshr i64 %.018.in.i.i.i.us, 1 ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i910.i.us
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !1112 ; 2 uses
  %i.ah = icmp slt i64 %i.ag, %i.o
  br i1 %i.ah, label %bb.c, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_RT0_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i.us
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !768
  %.not11.i.us = icmp eq i64 %.018.i.i910.i.us, 0
  br i1 %.not11.i.us, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_RT0_.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !667

_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_RT0_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %bb.b
  %.013.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %.01317.i.i.i.us, %.lr.ph.i.i.i.us ]
  %i.aj = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.us
  store i64 %i.o, ptr %i.aj, align 8, !tbaa !768
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_RT0_.exit.us, %.lr.ph.split.us
  %i.ak = getelementptr inbounds nuw i8, ptr %.011.us, i64 8 ; 2 uses
  %i.al = icmp ult ptr %i.ak, %2
  br i1 %i.al, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !14103

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.am = icmp eq i64 %spec.select.i.i.us, %i.l
  %or.cond = select i1 %i.j, i1 %i.am, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %i.j, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load i64, ptr %0, align 8, !tbaa !1112
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.ao = icmp eq i64 %i.k, 0
  %.pre32 = load i64, ptr %0, align 8, !tbaa !1112 ; 2 uses
  br i1 %i.ao, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.e
  %i.ap = phi i64 [ %i.av, %bb.e ], [ %.pre32, %.lr.ph.split.split.us ] ; 3 uses
  %.011.us12.us = phi ptr [ %i.aw, %bb.e ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.aq = load i64, ptr %.011.us12.us, align 8    ; 3 uses
  %i.ar = icmp slt i64 %i.aq, %i.ap
  br i1 %i.ar, label %._crit_edge.i.i.us13.us, label %bb.e

._crit_edge.i.i.us13.us:                          ; preds = %.lr.ph.split.split.us.split.us
  store i64 %i.ap, ptr %.011.us12.us, align 8, !tbaa !768
  %i.as = load i64, ptr %i.an, align 8, !tbaa !768 ; 2 uses
  store i64 %i.as, ptr %0, align 8, !tbaa !768
  %i.at = icmp sge i64 %i.as, %i.aq
  %spec.select = zext i1 %i.at to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %spec.select
  store i64 %i.aq, ptr %i.au, align 8, !tbaa !768
  %.pre31 = load i64, ptr %0, align 8, !tbaa !1112
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.us13.us, %.lr.ph.split.split.us.split.us
  %i.av = phi i64 [ %.pre31, %._crit_edge.i.i.us13.us ], [ %i.ap, %.lr.ph.split.split.us.split.us ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.011.us12.us, i64 8 ; 2 uses
  %i.ax = icmp ult ptr %i.aw, %2
  br i1 %i.ax, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !14103

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us, %bb.f
  %i.ay = phi i64 [ %i.bb, %bb.f ], [ %.pre32, %.lr.ph.split.split.us ] ; 3 uses
  %.011.us12 = phi ptr [ %i.bc, %bb.f ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.az = load i64, ptr %.011.us12, align 8       ; 3 uses
  %i.ba = icmp slt i64 %i.az, %i.ay
  br i1 %i.ba, label %._crit_edge.i.i.us13, label %bb.f

._crit_edge.i.i.us13:                             ; preds = %.lr.ph.split.split.us.split
  store i64 %i.ay, ptr %.011.us12, align 8, !tbaa !768
  store i64 %i.az, ptr %0, align 8, !tbaa !768
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.us13, %.lr.ph.split.split.us.split
  %i.bb = phi i64 [ %i.az, %._crit_edge.i.i.us13 ], [ %i.ay, %.lr.ph.split.split.us.split ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.011.us12, i64 8 ; 2 uses
  %i.bd = icmp ult ptr %i.bc, %2
  br i1 %i.bd, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !14103

._crit_edge:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.g
  %i.be = phi i64 [ %i.bh, %bb.g ], [ %.pre, %.lr.ph.split.split.preheader ] ; 3 uses
  %.011 = phi ptr [ %i.bi, %bb.g ], [ %1, %.lr.ph.split.split.preheader ] ; 3 uses
  %i.bf = load i64, ptr %.011, align 8            ; 3 uses
  %i.bg = icmp slt i64 %i.bf, %i.be
  br i1 %i.bg, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.split
  store i64 %i.be, ptr %.011, align 8, !tbaa !768
  store i64 %i.bf, ptr %0, align 8, !tbaa !768
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i
  %i.bh = phi i64 [ %i.be, %.lr.ph.split.split ], [ %i.bf, %._crit_edge.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.011, i64 8 ; 2 uses
  %i.bj = icmp ult ptr %i.bi, %2
  br i1 %i.bj, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !14103
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 4 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %3 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us
  %.015.us = phi i64 [ %i.an, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us
  %.sroa.02.0.copyload.us = load ptr, ptr %i.o, align 8, !tbaa !768 ; 2 uses
  %i.p = icmp slt i64 %.015.us, %i.i
  br i1 %i.p, label %.lr.ph.i.us, label %._crit_edge.i.us.thread

._crit_edge.i.us.thread:                          ; preds = %.split.us
  %i.q = ptrtoint ptr %.sroa.02.0.copyload.us to i64
  br label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.015.us, %.split.us ] ; 2 uses
  %i.r = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [8 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.t, align 8, !tbaa !1112
  %i.x = load i64, ptr %i.v, align 8, !tbaa !1112
  %i.y = icmp slt i64 %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.us
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !768
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !768
  %i.ad = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ad, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !666

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ae = icmp sgt i64 %spec.select.i.us, %.015.us
  %i.af = ptrtoint ptr %.sroa.02.0.copyload.us to i64 ; 4 uses
  br i1 %i.ae, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i.us
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !1112 ; 2 uses
  %i.ai = icmp slt i64 %i.ah, %i.af
  br i1 %i.ai, label %bb.c, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i.us
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !768
  %i.ak = icmp sgt i64 %.018.i.i.us, %.015.us
  br i1 %i.ak, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us, !llvm.loop !667

_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %._crit_edge.i.us.thread, %._crit_edge.i.us
  %i.al = phi i64 [ %i.af, %._crit_edge.i.us ], [ %i.q, %._crit_edge.i.us.thread ], [ %i.af, %bb.c ], [ %i.af, %.lr.ph.i.i.us ]
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.015.us, %._crit_edge.i.us.thread ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i64 %i.al, ptr %i.am, align 8, !tbaa !768
  %.not.us = icmp eq i64 %.015.us, 0
  %i.an = add nsw i64 %.015.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !14104

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit
  %.015 = phi i64 [ %i.bn, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015
  %.sroa.02.0.copyload = load ptr, ptr %i.ao, align 8, !tbaa !768
  %i.ap = icmp slt i64 %.015, %i.i
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.015, %.split ] ; 2 uses
  %i.aq = shl i64 %.029.i, 1                      ; 3 uses
  %i.ar = add i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ar
  %i.at = getelementptr [8 x i8], ptr %0, i64 %i.aq
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %i.av = load i64, ptr %i.as, align 8, !tbaa !1112
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !1112
  %i.ax = icmp slt i64 %i.av, %i.aw
  %i.ay = or disjoint i64 %i.aq, 1
  %spec.select.i = select i1 %i.ax, i64 %i.ay, i64 %i.ar ; 4 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !768
  store i64 %i.bb, ptr %i.ba, align 8, !tbaa !768
  %i.bc = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !666

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.015, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bd = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.be = load i64, ptr %i.m, align 8, !tbaa !768
  store i64 %i.be, ptr %i.n, align 8, !tbaa !768
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bf = icmp sgt i64 %.1.i, %.015
  %i.bg = ptrtoint ptr %.sroa.02.0.copyload to i64 ; 2 uses
  br i1 %i.bf, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01317.i.i = phi i64 [ %.018.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !1112 ; 2 uses
  %i.bj = icmp slt i64 %i.bi, %i.bg
  br i1 %i.bj, label %bb.f, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !768
  %i.bl = icmp sgt i64 %.018.i.i, %.015
  br i1 %i.bl, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit, !llvm.loop !667

_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i64 %i.bg, ptr %i.bm, align 8, !tbaa !768
  %.not = icmp eq i64 %.015, 0
  %i.bn = add nsw i64 %.015, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !14104

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_8LeafNodeIlLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i64 @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE20eraseBackgroundTilesEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::set", align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store i32 0, ptr %i.a, align 8, !tbaa !812
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !813
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !814
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !815
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !816
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !814  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not15 = icmp eq ptr %i.g, %i.h
  br i1 %.not15, label %._crit_edge21, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt3setIN7openvdb5v13_04math5CoordESt4lessIS3_ESaIS3_EE6insertERKS3_.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !814 ; 2 uses
  %.not1417 = icmp eq ptr %.pre, %i.a
  br i1 %.not1417, label %._crit_edge21, label %.lr.ph20

bb.b:                                             ; preds = %.lr.ph, %_ZNSt3setIN7openvdb5v13_04math5CoordESt4lessIS3_ESaIS3_EE6insertERKS3_.exit
  %.sroa.010.016 = phi ptr [ %i.g, %.lr.ph ], [ %i.v, %_ZNSt3setIN7openvdb5v13_04math5CoordESt4lessIS3_ESaIS3_EE6insertERKS3_.exit ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.010.016, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1004
  %i.l = icmp ne ptr %i.k, null
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.010.016, i64 64
  %i.n = load i8, ptr %i.m, align 8, !range !788
  %i.o = trunc nuw i8 %i.n to i1
  %.not3.i = select i1 %i.l, i1 true, i1 %i.o
  br i1 %.not3.i, label %_ZNSt3setIN7openvdb5v13_04math5CoordESt4lessIS3_ESaIS3_EE6insertERKS3_.exit, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE16isBackgroundTileERKSt23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEE.exit

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE16isBackgroundTileERKSt23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEE.exit: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.010.016, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !1112
  %i.r = load i64, ptr %i.i, align 8, !tbaa !1112
  %i.s = icmp eq i64 %i.q, %i.r
  br i1 %i.s, label %bb.c, label %_ZNSt3setIN7openvdb5v13_04math5CoordESt4lessIS3_ESaIS3_EE6insertERKS3_.exit

bb.c:                                             ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE16isBackgroundTileERKSt23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.010.016, i64 32
  %i.u = invoke { ptr, i8 } @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE16_M_insert_uniqueIRKS3_EESt4pairISt17_Rb_tree_iteratorIS3_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(12) %i.t)
          to label %_ZNSt3setIN7openvdb5v13_04math5CoordESt4lessIS3_ESaIS3_EE6insertERKS3_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt3setIN7openvdb5v13_04math5CoordESt4lessIS3_ESaIS3_EE6insertERKS3_.exit: ; preds = %bb.b, %bb.c, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIlLj3EEELj4EEELj5EEEE16isBackgroundTileERKSt23_Rb_tree_const_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEE.exit
  %i.v = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.010.016) #32 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.h
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !14105

._crit_edge21:                                    ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE5eraseERSG_.exit, %bb.a, %._crit_edge
  %i.w = load i64, ptr %i.e, align 8, !tbaa !816
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !813
  invoke void @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.x)
          to label %_ZNSt3setIN7openvdb5v13_04math5CoordESt4lessIS3_ESaIS3_EED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %._crit_edge21
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
end_hunk_4
begin_hunk_5_@_ZSt13__introselectIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEElN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_T0_T1_:bb.a
  %i.i = phi i64 [ %i.ag, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %i.j = add nsw i64 %.0233469, -1                ; 2 uses
  %i.k = lshr i64 %i.i, 4
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.03667, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.03667, i64 8 ; 4 uses
  %i.n = getelementptr inbounds i8, ptr %.0213568, i64 -8 ; 3 uses
  %i.o = load i64, ptr %i.m, align 8, !tbaa !1112 ; 5 uses
  %i.p = load i64, ptr %i.l, align 8, !tbaa !1112 ; 5 uses
  %i.q = icmp slt i64 %i.o, %i.p
  %i.r = load i64, ptr %i.n, align 8, !tbaa !1112 ; 6 uses
  br i1 %i.q, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph70
  %i.s = icmp slt i64 %i.p, %i.r
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.03667, align 8, !tbaa !768
  store i64 %i.p, ptr %.03667, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.l, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.d:                                             ; preds = %bb.b
  %i.t = icmp slt i64 %i.o, %i.r
  %.sroa.0.0.copyload.i.i22.i.i = load ptr, ptr %.03667, align 8, !tbaa !768 ; 2 uses
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %i.r, ptr %.03667, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i22.i.i, ptr %i.n, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  store i64 %i.o, ptr %.03667, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i22.i.i, ptr %i.m, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.g:                                             ; preds = %.lr.ph70
  %i.u = icmp slt i64 %i.o, %i.r
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i24.i.i = load ptr, ptr %.03667, align 8, !tbaa !768
  store i64 %i.o, ptr %.03667, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i24.i.i, ptr %i.m, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.v = icmp slt i64 %i.p, %i.r
  %.sroa.0.0.copyload.i.i25.i.i = load ptr, ptr %.03667, align 8, !tbaa !768 ; 2 uses
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 %i.r, ptr %.03667, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i25.i.i, ptr %i.n, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  store i64 %i.p, ptr %.03667, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i25.i.i, ptr %i.l, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i

_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader, %bb.n
  %.013.i.i = phi ptr [ %.114.i.i, %bb.n ], [ %.0213568, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.z, %bb.n ], [ %i.m, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader ]
  %i.w = load i64, ptr %.03667, align 8, !tbaa !1112 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i ], [ %i.z, %bb.l ] ; 7 uses
  %i.x = load i64, ptr %.1.i.i, align 8           ; 2 uses
  %i.y = icmp slt i64 %i.x, %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.y, label %bb.l, label %.preheader.i.i, !llvm.loop !14108

.preheader.i.i:                                   ; preds = %bb.l, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.l ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 5 uses
  %i.aa = load i64, ptr %.114.i.i, align 8, !tbaa !1112 ; 2 uses
  %i.ab = icmp slt i64 %i.w, %i.aa
  br i1 %i.ab, label %.preheader.i.i, label %bb.m, !llvm.loop !14109

bb.m:                                             ; preds = %.preheader.i.i
  %i.ac = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.ac, label %bb.n, label %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEESM_SM_SM_T0_.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = inttoptr i64 %i.x to ptr
  store i64 %i.aa, ptr %.1.i.i, align 8, !tbaa !768
  store ptr %i.ad, ptr %.114.i.i, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i, !llvm.loop !14110

_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEESM_SM_SM_T0_.exit: ; preds = %bb.m
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %..021 = select i1 %.not, ptr %.1.i.i, ptr %.0213568 ; 4 uses
  %.0. = select i1 %.not, ptr %.03667, ptr %.1.i.i ; 4 uses
  %i.ae = ptrtoint ptr %..021 to i64
  %i.af = ptrtoint ptr %.0. to i64                ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 24
  br i1 %i.ah, label %.lr.ph, label %._crit_edge, !llvm.loop !14107

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEESM_SM_SM_T0_.exit, %bb.a
  %.021.lcssa = phi ptr [ %2, %bb.a ], [ %..021, %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEESM_SM_SM_T0_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.0., %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEESM_SM_SM_T0_.exit ] ; 7 uses
  %.lcssa30 = phi i64 [ %i.b, %bb.a ], [ %i.af, %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEESM_SM_SM_T0_.exit ]
  %i.ai = icmp eq ptr %.0.lcssa, %.021.lcssa
  br i1 %i.ai, label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_T0_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge
  %.018.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8 ; 2 uses
  %.not19.i = icmp eq ptr %.018.i, %.021.lcssa
  br i1 %.not19.i, label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.pre23.i = load i64, ptr %.0.lcssa, align 8, !tbaa !1112
  br label %bb.o

bb.o:                                             ; preds = %bb.u, %.lr.ph.i
  %i.aj = phi i64 [ %.pre23.i, %.lr.ph.i ], [ %i.bb, %bb.u ] ; 2 uses
  %.021.i = phi ptr [ %.018.i, %.lr.ph.i ], [ %.0.i, %bb.u ] ; 6 uses
  %.pn20.i = phi ptr [ %.0.lcssa, %.lr.ph.i ], [ %.021.i, %bb.u ] ; 4 uses
  %i.ak = load i64, ptr %.021.i, align 8          ; 6 uses
  %i.al = icmp slt i64 %i.ak, %i.aj
  %i.am = inttoptr i64 %i.ak to ptr
  br i1 %i.al, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.an = ptrtoint ptr %.021.i to i64
  %i.ao = sub i64 %i.an, %.lcssa30                ; 3 uses
  %i.ap = ashr exact i64 %i.ao, 3                 ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 1
  br i1 %i.aq, label %bb.q, label %bb.r, !prof !1979

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 16
  %i.as = sub nsw i64 0, %i.ap
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.as
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %.0.lcssa, i64 %i.ao, i1 false)
  br label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEES9_ET0_T_SB_SA_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.au = icmp eq i64 %i.ao, 8
  br i1 %i.au, label %bb.s, label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEES9_ET0_T_SB_SA_.exit.i

bb.s:                                             ; preds = %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  store i64 %i.aj, ptr %i.av, align 8, !tbaa !768
  br label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEES9_ET0_T_SB_SA_.exit.i

_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEES9_ET0_T_SB_SA_.exit.i: ; preds = %bb.s, %bb.r, %bb.q
  store ptr %i.am, ptr %.0.lcssa, align 8, !tbaa !768
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.aw = load i64, ptr %.pn20.i, align 8, !tbaa !1112 ; 2 uses
  %i.ax = icmp slt i64 %i.ak, %i.aw
  br i1 %i.ax, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.t, %.lr.ph.i.i
  %i.ay = phi i64 [ %i.az, %.lr.ph.i.i ], [ %i.aw, %bb.t ]
  %.013.i.i26 = phi ptr [ %.0.i.i27, %.lr.ph.i.i ], [ %.pn20.i, %bb.t ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i26, %.lr.ph.i.i ], [ %.021.i, %bb.t ]
  store i64 %i.ay, ptr %.0912.i.i, align 8, !tbaa !768
  %.0.i.i27 = getelementptr inbounds i8, ptr %.013.i.i26, i64 -8 ; 2 uses
  %i.az = load i64, ptr %.0.i.i27, align 8, !tbaa !1112 ; 2 uses
  %i.ba = icmp slt i64 %i.ak, %i.az
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_.exit.i, !llvm.loop !14111

_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.t
  %.09.lcssa.i.i = phi ptr [ %.021.i, %bb.t ], [ %.013.i.i26, %.lr.ph.i.i ]
  store i64 %i.ak, ptr %.09.lcssa.i.i, align 8, !tbaa !768
  %.pre.i = load i64, ptr %.0.lcssa, align 8, !tbaa !1112
  br label %bb.u

bb.u:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_.exit.i, %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEES9_ET0_T_SB_SA_.exit.i
  %i.bb = phi i64 [ %i.ak, %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEES9_ET0_T_SB_SA_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_.exit.i ]
  %.0.i = getelementptr inbounds nuw i8, ptr %.021.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %.021.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_T0_.exit, label %bb.o, !llvm.loop !14112

_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_T0_.exit: ; preds = %bb.u, %.preheader.i, %._crit_edge, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3961", align 1
  call void @_ZSt11__make_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr i64 %i.d, 3                         ; 4 uses
  %i.f = add nsw i64 %i.e, -1
  %i.g = lshr i64 %i.f, 1
  %i.h = icmp sgt i64 %i.e, 2
  %i.i = and i64 %i.d, 8
  %i.j = icmp eq i64 %i.i, 0                      ; 2 uses
  %i.k = add nsw i64 %i.e, -2                     ; 2 uses
  %i.l = ashr exact i64 %i.k, 1                   ; 2 uses
  br i1 %i.h, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %4 = add nsw i64 %i.e, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.d
  %.011.us = phi ptr [ %i.ak, %bb.d ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.o = load i64, ptr %.011.us, align 8          ; 3 uses
  %i.p = load i64, ptr %0, align 8, !tbaa !1112   ; 2 uses
  %i.q = icmp slt i64 %i.o, %i.p
  br i1 %i.q, label %.lr.ph.i.i.preheader.us, label %bb.d

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  store i64 %i.p, ptr %.011.us, align 8, !tbaa !768
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.029.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.r = shl i64 %.029.i.i.us, 1                  ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [8 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.t, align 8, !tbaa !1112
  %i.x = load i64, ptr %i.v, align 8, !tbaa !1112
  %i.y = icmp slt i64 %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.us
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.i.us
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !768
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !768
  %i.ad = icmp slt i64 %spec.select.i.i.us, %i.g
  br i1 %i.ad, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !668

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  br i1 %.not.i.us, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_RT0_.exit.us, label %.lr.ph.i.i.i.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.ae = load i64, ptr %i.m, align 8, !tbaa !768
  store i64 %i.ae, ptr %i.n, align 8, !tbaa !768
  br label %.lr.ph.i.i.i.us.preheader

.lr.ph.i.i.i.us.preheader:                        ; preds = %.thread.i.us, %bb.b
  %.01317.i.i.i.us.ph = phi i64 [ %spec.select.i.i.us, %bb.b ], [ %4, %.thread.i.us ]
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %bb.c
  %.01317.i.i.i.us = phi i64 [ %.018.i.i910.i.us, %bb.c ], [ %.01317.i.i.i.us.ph, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %.018.in.i.i.i.us = add nsw i64 %.01317.i.i.i.us, -1
  %.018.i.i910.i.us = lshr i64 %.018.in.i.i.i.us, 1 ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i910.i.us
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !1112 ; 2 uses
  %i.ah = icmp slt i64 %i.ag, %i.o
  br i1 %i.ah, label %bb.c, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_RT0_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i.us
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !768
  %.not11.i.us = icmp eq i64 %.018.i.i910.i.us, 0
  br i1 %.not11.i.us, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_RT0_.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !669

_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_RT0_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %bb.b
  %.013.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %.01317.i.i.i.us, %.lr.ph.i.i.i.us ]
  %i.aj = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.us
  store i64 %i.o, ptr %i.aj, align 8, !tbaa !768
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_RT0_.exit.us, %.lr.ph.split.us
  %i.ak = getelementptr inbounds nuw i8, ptr %.011.us, i64 8 ; 2 uses
  %i.al = icmp ult ptr %i.ak, %2
  br i1 %i.al, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !14113

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.am = icmp eq i64 %spec.select.i.i.us, %i.l
  %or.cond = select i1 %i.j, i1 %i.am, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %i.j, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load i64, ptr %0, align 8, !tbaa !1112
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.ao = icmp eq i64 %i.k, 0
  %.pre32 = load i64, ptr %0, align 8, !tbaa !1112 ; 2 uses
  br i1 %i.ao, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.e
  %i.ap = phi i64 [ %i.av, %bb.e ], [ %.pre32, %.lr.ph.split.split.us ] ; 3 uses
  %.011.us12.us = phi ptr [ %i.aw, %bb.e ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.aq = load i64, ptr %.011.us12.us, align 8    ; 3 uses
  %i.ar = icmp slt i64 %i.aq, %i.ap
  br i1 %i.ar, label %._crit_edge.i.i.us13.us, label %bb.e

._crit_edge.i.i.us13.us:                          ; preds = %.lr.ph.split.split.us.split.us
  store i64 %i.ap, ptr %.011.us12.us, align 8, !tbaa !768
  %i.as = load i64, ptr %i.an, align 8, !tbaa !768 ; 2 uses
  store i64 %i.as, ptr %0, align 8, !tbaa !768
  %i.at = icmp sge i64 %i.as, %i.aq
  %spec.select = zext i1 %i.at to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %spec.select
  store i64 %i.aq, ptr %i.au, align 8, !tbaa !768
  %.pre31 = load i64, ptr %0, align 8, !tbaa !1112
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.us13.us, %.lr.ph.split.split.us.split.us
  %i.av = phi i64 [ %.pre31, %._crit_edge.i.i.us13.us ], [ %i.ap, %.lr.ph.split.split.us.split.us ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.011.us12.us, i64 8 ; 2 uses
  %i.ax = icmp ult ptr %i.aw, %2
  br i1 %i.ax, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !14113

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us, %bb.f
  %i.ay = phi i64 [ %i.bb, %bb.f ], [ %.pre32, %.lr.ph.split.split.us ] ; 3 uses
  %.011.us12 = phi ptr [ %i.bc, %bb.f ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.az = load i64, ptr %.011.us12, align 8       ; 3 uses
  %i.ba = icmp slt i64 %i.az, %i.ay
  br i1 %i.ba, label %._crit_edge.i.i.us13, label %bb.f

._crit_edge.i.i.us13:                             ; preds = %.lr.ph.split.split.us.split
  store i64 %i.ay, ptr %.011.us12, align 8, !tbaa !768
  store i64 %i.az, ptr %0, align 8, !tbaa !768
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.us13, %.lr.ph.split.split.us.split
  %i.bb = phi i64 [ %i.az, %._crit_edge.i.i.us13 ], [ %i.ay, %.lr.ph.split.split.us.split ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.011.us12, i64 8 ; 2 uses
  %i.bd = icmp ult ptr %i.bc, %2
  br i1 %i.bd, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !14113

._crit_edge:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.g
  %i.be = phi i64 [ %i.bh, %bb.g ], [ %.pre, %.lr.ph.split.split.preheader ] ; 3 uses
  %.011 = phi ptr [ %i.bi, %bb.g ], [ %1, %.lr.ph.split.split.preheader ] ; 3 uses
  %i.bf = load i64, ptr %.011, align 8            ; 3 uses
  %i.bg = icmp slt i64 %i.bf, %i.be
  br i1 %i.bg, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.split
  store i64 %i.be, ptr %.011, align 8, !tbaa !768
  store i64 %i.bf, ptr %0, align 8, !tbaa !768
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i
  %i.bh = phi i64 [ %i.be, %.lr.ph.split.split ], [ %i.bf, %._crit_edge.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.011, i64 8 ; 2 uses
  %i.bj = icmp ult ptr %i.bi, %2
  br i1 %i.bj, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !14113
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 4 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %3 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us
  %.015.us = phi i64 [ %i.an, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us
  %.sroa.02.0.copyload.us = load ptr, ptr %i.o, align 8, !tbaa !768 ; 2 uses
  %i.p = icmp slt i64 %.015.us, %i.i
  br i1 %i.p, label %.lr.ph.i.us, label %._crit_edge.i.us.thread

._crit_edge.i.us.thread:                          ; preds = %.split.us
  %i.q = ptrtoint ptr %.sroa.02.0.copyload.us to i64
  br label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.015.us, %.split.us ] ; 2 uses
  %i.r = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [8 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.t, align 8, !tbaa !1112
  %i.x = load i64, ptr %i.v, align 8, !tbaa !1112
  %i.y = icmp slt i64 %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.us
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !768
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !768
  %i.ad = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ad, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !668

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ae = icmp sgt i64 %spec.select.i.us, %.015.us
  %i.af = ptrtoint ptr %.sroa.02.0.copyload.us to i64 ; 4 uses
  br i1 %i.ae, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i.us
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !1112 ; 2 uses
  %i.ai = icmp slt i64 %i.ah, %i.af
  br i1 %i.ai, label %bb.c, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i.us
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !768
  %i.ak = icmp sgt i64 %.018.i.i.us, %.015.us
  br i1 %i.ak, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us, !llvm.loop !669

_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %._crit_edge.i.us.thread, %._crit_edge.i.us
  %i.al = phi i64 [ %i.af, %._crit_edge.i.us ], [ %i.q, %._crit_edge.i.us.thread ], [ %i.af, %bb.c ], [ %i.af, %.lr.ph.i.i.us ]
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.015.us, %._crit_edge.i.us.thread ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i64 %i.al, ptr %i.am, align 8, !tbaa !768
  %.not.us = icmp eq i64 %.015.us, 0
  %i.an = add nsw i64 %.015.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !14114

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit
  %.015 = phi i64 [ %i.bn, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015
  %.sroa.02.0.copyload = load ptr, ptr %i.ao, align 8, !tbaa !768
  %i.ap = icmp slt i64 %.015, %i.i
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.015, %.split ] ; 2 uses
  %i.aq = shl i64 %.029.i, 1                      ; 3 uses
  %i.ar = add i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ar
  %i.at = getelementptr [8 x i8], ptr %0, i64 %i.aq
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %i.av = load i64, ptr %i.as, align 8, !tbaa !1112
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !1112
  %i.ax = icmp slt i64 %i.av, %i.aw
  %i.ay = or disjoint i64 %i.aq, 1
  %spec.select.i = select i1 %i.ax, i64 %i.ay, i64 %i.ar ; 4 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !768
  store i64 %i.bb, ptr %i.ba, align 8, !tbaa !768
  %i.bc = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !668

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.015, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bd = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.be = load i64, ptr %i.m, align 8, !tbaa !768
  store i64 %i.be, ptr %i.n, align 8, !tbaa !768
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bf = icmp sgt i64 %.1.i, %.015
  %i.bg = ptrtoint ptr %.sroa.02.0.copyload to i64 ; 2 uses
  br i1 %i.bf, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01317.i.i = phi i64 [ %.018.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !1112 ; 2 uses
  %i.bj = icmp slt i64 %i.bi, %i.bg
  br i1 %i.bj, label %bb.f, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !768
  %i.bl = icmp sgt i64 %.018.i.i, %.015
  br i1 %i.bl, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit, !llvm.loop !669

_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i64 %i.bg, ptr %i.bm, align 8, !tbaa !768
  %.not = icmp eq i64 %.015, 0
  %i.bn = add nsw i64 %.015, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !14114

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIlNS2_12InternalNodeINS2_8LeafNodeIlLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE5eraseERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE11equal_rangeERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 3 uses
  %i.c = extractvalue { ptr, ptr } %i.a, 1        ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !816  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !814
  %i.h = icmp eq ptr %i.b, %i.g
  br i1 %i.h, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = icmp eq ptr %i.c, %i.i
  br i1 %i.j, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !813
  invoke void @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE8_M_eraseEPSt13_Rb_tree_nodeISF_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.l)
          to label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE5clearEv.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #33
  unreachable

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE5clearEv.exit.i: ; preds = %bb.c
  store ptr null, ptr %i.k, align 8, !tbaa !813
  store ptr %i.i, ptr %i.f, align 8, !tbaa !814
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.i, ptr %i.o, align 8, !tbaa !815
  store i64 0, ptr %i.d, align 8, !tbaa !816
  br label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISF_ESN_.exit

.critedge.i:                                      ; preds = %bb.b, %bb.a
  %.not8.i = icmp eq ptr %i.b, %i.c
  br i1 %.not8.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISF_ESN_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.sroa.06.09.i = phi ptr [ %i.b, %.lr.ph.i ], [ %i.q, %bb.e ] ; 2 uses
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.09.i) #32 ; 2 uses
  %i.r = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.09.i, ptr noundef nonnull align 8 dereferenceable(32) %i.p) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 72) #31
  %i.s = load i64, ptr %i.d, align 8, !tbaa !816
  %i.t = add i64 %i.s, -1                         ; 2 uses
  store i64 %i.t, ptr %i.d, align 8, !tbaa !816
  %.not.i = icmp eq ptr %i.q, %i.c
  br i1 %.not.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISF_ESN_.exit, label %bb.e, !llvm.loop !14115

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISF_ESN_.exit: ; preds = %bb.e, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE5clearEv.exit.i, %.critedge.i
  %i.u = phi i64 [ %i.e, %.critedge.i ], [ 0, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE5clearEv.exit.i ], [ %i.t, %bb.e ]
  %i.v = sub i64 %i.e, %i.u
  ret i64 %i.v
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIlLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE11equal_rangeERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_5
begin_hunk_6_@_ZSt13__introselectIPflN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_SC_T1_:bb.a
  %.0213568 = phi ptr [ %..021, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.03667 = phi ptr [ %.0., %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 14 uses
  %i.j = phi i64 [ %i.ak, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %i.k = add nsw i64 %.0233469, -1                ; 2 uses
  %i.l = lshr i64 %i.j, 3
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.03667, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.03667, i64 4 ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %.0213568, i64 -4 ; 3 uses
  %i.p = load float, ptr %i.n, align 4, !tbaa !1161 ; 5 uses
  %i.q = load float, ptr %i.m, align 4, !tbaa !1161 ; 5 uses
  %i.r = fcmp olt float %i.p, %i.q
  %i.s = load float, ptr %i.o, align 4, !tbaa !1161 ; 6 uses
  br i1 %i.r, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph70
  %i.t = fcmp olt float %i.q, %i.s
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = load float, ptr %.03667, align 4, !tbaa !1161
  store float %i.q, ptr %.03667, align 4, !tbaa !1161
  store float %i.u, ptr %i.m, align 4, !tbaa !1161
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader

bb.d:                                             ; preds = %bb.b
  %i.v = fcmp olt float %i.p, %i.s
  %i.w = load float, ptr %.03667, align 4, !tbaa !1161 ; 2 uses
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store float %i.s, ptr %.03667, align 4, !tbaa !1161
  store float %i.w, ptr %i.o, align 4, !tbaa !1161
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  store float %i.p, ptr %.03667, align 4, !tbaa !1161
  store float %i.w, ptr %i.n, align 4, !tbaa !1161
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader

bb.g:                                             ; preds = %.lr.ph70
  %i.x = fcmp olt float %i.p, %i.s
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load float, ptr %.03667, align 4, !tbaa !1161
  store float %i.p, ptr %.03667, align 4, !tbaa !1161
  store float %i.y, ptr %i.n, align 4, !tbaa !1161
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.z = fcmp olt float %i.q, %i.s
  %i.aa = load float, ptr %.03667, align 4, !tbaa !1161 ; 2 uses
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store float %i.s, ptr %.03667, align 4, !tbaa !1161
  store float %i.aa, ptr %i.o, align 4, !tbaa !1161
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  store float %i.q, ptr %.03667, align 4, !tbaa !1161
  store float %i.aa, ptr %i.m, align 4, !tbaa !1161
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader

_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i

_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader, %bb.n
  %.013.i.i = phi ptr [ %.114.i.i, %bb.n ], [ %.0213568, %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.ae, %bb.n ], [ %i.n, %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader ]
  %i.ab = load float, ptr %.03667, align 4, !tbaa !1161 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i ], [ %i.ae, %bb.l ] ; 7 uses
  %i.ac = load float, ptr %.1.i.i, align 4, !tbaa !1161 ; 2 uses
  %i.ad = fcmp olt float %i.ac, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4 ; 2 uses
  br i1 %i.ad, label %bb.l, label %.preheader.i.i, !llvm.loop !14137

.preheader.i.i:                                   ; preds = %bb.l, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.l ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -4 ; 5 uses
  %i.af = load float, ptr %.114.i.i, align 4, !tbaa !1161 ; 2 uses
  %i.ag = fcmp olt float %i.ab, %i.af
  br i1 %i.ag, label %.preheader.i.i, label %bb.m, !llvm.loop !14138

bb.m:                                             ; preds = %.preheader.i.i
  %i.ah = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.ah, label %bb.n, label %_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEES9_S9_S9_SC_.exit

bb.n:                                             ; preds = %bb.m
  store float %i.af, ptr %.1.i.i, align 4, !tbaa !1161
  store float %i.ac, ptr %.114.i.i, align 4, !tbaa !1161
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i, !llvm.loop !14139

_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEES9_S9_S9_SC_.exit: ; preds = %bb.m
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %..021 = select i1 %.not, ptr %.1.i.i, ptr %.0213568 ; 4 uses
  %.0. = select i1 %.not, ptr %.03667, ptr %.1.i.i ; 4 uses
  %i.ai = ptrtoint ptr %..021 to i64
  %i.aj = ptrtoint ptr %.0. to i64                ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 12
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !14136

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEES9_S9_S9_SC_.exit, %bb.a
  %.021.lcssa = phi ptr [ %2, %bb.a ], [ %..021, %_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEES9_S9_S9_SC_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.0., %_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEES9_S9_S9_SC_.exit ] ; 7 uses
  %.lcssa30 = phi i64 [ %i.b, %bb.a ], [ %i.aj, %_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEES9_S9_S9_SC_.exit ]
  %i.am = icmp eq ptr %.0.lcssa, %.021.lcssa
  br i1 %i.am, label %_ZSt16__insertion_sortIPfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_SC_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge
  %.017.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 4 ; 2 uses
  %.not18.i = icmp eq ptr %.017.i, %.021.lcssa
  br i1 %.not18.i, label %_ZSt16__insertion_sortIPfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_SC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.pre22.i = load float, ptr %.0.lcssa, align 4, !tbaa !1161
  br label %bb.o

bb.o:                                             ; preds = %bb.u, %.lr.ph.i
  %i.an = phi float [ %.pre22.i, %.lr.ph.i ], [ %i.be, %bb.u ] ; 2 uses
  %.020.i = phi ptr [ %.017.i, %.lr.ph.i ], [ %.0.i, %bb.u ] ; 6 uses
  %.pn19.i = phi ptr [ %.0.lcssa, %.lr.ph.i ], [ %.020.i, %bb.u ] ; 4 uses
  %i.ao = load float, ptr %.020.i, align 4, !tbaa !1161 ; 6 uses
  %i.ap = fcmp olt float %i.ao, %i.an
  br i1 %i.ap, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.aq = ptrtoint ptr %.020.i to i64
  %i.ar = sub i64 %i.aq, %.lcssa30                ; 3 uses
  %i.as = ashr exact i64 %i.ar, 2                 ; 2 uses
  %i.at = icmp sgt i64 %i.as, 1
  br i1 %i.at, label %bb.q, label %bb.r, !prof !1979

bb.q:                                             ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 8
  %i.av = sub nsw i64 0, %i.as
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.av
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aw, ptr noundef nonnull align 4 dereferenceable(1) %.0.lcssa, i64 %i.ar, i1 false)
  br label %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.ax = icmp eq i64 %i.ar, 4
  br i1 %i.ax, label %bb.s, label %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i

bb.s:                                             ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 4
  store float %i.an, ptr %i.ay, align 4, !tbaa !1161
  br label %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i

_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i:     ; preds = %bb.s, %bb.r, %bb.q
  store float %i.ao, ptr %.0.lcssa, align 4, !tbaa !1161
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.az = load float, ptr %.pn19.i, align 4, !tbaa !1161 ; 2 uses
  %i.ba = fcmp olt float %i.ao, %i.az
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPfN9__gnu_cxx5__ops14_Val_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.t, %.lr.ph.i.i
  %i.bb = phi float [ %i.bc, %.lr.ph.i.i ], [ %i.az, %bb.t ]
  %.013.i.i26 = phi ptr [ %.0.i.i27, %.lr.ph.i.i ], [ %.pn19.i, %bb.t ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i26, %.lr.ph.i.i ], [ %.020.i, %bb.t ]
  store float %i.bb, ptr %.0912.i.i, align 4, !tbaa !1161
  %.0.i.i27 = getelementptr inbounds i8, ptr %.013.i.i26, i64 -4 ; 2 uses
  %i.bc = load float, ptr %.0.i.i27, align 4, !tbaa !1161 ; 2 uses
  %i.bd = fcmp olt float %i.ao, %i.bc
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPfN9__gnu_cxx5__ops14_Val_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_.exit.i, !llvm.loop !14140

_ZSt25__unguarded_linear_insertIPfN9__gnu_cxx5__ops14_Val_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_.exit.i: ; preds = %.lr.ph.i.i, %bb.t
  %.09.lcssa.i.i = phi ptr [ %.020.i, %bb.t ], [ %.013.i.i26, %.lr.ph.i.i ]
  store float %i.ao, ptr %.09.lcssa.i.i, align 4, !tbaa !1161
  %.pre.i = load float, ptr %.0.lcssa, align 4, !tbaa !1161
  br label %bb.u

bb.u:                                             ; preds = %_ZSt25__unguarded_linear_insertIPfN9__gnu_cxx5__ops14_Val_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_.exit.i, %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i
  %i.be = phi float [ %i.ao, %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIPfN9__gnu_cxx5__ops14_Val_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_.exit.i ]
  %.0.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %.021.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIPfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_SC_.exit, label %bb.o, !llvm.loop !14141

_ZSt16__insertion_sortIPfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_SC_.exit: ; preds = %bb.u, %.preheader.i, %._crit_edge, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIPfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_SC_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3971", align 1
  call void @_ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_RSC_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr i64 %i.d, 2                         ; 4 uses
  %i.f = add nsw i64 %i.e, -1
  %i.g = lshr i64 %i.f, 1
  %i.h = icmp sgt i64 %i.e, 2
  %i.i = and i64 %i.d, 4
  %i.j = icmp eq i64 %i.i, 0                      ; 2 uses
  %i.k = add nsw i64 %i.e, -2                     ; 2 uses
  %i.l = ashr exact i64 %i.k, 1                   ; 2 uses
  br i1 %i.h, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %4 = add nsw i64 %i.e, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %4
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.d
  %.011.us = phi ptr [ %i.ak, %bb.d ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.o = load float, ptr %.011.us, align 4, !tbaa !1161 ; 3 uses
  %i.p = load float, ptr %0, align 4, !tbaa !1161 ; 2 uses
  %i.q = fcmp olt float %i.o, %i.p
  br i1 %i.q, label %.lr.ph.i.i.preheader.us, label %bb.d

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  store float %i.p, ptr %.011.us, align 4, !tbaa !1161
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.029.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.r = shl i64 %.029.i.i.us, 1                  ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [4 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %i.w = load float, ptr %i.t, align 4, !tbaa !1161
  %i.x = load float, ptr %i.v, align 4, !tbaa !1161
  %i.y = fcmp olt float %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i.us
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !1161
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.i.us
  store float %i.ab, ptr %i.ac, align 4, !tbaa !1161
  %i.ad = icmp slt i64 %spec.select.i.i.us, %i.g
  br i1 %i.ad, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !671

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  br i1 %.not.i.us, label %_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_RSC_.exit.us, label %.lr.ph.i.i.i.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.ae = load float, ptr %i.m, align 4, !tbaa !1161
  store float %i.ae, ptr %i.n, align 4, !tbaa !1161
  br label %.lr.ph.i.i.i.us.preheader

.lr.ph.i.i.i.us.preheader:                        ; preds = %.thread.i.us, %bb.b
  %.01317.i.i.i.us.ph = phi i64 [ %spec.select.i.i.us, %bb.b ], [ %4, %.thread.i.us ]
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %bb.c
  %.01317.i.i.i.us = phi i64 [ %.018.i.i89.i.us, %bb.c ], [ %.01317.i.i.i.us.ph, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %.018.in.i.i.i.us = add nsw i64 %.01317.i.i.i.us, -1
  %.018.i.i89.i.us = lshr i64 %.018.in.i.i.i.us, 1 ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i89.i.us
  %i.ag = load float, ptr %i.af, align 4, !tbaa !1161 ; 2 uses
  %i.ah = fcmp olt float %i.ag, %i.o
  br i1 %i.ah, label %bb.c, label %_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_RSC_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %.01317.i.i.i.us
  store float %i.ag, ptr %i.ai, align 4, !tbaa !1161
  %.not10.i.us = icmp eq i64 %.018.i.i89.i.us, 0
  br i1 %.not10.i.us, label %_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_RSC_.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !672

_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_RSC_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %bb.b
  %.013.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ %.01317.i.i.i.us, %.lr.ph.i.i.i.us ], [ 0, %bb.c ]
  %i.aj = getelementptr inbounds [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i.us
  store float %i.o, ptr %i.aj, align 4, !tbaa !1161
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_RSC_.exit.us, %.lr.ph.split.us
  %i.ak = getelementptr inbounds nuw i8, ptr %.011.us, i64 4 ; 2 uses
  %i.al = icmp ult ptr %i.ak, %2
  br i1 %i.al, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !14142

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.am = icmp eq i64 %spec.select.i.i.us, %i.l
  %or.cond = select i1 %i.j, i1 %i.am, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  br i1 %i.j, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load float, ptr %0, align 4, !tbaa !1161
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.ao = icmp eq i64 %i.k, 0
  %.pre31 = load float, ptr %0, align 4, !tbaa !1161 ; 2 uses
  br i1 %i.ao, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.e
  %i.ap = phi float [ %i.av, %bb.e ], [ %.pre31, %.lr.ph.split.split.us ] ; 3 uses
  %.011.us12.us = phi ptr [ %i.aw, %bb.e ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.aq = load float, ptr %.011.us12.us, align 4, !tbaa !1161 ; 3 uses
  %i.ar = fcmp olt float %i.aq, %i.ap
  br i1 %i.ar, label %._crit_edge.i.i.us13.us, label %bb.e

._crit_edge.i.i.us13.us:                          ; preds = %.lr.ph.split.split.us.split.us
  store float %i.ap, ptr %.011.us12.us, align 4, !tbaa !1161
  %i.as = load float, ptr %i.an, align 4, !tbaa !1161 ; 2 uses
  store float %i.as, ptr %0, align 4, !tbaa !1161
  %i.at = fcmp uge float %i.as, %i.aq
  %spec.select = zext i1 %i.at to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %spec.select
  store float %i.aq, ptr %i.au, align 4, !tbaa !1161
  %.pre30 = load float, ptr %0, align 4, !tbaa !1161
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.us13.us, %.lr.ph.split.split.us.split.us
  %i.av = phi float [ %.pre30, %._crit_edge.i.i.us13.us ], [ %i.ap, %.lr.ph.split.split.us.split.us ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.011.us12.us, i64 4 ; 2 uses
  %i.ax = icmp ult ptr %i.aw, %2
  br i1 %i.ax, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !14142

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us, %bb.f
  %i.ay = phi float [ %i.bb, %bb.f ], [ %.pre31, %.lr.ph.split.split.us ] ; 3 uses
  %.011.us12 = phi ptr [ %i.bc, %bb.f ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.az = load float, ptr %.011.us12, align 4, !tbaa !1161 ; 3 uses
  %i.ba = fcmp olt float %i.az, %i.ay
  br i1 %i.ba, label %._crit_edge.i.i.us13, label %bb.f

._crit_edge.i.i.us13:                             ; preds = %.lr.ph.split.split.us.split
  store float %i.ay, ptr %.011.us12, align 4, !tbaa !1161
  store float %i.az, ptr %0, align 4, !tbaa !1161
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.us13, %.lr.ph.split.split.us.split
  %i.bb = phi float [ %i.az, %._crit_edge.i.i.us13 ], [ %i.ay, %.lr.ph.split.split.us.split ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.011.us12, i64 4 ; 2 uses
  %i.bd = icmp ult ptr %i.bc, %2
  br i1 %i.bd, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !14142

._crit_edge:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.g
  %i.be = phi float [ %i.bh, %bb.g ], [ %.pre, %.lr.ph.split.split.preheader ] ; 3 uses
  %.011 = phi ptr [ %i.bi, %bb.g ], [ %1, %.lr.ph.split.split.preheader ] ; 3 uses
  %i.bf = load float, ptr %.011, align 4, !tbaa !1161 ; 3 uses
  %i.bg = fcmp olt float %i.bf, %i.be
  br i1 %i.bg, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.split
  store float %i.be, ptr %.011, align 4, !tbaa !1161
  store float %i.bf, ptr %0, align 4, !tbaa !1161
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i
  %i.bh = phi float [ %i.be, %.lr.ph.split.split ], [ %i.bf, %._crit_edge.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.011, i64 4 ; 2 uses
  %i.bj = icmp ult ptr %i.bi, %2
  br i1 %i.bj, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !14142
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_RSC_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 4 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %3 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit.us
  %.014.us = phi i64 [ %i.al, %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014.us
  %i.p = load float, ptr %i.o, align 4, !tbaa !1161 ; 2 uses
  %i.q = icmp slt i64 %.014.us, %i.i
  br i1 %i.q, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.014.us, %.split.us ] ; 2 uses
  %i.r = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [4 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %i.w = load float, ptr %i.t, align 4, !tbaa !1161
  %i.x = load float, ptr %i.v, align 4, !tbaa !1161
  %i.y = fcmp olt float %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !1161
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.us
  store float %i.ab, ptr %i.ac, align 4, !tbaa !1161
  %i.ad = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ad, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !671

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ae = icmp sgt i64 %spec.select.i.us, %.014.us
  br i1 %i.ae, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i.us
  %i.ag = load float, ptr %i.af, align 4, !tbaa !1161 ; 2 uses
  %i.ah = fcmp olt float %i.ag, %i.p
  br i1 %i.ah, label %bb.c, label %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i.i.us
  store float %i.ag, ptr %i.ai, align 4, !tbaa !1161
  %i.aj = icmp sgt i64 %.018.i.i.us, %.014.us
  br i1 %i.aj, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit.us, !llvm.loop !672

_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.014.us, %.split.us ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store float %i.p, ptr %i.ak, align 4, !tbaa !1161
  %.not.us = icmp eq i64 %.014.us, 0
  %i.al = add nsw i64 %.014.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !14143

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit
  %.014 = phi i64 [ %i.bl, %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014
  %i.an = load float, ptr %i.am, align 4, !tbaa !1161 ; 2 uses
  %i.ao = icmp slt i64 %.014, %i.i
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.014, %.split ] ; 2 uses
  %i.ap = shl i64 %.029.i, 1                      ; 3 uses
  %i.aq = add i64 %i.ap, 2                        ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aq
  %i.as = getelementptr [4 x i8], ptr %0, i64 %i.ap
  %i.at = getelementptr i8, ptr %i.as, i64 4
  %i.au = load float, ptr %i.ar, align 4, !tbaa !1161
  %i.av = load float, ptr %i.at, align 4, !tbaa !1161
  %i.aw = fcmp olt float %i.au, %i.av
  %i.ax = or disjoint i64 %i.ap, 1
  %spec.select.i = select i1 %i.aw, i64 %i.ax, i64 %i.aq ; 4 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.az = load float, ptr %i.ay, align 4, !tbaa !1161
  %i.ba = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i
  store float %i.az, ptr %i.ba, align 4, !tbaa !1161
  %i.bb = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bb, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !671

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.014, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bc = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bd = load float, ptr %i.m, align 4, !tbaa !1161
  store float %i.bd, ptr %i.n, align 4, !tbaa !1161
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.128.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.be = icmp sgt i64 %.128.i, %.014
  br i1 %i.be, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01317.i.i = phi i64 [ %.018.i.i, %bb.f ], [ %.128.i, %bb.e ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !1161 ; 2 uses
  %i.bh = fcmp olt float %i.bg, %i.an
  br i1 %i.bh, label %bb.f, label %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i.i
  store float %i.bg, ptr %i.bi, align 4, !tbaa !1161
  %i.bj = icmp sgt i64 %.018.i.i, %.014
  br i1 %i.bj, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit, !llvm.loop !672

_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i
  store float %i.an, ptr %i.bk, align 4, !tbaa !1161
  %.not = icmp eq i64 %.014, 0
  %i.bl = add nsw i64 %.014, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !14143

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit.us, %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIfLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEE9NodeRangeENSC_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeISB_EEEELj0EEENSC_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSD_RKSN_RSP_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !1997
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !1998
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !768
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1573
  %i.g = load i64, ptr %0, align 8, !tbaa !1572
  %.not.i = icmp ult i64 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEE9NodeRangeENSC_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeISB_EEEELj0EEENSC_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSD_RKSN_RSP_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr null, ptr %3, align 8, !tbaa !2001
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 192)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEE9NodeRangeENSC_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeISB_EEEELj0EEENSC_14OpWithoutIndexEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !743
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !3072
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.l = load i32, ptr %1, align 4, !tbaa !1161
  store i32 %i.l, ptr %i.k, align 32, !tbaa !1161
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !5396
  %i.n = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  store i32 0, ptr %i.q, align 8, !tbaa !2014
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 124
  store i8 5, ptr %i.r, align 4, !tbaa !2015
  %i.s = shl nsw i64 %i.p, 1
  %i.t = and i64 %i.s, 9223372036854775806
  store i64 %i.t, ptr %i.o, align 16, !tbaa !2016
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.v = load i64, ptr %3, align 8, !tbaa !2017
  store i64 %i.v, ptr %i.u, align 64, !tbaa !2017
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr null, ptr %4, align 8, !tbaa !2021
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.w, align 8, !tbaa !2022
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.x, align 8, !tbaa !2025
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.y, align 8, !tbaa !827
  store ptr %4, ptr %i.m, align 8, !tbaa !5396
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEE9NodeRangeENSC_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeISB_EEEELj0EEENSC_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSD_RKSN_RSP_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEE9NodeRangeENSC_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeISB_EEEELj0EEENSC_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSD_RKSN_RSP_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.aa = load atomic i8, ptr %i.z monotonic, align 1
end_hunk_6
begin_hunk_7_@_ZSt13__introselectIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEElN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_T0_T1_:bb.a

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.03354, align 8, !tbaa !768
  %i.t = load i64, ptr %i.l, align 8, !tbaa !768
  store i64 %i.t, ptr %.03354, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.l, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.d:                                             ; preds = %bb.b
  %i.u = fcmp olt float %i.o, %i.r
  %.sroa.0.0.copyload.i.i22.i.i = load ptr, ptr %.03354, align 8, !tbaa !768 ; 2 uses
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.n, align 8, !tbaa !768
  store i64 %i.v, ptr %.03354, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i22.i.i, ptr %i.n, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  %i.w = load i64, ptr %i.m, align 8, !tbaa !768
  store i64 %i.w, ptr %.03354, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i22.i.i, ptr %i.m, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.g:                                             ; preds = %.lr.ph57
  %i.x = fcmp olt float %i.o, %i.r
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i24.i.i = load ptr, ptr %.03354, align 8, !tbaa !768
  %i.y = load i64, ptr %i.m, align 8, !tbaa !768
  store i64 %i.y, ptr %.03354, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i24.i.i, ptr %i.m, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.z = fcmp olt float %i.p, %i.r
  %.sroa.0.0.copyload.i.i25.i.i = load ptr, ptr %.03354, align 8, !tbaa !768 ; 2 uses
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !768
  store i64 %i.aa, ptr %.03354, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i25.i.i, ptr %i.n, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  %i.ab = load i64, ptr %i.l, align 8, !tbaa !768
  store i64 %i.ab, ptr %.03354, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i25.i.i, ptr %i.l, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i

_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader, %bb.n
  %.013.i.i = phi ptr [ %.114.i.i, %bb.n ], [ %.0213255, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.af, %bb.n ], [ %i.m, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader ]
  %i.ac = load float, ptr %.03354, align 4, !tbaa !1161 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i ], [ %i.af, %bb.l ] ; 8 uses
  %i.ad = load float, ptr %.1.i.i, align 4, !tbaa !1161
  %i.ae = fcmp olt float %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.ae, label %bb.l, label %.preheader.i.i, !llvm.loop !14155

.preheader.i.i:                                   ; preds = %bb.l, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.l ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 6 uses
  %i.ag = load float, ptr %.114.i.i, align 4, !tbaa !1161
  %i.ah = fcmp olt float %i.ac, %i.ag
  br i1 %i.ah, label %.preheader.i.i, label %bb.m, !llvm.loop !14156

bb.m:                                             ; preds = %.preheader.i.i
  %i.ai = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.ai, label %bb.n, label %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEESM_SM_SM_T0_.exit

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i.i.i13.i = load ptr, ptr %.1.i.i, align 8, !tbaa !768
  %i.aj = load i64, ptr %.114.i.i, align 8, !tbaa !768
  store i64 %i.aj, ptr %.1.i.i, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i.i13.i, ptr %.114.i.i, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i, !llvm.loop !14157

_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEESM_SM_SM_T0_.exit: ; preds = %bb.m
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %..021 = select i1 %.not, ptr %.1.i.i, ptr %.0213255 ; 4 uses
  %.0. = select i1 %.not, ptr %.03354, ptr %.1.i.i ; 4 uses
  %i.ak = ptrtoint ptr %..021 to i64
  %i.al = ptrtoint ptr %.0. to i64                ; 2 uses
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = icmp sgt i64 %i.am, 24
  br i1 %i.an, label %.lr.ph, label %._crit_edge, !llvm.loop !14154

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEESM_SM_SM_T0_.exit, %bb.a
  %.021.lcssa = phi ptr [ %2, %bb.a ], [ %..021, %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEESM_SM_SM_T0_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.0., %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEESM_SM_SM_T0_.exit ] ; 8 uses
  %.lcssa27 = phi i64 [ %i.b, %bb.a ], [ %i.al, %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEESM_SM_SM_T0_.exit ]
  %i.ao = icmp eq ptr %.0.lcssa, %.021.lcssa
  br i1 %i.ao, label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_T0_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge
  %.018.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8 ; 2 uses
  %.not19.i = icmp eq ptr %.018.i, %.021.lcssa
  br i1 %.not19.i, label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.pre23.i = load float, ptr %.0.lcssa, align 4, !tbaa !1161
  br label %bb.o

bb.o:                                             ; preds = %bb.u, %.lr.ph.i
  %i.ap = phi float [ %.pre23.i, %.lr.ph.i ], [ %i.bl, %bb.u ]
  %.021.i = phi ptr [ %.018.i, %.lr.ph.i ], [ %.0.i, %bb.u ] ; 7 uses
  %.pn20.i = phi ptr [ %.0.lcssa, %.lr.ph.i ], [ %.021.i, %bb.u ] ; 5 uses
  %i.aq = load float, ptr %.021.i, align 4        ; 4 uses
  %i.ar = fcmp olt float %i.aq, %i.ap
  br i1 %i.ar, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %.sroa.01.0.copyload.i = load ptr, ptr %.021.i, align 8, !tbaa !768 ; 2 uses
  %i.as = ptrtoint ptr %.021.i to i64
  %i.at = sub i64 %i.as, %.lcssa27                ; 3 uses
  %i.au = ashr exact i64 %i.at, 3                 ; 2 uses
  %i.av = icmp sgt i64 %i.au, 1
  br i1 %i.av, label %bb.q, label %bb.r, !prof !1979

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 16
  %i.ax = sub nsw i64 0, %i.au
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ax
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %.0.lcssa, i64 %i.at, i1 false)
  br label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEES7_ET0_T_S9_S8_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.az = icmp eq i64 %i.at, 8
  br i1 %i.az, label %bb.s, label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEES7_ET0_T_S9_S8_.exit.i

bb.s:                                             ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  %i.bb = load i64, ptr %.0.lcssa, align 8, !tbaa !768
  store i64 %i.bb, ptr %i.ba, align 8, !tbaa !768
  br label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEES7_ET0_T_S9_S8_.exit.i

_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEES7_ET0_T_S9_S8_.exit.i: ; preds = %bb.s, %bb.r, %bb.q
  store ptr %.sroa.01.0.copyload.i, ptr %.0.lcssa, align 8, !tbaa !768
  %i.bc = ptrtoint ptr %.sroa.01.0.copyload.i to i64
  %i.bd = trunc i64 %i.bc to i32
  %i.be = bitcast i32 %i.bd to float
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %.sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 12
  %i.bf = load i32, ptr %.sroa_idx10.i.i, align 4
  %i.bg = load float, ptr %.pn20.i, align 4, !tbaa !1161
  %i.bh = fcmp ogt float %i.bg, %i.aq
  br i1 %i.bh, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.t, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %.0.i.i26, %.lr.ph.i.i ], [ %.pn20.i, %bb.t ] ; 4 uses
  %.0914.i.i = phi ptr [ %.015.i.i, %.lr.ph.i.i ], [ %.021.i, %bb.t ]
  %i.bi = load i64, ptr %.015.i.i, align 8, !tbaa !768
  store i64 %i.bi, ptr %.0914.i.i, align 8, !tbaa !768
  %.0.i.i26 = getelementptr inbounds i8, ptr %.015.i.i, i64 -8 ; 2 uses
  %i.bj = load float, ptr %.0.i.i26, align 8, !tbaa !1161
  %i.bk = fcmp ogt float %i.bj, %i.aq
  br i1 %i.bk, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_.exit.i, !llvm.loop !14158

_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.t
  %.09.lcssa.i.i = phi ptr [ %.021.i, %bb.t ], [ %.015.i.i, %.lr.ph.i.i ] ; 2 uses
  store float %i.aq, ptr %.09.lcssa.i.i, align 8, !tbaa !768
  %.09.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i, i64 4
  store i32 %i.bf, ptr %.09.sroa_idx.i.i, align 4, !tbaa !768
  %.pre.i = load float, ptr %.0.lcssa, align 4, !tbaa !1161
  br label %bb.u

bb.u:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_.exit.i, %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEES7_ET0_T_S9_S8_.exit.i
  %i.bl = phi float [ %i.be, %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEES7_ET0_T_S9_S8_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_.exit.i ]
  %.0.i = getelementptr inbounds nuw i8, ptr %.021.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %.021.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_T0_.exit, label %bb.o, !llvm.loop !14159

_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_T0_.exit: ; preds = %bb.u, %.preheader.i, %._crit_edge, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3979", align 1
  call void @_ZSt11__make_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr i64 %i.d, 3                         ; 4 uses
  %i.f = add nsw i64 %i.e, -1
  %i.g = lshr i64 %i.f, 1
  %i.h = icmp sgt i64 %i.e, 2
  %i.i = and i64 %i.d, 8
  %i.j = icmp eq i64 %i.i, 0                      ; 2 uses
  %i.k = add nsw i64 %i.e, -2                     ; 2 uses
  %i.l = ashr exact i64 %i.k, 1                   ; 2 uses
  br i1 %i.h, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %4 = add nsw i64 %i.e, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.d
  %.011.us = phi ptr [ %i.ar, %bb.d ], [ %1, %.lr.ph.split.us.preheader ] ; 4 uses
  %i.o = load float, ptr %.011.us, align 4, !tbaa !1161
  %i.p = load float, ptr %0, align 4, !tbaa !1161
  %i.q = fcmp olt float %i.o, %i.p
  br i1 %i.q, label %.lr.ph.i.i.preheader.us, label %bb.d

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  %.sroa.02.0.copyload.i.us = load ptr, ptr %.011.us, align 8, !tbaa !768 ; 2 uses
  %i.r = load i64, ptr %0, align 8, !tbaa !768
  store i64 %i.r, ptr %.011.us, align 8, !tbaa !768
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.029.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.s = shl i64 %.029.i.i.us, 1                  ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr [8 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load float, ptr %i.u, align 4, !tbaa !1161
  %i.y = load float, ptr %i.w, align 4, !tbaa !1161
  %i.z = fcmp olt float %i.x, %i.y
  %i.aa = or disjoint i64 %i.s, 1
  %spec.select.i.i.us = select i1 %i.z, i64 %i.aa, i64 %i.t ; 6 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.us
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.i.us
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !768
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !768
  %i.ae = icmp slt i64 %spec.select.i.i.us, %i.g
  br i1 %i.ae, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !674

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  %i.af = ptrtoint ptr %.sroa.02.0.copyload.i.us to i64 ; 2 uses
  br i1 %.not.i.us, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_RT0_.exit.us, label %.lr.ph.i.i.preheader.i.us

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !768
  store i64 %i.ag, ptr %i.n, align 8, !tbaa !768
  %i.ah = ptrtoint ptr %.sroa.02.0.copyload.i.us to i64
  br label %.lr.ph.i.i.preheader.i.us

.lr.ph.i.i.preheader.i.us:                        ; preds = %.thread.i.us, %bb.b
  %i.ai = phi i64 [ %i.ah, %.thread.i.us ], [ %i.af, %bb.b ] ; 3 uses
  %.1.i14.i.us = phi i64 [ %4, %.thread.i.us ], [ %spec.select.i.i.us, %bb.b ]
  %.in.i.us = trunc i64 %i.ai to i32
  %i.aj = bitcast i32 %.in.i.us to float
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %bb.c, %.lr.ph.i.i.preheader.i.us
  %.01317.i.i.i.us = phi i64 [ %.018.i.i910.i.us, %bb.c ], [ %.1.i14.i.us, %.lr.ph.i.i.preheader.i.us ] ; 3 uses
  %.018.in.i.i.i.us = add nsw i64 %.01317.i.i.i.us, -1
  %.018.i.i910.i.us = lshr i64 %.018.in.i.i.i.us, 1 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i910.i.us ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !1161
  %i.am = fcmp olt float %i.al, %i.aj
  br i1 %i.am, label %bb.c, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_RT0_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.an = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i.us
  %i.ao = load i64, ptr %i.ak, align 8, !tbaa !768
  store i64 %i.ao, ptr %i.an, align 8, !tbaa !768
  %.not11.i.us = icmp eq i64 %.018.i.i910.i.us, 0
  br i1 %.not11.i.us, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_RT0_.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !675

_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_RT0_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %bb.b
  %i.ap = phi i64 [ %i.af, %bb.b ], [ %i.ai, %bb.c ], [ %i.ai, %.lr.ph.i.i.i.us ]
  %.013.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ %.01317.i.i.i.us, %.lr.ph.i.i.i.us ], [ 0, %bb.c ]
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.us
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !768
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_RT0_.exit.us, %.lr.ph.split.us
  %i.ar = getelementptr inbounds nuw i8, ptr %.011.us, i64 8 ; 2 uses
  %i.as = icmp ult ptr %i.ar, %2
  br i1 %i.as, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !14160

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.at = icmp eq i64 %spec.select.i.i.us, %i.l
  %or.cond = select i1 %i.j, i1 %i.at, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %i.j, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load float, ptr %0, align 4, !tbaa !1161
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.av = icmp eq i64 %i.k, 0
  %.pre33 = load float, ptr %0, align 4, !tbaa !1161 ; 2 uses
  br i1 %i.av, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.e
  %i.aw = phi float [ %i.bh, %bb.e ], [ %.pre33, %.lr.ph.split.split.us ] ; 2 uses
  %.011.us12.us = phi ptr [ %i.bi, %bb.e ], [ %1, %.lr.ph.split.split.us ] ; 4 uses
  %i.ax = load float, ptr %.011.us12.us, align 4, !tbaa !1161
  %i.ay = fcmp olt float %i.ax, %i.aw
  br i1 %i.ay, label %._crit_edge.i.i.us13.us, label %bb.e

._crit_edge.i.i.us13.us:                          ; preds = %.lr.ph.split.split.us.split.us
  %.sroa.02.0.copyload.i.us14.us = load ptr, ptr %.011.us12.us, align 8, !tbaa !768
  %i.az = load i64, ptr %0, align 8, !tbaa !768
  store i64 %i.az, ptr %.011.us12.us, align 8, !tbaa !768
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !768 ; 2 uses
  store i64 %i.ba, ptr %0, align 8, !tbaa !768
  %i.bb = ptrtoint ptr %.sroa.02.0.copyload.i.us14.us to i64 ; 2 uses
  %.in.i.us16.us = trunc i64 %i.bb to i32
  %i.bc = bitcast i32 %.in.i.us16.us to float
  %i.bd = trunc i64 %i.ba to i32
  %i.be = bitcast i32 %i.bd to float
  %i.bf = fcmp uge float %i.be, %i.bc
  %spec.select = zext i1 %i.bf to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %spec.select
  store i64 %i.bb, ptr %i.bg, align 8, !tbaa !768
  %.pre32 = load float, ptr %0, align 8, !tbaa !1161
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.us13.us, %.lr.ph.split.split.us.split.us
  %i.bh = phi float [ %.pre32, %._crit_edge.i.i.us13.us ], [ %i.aw, %.lr.ph.split.split.us.split.us ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.011.us12.us, i64 8 ; 2 uses
  %i.bj = icmp ult ptr %i.bi, %2
  br i1 %i.bj, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !14160

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us, %bb.f
  %i.bk = phi float [ %i.br, %bb.f ], [ %.pre33, %.lr.ph.split.split.us ] ; 2 uses
  %.011.us12 = phi ptr [ %i.bs, %bb.f ], [ %1, %.lr.ph.split.split.us ] ; 4 uses
  %i.bl = load float, ptr %.011.us12, align 4, !tbaa !1161
  %i.bm = fcmp olt float %i.bl, %i.bk
  br i1 %i.bm, label %._crit_edge.i.i.us13, label %bb.f

._crit_edge.i.i.us13:                             ; preds = %.lr.ph.split.split.us.split
  %.sroa.02.0.copyload.i.us14 = load ptr, ptr %.011.us12, align 8, !tbaa !768
  %i.bn = load i64, ptr %0, align 8, !tbaa !768
  store i64 %i.bn, ptr %.011.us12, align 8, !tbaa !768
  %i.bo = ptrtoint ptr %.sroa.02.0.copyload.i.us14 to i64 ; 2 uses
  store i64 %i.bo, ptr %0, align 8, !tbaa !768
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = bitcast i32 %i.bp to float
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.us13, %.lr.ph.split.split.us.split
  %i.br = phi float [ %i.bq, %._crit_edge.i.i.us13 ], [ %i.bk, %.lr.ph.split.split.us.split ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.011.us12, i64 8 ; 2 uses
  %i.bt = icmp ult ptr %i.bs, %2
  br i1 %i.bt, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !14160

._crit_edge:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.g
  %i.bu = phi float [ %i.cb, %bb.g ], [ %.pre, %.lr.ph.split.split.preheader ] ; 2 uses
  %.011 = phi ptr [ %i.cc, %bb.g ], [ %1, %.lr.ph.split.split.preheader ] ; 4 uses
  %i.bv = load float, ptr %.011, align 4, !tbaa !1161
  %i.bw = fcmp olt float %i.bv, %i.bu
  br i1 %i.bw, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.split
  %.sroa.02.0.copyload.i = load ptr, ptr %.011, align 8, !tbaa !768
  %i.bx = load i64, ptr %0, align 8, !tbaa !768
  store i64 %i.bx, ptr %.011, align 8, !tbaa !768
  %i.by = ptrtoint ptr %.sroa.02.0.copyload.i to i64 ; 2 uses
  store i64 %i.by, ptr %0, align 8, !tbaa !768
  %i.bz = trunc i64 %i.by to i32
  %i.ca = bitcast i32 %i.bz to float
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i
  %i.cb = phi float [ %i.bu, %.lr.ph.split.split ], [ %i.ca, %._crit_edge.i.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.011, i64 8 ; 2 uses
  %i.cd = icmp ult ptr %i.cc, %2
  br i1 %i.cd, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !14160
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 4 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %3 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us
  %.015.us = phi i64 [ %i.aq, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us
  %.sroa.02.0.copyload.us = load ptr, ptr %i.o, align 8, !tbaa !768 ; 2 uses
  %i.p = icmp slt i64 %.015.us, %i.i
  br i1 %i.p, label %.lr.ph.i.us, label %._crit_edge.i.us.thread

._crit_edge.i.us.thread:                          ; preds = %.split.us
  %i.q = ptrtoint ptr %.sroa.02.0.copyload.us to i64
  br label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.015.us, %.split.us ] ; 2 uses
  %i.r = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [8 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load float, ptr %i.t, align 4, !tbaa !1161
  %i.x = load float, ptr %i.v, align 4, !tbaa !1161
  %i.y = fcmp olt float %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.us
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !768
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !768
  %i.ad = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ad, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !674

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ae = icmp sgt i64 %spec.select.i.us, %.015.us
  %i.af = ptrtoint ptr %.sroa.02.0.copyload.us to i64 ; 4 uses
  %i.ag = trunc i64 %i.af to i32
  %i.ah = bitcast i32 %i.ag to float
  br i1 %i.ae, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i.us ; 2 uses
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !1161
  %i.ak = fcmp olt float %i.aj, %i.ah
  br i1 %i.ak, label %bb.c, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i.us
  %i.am = load i64, ptr %i.ai, align 8, !tbaa !768
  store i64 %i.am, ptr %i.al, align 8, !tbaa !768
  %i.an = icmp sgt i64 %.018.i.i.us, %.015.us
  br i1 %i.an, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us, !llvm.loop !675

_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %._crit_edge.i.us.thread, %._crit_edge.i.us
  %i.ao = phi i64 [ %i.af, %._crit_edge.i.us ], [ %i.q, %._crit_edge.i.us.thread ], [ %i.af, %bb.c ], [ %i.af, %.lr.ph.i.i.us ]
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.015.us, %._crit_edge.i.us.thread ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !768
  %.not.us = icmp eq i64 %.015.us, 0
  %i.aq = add nsw i64 %.015.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !14161

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit
  %.015 = phi i64 [ %i.bt, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015
  %.sroa.02.0.copyload = load ptr, ptr %i.ar, align 8, !tbaa !768
  %i.as = icmp slt i64 %.015, %i.i
  br i1 %i.as, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.015, %.split ] ; 2 uses
  %i.at = shl i64 %.029.i, 1                      ; 3 uses
  %i.au = add i64 %i.at, 2                        ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %i.au
  %i.aw = getelementptr [8 x i8], ptr %0, i64 %i.at
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %i.ay = load float, ptr %i.av, align 4, !tbaa !1161
  %i.az = load float, ptr %i.ax, align 4, !tbaa !1161
  %i.ba = fcmp olt float %i.ay, %i.az
  %i.bb = or disjoint i64 %i.at, 1
  %spec.select.i = select i1 %i.ba, i64 %i.bb, i64 %i.au ; 4 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.bd = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !768
  store i64 %i.be, ptr %i.bd, align 8, !tbaa !768
  %i.bf = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bf, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !674

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.015, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bg = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bg, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bh = load i64, ptr %i.m, align 8, !tbaa !768
  store i64 %i.bh, ptr %i.n, align 8, !tbaa !768
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bi = icmp sgt i64 %.1.i, %.015
  %i.bj = ptrtoint ptr %.sroa.02.0.copyload to i64 ; 2 uses
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = bitcast i32 %i.bk to float
  br i1 %i.bi, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01317.i.i = phi i64 [ %.018.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i ; 2 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !1161
  %i.bo = fcmp olt float %i.bn, %i.bl
  br i1 %i.bo, label %bb.f, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i
  %i.bq = load i64, ptr %i.bm, align 8, !tbaa !768
  store i64 %i.bq, ptr %i.bp, align 8, !tbaa !768
  %i.br = icmp sgt i64 %.018.i.i, %.015
  br i1 %i.br, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit, !llvm.loop !675

_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i64 %i.bj, ptr %i.bs, align 8, !tbaa !768
  %.not = icmp eq i64 %.015, 0
  %i.bt = add nsw i64 %.015, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !14161

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_8LeafNodeIfLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__introselectIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEElN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_T0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 24
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph57

.lr.ph:                                           ; preds = %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEESM_SM_SM_T0_.exit
  %i.f = icmp eq i64 %i.j, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph57, !llvm.loop !14162

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.033.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.0., %.lr.ph ] ; 3 uses
  %.02132.lcssa = phi ptr [ %2, %.lr.ph.preheader ], [ %..021, %.lr.ph ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZSt13__heap_selectIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_T0_(ptr noundef %.033.lcssa, ptr noundef nonnull %i.g, ptr noundef %.02132.lcssa)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %.033.lcssa, align 8, !tbaa !768
  %i.h = load i64, ptr %1, align 8, !tbaa !768
  store i64 %i.h, ptr %.033.lcssa, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i, ptr %1, align 8, !tbaa !768
  br label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_T0_.exit

.lr.ph57:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0233156 = phi i64 [ %i.j, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.0213255 = phi ptr [ %..021, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.03354 = phi ptr [ %.0., %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 14 uses
  %i.i = phi i64 [ %i.am, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %i.j = add nsw i64 %.0233156, -1                ; 2 uses
  %i.k = lshr i64 %i.i, 4
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.03354, i64 %i.k ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.03354, i64 8 ; 6 uses
  %i.n = getelementptr inbounds i8, ptr %.0213255, i64 -8 ; 5 uses
  %i.o = load float, ptr %i.m, align 4, !tbaa !1161 ; 3 uses
  %i.p = load float, ptr %i.l, align 4, !tbaa !1161 ; 3 uses
  %i.q = fcmp olt float %i.o, %i.p
  %i.r = load float, ptr %i.n, align 4, !tbaa !1161 ; 4 uses
  br i1 %i.q, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph57
  %i.s = fcmp olt float %i.p, %i.r
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.03354, align 8, !tbaa !768
  %i.t = load i64, ptr %i.l, align 8, !tbaa !768
  store i64 %i.t, ptr %.03354, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.l, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.d:                                             ; preds = %bb.b
  %i.u = fcmp olt float %i.o, %i.r
  %.sroa.0.0.copyload.i.i22.i.i = load ptr, ptr %.03354, align 8, !tbaa !768 ; 2 uses
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.n, align 8, !tbaa !768
  store i64 %i.v, ptr %.03354, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i22.i.i, ptr %i.n, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  %i.w = load i64, ptr %i.m, align 8, !tbaa !768
  store i64 %i.w, ptr %.03354, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i22.i.i, ptr %i.m, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.g:                                             ; preds = %.lr.ph57
  %i.x = fcmp olt float %i.o, %i.r
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i24.i.i = load ptr, ptr %.03354, align 8, !tbaa !768
  %i.y = load i64, ptr %i.m, align 8, !tbaa !768
  store i64 %i.y, ptr %.03354, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i24.i.i, ptr %i.m, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.z = fcmp olt float %i.p, %i.r
  %.sroa.0.0.copyload.i.i25.i.i = load ptr, ptr %.03354, align 8, !tbaa !768 ; 2 uses
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !768
  store i64 %i.aa, ptr %.03354, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i25.i.i, ptr %i.n, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  %i.ab = load i64, ptr %i.l, align 8, !tbaa !768
  store i64 %i.ab, ptr %.03354, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i25.i.i, ptr %i.l, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i

_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader, %bb.n
  %.013.i.i = phi ptr [ %.114.i.i, %bb.n ], [ %.0213255, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.af, %bb.n ], [ %i.m, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader ]
  %i.ac = load float, ptr %.03354, align 4, !tbaa !1161 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i ], [ %i.af, %bb.l ] ; 8 uses
  %i.ad = load float, ptr %.1.i.i, align 4, !tbaa !1161
  %i.ae = fcmp olt float %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.ae, label %bb.l, label %.preheader.i.i, !llvm.loop !14163

.preheader.i.i:                                   ; preds = %bb.l, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.l ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 6 uses
  %i.ag = load float, ptr %.114.i.i, align 4, !tbaa !1161
  %i.ah = fcmp olt float %i.ac, %i.ag
  br i1 %i.ah, label %.preheader.i.i, label %bb.m, !llvm.loop !14164

bb.m:                                             ; preds = %.preheader.i.i
  %i.ai = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.ai, label %bb.n, label %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEESM_SM_SM_T0_.exit

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i.i.i13.i = load ptr, ptr %.1.i.i, align 8, !tbaa !768
  %i.aj = load i64, ptr %.114.i.i, align 8, !tbaa !768
  store i64 %i.aj, ptr %.1.i.i, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i.i13.i, ptr %.114.i.i, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i, !llvm.loop !14165

_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEESM_SM_SM_T0_.exit: ; preds = %bb.m
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %..021 = select i1 %.not, ptr %.1.i.i, ptr %.0213255 ; 4 uses
  %.0. = select i1 %.not, ptr %.03354, ptr %.1.i.i ; 4 uses
  %i.ak = ptrtoint ptr %..021 to i64
  %i.al = ptrtoint ptr %.0. to i64                ; 2 uses
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = icmp sgt i64 %i.am, 24
  br i1 %i.an, label %.lr.ph, label %._crit_edge, !llvm.loop !14162

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEESM_SM_SM_T0_.exit, %bb.a
  %.021.lcssa = phi ptr [ %2, %bb.a ], [ %..021, %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEESM_SM_SM_T0_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.0., %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEESM_SM_SM_T0_.exit ] ; 8 uses
  %.lcssa27 = phi i64 [ %i.b, %bb.a ], [ %i.al, %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEESM_SM_SM_T0_.exit ]
  %i.ao = icmp eq ptr %.0.lcssa, %.021.lcssa
  br i1 %i.ao, label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_T0_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge
  %.018.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8 ; 2 uses
  %.not19.i = icmp eq ptr %.018.i, %.021.lcssa
  br i1 %.not19.i, label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.pre23.i = load float, ptr %.0.lcssa, align 4, !tbaa !1161
  br label %bb.o

bb.o:                                             ; preds = %bb.u, %.lr.ph.i
  %i.ap = phi float [ %.pre23.i, %.lr.ph.i ], [ %i.bl, %bb.u ]
  %.021.i = phi ptr [ %.018.i, %.lr.ph.i ], [ %.0.i, %bb.u ] ; 7 uses
  %.pn20.i = phi ptr [ %.0.lcssa, %.lr.ph.i ], [ %.021.i, %bb.u ] ; 5 uses
  %i.aq = load float, ptr %.021.i, align 4        ; 4 uses
  %i.ar = fcmp olt float %i.aq, %i.ap
  br i1 %i.ar, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %.sroa.01.0.copyload.i = load ptr, ptr %.021.i, align 8, !tbaa !768 ; 2 uses
  %i.as = ptrtoint ptr %.021.i to i64
  %i.at = sub i64 %i.as, %.lcssa27                ; 3 uses
  %i.au = ashr exact i64 %i.at, 3                 ; 2 uses
  %i.av = icmp sgt i64 %i.au, 1
  br i1 %i.av, label %bb.q, label %bb.r, !prof !1979

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 16
  %i.ax = sub nsw i64 0, %i.au
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ax
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %.0.lcssa, i64 %i.at, i1 false)
  br label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEES9_ET0_T_SB_SA_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.az = icmp eq i64 %i.at, 8
  br i1 %i.az, label %bb.s, label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEES9_ET0_T_SB_SA_.exit.i

bb.s:                                             ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  %i.bb = load i64, ptr %.0.lcssa, align 8, !tbaa !768
  store i64 %i.bb, ptr %i.ba, align 8, !tbaa !768
  br label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEES9_ET0_T_SB_SA_.exit.i

_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEES9_ET0_T_SB_SA_.exit.i: ; preds = %bb.s, %bb.r, %bb.q
  store ptr %.sroa.01.0.copyload.i, ptr %.0.lcssa, align 8, !tbaa !768
  %i.bc = ptrtoint ptr %.sroa.01.0.copyload.i to i64
  %i.bd = trunc i64 %i.bc to i32
  %i.be = bitcast i32 %i.bd to float
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %.sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 12
  %i.bf = load i32, ptr %.sroa_idx10.i.i, align 4
  %i.bg = load float, ptr %.pn20.i, align 4, !tbaa !1161
  %i.bh = fcmp ogt float %i.bg, %i.aq
  br i1 %i.bh, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.t, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %.0.i.i26, %.lr.ph.i.i ], [ %.pn20.i, %bb.t ] ; 4 uses
  %.0914.i.i = phi ptr [ %.015.i.i, %.lr.ph.i.i ], [ %.021.i, %bb.t ]
  %i.bi = load i64, ptr %.015.i.i, align 8, !tbaa !768
  store i64 %i.bi, ptr %.0914.i.i, align 8, !tbaa !768
  %.0.i.i26 = getelementptr inbounds i8, ptr %.015.i.i, i64 -8 ; 2 uses
  %i.bj = load float, ptr %.0.i.i26, align 8, !tbaa !1161
  %i.bk = fcmp ogt float %i.bj, %i.aq
  br i1 %i.bk, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_.exit.i, !llvm.loop !14166

_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.t
  %.09.lcssa.i.i = phi ptr [ %.021.i, %bb.t ], [ %.015.i.i, %.lr.ph.i.i ] ; 2 uses
  store float %i.aq, ptr %.09.lcssa.i.i, align 8, !tbaa !768
  %.09.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i, i64 4
  store i32 %i.bf, ptr %.09.sroa_idx.i.i, align 4, !tbaa !768
  %.pre.i = load float, ptr %.0.lcssa, align 4, !tbaa !1161
  br label %bb.u

bb.u:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_.exit.i, %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEES9_ET0_T_SB_SA_.exit.i
  %i.bl = phi float [ %i.be, %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEES9_ET0_T_SB_SA_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_.exit.i ]
  %.0.i = getelementptr inbounds nuw i8, ptr %.021.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %.021.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_T0_.exit, label %bb.o, !llvm.loop !14167

_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_T0_.exit: ; preds = %bb.u, %.preheader.i, %._crit_edge, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3984", align 1
  call void @_ZSt11__make_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr i64 %i.d, 3                         ; 4 uses
  %i.f = add nsw i64 %i.e, -1
  %i.g = lshr i64 %i.f, 1
  %i.h = icmp sgt i64 %i.e, 2
  %i.i = and i64 %i.d, 8
  %i.j = icmp eq i64 %i.i, 0                      ; 2 uses
  %i.k = add nsw i64 %i.e, -2                     ; 2 uses
  %i.l = ashr exact i64 %i.k, 1                   ; 2 uses
  br i1 %i.h, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %4 = add nsw i64 %i.e, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.d
  %.011.us = phi ptr [ %i.ar, %bb.d ], [ %1, %.lr.ph.split.us.preheader ] ; 4 uses
  %i.o = load float, ptr %.011.us, align 4, !tbaa !1161
  %i.p = load float, ptr %0, align 4, !tbaa !1161
  %i.q = fcmp olt float %i.o, %i.p
  br i1 %i.q, label %.lr.ph.i.i.preheader.us, label %bb.d

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  %.sroa.02.0.copyload.i.us = load ptr, ptr %.011.us, align 8, !tbaa !768 ; 2 uses
  %i.r = load i64, ptr %0, align 8, !tbaa !768
  store i64 %i.r, ptr %.011.us, align 8, !tbaa !768
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.029.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.s = shl i64 %.029.i.i.us, 1                  ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr [8 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load float, ptr %i.u, align 4, !tbaa !1161
  %i.y = load float, ptr %i.w, align 4, !tbaa !1161
  %i.z = fcmp olt float %i.x, %i.y
  %i.aa = or disjoint i64 %i.s, 1
  %spec.select.i.i.us = select i1 %i.z, i64 %i.aa, i64 %i.t ; 6 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.us
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.i.us
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !768
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !768
  %i.ae = icmp slt i64 %spec.select.i.i.us, %i.g
  br i1 %i.ae, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !676

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  %i.af = ptrtoint ptr %.sroa.02.0.copyload.i.us to i64 ; 2 uses
  br i1 %.not.i.us, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_RT0_.exit.us, label %.lr.ph.i.i.preheader.i.us

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !768
  store i64 %i.ag, ptr %i.n, align 8, !tbaa !768
  %i.ah = ptrtoint ptr %.sroa.02.0.copyload.i.us to i64
  br label %.lr.ph.i.i.preheader.i.us

.lr.ph.i.i.preheader.i.us:                        ; preds = %.thread.i.us, %bb.b
  %i.ai = phi i64 [ %i.ah, %.thread.i.us ], [ %i.af, %bb.b ] ; 3 uses
  %.1.i14.i.us = phi i64 [ %4, %.thread.i.us ], [ %spec.select.i.i.us, %bb.b ]
  %.in.i.us = trunc i64 %i.ai to i32
  %i.aj = bitcast i32 %.in.i.us to float
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %bb.c, %.lr.ph.i.i.preheader.i.us
  %.01317.i.i.i.us = phi i64 [ %.018.i.i910.i.us, %bb.c ], [ %.1.i14.i.us, %.lr.ph.i.i.preheader.i.us ] ; 3 uses
  %.018.in.i.i.i.us = add nsw i64 %.01317.i.i.i.us, -1
  %.018.i.i910.i.us = lshr i64 %.018.in.i.i.i.us, 1 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i910.i.us ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !1161
  %i.am = fcmp olt float %i.al, %i.aj
  br i1 %i.am, label %bb.c, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_RT0_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.an = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i.us
  %i.ao = load i64, ptr %i.ak, align 8, !tbaa !768
  store i64 %i.ao, ptr %i.an, align 8, !tbaa !768
  %.not11.i.us = icmp eq i64 %.018.i.i910.i.us, 0
  br i1 %.not11.i.us, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_RT0_.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !677

_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_RT0_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %bb.b
  %i.ap = phi i64 [ %i.af, %bb.b ], [ %i.ai, %bb.c ], [ %i.ai, %.lr.ph.i.i.i.us ]
  %.013.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ %.01317.i.i.i.us, %.lr.ph.i.i.i.us ], [ 0, %bb.c ]
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.us
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !768
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_RT0_.exit.us, %.lr.ph.split.us
  %i.ar = getelementptr inbounds nuw i8, ptr %.011.us, i64 8 ; 2 uses
  %i.as = icmp ult ptr %i.ar, %2
  br i1 %i.as, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !14168

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.at = icmp eq i64 %spec.select.i.i.us, %i.l
  %or.cond = select i1 %i.j, i1 %i.at, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %i.j, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load float, ptr %0, align 4, !tbaa !1161
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.av = icmp eq i64 %i.k, 0
  %.pre33 = load float, ptr %0, align 4, !tbaa !1161 ; 2 uses
  br i1 %i.av, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.e
  %i.aw = phi float [ %i.bh, %bb.e ], [ %.pre33, %.lr.ph.split.split.us ] ; 2 uses
  %.011.us12.us = phi ptr [ %i.bi, %bb.e ], [ %1, %.lr.ph.split.split.us ] ; 4 uses
  %i.ax = load float, ptr %.011.us12.us, align 4, !tbaa !1161
  %i.ay = fcmp olt float %i.ax, %i.aw
  br i1 %i.ay, label %._crit_edge.i.i.us13.us, label %bb.e

._crit_edge.i.i.us13.us:                          ; preds = %.lr.ph.split.split.us.split.us
  %.sroa.02.0.copyload.i.us14.us = load ptr, ptr %.011.us12.us, align 8, !tbaa !768
  %i.az = load i64, ptr %0, align 8, !tbaa !768
  store i64 %i.az, ptr %.011.us12.us, align 8, !tbaa !768
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !768 ; 2 uses
  store i64 %i.ba, ptr %0, align 8, !tbaa !768
  %i.bb = ptrtoint ptr %.sroa.02.0.copyload.i.us14.us to i64 ; 2 uses
  %.in.i.us16.us = trunc i64 %i.bb to i32
  %i.bc = bitcast i32 %.in.i.us16.us to float
  %i.bd = trunc i64 %i.ba to i32
  %i.be = bitcast i32 %i.bd to float
  %i.bf = fcmp uge float %i.be, %i.bc
  %spec.select = zext i1 %i.bf to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %spec.select
  store i64 %i.bb, ptr %i.bg, align 8, !tbaa !768
  %.pre32 = load float, ptr %0, align 8, !tbaa !1161
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.us13.us, %.lr.ph.split.split.us.split.us
  %i.bh = phi float [ %.pre32, %._crit_edge.i.i.us13.us ], [ %i.aw, %.lr.ph.split.split.us.split.us ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.011.us12.us, i64 8 ; 2 uses
  %i.bj = icmp ult ptr %i.bi, %2
  br i1 %i.bj, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !14168

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us, %bb.f
  %i.bk = phi float [ %i.br, %bb.f ], [ %.pre33, %.lr.ph.split.split.us ] ; 2 uses
  %.011.us12 = phi ptr [ %i.bs, %bb.f ], [ %1, %.lr.ph.split.split.us ] ; 4 uses
  %i.bl = load float, ptr %.011.us12, align 4, !tbaa !1161
  %i.bm = fcmp olt float %i.bl, %i.bk
  br i1 %i.bm, label %._crit_edge.i.i.us13, label %bb.f

._crit_edge.i.i.us13:                             ; preds = %.lr.ph.split.split.us.split
  %.sroa.02.0.copyload.i.us14 = load ptr, ptr %.011.us12, align 8, !tbaa !768
  %i.bn = load i64, ptr %0, align 8, !tbaa !768
  store i64 %i.bn, ptr %.011.us12, align 8, !tbaa !768
  %i.bo = ptrtoint ptr %.sroa.02.0.copyload.i.us14 to i64 ; 2 uses
  store i64 %i.bo, ptr %0, align 8, !tbaa !768
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = bitcast i32 %i.bp to float
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.us13, %.lr.ph.split.split.us.split
  %i.br = phi float [ %i.bq, %._crit_edge.i.i.us13 ], [ %i.bk, %.lr.ph.split.split.us.split ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.011.us12, i64 8 ; 2 uses
  %i.bt = icmp ult ptr %i.bs, %2
  br i1 %i.bt, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !14168

._crit_edge:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.g
  %i.bu = phi float [ %i.cb, %bb.g ], [ %.pre, %.lr.ph.split.split.preheader ] ; 2 uses
  %.011 = phi ptr [ %i.cc, %bb.g ], [ %1, %.lr.ph.split.split.preheader ] ; 4 uses
  %i.bv = load float, ptr %.011, align 4, !tbaa !1161
  %i.bw = fcmp olt float %i.bv, %i.bu
  br i1 %i.bw, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.split
  %.sroa.02.0.copyload.i = load ptr, ptr %.011, align 8, !tbaa !768
  %i.bx = load i64, ptr %0, align 8, !tbaa !768
  store i64 %i.bx, ptr %.011, align 8, !tbaa !768
  %i.by = ptrtoint ptr %.sroa.02.0.copyload.i to i64 ; 2 uses
  store i64 %i.by, ptr %0, align 8, !tbaa !768
  %i.bz = trunc i64 %i.by to i32
  %i.ca = bitcast i32 %i.bz to float
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i
  %i.cb = phi float [ %i.bu, %.lr.ph.split.split ], [ %i.ca, %._crit_edge.i.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.011, i64 8 ; 2 uses
  %i.cd = icmp ult ptr %i.cc, %2
  br i1 %i.cd, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !14168
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 4 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %3 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us
  %.015.us = phi i64 [ %i.aq, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us
  %.sroa.02.0.copyload.us = load ptr, ptr %i.o, align 8, !tbaa !768 ; 2 uses
  %i.p = icmp slt i64 %.015.us, %i.i
  br i1 %i.p, label %.lr.ph.i.us, label %._crit_edge.i.us.thread

._crit_edge.i.us.thread:                          ; preds = %.split.us
  %i.q = ptrtoint ptr %.sroa.02.0.copyload.us to i64
  br label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.015.us, %.split.us ] ; 2 uses
  %i.r = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [8 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load float, ptr %i.t, align 4, !tbaa !1161
  %i.x = load float, ptr %i.v, align 4, !tbaa !1161
  %i.y = fcmp olt float %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.us
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !768
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !768
  %i.ad = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ad, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !676

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ae = icmp sgt i64 %spec.select.i.us, %.015.us
  %i.af = ptrtoint ptr %.sroa.02.0.copyload.us to i64 ; 4 uses
  %i.ag = trunc i64 %i.af to i32
  %i.ah = bitcast i32 %i.ag to float
  br i1 %i.ae, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i.us ; 2 uses
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !1161
  %i.ak = fcmp olt float %i.aj, %i.ah
  br i1 %i.ak, label %bb.c, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i.us
  %i.am = load i64, ptr %i.ai, align 8, !tbaa !768
  store i64 %i.am, ptr %i.al, align 8, !tbaa !768
  %i.an = icmp sgt i64 %.018.i.i.us, %.015.us
  br i1 %i.an, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us, !llvm.loop !677

_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %._crit_edge.i.us.thread, %._crit_edge.i.us
  %i.ao = phi i64 [ %i.af, %._crit_edge.i.us ], [ %i.q, %._crit_edge.i.us.thread ], [ %i.af, %bb.c ], [ %i.af, %.lr.ph.i.i.us ]
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.015.us, %._crit_edge.i.us.thread ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !768
  %.not.us = icmp eq i64 %.015.us, 0
  %i.aq = add nsw i64 %.015.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !14169

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit
  %.015 = phi i64 [ %i.bt, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015
  %.sroa.02.0.copyload = load ptr, ptr %i.ar, align 8, !tbaa !768
  %i.as = icmp slt i64 %.015, %i.i
  br i1 %i.as, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.015, %.split ] ; 2 uses
  %i.at = shl i64 %.029.i, 1                      ; 3 uses
  %i.au = add i64 %i.at, 2                        ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %i.au
  %i.aw = getelementptr [8 x i8], ptr %0, i64 %i.at
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %i.ay = load float, ptr %i.av, align 4, !tbaa !1161
  %i.az = load float, ptr %i.ax, align 4, !tbaa !1161
  %i.ba = fcmp olt float %i.ay, %i.az
  %i.bb = or disjoint i64 %i.at, 1
  %spec.select.i = select i1 %i.ba, i64 %i.bb, i64 %i.au ; 4 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.bd = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !768
  store i64 %i.be, ptr %i.bd, align 8, !tbaa !768
  %i.bf = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bf, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !676

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.015, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bg = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bg, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bh = load i64, ptr %i.m, align 8, !tbaa !768
  store i64 %i.bh, ptr %i.n, align 8, !tbaa !768
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bi = icmp sgt i64 %.1.i, %.015
  %i.bj = ptrtoint ptr %.sroa.02.0.copyload to i64 ; 2 uses
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = bitcast i32 %i.bk to float
  br i1 %i.bi, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01317.i.i = phi i64 [ %.018.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i ; 2 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !1161
  %i.bo = fcmp olt float %i.bn, %i.bl
  br i1 %i.bo, label %bb.f, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i
  %i.bq = load i64, ptr %i.bm, align 8, !tbaa !768
  store i64 %i.bq, ptr %i.bp, align 8, !tbaa !768
  %i.br = icmp sgt i64 %.018.i.i, %.015
  br i1 %i.br, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit, !llvm.loop !677

_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i64 %i.bj, ptr %i.bs, align 8, !tbaa !768
  %.not = icmp eq i64 %.015, 0
  %i.bt = add nsw i64 %.015, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !14169

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIfNS2_12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_05tools16TolerancePruneOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELj0EEclERSB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 6 uses
  %2 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !814  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %.not2.i.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not2.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE12beginChildOnEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.b
  %.sroa.2.0.i = phi ptr [ %i.g, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.2.0.i, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !964
  %.not1.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not1.i.i.i, label %bb.b, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE12beginChildOnEv.exit

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.2.0.i) #32 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, %i.d
  br i1 %.not.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE12beginChildOnEv.exit, label %.lr.ph.i.i.i, !llvm.loop !309

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE12beginChildOnEv.exit: ; preds = %.lr.ph.i.i.i, %bb.b, %bb.a
  %.sroa.2.1.i = phi ptr [ %i.c, %bb.a ], [ %i.g, %bb.b ], [ %.sroa.2.0.i, %.lr.ph.i.i.i ] ; 2 uses
  %.not20 = icmp eq ptr %.sroa.2.1.i, %i.d
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE12beginChildOnEv.exit
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE12beginChildOnEv.exit
  %i.h = call noundef i64 @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE20eraseBackgroundTilesEv(ptr noundef nonnull align 8 dereferenceable(72) %1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit
  %.sroa.5.021 = phi ptr [ %.sroa.2.1.i, %.lr.ph ], [ %.sroa.5.3, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE9ChildIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredES7_EppEv.exit ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.021, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !966  ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 262144 ; 2 uses
  br label %bb.h

bb.d:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i.i40, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1112
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.e, label %_ZNK7openvdb5v13_05tools16TolerancePruneOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELj0EE10isConstantISA_EENSt9enable_ifIXntsr3std7is_sameIbNT_9ValueTypeEEE5valueEbE4typeERSG_RdRb.exit.thread, !llvm.loop !248

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i.i40, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !1112
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %_ZNK7openvdb5v13_05tools16TolerancePruneOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELj0EE10isConstantISA_EENSt9enable_ifIXntsr3std7is_sameIbNT_9ValueTypeEEE5valueEbE4typeERSG_RdRb.exit.thread, !llvm.loop !248

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i40, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !1112
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.g, label %_ZNK7openvdb5v13_05tools16TolerancePruneOpINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELj0EE10isConstantISA_EENSt9enable_ifIXntsr3std7is_sameIbNT_9ValueTypeEEE5valueEbE4typeERSG_RdRb.exit.thread, !llvm.loop !248
end_hunk_7
begin_hunk_8_@_ZSt13__introselectIPdlN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_SC_T1_:bb.a
  %.0213568 = phi ptr [ %..021, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.03667 = phi ptr [ %.0., %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 14 uses
  %i.j = phi i64 [ %i.ak, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %i.k = add nsw i64 %.0233469, -1                ; 2 uses
  %i.l = lshr i64 %i.j, 4
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.03667, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.03667, i64 8 ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %.0213568, i64 -8 ; 3 uses
  %i.p = load double, ptr %i.n, align 8, !tbaa !1192 ; 5 uses
  %i.q = load double, ptr %i.m, align 8, !tbaa !1192 ; 5 uses
  %i.r = fcmp olt double %i.p, %i.q
  %i.s = load double, ptr %i.o, align 8, !tbaa !1192 ; 6 uses
  br i1 %i.r, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph70
  %i.t = fcmp olt double %i.q, %i.s
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = load double, ptr %.03667, align 8, !tbaa !1192
  store double %i.q, ptr %.03667, align 8, !tbaa !1192
  store double %i.u, ptr %i.m, align 8, !tbaa !1192
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader

bb.d:                                             ; preds = %bb.b
  %i.v = fcmp olt double %i.p, %i.s
  %i.w = load double, ptr %.03667, align 8, !tbaa !1192 ; 2 uses
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store double %i.s, ptr %.03667, align 8, !tbaa !1192
  store double %i.w, ptr %i.o, align 8, !tbaa !1192
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  store double %i.p, ptr %.03667, align 8, !tbaa !1192
  store double %i.w, ptr %i.n, align 8, !tbaa !1192
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader

bb.g:                                             ; preds = %.lr.ph70
  %i.x = fcmp olt double %i.p, %i.s
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load double, ptr %.03667, align 8, !tbaa !1192
  store double %i.p, ptr %.03667, align 8, !tbaa !1192
  store double %i.y, ptr %i.n, align 8, !tbaa !1192
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.z = fcmp olt double %i.q, %i.s
  %i.aa = load double, ptr %.03667, align 8, !tbaa !1192 ; 2 uses
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store double %i.s, ptr %.03667, align 8, !tbaa !1192
  store double %i.aa, ptr %i.o, align 8, !tbaa !1192
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  store double %i.q, ptr %.03667, align 8, !tbaa !1192
  store double %i.aa, ptr %i.m, align 8, !tbaa !1192
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader

_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i

_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader, %bb.n
  %.013.i.i = phi ptr [ %.114.i.i, %bb.n ], [ %.0213568, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.ae, %bb.n ], [ %i.n, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i.preheader ]
  %i.ab = load double, ptr %.03667, align 8, !tbaa !1192 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i ], [ %i.ae, %bb.l ] ; 7 uses
  %i.ac = load double, ptr %.1.i.i, align 8, !tbaa !1192 ; 2 uses
  %i.ad = fcmp olt double %i.ac, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.ad, label %bb.l, label %.preheader.i.i, !llvm.loop !14188

.preheader.i.i:                                   ; preds = %bb.l, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.l ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 5 uses
  %i.af = load double, ptr %.114.i.i, align 8, !tbaa !1192 ; 2 uses
  %i.ag = fcmp olt double %i.ab, %i.af
  br i1 %i.ag, label %.preheader.i.i, label %bb.m, !llvm.loop !14189

bb.m:                                             ; preds = %.preheader.i.i
  %i.ah = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.ah, label %bb.n, label %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEES9_S9_S9_SC_.exit

bb.n:                                             ; preds = %bb.m
  store double %i.af, ptr %.1.i.i, align 8, !tbaa !1192
  store double %i.ac, ptr %.114.i.i, align 8, !tbaa !1192
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_S9_SC_.exit.i, !llvm.loop !14190

_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEES9_S9_S9_SC_.exit: ; preds = %bb.m
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %..021 = select i1 %.not, ptr %.1.i.i, ptr %.0213568 ; 4 uses
  %.0. = select i1 %.not, ptr %.03667, ptr %.1.i.i ; 4 uses
  %i.ai = ptrtoint ptr %..021 to i64
  %i.aj = ptrtoint ptr %.0. to i64                ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 24
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !14187

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEES9_S9_S9_SC_.exit, %bb.a
  %.021.lcssa = phi ptr [ %2, %bb.a ], [ %..021, %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEES9_S9_S9_SC_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.0., %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEES9_S9_S9_SC_.exit ] ; 7 uses
  %.lcssa30 = phi i64 [ %i.b, %bb.a ], [ %i.aj, %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEES9_S9_S9_SC_.exit ]
  %i.am = icmp eq ptr %.0.lcssa, %.021.lcssa
  br i1 %i.am, label %_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_SC_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge
  %.017.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8 ; 2 uses
  %.not18.i = icmp eq ptr %.017.i, %.021.lcssa
  br i1 %.not18.i, label %_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_SC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.pre22.i = load double, ptr %.0.lcssa, align 8, !tbaa !1192
  br label %bb.o

bb.o:                                             ; preds = %bb.u, %.lr.ph.i
  %i.an = phi double [ %.pre22.i, %.lr.ph.i ], [ %i.be, %bb.u ] ; 2 uses
  %.020.i = phi ptr [ %.017.i, %.lr.ph.i ], [ %.0.i, %bb.u ] ; 6 uses
  %.pn19.i = phi ptr [ %.0.lcssa, %.lr.ph.i ], [ %.020.i, %bb.u ] ; 4 uses
  %i.ao = load double, ptr %.020.i, align 8, !tbaa !1192 ; 6 uses
  %i.ap = fcmp olt double %i.ao, %i.an
  br i1 %i.ap, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.aq = ptrtoint ptr %.020.i to i64
  %i.ar = sub i64 %i.aq, %.lcssa30                ; 3 uses
  %i.as = ashr exact i64 %i.ar, 3                 ; 2 uses
  %i.at = icmp sgt i64 %i.as, 1
  br i1 %i.at, label %bb.q, label %bb.r, !prof !1979

bb.q:                                             ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 16
  %i.av = sub nsw i64 0, %i.as
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %.0.lcssa, i64 %i.ar, i1 false)
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.ax = icmp eq i64 %i.ar, 8
  br i1 %i.ax, label %bb.s, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i

bb.s:                                             ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 8
  store double %i.an, ptr %i.ay, align 8, !tbaa !1192
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i

_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i:     ; preds = %bb.s, %bb.r, %bb.q
  store double %i.ao, ptr %.0.lcssa, align 8, !tbaa !1192
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.az = load double, ptr %.pn19.i, align 8, !tbaa !1192 ; 2 uses
  %i.ba = fcmp olt double %i.ao, %i.az
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.t, %.lr.ph.i.i
  %i.bb = phi double [ %i.bc, %.lr.ph.i.i ], [ %i.az, %bb.t ]
  %.013.i.i26 = phi ptr [ %.0.i.i27, %.lr.ph.i.i ], [ %.pn19.i, %bb.t ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i26, %.lr.ph.i.i ], [ %.020.i, %bb.t ]
  store double %i.bb, ptr %.0912.i.i, align 8, !tbaa !1192
  %.0.i.i27 = getelementptr inbounds i8, ptr %.013.i.i26, i64 -8 ; 2 uses
  %i.bc = load double, ptr %.0.i.i27, align 8, !tbaa !1192 ; 2 uses
  %i.bd = fcmp olt double %i.ao, %i.bc
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_.exit.i, !llvm.loop !14191

_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_.exit.i: ; preds = %.lr.ph.i.i, %bb.t
  %.09.lcssa.i.i = phi ptr [ %.020.i, %bb.t ], [ %.013.i.i26, %.lr.ph.i.i ]
  store double %i.ao, ptr %.09.lcssa.i.i, align 8, !tbaa !1192
  %.pre.i = load double, ptr %.0.lcssa, align 8, !tbaa !1192
  br label %bb.u

bb.u:                                             ; preds = %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_.exit.i, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i
  %i.be = phi double [ %i.ao, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_.exit.i ]
  %.0.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %.021.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_SC_.exit, label %bb.o, !llvm.loop !14192

_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_SC_.exit: ; preds = %bb.u, %.preheader.i, %._crit_edge, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIPdN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_SC_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3992", align 1
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_RSC_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr i64 %i.d, 3                         ; 4 uses
  %i.f = add nsw i64 %i.e, -1
  %i.g = lshr i64 %i.f, 1
  %i.h = icmp sgt i64 %i.e, 2
  %i.i = and i64 %i.d, 8
  %i.j = icmp eq i64 %i.i, 0                      ; 2 uses
  %i.k = add nsw i64 %i.e, -2                     ; 2 uses
  %i.l = ashr exact i64 %i.k, 1                   ; 2 uses
  br i1 %i.h, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %4 = add nsw i64 %i.e, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.d
  %.011.us = phi ptr [ %i.ak, %bb.d ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.o = load double, ptr %.011.us, align 8, !tbaa !1192 ; 3 uses
  %i.p = load double, ptr %0, align 8, !tbaa !1192 ; 2 uses
  %i.q = fcmp olt double %i.o, %i.p
  br i1 %i.q, label %.lr.ph.i.i.preheader.us, label %bb.d

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  store double %i.p, ptr %.011.us, align 8, !tbaa !1192
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.029.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.r = shl i64 %.029.i.i.us, 1                  ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [8 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load double, ptr %i.t, align 8, !tbaa !1192
  %i.x = load double, ptr %i.v, align 8, !tbaa !1192
  %i.y = fcmp olt double %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.us
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !1192
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.i.us
  store double %i.ab, ptr %i.ac, align 8, !tbaa !1192
  %i.ad = icmp slt i64 %spec.select.i.i.us, %i.g
  br i1 %i.ad, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !679

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  br i1 %.not.i.us, label %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_RSC_.exit.us, label %.lr.ph.i.i.i.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.ae = load double, ptr %i.m, align 8, !tbaa !1192
  store double %i.ae, ptr %i.n, align 8, !tbaa !1192
  br label %.lr.ph.i.i.i.us.preheader

.lr.ph.i.i.i.us.preheader:                        ; preds = %.thread.i.us, %bb.b
  %.01317.i.i.i.us.ph = phi i64 [ %spec.select.i.i.us, %bb.b ], [ %4, %.thread.i.us ]
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %bb.c
  %.01317.i.i.i.us = phi i64 [ %.018.i.i89.i.us, %bb.c ], [ %.01317.i.i.i.us.ph, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %.018.in.i.i.i.us = add nsw i64 %.01317.i.i.i.us, -1
  %.018.i.i89.i.us = lshr i64 %.018.in.i.i.i.us, 1 ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i89.i.us
  %i.ag = load double, ptr %i.af, align 8, !tbaa !1192 ; 2 uses
  %i.ah = fcmp olt double %i.ag, %i.o
  br i1 %i.ah, label %bb.c, label %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_RSC_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i.us
  store double %i.ag, ptr %i.ai, align 8, !tbaa !1192
  %.not10.i.us = icmp eq i64 %.018.i.i89.i.us, 0
  br i1 %.not10.i.us, label %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_RSC_.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !680

_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_RSC_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %bb.b
  %.013.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ %.01317.i.i.i.us, %.lr.ph.i.i.i.us ], [ 0, %bb.c ]
  %i.aj = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.us
  store double %i.o, ptr %i.aj, align 8, !tbaa !1192
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_S9_RSC_.exit.us, %.lr.ph.split.us
  %i.ak = getelementptr inbounds nuw i8, ptr %.011.us, i64 8 ; 2 uses
  %i.al = icmp ult ptr %i.ak, %2
  br i1 %i.al, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !14193

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.am = icmp eq i64 %spec.select.i.i.us, %i.l
  %or.cond = select i1 %i.j, i1 %i.am, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %i.j, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load double, ptr %0, align 8, !tbaa !1192
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.ao = icmp eq i64 %i.k, 0
  %.pre31 = load double, ptr %0, align 8, !tbaa !1192 ; 2 uses
  br i1 %i.ao, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.e
  %i.ap = phi double [ %i.av, %bb.e ], [ %.pre31, %.lr.ph.split.split.us ] ; 3 uses
  %.011.us12.us = phi ptr [ %i.aw, %bb.e ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.aq = load double, ptr %.011.us12.us, align 8, !tbaa !1192 ; 3 uses
  %i.ar = fcmp olt double %i.aq, %i.ap
  br i1 %i.ar, label %._crit_edge.i.i.us13.us, label %bb.e

._crit_edge.i.i.us13.us:                          ; preds = %.lr.ph.split.split.us.split.us
  store double %i.ap, ptr %.011.us12.us, align 8, !tbaa !1192
  %i.as = load double, ptr %i.an, align 8, !tbaa !1192 ; 2 uses
  store double %i.as, ptr %0, align 8, !tbaa !1192
  %i.at = fcmp uge double %i.as, %i.aq
  %spec.select = zext i1 %i.at to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %spec.select
  store double %i.aq, ptr %i.au, align 8, !tbaa !1192
  %.pre30 = load double, ptr %0, align 8, !tbaa !1192
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.us13.us, %.lr.ph.split.split.us.split.us
  %i.av = phi double [ %.pre30, %._crit_edge.i.i.us13.us ], [ %i.ap, %.lr.ph.split.split.us.split.us ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.011.us12.us, i64 8 ; 2 uses
  %i.ax = icmp ult ptr %i.aw, %2
  br i1 %i.ax, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !14193

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us, %bb.f
  %i.ay = phi double [ %i.bb, %bb.f ], [ %.pre31, %.lr.ph.split.split.us ] ; 3 uses
  %.011.us12 = phi ptr [ %i.bc, %bb.f ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.az = load double, ptr %.011.us12, align 8, !tbaa !1192 ; 3 uses
  %i.ba = fcmp olt double %i.az, %i.ay
  br i1 %i.ba, label %._crit_edge.i.i.us13, label %bb.f

._crit_edge.i.i.us13:                             ; preds = %.lr.ph.split.split.us.split
  store double %i.ay, ptr %.011.us12, align 8, !tbaa !1192
  store double %i.az, ptr %0, align 8, !tbaa !1192
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.us13, %.lr.ph.split.split.us.split
  %i.bb = phi double [ %i.az, %._crit_edge.i.i.us13 ], [ %i.ay, %.lr.ph.split.split.us.split ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.011.us12, i64 8 ; 2 uses
  %i.bd = icmp ult ptr %i.bc, %2
  br i1 %i.bd, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !14193

._crit_edge:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.g
  %i.be = phi double [ %i.bh, %bb.g ], [ %.pre, %.lr.ph.split.split.preheader ] ; 3 uses
  %.011 = phi ptr [ %i.bi, %bb.g ], [ %1, %.lr.ph.split.split.preheader ] ; 3 uses
  %i.bf = load double, ptr %.011, align 8, !tbaa !1192 ; 3 uses
  %i.bg = fcmp olt double %i.bf, %i.be
  br i1 %i.bg, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.split
  store double %i.be, ptr %.011, align 8, !tbaa !1192
  store double %i.bf, ptr %0, align 8, !tbaa !1192
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i
  %i.bh = phi double [ %i.be, %.lr.ph.split.split ], [ %i.bf, %._crit_edge.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.011, i64 8 ; 2 uses
  %i.bj = icmp ult ptr %i.bi, %2
  br i1 %i.bj, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !14193
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_S9_RSC_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 4 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %3 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit.us
  %.014.us = phi i64 [ %i.al, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014.us
  %i.p = load double, ptr %i.o, align 8, !tbaa !1192 ; 2 uses
  %i.q = icmp slt i64 %.014.us, %i.i
  br i1 %i.q, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.014.us, %.split.us ] ; 2 uses
  %i.r = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [8 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load double, ptr %i.t, align 8, !tbaa !1192
  %i.x = load double, ptr %i.v, align 8, !tbaa !1192
  %i.y = fcmp olt double %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !1192
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.us
  store double %i.ab, ptr %i.ac, align 8, !tbaa !1192
  %i.ad = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ad, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !679

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ae = icmp sgt i64 %spec.select.i.us, %.014.us
  br i1 %i.ae, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i.us
  %i.ag = load double, ptr %i.af, align 8, !tbaa !1192 ; 2 uses
  %i.ah = fcmp olt double %i.ag, %i.p
  br i1 %i.ah, label %bb.c, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i.us
  store double %i.ag, ptr %i.ai, align 8, !tbaa !1192
  %i.aj = icmp sgt i64 %.018.i.i.us, %.014.us
  br i1 %i.aj, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit.us, !llvm.loop !680

_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.014.us, %.split.us ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store double %i.p, ptr %i.ak, align 8, !tbaa !1192
  %.not.us = icmp eq i64 %.014.us, 0
  %i.al = add nsw i64 %.014.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !14194

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit
  %.014 = phi i64 [ %i.bl, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014
  %i.an = load double, ptr %i.am, align 8, !tbaa !1192 ; 2 uses
  %i.ao = icmp slt i64 %.014, %i.i
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.014, %.split ] ; 2 uses
  %i.ap = shl i64 %.029.i, 1                      ; 3 uses
  %i.aq = add i64 %i.ap, 2                        ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aq
  %i.as = getelementptr [8 x i8], ptr %0, i64 %i.ap
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %i.au = load double, ptr %i.ar, align 8, !tbaa !1192
  %i.av = load double, ptr %i.at, align 8, !tbaa !1192
  %i.aw = fcmp olt double %i.au, %i.av
  %i.ax = or disjoint i64 %i.ap, 1
  %spec.select.i = select i1 %i.aw, i64 %i.ax, i64 %i.aq ; 4 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.az = load double, ptr %i.ay, align 8, !tbaa !1192
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i
  store double %i.az, ptr %i.ba, align 8, !tbaa !1192
  %i.bb = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bb, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !679

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.014, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bc = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bd = load double, ptr %i.m, align 8, !tbaa !1192
  store double %i.bd, ptr %i.n, align 8, !tbaa !1192
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.128.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.be = icmp sgt i64 %.128.i, %.014
  br i1 %i.be, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01317.i.i = phi i64 [ %.018.i.i, %bb.f ], [ %.128.i, %bb.e ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !1192 ; 2 uses
  %i.bh = fcmp olt double %i.bg, %i.an
  br i1 %i.bh, label %bb.f, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i
  store double %i.bg, ptr %i.bi, align 8, !tbaa !1192
  %i.bj = icmp sgt i64 %.018.i.i, %.014
  br i1 %i.bj, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit, !llvm.loop !680

_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i
  store double %i.an, ptr %i.bk, align 8, !tbaa !1192
  %.not = icmp eq i64 %.014, 0
  %i.bl = add nsw i64 %.014, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !14194

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit.us, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeIdLj3EE9medianAllES0_EUlRKT_RKT0_E_EEEvS9_SC_SC_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEE9NodeRangeENSC_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeISB_EEEELj0EEENSC_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSD_RKSN_RSP_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !1997
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !1998
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !768
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1611
  %i.g = load i64, ptr %0, align 8, !tbaa !1610
  %.not.i = icmp ult i64 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEE9NodeRangeENSC_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeISB_EEEELj0EEENSC_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSD_RKSN_RSP_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr null, ptr %3, align 8, !tbaa !2001
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 192)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEE9NodeRangeENSC_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeISB_EEEELj0EEENSC_14OpWithoutIndexEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !743
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !3913
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.l = load i64, ptr %1, align 8, !tbaa !1192
  store i64 %i.l, ptr %i.k, align 32, !tbaa !1192
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !5402
  %i.n = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  store i32 0, ptr %i.q, align 8, !tbaa !2014
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 124
  store i8 5, ptr %i.r, align 4, !tbaa !2015
  %i.s = shl nsw i64 %i.p, 1
  %i.t = and i64 %i.s, 9223372036854775806
  store i64 %i.t, ptr %i.o, align 16, !tbaa !2016
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.v = load i64, ptr %3, align 8, !tbaa !2017
  store i64 %i.v, ptr %i.u, align 64, !tbaa !2017
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr null, ptr %4, align 8, !tbaa !2021
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.w, align 8, !tbaa !2022
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.x, align 8, !tbaa !2025
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.y, align 8, !tbaa !827
  store ptr %4, ptr %i.m, align 8, !tbaa !5402
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEE9NodeRangeENSC_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeISB_EEEELj0EEENSC_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSD_RKSN_RSP_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forIN7openvdb5v13_04tree8NodeListINS5_12InternalNodeINS7_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEE9NodeRangeENSC_19NodeTransformerCopyINS4_5tools16TolerancePruneOpINS5_4TreeINS5_8RootNodeISB_EEEELj0EEENSC_14OpWithoutIndexEEEKNS1_16auto_partitionerEE3runERKSD_RKSN_RSP_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.aa = load atomic i8, ptr %i.z monotonic, align 1
end_hunk_8
begin_hunk_9_@_ZSt13__introselectIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEElN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_T0_T1_:bb.a
  %i.o = load double, ptr %i.m, align 8           ; 5 uses
  %i.p = load double, ptr %i.l, align 8           ; 5 uses
  %i.q = fcmp olt double %i.o, %i.p
  %i.r = load double, ptr %i.n, align 8           ; 6 uses
  br i1 %i.q, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph68
  %i.s = fcmp olt double %i.p, %i.r
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.03565, align 8, !tbaa !768
  store double %i.p, ptr %.03565, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.l, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.d:                                             ; preds = %bb.b
  %i.t = fcmp olt double %i.o, %i.r
  %.sroa.0.0.copyload.i.i22.i.i = load ptr, ptr %.03565, align 8, !tbaa !768 ; 2 uses
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store double %i.r, ptr %.03565, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i22.i.i, ptr %i.n, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  store double %i.o, ptr %.03565, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i22.i.i, ptr %i.m, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.g:                                             ; preds = %.lr.ph68
  %i.u = fcmp olt double %i.o, %i.r
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i24.i.i = load ptr, ptr %.03565, align 8, !tbaa !768
  store double %i.o, ptr %.03565, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i24.i.i, ptr %i.m, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.v = fcmp olt double %i.p, %i.r
  %.sroa.0.0.copyload.i.i25.i.i = load ptr, ptr %.03565, align 8, !tbaa !768 ; 2 uses
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store double %i.r, ptr %.03565, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i25.i.i, ptr %i.n, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  store double %i.p, ptr %.03565, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i25.i.i, ptr %i.l, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i

_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader, %bb.n
  %.013.i.i = phi ptr [ %.114.i.i, %bb.n ], [ %.0213466, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.z, %bb.n ], [ %i.m, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader ]
  %i.w = load double, ptr %.03565, align 8, !tbaa !1192 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i ], [ %i.z, %bb.l ] ; 7 uses
  %i.x = load double, ptr %.1.i.i, align 8        ; 2 uses
  %i.y = fcmp olt double %i.x, %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.y, label %bb.l, label %.preheader.i.i, !llvm.loop !14206

.preheader.i.i:                                   ; preds = %bb.l, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.l ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 5 uses
  %i.aa = load double, ptr %.114.i.i, align 8     ; 2 uses
  %i.ab = fcmp olt double %i.w, %i.aa
  br i1 %i.ab, label %.preheader.i.i, label %bb.m, !llvm.loop !14207

bb.m:                                             ; preds = %.preheader.i.i
  %i.ac = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.ac, label %bb.n, label %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEESM_SM_SM_T0_.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = bitcast double %i.x to i64
  %i.ae = inttoptr i64 %i.ad to ptr
  store double %i.aa, ptr %.1.i.i, align 8, !tbaa !768
  store ptr %i.ae, ptr %.114.i.i, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i, !llvm.loop !14208

_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEESM_SM_SM_T0_.exit: ; preds = %bb.m
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %..021 = select i1 %.not, ptr %.1.i.i, ptr %.0213466 ; 4 uses
  %.0. = select i1 %.not, ptr %.03565, ptr %.1.i.i ; 4 uses
  %i.af = ptrtoint ptr %..021 to i64
  %i.ag = ptrtoint ptr %.0. to i64                ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, 24
  br i1 %i.ai, label %.lr.ph, label %._crit_edge, !llvm.loop !14205

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEESM_SM_SM_T0_.exit, %bb.a
  %.021.lcssa = phi ptr [ %2, %bb.a ], [ %..021, %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEESM_SM_SM_T0_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.0., %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEESM_SM_SM_T0_.exit ] ; 7 uses
  %.lcssa29 = phi i64 [ %i.b, %bb.a ], [ %i.ag, %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEESM_SM_SM_T0_.exit ]
  %i.aj = icmp eq ptr %.0.lcssa, %.021.lcssa
  br i1 %i.aj, label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_T0_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge
  %.018.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8 ; 2 uses
  %.not19.i = icmp eq ptr %.018.i, %.021.lcssa
  br i1 %.not19.i, label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.pre23.i = load double, ptr %.0.lcssa, align 8 ; 2 uses
  %i.ak = bitcast double %.pre23.i to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.u, %.lr.ph.i
  %i.al = phi i64 [ %i.ak, %.lr.ph.i ], [ %i.bf, %bb.u ]
  %i.am = phi double [ %.pre23.i, %.lr.ph.i ], [ %i.bg, %bb.u ]
  %.021.i = phi ptr [ %.018.i, %.lr.ph.i ], [ %.0.i, %bb.u ] ; 6 uses
  %.pn20.i = phi ptr [ %.0.lcssa, %.lr.ph.i ], [ %.021.i, %bb.u ] ; 4 uses
  %i.an = load double, ptr %.021.i, align 8       ; 6 uses
  %i.ao = fcmp olt double %i.an, %i.am
  %i.ap = bitcast double %i.an to i64             ; 2 uses
  %i.aq = inttoptr i64 %i.ap to ptr
  br i1 %i.ao, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.ar = ptrtoint ptr %.021.i to i64
  %i.as = sub i64 %i.ar, %.lcssa29                ; 3 uses
  %i.at = ashr exact i64 %i.as, 3                 ; 2 uses
  %i.au = icmp sgt i64 %i.at, 1
  br i1 %i.au, label %bb.q, label %bb.r, !prof !1979

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 16
  %i.aw = sub nsw i64 0, %i.at
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.aw
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %.0.lcssa, i64 %i.as, i1 false)
  br label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEES7_ET0_T_S9_S8_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.ay = icmp eq i64 %i.as, 8
  br i1 %i.ay, label %bb.s, label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEES7_ET0_T_S9_S8_.exit.i

bb.s:                                             ; preds = %bb.r
  %i.az = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  store i64 %i.al, ptr %i.az, align 8, !tbaa !768
  br label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEES7_ET0_T_S9_S8_.exit.i

_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEES7_ET0_T_S9_S8_.exit.i: ; preds = %bb.s, %bb.r, %bb.q
  store ptr %i.aq, ptr %.0.lcssa, align 8, !tbaa !768
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.ba = load double, ptr %.pn20.i, align 8      ; 2 uses
  %i.bb = fcmp ogt double %i.ba, %i.an
  br i1 %i.bb, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.t, %.lr.ph.i.i
  %.in.i.i = phi double [ %i.bc, %.lr.ph.i.i ], [ %i.ba, %bb.t ]
  %.012.i.i = phi ptr [ %.0.i.i26, %.lr.ph.i.i ], [ %.pn20.i, %bb.t ] ; 3 uses
  %.0911.i.i = phi ptr [ %.012.i.i, %.lr.ph.i.i ], [ %.021.i, %bb.t ]
  store double %.in.i.i, ptr %.0911.i.i, align 8, !tbaa !768
  %.0.i.i26 = getelementptr inbounds i8, ptr %.012.i.i, i64 -8 ; 2 uses
  %i.bc = load double, ptr %.0.i.i26, align 8     ; 2 uses
  %i.bd = fcmp ogt double %i.bc, %i.an
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_.exit.i, !llvm.loop !14209

_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.t
  %.09.lcssa.i.i = phi ptr [ %.021.i, %bb.t ], [ %.012.i.i, %.lr.ph.i.i ]
  store double %i.an, ptr %.09.lcssa.i.i, align 8, !tbaa !768
  %.pre.i = load double, ptr %.0.lcssa, align 8   ; 2 uses
  %i.be = bitcast double %.pre.i to i64
  br label %bb.u

bb.u:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_.exit.i, %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEES7_ET0_T_S9_S8_.exit.i
  %i.bf = phi i64 [ %i.ap, %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEES7_ET0_T_S9_S8_.exit.i ], [ %i.be, %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_.exit.i ]
  %i.bg = phi double [ %i.an, %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEES7_ET0_T_S9_S8_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_.exit.i ]
  %.0.i = getelementptr inbounds nuw i8, ptr %.021.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %.021.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_T0_.exit, label %bb.o, !llvm.loop !14210

_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_T0_.exit: ; preds = %bb.u, %.preheader.i, %._crit_edge, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.4000", align 1
  call void @_ZSt11__make_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr i64 %i.d, 3                         ; 4 uses
  %i.f = add nsw i64 %i.e, -1
  %i.g = lshr i64 %i.f, 1
  %i.h = icmp sgt i64 %i.e, 2
  %i.i = and i64 %i.d, 8
  %i.j = icmp eq i64 %i.i, 0                      ; 2 uses
  %i.k = add nsw i64 %i.e, -2                     ; 2 uses
  %i.l = ashr exact i64 %i.k, 1                   ; 2 uses
  br i1 %i.h, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %4 = add nsw i64 %i.e, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.d
  %.011.us = phi ptr [ %i.ak, %bb.d ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.o = load double, ptr %.011.us, align 8       ; 3 uses
  %i.p = load double, ptr %0, align 8             ; 2 uses
  %i.q = fcmp olt double %i.o, %i.p
  br i1 %i.q, label %.lr.ph.i.i.preheader.us, label %bb.d

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  store double %i.p, ptr %.011.us, align 8, !tbaa !768
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.029.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.r = shl i64 %.029.i.i.us, 1                  ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [8 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load double, ptr %i.t, align 8, !tbaa !1192
  %i.x = load double, ptr %i.v, align 8, !tbaa !1192
  %i.y = fcmp olt double %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.us
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.i.us
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !768
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !768
  %i.ad = icmp slt i64 %spec.select.i.i.us, %i.g
  br i1 %i.ad, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !682

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  br i1 %.not.i.us, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_RT0_.exit.us, label %.lr.ph.i.i.i.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.ae = load i64, ptr %i.m, align 8, !tbaa !768
  store i64 %i.ae, ptr %i.n, align 8, !tbaa !768
  br label %.lr.ph.i.i.i.us.preheader

.lr.ph.i.i.i.us.preheader:                        ; preds = %.thread.i.us, %bb.b
  %.01316.i.i.i.us.ph = phi i64 [ %spec.select.i.i.us, %bb.b ], [ %4, %.thread.i.us ]
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %bb.c
  %.01316.i.i.i.us = phi i64 [ %.017.i.i1112.i.us, %bb.c ], [ %.01316.i.i.i.us.ph, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %.017.in.i.i.i.us = add nsw i64 %.01316.i.i.i.us, -1
  %.017.i.i1112.i.us = lshr i64 %.017.in.i.i.i.us, 1 ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.017.i.i1112.i.us
  %i.ag = load double, ptr %i.af, align 8         ; 2 uses
  %i.ah = fcmp olt double %i.ag, %i.o
  br i1 %i.ah, label %bb.c, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_RT0_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %.01316.i.i.i.us
  store double %i.ag, ptr %i.ai, align 8, !tbaa !768
  %.not13.i.us = icmp eq i64 %.017.i.i1112.i.us, 0
  br i1 %.not13.i.us, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_RT0_.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !683

_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_RT0_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %bb.b
  %.013.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %.01316.i.i.i.us, %.lr.ph.i.i.i.us ]
  %i.aj = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.us
  store double %i.o, ptr %i.aj, align 8, !tbaa !768
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_SM_RT0_.exit.us, %.lr.ph.split.us
  %i.ak = getelementptr inbounds nuw i8, ptr %.011.us, i64 8 ; 2 uses
  %i.al = icmp ult ptr %i.ak, %2
  br i1 %i.al, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !14211

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.am = icmp eq i64 %spec.select.i.i.us, %i.l
  %or.cond = select i1 %i.j, i1 %i.am, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %i.j, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load double, ptr %0, align 8            ; 2 uses
  %i.ao = bitcast double %.pre to i64
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.ap = icmp eq i64 %i.k, 0
  %.pre31 = load double, ptr %0, align 8          ; 3 uses
  %i.aq = bitcast double %.pre31 to i64           ; 2 uses
  br i1 %i.ap, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.e
  %i.ar = phi i64 [ %i.ba, %bb.e ], [ %i.aq, %.lr.ph.split.split.us ] ; 2 uses
  %i.as = phi double [ %i.bb, %bb.e ], [ %.pre31, %.lr.ph.split.split.us ] ; 2 uses
  %.011.us12.us = phi ptr [ %i.bc, %bb.e ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.at = load double, ptr %.011.us12.us, align 8 ; 3 uses
  %i.au = fcmp olt double %i.at, %i.as
  br i1 %i.au, label %._crit_edge.i.i.us13.us, label %bb.e

._crit_edge.i.i.us13.us:                          ; preds = %.lr.ph.split.split.us.split.us
  store i64 %i.ar, ptr %.011.us12.us, align 8, !tbaa !768
  %i.av = load i64, ptr %i.an, align 8, !tbaa !768 ; 2 uses
  store i64 %i.av, ptr %0, align 8, !tbaa !768
  %i.aw = bitcast i64 %i.av to double
  %i.ax = fcmp ule double %i.at, %i.aw
  %spec.select = zext i1 %i.ax to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %spec.select
  store double %i.at, ptr %i.ay, align 8, !tbaa !768
  %.pre30 = load double, ptr %0, align 8          ; 2 uses
  %i.az = bitcast double %.pre30 to i64
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.us13.us, %.lr.ph.split.split.us.split.us
  %i.ba = phi i64 [ %i.az, %._crit_edge.i.i.us13.us ], [ %i.ar, %.lr.ph.split.split.us.split.us ]
  %i.bb = phi double [ %.pre30, %._crit_edge.i.i.us13.us ], [ %i.as, %.lr.ph.split.split.us.split.us ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.011.us12.us, i64 8 ; 2 uses
  %i.bd = icmp ult ptr %i.bc, %2
  br i1 %i.bd, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !14211

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us, %bb.f
  %i.be = phi i64 [ %i.bj, %bb.f ], [ %i.aq, %.lr.ph.split.split.us ] ; 2 uses
  %i.bf = phi double [ %i.bk, %bb.f ], [ %.pre31, %.lr.ph.split.split.us ] ; 2 uses
  %.011.us12 = phi ptr [ %i.bl, %bb.f ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.bg = load double, ptr %.011.us12, align 8    ; 4 uses
  %i.bh = fcmp olt double %i.bg, %i.bf
  br i1 %i.bh, label %._crit_edge.i.i.us13, label %bb.f

._crit_edge.i.i.us13:                             ; preds = %.lr.ph.split.split.us.split
  %i.bi = bitcast double %i.bg to i64
  store i64 %i.be, ptr %.011.us12, align 8, !tbaa !768
  store double %i.bg, ptr %0, align 8, !tbaa !768
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.us13, %.lr.ph.split.split.us.split
  %i.bj = phi i64 [ %i.bi, %._crit_edge.i.i.us13 ], [ %i.be, %.lr.ph.split.split.us.split ]
  %i.bk = phi double [ %i.bg, %._crit_edge.i.i.us13 ], [ %i.bf, %.lr.ph.split.split.us.split ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.011.us12, i64 8 ; 2 uses
  %i.bm = icmp ult ptr %i.bl, %2
  br i1 %i.bm, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !14211

._crit_edge:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.g
  %i.bn = phi i64 [ %i.bs, %bb.g ], [ %i.ao, %.lr.ph.split.split.preheader ] ; 2 uses
  %i.bo = phi double [ %i.bt, %bb.g ], [ %.pre, %.lr.ph.split.split.preheader ] ; 2 uses
  %.011 = phi ptr [ %i.bu, %bb.g ], [ %1, %.lr.ph.split.split.preheader ] ; 3 uses
  %i.bp = load double, ptr %.011, align 8         ; 4 uses
  %i.bq = fcmp olt double %i.bp, %i.bo
  br i1 %i.bq, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.split
  %i.br = bitcast double %i.bp to i64
  store i64 %i.bn, ptr %.011, align 8, !tbaa !768
  store double %i.bp, ptr %0, align 8, !tbaa !768
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i
  %i.bs = phi i64 [ %i.bn, %.lr.ph.split.split ], [ %i.br, %._crit_edge.i.i ]
  %i.bt = phi double [ %i.bo, %.lr.ph.split.split ], [ %i.bp, %._crit_edge.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.011, i64 8 ; 2 uses
  %i.bv = icmp ult ptr %i.bu, %2
  br i1 %i.bv, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !14211
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_SM_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 4 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %3 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us
  %.015.us = phi i64 [ %i.ao, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us
  %.sroa.02.0.copyload.us = load ptr, ptr %i.o, align 8, !tbaa !768 ; 2 uses
  %i.p = icmp slt i64 %.015.us, %i.i
  br i1 %i.p, label %.lr.ph.i.us, label %._crit_edge.i.us.thread

._crit_edge.i.us.thread:                          ; preds = %.split.us
  %i.q = ptrtoint ptr %.sroa.02.0.copyload.us to i64
  br label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.015.us, %.split.us ] ; 2 uses
  %i.r = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [8 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load double, ptr %i.t, align 8, !tbaa !1192
  %i.x = load double, ptr %i.v, align 8, !tbaa !1192
  %i.y = fcmp olt double %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.us
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !768
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !768
  %i.ad = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ad, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !682

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ae = ptrtoint ptr %.sroa.02.0.copyload.us to i64 ; 4 uses
  %i.af = icmp sgt i64 %spec.select.i.us, %.015.us
  br i1 %i.af, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %i.ag = bitcast i64 %i.ae to double
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.us
  %.01316.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.017.i.i.us, %bb.d ] ; 3 uses
  %.017.in.i.i.us = add nsw i64 %.01316.i.i.us, -1
  %.017.i.i.us = sdiv i64 %.017.in.i.i.us, 2      ; 4 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.017.i.i.us
  %i.ai = load double, ptr %i.ah, align 8         ; 2 uses
  %i.aj = fcmp olt double %i.ai, %i.ag
  br i1 %i.aj, label %bb.d, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01316.i.i.us
  store double %i.ai, ptr %i.ak, align 8, !tbaa !768
  %i.al = icmp sgt i64 %.017.i.i.us, %.015.us
  br i1 %i.al, label %bb.c, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us, !llvm.loop !683

_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us: ; preds = %bb.c, %bb.d, %._crit_edge.i.us.thread, %._crit_edge.i.us
  %i.am = phi i64 [ %i.ae, %._crit_edge.i.us ], [ %i.q, %._crit_edge.i.us.thread ], [ %i.ae, %bb.d ], [ %i.ae, %bb.c ]
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.015.us, %._crit_edge.i.us.thread ], [ %.01316.i.i.us, %bb.c ], [ %.017.i.i.us, %bb.d ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i64 %i.am, ptr %i.an, align 8, !tbaa !768
  %.not.us = icmp eq i64 %.015.us, 0
  %i.ao = add nsw i64 %.015.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !14212

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit
  %.015 = phi i64 [ %i.bp, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015
  %.sroa.02.0.copyload = load ptr, ptr %i.ap, align 8, !tbaa !768
  %i.aq = icmp slt i64 %.015, %i.i
  br i1 %i.aq, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.015, %.split ] ; 2 uses
  %i.ar = shl i64 %.029.i, 1                      ; 3 uses
  %i.as = add i64 %i.ar, 2                        ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %0, i64 %i.as
  %i.au = getelementptr [8 x i8], ptr %0, i64 %i.ar
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = load double, ptr %i.at, align 8, !tbaa !1192
  %i.ax = load double, ptr %i.av, align 8, !tbaa !1192
  %i.ay = fcmp olt double %i.aw, %i.ax
  %i.az = or disjoint i64 %i.ar, 1
  %spec.select.i = select i1 %i.ay, i64 %i.az, i64 %i.as ; 4 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !768
  store i64 %i.bc, ptr %i.bb, align 8, !tbaa !768
  %i.bd = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bd, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !682

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.015, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.be = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.be, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.bf = load i64, ptr %i.m, align 8, !tbaa !768
  store i64 %i.bf, ptr %i.n, align 8, !tbaa !768
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.e ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bg = ptrtoint ptr %.sroa.02.0.copyload to i64 ; 2 uses
  %i.bh = icmp sgt i64 %.1.i, %.015
  br i1 %i.bh, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.bi = bitcast i64 %i.bg to double
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.01316.i.i = phi i64 [ %.1.i, %.lr.ph.i.i ], [ %.017.i.i, %bb.h ] ; 3 uses
  %.017.in.i.i = add nsw i64 %.01316.i.i, -1
  %.017.i.i = sdiv i64 %.017.in.i.i, 2            ; 4 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.017.i.i
  %i.bk = load double, ptr %i.bj, align 8         ; 2 uses
  %i.bl = fcmp olt double %i.bk, %i.bi
  br i1 %i.bl, label %bb.h, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01316.i.i
  store double %i.bk, ptr %i.bm, align 8, !tbaa !768
  %i.bn = icmp sgt i64 %.017.i.i, %.015
  br i1 %i.bn, label %bb.g, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit, !llvm.loop !683

_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit: ; preds = %bb.g, %bb.h, %bb.f
  %.013.lcssa.i.i = phi i64 [ %.1.i, %bb.f ], [ %.017.i.i, %bb.h ], [ %.01316.i.i, %bb.g ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i64 %i.bg, ptr %i.bo, align 8, !tbaa !768
  %.not = icmp eq i64 %.015, 0
  %i.bp = add nsw i64 %.015, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !14212

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_8LeafNodeIdLj3EEEvEElS6_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSF_IS5_Lj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSM_EUlRKS6_SQ_E_EEEvSM_T0_ST_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__introselectIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEElN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_T0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 24
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph68

.lr.ph:                                           ; preds = %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEESM_SM_SM_T0_.exit
  %i.f = icmp eq i64 %i.j, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph68, !llvm.loop !14213

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.035.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.0., %.lr.ph ] ; 3 uses
  %.02134.lcssa = phi ptr [ %2, %.lr.ph.preheader ], [ %..021, %.lr.ph ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZSt13__heap_selectIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_T0_(ptr noundef %.035.lcssa, ptr noundef nonnull %i.g, ptr noundef %.02134.lcssa)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %.035.lcssa, align 8, !tbaa !768
  %i.h = load i64, ptr %1, align 8, !tbaa !768
  store i64 %i.h, ptr %.035.lcssa, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i, ptr %1, align 8, !tbaa !768
  br label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_T0_.exit

.lr.ph68:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0233367 = phi i64 [ %i.j, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.0213466 = phi ptr [ %..021, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.03565 = phi ptr [ %.0., %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 14 uses
  %i.i = phi i64 [ %i.ah, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %i.j = add nsw i64 %.0233367, -1                ; 2 uses
  %i.k = lshr i64 %i.i, 4
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.03565, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.03565, i64 8 ; 4 uses
  %i.n = getelementptr inbounds i8, ptr %.0213466, i64 -8 ; 3 uses
  %i.o = load double, ptr %i.m, align 8           ; 5 uses
  %i.p = load double, ptr %i.l, align 8           ; 5 uses
  %i.q = fcmp olt double %i.o, %i.p
  %i.r = load double, ptr %i.n, align 8           ; 6 uses
  br i1 %i.q, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph68
  %i.s = fcmp olt double %i.p, %i.r
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.03565, align 8, !tbaa !768
  store double %i.p, ptr %.03565, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.l, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.d:                                             ; preds = %bb.b
  %i.t = fcmp olt double %i.o, %i.r
  %.sroa.0.0.copyload.i.i22.i.i = load ptr, ptr %.03565, align 8, !tbaa !768 ; 2 uses
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store double %i.r, ptr %.03565, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i22.i.i, ptr %i.n, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  store double %i.o, ptr %.03565, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i22.i.i, ptr %i.m, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.g:                                             ; preds = %.lr.ph68
  %i.u = fcmp olt double %i.o, %i.r
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i24.i.i = load ptr, ptr %.03565, align 8, !tbaa !768
  store double %i.o, ptr %.03565, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i24.i.i, ptr %i.m, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.v = fcmp olt double %i.p, %i.r
  %.sroa.0.0.copyload.i.i25.i.i = load ptr, ptr %.03565, align 8, !tbaa !768 ; 2 uses
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store double %i.r, ptr %.03565, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i25.i.i, ptr %i.n, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  store double %i.p, ptr %.03565, align 8, !tbaa !768
  store ptr %.sroa.0.0.copyload.i.i25.i.i, ptr %i.l, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i

_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader, %bb.n
  %.013.i.i = phi ptr [ %.114.i.i, %bb.n ], [ %.0213466, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.z, %bb.n ], [ %i.m, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i.preheader ]
  %i.w = load double, ptr %.03565, align 8, !tbaa !1192 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i ], [ %i.z, %bb.l ] ; 7 uses
  %i.x = load double, ptr %.1.i.i, align 8        ; 2 uses
  %i.y = fcmp olt double %i.x, %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.y, label %bb.l, label %.preheader.i.i, !llvm.loop !14214

.preheader.i.i:                                   ; preds = %bb.l, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.l ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 5 uses
  %i.aa = load double, ptr %.114.i.i, align 8     ; 2 uses
  %i.ab = fcmp olt double %i.w, %i.aa
  br i1 %i.ab, label %.preheader.i.i, label %bb.m, !llvm.loop !14215

bb.m:                                             ; preds = %.preheader.i.i
  %i.ac = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.ac, label %bb.n, label %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEESM_SM_SM_T0_.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = bitcast double %i.x to i64
  %i.ae = inttoptr i64 %i.ad to ptr
  store double %i.aa, ptr %.1.i.i, align 8, !tbaa !768
  store ptr %i.ae, ptr %.114.i.i, align 8, !tbaa !768
  br label %_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_SM_T0_.exit.i, !llvm.loop !14216

_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEESM_SM_SM_T0_.exit: ; preds = %bb.m
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %..021 = select i1 %.not, ptr %.1.i.i, ptr %.0213466 ; 4 uses
  %.0. = select i1 %.not, ptr %.03565, ptr %.1.i.i ; 4 uses
  %i.af = ptrtoint ptr %..021 to i64
  %i.ag = ptrtoint ptr %.0. to i64                ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, 24
  br i1 %i.ai, label %.lr.ph, label %._crit_edge, !llvm.loop !14213

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEESM_SM_SM_T0_.exit, %bb.a
  %.021.lcssa = phi ptr [ %2, %bb.a ], [ %..021, %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEESM_SM_SM_T0_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.0., %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEESM_SM_SM_T0_.exit ] ; 7 uses
  %.lcssa29 = phi i64 [ %i.b, %bb.a ], [ %i.ag, %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEESM_SM_SM_T0_.exit ]
  %i.aj = icmp eq ptr %.0.lcssa, %.021.lcssa
  br i1 %i.aj, label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_T0_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge
  %.018.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8 ; 2 uses
  %.not19.i = icmp eq ptr %.018.i, %.021.lcssa
  br i1 %.not19.i, label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.pre23.i = load double, ptr %.0.lcssa, align 8 ; 2 uses
  %i.ak = bitcast double %.pre23.i to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.u, %.lr.ph.i
  %i.al = phi i64 [ %i.ak, %.lr.ph.i ], [ %i.bf, %bb.u ]
  %i.am = phi double [ %.pre23.i, %.lr.ph.i ], [ %i.bg, %bb.u ]
  %.021.i = phi ptr [ %.018.i, %.lr.ph.i ], [ %.0.i, %bb.u ] ; 6 uses
  %.pn20.i = phi ptr [ %.0.lcssa, %.lr.ph.i ], [ %.021.i, %bb.u ] ; 4 uses
  %i.an = load double, ptr %.021.i, align 8       ; 6 uses
  %i.ao = fcmp olt double %i.an, %i.am
  %i.ap = bitcast double %i.an to i64             ; 2 uses
  %i.aq = inttoptr i64 %i.ap to ptr
  br i1 %i.ao, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.ar = ptrtoint ptr %.021.i to i64
  %i.as = sub i64 %i.ar, %.lcssa29                ; 3 uses
  %i.at = ashr exact i64 %i.as, 3                 ; 2 uses
  %i.au = icmp sgt i64 %i.at, 1
  br i1 %i.au, label %bb.q, label %bb.r, !prof !1979

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 16
  %i.aw = sub nsw i64 0, %i.at
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.aw
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %.0.lcssa, i64 %i.as, i1 false)
  br label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEES9_ET0_T_SB_SA_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.ay = icmp eq i64 %i.as, 8
  br i1 %i.ay, label %bb.s, label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEES9_ET0_T_SB_SA_.exit.i

bb.s:                                             ; preds = %bb.r
  %i.az = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  store i64 %i.al, ptr %i.az, align 8, !tbaa !768
  br label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEES9_ET0_T_SB_SA_.exit.i

_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEES9_ET0_T_SB_SA_.exit.i: ; preds = %bb.s, %bb.r, %bb.q
  store ptr %i.aq, ptr %.0.lcssa, align 8, !tbaa !768
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.ba = load double, ptr %.pn20.i, align 8      ; 2 uses
  %i.bb = fcmp ogt double %i.ba, %i.an
  br i1 %i.bb, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.t, %.lr.ph.i.i
  %.in.i.i = phi double [ %i.bc, %.lr.ph.i.i ], [ %i.ba, %bb.t ]
  %.012.i.i = phi ptr [ %.0.i.i26, %.lr.ph.i.i ], [ %.pn20.i, %bb.t ] ; 3 uses
  %.0911.i.i = phi ptr [ %.012.i.i, %.lr.ph.i.i ], [ %.021.i, %bb.t ]
  store double %.in.i.i, ptr %.0911.i.i, align 8, !tbaa !768
  %.0.i.i26 = getelementptr inbounds i8, ptr %.012.i.i, i64 -8 ; 2 uses
  %i.bc = load double, ptr %.0.i.i26, align 8     ; 2 uses
  %i.bd = fcmp ogt double %i.bc, %i.an
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_.exit.i, !llvm.loop !14217

_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.t
  %.09.lcssa.i.i = phi ptr [ %.021.i, %bb.t ], [ %.012.i.i, %.lr.ph.i.i ]
  store double %i.an, ptr %.09.lcssa.i.i, align 8, !tbaa !768
  %.pre.i = load double, ptr %.0.lcssa, align 8   ; 2 uses
  %i.be = bitcast double %.pre.i to i64
  br label %bb.u

bb.u:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_.exit.i, %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEES9_ET0_T_SB_SA_.exit.i
  %i.bf = phi i64 [ %i.ap, %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEES9_ET0_T_SB_SA_.exit.i ], [ %i.be, %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_.exit.i ]
  %i.bg = phi double [ %i.an, %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEES9_ET0_T_SB_SA_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_.exit.i ]
  %.0.i = getelementptr inbounds nuw i8, ptr %.021.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %.021.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_T0_.exit, label %bb.o, !llvm.loop !14218

_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_T0_.exit: ; preds = %bb.u, %.preheader.i, %._crit_edge, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.4005", align 1
  call void @_ZSt11__make_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr i64 %i.d, 3                         ; 4 uses
  %i.f = add nsw i64 %i.e, -1
  %i.g = lshr i64 %i.f, 1
  %i.h = icmp sgt i64 %i.e, 2
  %i.i = and i64 %i.d, 8
  %i.j = icmp eq i64 %i.i, 0                      ; 2 uses
  %i.k = add nsw i64 %i.e, -2                     ; 2 uses
  %i.l = ashr exact i64 %i.k, 1                   ; 2 uses
  br i1 %i.h, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %4 = add nsw i64 %i.e, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.d
  %.011.us = phi ptr [ %i.ak, %bb.d ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.o = load double, ptr %.011.us, align 8       ; 3 uses
  %i.p = load double, ptr %0, align 8             ; 2 uses
  %i.q = fcmp olt double %i.o, %i.p
  br i1 %i.q, label %.lr.ph.i.i.preheader.us, label %bb.d

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  store double %i.p, ptr %.011.us, align 8, !tbaa !768
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.029.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.r = shl i64 %.029.i.i.us, 1                  ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [8 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load double, ptr %i.t, align 8, !tbaa !1192
  %i.x = load double, ptr %i.v, align 8, !tbaa !1192
  %i.y = fcmp olt double %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.us
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.i.us
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !768
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !768
  %i.ad = icmp slt i64 %spec.select.i.i.us, %i.g
  br i1 %i.ad, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !684

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  br i1 %.not.i.us, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_RT0_.exit.us, label %.lr.ph.i.i.i.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.ae = load i64, ptr %i.m, align 8, !tbaa !768
  store i64 %i.ae, ptr %i.n, align 8, !tbaa !768
  br label %.lr.ph.i.i.i.us.preheader

.lr.ph.i.i.i.us.preheader:                        ; preds = %.thread.i.us, %bb.b
  %.01316.i.i.i.us.ph = phi i64 [ %spec.select.i.i.us, %bb.b ], [ %4, %.thread.i.us ]
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %bb.c
  %.01316.i.i.i.us = phi i64 [ %.017.i.i1112.i.us, %bb.c ], [ %.01316.i.i.i.us.ph, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %.017.in.i.i.i.us = add nsw i64 %.01316.i.i.i.us, -1
  %.017.i.i1112.i.us = lshr i64 %.017.in.i.i.i.us, 1 ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.017.i.i1112.i.us
  %i.ag = load double, ptr %i.af, align 8         ; 2 uses
  %i.ah = fcmp olt double %i.ag, %i.o
  br i1 %i.ah, label %bb.c, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_RT0_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %.01316.i.i.i.us
  store double %i.ag, ptr %i.ai, align 8, !tbaa !768
  %.not13.i.us = icmp eq i64 %.017.i.i1112.i.us, 0
  br i1 %.not13.i.us, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_RT0_.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !685

_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_RT0_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %bb.b
  %.013.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %.01316.i.i.i.us, %.lr.ph.i.i.i.us ]
  %i.aj = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.us
  store double %i.o, ptr %i.aj, align 8, !tbaa !768
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_SM_RT0_.exit.us, %.lr.ph.split.us
  %i.ak = getelementptr inbounds nuw i8, ptr %.011.us, i64 8 ; 2 uses
  %i.al = icmp ult ptr %i.ak, %2
  br i1 %i.al, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !14219

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.am = icmp eq i64 %spec.select.i.i.us, %i.l
  %or.cond = select i1 %i.j, i1 %i.am, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %i.j, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load double, ptr %0, align 8            ; 2 uses
  %i.ao = bitcast double %.pre to i64
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.ap = icmp eq i64 %i.k, 0
  %.pre31 = load double, ptr %0, align 8          ; 3 uses
  %i.aq = bitcast double %.pre31 to i64           ; 2 uses
  br i1 %i.ap, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.e
  %i.ar = phi i64 [ %i.ba, %bb.e ], [ %i.aq, %.lr.ph.split.split.us ] ; 2 uses
  %i.as = phi double [ %i.bb, %bb.e ], [ %.pre31, %.lr.ph.split.split.us ] ; 2 uses
  %.011.us12.us = phi ptr [ %i.bc, %bb.e ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.at = load double, ptr %.011.us12.us, align 8 ; 3 uses
  %i.au = fcmp olt double %i.at, %i.as
  br i1 %i.au, label %._crit_edge.i.i.us13.us, label %bb.e

._crit_edge.i.i.us13.us:                          ; preds = %.lr.ph.split.split.us.split.us
  store i64 %i.ar, ptr %.011.us12.us, align 8, !tbaa !768
  %i.av = load i64, ptr %i.an, align 8, !tbaa !768 ; 2 uses
  store i64 %i.av, ptr %0, align 8, !tbaa !768
  %i.aw = bitcast i64 %i.av to double
  %i.ax = fcmp ule double %i.at, %i.aw
  %spec.select = zext i1 %i.ax to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %spec.select
  store double %i.at, ptr %i.ay, align 8, !tbaa !768
  %.pre30 = load double, ptr %0, align 8          ; 2 uses
  %i.az = bitcast double %.pre30 to i64
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.us13.us, %.lr.ph.split.split.us.split.us
  %i.ba = phi i64 [ %i.az, %._crit_edge.i.i.us13.us ], [ %i.ar, %.lr.ph.split.split.us.split.us ]
  %i.bb = phi double [ %.pre30, %._crit_edge.i.i.us13.us ], [ %i.as, %.lr.ph.split.split.us.split.us ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.011.us12.us, i64 8 ; 2 uses
  %i.bd = icmp ult ptr %i.bc, %2
  br i1 %i.bd, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !14219

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us, %bb.f
  %i.be = phi i64 [ %i.bj, %bb.f ], [ %i.aq, %.lr.ph.split.split.us ] ; 2 uses
  %i.bf = phi double [ %i.bk, %bb.f ], [ %.pre31, %.lr.ph.split.split.us ] ; 2 uses
  %.011.us12 = phi ptr [ %i.bl, %bb.f ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.bg = load double, ptr %.011.us12, align 8    ; 4 uses
  %i.bh = fcmp olt double %i.bg, %i.bf
  br i1 %i.bh, label %._crit_edge.i.i.us13, label %bb.f

._crit_edge.i.i.us13:                             ; preds = %.lr.ph.split.split.us.split
  %i.bi = bitcast double %i.bg to i64
  store i64 %i.be, ptr %.011.us12, align 8, !tbaa !768
  store double %i.bg, ptr %0, align 8, !tbaa !768
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.us13, %.lr.ph.split.split.us.split
  %i.bj = phi i64 [ %i.bi, %._crit_edge.i.i.us13 ], [ %i.be, %.lr.ph.split.split.us.split ]
  %i.bk = phi double [ %i.bg, %._crit_edge.i.i.us13 ], [ %i.bf, %.lr.ph.split.split.us.split ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.011.us12, i64 8 ; 2 uses
  %i.bm = icmp ult ptr %i.bl, %2
  br i1 %i.bm, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !14219

._crit_edge:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.g
  %i.bn = phi i64 [ %i.bs, %bb.g ], [ %i.ao, %.lr.ph.split.split.preheader ] ; 2 uses
  %i.bo = phi double [ %i.bt, %bb.g ], [ %.pre, %.lr.ph.split.split.preheader ] ; 2 uses
  %.011 = phi ptr [ %i.bu, %bb.g ], [ %1, %.lr.ph.split.split.preheader ] ; 3 uses
  %i.bp = load double, ptr %.011, align 8         ; 4 uses
  %i.bq = fcmp olt double %i.bp, %i.bo
  br i1 %i.bq, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.split
  %i.br = bitcast double %i.bp to i64
  store i64 %i.bn, ptr %.011, align 8, !tbaa !768
  store double %i.bp, ptr %0, align 8, !tbaa !768
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split, %._crit_edge.i.i
  %i.bs = phi i64 [ %i.bn, %.lr.ph.split.split ], [ %i.br, %._crit_edge.i.i ]
  %i.bt = phi double [ %i.bo, %.lr.ph.split.split ], [ %i.bp, %._crit_edge.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.011, i64 8 ; 2 uses
  %i.bv = icmp ult ptr %i.bu, %2
  br i1 %i.bv, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !14219
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_SM_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 4 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %3 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us
  %.015.us = phi i64 [ %i.ao, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us
  %.sroa.02.0.copyload.us = load ptr, ptr %i.o, align 8, !tbaa !768 ; 2 uses
  %i.p = icmp slt i64 %.015.us, %i.i
  br i1 %i.p, label %.lr.ph.i.us, label %._crit_edge.i.us.thread

._crit_edge.i.us.thread:                          ; preds = %.split.us
  %i.q = ptrtoint ptr %.sroa.02.0.copyload.us to i64
  br label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.015.us, %.split.us ] ; 2 uses
  %i.r = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr [8 x i8], ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load double, ptr %i.t, align 8, !tbaa !1192
  %i.x = load double, ptr %i.v, align 8, !tbaa !1192
  %i.y = fcmp olt double %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.us
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !768
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !768
  %i.ad = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ad, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !684

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ae = ptrtoint ptr %.sroa.02.0.copyload.us to i64 ; 4 uses
  %i.af = icmp sgt i64 %spec.select.i.us, %.015.us
  br i1 %i.af, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %i.ag = bitcast i64 %i.ae to double
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.us
  %.01316.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.017.i.i.us, %bb.d ] ; 3 uses
  %.017.in.i.i.us = add nsw i64 %.01316.i.i.us, -1
  %.017.i.i.us = sdiv i64 %.017.in.i.i.us, 2      ; 4 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.017.i.i.us
  %i.ai = load double, ptr %i.ah, align 8         ; 2 uses
  %i.aj = fcmp olt double %i.ai, %i.ag
  br i1 %i.aj, label %bb.d, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01316.i.i.us
  store double %i.ai, ptr %i.ak, align 8, !tbaa !768
  %i.al = icmp sgt i64 %.017.i.i.us, %.015.us
  br i1 %i.al, label %bb.c, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us, !llvm.loop !685

_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us: ; preds = %bb.c, %bb.d, %._crit_edge.i.us.thread, %._crit_edge.i.us
  %i.am = phi i64 [ %i.ae, %._crit_edge.i.us ], [ %i.q, %._crit_edge.i.us.thread ], [ %i.ae, %bb.d ], [ %i.ae, %bb.c ]
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.015.us, %._crit_edge.i.us.thread ], [ %.01316.i.i.us, %bb.c ], [ %.017.i.i.us, %bb.d ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i64 %i.am, ptr %i.an, align 8, !tbaa !768
  %.not.us = icmp eq i64 %.015.us, 0
  %i.ao = add nsw i64 %.015.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !14220

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit
  %.015 = phi i64 [ %i.bp, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015
  %.sroa.02.0.copyload = load ptr, ptr %i.ap, align 8, !tbaa !768
  %i.aq = icmp slt i64 %.015, %i.i
  br i1 %i.aq, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.015, %.split ] ; 2 uses
  %i.ar = shl i64 %.029.i, 1                      ; 3 uses
  %i.as = add i64 %i.ar, 2                        ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %0, i64 %i.as
  %i.au = getelementptr [8 x i8], ptr %0, i64 %i.ar
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = load double, ptr %i.at, align 8, !tbaa !1192
  %i.ax = load double, ptr %i.av, align 8, !tbaa !1192
  %i.ay = fcmp olt double %i.aw, %i.ax
  %i.az = or disjoint i64 %i.ar, 1
  %spec.select.i = select i1 %i.ay, i64 %i.az, i64 %i.as ; 4 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !768
  store i64 %i.bc, ptr %i.bb, align 8, !tbaa !768
  %i.bd = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bd, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !684

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.015, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.be = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.be, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.bf = load i64, ptr %i.m, align 8, !tbaa !768
  store i64 %i.bf, ptr %i.n, align 8, !tbaa !768
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.e ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bg = ptrtoint ptr %.sroa.02.0.copyload to i64 ; 2 uses
  %i.bh = icmp sgt i64 %.1.i, %.015
  br i1 %i.bh, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.bi = bitcast i64 %i.bg to double
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.01316.i.i = phi i64 [ %.1.i, %.lr.ph.i.i ], [ %.017.i.i, %bb.h ] ; 3 uses
  %.017.in.i.i = add nsw i64 %.01316.i.i, -1
  %.017.i.i = sdiv i64 %.017.in.i.i, 2            ; 4 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.017.i.i
  %i.bk = load double, ptr %i.bj, align 8         ; 2 uses
  %i.bl = fcmp olt double %i.bk, %i.bi
  br i1 %i.bl, label %bb.h, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01316.i.i
  store double %i.bk, ptr %i.bm, align 8, !tbaa !768
  %i.bn = icmp sgt i64 %.017.i.i, %.015
  br i1 %i.bn, label %bb.g, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit, !llvm.loop !685

_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit: ; preds = %bb.g, %bb.h, %bb.f
  %.013.lcssa.i.i = phi i64 [ %.1.i, %bb.f ], [ %.017.i.i, %bb.h ], [ %.01316.i.i, %bb.g ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i64 %i.bg, ptr %i.bo, align 8, !tbaa !768
  %.not = icmp eq i64 %.015, 0
  %i.bp = add nsw i64 %.015, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !14220

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit.us, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionIdNS2_12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEvEElS8_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS4_IS7_Lj5EEEEEEELj0EE6medianISH_EENT_9ValueTypeERSM_EUlRKS8_SQ_E_EEEvSM_T0_ST_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE16initRootChildrenINS1_8RootNodeISA_EEEEbRT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(76) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !814  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %.not6.i = icmp eq ptr %i.b, %i.c
  br i1 %.not6.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE10childCountEv.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.08.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.02.07.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1026
  %.not5.i = icmp ne ptr %i.e, null
  %i.f = zext i1 %.not5.i to i32
  %spec.select.i = add i32 %.08.i, %i.f           ; 3 uses
  %i.g = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.07.i) #32 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i, label %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE10childCountEv.exit, label %.lr.ph.i, !llvm.loop !19

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE10childCountEv.exit: ; preds = %.lr.ph.i
  %i.h = zext i32 %spec.select.i to i64           ; 5 uses
  %i.i = load i64, ptr %0, align 8, !tbaa !1647
  %.not = icmp eq i64 %i.i, %i.h
  br i1 %.not, label %bb.d, label %bb.b

_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE10childCountEv.exit.thread: ; preds = %bb.a
  %i.j = load i64, ptr %0, align 8, !tbaa !1647
  %.not21 = icmp eq i64 %i.j, 0
  br i1 %.not21, label %.thread25, label %.thread

bb.b:                                             ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE10childCountEv.exit
  %.not10 = icmp eq i32 %spec.select.i, 0
  br i1 %.not10, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = shl nuw nsw i64 %i.h, 3
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #30 ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !1622 ; 2 uses
  store ptr %i.m, ptr %i.k, align 8, !tbaa !1622
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEESt14default_deleteISC_EE5resetIPSB_vEEvT_.exit, label %_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEclISB_EENSt9enable_ifIXsr14is_convertibleIPA_T_PSC_EE5valueEvE4typeEPSG_.exit.i.i

_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEclISB_EENSt9enable_ifIXsr14is_convertibleIPA_T_PSC_EE5valueEvE4typeEPSG_.exit.i.i: ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.n) #31
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !1622
  br label %_ZNSt10unique_ptrIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEESt14default_deleteISC_EE5resetIPSB_vEEvT_.exit

.thread:                                          ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeINS0_4math4Vec3IfEELj3EEELj4EEELj5EEEE10childCountEv.exit.thread, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1622 ; 2 uses
  store ptr null, ptr %i.o, align 8, !tbaa !1622
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEESt14default_deleteISC_EE5resetIPSB_vEEvT_.exit, label %_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEclISB_EENSt9enable_ifIXsr14is_convertibleIPA_T_PSC_EE5valueEvE4typeEPSG_.exit.i.i.i

_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEEEclISB_EENSt9enable_ifIXsr14is_convertibleIPA_T_PSC_EE5valueEvE4typeEPSG_.exit.i.i.i: ; preds = %.thread
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #31
  br label %_ZNSt10unique_ptrIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeINS1_4math4Vec3IfEELj3EEELj4EEELj5EEESt14default_deleteISC_EE5resetIPSB_vEEvT_.exit
end_hunk_9
begin_hunk_10_@_ZSt13__introselectIPN7openvdb5v13_04math4Vec3IdEElN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS4_Lj3EE9medianAllES5_EUlRKT_RKT0_E_EEEvSC_SC_SC_SF_T1_:bb.a
.preheader.i.i:                                   ; preds = %.preheader.i.i.backedge, %.preheader.i.i.preheader
  %.013.pn.i.i = phi ptr [ %.013.i.i, %.preheader.i.i.preheader ], [ %.114.i.i, %.preheader.i.i.backedge ] ; 3 uses
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -24 ; 6 uses
  %i.ac = load double, ptr %.114.i.i, align 8, !tbaa !1192 ; 2 uses
  %i.ad = fcmp oeq double %i.p, %i.ac
  br i1 %i.ad, label %bb.f, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit18.i.i

bb.f:                                             ; preds = %.preheader.i.i
  %i.ae = load double, ptr %i.n, align 8, !tbaa !1192 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -16
  %i.ag = load double, ptr %i.af, align 8, !tbaa !1192 ; 2 uses
  %i.ah = fcmp oeq double %i.ae, %i.ag
  br i1 %i.ah, label %.split19.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit18.i.i

.split19.i.i:                                     ; preds = %bb.f
  %i.ai = load double, ptr %i.o, align 8, !tbaa !1192
  %i.aj = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !1192
  %i.al = fcmp olt double %i.ai, %i.ak
  br i1 %i.al, label %.preheader.i.i.backedge, label %bb.g

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit18.i.i: ; preds = %bb.f, %.preheader.i.i
  %.lcssa21.i.i.i15.i.i = phi double [ %i.p, %.preheader.i.i ], [ %i.ae, %bb.f ]
  %.lcssa.i.i.i16.i.i = phi double [ %i.ac, %.preheader.i.i ], [ %i.ag, %bb.f ]
  %i.am = fcmp olt double %.lcssa21.i.i.i15.i.i, %.lcssa.i.i.i16.i.i
  br i1 %i.am, label %.preheader.i.i.backedge, label %bb.g

.preheader.i.i.backedge:                          ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit18.i.i, %.split19.i.i
  br label %.preheader.i.i, !llvm.loop !14408

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit18.i.i, %.split19.i.i
  %i.an = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.an, label %bb.h, label %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04math4Vec3IdEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS4_Lj3EE9medianAllES5_EUlRKT_RKT0_E_EEESC_SC_SC_SF_.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.1.i.i, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.1.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.114.i.i, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.114.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.ao = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  br label %bb.b, !llvm.loop !14409

_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04math4Vec3IdEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS4_Lj3EE9medianAllES5_EUlRKT_RKT0_E_EEESC_SC_SC_SF_.exit: ; preds = %bb.g
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %..021 = select i1 %.not, ptr %.1.i.i, ptr %.0213467 ; 4 uses
  %.0. = select i1 %.not, ptr %.03566, ptr %.1.i.i ; 4 uses
  %i.ap = ptrtoint ptr %..021 to i64
  %i.aq = ptrtoint ptr %.0. to i64                ; 2 uses
  %i.ar = sub i64 %i.ap, %i.aq                    ; 2 uses
  %i.as = icmp sgt i64 %i.ar, 72
  br i1 %i.as, label %.lr.ph, label %._crit_edge, !llvm.loop !14406

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04math4Vec3IdEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS4_Lj3EE9medianAllES5_EUlRKT_RKT0_E_EEESC_SC_SC_SF_.exit, %bb.a
  %.021.lcssa = phi ptr [ %2, %bb.a ], [ %..021, %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04math4Vec3IdEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS4_Lj3EE9medianAllES5_EUlRKT_RKT0_E_EEESC_SC_SC_SF_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.0., %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04math4Vec3IdEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS4_Lj3EE9medianAllES5_EUlRKT_RKT0_E_EEESC_SC_SC_SF_.exit ] ; 9 uses
  %.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.aq, %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04math4Vec3IdEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS4_Lj3EE9medianAllES5_EUlRKT_RKT0_E_EEESC_SC_SC_SF_.exit ]
  %i.at = icmp eq ptr %.0.lcssa, %.021.lcssa
  br i1 %i.at, label %_ZSt16__insertion_sortIPN7openvdb5v13_04math4Vec3IdEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS4_Lj3EE9medianAllES5_EUlRKT_RKT0_E_EEEvSC_SC_SF_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge
  %.017.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 24 ; 2 uses
  %.not18.i = icmp eq ptr %.017.i, %.021.lcssa
  br i1 %.not18.i, label %_ZSt16__insertion_sortIPN7openvdb5v13_04math4Vec3IdEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS4_Lj3EE9medianAllES5_EUlRKT_RKT0_E_EEEvSC_SC_SF_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.s, %.lr.ph.i
  %.020.i = phi ptr [ %.017.i, %.lr.ph.i ], [ %.0.i, %bb.s ] ; 6 uses
  %.pn19.i = phi ptr [ %.0.lcssa, %.lr.ph.i ], [ %.020.i, %bb.s ] ; 6 uses
  %i.aw = load double, ptr %.020.i, align 8, !tbaa !1192 ; 5 uses
  %i.ax = load double, ptr %.0.lcssa, align 8, !tbaa !1192 ; 2 uses
  %i.ay = fcmp oeq double %i.aw, %i.ax
  br i1 %i.ay, label %bb.j, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 32
  %i.ba = load double, ptr %i.az, align 8, !tbaa !1192 ; 3 uses
  %i.bb = load double, ptr %i.au, align 8, !tbaa !1192 ; 2 uses
  %i.bc = fcmp oeq double %i.ba, %i.bb
  br i1 %i.bc, label %.split.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit.i

.split.i:                                         ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 40
  %i.be = load double, ptr %i.bd, align 8, !tbaa !1192 ; 2 uses
  %i.bf = load double, ptr %i.av, align 8, !tbaa !1192
  %i.bg = fcmp olt double %i.be, %i.bf
  br i1 %i.bg, label %bb.k, label %bb.o

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit.i: ; preds = %bb.j, %bb.i
  %.lcssa21.i.i.i.i = phi double [ %i.aw, %bb.i ], [ %i.ba, %bb.j ]
  %.lcssa.i.i.i.i = phi double [ %i.ax, %bb.i ], [ %i.bb, %bb.j ]
  %i.bh = fcmp olt double %.lcssa21.i.i.i.i, %.lcssa.i.i.i.i
  br i1 %i.bh, label %bb.k, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit._crit_edge.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit._crit_edge.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit.i
  %.sroa.5.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 32
  %.sroa.5.0.copyload.i.pre.i = load double, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i, align 8
  %.sroa.6.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 40
  %.sroa.6.0.copyload.i.pre.i = load double, ptr %.sroa.6.0..sroa_idx.i.phi.trans.insert.i, align 8
  br label %bb.o

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.i, ptr noundef nonnull align 8 dereferenceable(24) %.020.i, i64 24, i1 false)
  %i.bi = ptrtoint ptr %.020.i to i64
  %i.bj = sub i64 %i.bi, %.lcssa                  ; 4 uses
  %i.bk = icmp sgt i64 %i.bj, 24
  br i1 %i.bk, label %bb.l, label %bb.m, !prof !1979

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 48
  %.neg35.i = udiv exact i64 %i.bj, 24
  %.neg35.neg.i = sub nsw i64 0, %.neg35.i
  %i.bm = getelementptr inbounds [24 x i8], ptr %i.bl, i64 %.neg35.neg.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bm, ptr noundef nonnull align 8 dereferenceable(1) %.0.lcssa, i64 %i.bj, i1 false)
  br label %_ZSt13move_backwardIPN7openvdb5v13_04math4Vec3IdEES5_ET0_T_S7_S6_.exit.i

bb.m:                                             ; preds = %bb.k
  %i.bn = icmp eq i64 %i.bj, 24
  br i1 %i.bn, label %bb.n, label %_ZSt13move_backwardIPN7openvdb5v13_04math4Vec3IdEES5_ET0_T_S7_S6_.exit.i

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %.0.lcssa, i64 24, i1 false)
  br label %_ZSt13move_backwardIPN7openvdb5v13_04math4Vec3IdEES5_ET0_T_S7_S6_.exit.i

_ZSt13move_backwardIPN7openvdb5v13_04math4Vec3IdEES5_ET0_T_S7_S6_.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i)
  br label %bb.s

bb.o:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit._crit_edge.i, %.split.i
  %.sroa.6.0.copyload.i.i = phi double [ %.sroa.6.0.copyload.i.pre.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit._crit_edge.i ], [ %i.be, %.split.i ] ; 2 uses
  %.sroa.5.0.copyload.i.i = phi double [ %.sroa.5.0.copyload.i.pre.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit._crit_edge.i ], [ %i.ba, %.split.i ] ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %bb.o
  %.09.i.i = phi ptr [ %.020.i, %bb.o ], [ %.0.i.i26, %bb.r ] ; 7 uses
  %.0.i.i26 = getelementptr inbounds i8, ptr %.09.i.i, i64 -24 ; 3 uses
  %i.bp = load double, ptr %.0.i.i26, align 8, !tbaa !1192 ; 2 uses
  %i.bq = fcmp oeq double %i.aw, %i.bp
  br i1 %i.bq, label %bb.q, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclIS8_SA_EEbRSB_SE_.exit.i.i

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds i8, ptr %.09.i.i, i64 -16
  %i.bs = load double, ptr %i.br, align 8, !tbaa !1192 ; 2 uses
  %i.bt = fcmp oeq double %.sroa.5.0.copyload.i.i, %i.bs
  br i1 %i.bt, label %.split.i.i29, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclIS8_SA_EEbRSB_SE_.exit.i.i

.split.i.i29:                                     ; preds = %bb.q
  %i.bu = getelementptr inbounds i8, ptr %.09.i.i, i64 -8
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !1192
  %i.bw = fcmp olt double %.sroa.6.0.copyload.i.i, %i.bv
  br i1 %i.bw, label %bb.r, label %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04math4Vec3IdEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_4tree8LeafNodeIS4_Lj3EE9medianAllES5_EUlRKT_RKT0_E_EEEvSC_SF_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclIS8_SA_EEbRSB_SE_.exit.i.i: ; preds = %bb.q, %bb.p
  %.lcssa21.i.i.i.i.i27 = phi double [ %i.aw, %bb.p ], [ %.sroa.5.0.copyload.i.i, %bb.q ]
  %.lcssa.i.i.i.i.i28 = phi double [ %i.bp, %bb.p ], [ %i.bs, %bb.q ]
  %i.bx = fcmp olt double %.lcssa21.i.i.i.i.i27, %.lcssa.i.i.i.i.i28
  br i1 %i.bx, label %bb.r, label %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04math4Vec3IdEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_4tree8LeafNodeIS4_Lj3EE9medianAllES5_EUlRKT_RKT0_E_EEEvSC_SF_.exit.i

bb.r:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclIS8_SA_EEbRSB_SE_.exit.i.i, %.split.i.i29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i26, i64 24, i1 false)
  br label %bb.p, !llvm.loop !14410

_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04math4Vec3IdEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_4tree8LeafNodeIS4_Lj3EE9medianAllES5_EUlRKT_RKT0_E_EEEvSC_SF_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclIS8_SA_EEbRSB_SE_.exit.i.i, %.split.i.i29
  store double %i.aw, ptr %.09.i.i, align 8
  %.sroa.5.0..09.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  store double %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..09.sroa_idx.i.i, align 8
  %.sroa.6.0..09.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  store double %.sroa.6.0.copyload.i.i, ptr %.sroa.6.0..09.sroa_idx.i.i, align 8
  br label %bb.s

bb.s:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04math4Vec3IdEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_4tree8LeafNodeIS4_Lj3EE9medianAllES5_EUlRKT_RKT0_E_EEEvSC_SF_.exit.i, %_ZSt13move_backwardIPN7openvdb5v13_04math4Vec3IdEES5_ET0_T_S7_S6_.exit.i
  %.0.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %.021.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIPN7openvdb5v13_04math4Vec3IdEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS4_Lj3EE9medianAllES5_EUlRKT_RKT0_E_EEEvSC_SC_SF_.exit, label %bb.i, !llvm.loop !14411

_ZSt16__insertion_sortIPN7openvdb5v13_04math4Vec3IdEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS4_Lj3EE9medianAllES5_EUlRKT_RKT0_E_EEEvSC_SC_SF_.exit: ; preds = %bb.s, %.preheader.i, %._crit_edge, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIPN7openvdb5v13_04math4Vec3IdEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS4_Lj3EE9medianAllES5_EUlRKT_RKT0_E_EEEvSC_SC_SC_SF_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.4079", align 1
  call void @_ZSt11__make_heapIPN7openvdb5v13_04math4Vec3IdEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS4_Lj3EE9medianAllES5_EUlRKT_RKT0_E_EEEvSC_SC_RSF_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = add nsw i64 %i.g, -1
  %i.i = sdiv i64 %i.h, 2
  %i.j = icmp sgt i64 %i.f, 48
  %i.k = and i64 %i.g, 1
  %i.l = icmp eq i64 %i.k, 0
  %i.m = add nsw i64 %i.g, -2
  %i.n = ashr exact i64 %i.m, 1                   ; 2 uses
  %4 = add nsw i64 %i.g, -1                       ; 2 uses
  %i.o = getelementptr inbounds [24 x i8], ptr %0, i64 %4
  %i.p = getelementptr inbounds [24 x i8], ptr %0, i64 %i.n
  br label %bb.b

._crit_edge:                                      ; preds = %bb.l, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %.011 = phi ptr [ %1, %.lr.ph ], [ %i.bn, %bb.l ] ; 7 uses
  %i.q = load double, ptr %.011, align 8, !tbaa !1192 ; 5 uses
  %i.r = load double, ptr %0, align 8, !tbaa !1192 ; 2 uses
  %i.s = fcmp oeq double %i.q, %i.r
  br i1 %i.s, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.011, i64 8
  %i.u = load double, ptr %i.t, align 8, !tbaa !1192 ; 3 uses
  %i.v = load double, ptr %i.b, align 8, !tbaa !1192 ; 2 uses
  %i.w = fcmp oeq double %i.u, %i.v
  br i1 %i.w, label %.split, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit

.split:                                           ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.011, i64 16
  %i.y = load double, ptr %i.x, align 8, !tbaa !1192 ; 2 uses
  %i.z = load double, ptr %i.c, align 8, !tbaa !1192
  %i.aa = fcmp olt double %i.y, %i.z
  br i1 %i.aa, label %bb.d, label %bb.l

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit: ; preds = %bb.b, %bb.c
  %.lcssa21.i.i.i = phi double [ %i.q, %bb.b ], [ %i.u, %bb.c ]
  %.lcssa.i.i.i = phi double [ %i.r, %bb.b ], [ %i.v, %bb.c ]
  %i.ab = fcmp olt double %.lcssa21.i.i.i, %.lcssa.i.i.i
  br i1 %i.ab, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit._crit_edge, label %bb.l

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit._crit_edge: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit
  %.sroa.01.sroa.4.0..sroa_idx.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.011, i64 8
  %.sroa.01.sroa.4.0.copyload.i.pre = load double, ptr %.sroa.01.sroa.4.0..sroa_idx.i.phi.trans.insert, align 8
  %.sroa.01.sroa.5.0..sroa_idx.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.011, i64 16
  %.sroa.01.sroa.5.0.copyload.i.pre = load double, ptr %.sroa.01.sroa.5.0..sroa_idx.i.phi.trans.insert, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit._crit_edge, %.split
  %.sroa.01.sroa.5.0.copyload.i = phi double [ %.sroa.01.sroa.5.0.copyload.i.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit._crit_edge ], [ %i.y, %.split ] ; 2 uses
  %.sroa.01.sroa.4.0.copyload.i = phi double [ %.sroa.01.sroa.4.0.copyload.i.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit._crit_edge ], [ %i.u, %.split ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.011, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br i1 %i.j, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit.i.i
  %.033.i.i = phi i64 [ %spec.select.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.ac = shl i64 %.033.i.i, 1                    ; 3 uses
  %i.ad = add i64 %i.ac, 2                        ; 2 uses
  %i.ae = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ad ; 3 uses
  %i.af = getelementptr [24 x i8], ptr %0, i64 %i.ac ; 3 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 24
  %i.ah = load double, ptr %i.ae, align 8, !tbaa !1192 ; 2 uses
  %i.ai = load double, ptr %i.ag, align 8, !tbaa !1192 ; 2 uses
  %i.aj = fcmp oeq double %i.ah, %i.ai
  br i1 %i.aj, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.al = load double, ptr %i.ak, align 8, !tbaa !1192 ; 2 uses
  %i.am = getelementptr i8, ptr %i.af, i64 32
  %i.an = load double, ptr %i.am, align 8, !tbaa !1192 ; 2 uses
  %i.ao = fcmp oeq double %i.al, %i.an
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !1192
  %i.ar = getelementptr i8, ptr %i.af, i64 40
  %i.as = load double, ptr %i.ar, align 8, !tbaa !1192
  %i.at = fcmp olt double %i.aq, %i.as
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit.i.i

bb.g:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.lcssa21.i.i.i.i.i = phi double [ %i.ah, %.lr.ph.i.i ], [ %i.al, %bb.e ]
  %.lcssa.i.i.i.i.i = phi double [ %i.ai, %.lr.ph.i.i ], [ %i.an, %bb.e ]
  %i.au = fcmp olt double %.lcssa21.i.i.i.i.i, %.lcssa.i.i.i.i.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit.i.i: ; preds = %bb.g, %bb.f
  %.1.i.i.i.i.i = phi i1 [ %i.at, %bb.f ], [ %i.au, %bb.g ]
  %i.av = or disjoint i64 %i.ac, 1
  %spec.select.i.i = select i1 %.1.i.i.i.i.i, i64 %i.av, i64 %i.ad ; 4 uses
  %i.aw = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select.i.i
  %i.ax = getelementptr inbounds [24 x i8], ptr %0, i64 %.033.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false)
  %i.ay = icmp slt i64 %spec.select.i.i, %i.i
  br i1 %i.ay, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !698

._crit_edge.i.i:                                  ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit.i.i, %bb.d
  %.0.lcssa.i.i = phi i64 [ 0, %bb.d ], [ %spec.select.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit.i.i ] ; 2 uses
  %i.az = icmp eq i64 %.0.lcssa.i.i, %i.n
  %or.cond = select i1 %i.l, i1 %i.az, i1 false
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i
  %.127.i.i = phi i64 [ %4, %bb.h ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ba = icmp sgt i64 %.127.i.i, 0
  br i1 %i.ba, label %.lr.ph.i.i.i, label %_ZSt10__pop_heapIPN7openvdb5v13_04math4Vec3IdEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS4_Lj3EE9medianAllES5_EUlRKT_RKT0_E_EEEvSC_SC_SC_RSF_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.i, %bb.k
  %.01316.i.i.i = phi i64 [ %.017.i.i910.i, %bb.k ], [ %.127.i.i, %bb.i ] ; 4 uses
  %.017.in.i.i.i = add nsw i64 %.01316.i.i.i, -1
  %.017.i.i910.i = lshr i64 %.017.in.i.i.i, 1     ; 3 uses
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.017.i.i910.i ; 4 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !1192 ; 2 uses
  %i.bd = fcmp oeq double %i.bc, %i.q
  br i1 %i.bd, label %bb.j, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_S8_EEbSB_RSE_.exit.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bf = load double, ptr %i.be, align 8, !tbaa !1192 ; 2 uses
  %i.bg = fcmp oeq double %i.bf, %.sroa.01.sroa.4.0.copyload.i
  br i1 %i.bg, label %.split.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_S8_EEbSB_RSE_.exit.i.i.i

.split.i.i.i:                                     ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !1192
  %i.bj = fcmp olt double %i.bi, %.sroa.01.sroa.5.0.copyload.i
  br i1 %i.bj, label %bb.k, label %_ZSt10__pop_heapIPN7openvdb5v13_04math4Vec3IdEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS4_Lj3EE9medianAllES5_EUlRKT_RKT0_E_EEEvSC_SC_SC_RSF_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_S8_EEbSB_RSE_.exit.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i
  %.lcssa21.i.i.i.i.i.i = phi double [ %i.bc, %.lr.ph.i.i.i ], [ %i.bf, %bb.j ]
  %.lcssa.i.i.i.i.i.i = phi double [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.01.sroa.4.0.copyload.i, %bb.j ]
  %i.bk = fcmp olt double %.lcssa21.i.i.i.i.i.i, %.lcssa.i.i.i.i.i.i
  br i1 %i.bk, label %bb.k, label %_ZSt10__pop_heapIPN7openvdb5v13_04math4Vec3IdEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS4_Lj3EE9medianAllES5_EUlRKT_RKT0_E_EEEvSC_SC_SC_RSF_.exit

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_S8_EEbSB_RSE_.exit.i.i.i, %.split.i.i.i
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.01316.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false)
  %.not.i = icmp eq i64 %.017.i.i910.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIPN7openvdb5v13_04math4Vec3IdEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS4_Lj3EE9medianAllES5_EUlRKT_RKT0_E_EEEvSC_SC_SC_RSF_.exit, label %.lr.ph.i.i.i, !llvm.loop !699

_ZSt10__pop_heapIPN7openvdb5v13_04math4Vec3IdEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS4_Lj3EE9medianAllES5_EUlRKT_RKT0_E_EEEvSC_SC_SC_RSF_.exit: ; preds = %.split.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_S8_EEbSB_RSE_.exit.i.i.i, %bb.k, %bb.i
  %.013.lcssa.i.i.i = phi i64 [ %.127.i.i, %bb.i ], [ %.01316.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_S8_EEbSB_RSE_.exit.i.i.i ], [ 0, %bb.k ], [ %.01316.i.i.i, %.split.i.i.i ]
  %i.bm = getelementptr inbounds [24 x i8], ptr %0, i64 %.013.lcssa.i.i.i ; 3 uses
  store double %i.q, ptr %i.bm, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store double %.sroa.01.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store double %.sroa.01.sroa.5.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  br label %bb.l

bb.l:                                             ; preds = %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit, %_ZSt10__pop_heapIPN7openvdb5v13_04math4Vec3IdEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS4_Lj3EE9medianAllES5_EUlRKT_RKT0_E_EEEvSC_SC_SC_RSF_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %.011, i64 24 ; 2 uses
  %i.bo = icmp ult ptr %i.bn, %2
  br i1 %i.bo, label %bb.b, label %._crit_edge, !llvm.loop !14412
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPN7openvdb5v13_04math4Vec3IdEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS4_Lj3EE9medianAllES5_EUlRKT_RKT0_E_EEEvSC_SC_RSF_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp slt i64 %i.c, 48
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = udiv exact i64 %i.c, 24                  ; 4 uses
  %i.f = add nsw i64 %i.e, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.e, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.e, 1
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %3 = add nsw i64 %i.e, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIPN7openvdb5v13_04math4Vec3IdEElS4_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS4_Lj3EE9medianAllES5_EUlRKT_RKT0_E_EEEvSC_SF_SF_T1_T2_.exit, %bb.b
  %.014 = phi i64 [ %i.g, %bb.b ], [ %i.bf, %_ZSt13__adjust_heapIPN7openvdb5v13_04math4Vec3IdEElS4_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS4_Lj3EE9medianAllES5_EUlRKT_RKT0_E_EEEvSC_SF_SF_T1_T2_.exit ] ; 8 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.014 ; 2 uses
  %i.p = load <2 x double>, ptr %i.o, align 8     ; 3 uses
  %.sroa.01.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.01.sroa.5.0.copyload = load double, ptr %.sroa.01.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.q = icmp slt i64 %.014, %i.i
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit.i
  %.033.i = phi i64 [ %spec.select.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit.i ], [ %.014, %bb.c ] ; 2 uses
  %i.r = shl i64 %.033.i, 1                       ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [24 x i8], ptr %0, i64 %i.s ; 3 uses
  %i.u = getelementptr [24 x i8], ptr %0, i64 %i.r ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 24
  %i.w = load double, ptr %i.t, align 8, !tbaa !1192 ; 2 uses
  %i.x = load double, ptr %i.v, align 8, !tbaa !1192 ; 2 uses
  %i.y = fcmp oeq double %i.w, %i.x
  br i1 %i.y, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.aa = load double, ptr %i.z, align 8, !tbaa !1192 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.u, i64 32
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !1192 ; 2 uses
  %i.ad = fcmp oeq double %i.aa, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.af = load double, ptr %i.ae, align 8, !tbaa !1192
  %i.ag = getelementptr i8, ptr %i.u, i64 40
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !1192
  %i.ai = fcmp olt double %i.af, %i.ah
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit.i

bb.f:                                             ; preds = %bb.d, %.lr.ph.i
  %.lcssa21.i.i.i.i = phi double [ %i.w, %.lr.ph.i ], [ %i.aa, %bb.d ]
  %.lcssa.i.i.i.i = phi double [ %i.x, %.lr.ph.i ], [ %i.ac, %bb.d ]
  %i.aj = fcmp olt double %.lcssa21.i.i.i.i, %.lcssa.i.i.i.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit.i: ; preds = %bb.f, %bb.e
  %.1.i.i.i.i = phi i1 [ %i.ai, %bb.e ], [ %i.aj, %bb.f ]
  %i.ak = or disjoint i64 %i.r, 1
  %spec.select.i = select i1 %.1.i.i.i.i, i64 %i.ak, i64 %i.s ; 4 uses
  %i.al = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select.i
  %i.am = getelementptr inbounds [24 x i8], ptr %0, i64 %.033.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  %i.an = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !698

._crit_edge.i:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.014, %bb.c ], [ %spec.select.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit.i ] ; 2 uses
  %i.ao = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i
  %.127.i = phi i64 [ %3, %bb.g ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ap = icmp sgt i64 %.127.i, %.014
  br i1 %i.ap, label %.lr.ph.i.i.preheader, label %_ZSt13__adjust_heapIPN7openvdb5v13_04math4Vec3IdEElS4_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS4_Lj3EE9medianAllES5_EUlRKT_RKT0_E_EEEvSC_SF_SF_T1_T2_.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.h
  %i.aq = extractelement <2 x double> %i.p, i64 0 ; 2 uses
  %i.ar = extractelement <2 x double> %i.p, i64 1 ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.j
  %.01316.i.i = phi i64 [ %.017.i.i, %bb.j ], [ %.127.i, %.lr.ph.i.i.preheader ] ; 4 uses
  %.017.in.i.i = add nsw i64 %.01316.i.i, -1
  %.017.i.i = sdiv i64 %.017.in.i.i, 2            ; 4 uses
  %i.as = getelementptr inbounds [24 x i8], ptr %0, i64 %.017.i.i ; 4 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !1192 ; 2 uses
  %i.au = fcmp oeq double %i.at, %i.aq
  br i1 %i.au, label %bb.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_S8_EEbSB_RSE_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.aw = load double, ptr %i.av, align 8, !tbaa !1192 ; 2 uses
  %i.ax = fcmp oeq double %i.aw, %i.ar
  br i1 %i.ax, label %.split.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_S8_EEbSB_RSE_.exit.i.i

.split.i.i:                                       ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.az = load double, ptr %i.ay, align 8, !tbaa !1192
  %i.ba = fcmp olt double %i.az, %.sroa.01.sroa.5.0.copyload
  br i1 %i.ba, label %bb.j, label %_ZSt13__adjust_heapIPN7openvdb5v13_04math4Vec3IdEElS4_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS4_Lj3EE9medianAllES5_EUlRKT_RKT0_E_EEEvSC_SF_SF_T1_T2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_S8_EEbSB_RSE_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i
  %.lcssa21.i.i.i.i.i = phi double [ %i.at, %.lr.ph.i.i ], [ %i.aw, %bb.i ]
  %.lcssa.i.i.i.i.i = phi double [ %i.aq, %.lr.ph.i.i ], [ %i.ar, %bb.i ]
  %i.bb = fcmp olt double %.lcssa21.i.i.i.i.i, %.lcssa.i.i.i.i.i
  br i1 %i.bb, label %bb.j, label %_ZSt13__adjust_heapIPN7openvdb5v13_04math4Vec3IdEElS4_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS4_Lj3EE9medianAllES5_EUlRKT_RKT0_E_EEEvSC_SF_SF_T1_T2_.exit

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_S8_EEbSB_RSE_.exit.i.i, %.split.i.i
  %i.bc = getelementptr inbounds [24 x i8], ptr %0, i64 %.01316.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  %i.bd = icmp sgt i64 %.017.i.i, %.014
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPN7openvdb5v13_04math4Vec3IdEElS4_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS4_Lj3EE9medianAllES5_EUlRKT_RKT0_E_EEEvSC_SF_SF_T1_T2_.exit, !llvm.loop !699

_ZSt13__adjust_heapIPN7openvdb5v13_04math4Vec3IdEElS4_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS4_Lj3EE9medianAllES5_EUlRKT_RKT0_E_EEEvSC_SF_SF_T1_T2_.exit: ; preds = %.split.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_S8_EEbSB_RSE_.exit.i.i, %bb.j, %bb.h
  %.013.lcssa.i.i = phi i64 [ %.127.i, %bb.h ], [ %.01316.i.i, %.split.i.i ], [ %.017.i.i, %bb.j ], [ %.01316.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_S8_EEbSB_RSE_.exit.i.i ]
  %i.be = getelementptr inbounds [24 x i8], ptr %0, i64 %.013.lcssa.i.i ; 2 uses
  store <2 x double> %i.p, ptr %i.be, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store double %.sroa.01.sroa.5.0.copyload, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.not = icmp eq i64 %.014, 0
  %i.bf = add nsw i64 %.014, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !14413

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPN7openvdb5v13_04math4Vec3IdEElS4_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS4_Lj3EE9medianAllES5_EUlRKT_RKT0_E_EEEvSC_SF_SF_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIPN7openvdb5v13_04math4Vec3IdEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_4tree8LeafNodeIS4_Lj3EE9medianAllES5_EUlRKT_RKT0_E_EEEvSC_SC_SC_SC_SF_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 comdat {
bb.a:
  %.sroa.0.i.i42 = alloca [3 x double], align 8   ; 4 uses
  %.sroa.0.i.i41 = alloca [3 x double], align 8   ; 4 uses
  %.sroa.0.i.i36 = alloca [3 x double], align 8   ; 4 uses
  %.sroa.0.i.i31 = alloca [3 x double], align 8   ; 4 uses
  %.sroa.0.i.i30 = alloca [3 x double], align 8   ; 4 uses
  %.sroa.0.i.i = alloca [3 x double], align 8     ; 4 uses
  %i.a = load double, ptr %1, align 8, !tbaa !1192 ; 6 uses
  %i.b = load double, ptr %2, align 8, !tbaa !1192 ; 6 uses
  %i.c = fcmp oeq double %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !1192 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !1192 ; 2 uses
  %i.h = fcmp oeq double %i.e, %i.g
  br i1 %i.h, label %.split, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit

.split:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !1192
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load double, ptr %i.k, align 8, !tbaa !1192
  %i.m = fcmp olt double %i.j, %i.l
  br i1 %i.m, label %bb.c, label %bb.j

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit: ; preds = %bb.a, %bb.b
  %.lcssa21.i.i.i = phi double [ %i.a, %bb.a ], [ %i.e, %bb.b ]
  %.lcssa.i.i.i = phi double [ %i.b, %bb.a ], [ %i.g, %bb.b ]
  %i.n = fcmp olt double %.lcssa21.i.i.i, %.lcssa.i.i.i
  br i1 %i.n, label %bb.c, label %bb.j

bb.c:                                             ; preds = %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit
  %i.o = load double, ptr %3, align 8, !tbaa !1192 ; 4 uses
  %i.p = fcmp oeq double %i.b, %i.o
  br i1 %i.p, label %bb.d, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit25

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !1192 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load double, ptr %i.s, align 8, !tbaa !1192 ; 2 uses
  %i.u = fcmp oeq double %i.r, %i.t
  br i1 %i.u, label %.split43, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit25

.split43:                                         ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load double, ptr %i.v, align 8, !tbaa !1192
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = load double, ptr %i.x, align 8, !tbaa !1192
  %i.z = fcmp olt double %i.w, %i.y
  br i1 %i.z, label %bb.e, label %bb.f

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit25: ; preds = %bb.c, %bb.d
  %.lcssa21.i.i.i22 = phi double [ %i.b, %bb.c ], [ %i.r, %bb.d ]
  %.lcssa.i.i.i23 = phi double [ %i.o, %bb.c ], [ %i.t, %bb.d ]
  %i.aa = fcmp olt double %.lcssa21.i.i.i22, %.lcssa.i.i.i23
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.split43, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit25
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  br label %bb.q

bb.f:                                             ; preds = %.split43, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit25
  %i.ab = fcmp oeq double %i.a, %i.o
  br i1 %i.ab, label %bb.g, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_04tree8LeafNodeINS3_4math4Vec3IdEELj3EE9medianAllEPS8_EUlRKT_RKT0_E_EclISA_SA_EEbSB_SE_.exit29

bb.g:                                             ; preds = %bb.f
end_hunk_10
begin_hunk_11_@_ZSt13__introselectIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEElN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_T0_T1_:bb.a
.preheader.i.i:                                   ; preds = %.preheader.i.i.backedge, %.preheader.i.i.preheader
  %.013.pn.i.i = phi ptr [ %.013.i.i, %.preheader.i.i.preheader ], [ %.114.i.i, %.preheader.i.i.backedge ] ; 3 uses
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -24 ; 6 uses
  %i.ac = load double, ptr %.114.i.i, align 8, !tbaa !1192 ; 2 uses
  %i.ad = fcmp oeq double %i.p, %i.ac
  br i1 %i.ad, label %bb.f, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit18.i.i

bb.f:                                             ; preds = %.preheader.i.i
  %i.ae = load double, ptr %i.n, align 8, !tbaa !1192 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -16
  %i.ag = load double, ptr %i.af, align 8, !tbaa !1192 ; 2 uses
  %i.ah = fcmp oeq double %i.ae, %i.ag
  br i1 %i.ah, label %.split19.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit18.i.i

.split19.i.i:                                     ; preds = %bb.f
  %i.ai = load double, ptr %i.o, align 8, !tbaa !1192
  %i.aj = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !1192
  %i.al = fcmp olt double %i.ai, %i.ak
  br i1 %i.al, label %.preheader.i.i.backedge, label %bb.g

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit18.i.i: ; preds = %bb.f, %.preheader.i.i
  %.lcssa21.i.i.i15.i.i = phi double [ %i.p, %.preheader.i.i ], [ %i.ae, %bb.f ]
  %.lcssa.i.i.i16.i.i = phi double [ %i.ac, %.preheader.i.i ], [ %i.ag, %bb.f ]
  %i.am = fcmp olt double %.lcssa21.i.i.i15.i.i, %.lcssa.i.i.i16.i.i
  br i1 %i.am, label %.preheader.i.i.backedge, label %bb.g

.preheader.i.i.backedge:                          ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit18.i.i, %.split19.i.i
  br label %.preheader.i.i, !llvm.loop !14435

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit18.i.i, %.split19.i.i
  %i.an = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.an, label %bb.h, label %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEESP_SP_SP_T0_.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.1.i.i, i64 24, i1 false), !tbaa.struct !5443
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.1.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.114.i.i, i64 24, i1 false), !tbaa.struct !5443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.114.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i, i64 24, i1 false), !tbaa.struct !5443
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.ao = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  br label %bb.b, !llvm.loop !14436

_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEESP_SP_SP_T0_.exit: ; preds = %bb.g
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %..021 = select i1 %.not, ptr %.1.i.i, ptr %.0213467 ; 4 uses
  %.0. = select i1 %.not, ptr %.03566, ptr %.1.i.i ; 4 uses
  %i.ap = ptrtoint ptr %..021 to i64
  %i.aq = ptrtoint ptr %.0. to i64                ; 2 uses
  %i.ar = sub i64 %i.ap, %i.aq                    ; 2 uses
  %i.as = icmp sgt i64 %i.ar, 72
  br i1 %i.as, label %.lr.ph, label %._crit_edge, !llvm.loop !14433

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEESP_SP_SP_T0_.exit, %bb.a
  %.021.lcssa = phi ptr [ %2, %bb.a ], [ %..021, %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEESP_SP_SP_T0_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.0., %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEESP_SP_SP_T0_.exit ] ; 9 uses
  %.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.aq, %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEESP_SP_SP_T0_.exit ]
  %i.at = icmp eq ptr %.0.lcssa, %.021.lcssa
  br i1 %i.at, label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_T0_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge
  %.017.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 24 ; 2 uses
  %.not18.i = icmp eq ptr %.017.i, %.021.lcssa
  br i1 %.not18.i, label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.s, %.lr.ph.i
  %.020.i = phi ptr [ %.017.i, %.lr.ph.i ], [ %.0.i, %bb.s ] ; 6 uses
  %.pn19.i = phi ptr [ %.0.lcssa, %.lr.ph.i ], [ %.020.i, %bb.s ] ; 6 uses
  %i.aw = load double, ptr %.020.i, align 8, !tbaa !1192 ; 5 uses
  %i.ax = load double, ptr %.0.lcssa, align 8, !tbaa !1192 ; 2 uses
  %i.ay = fcmp oeq double %i.aw, %i.ax
  br i1 %i.ay, label %bb.j, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 32
  %i.ba = load double, ptr %i.az, align 8, !tbaa !1192 ; 3 uses
  %i.bb = load double, ptr %i.au, align 8, !tbaa !1192 ; 2 uses
  %i.bc = fcmp oeq double %i.ba, %i.bb
  br i1 %i.bc, label %.split.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i

.split.i:                                         ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 40
  %i.be = load double, ptr %i.bd, align 8, !tbaa !1192 ; 2 uses
  %i.bf = load double, ptr %i.av, align 8, !tbaa !1192
  %i.bg = fcmp olt double %i.be, %i.bf
  br i1 %i.bg, label %bb.k, label %bb.o

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i: ; preds = %bb.j, %bb.i
  %.lcssa21.i.i.i.i = phi double [ %i.aw, %bb.i ], [ %i.ba, %bb.j ]
  %.lcssa.i.i.i.i = phi double [ %i.ax, %bb.i ], [ %i.bb, %bb.j ]
  %i.bh = fcmp olt double %.lcssa21.i.i.i.i, %.lcssa.i.i.i.i
  br i1 %i.bh, label %bb.k, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit._crit_edge.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit._crit_edge.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i
  %.sroa.5.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 32
  %.sroa.5.0.copyload.i.pre.i = load double, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i, align 8
  %.sroa.6.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 40
  %.sroa.6.0.copyload.i.pre.i = load double, ptr %.sroa.6.0..sroa_idx.i.phi.trans.insert.i, align 8, !tbaa !768
  br label %bb.o

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.i, ptr noundef nonnull align 8 dereferenceable(24) %.020.i, i64 24, i1 false), !tbaa.struct !5443
  %i.bi = ptrtoint ptr %.020.i to i64
  %i.bj = sub i64 %i.bi, %.lcssa                  ; 4 uses
  %i.bk = icmp sgt i64 %i.bj, 24
  br i1 %i.bk, label %bb.l, label %bb.m, !prof !1979

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 48
  %.neg35.i = udiv exact i64 %i.bj, 24
  %.neg35.neg.i = sub nsw i64 0, %.neg35.i
  %i.bm = getelementptr inbounds [24 x i8], ptr %i.bl, i64 %.neg35.neg.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bm, ptr noundef nonnull align 8 dereferenceable(1) %.0.lcssa, i64 %i.bj, i1 false)
  br label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEESA_ET0_T_SC_SB_.exit.i

bb.m:                                             ; preds = %bb.k
  %i.bn = icmp eq i64 %i.bj, 24
  br i1 %i.bn, label %bb.n, label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEESA_ET0_T_SC_SB_.exit.i

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %.0.lcssa, i64 24, i1 false), !tbaa.struct !5443
  br label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEESA_ET0_T_SC_SB_.exit.i

_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEESA_ET0_T_SC_SB_.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.i, i64 24, i1 false), !tbaa.struct !5443
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i)
  br label %bb.s

bb.o:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit._crit_edge.i, %.split.i
  %.sroa.6.0.copyload.i.i = phi double [ %.sroa.6.0.copyload.i.pre.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit._crit_edge.i ], [ %i.be, %.split.i ] ; 2 uses
  %.sroa.5.0.copyload.i.i = phi double [ %.sroa.5.0.copyload.i.pre.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit._crit_edge.i ], [ %i.ba, %.split.i ] ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %bb.o
  %.09.i.i = phi ptr [ %.020.i, %bb.o ], [ %.0.i.i26, %bb.r ] ; 7 uses
  %.0.i.i26 = getelementptr inbounds i8, ptr %.09.i.i, i64 -24 ; 3 uses
  %i.bp = load double, ptr %.0.i.i26, align 8, !tbaa !1192 ; 2 uses
  %i.bq = fcmp oeq double %i.aw, %i.bp
  br i1 %i.bq, label %bb.q, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclISP_PSP_EEbSN_T0_.exit.i.i

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds i8, ptr %.09.i.i, i64 -16
  %i.bs = load double, ptr %i.br, align 8, !tbaa !1192 ; 2 uses
  %i.bt = fcmp oeq double %.sroa.5.0.copyload.i.i, %i.bs
  br i1 %i.bt, label %.split.i.i29, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclISP_PSP_EEbSN_T0_.exit.i.i

.split.i.i29:                                     ; preds = %bb.q
  %i.bu = getelementptr inbounds i8, ptr %.09.i.i, i64 -8
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !1192
  %i.bw = fcmp olt double %.sroa.6.0.copyload.i.i, %i.bv
  br i1 %i.bw, label %bb.r, label %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclISP_PSP_EEbSN_T0_.exit.i.i: ; preds = %bb.q, %bb.p
  %.lcssa21.i.i.i.i.i27 = phi double [ %i.aw, %bb.p ], [ %.sroa.5.0.copyload.i.i, %bb.q ]
  %.lcssa.i.i.i.i.i28 = phi double [ %i.bp, %bb.p ], [ %i.bs, %bb.q ]
  %i.bx = fcmp olt double %.lcssa21.i.i.i.i.i27, %.lcssa.i.i.i.i.i28
  br i1 %i.bx, label %bb.r, label %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_T0_.exit.i

bb.r:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclISP_PSP_EEbSN_T0_.exit.i.i, %.split.i.i29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i26, i64 24, i1 false), !tbaa.struct !5443
  br label %bb.p, !llvm.loop !14437

_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_T0_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclISP_PSP_EEbSN_T0_.exit.i.i, %.split.i.i29
  store double %i.aw, ptr %.09.i.i, align 8
  %.sroa.5.0..09.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  store double %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..09.sroa_idx.i.i, align 8
  %.sroa.6.0..09.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  store double %.sroa.6.0.copyload.i.i, ptr %.sroa.6.0..09.sroa_idx.i.i, align 8, !tbaa !768
  br label %bb.s

bb.s:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_T0_.exit.i, %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEESA_ET0_T_SC_SB_.exit.i
  %.0.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %.021.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_T0_.exit, label %bb.i, !llvm.loop !14438

_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_T0_.exit: ; preds = %bb.s, %.preheader.i, %._crit_edge, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.4088", align 1
  call void @_ZSt11__make_heapIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = add nsw i64 %i.g, -1
  %i.i = sdiv i64 %i.h, 2
  %i.j = icmp sgt i64 %i.f, 48
  %i.k = and i64 %i.g, 1
  %i.l = icmp eq i64 %i.k, 0
  %i.m = add nsw i64 %i.g, -2
  %i.n = ashr exact i64 %i.m, 1                   ; 2 uses
  %4 = add nsw i64 %i.g, -1                       ; 2 uses
  %i.o = getelementptr inbounds [24 x i8], ptr %0, i64 %4
  %i.p = getelementptr inbounds [24 x i8], ptr %0, i64 %i.n
  br label %bb.b

._crit_edge:                                      ; preds = %bb.l, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %.011 = phi ptr [ %1, %.lr.ph ], [ %i.bn, %bb.l ] ; 7 uses
  %i.q = load double, ptr %.011, align 8, !tbaa !1192 ; 5 uses
  %i.r = load double, ptr %0, align 8, !tbaa !1192 ; 2 uses
  %i.s = fcmp oeq double %i.q, %i.r
  br i1 %i.s, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.011, i64 8
  %i.u = load double, ptr %i.t, align 8, !tbaa !1192 ; 3 uses
  %i.v = load double, ptr %i.b, align 8, !tbaa !1192 ; 2 uses
  %i.w = fcmp oeq double %i.u, %i.v
  br i1 %i.w, label %.split, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit

.split:                                           ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.011, i64 16
  %i.y = load double, ptr %i.x, align 8, !tbaa !1192 ; 2 uses
  %i.z = load double, ptr %i.c, align 8, !tbaa !1192
  %i.aa = fcmp olt double %i.y, %i.z
  br i1 %i.aa, label %bb.d, label %bb.l

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit: ; preds = %bb.b, %bb.c
  %.lcssa21.i.i.i = phi double [ %i.q, %bb.b ], [ %i.u, %bb.c ]
  %.lcssa.i.i.i = phi double [ %i.r, %bb.b ], [ %i.v, %bb.c ]
  %i.ab = fcmp olt double %.lcssa21.i.i.i, %.lcssa.i.i.i
  br i1 %i.ab, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit._crit_edge, label %bb.l

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit._crit_edge: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit
  %.sroa.01.sroa.4.0..sroa_idx.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.011, i64 8
  %.sroa.01.sroa.4.0.copyload.i.pre = load double, ptr %.sroa.01.sroa.4.0..sroa_idx.i.phi.trans.insert, align 8
  %.sroa.01.sroa.5.0..sroa_idx.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.011, i64 16
  %.sroa.01.sroa.5.0.copyload.i.pre = load double, ptr %.sroa.01.sroa.5.0..sroa_idx.i.phi.trans.insert, align 8, !tbaa !768
  br label %bb.d

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit._crit_edge, %.split
  %.sroa.01.sroa.5.0.copyload.i = phi double [ %.sroa.01.sroa.5.0.copyload.i.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit._crit_edge ], [ %i.y, %.split ] ; 2 uses
  %.sroa.01.sroa.4.0.copyload.i = phi double [ %.sroa.01.sroa.4.0.copyload.i.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit._crit_edge ], [ %i.u, %.split ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.011, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !5443
  br i1 %i.j, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i.i
  %.033.i.i = phi i64 [ %spec.select.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.ac = shl i64 %.033.i.i, 1                    ; 3 uses
  %i.ad = add i64 %i.ac, 2                        ; 2 uses
  %i.ae = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ad ; 3 uses
  %i.af = getelementptr [24 x i8], ptr %0, i64 %i.ac ; 3 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 24
  %i.ah = load double, ptr %i.ae, align 8, !tbaa !1192 ; 2 uses
  %i.ai = load double, ptr %i.ag, align 8, !tbaa !1192 ; 2 uses
  %i.aj = fcmp oeq double %i.ah, %i.ai
  br i1 %i.aj, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.al = load double, ptr %i.ak, align 8, !tbaa !1192 ; 2 uses
  %i.am = getelementptr i8, ptr %i.af, i64 32
  %i.an = load double, ptr %i.am, align 8, !tbaa !1192 ; 2 uses
  %i.ao = fcmp oeq double %i.al, %i.an
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !1192
  %i.ar = getelementptr i8, ptr %i.af, i64 40
  %i.as = load double, ptr %i.ar, align 8, !tbaa !1192
  %i.at = fcmp olt double %i.aq, %i.as
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i.i

bb.g:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.lcssa21.i.i.i.i.i = phi double [ %i.ah, %.lr.ph.i.i ], [ %i.al, %bb.e ]
  %.lcssa.i.i.i.i.i = phi double [ %i.ai, %.lr.ph.i.i ], [ %i.an, %bb.e ]
  %i.au = fcmp olt double %.lcssa21.i.i.i.i.i, %.lcssa.i.i.i.i.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i.i: ; preds = %bb.g, %bb.f
  %.1.i.i.i.i.i = phi i1 [ %i.at, %bb.f ], [ %i.au, %bb.g ]
  %i.av = or disjoint i64 %i.ac, 1
  %spec.select.i.i = select i1 %.1.i.i.i.i.i, i64 %i.av, i64 %i.ad ; 4 uses
  %i.aw = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select.i.i
  %i.ax = getelementptr inbounds [24 x i8], ptr %0, i64 %.033.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false), !tbaa.struct !5443
  %i.ay = icmp slt i64 %spec.select.i.i, %i.i
  br i1 %i.ay, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !702

._crit_edge.i.i:                                  ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i.i, %bb.d
  %.0.lcssa.i.i = phi i64 [ 0, %bb.d ], [ %spec.select.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i.i ] ; 2 uses
  %i.az = icmp eq i64 %.0.lcssa.i.i, %i.n
  %or.cond = select i1 %i.l, i1 %i.az, i1 false
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !tbaa.struct !5443
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i
  %.127.i.i = phi i64 [ %4, %bb.h ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ba = icmp sgt i64 %.127.i.i, 0
  br i1 %i.ba, label %.lr.ph.i.i.i, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_RT0_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.i, %bb.k
  %.01316.i.i.i = phi i64 [ %.017.i.i910.i, %bb.k ], [ %.127.i.i, %bb.i ] ; 4 uses
  %.017.in.i.i.i = add nsw i64 %.01316.i.i.i, -1
  %.017.i.i910.i = lshr i64 %.017.in.i.i.i, 1     ; 3 uses
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.017.i.i910.i ; 4 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !1192 ; 2 uses
  %i.bd = fcmp oeq double %i.bc, %i.q
  br i1 %i.bd, label %bb.j, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SP_EEbSL_RT0_.exit.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bf = load double, ptr %i.be, align 8, !tbaa !1192 ; 2 uses
  %i.bg = fcmp oeq double %i.bf, %.sroa.01.sroa.4.0.copyload.i
  br i1 %i.bg, label %.split.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SP_EEbSL_RT0_.exit.i.i.i

.split.i.i.i:                                     ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !1192
  %i.bj = fcmp olt double %i.bi, %.sroa.01.sroa.5.0.copyload.i
  br i1 %i.bj, label %bb.k, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_RT0_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SP_EEbSL_RT0_.exit.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i
  %.lcssa21.i.i.i.i.i.i = phi double [ %i.bc, %.lr.ph.i.i.i ], [ %i.bf, %bb.j ]
  %.lcssa.i.i.i.i.i.i = phi double [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.01.sroa.4.0.copyload.i, %bb.j ]
  %i.bk = fcmp olt double %.lcssa21.i.i.i.i.i.i, %.lcssa.i.i.i.i.i.i
  br i1 %i.bk, label %bb.k, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_RT0_.exit

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SP_EEbSL_RT0_.exit.i.i.i, %.split.i.i.i
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.01316.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false), !tbaa.struct !5443
  %.not.i = icmp eq i64 %.017.i.i910.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !703

_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_RT0_.exit: ; preds = %.split.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SP_EEbSL_RT0_.exit.i.i.i, %bb.k, %bb.i
  %.013.lcssa.i.i.i = phi i64 [ %.127.i.i, %bb.i ], [ %.01316.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SP_EEbSL_RT0_.exit.i.i.i ], [ 0, %bb.k ], [ %.01316.i.i.i, %.split.i.i.i ]
  %i.bm = getelementptr inbounds [24 x i8], ptr %0, i64 %.013.lcssa.i.i.i ; 3 uses
  store double %i.q, ptr %i.bm, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store double %.sroa.01.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store double %.sroa.01.sroa.5.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !768
  br label %bb.l

bb.l:                                             ; preds = %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit, %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_RT0_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %.011, i64 24 ; 2 uses
  %i.bo = icmp ult ptr %i.bn, %2
  br i1 %i.bo, label %bb.b, label %._crit_edge, !llvm.loop !14439
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp slt i64 %i.c, 48
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = udiv exact i64 %i.c, 24                  ; 4 uses
  %i.f = add nsw i64 %i.e, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.e, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.e, 1
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %3 = add nsw i64 %i.e, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_T0_SW_T1_T2_.exit, %bb.b
  %.014 = phi i64 [ %i.g, %bb.b ], [ %i.bf, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_T0_SW_T1_T2_.exit ] ; 8 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.014 ; 2 uses
  %i.p = load <2 x double>, ptr %i.o, align 8     ; 3 uses
  %.sroa.01.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.01.sroa.5.0.copyload = load double, ptr %.sroa.01.sroa.5.0..sroa_idx, align 8, !tbaa !768 ; 2 uses
  %i.q = icmp slt i64 %.014, %i.i
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i
  %.033.i = phi i64 [ %spec.select.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i ], [ %.014, %bb.c ] ; 2 uses
  %i.r = shl i64 %.033.i, 1                       ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [24 x i8], ptr %0, i64 %i.s ; 3 uses
  %i.u = getelementptr [24 x i8], ptr %0, i64 %i.r ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 24
  %i.w = load double, ptr %i.t, align 8, !tbaa !1192 ; 2 uses
  %i.x = load double, ptr %i.v, align 8, !tbaa !1192 ; 2 uses
  %i.y = fcmp oeq double %i.w, %i.x
  br i1 %i.y, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.aa = load double, ptr %i.z, align 8, !tbaa !1192 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.u, i64 32
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !1192 ; 2 uses
  %i.ad = fcmp oeq double %i.aa, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.af = load double, ptr %i.ae, align 8, !tbaa !1192
  %i.ag = getelementptr i8, ptr %i.u, i64 40
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !1192
  %i.ai = fcmp olt double %i.af, %i.ah
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i

bb.f:                                             ; preds = %bb.d, %.lr.ph.i
  %.lcssa21.i.i.i.i = phi double [ %i.w, %.lr.ph.i ], [ %i.aa, %bb.d ]
  %.lcssa.i.i.i.i = phi double [ %i.x, %.lr.ph.i ], [ %i.ac, %bb.d ]
  %i.aj = fcmp olt double %.lcssa21.i.i.i.i, %.lcssa.i.i.i.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i: ; preds = %bb.f, %bb.e
  %.1.i.i.i.i = phi i1 [ %i.ai, %bb.e ], [ %i.aj, %bb.f ]
  %i.ak = or disjoint i64 %i.r, 1
  %spec.select.i = select i1 %.1.i.i.i.i, i64 %i.ak, i64 %i.s ; 4 uses
  %i.al = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select.i
  %i.am = getelementptr inbounds [24 x i8], ptr %0, i64 %.033.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !tbaa.struct !5443
  %i.an = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !702

._crit_edge.i:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.014, %bb.c ], [ %spec.select.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i ] ; 2 uses
  %i.ao = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !tbaa.struct !5443
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i
  %.127.i = phi i64 [ %3, %bb.g ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ap = icmp sgt i64 %.127.i, %.014
  br i1 %i.ap, label %.lr.ph.i.i.preheader, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_T0_SW_T1_T2_.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.h
  %i.aq = extractelement <2 x double> %i.p, i64 0 ; 2 uses
  %i.ar = extractelement <2 x double> %i.p, i64 1 ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.j
  %.01316.i.i = phi i64 [ %.017.i.i, %bb.j ], [ %.127.i, %.lr.ph.i.i.preheader ] ; 4 uses
  %.017.in.i.i = add nsw i64 %.01316.i.i, -1
  %.017.i.i = sdiv i64 %.017.in.i.i, 2            ; 4 uses
  %i.as = getelementptr inbounds [24 x i8], ptr %0, i64 %.017.i.i ; 4 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !1192 ; 2 uses
  %i.au = fcmp oeq double %i.at, %i.aq
  br i1 %i.au, label %bb.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SP_EEbSL_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.aw = load double, ptr %i.av, align 8, !tbaa !1192 ; 2 uses
  %i.ax = fcmp oeq double %i.aw, %i.ar
  br i1 %i.ax, label %.split.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SP_EEbSL_RT0_.exit.i.i

.split.i.i:                                       ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.az = load double, ptr %i.ay, align 8, !tbaa !1192
  %i.ba = fcmp olt double %i.az, %.sroa.01.sroa.5.0.copyload
  br i1 %i.ba, label %bb.j, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_T0_SW_T1_T2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SP_EEbSL_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i
  %.lcssa21.i.i.i.i.i = phi double [ %i.at, %.lr.ph.i.i ], [ %i.aw, %bb.i ]
  %.lcssa.i.i.i.i.i = phi double [ %i.aq, %.lr.ph.i.i ], [ %i.ar, %bb.i ]
  %i.bb = fcmp olt double %.lcssa21.i.i.i.i.i, %.lcssa.i.i.i.i.i
  br i1 %i.bb, label %bb.j, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_T0_SW_T1_T2_.exit

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SP_EEbSL_RT0_.exit.i.i, %.split.i.i
  %i.bc = getelementptr inbounds [24 x i8], ptr %0, i64 %.01316.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !tbaa.struct !5443
  %i.bd = icmp sgt i64 %.017.i.i, %.014
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_T0_SW_T1_T2_.exit, !llvm.loop !703

_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_T0_SW_T1_T2_.exit: ; preds = %.split.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SP_EEbSL_RT0_.exit.i.i, %bb.j, %bb.h
  %.013.lcssa.i.i = phi i64 [ %.127.i, %bb.h ], [ %.01316.i.i, %.split.i.i ], [ %.017.i.i, %bb.j ], [ %.01316.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SP_EEbSL_RT0_.exit.i.i ]
  %i.be = getelementptr inbounds [24 x i8], ptr %0, i64 %.013.lcssa.i.i ; 2 uses
  store <2 x double> %i.p, ptr %i.be, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store double %.sroa.01.sroa.5.0.copyload, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !768
  %.not = icmp eq i64 %.014, 0
  %i.bf = add nsw i64 %.014, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !14440

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_T0_SW_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_8LeafNodeIS6_Lj3EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINSI_IS8_Lj4EEELj5EEEEEEELj0EE6medianISJ_EENT_9ValueTypeERSP_EUlRKS9_ST_E_EEEvSP_SP_SP_SP_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 comdat {
bb.a:
  %.sroa.0.i.i42 = alloca [3 x double], align 8   ; 4 uses
  %.sroa.0.i.i41 = alloca [3 x double], align 8   ; 4 uses
  %.sroa.0.i.i36 = alloca [3 x double], align 8   ; 4 uses
  %.sroa.0.i.i31 = alloca [3 x double], align 8   ; 4 uses
  %.sroa.0.i.i30 = alloca [3 x double], align 8   ; 4 uses
  %.sroa.0.i.i = alloca [3 x double], align 8     ; 4 uses
  %i.a = load double, ptr %1, align 8, !tbaa !1192 ; 6 uses
  %i.b = load double, ptr %2, align 8, !tbaa !1192 ; 6 uses
  %i.c = fcmp oeq double %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !1192 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !1192 ; 2 uses
  %i.h = fcmp oeq double %i.e, %i.g
  br i1 %i.h, label %.split, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit

.split:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !1192
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load double, ptr %i.k, align 8, !tbaa !1192
  %i.m = fcmp olt double %i.j, %i.l
  br i1 %i.m, label %bb.c, label %bb.j

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit: ; preds = %bb.a, %bb.b
  %.lcssa21.i.i.i = phi double [ %i.a, %bb.a ], [ %i.e, %bb.b ]
  %.lcssa.i.i.i = phi double [ %i.b, %bb.a ], [ %i.g, %bb.b ]
  %i.n = fcmp olt double %.lcssa21.i.i.i, %.lcssa.i.i.i
  br i1 %i.n, label %bb.c, label %bb.j

bb.c:                                             ; preds = %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit
  %i.o = load double, ptr %3, align 8, !tbaa !1192 ; 4 uses
  %i.p = fcmp oeq double %i.b, %i.o
  br i1 %i.p, label %bb.d, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit25

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !1192 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load double, ptr %i.s, align 8, !tbaa !1192 ; 2 uses
  %i.u = fcmp oeq double %i.r, %i.t
  br i1 %i.u, label %.split43, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit25

.split43:                                         ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load double, ptr %i.v, align 8, !tbaa !1192
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = load double, ptr %i.x, align 8, !tbaa !1192
  %i.z = fcmp olt double %i.w, %i.y
  br i1 %i.z, label %bb.e, label %bb.f

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit25: ; preds = %bb.c, %bb.d
  %.lcssa21.i.i.i22 = phi double [ %i.b, %bb.c ], [ %i.r, %bb.d ]
  %.lcssa.i.i.i23 = phi double [ %i.o, %bb.c ], [ %i.t, %bb.d ]
  %i.aa = fcmp olt double %.lcssa21.i.i.i22, %.lcssa.i.i.i23
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.split43, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit25
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !5443
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !5443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, i64 24, i1 false), !tbaa.struct !5443
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  br label %bb.q

bb.f:                                             ; preds = %.split43, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit25
  %i.ab = fcmp oeq double %i.a, %i.o
  br i1 %i.ab, label %bb.g, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISF_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SE_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit29

bb.g:                                             ; preds = %bb.f
end_hunk_11
begin_hunk_12_@_ZSt13__introselectIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEElN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS7_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_SP_T0_T1_:bb.a
.preheader.i.i:                                   ; preds = %.preheader.i.i.backedge, %.preheader.i.i.preheader
  %.013.pn.i.i = phi ptr [ %.013.i.i, %.preheader.i.i.preheader ], [ %.114.i.i, %.preheader.i.i.backedge ] ; 3 uses
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -24 ; 6 uses
  %i.ac = load double, ptr %.114.i.i, align 8, !tbaa !1192 ; 2 uses
  %i.ad = fcmp oeq double %i.p, %i.ac
  br i1 %i.ad, label %bb.f, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit18.i.i

bb.f:                                             ; preds = %.preheader.i.i
  %i.ae = load double, ptr %i.n, align 8, !tbaa !1192 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -16
  %i.ag = load double, ptr %i.af, align 8, !tbaa !1192 ; 2 uses
  %i.ah = fcmp oeq double %i.ae, %i.ag
  br i1 %i.ah, label %.split19.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit18.i.i

.split19.i.i:                                     ; preds = %bb.f
  %i.ai = load double, ptr %i.o, align 8, !tbaa !1192
  %i.aj = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !1192
  %i.al = fcmp olt double %i.ai, %i.ak
  br i1 %i.al, label %.preheader.i.i.backedge, label %bb.g

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit18.i.i: ; preds = %bb.f, %.preheader.i.i
  %.lcssa21.i.i.i15.i.i = phi double [ %i.p, %.preheader.i.i ], [ %i.ae, %bb.f ]
  %.lcssa.i.i.i16.i.i = phi double [ %i.ac, %.preheader.i.i ], [ %i.ag, %bb.f ]
  %i.am = fcmp olt double %.lcssa21.i.i.i15.i.i, %.lcssa.i.i.i16.i.i
  br i1 %i.am, label %.preheader.i.i.backedge, label %bb.g

.preheader.i.i.backedge:                          ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit18.i.i, %.split19.i.i
  br label %.preheader.i.i, !llvm.loop !14452

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit18.i.i, %.split19.i.i
  %i.an = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.an, label %bb.h, label %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS7_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEESP_SP_SP_T0_.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.1.i.i, i64 24, i1 false), !tbaa.struct !5443
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.1.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.114.i.i, i64 24, i1 false), !tbaa.struct !5443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.114.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i, i64 24, i1 false), !tbaa.struct !5443
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.ao = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  br label %bb.b, !llvm.loop !14453

_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS7_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEESP_SP_SP_T0_.exit: ; preds = %bb.g
  %.not = icmp ugt ptr %.1.i.i, %1                ; 2 uses
  %..021 = select i1 %.not, ptr %.1.i.i, ptr %.0213467 ; 4 uses
  %.0. = select i1 %.not, ptr %.03566, ptr %.1.i.i ; 4 uses
  %i.ap = ptrtoint ptr %..021 to i64
  %i.aq = ptrtoint ptr %.0. to i64                ; 2 uses
  %i.ar = sub i64 %i.ap, %i.aq                    ; 2 uses
  %i.as = icmp sgt i64 %i.ar, 72
  br i1 %i.as, label %.lr.ph, label %._crit_edge, !llvm.loop !14450

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS7_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEESP_SP_SP_T0_.exit, %bb.a
  %.021.lcssa = phi ptr [ %2, %bb.a ], [ %..021, %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS7_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEESP_SP_SP_T0_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.0., %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS7_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEESP_SP_SP_T0_.exit ] ; 9 uses
  %.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.aq, %_ZSt27__unguarded_partition_pivotIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS7_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEESP_SP_SP_T0_.exit ]
  %i.at = icmp eq ptr %.0.lcssa, %.021.lcssa
  br i1 %i.at, label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS7_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_T0_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge
  %.017.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 24 ; 2 uses
  %.not18.i = icmp eq ptr %.017.i, %.021.lcssa
  br i1 %.not18.i, label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS7_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.s, %.lr.ph.i
  %.020.i = phi ptr [ %.017.i, %.lr.ph.i ], [ %.0.i, %bb.s ] ; 6 uses
  %.pn19.i = phi ptr [ %.0.lcssa, %.lr.ph.i ], [ %.020.i, %bb.s ] ; 6 uses
  %i.aw = load double, ptr %.020.i, align 8, !tbaa !1192 ; 5 uses
  %i.ax = load double, ptr %.0.lcssa, align 8, !tbaa !1192 ; 2 uses
  %i.ay = fcmp oeq double %i.aw, %i.ax
  br i1 %i.ay, label %bb.j, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 32
  %i.ba = load double, ptr %i.az, align 8, !tbaa !1192 ; 3 uses
  %i.bb = load double, ptr %i.au, align 8, !tbaa !1192 ; 2 uses
  %i.bc = fcmp oeq double %i.ba, %i.bb
  br i1 %i.bc, label %.split.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i

.split.i:                                         ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 40
  %i.be = load double, ptr %i.bd, align 8, !tbaa !1192 ; 2 uses
  %i.bf = load double, ptr %i.av, align 8, !tbaa !1192
  %i.bg = fcmp olt double %i.be, %i.bf
  br i1 %i.bg, label %bb.k, label %bb.o

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i: ; preds = %bb.j, %bb.i
  %.lcssa21.i.i.i.i = phi double [ %i.aw, %bb.i ], [ %i.ba, %bb.j ]
  %.lcssa.i.i.i.i = phi double [ %i.ax, %bb.i ], [ %i.bb, %bb.j ]
  %i.bh = fcmp olt double %.lcssa21.i.i.i.i, %.lcssa.i.i.i.i
  br i1 %i.bh, label %bb.k, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit._crit_edge.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit._crit_edge.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i
  %.sroa.5.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 32
  %.sroa.5.0.copyload.i.pre.i = load double, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i, align 8
  %.sroa.6.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 40
  %.sroa.6.0.copyload.i.pre.i = load double, ptr %.sroa.6.0..sroa_idx.i.phi.trans.insert.i, align 8, !tbaa !768
  br label %bb.o

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.i, ptr noundef nonnull align 8 dereferenceable(24) %.020.i, i64 24, i1 false), !tbaa.struct !5443
  %i.bi = ptrtoint ptr %.020.i to i64
  %i.bj = sub i64 %i.bi, %.lcssa                  ; 4 uses
  %i.bk = icmp sgt i64 %i.bj, 24
  br i1 %i.bk, label %bb.l, label %bb.m, !prof !1979

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 48
  %.neg35.i = udiv exact i64 %i.bj, 24
  %.neg35.neg.i = sub nsw i64 0, %.neg35.i
  %i.bm = getelementptr inbounds [24 x i8], ptr %i.bl, i64 %.neg35.neg.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bm, ptr noundef nonnull align 8 dereferenceable(1) %.0.lcssa, i64 %i.bj, i1 false)
  br label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEESC_ET0_T_SE_SD_.exit.i

bb.m:                                             ; preds = %bb.k
  %i.bn = icmp eq i64 %i.bj, 24
  br i1 %i.bn, label %bb.n, label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEESC_ET0_T_SE_SD_.exit.i

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %.0.lcssa, i64 24, i1 false), !tbaa.struct !5443
  br label %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEESC_ET0_T_SE_SD_.exit.i

_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEESC_ET0_T_SE_SD_.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.i, i64 24, i1 false), !tbaa.struct !5443
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i)
  br label %bb.s

bb.o:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit._crit_edge.i, %.split.i
  %.sroa.6.0.copyload.i.i = phi double [ %.sroa.6.0.copyload.i.pre.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit._crit_edge.i ], [ %i.be, %.split.i ] ; 2 uses
  %.sroa.5.0.copyload.i.i = phi double [ %.sroa.5.0.copyload.i.pre.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit._crit_edge.i ], [ %i.ba, %.split.i ] ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %bb.o
  %.09.i.i = phi ptr [ %.020.i, %bb.o ], [ %.0.i.i26, %bb.r ] ; 7 uses
  %.0.i.i26 = getelementptr inbounds i8, ptr %.09.i.i, i64 -24 ; 3 uses
  %i.bp = load double, ptr %.0.i.i26, align 8, !tbaa !1192 ; 2 uses
  %i.bq = fcmp oeq double %i.aw, %i.bp
  br i1 %i.bq, label %bb.q, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclISP_PSP_EEbSN_T0_.exit.i.i

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds i8, ptr %.09.i.i, i64 -16
  %i.bs = load double, ptr %i.br, align 8, !tbaa !1192 ; 2 uses
  %i.bt = fcmp oeq double %.sroa.5.0.copyload.i.i, %i.bs
  br i1 %i.bt, label %.split.i.i29, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclISP_PSP_EEbSN_T0_.exit.i.i

.split.i.i29:                                     ; preds = %bb.q
  %i.bu = getelementptr inbounds i8, ptr %.09.i.i, i64 -8
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !1192
  %i.bw = fcmp olt double %.sroa.6.0.copyload.i.i, %i.bv
  br i1 %i.bw, label %bb.r, label %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS7_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclISP_PSP_EEbSN_T0_.exit.i.i: ; preds = %bb.q, %bb.p
  %.lcssa21.i.i.i.i.i27 = phi double [ %i.aw, %bb.p ], [ %.sroa.5.0.copyload.i.i, %bb.q ]
  %.lcssa.i.i.i.i.i28 = phi double [ %i.bp, %bb.p ], [ %i.bs, %bb.q ]
  %i.bx = fcmp olt double %.lcssa21.i.i.i.i.i27, %.lcssa.i.i.i.i.i28
  br i1 %i.bx, label %bb.r, label %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS7_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_T0_.exit.i

bb.r:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclISP_PSP_EEbSN_T0_.exit.i.i, %.split.i.i29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i26, i64 24, i1 false), !tbaa.struct !5443
  br label %bb.p, !llvm.loop !14454

_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS7_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_T0_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclISP_PSP_EEbSN_T0_.exit.i.i, %.split.i.i29
  store double %i.aw, ptr %.09.i.i, align 8
  %.sroa.5.0..09.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  store double %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..09.sroa_idx.i.i, align 8
  %.sroa.6.0..09.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  store double %.sroa.6.0.copyload.i.i, ptr %.sroa.6.0..09.sroa_idx.i.i, align 8, !tbaa !768
  br label %bb.s

bb.s:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops14_Val_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS7_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_T0_.exit.i, %_ZSt13move_backwardIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEESC_ET0_T_SE_SD_.exit.i
  %.0.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %.021.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS7_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_T0_.exit, label %bb.i, !llvm.loop !14455

_ZSt16__insertion_sortIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS7_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_T0_.exit: ; preds = %bb.s, %.preheader.i, %._crit_edge, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__heap_selectIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS7_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_SP_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.4093", align 1
  call void @_ZSt11__make_heapIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS7_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = add nsw i64 %i.g, -1
  %i.i = sdiv i64 %i.h, 2
  %i.j = icmp sgt i64 %i.f, 48
  %i.k = and i64 %i.g, 1
  %i.l = icmp eq i64 %i.k, 0
  %i.m = add nsw i64 %i.g, -2
  %i.n = ashr exact i64 %i.m, 1                   ; 2 uses
  %4 = add nsw i64 %i.g, -1                       ; 2 uses
  %i.o = getelementptr inbounds [24 x i8], ptr %0, i64 %4
  %i.p = getelementptr inbounds [24 x i8], ptr %0, i64 %i.n
  br label %bb.b

._crit_edge:                                      ; preds = %bb.l, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %.011 = phi ptr [ %1, %.lr.ph ], [ %i.bn, %bb.l ] ; 7 uses
  %i.q = load double, ptr %.011, align 8, !tbaa !1192 ; 5 uses
  %i.r = load double, ptr %0, align 8, !tbaa !1192 ; 2 uses
  %i.s = fcmp oeq double %i.q, %i.r
  br i1 %i.s, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.011, i64 8
  %i.u = load double, ptr %i.t, align 8, !tbaa !1192 ; 3 uses
  %i.v = load double, ptr %i.b, align 8, !tbaa !1192 ; 2 uses
  %i.w = fcmp oeq double %i.u, %i.v
  br i1 %i.w, label %.split, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit

.split:                                           ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.011, i64 16
  %i.y = load double, ptr %i.x, align 8, !tbaa !1192 ; 2 uses
  %i.z = load double, ptr %i.c, align 8, !tbaa !1192
  %i.aa = fcmp olt double %i.y, %i.z
  br i1 %i.aa, label %bb.d, label %bb.l

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit: ; preds = %bb.b, %bb.c
  %.lcssa21.i.i.i = phi double [ %i.q, %bb.b ], [ %i.u, %bb.c ]
  %.lcssa.i.i.i = phi double [ %i.r, %bb.b ], [ %i.v, %bb.c ]
  %i.ab = fcmp olt double %.lcssa21.i.i.i, %.lcssa.i.i.i
  br i1 %i.ab, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit._crit_edge, label %bb.l

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit._crit_edge: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit
  %.sroa.01.sroa.4.0..sroa_idx.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.011, i64 8
  %.sroa.01.sroa.4.0.copyload.i.pre = load double, ptr %.sroa.01.sroa.4.0..sroa_idx.i.phi.trans.insert, align 8
  %.sroa.01.sroa.5.0..sroa_idx.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.011, i64 16
  %.sroa.01.sroa.5.0.copyload.i.pre = load double, ptr %.sroa.01.sroa.5.0..sroa_idx.i.phi.trans.insert, align 8, !tbaa !768
  br label %bb.d

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit._crit_edge, %.split
  %.sroa.01.sroa.5.0.copyload.i = phi double [ %.sroa.01.sroa.5.0.copyload.i.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit._crit_edge ], [ %i.y, %.split ] ; 2 uses
  %.sroa.01.sroa.4.0.copyload.i = phi double [ %.sroa.01.sroa.4.0.copyload.i.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit._crit_edge ], [ %i.u, %.split ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.011, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !5443
  br i1 %i.j, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i.i
  %.033.i.i = phi i64 [ %spec.select.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.ac = shl i64 %.033.i.i, 1                    ; 3 uses
  %i.ad = add i64 %i.ac, 2                        ; 2 uses
  %i.ae = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ad ; 3 uses
  %i.af = getelementptr [24 x i8], ptr %0, i64 %i.ac ; 3 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 24
  %i.ah = load double, ptr %i.ae, align 8, !tbaa !1192 ; 2 uses
  %i.ai = load double, ptr %i.ag, align 8, !tbaa !1192 ; 2 uses
  %i.aj = fcmp oeq double %i.ah, %i.ai
  br i1 %i.aj, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.al = load double, ptr %i.ak, align 8, !tbaa !1192 ; 2 uses
  %i.am = getelementptr i8, ptr %i.af, i64 32
  %i.an = load double, ptr %i.am, align 8, !tbaa !1192 ; 2 uses
  %i.ao = fcmp oeq double %i.al, %i.an
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !1192
  %i.ar = getelementptr i8, ptr %i.af, i64 40
  %i.as = load double, ptr %i.ar, align 8, !tbaa !1192
  %i.at = fcmp olt double %i.aq, %i.as
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i.i

bb.g:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.lcssa21.i.i.i.i.i = phi double [ %i.ah, %.lr.ph.i.i ], [ %i.al, %bb.e ]
  %.lcssa.i.i.i.i.i = phi double [ %i.ai, %.lr.ph.i.i ], [ %i.an, %bb.e ]
  %i.au = fcmp olt double %.lcssa21.i.i.i.i.i, %.lcssa.i.i.i.i.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i.i: ; preds = %bb.g, %bb.f
  %.1.i.i.i.i.i = phi i1 [ %i.at, %bb.f ], [ %i.au, %bb.g ]
  %i.av = or disjoint i64 %i.ac, 1
  %spec.select.i.i = select i1 %.1.i.i.i.i.i, i64 %i.av, i64 %i.ad ; 4 uses
  %i.aw = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select.i.i
  %i.ax = getelementptr inbounds [24 x i8], ptr %0, i64 %.033.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false), !tbaa.struct !5443
  %i.ay = icmp slt i64 %spec.select.i.i, %i.i
  br i1 %i.ay, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !704

._crit_edge.i.i:                                  ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i.i, %bb.d
  %.0.lcssa.i.i = phi i64 [ 0, %bb.d ], [ %spec.select.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i.i ] ; 2 uses
  %i.az = icmp eq i64 %.0.lcssa.i.i, %i.n
  %or.cond = select i1 %i.l, i1 %i.az, i1 false
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !tbaa.struct !5443
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i
  %.127.i.i = phi i64 [ %4, %bb.h ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ba = icmp sgt i64 %.127.i.i, 0
  br i1 %i.ba, label %.lr.ph.i.i.i, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS7_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_SP_RT0_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.i, %bb.k
  %.01316.i.i.i = phi i64 [ %.017.i.i910.i, %bb.k ], [ %.127.i.i, %bb.i ] ; 4 uses
  %.017.in.i.i.i = add nsw i64 %.01316.i.i.i, -1
  %.017.i.i910.i = lshr i64 %.017.in.i.i.i, 1     ; 3 uses
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.017.i.i910.i ; 4 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !1192 ; 2 uses
  %i.bd = fcmp oeq double %i.bc, %i.q
  br i1 %i.bd, label %bb.j, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SP_EEbSL_RT0_.exit.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bf = load double, ptr %i.be, align 8, !tbaa !1192 ; 2 uses
  %i.bg = fcmp oeq double %i.bf, %.sroa.01.sroa.4.0.copyload.i
  br i1 %i.bg, label %.split.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SP_EEbSL_RT0_.exit.i.i.i

.split.i.i.i:                                     ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !1192
  %i.bj = fcmp olt double %i.bi, %.sroa.01.sroa.5.0.copyload.i
  br i1 %i.bj, label %bb.k, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS7_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_SP_RT0_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SP_EEbSL_RT0_.exit.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i
  %.lcssa21.i.i.i.i.i.i = phi double [ %i.bc, %.lr.ph.i.i.i ], [ %i.bf, %bb.j ]
  %.lcssa.i.i.i.i.i.i = phi double [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.01.sroa.4.0.copyload.i, %bb.j ]
  %i.bk = fcmp olt double %.lcssa21.i.i.i.i.i.i, %.lcssa.i.i.i.i.i.i
  br i1 %i.bk, label %bb.k, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS7_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_SP_RT0_.exit

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SP_EEbSL_RT0_.exit.i.i.i, %.split.i.i.i
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.01316.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false), !tbaa.struct !5443
  %.not.i = icmp eq i64 %.017.i.i910.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS7_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_SP_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !705

_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS7_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_SP_RT0_.exit: ; preds = %.split.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SP_EEbSL_RT0_.exit.i.i.i, %bb.k, %bb.i
  %.013.lcssa.i.i.i = phi i64 [ %.127.i.i, %bb.i ], [ %.01316.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SP_EEbSL_RT0_.exit.i.i.i ], [ 0, %bb.k ], [ %.01316.i.i.i, %.split.i.i.i ]
  %i.bm = getelementptr inbounds [24 x i8], ptr %0, i64 %.013.lcssa.i.i.i ; 3 uses
  store double %i.q, ptr %i.bm, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store double %.sroa.01.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store double %.sroa.01.sroa.5.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !768
  br label %bb.l

bb.l:                                             ; preds = %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit, %_ZSt10__pop_heapIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS7_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_SP_RT0_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %.011, i64 24 ; 2 uses
  %i.bo = icmp ult ptr %i.bn, %2
  br i1 %i.bo, label %bb.b, label %._crit_edge, !llvm.loop !14456
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS7_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp slt i64 %i.c, 48
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = udiv exact i64 %i.c, 24                  ; 4 uses
  %i.f = add nsw i64 %i.e, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.e, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.e, 1
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %3 = add nsw i64 %i.e, -1                       ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEElSB_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS7_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_T0_SW_T1_T2_.exit, %bb.b
  %.014 = phi i64 [ %i.g, %bb.b ], [ %i.bf, %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEElSB_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS7_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_T0_SW_T1_T2_.exit ] ; 8 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.014 ; 2 uses
  %i.p = load <2 x double>, ptr %i.o, align 8     ; 3 uses
  %.sroa.01.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.01.sroa.5.0.copyload = load double, ptr %.sroa.01.sroa.5.0..sroa_idx, align 8, !tbaa !768 ; 2 uses
  %i.q = icmp slt i64 %.014, %i.i
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i
  %.033.i = phi i64 [ %spec.select.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i ], [ %.014, %bb.c ] ; 2 uses
  %i.r = shl i64 %.033.i, 1                       ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [24 x i8], ptr %0, i64 %i.s ; 3 uses
  %i.u = getelementptr [24 x i8], ptr %0, i64 %i.r ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 24
  %i.w = load double, ptr %i.t, align 8, !tbaa !1192 ; 2 uses
  %i.x = load double, ptr %i.v, align 8, !tbaa !1192 ; 2 uses
  %i.y = fcmp oeq double %i.w, %i.x
  br i1 %i.y, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.aa = load double, ptr %i.z, align 8, !tbaa !1192 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.u, i64 32
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !1192 ; 2 uses
  %i.ad = fcmp oeq double %i.aa, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.af = load double, ptr %i.ae, align 8, !tbaa !1192
  %i.ag = getelementptr i8, ptr %i.u, i64 40
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !1192
  %i.ai = fcmp olt double %i.af, %i.ah
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i

bb.f:                                             ; preds = %bb.d, %.lr.ph.i
  %.lcssa21.i.i.i.i = phi double [ %i.w, %.lr.ph.i ], [ %i.aa, %bb.d ]
  %.lcssa.i.i.i.i = phi double [ %i.x, %.lr.ph.i ], [ %i.ac, %bb.d ]
  %i.aj = fcmp olt double %.lcssa21.i.i.i.i, %.lcssa.i.i.i.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i: ; preds = %bb.f, %bb.e
  %.1.i.i.i.i = phi i1 [ %i.ai, %bb.e ], [ %i.aj, %bb.f ]
  %i.ak = or disjoint i64 %i.r, 1
  %spec.select.i = select i1 %.1.i.i.i.i, i64 %i.ak, i64 %i.s ; 4 uses
  %i.al = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select.i
  %i.am = getelementptr inbounds [24 x i8], ptr %0, i64 %.033.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !tbaa.struct !5443
  %i.an = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !704

._crit_edge.i:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.014, %bb.c ], [ %spec.select.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit.i ] ; 2 uses
  %i.ao = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !tbaa.struct !5443
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i
  %.127.i = phi i64 [ %3, %bb.g ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ap = icmp sgt i64 %.127.i, %.014
  br i1 %i.ap, label %.lr.ph.i.i.preheader, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEElSB_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS7_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_T0_SW_T1_T2_.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.h
  %i.aq = extractelement <2 x double> %i.p, i64 0 ; 2 uses
  %i.ar = extractelement <2 x double> %i.p, i64 1 ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.j
  %.01316.i.i = phi i64 [ %.017.i.i, %bb.j ], [ %.127.i, %.lr.ph.i.i.preheader ] ; 4 uses
  %.017.in.i.i = add nsw i64 %.01316.i.i, -1
  %.017.i.i = sdiv i64 %.017.in.i.i, 2            ; 4 uses
  %i.as = getelementptr inbounds [24 x i8], ptr %0, i64 %.017.i.i ; 4 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !1192 ; 2 uses
  %i.au = fcmp oeq double %i.at, %i.aq
  br i1 %i.au, label %bb.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SP_EEbSL_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.aw = load double, ptr %i.av, align 8, !tbaa !1192 ; 2 uses
  %i.ax = fcmp oeq double %i.aw, %i.ar
  br i1 %i.ax, label %.split.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SP_EEbSL_RT0_.exit.i.i

.split.i.i:                                       ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.az = load double, ptr %i.ay, align 8, !tbaa !1192
  %i.ba = fcmp olt double %i.az, %.sroa.01.sroa.5.0.copyload
  br i1 %i.ba, label %bb.j, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEElSB_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS7_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_T0_SW_T1_T2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SP_EEbSL_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i
  %.lcssa21.i.i.i.i.i = phi double [ %i.at, %.lr.ph.i.i ], [ %i.aw, %bb.i ]
  %.lcssa.i.i.i.i.i = phi double [ %i.aq, %.lr.ph.i.i ], [ %i.ar, %bb.i ]
  %i.bb = fcmp olt double %.lcssa21.i.i.i.i.i, %.lcssa.i.i.i.i.i
  br i1 %i.bb, label %bb.j, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEElSB_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS7_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_T0_SW_T1_T2_.exit

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SP_EEbSL_RT0_.exit.i.i, %.split.i.i
  %i.bc = getelementptr inbounds [24 x i8], ptr %0, i64 %.01316.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !tbaa.struct !5443
  %i.bd = icmp sgt i64 %.017.i.i, %.014
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEElSB_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS7_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_T0_SW_T1_T2_.exit, !llvm.loop !705

_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEElSB_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS7_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_T0_SW_T1_T2_.exit: ; preds = %.split.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SP_EEbSL_RT0_.exit.i.i, %bb.j, %bb.h
  %.013.lcssa.i.i = phi i64 [ %.127.i, %bb.h ], [ %.01316.i.i, %.split.i.i ], [ %.017.i.i, %bb.j ], [ %.01316.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SP_EEbSL_RT0_.exit.i.i ]
  %i.be = getelementptr inbounds [24 x i8], ptr %0, i64 %.013.lcssa.i.i ; 2 uses
  store <2 x double> %i.p, ptr %i.be, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store double %.sroa.01.sroa.5.0.copyload, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !768
  %.not = icmp eq i64 %.014, 0
  %i.bf = add nsw i64 %.014, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !14457

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEElSB_N9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS7_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_T0_SW_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIPN7openvdb5v13_04tree9NodeUnionINS1_4math4Vec3IdEENS2_12InternalNodeINS2_8LeafNodeIS6_Lj3EEELj4EEEvEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS1_5tools16TolerancePruneOpINS2_4TreeINS2_8RootNodeINS7_ISA_Lj5EEEEEEELj0EE6medianISK_EENT_9ValueTypeERSP_EUlRKSB_ST_E_EEEvSP_SP_SP_SP_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 comdat {
bb.a:
  %.sroa.0.i.i42 = alloca [3 x double], align 8   ; 4 uses
  %.sroa.0.i.i41 = alloca [3 x double], align 8   ; 4 uses
  %.sroa.0.i.i36 = alloca [3 x double], align 8   ; 4 uses
  %.sroa.0.i.i31 = alloca [3 x double], align 8   ; 4 uses
  %.sroa.0.i.i30 = alloca [3 x double], align 8   ; 4 uses
  %.sroa.0.i.i = alloca [3 x double], align 8     ; 4 uses
  %i.a = load double, ptr %1, align 8, !tbaa !1192 ; 6 uses
  %i.b = load double, ptr %2, align 8, !tbaa !1192 ; 6 uses
  %i.c = fcmp oeq double %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !1192 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !1192 ; 2 uses
  %i.h = fcmp oeq double %i.e, %i.g
  br i1 %i.h, label %.split, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit

.split:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !1192
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load double, ptr %i.k, align 8, !tbaa !1192
  %i.m = fcmp olt double %i.j, %i.l
  br i1 %i.m, label %bb.c, label %bb.j

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit: ; preds = %bb.a, %bb.b
  %.lcssa21.i.i.i = phi double [ %i.a, %bb.a ], [ %i.e, %bb.b ]
  %.lcssa.i.i.i = phi double [ %i.b, %bb.a ], [ %i.g, %bb.b ]
  %i.n = fcmp olt double %.lcssa21.i.i.i, %.lcssa.i.i.i
  br i1 %i.n, label %bb.c, label %bb.j

bb.c:                                             ; preds = %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit
  %i.o = load double, ptr %3, align 8, !tbaa !1192 ; 4 uses
  %i.p = fcmp oeq double %i.b, %i.o
  br i1 %i.p, label %bb.d, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit25

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !1192 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load double, ptr %i.s, align 8, !tbaa !1192 ; 2 uses
  %i.u = fcmp oeq double %i.r, %i.t
  br i1 %i.u, label %.split43, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit25

.split43:                                         ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load double, ptr %i.v, align 8, !tbaa !1192
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = load double, ptr %i.x, align 8, !tbaa !1192
  %i.z = fcmp olt double %i.w, %i.y
  br i1 %i.z, label %bb.e, label %bb.f

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit25: ; preds = %bb.c, %bb.d
  %.lcssa21.i.i.i22 = phi double [ %i.b, %bb.c ], [ %i.r, %bb.d ]
  %.lcssa.i.i.i23 = phi double [ %i.o, %bb.c ], [ %i.t, %bb.d ]
  %i.aa = fcmp olt double %.lcssa21.i.i.i22, %.lcssa.i.i.i23
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.split43, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit25
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !5443
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !5443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, i64 24, i1 false), !tbaa.struct !5443
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  br label %bb.q

bb.f:                                             ; preds = %.split43, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit25
  %i.ab = fcmp oeq double %i.a, %i.o
  br i1 %i.ab, label %bb.g, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK7openvdb5v13_05tools16TolerancePruneOpINS3_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeINS3_4math4Vec3IdEELj3EEELj4EEELj5EEEEEEELj0EE6medianISG_EENT_9ValueTypeERSL_EUlRKNS6_9NodeUnionISD_SF_vEESR_E_EclIPSP_SV_EEbSL_T0_.exit29

bb.g:                                             ; preds = %bb.f
end_hunk_12

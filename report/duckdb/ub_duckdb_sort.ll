inline.NumInlined: 29521
inline.NumDeleted: 7045
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 83
loop-unroll.NumUnrolled: 234
begin_hunk_0_@_ZSt17__rotate_adaptiveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_lET_S5_S5_S5_T1_S6_T0_S6_:bb.a
bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = icmp sgt i64 %i.d, 32                    ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e, !prof !337

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %1, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 32
  br i1 %i.f, label %bb.f, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.g = ptrtoint ptr %0 to i64
  %i.h = sub i64 %i.c, %i.g                       ; 3 uses
  %i.i = ashr exact i64 %i.h, 5                   ; 2 uses
  %i.j = icmp sgt i64 %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.h, !prof !337

bb.g:                                             ; preds = %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit
  %i.k = sub nsw i64 0, %i.i
  %i.l = getelementptr inbounds [32 x i8], ptr %2, i64 %i.k
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 8 %0, i64 %i.h, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit

bb.h:                                             ; preds = %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit
  %i.m = icmp eq i64 %i.h, 32
  br i1 %i.m, label %bb.i, label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds i8, ptr %2, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.g, %bb.h, %bb.i
  br i1 %i.e, label %bb.j, label %bb.k, !prof !337

bb.j:                                             ; preds = %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %5, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit36

bb.k:                                             ; preds = %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit
  %i.o = icmp eq i64 %i.d, 32
  br i1 %i.o, label %bb.l, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit36

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit36

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit36: ; preds = %bb.j, %bb.k, %bb.l
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.d
  br label %bb.z

bb.m:                                             ; preds = %bb.a
  %.not33 = icmp sgt i64 %3, %6
  br i1 %.not33, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not34 = icmp eq i64 %3, 0
  br i1 %.not34, label %bb.z, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.q = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.r = ptrtoint ptr %0 to i64
  %i.s = sub i64 %i.q, %i.r                       ; 6 uses
  %i.t = icmp sgt i64 %i.s, 32
  br i1 %i.t, label %bb.p, label %bb.q, !prof !337

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %0, i64 %i.s, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit37

bb.q:                                             ; preds = %bb.o
  %i.u = icmp eq i64 %i.s, 32
  br i1 %i.u, label %bb.r, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit37

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit37

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit37: ; preds = %bb.p, %bb.q, %bb.r
  %i.v = ptrtoint ptr %2 to i64
  %i.w = sub i64 %i.v, %i.q                       ; 3 uses
  %i.x = icmp sgt i64 %i.w, 32
  br i1 %i.x, label %bb.s, label %bb.t, !prof !337

bb.s:                                             ; preds = %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit37
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %1, i64 %i.w, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit38

bb.t:                                             ; preds = %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit37
  %i.y = icmp eq i64 %i.w, 32
  br i1 %i.y, label %bb.u, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit38

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit38

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit38: ; preds = %bb.s, %bb.t, %bb.u
  %i.z = ashr exact i64 %i.s, 5                   ; 3 uses
  %i.aa = icmp sgt i64 %i.z, 1
  br i1 %i.aa, label %bb.v, label %bb.w, !prof !337

bb.v:                                             ; preds = %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit38
  %i.ab = sub nsw i64 0, %i.z
  %i.ac = getelementptr inbounds [32 x i8], ptr %2, i64 %i.ab
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr align 8 %5, i64 %i.s, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit39

bb.w:                                             ; preds = %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit38
  %i.ad = icmp eq i64 %i.s, 32
  br i1 %i.ad, label %bb.x, label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit39

bb.x:                                             ; preds = %bb.w
  %i.ae = getelementptr inbounds i8, ptr %2, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit39

_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit39: ; preds = %bb.v, %bb.w, %bb.x
  %i.af = sub nsw i64 0, %i.z
  %i.ag = getelementptr inbounds [32 x i8], ptr %2, i64 %i.af
  br label %bb.z

bb.y:                                             ; preds = %bb.m
  %i.ah = tail call noundef ptr @_ZNSt3_V28__rotateIPN6duckdb7SortKeyILNS1_11SortKeyTypeE9EEEEET_S6_S6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %bb.z

bb.z:                                             ; preds = %bb.n, %bb.b, %bb.y, %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit39, %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit36
  %.0 = phi ptr [ %i.p, %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit36 ], [ %i.ah, %bb.y ], [ %i.ag, %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE9EEES4_ET0_T_S6_S5_.exit39 ], [ %0, %bb.b ], [ %2, %bb.n ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb25SortedRunMergerLocalState23TemplatedMergePartitionINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEELNS_11SortKeyTypeE1EEEvRNS_26SortedRunMergerGlobalStateERNS_6vectorIT_Lb0ESaIS9_EEE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull align 8 dereferenceable(280) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.duckdb::AllocatedData", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.duckdb::block_iterator_t.1762", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1531 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1464, !nonnull !69, !align !81
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.f) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1465, !nonnull !69, !align !81
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1554
  %i.l = shl i64 %i.k, 3                          ; 2 uses
  %i.m = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %i.l), !noalias !11774
  call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef %i.m, i64 noundef %i.l)
  %i.n = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %3) #29 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !1531
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = phi ptr [ %.pre, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1458
  %.not29 = icmp eq i64 %i.r, 0
  br i1 %.not29, label %._crit_edge28.thread, label %.lr.ph27

.lr.ph27:                                         ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  br label %bb.d

._crit_edge28:                                    ; preds = %bb.g
  %i.v = icmp eq i64 %.1, 1
  br i1 %i.v, label %bb.i, label %._crit_edge28.thread

bb.d:                                             ; preds = %.lr.ph27, %bb.g
  %.025 = phi i64 [ 0, %.lr.ph27 ], [ %.1, %bb.g ] ; 2 uses
  %.02224 = phi i64 [ 0, %.lr.ph27 ], [ %i.bo, %bb.g ] ; 3 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !1498
  %i.x = getelementptr inbounds nuw [1192 x i8], ptr %i.w, i64 %.02224 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i8 1, ptr %i.a, align 1, !tbaa !219
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE13SetKeepPinnedERKb(ptr noundef nonnull align 8 dereferenceable(1192) %i.x, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1161
  store i8 1, ptr %i.y, align 1, !tbaa !1489
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !1459
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.02224 ; 4 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !1512
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !1521
  %i.ae = icmp eq i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = add i64 %.025, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr %i.x, ptr %4, align 8, !tbaa !11245
  %5 = load i64, ptr %i.aa, align 8, !tbaa !168
  %i.ag = lshr i64 %5, 11                         ; 3 uses
  store i64 %i.ag, ptr %i.t, align 8, !tbaa !168
  %i.ah = load i64, ptr %i.aa, align 8, !tbaa !168
  %i.ai = and i64 %i.ah, 2047                     ; 3 uses
  store i64 %i.ai, ptr %i.u, align 8, !tbaa !168
  %i.aj = load i64, ptr %i.ac, align 8, !tbaa !168 ; 2 uses
  %i.ak = lshr i64 %i.aj, 11
  %i.al = and i64 %i.aj, 2047
  %.not.i23 = icmp ne i64 %i.ag, %i.ak
  %i.am = icmp ne i64 %i.ai, %i.al
  %i.an = select i1 %.not.i23, i1 true, i1 %i.am
  br i1 %i.an, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEdeEv.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.g

.lr.ph:                                           ; preds = %bb.e, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEdeEv.exit
  %i.ao = phi i64 [ %i.bi, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEdeEv.exit ], [ %i.ai, %bb.e ]
  %i.ap = phi ptr [ %i.av, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEdeEv.exit ], [ %i.x, %bb.e ] ; 4 uses
  %i.aq = phi i64 [ %i.bh, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEdeEv.exit ], [ %i.ag, %bb.e ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !1478
  %.not.i.i = icmp eq i64 %i.aq, %i.as
  br i1 %.not.i.i, label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEdeEv.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE15InitializeChunkINS_7SortKeyILNS_11SortKeyTypeE1EEEEEvRKm(ptr noundef nonnull align 8 dereferenceable(1192) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
  %.pre30 = load ptr, ptr %4, align 8, !tbaa !11245
  %.pre32 = load i64, ptr %i.u, align 8, !tbaa !168
  %.pre33 = load i64, ptr %i.t, align 8, !tbaa !168
  br label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEdeEv.exit

_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE1EEEEdeEv.exit: ; preds = %.lr.ph, %bb.f
  %i.at = phi i64 [ %i.aq, %.lr.ph ], [ %.pre33, %bb.f ]
  %i.au = phi i64 [ %i.ao, %.lr.ph ], [ %.pre32, %bb.f ] ; 2 uses
  %i.av = phi ptr [ %i.ap, %.lr.ph ], [ %.pre30, %bb.f ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 584
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1487
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.au
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1175
  %i.ba = load i64, ptr %i.p, align 8, !tbaa !1504 ; 2 uses
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.p, align 8, !tbaa !1504
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ba
  %i.bd = load i64, ptr %i.az, align 8
  store i64 %i.bd, ptr %i.bc, align 8
  %i.be = add i64 %i.au, 1                        ; 2 uses
  %i.bf = icmp eq i64 %i.be, 2048                 ; 2 uses
  %i.bg = zext i1 %i.bf to i64
  %i.bh = add i64 %i.at, %i.bg                    ; 3 uses
  store i64 %i.bh, ptr %i.t, align 8, !tbaa !168
  %i.bi = select i1 %i.bf, i64 0, i64 %i.be       ; 3 uses
  store i64 %i.bi, ptr %i.u, align 8, !tbaa !168
  %i.bj = load i64, ptr %i.ac, align 8, !tbaa !168 ; 2 uses
  %i.bk = lshr i64 %i.bj, 11
  %i.bl = and i64 %i.bj, 2047
  %.not.i = icmp ne i64 %i.bh, %i.bk
  %i.bm = icmp ne i64 %i.bi, %i.bl
  %i.bn = or i1 %.not.i, %i.bm
  br i1 %i.bn, label %.lr.ph, label %._crit_edge, !llvm.loop !11777

bb.g:                                             ; preds = %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.af, %._crit_edge ], [ %.025, %bb.d ] ; 2 uses
  %i.bo = add nuw i64 %.02224, 1                  ; 2 uses
  %i.bp = load i64, ptr %i.q, align 8, !tbaa !1458
  %i.bq = icmp ult i64 %i.bo, %i.bp
  br i1 %i.bq, label %bb.d, label %._crit_edge28, !llvm.loop !11778

._crit_edge28.thread:                             ; preds = %bb.c, %._crit_edge28
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1465, !nonnull !69, !align !81
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 57
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !1699, !range !68, !noundef !69
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge28.thread
  %i.bw = load i64, ptr %i.p, align 8, !tbaa !1504
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bw
  call void @_ZN16duckdb_vergesort6detail9vergesortIPN6duckdb7SortKeyILNS2_11SortKeyTypeE1EEESt4lessIS5_EZNS2_25SortedRunMergerLocalState23TemplatedMergePartitionINS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE1EEELS4_1EEEvRNS2_26SortedRunMergerGlobalStateERNS2_6vectorIT_Lb0ESaISH_EEEEUlS6_S6_E_EEvSH_SH_T0_St26random_access_iterator_tagT1_(ptr noundef %i.o, ptr noundef %i.bx)
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge28, %._crit_edge28.thread, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb25SortedRunMergerLocalState23TemplatedMergePartitionINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEELNS_11SortKeyTypeE2EEEvRNS_26SortedRunMergerGlobalStateERNS_6vectorIT_Lb0ESaIS9_EEE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull align 8 dereferenceable(280) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.duckdb::AllocatedData", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.duckdb::block_iterator_t.1773", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1531 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1464, !nonnull !69, !align !81
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.f) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1465, !nonnull !69, !align !81
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1554
  %i.l = shl i64 %i.k, 4                          ; 2 uses
  %i.m = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %i.l), !noalias !11779
  call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef %i.m, i64 noundef %i.l)
  %i.n = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %3) #29 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !1531
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = phi ptr [ %.pre, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1458
  %.not29 = icmp eq i64 %i.r, 0
  br i1 %.not29, label %._crit_edge28.thread, label %.lr.ph27

.lr.ph27:                                         ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  br label %bb.d

._crit_edge28:                                    ; preds = %bb.g
  %i.v = icmp eq i64 %.1, 1
  br i1 %i.v, label %bb.i, label %._crit_edge28.thread

bb.d:                                             ; preds = %.lr.ph27, %bb.g
  %.025 = phi i64 [ 0, %.lr.ph27 ], [ %.1, %bb.g ] ; 2 uses
  %.02224 = phi i64 [ 0, %.lr.ph27 ], [ %i.bn, %bb.g ] ; 3 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !1498
  %i.x = getelementptr inbounds nuw [1192 x i8], ptr %i.w, i64 %.02224 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i8 1, ptr %i.a, align 1, !tbaa !219
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE13SetKeepPinnedERKb(ptr noundef nonnull align 8 dereferenceable(1192) %i.x, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1161
  store i8 1, ptr %i.y, align 1, !tbaa !1489
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !1459
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.02224 ; 4 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !1512
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !1521
  %i.ae = icmp eq i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = add i64 %.025, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr %i.x, ptr %4, align 8, !tbaa !11252
  %5 = load i64, ptr %i.aa, align 8, !tbaa !168
  %i.ag = lshr i64 %5, 11                         ; 3 uses
  store i64 %i.ag, ptr %i.t, align 8, !tbaa !168
  %i.ah = load i64, ptr %i.aa, align 8, !tbaa !168
  %i.ai = and i64 %i.ah, 2047                     ; 3 uses
  store i64 %i.ai, ptr %i.u, align 8, !tbaa !168
  %i.aj = load i64, ptr %i.ac, align 8, !tbaa !168 ; 2 uses
  %i.ak = lshr i64 %i.aj, 11
  %i.al = and i64 %i.aj, 2047
  %.not.i23 = icmp ne i64 %i.ag, %i.ak
  %i.am = icmp ne i64 %i.ai, %i.al
  %i.an = select i1 %.not.i23, i1 true, i1 %i.am
  br i1 %i.an, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEdeEv.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.g

.lr.ph:                                           ; preds = %bb.e, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEdeEv.exit
  %i.ao = phi i64 [ %i.bh, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEdeEv.exit ], [ %i.ai, %bb.e ]
  %i.ap = phi ptr [ %i.av, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEdeEv.exit ], [ %i.x, %bb.e ] ; 4 uses
  %i.aq = phi i64 [ %i.bg, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEdeEv.exit ], [ %i.ag, %bb.e ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !1478
  %.not.i.i = icmp eq i64 %i.aq, %i.as
  br i1 %.not.i.i, label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEdeEv.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE15InitializeChunkINS_7SortKeyILNS_11SortKeyTypeE2EEEEEvRKm(ptr noundef nonnull align 8 dereferenceable(1192) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
  %.pre30 = load ptr, ptr %4, align 8, !tbaa !11252
  %.pre32 = load i64, ptr %i.u, align 8, !tbaa !168
  %.pre33 = load i64, ptr %i.t, align 8, !tbaa !168
  br label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEdeEv.exit

_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE2EEEEdeEv.exit: ; preds = %.lr.ph, %bb.f
  %i.at = phi i64 [ %i.aq, %.lr.ph ], [ %.pre33, %bb.f ]
  %i.au = phi i64 [ %i.ao, %.lr.ph ], [ %.pre32, %bb.f ] ; 2 uses
  %i.av = phi ptr [ %i.ap, %.lr.ph ], [ %.pre30, %bb.f ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 584
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1487
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.au
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1181
  %i.ba = load i64, ptr %i.p, align 8, !tbaa !1504 ; 2 uses
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.p, align 8, !tbaa !1504
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false)
  %i.bd = add i64 %i.au, 1                        ; 2 uses
  %i.be = icmp eq i64 %i.bd, 2048                 ; 2 uses
  %i.bf = zext i1 %i.be to i64
  %i.bg = add i64 %i.at, %i.bf                    ; 3 uses
  store i64 %i.bg, ptr %i.t, align 8, !tbaa !168
  %i.bh = select i1 %i.be, i64 0, i64 %i.bd       ; 3 uses
  store i64 %i.bh, ptr %i.u, align 8, !tbaa !168
  %i.bi = load i64, ptr %i.ac, align 8, !tbaa !168 ; 2 uses
  %i.bj = lshr i64 %i.bi, 11
  %i.bk = and i64 %i.bi, 2047
  %.not.i = icmp ne i64 %i.bg, %i.bj
  %i.bl = icmp ne i64 %i.bh, %i.bk
  %i.bm = or i1 %.not.i, %i.bl
  br i1 %i.bm, label %.lr.ph, label %._crit_edge, !llvm.loop !11782

bb.g:                                             ; preds = %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.af, %._crit_edge ], [ %.025, %bb.d ] ; 2 uses
  %i.bn = add nuw i64 %.02224, 1                  ; 2 uses
  %i.bo = load i64, ptr %i.q, align 8, !tbaa !1458
  %i.bp = icmp ult i64 %i.bn, %i.bo
  br i1 %i.bp, label %bb.d, label %._crit_edge28, !llvm.loop !11783

._crit_edge28.thread:                             ; preds = %bb.c, %._crit_edge28
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1465, !nonnull !69, !align !81
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 57
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !1699, !range !68, !noundef !69
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge28.thread
  %i.bv = load i64, ptr %i.p, align 8, !tbaa !1504
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.bv
  call void @_ZN16duckdb_vergesort6detail9vergesortIPN6duckdb7SortKeyILNS2_11SortKeyTypeE2EEESt4lessIS5_EZNS2_25SortedRunMergerLocalState23TemplatedMergePartitionINS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE1EEELS4_2EEEvRNS2_26SortedRunMergerGlobalStateERNS2_6vectorIT_Lb0ESaISH_EEEEUlS6_S6_E_EEvSH_SH_T0_St26random_access_iterator_tagT1_(ptr noundef %i.o, ptr noundef %i.bw)
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge28, %._crit_edge28.thread, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb25SortedRunMergerLocalState23TemplatedMergePartitionINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEELNS_11SortKeyTypeE3EEEvRNS_26SortedRunMergerGlobalStateERNS_6vectorIT_Lb0ESaIS9_EEE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull align 8 dereferenceable(280) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.duckdb::AllocatedData", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.duckdb::block_iterator_t.1781", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1531 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1464, !nonnull !69, !align !81
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.f) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1465, !nonnull !69, !align !81
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1554
  %i.l = mul i64 %i.k, 24                         ; 2 uses
  %i.m = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %i.l), !noalias !11784
  call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef %i.m, i64 noundef %i.l)
  %i.n = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %3) #29 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !1531
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = phi ptr [ %.pre, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1458
  %.not29 = icmp eq i64 %i.r, 0
  br i1 %.not29, label %._crit_edge28.thread, label %.lr.ph27

.lr.ph27:                                         ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  br label %bb.d

._crit_edge28:                                    ; preds = %bb.g
  %i.v = icmp eq i64 %.1, 1
  br i1 %i.v, label %bb.i, label %._crit_edge28.thread

bb.d:                                             ; preds = %.lr.ph27, %bb.g
  %.025 = phi i64 [ 0, %.lr.ph27 ], [ %.1, %bb.g ] ; 2 uses
  %.02224 = phi i64 [ 0, %.lr.ph27 ], [ %i.bn, %bb.g ] ; 3 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !1498
  %i.x = getelementptr inbounds nuw [1192 x i8], ptr %i.w, i64 %.02224 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i8 1, ptr %i.a, align 1, !tbaa !219
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE13SetKeepPinnedERKb(ptr noundef nonnull align 8 dereferenceable(1192) %i.x, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1161
  store i8 1, ptr %i.y, align 1, !tbaa !1489
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !1459
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.02224 ; 4 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !1512
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !1521
  %i.ae = icmp eq i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = add i64 %.025, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr %i.x, ptr %4, align 8, !tbaa !11259
  %5 = load i64, ptr %i.aa, align 8, !tbaa !168
  %i.ag = lshr i64 %5, 11                         ; 3 uses
  store i64 %i.ag, ptr %i.t, align 8, !tbaa !168
  %i.ah = load i64, ptr %i.aa, align 8, !tbaa !168
  %i.ai = and i64 %i.ah, 2047                     ; 3 uses
  store i64 %i.ai, ptr %i.u, align 8, !tbaa !168
  %i.aj = load i64, ptr %i.ac, align 8, !tbaa !168 ; 2 uses
  %i.ak = lshr i64 %i.aj, 11
  %i.al = and i64 %i.aj, 2047
  %.not.i23 = icmp ne i64 %i.ag, %i.ak
  %i.am = icmp ne i64 %i.ai, %i.al
  %i.an = select i1 %.not.i23, i1 true, i1 %i.am
  br i1 %i.an, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEdeEv.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.g

.lr.ph:                                           ; preds = %bb.e, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEdeEv.exit
  %i.ao = phi i64 [ %i.bh, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEdeEv.exit ], [ %i.ai, %bb.e ]
  %i.ap = phi ptr [ %i.av, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEdeEv.exit ], [ %i.x, %bb.e ] ; 4 uses
  %i.aq = phi i64 [ %i.bg, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEdeEv.exit ], [ %i.ag, %bb.e ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !1478
  %.not.i.i = icmp eq i64 %i.aq, %i.as
  br i1 %.not.i.i, label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEdeEv.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE15InitializeChunkINS_7SortKeyILNS_11SortKeyTypeE3EEEEEvRKm(ptr noundef nonnull align 8 dereferenceable(1192) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
  %.pre30 = load ptr, ptr %4, align 8, !tbaa !11259
  %.pre32 = load i64, ptr %i.u, align 8, !tbaa !168
  %.pre33 = load i64, ptr %i.t, align 8, !tbaa !168
  br label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEdeEv.exit

_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE3EEEEdeEv.exit: ; preds = %.lr.ph, %bb.f
  %i.at = phi i64 [ %i.aq, %.lr.ph ], [ %.pre33, %bb.f ]
  %i.au = phi i64 [ %i.ao, %.lr.ph ], [ %.pre32, %bb.f ] ; 2 uses
  %i.av = phi ptr [ %i.ap, %.lr.ph ], [ %.pre30, %bb.f ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 584
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1487
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.au
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1186
  %i.ba = load i64, ptr %i.p, align 8, !tbaa !1504 ; 2 uses
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.p, align 8, !tbaa !1504
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false)
  %i.bd = add i64 %i.au, 1                        ; 2 uses
  %i.be = icmp eq i64 %i.bd, 2048                 ; 2 uses
  %i.bf = zext i1 %i.be to i64
  %i.bg = add i64 %i.at, %i.bf                    ; 3 uses
  store i64 %i.bg, ptr %i.t, align 8, !tbaa !168
  %i.bh = select i1 %i.be, i64 0, i64 %i.bd       ; 3 uses
  store i64 %i.bh, ptr %i.u, align 8, !tbaa !168
  %i.bi = load i64, ptr %i.ac, align 8, !tbaa !168 ; 2 uses
  %i.bj = lshr i64 %i.bi, 11
  %i.bk = and i64 %i.bi, 2047
  %.not.i = icmp ne i64 %i.bg, %i.bj
  %i.bl = icmp ne i64 %i.bh, %i.bk
  %i.bm = or i1 %.not.i, %i.bl
  br i1 %i.bm, label %.lr.ph, label %._crit_edge, !llvm.loop !11787

bb.g:                                             ; preds = %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.af, %._crit_edge ], [ %.025, %bb.d ] ; 2 uses
  %i.bn = add nuw i64 %.02224, 1                  ; 2 uses
  %i.bo = load i64, ptr %i.q, align 8, !tbaa !1458
  %i.bp = icmp ult i64 %i.bn, %i.bo
  br i1 %i.bp, label %bb.d, label %._crit_edge28, !llvm.loop !11788

._crit_edge28.thread:                             ; preds = %bb.c, %._crit_edge28
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1465, !nonnull !69, !align !81
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 57
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !1699, !range !68, !noundef !69
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge28.thread
  %i.bv = load i64, ptr %i.p, align 8, !tbaa !1504
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.bv
  call void @_ZN16duckdb_vergesort6detail9vergesortIPN6duckdb7SortKeyILNS2_11SortKeyTypeE3EEESt4lessIS5_EZNS2_25SortedRunMergerLocalState23TemplatedMergePartitionINS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE1EEELS4_3EEEvRNS2_26SortedRunMergerGlobalStateERNS2_6vectorIT_Lb0ESaISH_EEEEUlS6_S6_E_EEvSH_SH_T0_St26random_access_iterator_tagT1_(ptr noundef %i.o, ptr noundef %i.bw)
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge28, %._crit_edge28.thread, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb25SortedRunMergerLocalState23TemplatedMergePartitionINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEELNS_11SortKeyTypeE4EEEvRNS_26SortedRunMergerGlobalStateERNS_6vectorIT_Lb0ESaIS9_EEE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull align 8 dereferenceable(280) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.duckdb::AllocatedData", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.duckdb::block_iterator_t.1789", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1531 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1464, !nonnull !69, !align !81
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.f) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1465, !nonnull !69, !align !81
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1554
  %i.l = shl i64 %i.k, 5                          ; 2 uses
  %i.m = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %i.l), !noalias !11789
  call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef %i.m, i64 noundef %i.l)
  %i.n = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %3) #29 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !1531
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = phi ptr [ %.pre, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1458
  %.not29 = icmp eq i64 %i.r, 0
  br i1 %.not29, label %._crit_edge28.thread, label %.lr.ph27

.lr.ph27:                                         ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  br label %bb.d

._crit_edge28:                                    ; preds = %bb.g
  %i.v = icmp eq i64 %.1, 1
  br i1 %i.v, label %bb.i, label %._crit_edge28.thread

bb.d:                                             ; preds = %.lr.ph27, %bb.g
  %.025 = phi i64 [ 0, %.lr.ph27 ], [ %.1, %bb.g ] ; 2 uses
  %.02224 = phi i64 [ 0, %.lr.ph27 ], [ %i.bn, %bb.g ] ; 3 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !1498
  %i.x = getelementptr inbounds nuw [1192 x i8], ptr %i.w, i64 %.02224 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i8 1, ptr %i.a, align 1, !tbaa !219
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE13SetKeepPinnedERKb(ptr noundef nonnull align 8 dereferenceable(1192) %i.x, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1161
  store i8 1, ptr %i.y, align 1, !tbaa !1489
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !1459
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.02224 ; 4 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !1512
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !1521
  %i.ae = icmp eq i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = add i64 %.025, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr %i.x, ptr %4, align 8, !tbaa !11266
  %5 = load i64, ptr %i.aa, align 8, !tbaa !168
  %i.ag = lshr i64 %5, 11                         ; 3 uses
  store i64 %i.ag, ptr %i.t, align 8, !tbaa !168
  %i.ah = load i64, ptr %i.aa, align 8, !tbaa !168
  %i.ai = and i64 %i.ah, 2047                     ; 3 uses
  store i64 %i.ai, ptr %i.u, align 8, !tbaa !168
  %i.aj = load i64, ptr %i.ac, align 8, !tbaa !168 ; 2 uses
  %i.ak = lshr i64 %i.aj, 11
  %i.al = and i64 %i.aj, 2047
  %.not.i23 = icmp ne i64 %i.ag, %i.ak
  %i.am = icmp ne i64 %i.ai, %i.al
  %i.an = select i1 %.not.i23, i1 true, i1 %i.am
  br i1 %i.an, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEdeEv.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.g

.lr.ph:                                           ; preds = %bb.e, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEdeEv.exit
  %i.ao = phi i64 [ %i.bh, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEdeEv.exit ], [ %i.ai, %bb.e ]
  %i.ap = phi ptr [ %i.av, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEdeEv.exit ], [ %i.x, %bb.e ] ; 4 uses
  %i.aq = phi i64 [ %i.bg, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEdeEv.exit ], [ %i.ag, %bb.e ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !1478
  %.not.i.i = icmp eq i64 %i.aq, %i.as
  br i1 %.not.i.i, label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEdeEv.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE15InitializeChunkINS_7SortKeyILNS_11SortKeyTypeE4EEEEEvRKm(ptr noundef nonnull align 8 dereferenceable(1192) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
  %.pre30 = load ptr, ptr %4, align 8, !tbaa !11266
  %.pre32 = load i64, ptr %i.u, align 8, !tbaa !168
  %.pre33 = load i64, ptr %i.t, align 8, !tbaa !168
  br label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEdeEv.exit

_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE4EEEEdeEv.exit: ; preds = %.lr.ph, %bb.f
  %i.at = phi i64 [ %i.aq, %.lr.ph ], [ %.pre33, %bb.f ]
  %i.au = phi i64 [ %i.ao, %.lr.ph ], [ %.pre32, %bb.f ] ; 2 uses
  %i.av = phi ptr [ %i.ap, %.lr.ph ], [ %.pre30, %bb.f ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 584
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1487
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.au
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1191
  %i.ba = load i64, ptr %i.p, align 8, !tbaa !1504 ; 2 uses
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.p, align 8, !tbaa !1504
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %i.az, i64 32, i1 false)
  %i.bd = add i64 %i.au, 1                        ; 2 uses
  %i.be = icmp eq i64 %i.bd, 2048                 ; 2 uses
  %i.bf = zext i1 %i.be to i64
  %i.bg = add i64 %i.at, %i.bf                    ; 3 uses
  store i64 %i.bg, ptr %i.t, align 8, !tbaa !168
  %i.bh = select i1 %i.be, i64 0, i64 %i.bd       ; 3 uses
  store i64 %i.bh, ptr %i.u, align 8, !tbaa !168
  %i.bi = load i64, ptr %i.ac, align 8, !tbaa !168 ; 2 uses
  %i.bj = lshr i64 %i.bi, 11
  %i.bk = and i64 %i.bi, 2047
  %.not.i = icmp ne i64 %i.bg, %i.bj
  %i.bl = icmp ne i64 %i.bh, %i.bk
  %i.bm = or i1 %.not.i, %i.bl
  br i1 %i.bm, label %.lr.ph, label %._crit_edge, !llvm.loop !11792

bb.g:                                             ; preds = %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.af, %._crit_edge ], [ %.025, %bb.d ] ; 2 uses
  %i.bn = add nuw i64 %.02224, 1                  ; 2 uses
  %i.bo = load i64, ptr %i.q, align 8, !tbaa !1458
  %i.bp = icmp ult i64 %i.bn, %i.bo
  br i1 %i.bp, label %bb.d, label %._crit_edge28, !llvm.loop !11793

._crit_edge28.thread:                             ; preds = %bb.c, %._crit_edge28
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1465, !nonnull !69, !align !81
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 57
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !1699, !range !68, !noundef !69
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge28.thread
  %i.bv = load i64, ptr %i.p, align 8, !tbaa !1504
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.bv
  call void @_ZN16duckdb_vergesort6detail9vergesortIPN6duckdb7SortKeyILNS2_11SortKeyTypeE4EEESt4lessIS5_EZNS2_25SortedRunMergerLocalState23TemplatedMergePartitionINS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE1EEELS4_4EEEvRNS2_26SortedRunMergerGlobalStateERNS2_6vectorIT_Lb0ESaISH_EEEEUlS6_S6_E_EEvSH_SH_T0_St26random_access_iterator_tagT1_(ptr noundef %i.o, ptr noundef %i.bw)
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge28, %._crit_edge28.thread, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb25SortedRunMergerLocalState23TemplatedMergePartitionINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEELNS_11SortKeyTypeE5EEEvRNS_26SortedRunMergerGlobalStateERNS_6vectorIT_Lb0ESaIS9_EEE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull align 8 dereferenceable(280) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.duckdb::AllocatedData", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.duckdb::block_iterator_t.1797", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1531 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1464, !nonnull !69, !align !81
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.f) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1465, !nonnull !69, !align !81
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1554
  %i.l = shl i64 %i.k, 5                          ; 2 uses
  %i.m = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %i.l), !noalias !11794
  call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef %i.m, i64 noundef %i.l)
  %i.n = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %3) #29 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !1531
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = phi ptr [ %.pre, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1458
  %.not29 = icmp eq i64 %i.r, 0
  br i1 %.not29, label %._crit_edge28.thread, label %.lr.ph27

.lr.ph27:                                         ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  br label %bb.d

._crit_edge28:                                    ; preds = %bb.g
  %i.v = icmp eq i64 %.1, 1
  br i1 %i.v, label %bb.i, label %._crit_edge28.thread

bb.d:                                             ; preds = %.lr.ph27, %bb.g
  %.025 = phi i64 [ 0, %.lr.ph27 ], [ %.1, %bb.g ] ; 2 uses
  %.02224 = phi i64 [ 0, %.lr.ph27 ], [ %i.bn, %bb.g ] ; 3 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !1498
  %i.x = getelementptr inbounds nuw [1192 x i8], ptr %i.w, i64 %.02224 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i8 1, ptr %i.a, align 1, !tbaa !219
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE13SetKeepPinnedERKb(ptr noundef nonnull align 8 dereferenceable(1192) %i.x, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1161
  store i8 1, ptr %i.y, align 1, !tbaa !1489
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !1459
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.02224 ; 4 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !1512
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !1521
  %i.ae = icmp eq i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = add i64 %.025, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr %i.x, ptr %4, align 8, !tbaa !11273
  %5 = load i64, ptr %i.aa, align 8, !tbaa !168
  %i.ag = lshr i64 %5, 11                         ; 3 uses
  store i64 %i.ag, ptr %i.t, align 8, !tbaa !168
  %i.ah = load i64, ptr %i.aa, align 8, !tbaa !168
  %i.ai = and i64 %i.ah, 2047                     ; 3 uses
  store i64 %i.ai, ptr %i.u, align 8, !tbaa !168
  %i.aj = load i64, ptr %i.ac, align 8, !tbaa !168 ; 2 uses
  %i.ak = lshr i64 %i.aj, 11
  %i.al = and i64 %i.aj, 2047
  %.not.i23 = icmp ne i64 %i.ag, %i.ak
  %i.am = icmp ne i64 %i.ai, %i.al
  %i.an = select i1 %.not.i23, i1 true, i1 %i.am
  br i1 %i.an, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEdeEv.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.g

.lr.ph:                                           ; preds = %bb.e, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEdeEv.exit
  %i.ao = phi i64 [ %i.bh, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEdeEv.exit ], [ %i.ai, %bb.e ]
  %i.ap = phi ptr [ %i.av, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEdeEv.exit ], [ %i.x, %bb.e ] ; 4 uses
  %i.aq = phi i64 [ %i.bg, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEdeEv.exit ], [ %i.ag, %bb.e ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !1478
  %.not.i.i = icmp eq i64 %i.aq, %i.as
  br i1 %.not.i.i, label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEdeEv.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE15InitializeChunkINS_7SortKeyILNS_11SortKeyTypeE5EEEEEvRKm(ptr noundef nonnull align 8 dereferenceable(1192) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
  %.pre30 = load ptr, ptr %4, align 8, !tbaa !11273
  %.pre32 = load i64, ptr %i.u, align 8, !tbaa !168
  %.pre33 = load i64, ptr %i.t, align 8, !tbaa !168
  br label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEdeEv.exit

_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE5EEEEdeEv.exit: ; preds = %.lr.ph, %bb.f
  %i.at = phi i64 [ %i.aq, %.lr.ph ], [ %.pre33, %bb.f ]
  %i.au = phi i64 [ %i.ao, %.lr.ph ], [ %.pre32, %bb.f ] ; 2 uses
  %i.av = phi ptr [ %i.ap, %.lr.ph ], [ %.pre30, %bb.f ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 584
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1487
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.au
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1196
  %i.ba = load i64, ptr %i.p, align 8, !tbaa !1504 ; 2 uses
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.p, align 8, !tbaa !1504
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %i.az, i64 32, i1 false)
  %i.bd = add i64 %i.au, 1                        ; 2 uses
  %i.be = icmp eq i64 %i.bd, 2048                 ; 2 uses
  %i.bf = zext i1 %i.be to i64
  %i.bg = add i64 %i.at, %i.bf                    ; 3 uses
  store i64 %i.bg, ptr %i.t, align 8, !tbaa !168
  %i.bh = select i1 %i.be, i64 0, i64 %i.bd       ; 3 uses
  store i64 %i.bh, ptr %i.u, align 8, !tbaa !168
  %i.bi = load i64, ptr %i.ac, align 8, !tbaa !168 ; 2 uses
  %i.bj = lshr i64 %i.bi, 11
  %i.bk = and i64 %i.bi, 2047
  %.not.i = icmp ne i64 %i.bg, %i.bj
  %i.bl = icmp ne i64 %i.bh, %i.bk
  %i.bm = or i1 %.not.i, %i.bl
  br i1 %i.bm, label %.lr.ph, label %._crit_edge, !llvm.loop !11797

bb.g:                                             ; preds = %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.af, %._crit_edge ], [ %.025, %bb.d ] ; 2 uses
  %i.bn = add nuw i64 %.02224, 1                  ; 2 uses
  %i.bo = load i64, ptr %i.q, align 8, !tbaa !1458
  %i.bp = icmp ult i64 %i.bn, %i.bo
  br i1 %i.bp, label %bb.d, label %._crit_edge28, !llvm.loop !11798

._crit_edge28.thread:                             ; preds = %bb.c, %._crit_edge28
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1465, !nonnull !69, !align !81
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 57
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !1699, !range !68, !noundef !69
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge28.thread
  %i.bv = load i64, ptr %i.p, align 8, !tbaa !1504
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.bv
  call void @_ZN16duckdb_vergesort6detail9vergesortIPN6duckdb7SortKeyILNS2_11SortKeyTypeE5EEESt4lessIS5_EZNS2_25SortedRunMergerLocalState23TemplatedMergePartitionINS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE1EEELS4_5EEEvRNS2_26SortedRunMergerGlobalStateERNS2_6vectorIT_Lb0ESaISH_EEEEUlS6_S6_E_EEvSH_SH_T0_St26random_access_iterator_tagT1_(ptr noundef %i.o, ptr noundef %i.bw)
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge28, %._crit_edge28.thread, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb25SortedRunMergerLocalState23TemplatedMergePartitionINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEELNS_11SortKeyTypeE6EEEvRNS_26SortedRunMergerGlobalStateERNS_6vectorIT_Lb0ESaIS9_EEE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull align 8 dereferenceable(280) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.duckdb::AllocatedData", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.duckdb::block_iterator_t.1805", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1531 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1464, !nonnull !69, !align !81
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.f) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1465, !nonnull !69, !align !81
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1554
  %i.l = shl i64 %i.k, 4                          ; 2 uses
  %i.m = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %i.l), !noalias !11799
  call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef %i.m, i64 noundef %i.l)
  %i.n = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %3) #29 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !1531
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = phi ptr [ %.pre, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1458
  %.not29 = icmp eq i64 %i.r, 0
  br i1 %.not29, label %._crit_edge28.thread, label %.lr.ph27

.lr.ph27:                                         ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  br label %bb.d

._crit_edge28:                                    ; preds = %bb.g
  %i.v = icmp eq i64 %.1, 1
  br i1 %i.v, label %bb.i, label %._crit_edge28.thread

bb.d:                                             ; preds = %.lr.ph27, %bb.g
  %.025 = phi i64 [ 0, %.lr.ph27 ], [ %.1, %bb.g ] ; 2 uses
  %.02224 = phi i64 [ 0, %.lr.ph27 ], [ %i.bn, %bb.g ] ; 3 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !1498
  %i.x = getelementptr inbounds nuw [1192 x i8], ptr %i.w, i64 %.02224 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i8 1, ptr %i.a, align 1, !tbaa !219
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE13SetKeepPinnedERKb(ptr noundef nonnull align 8 dereferenceable(1192) %i.x, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1161
  store i8 1, ptr %i.y, align 1, !tbaa !1489
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !1459
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.02224 ; 4 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !1512
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !1521
  %i.ae = icmp eq i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = add i64 %.025, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr %i.x, ptr %4, align 8, !tbaa !11280
  %5 = load i64, ptr %i.aa, align 8, !tbaa !168
  %i.ag = lshr i64 %5, 11                         ; 3 uses
  store i64 %i.ag, ptr %i.t, align 8, !tbaa !168
  %i.ah = load i64, ptr %i.aa, align 8, !tbaa !168
  %i.ai = and i64 %i.ah, 2047                     ; 3 uses
  store i64 %i.ai, ptr %i.u, align 8, !tbaa !168
  %i.aj = load i64, ptr %i.ac, align 8, !tbaa !168 ; 2 uses
  %i.ak = lshr i64 %i.aj, 11
  %i.al = and i64 %i.aj, 2047
  %.not.i23 = icmp ne i64 %i.ag, %i.ak
  %i.am = icmp ne i64 %i.ai, %i.al
  %i.an = select i1 %.not.i23, i1 true, i1 %i.am
  br i1 %i.an, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEdeEv.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.g

.lr.ph:                                           ; preds = %bb.e, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEdeEv.exit
  %i.ao = phi i64 [ %i.bh, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEdeEv.exit ], [ %i.ai, %bb.e ]
  %i.ap = phi ptr [ %i.av, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEdeEv.exit ], [ %i.x, %bb.e ] ; 4 uses
  %i.aq = phi i64 [ %i.bg, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEdeEv.exit ], [ %i.ag, %bb.e ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !1478
  %.not.i.i = icmp eq i64 %i.aq, %i.as
  br i1 %.not.i.i, label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEdeEv.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE15InitializeChunkINS_7SortKeyILNS_11SortKeyTypeE6EEEEEvRKm(ptr noundef nonnull align 8 dereferenceable(1192) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
  %.pre30 = load ptr, ptr %4, align 8, !tbaa !11280
  %.pre32 = load i64, ptr %i.u, align 8, !tbaa !168
  %.pre33 = load i64, ptr %i.t, align 8, !tbaa !168
  br label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEdeEv.exit

_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE6EEEEdeEv.exit: ; preds = %.lr.ph, %bb.f
  %i.at = phi i64 [ %i.aq, %.lr.ph ], [ %.pre33, %bb.f ]
  %i.au = phi i64 [ %i.ao, %.lr.ph ], [ %.pre32, %bb.f ] ; 2 uses
  %i.av = phi ptr [ %i.ap, %.lr.ph ], [ %.pre30, %bb.f ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 584
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1487
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.au
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1044
  %i.ba = load i64, ptr %i.p, align 8, !tbaa !1504 ; 2 uses
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.p, align 8, !tbaa !1504
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false)
  %i.bd = add i64 %i.au, 1                        ; 2 uses
  %i.be = icmp eq i64 %i.bd, 2048                 ; 2 uses
  %i.bf = zext i1 %i.be to i64
  %i.bg = add i64 %i.at, %i.bf                    ; 3 uses
  store i64 %i.bg, ptr %i.t, align 8, !tbaa !168
  %i.bh = select i1 %i.be, i64 0, i64 %i.bd       ; 3 uses
  store i64 %i.bh, ptr %i.u, align 8, !tbaa !168
  %i.bi = load i64, ptr %i.ac, align 8, !tbaa !168 ; 2 uses
  %i.bj = lshr i64 %i.bi, 11
  %i.bk = and i64 %i.bi, 2047
  %.not.i = icmp ne i64 %i.bg, %i.bj
  %i.bl = icmp ne i64 %i.bh, %i.bk
  %i.bm = or i1 %.not.i, %i.bl
  br i1 %i.bm, label %.lr.ph, label %._crit_edge, !llvm.loop !11802

bb.g:                                             ; preds = %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.af, %._crit_edge ], [ %.025, %bb.d ] ; 2 uses
  %i.bn = add nuw i64 %.02224, 1                  ; 2 uses
  %i.bo = load i64, ptr %i.q, align 8, !tbaa !1458
  %i.bp = icmp ult i64 %i.bn, %i.bo
  br i1 %i.bp, label %bb.d, label %._crit_edge28, !llvm.loop !11803

._crit_edge28.thread:                             ; preds = %bb.c, %._crit_edge28
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1465, !nonnull !69, !align !81
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 57
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !1699, !range !68, !noundef !69
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge28.thread
  %i.bv = load i64, ptr %i.p, align 8, !tbaa !1504
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.bv
  call void @_ZN16duckdb_vergesort6detail9vergesortIPN6duckdb7SortKeyILNS2_11SortKeyTypeE6EEESt4lessIS5_EZNS2_25SortedRunMergerLocalState23TemplatedMergePartitionINS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE1EEELS4_6EEEvRNS2_26SortedRunMergerGlobalStateERNS2_6vectorIT_Lb0ESaISH_EEEEUlS6_S6_E_EEvSH_SH_T0_St26random_access_iterator_tagT1_(ptr noundef %i.o, ptr noundef %i.bw)
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge28, %._crit_edge28.thread, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb25SortedRunMergerLocalState23TemplatedMergePartitionINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEELNS_11SortKeyTypeE7EEEvRNS_26SortedRunMergerGlobalStateERNS_6vectorIT_Lb0ESaIS9_EEE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull align 8 dereferenceable(280) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.duckdb::AllocatedData", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.duckdb::block_iterator_t.1813", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1531 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1464, !nonnull !69, !align !81
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.f) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1465, !nonnull !69, !align !81
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1554
  %i.l = mul i64 %i.k, 24                         ; 2 uses
  %i.m = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %i.l), !noalias !11804
  call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef %i.m, i64 noundef %i.l)
  %i.n = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %3) #29 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !1531
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = phi ptr [ %.pre, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1458
  %.not29 = icmp eq i64 %i.r, 0
  br i1 %.not29, label %._crit_edge28.thread, label %.lr.ph27

.lr.ph27:                                         ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  br label %bb.d

._crit_edge28:                                    ; preds = %bb.g
  %i.v = icmp eq i64 %.1, 1
  br i1 %i.v, label %bb.i, label %._crit_edge28.thread

bb.d:                                             ; preds = %.lr.ph27, %bb.g
  %.025 = phi i64 [ 0, %.lr.ph27 ], [ %.1, %bb.g ] ; 2 uses
  %.02224 = phi i64 [ 0, %.lr.ph27 ], [ %i.bn, %bb.g ] ; 3 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !1498
  %i.x = getelementptr inbounds nuw [1192 x i8], ptr %i.w, i64 %.02224 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i8 1, ptr %i.a, align 1, !tbaa !219
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE13SetKeepPinnedERKb(ptr noundef nonnull align 8 dereferenceable(1192) %i.x, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1161
  store i8 1, ptr %i.y, align 1, !tbaa !1489
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !1459
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.02224 ; 4 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !1512
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !1521
  %i.ae = icmp eq i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = add i64 %.025, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr %i.x, ptr %4, align 8, !tbaa !11287
  %5 = load i64, ptr %i.aa, align 8, !tbaa !168
  %i.ag = lshr i64 %5, 11                         ; 3 uses
  store i64 %i.ag, ptr %i.t, align 8, !tbaa !168
  %i.ah = load i64, ptr %i.aa, align 8, !tbaa !168
  %i.ai = and i64 %i.ah, 2047                     ; 3 uses
  store i64 %i.ai, ptr %i.u, align 8, !tbaa !168
  %i.aj = load i64, ptr %i.ac, align 8, !tbaa !168 ; 2 uses
  %i.ak = lshr i64 %i.aj, 11
  %i.al = and i64 %i.aj, 2047
  %.not.i23 = icmp ne i64 %i.ag, %i.ak
  %i.am = icmp ne i64 %i.ai, %i.al
  %i.an = select i1 %.not.i23, i1 true, i1 %i.am
  br i1 %i.an, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEdeEv.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.g

.lr.ph:                                           ; preds = %bb.e, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEdeEv.exit
  %i.ao = phi i64 [ %i.bh, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEdeEv.exit ], [ %i.ai, %bb.e ]
  %i.ap = phi ptr [ %i.av, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEdeEv.exit ], [ %i.x, %bb.e ] ; 4 uses
  %i.aq = phi i64 [ %i.bg, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEdeEv.exit ], [ %i.ag, %bb.e ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !1478
  %.not.i.i = icmp eq i64 %i.aq, %i.as
  br i1 %.not.i.i, label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEdeEv.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE15InitializeChunkINS_7SortKeyILNS_11SortKeyTypeE7EEEEEvRKm(ptr noundef nonnull align 8 dereferenceable(1192) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
  %.pre30 = load ptr, ptr %4, align 8, !tbaa !11287
  %.pre32 = load i64, ptr %i.u, align 8, !tbaa !168
  %.pre33 = load i64, ptr %i.t, align 8, !tbaa !168
  br label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEdeEv.exit

_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE7EEEEdeEv.exit: ; preds = %.lr.ph, %bb.f
  %i.at = phi i64 [ %i.aq, %.lr.ph ], [ %.pre33, %bb.f ]
  %i.au = phi i64 [ %i.ao, %.lr.ph ], [ %.pre32, %bb.f ] ; 2 uses
  %i.av = phi ptr [ %i.ap, %.lr.ph ], [ %.pre30, %bb.f ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 584
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1487
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.au
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1048
  %i.ba = load i64, ptr %i.p, align 8, !tbaa !1504 ; 2 uses
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.p, align 8, !tbaa !1504
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false)
  %i.bd = add i64 %i.au, 1                        ; 2 uses
  %i.be = icmp eq i64 %i.bd, 2048                 ; 2 uses
  %i.bf = zext i1 %i.be to i64
  %i.bg = add i64 %i.at, %i.bf                    ; 3 uses
  store i64 %i.bg, ptr %i.t, align 8, !tbaa !168
  %i.bh = select i1 %i.be, i64 0, i64 %i.bd       ; 3 uses
  store i64 %i.bh, ptr %i.u, align 8, !tbaa !168
  %i.bi = load i64, ptr %i.ac, align 8, !tbaa !168 ; 2 uses
  %i.bj = lshr i64 %i.bi, 11
  %i.bk = and i64 %i.bi, 2047
  %.not.i = icmp ne i64 %i.bg, %i.bj
  %i.bl = icmp ne i64 %i.bh, %i.bk
  %i.bm = or i1 %.not.i, %i.bl
  br i1 %i.bm, label %.lr.ph, label %._crit_edge, !llvm.loop !11807

bb.g:                                             ; preds = %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.af, %._crit_edge ], [ %.025, %bb.d ] ; 2 uses
  %i.bn = add nuw i64 %.02224, 1                  ; 2 uses
  %i.bo = load i64, ptr %i.q, align 8, !tbaa !1458
  %i.bp = icmp ult i64 %i.bn, %i.bo
  br i1 %i.bp, label %bb.d, label %._crit_edge28, !llvm.loop !11808

._crit_edge28.thread:                             ; preds = %bb.c, %._crit_edge28
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1465, !nonnull !69, !align !81
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 57
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !1699, !range !68, !noundef !69
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge28.thread
  %i.bv = load i64, ptr %i.p, align 8, !tbaa !1504
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.bv
  call void @_ZN16duckdb_vergesort6detail9vergesortIPN6duckdb7SortKeyILNS2_11SortKeyTypeE7EEESt4lessIS5_EZNS2_25SortedRunMergerLocalState23TemplatedMergePartitionINS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE1EEELS4_7EEEvRNS2_26SortedRunMergerGlobalStateERNS2_6vectorIT_Lb0ESaISH_EEEEUlS6_S6_E_EEvSH_SH_T0_St26random_access_iterator_tagT1_(ptr noundef %i.o, ptr noundef %i.bw)
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge28, %._crit_edge28.thread, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb25SortedRunMergerLocalState23TemplatedMergePartitionINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEELNS_11SortKeyTypeE8EEEvRNS_26SortedRunMergerGlobalStateERNS_6vectorIT_Lb0ESaIS9_EEE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull align 8 dereferenceable(280) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.duckdb::AllocatedData", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.duckdb::block_iterator_t.1821", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1531 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1464, !nonnull !69, !align !81
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.f) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1465, !nonnull !69, !align !81
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1554
  %i.l = shl i64 %i.k, 5                          ; 2 uses
  %i.m = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %i.l), !noalias !11809
  call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef %i.m, i64 noundef %i.l)
  %i.n = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %3) #29 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !1531
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = phi ptr [ %.pre, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1458
  %.not29 = icmp eq i64 %i.r, 0
  br i1 %.not29, label %._crit_edge28.thread, label %.lr.ph27

.lr.ph27:                                         ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  br label %bb.d

._crit_edge28:                                    ; preds = %bb.g
  %i.v = icmp eq i64 %.1, 1
  br i1 %i.v, label %bb.i, label %._crit_edge28.thread

bb.d:                                             ; preds = %.lr.ph27, %bb.g
  %.025 = phi i64 [ 0, %.lr.ph27 ], [ %.1, %bb.g ] ; 2 uses
  %.02224 = phi i64 [ 0, %.lr.ph27 ], [ %i.bn, %bb.g ] ; 3 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !1498
  %i.x = getelementptr inbounds nuw [1192 x i8], ptr %i.w, i64 %.02224 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i8 1, ptr %i.a, align 1, !tbaa !219
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE13SetKeepPinnedERKb(ptr noundef nonnull align 8 dereferenceable(1192) %i.x, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1161
  store i8 1, ptr %i.y, align 1, !tbaa !1489
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !1459
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.02224 ; 4 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !1512
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !1521
  %i.ae = icmp eq i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = add i64 %.025, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr %i.x, ptr %4, align 8, !tbaa !11294
  %5 = load i64, ptr %i.aa, align 8, !tbaa !168
  %i.ag = lshr i64 %5, 11                         ; 3 uses
  store i64 %i.ag, ptr %i.t, align 8, !tbaa !168
  %i.ah = load i64, ptr %i.aa, align 8, !tbaa !168
  %i.ai = and i64 %i.ah, 2047                     ; 3 uses
  store i64 %i.ai, ptr %i.u, align 8, !tbaa !168
  %i.aj = load i64, ptr %i.ac, align 8, !tbaa !168 ; 2 uses
  %i.ak = lshr i64 %i.aj, 11
  %i.al = and i64 %i.aj, 2047
  %.not.i23 = icmp ne i64 %i.ag, %i.ak
  %i.am = icmp ne i64 %i.ai, %i.al
  %i.an = select i1 %.not.i23, i1 true, i1 %i.am
  br i1 %i.an, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEdeEv.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.g

.lr.ph:                                           ; preds = %bb.e, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEdeEv.exit
  %i.ao = phi i64 [ %i.bh, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEdeEv.exit ], [ %i.ai, %bb.e ]
  %i.ap = phi ptr [ %i.av, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEdeEv.exit ], [ %i.x, %bb.e ] ; 4 uses
  %i.aq = phi i64 [ %i.bg, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEdeEv.exit ], [ %i.ag, %bb.e ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !1478
  %.not.i.i = icmp eq i64 %i.aq, %i.as
  br i1 %.not.i.i, label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEdeEv.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE15InitializeChunkINS_7SortKeyILNS_11SortKeyTypeE8EEEEEvRKm(ptr noundef nonnull align 8 dereferenceable(1192) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
  %.pre30 = load ptr, ptr %4, align 8, !tbaa !11294
  %.pre32 = load i64, ptr %i.u, align 8, !tbaa !168
  %.pre33 = load i64, ptr %i.t, align 8, !tbaa !168
  br label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEdeEv.exit

_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE8EEEEdeEv.exit: ; preds = %.lr.ph, %bb.f
  %i.at = phi i64 [ %i.aq, %.lr.ph ], [ %.pre33, %bb.f ]
  %i.au = phi i64 [ %i.ao, %.lr.ph ], [ %.pre32, %bb.f ] ; 2 uses
  %i.av = phi ptr [ %i.ap, %.lr.ph ], [ %.pre30, %bb.f ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 584
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1487
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.au
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1051
  %i.ba = load i64, ptr %i.p, align 8, !tbaa !1504 ; 2 uses
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.p, align 8, !tbaa !1504
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %i.az, i64 32, i1 false)
  %i.bd = add i64 %i.au, 1                        ; 2 uses
  %i.be = icmp eq i64 %i.bd, 2048                 ; 2 uses
  %i.bf = zext i1 %i.be to i64
  %i.bg = add i64 %i.at, %i.bf                    ; 3 uses
  store i64 %i.bg, ptr %i.t, align 8, !tbaa !168
  %i.bh = select i1 %i.be, i64 0, i64 %i.bd       ; 3 uses
  store i64 %i.bh, ptr %i.u, align 8, !tbaa !168
  %i.bi = load i64, ptr %i.ac, align 8, !tbaa !168 ; 2 uses
  %i.bj = lshr i64 %i.bi, 11
  %i.bk = and i64 %i.bi, 2047
  %.not.i = icmp ne i64 %i.bg, %i.bj
  %i.bl = icmp ne i64 %i.bh, %i.bk
  %i.bm = or i1 %.not.i, %i.bl
  br i1 %i.bm, label %.lr.ph, label %._crit_edge, !llvm.loop !11812

bb.g:                                             ; preds = %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.af, %._crit_edge ], [ %.025, %bb.d ] ; 2 uses
  %i.bn = add nuw i64 %.02224, 1                  ; 2 uses
  %i.bo = load i64, ptr %i.q, align 8, !tbaa !1458
  %i.bp = icmp ult i64 %i.bn, %i.bo
  br i1 %i.bp, label %bb.d, label %._crit_edge28, !llvm.loop !11813

._crit_edge28.thread:                             ; preds = %bb.c, %._crit_edge28
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1465, !nonnull !69, !align !81
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 57
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !1699, !range !68, !noundef !69
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge28.thread
  %i.bv = load i64, ptr %i.p, align 8, !tbaa !1504
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.bv
  call void @_ZN16duckdb_vergesort6detail9vergesortIPN6duckdb7SortKeyILNS2_11SortKeyTypeE8EEESt4lessIS5_EZNS2_25SortedRunMergerLocalState23TemplatedMergePartitionINS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE1EEELS4_8EEEvRNS2_26SortedRunMergerGlobalStateERNS2_6vectorIT_Lb0ESaISH_EEEEUlS6_S6_E_EEvSH_SH_T0_St26random_access_iterator_tagT1_(ptr noundef %i.o, ptr noundef %i.bw)
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge28, %._crit_edge28.thread, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb25SortedRunMergerLocalState23TemplatedMergePartitionINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEELNS_11SortKeyTypeE9EEEvRNS_26SortedRunMergerGlobalStateERNS_6vectorIT_Lb0ESaIS9_EEE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull align 8 dereferenceable(280) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.duckdb::AllocatedData", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.duckdb::block_iterator_t.1829", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1531 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1464, !nonnull !69, !align !81
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.f) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1465, !nonnull !69, !align !81
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1554
  %i.l = shl i64 %i.k, 5                          ; 2 uses
  %i.m = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %i.l), !noalias !11814
  call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef %i.m, i64 noundef %i.l)
  %i.n = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %3) #29 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !1531
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = phi ptr [ %.pre, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1458
  %.not29 = icmp eq i64 %i.r, 0
  br i1 %.not29, label %._crit_edge28.thread, label %.lr.ph27

.lr.ph27:                                         ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  br label %bb.d

._crit_edge28:                                    ; preds = %bb.g
  %i.v = icmp eq i64 %.1, 1
  br i1 %i.v, label %bb.i, label %._crit_edge28.thread

bb.d:                                             ; preds = %.lr.ph27, %bb.g
  %.025 = phi i64 [ 0, %.lr.ph27 ], [ %.1, %bb.g ] ; 2 uses
  %.02224 = phi i64 [ 0, %.lr.ph27 ], [ %i.bn, %bb.g ] ; 3 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !1498
  %i.x = getelementptr inbounds nuw [1192 x i8], ptr %i.w, i64 %.02224 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i8 1, ptr %i.a, align 1, !tbaa !219
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE13SetKeepPinnedERKb(ptr noundef nonnull align 8 dereferenceable(1192) %i.x, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1161
  store i8 1, ptr %i.y, align 1, !tbaa !1489
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !1459
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.02224 ; 4 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !1512
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !1521
  %i.ae = icmp eq i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = add i64 %.025, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr %i.x, ptr %4, align 8, !tbaa !11301
  %5 = load i64, ptr %i.aa, align 8, !tbaa !168
  %i.ag = lshr i64 %5, 11                         ; 3 uses
  store i64 %i.ag, ptr %i.t, align 8, !tbaa !168
  %i.ah = load i64, ptr %i.aa, align 8, !tbaa !168
  %i.ai = and i64 %i.ah, 2047                     ; 3 uses
  store i64 %i.ai, ptr %i.u, align 8, !tbaa !168
  %i.aj = load i64, ptr %i.ac, align 8, !tbaa !168 ; 2 uses
  %i.ak = lshr i64 %i.aj, 11
  %i.al = and i64 %i.aj, 2047
  %.not.i23 = icmp ne i64 %i.ag, %i.ak
  %i.am = icmp ne i64 %i.ai, %i.al
  %i.an = select i1 %.not.i23, i1 true, i1 %i.am
  br i1 %i.an, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEdeEv.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.g

.lr.ph:                                           ; preds = %bb.e, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEdeEv.exit
  %i.ao = phi i64 [ %i.bh, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEdeEv.exit ], [ %i.ai, %bb.e ]
  %i.ap = phi ptr [ %i.av, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEdeEv.exit ], [ %i.x, %bb.e ] ; 4 uses
  %i.aq = phi i64 [ %i.bg, %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEdeEv.exit ], [ %i.ag, %bb.e ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !1478
  %.not.i.i = icmp eq i64 %i.aq, %i.as
  br i1 %.not.i.i, label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEdeEv.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  call void @_ZN6duckdb18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EE15InitializeChunkINS_7SortKeyILNS_11SortKeyTypeE9EEEEEvRKm(ptr noundef nonnull align 8 dereferenceable(1192) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
  %.pre30 = load ptr, ptr %4, align 8, !tbaa !11301
  %.pre32 = load i64, ptr %i.u, align 8, !tbaa !168
  %.pre33 = load i64, ptr %i.t, align 8, !tbaa !168
  br label %_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEdeEv.exit

_ZNK6duckdb16block_iterator_tINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEENS_7SortKeyILNS_11SortKeyTypeE9EEEEdeEv.exit: ; preds = %.lr.ph, %bb.f
  %i.at = phi i64 [ %i.aq, %.lr.ph ], [ %.pre33, %bb.f ]
  %i.au = phi i64 [ %i.ao, %.lr.ph ], [ %.pre32, %bb.f ] ; 2 uses
  %i.av = phi ptr [ %i.ap, %.lr.ph ], [ %.pre30, %bb.f ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 584
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1487
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.au
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1054
  %i.ba = load i64, ptr %i.p, align 8, !tbaa !1504 ; 2 uses
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.p, align 8, !tbaa !1504
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %i.az, i64 32, i1 false)
  %i.bd = add i64 %i.au, 1                        ; 2 uses
  %i.be = icmp eq i64 %i.bd, 2048                 ; 2 uses
  %i.bf = zext i1 %i.be to i64
  %i.bg = add i64 %i.at, %i.bf                    ; 3 uses
  store i64 %i.bg, ptr %i.t, align 8, !tbaa !168
  %i.bh = select i1 %i.be, i64 0, i64 %i.bd       ; 3 uses
  store i64 %i.bh, ptr %i.u, align 8, !tbaa !168
  %i.bi = load i64, ptr %i.ac, align 8, !tbaa !168 ; 2 uses
  %i.bj = lshr i64 %i.bi, 11
  %i.bk = and i64 %i.bi, 2047
  %.not.i = icmp ne i64 %i.bg, %i.bj
  %i.bl = icmp ne i64 %i.bh, %i.bk
  %i.bm = or i1 %.not.i, %i.bl
  br i1 %i.bm, label %.lr.ph, label %._crit_edge, !llvm.loop !11817

bb.g:                                             ; preds = %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.af, %._crit_edge ], [ %.025, %bb.d ] ; 2 uses
  %i.bn = add nuw i64 %.02224, 1                  ; 2 uses
  %i.bo = load i64, ptr %i.q, align 8, !tbaa !1458
  %i.bp = icmp ult i64 %i.bn, %i.bo
  br i1 %i.bp, label %bb.d, label %._crit_edge28, !llvm.loop !11818

._crit_edge28.thread:                             ; preds = %bb.c, %._crit_edge28
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1465, !nonnull !69, !align !81
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 57
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !1699, !range !68, !noundef !69
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge28.thread
  %i.bv = load i64, ptr %i.p, align 8, !tbaa !1504
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.bv
  call void @_ZN16duckdb_vergesort6detail9vergesortIPN6duckdb7SortKeyILNS2_11SortKeyTypeE9EEESt4lessIS5_EZNS2_25SortedRunMergerLocalState23TemplatedMergePartitionINS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE1EEELS4_9EEEvRNS2_26SortedRunMergerGlobalStateERNS2_6vectorIT_Lb0ESaISH_EEEEUlS6_S6_E_EEvSH_SH_T0_St26random_access_iterator_tagT1_(ptr noundef %i.o, ptr noundef %i.bw)
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge28, %._crit_edge28.thread, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN16duckdb_vergesort6detail9vergesortIPN6duckdb7SortKeyILNS2_11SortKeyTypeE1EEESt4lessIS5_EZNS2_25SortedRunMergerLocalState23TemplatedMergePartitionINS2_18BlockIteratorStateILNS2_22BlockIteratorStateTypeE1EEELS4_1EEEvRNS2_26SortedRunMergerGlobalStateERNS2_6vectorIT_Lb0ESaISH_EEEEUlS6_S6_E_EEvSH_SH_T0_St26random_access_iterator_tagT1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::list.1833", align 8 ; 22 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 4 uses
  %i.e = icmp slt i64 %i.d, 128
  br i1 %i.e, label %bb.b, label %.preheader216.preheader

.preheader216.preheader:                          ; preds = %bb.a
  %i.f = lshr i64 %i.d, 1
  %i.g = tail call range(i64 2, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 false)
  %i.h = sub nuw nsw i64 64, %i.g
  %i.i = udiv i64 %i.d, %i.h                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store ptr %2, ptr %i.j, align 8, !tbaa !1235
  store ptr %2, ptr %2, align 8, !tbaa !1238
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 15 uses
  store i64 0, ptr %i.k, align 8, !tbaa !1239
  %.057230 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = ptrtoint ptr %.057230 to i64
  %i.m = sub i64 %i.a, %i.l
  %i.n = ashr exact i64 %i.m, 3
  %.not231 = icmp sgt i64 %i.n, %i.i
  br i1 %.not231, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.o = icmp eq ptr %0, %1
  br i1 %i.o, label %_ZZN6duckdb25SortedRunMergerLocalState23TemplatedMergePartitionINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEELNS_11SortKeyTypeE1EEEvRNS_26SortedRunMergerGlobalStateERNS_6vectorIT_Lb0ESaIS9_EEEENKUlPNS_7SortKeyILS5_1EEESF_E_clESF_SF_.exit, label %.preheader

.preheader:                                       ; preds = %bb.b, %.preheader
  %.03.i.i.i.i = phi i64 [ %i.p, %.preheader ], [ %i.d, %bb.b ]
  %.0.i.i.i.i = phi i32 [ %i.q, %.preheader ], [ 0, %bb.b ] ; 2 uses
  %i.p = ashr i64 %.03.i.i.i.i, 1                 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.p, 0
  %i.q = add nuw nsw i32 %.0.i.i.i.i, 1
  br i1 %.not.i.i.i.i, label %_ZN14duckdb_pdqsort14pdqsort_detail4log2IlEEiT_.exit.i.i.i, label %.preheader, !llvm.loop !11357

_ZN14duckdb_pdqsort14pdqsort_detail4log2IlEEiT_.exit.i.i.i: ; preds = %.preheader
  tail call void @_ZN14duckdb_pdqsort14pdqsort_detail12pdqsort_loopIPN6duckdb7SortKeyILNS2_11SortKeyTypeE1EEESt4lessIS5_ELb1EEEvT_S9_T0_ib(ptr noundef %0, ptr noundef %1, i32 noundef %.0.i.i.i.i, i1 noundef zeroext true)
  br label %_ZZN6duckdb25SortedRunMergerLocalState23TemplatedMergePartitionINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEELNS_11SortKeyTypeE1EEEvRNS_26SortedRunMergerGlobalStateERNS_6vectorIT_Lb0ESaIS9_EEEENKUlPNS_7SortKeyILS5_1EEESF_E_clESF_SF_.exit

bb.c:                                             ; preds = %bb.aa
  %i.r = getelementptr inbounds nuw i8, ptr %.268, i64 8 ; 2 uses
  %.057 = getelementptr inbounds nuw i8, ptr %.2201, i64 8
  %i.s = ptrtoint ptr %.057 to i64
  %i.t = sub i64 %i.a, %i.s
  %i.u = ashr exact i64 %i.t, 3
  %.not = icmp sgt i64 %i.u, %i.i
  br i1 %.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %.preheader216.preheader
  %i.v = phi i64 [ 0, %.preheader216.preheader ], [ %i.ce, %bb.c ]
  %.0191.lcssa = phi ptr [ %0, %.preheader216.preheader ], [ %i.r, %bb.c ]
  %.055.lcssa = phi ptr [ %1, %.preheader216.preheader ], [ %.6, %bb.c ] ; 2 uses
  %i.w = icmp eq ptr %.055.lcssa, %1
  %spec.select = select i1 %i.w, ptr %.0191.lcssa, ptr %.055.lcssa
  br label %.loopexit215

.lr.ph:                                           ; preds = %.preheader216.preheader, %bb.c
  %i.x = phi i64 [ %i.ce, %bb.c ], [ 0, %.preheader216.preheader ] ; 2 uses
  %i.y = phi ptr [ %.2201, %bb.c ], [ %0, %.preheader216.preheader ]
  %.055233 = phi ptr [ %.6, %bb.c ], [ %1, %.preheader216.preheader ] ; 8 uses
  %.0191232 = phi ptr [ %i.r, %bb.c ], [ %0, %.preheader216.preheader ] ; 9 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.0191232, i64 %i.i ; 5 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.i ; 5 uses
  %.val.val.i.i = load i64, ptr %i.ab, align 8, !tbaa !168
  %.val2.val.i.i = load i64, ptr %i.aa, align 8, !tbaa !168
  %i.ac = icmp ult i64 %.val.val.i.i, %.val2.val.i.i
  br i1 %i.ac, label %.preheader213, label %.preheader214

.preheader213:                                    ; preds = %.lr.ph, %.preheader213
  %.1192 = phi ptr [ %i.ad, %.preheader213 ], [ %i.aa, %.lr.ph ] ; 2 uses
  %.158 = phi ptr [ %i.ae, %.preheader213 ], [ %i.ab, %.lr.ph ]
  %i.ad = getelementptr inbounds i8, ptr %.1192, i64 -8 ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %.158, i64 -8 ; 2 uses
  %.val.val.i.i97 = load i64, ptr %i.ad, align 8, !tbaa !168
  %.val2.val.i.i98 = load i64, ptr %i.ae, align 8, !tbaa !168
  %i.af = icmp ult i64 %.val.val.i.i97, %.val2.val.i.i98 ; 2 uses
  %.not79 = icmp eq ptr %i.ad, %.0191232
  %or.cond = or i1 %i.af, %.not79
  br i1 %or.cond, label %bb.e, label %.preheader213, !llvm.loop !11819

bb.d:                                             ; preds = %bb.y, %_ZZN6duckdb25SortedRunMergerLocalState23TemplatedMergePartitionINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEELNS_11SortKeyTypeE1EEEvRNS_26SortedRunMergerGlobalStateERNS_6vectorIT_Lb0ESaIS9_EEEENKUlPNS_7SortKeyILS5_1EEESF_E_clESF_SF_.exit122, %_ZN14duckdb_pdqsort14pdqsort_detail4log2IlEEiT_.exit.i.i.i120, %bb.n, %_ZZN6duckdb25SortedRunMergerLocalState23TemplatedMergePartitionINS_18BlockIteratorStateILNS_22BlockIteratorStateTypeE1EEELNS_11SortKeyTypeE1EEEvRNS_26SortedRunMergerGlobalStateERNS_6vectorIT_Lb0ESaIS9_EEEENKUlPNS_7SortKeyILS5_1EEESF_E_clESF_SF_.exit107, %_ZN14duckdb_pdqsort14pdqsort_detail4log2IlEEiT_.exit.i.i.i106
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %.preheader213
  %spec.select207 = select i1 %i.af, ptr %.1192, ptr %i.ad ; 7 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.0199 = phi ptr [ %i.ab, %bb.e ], [ %storemerge80, %bb.g ] ; 3 uses
  %.pn82 = phi ptr [ %i.aa, %bb.e ], [ %.066, %bb.g ]
  %storemerge80 = getelementptr inbounds nuw i8, ptr %.0199, i64 8 ; 7 uses
  %.066 = getelementptr inbounds nuw i8, ptr %.pn82, i64 8 ; 4 uses
  %.not81 = icmp eq ptr %storemerge80, %1
  br i1 %.not81, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val.val.i.i101 = load i64, ptr %.066, align 8, !tbaa !168
  %.val2.val.i.i102 = load i64, ptr %storemerge80, align 8, !tbaa !168
  %i.ah = icmp ult i64 %.val.val.i.i101, %.val2.val.i.i102
  br i1 %i.ah, label %bb.h, label %bb.f, !llvm.loop !11820

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = ptrtoint ptr %storemerge80 to i64
  %i.aj = ptrtoint ptr %spec.select207 to i64     ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
end_hunk_0

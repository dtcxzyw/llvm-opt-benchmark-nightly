inline.NumInlined: 3050
inline.NumDeleted: 1473
begin_hunk_0_@_ZNSt8_Rb_treeIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyESt4pairIKS4_NS1_7ZoneMapIPNS2_9ValueNodeES9_St4lessIS9_EEEESt10_Select1stISD_ESA_IS4_ENS1_13ZoneAllocatorISD_EEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISD_ERS6_:bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.02022.i30 = load ptr, ptr %i.bd, align 8      ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp ult i64 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8     ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !144

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyESt4pairIKS4_NS1_7ZoneMapIPNS2_9ValueNodeES9_St4lessIS9_EEEESt10_Select1stISD_ESA_IS4_ENS1_13ZoneAllocatorISD_EEE24_M_get_insert_unique_posERS6_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #21 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i64 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult i64 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyESt4pairIKS4_NS1_7ZoneMapIPNS2_9ValueNodeES9_St4lessIS9_EEEESt10_Select1stISD_ESA_IS4_ENS1_13ZoneAllocatorISD_EEE24_M_get_insert_unique_posERS6_.exit

_ZNSt8_Rb_treeIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyESt4pairIKS4_NS1_7ZoneMapIPNS2_9ValueNodeES9_St4lessIS9_EEEESt10_Select1stISD_ESA_IS4_ENS1_13ZoneAllocatorISD_EEE24_M_get_insert_unique_posERS6_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal6maglev8NodeInfo9MergeWithERKS2_PNS0_4ZoneERb(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8
  %i.b = load i32, ptr %0, align 8
  %i.c = or i32 %i.b, %i.a
  store i32 %i.c, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  %i.g = load ptr, ptr %i.e, align 8
  %.not7.i = icmp eq ptr %i.f, %i.g
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not7.i
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not.1.i = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %.not7.1.i = icmp eq ptr %i.i, %i.k
  %or.cond14.i = select i1 %.not.1.i, i1 true, i1 %.not7.1.i
  br i1 %or.cond14.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.h, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not.2.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  %.not7.2.i = icmp eq ptr %i.m, %i.o
  %or.cond16.i = select i1 %.not.2.i, i1 true, i1 %.not7.2.i
  br i1 %or.cond16.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.l, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.3.i = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load ptr, ptr %i.r, align 8
  %.not7.3.i = icmp eq ptr %i.q, %i.s
  %or.cond18.i = select i1 %.not.3.i, i1 true, i1 %.not7.3.i
  br i1 %or.cond18.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %i.p, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not.4.i = icmp eq ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = load ptr, ptr %i.v, align 8
  %.not7.4.i = icmp eq ptr %i.u, %i.w
  %or.cond20.i = select i1 %.not.4.i, i1 true, i1 %.not7.4.i
  br i1 %or.cond20.i, label %_ZN2v88internal6maglev8NodeInfo16AlternativeNodes9MergeWithERKS3_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %i.t, align 8
  br label %_ZN2v88internal6maglev8NodeInfo16AlternativeNodes9MergeWithERKS3_.exit

_ZN2v88internal6maglev8NodeInfo16AlternativeNodes9MergeWithERKS3_.exit: ; preds = %bb.i, %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 3 uses
  %i.y = load i8, ptr %i.x, align 1, !range !5, !noundef !6
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.k, label %_ZN2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE5UnionERKS4_PNS0_4ZoneE.exit.thread

bb.k:                                             ; preds = %_ZN2v88internal6maglev8NodeInfo16AlternativeNodes9MergeWithERKS3_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ab = load i8, ptr %i.aa, align 1, !range !5, !noundef !6
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.ac, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %bb.l
  %.0.i = phi i64 [ 0, %bb.l ], [ %i.ao, %bb.p ]  ; 3 uses
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %i.ae, align 8 ; 3 uses
  %i.af = icmp eq i64 %.sroa.01.0.copyload.i.i.i, 1
  br i1 %i.af, label %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = and i64 %.sroa.01.0.copyload.i.i.i, 3
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = add i64 %.sroa.01.0.copyload.i.i.i, -2
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i64, ptr %i.ak, align 8
  br label %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit.i

_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %.0.i.i = phi i64 [ %i.al, %bb.o ], [ 0, %bb.m ], [ 1, %bb.n ]
  %i.am = icmp ult i64 %.0.i, %.0.i.i
  br i1 %i.am, label %bb.p, label %_ZN2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE5UnionERKS4_PNS0_4ZoneE.exit

bb.p:                                             ; preds = %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit.i
  %i.an = tail call ptr @_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE2atEm(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i64 noundef %.0.i)
  tail call void @_ZN2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE6insertES3_PNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr %i.an, ptr noundef %2)
  %i.ao = add nuw i64 %.0.i, 1
  br label %bb.m, !llvm.loop !145

bb.q:                                             ; preds = %bb.k
  store i64 1, ptr %i.ad, align 8
  store i8 0, ptr %i.x, align 1
  br label %_ZN2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE5UnionERKS4_PNS0_4ZoneE.exit.thread

_ZN2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE5UnionERKS4_PNS0_4ZoneE.exit: ; preds = %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit.i
  %.pre = load i8, ptr %i.x, align 1, !range !5
  %i.ap = trunc nuw i8 %.pre to i1
  br i1 %i.ap, label %bb.r, label %_ZN2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE5UnionERKS4_PNS0_4ZoneE.exit.thread

bb.r:                                             ; preds = %_ZN2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE5UnionERKS4_PNS0_4ZoneE.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ar = load i8, ptr %i.aq, align 4, !range !5, !noundef !6
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %_ZN2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE5UnionERKS4_PNS0_4ZoneE.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.au = load i8, ptr %i.at, align 4, !range !5, !noundef !6
  br label %_ZN2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE5UnionERKS4_PNS0_4ZoneE.exit.thread

_ZN2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE5UnionERKS4_PNS0_4ZoneE.exit.thread: ; preds = %_ZN2v88internal6maglev8NodeInfo16AlternativeNodes9MergeWithERKS3_.exit, %bb.q, %bb.r, %bb.s, %_ZN2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE5UnionERKS4_PNS0_4ZoneE.exit
  %i.av = phi i8 [ 0, %_ZN2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE5UnionERKS4_PNS0_4ZoneE.exit ], [ 1, %bb.r ], [ %i.au, %bb.s ], [ 0, %bb.q ], [ 0, %_ZN2v88internal6maglev8NodeInfo16AlternativeNodes9MergeWithERKS3_.exit ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.av, ptr %i.aw, align 4
  %i.ax = load i8, ptr %3, align 1, !range !5, !noundef !6
  %spec.select = or i8 %i.ax, %i.av
  store i8 %spec.select, ptr %3, align 1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE6insertES3_PNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %1, ptr %3, align 8
  %i.a = call noundef ptr @_ZNK2v88internal8compiler9ObjectRef4dataEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #20 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.sroa.01.0.copyload.i = load i64, ptr %0, align 8 ; 4 uses
  %i.b = icmp eq i64 %.sroa.01.0.copyload.i, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %i.a to i64
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.d = and i64 %.sroa.01.0.copyload.i, 3
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.f = inttoptr i64 %.sroa.01.0.copyload.i to ptr
  %i.g = icmp eq ptr %i.a, %i.f
  br i1 %i.g, label %bb.w, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = sub i64 %i.i, %i.k
  %i.m = icmp ult i64 %i.l, 16
  br i1 %i.m, label %bb.f, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10ObjectDataEA_S5_EEPT_m.exit.i, !prof !16

bb.f:                                             ; preds = %bb.e
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef 16) #20
  %.pre.i.i.i = load i64, ptr %i.j, align 8
  %.pre.i = load i64, ptr %i.h, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10ObjectDataEA_S5_EEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10ObjectDataEA_S5_EEPT_m.exit.i: ; preds = %bb.f, %bb.e
  %i.n = phi i64 [ %.pre.i, %bb.f ], [ %i.i, %bb.e ]
  %i.o = phi i64 [ %.pre.i.i.i, %bb.f ], [ %i.k, %bb.e ] ; 2 uses
  %i.p = add i64 %i.o, 16                         ; 3 uses
  store i64 %i.p, ptr %i.j, align 8
  %i.q = sub i64 %i.n, %i.p
  %i.r = icmp ult i64 %i.q, 16
  br i1 %i.r, label %bb.g, label %_ZN2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE7NewListEmPNS0_4ZoneE.exit, !prof !16

bb.g:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10ObjectDataEA_S5_EEPT_m.exit.i
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef 16) #20
  %.pre.i.i2.i = load i64, ptr %i.j, align 8
  br label %_ZN2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE7NewListEmPNS0_4ZoneE.exit

_ZN2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE7NewListEmPNS0_4ZoneE.exit: ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10ObjectDataEA_S5_EEPT_m.exit.i, %bb.g
  %i.s = phi i64 [ %.pre.i.i2.i, %bb.g ], [ %i.p, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10ObjectDataEA_S5_EEPT_m.exit.i ] ; 3 uses
  %i.t = inttoptr i64 %i.o to ptr                 ; 3 uses
  %i.u = inttoptr i64 %i.s to ptr                 ; 3 uses
  %i.v = add i64 %i.s, 16
  store i64 %i.v, ptr %i.j, align 8
  store ptr %i.t, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 2, ptr %i.w, align 8
  %i.x = load i64, ptr %0, align 8
  %i.y = inttoptr i64 %i.x to ptr                 ; 2 uses
  %i.z = icmp ugt ptr %i.a, %i.y
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE7NewListEmPNS0_4ZoneE.exit
  store ptr %i.y, ptr %i.t, align 8
  br label %bb.j

bb.i:                                             ; preds = %_ZN2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE7NewListEmPNS0_4ZoneE.exit
  store ptr %i.a, ptr %i.t, align 8
  %i.aa = load i64, ptr %0, align 8
  %i.ab = inttoptr i64 %i.aa to ptr
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink = phi ptr [ %i.ab, %bb.i ], [ %i.a, %bb.h ]
  %i.ac = load ptr, ptr %i.u, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %.sink, ptr %i.ad, align 8
  %i.ae = or i64 %i.s, 2
  br label %.sink.split

bb.k:                                             ; preds = %bb.c
  %i.af = add i64 %.sroa.01.0.copyload.i, -2
  %i.ag = inttoptr i64 %i.af to ptr               ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8            ; 4 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.aj
  %i.al = icmp sgt i64 %i.aj, 0
  br i1 %i.al, label %_ZSt9__advanceIPPN2v88internal8compiler10ObjectDataElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIPPN2v88internal8compiler10ObjectDataES4_ET_S6_S6_RKT0_.exit

_ZSt9__advanceIPPN2v88internal8compiler10ObjectDataElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.k, %_ZSt9__advanceIPPN2v88internal8compiler10ObjectDataElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.017.i.i = phi ptr [ %.1.i.i, %_ZSt9__advanceIPPN2v88internal8compiler10ObjectDataElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.ah, %bb.k ] ; 2 uses
  %.01116.i.i = phi i64 [ %.112.i.i, %_ZSt9__advanceIPPN2v88internal8compiler10ObjectDataElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.aj, %bb.k ] ; 2 uses
  %i.am = lshr i64 %.01116.i.i, 1                 ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.017.i.i, i64 %i.am ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = icmp ult ptr %i.ao, %i.a                ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = xor i64 %i.am, -1
  %i.as = add nsw i64 %.01116.i.i, %i.ar
  %.112.i.i = select i1 %i.ap, i64 %i.as, i64 %i.am ; 2 uses
  %.1.i.i = select i1 %i.ap, ptr %i.aq, ptr %.017.i.i ; 2 uses
  %i.at = icmp sgt i64 %.112.i.i, 0
  br i1 %i.at, label %_ZSt9__advanceIPPN2v88internal8compiler10ObjectDataElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIPPN2v88internal8compiler10ObjectDataES4_ET_S6_S6_RKT0_.exit, !llvm.loop !136

_ZSt11lower_boundIPPN2v88internal8compiler10ObjectDataES4_ET_S6_S6_RKT0_.exit: ; preds = %_ZSt9__advanceIPPN2v88internal8compiler10ObjectDataElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %bb.k
  %.0.lcssa.i.i = phi ptr [ %i.ah, %bb.k ], [ %.1.i.i, %_ZSt9__advanceIPPN2v88internal8compiler10ObjectDataElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 5 uses
  %.not = icmp eq ptr %.0.lcssa.i.i, %i.ak
  br i1 %.not, label %.critedge, label %bb.l

bb.l:                                             ; preds = %_ZSt11lower_boundIPPN2v88internal8compiler10ObjectDataES4_ET_S6_S6_RKT0_.exit
  %i.au = load ptr, ptr %.0.lcssa.i.i, align 8
  %i.av = icmp eq ptr %i.au, %i.a
  br i1 %i.av, label %bb.w, label %.critedge

.critedge:                                        ; preds = %bb.l, %_ZSt11lower_boundIPPN2v88internal8compiler10ObjectDataES4_ET_S6_S6_RKT0_.exit
  %i.aw = add i64 %i.aj, 1                        ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 2305843009213693951
  br i1 %i.ax, label %bb.n, label %bb.m, !prof !38

bb.m:                                             ; preds = %.critedge
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #22
  unreachable

bb.n:                                             ; preds = %.critedge
  %i.ay = shl nuw i64 %i.aw, 3                    ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.bc = load i64, ptr %i.bb, align 8            ; 2 uses
  %i.bd = sub i64 %i.ba, %i.bc
  %i.be = icmp ugt i64 %i.ay, %i.bd
  br i1 %i.be, label %bb.o, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10ObjectDataEA_S5_EEPT_m.exit.i26, !prof !16

bb.o:                                             ; preds = %bb.n
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.ay) #20
  %.pre.i.i.i28 = load i64, ptr %i.bb, align 8
  %.pre.i29 = load i64, ptr %i.az, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10ObjectDataEA_S5_EEPT_m.exit.i26

_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10ObjectDataEA_S5_EEPT_m.exit.i26: ; preds = %bb.o, %bb.n
  %i.bf = phi i64 [ %.pre.i29, %bb.o ], [ %i.ba, %bb.n ]
  %i.bg = phi i64 [ %.pre.i.i.i28, %bb.o ], [ %i.bc, %bb.n ] ; 2 uses
  %i.bh = add i64 %i.bg, %i.ay                    ; 3 uses
  store i64 %i.bh, ptr %i.bb, align 8
  %i.bi = sub i64 %i.bf, %i.bh
  %i.bj = icmp ult i64 %i.bi, 16
  br i1 %i.bj, label %bb.p, label %_ZN2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE7NewListEmPNS0_4ZoneE.exit30, !prof !16

bb.p:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10ObjectDataEA_S5_EEPT_m.exit.i26
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef 16) #20
  %.pre.i.i2.i27 = load i64, ptr %i.bb, align 8
  br label %_ZN2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE7NewListEmPNS0_4ZoneE.exit30

_ZN2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE7NewListEmPNS0_4ZoneE.exit30: ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10ObjectDataEA_S5_EEPT_m.exit.i26, %bb.p
  %i.bk = phi i64 [ %.pre.i.i2.i27, %bb.p ], [ %i.bh, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10ObjectDataEA_S5_EEPT_m.exit.i26 ] ; 3 uses
  %i.bl = inttoptr i64 %i.bg to ptr               ; 4 uses
  %i.bm = inttoptr i64 %i.bk to ptr               ; 2 uses
  %i.bn = add i64 %i.bk, 16
  store i64 %i.bn, ptr %i.bb, align 8
  store ptr %i.bl, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 %i.aw, ptr %i.bo, align 8
  %i.bp = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.bq = ptrtoint ptr %.0.lcssa.i.i to i64       ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 4 uses
  %i.bt = icmp sgt i64 %i.bs, 8
  br i1 %i.bt, label %bb.q, label %bb.r, !prof !38

bb.q:                                             ; preds = %_ZN2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE7NewListEmPNS0_4ZoneE.exit30
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bl, ptr align 8 %i.bp, i64 %i.bs, i1 false)
  br label %_ZSt4copyIPPN2v88internal8compiler10ObjectDataES5_ET0_T_S7_S6_.exit

bb.r:                                             ; preds = %_ZN2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE7NewListEmPNS0_4ZoneE.exit30
  %i.bu = icmp eq i64 %i.bs, 8
  br i1 %i.bu, label %bb.s, label %_ZSt4copyIPPN2v88internal8compiler10ObjectDataES5_ET0_T_S7_S6_.exit

bb.s:                                             ; preds = %bb.r
  %i.bv = load ptr, ptr %i.bp, align 8
  store ptr %i.bv, ptr %i.bl, align 8
  br label %_ZSt4copyIPPN2v88internal8compiler10ObjectDataES5_ET0_T_S7_S6_.exit

_ZSt4copyIPPN2v88internal8compiler10ObjectDataES5_ET0_T_S7_S6_.exit: ; preds = %bb.q, %bb.r, %bb.s
  %i.bw = getelementptr inbounds i8, ptr %i.bl, i64 %i.bs ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  store ptr %i.a, ptr %i.bw, align 8
  %i.by = load ptr, ptr %i.ag, align 8
  %i.bz = load i64, ptr %i.ai, align 8
end_hunk_0

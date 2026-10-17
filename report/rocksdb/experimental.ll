Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/experimental?download=true
inline.NumInlined: 4616
inline.NumDeleted: 2437
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNSt8_Rb_treeIjSt4pairIKjN7rocksdb12experimental21SstQueryFilterConfigsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_:bb.a

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !254
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIjSt4pairIKjN7rocksdb12experimental21SstQueryFilterConfigsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #37 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i32, ptr %.phi.trans.insert80, align 4, !tbaa !118
  %.pre82 = load i32, ptr %2, align 4, !tbaa !118
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i32 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i32 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult i32 %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN7rocksdb12experimental21SstQueryFilterConfigsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i32, ptr %2, align 4, !tbaa !118    ; 8 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !118  ; 2 uses
  %i.z = icmp ult i32 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !352 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIjSt4pairIKjN7rocksdb12experimental21SstQueryFilterConfigsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #37 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !118
  %i.ag = icmp ult i32 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !363
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN7rocksdb12experimental21SstQueryFilterConfigsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !352 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i32, ptr %i.al, align 4, !tbaa !118 ; 2 uses
  %i.an = icmp ult i32 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !352 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !1090

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIjSt4pairIKjN7rocksdb12experimental21SstQueryFilterConfigsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #37 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 4, !tbaa !118
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i32 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult i32 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN7rocksdb12experimental21SstQueryFilterConfigsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult i32 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIjSt4pairIKjN7rocksdb12experimental21SstQueryFilterConfigsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !352 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIjSt4pairIKjN7rocksdb12experimental21SstQueryFilterConfigsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #37 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !118
  %i.az = icmp ult i32 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !363
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN7rocksdb12experimental21SstQueryFilterConfigsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !352 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !118 ; 2 uses
  %i.bg = icmp ult i32 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !352 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !1090

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !254
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIjSt4pairIKjN7rocksdb12experimental21SstQueryFilterConfigsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #37 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !118
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i32 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult i32 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN7rocksdb12experimental21SstQueryFilterConfigsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeIjSt4pairIKjN7rocksdb12experimental21SstQueryFilterConfigsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIjSt4pairIKjN7rocksdb12experimental21SstQueryFilterConfigsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !411  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @_ZN7rocksdb12experimental21SstQueryFilterConfigsD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.c) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 80) #31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.au, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !299  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !298    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !300
  %i.j = load ptr, ptr %0, align 8, !tbaa !298    ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEESaIS4_EE11_M_allocateEm.exit.i, !prof !119

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #35
  unreachable

_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #33 ; 3 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEESaIS4_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructISt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.z, %_ZSt10_ConstructISt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEESaIS4_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.y, %_ZSt10_ConstructISt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEESaIS4_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !114  ; 2 uses
  %i.s = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !154
  store <2 x ptr> %i.s, ptr %.08.i.i.i.i.i, align 8, !tbaa !154
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.t, align 4, !tbaa !118
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !118
  br label %_ZSt10_ConstructISt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16
  %i.aa = icmp eq ptr %i.y, %i.b
  br i1 %i.aa, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1091

_ZNSt6vectorISt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.ab = load ptr, ptr %0, align 8, !tbaa !298   ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !299 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEEEvT_S6_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorISt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit, %_ZSt8_DestroyISt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.av, %_ZSt8_DestroyISt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEEEvPT_.exit.i.i ], [ %i.ab, %_ZNSt6vectorISt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !114 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEEEvPT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4294967297
  %i.aj = trunc i64 %i.ah to i32                  ; 2 uses
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ag, align 8, !tbaa !116
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !117
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !46
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #32, !inline_history !1092
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !46
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #32, !inline_history !1092
  br label %_ZSt8_DestroyISt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEEEvPT_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = add nsw i32 %i.aj, -1
  store i32 %i.as, ptr %i.ag, align 8, !tbaa !118
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.at = atomicrmw volatile add ptr %i.ag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.aj, %bb.k ], [ %i.at, %bb.l ]
  %i.au = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.au, label %bb.m, label %_ZSt8_DestroyISt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEEEvPT_.exit.i.i, !prof !119

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #32
  br label %_ZSt8_DestroyISt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEEEvPT_.exit.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.i, %.lr.ph.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.av, %i.ad
  br i1 %.not.i.i25, label %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEEEvT_S6_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !12

_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEEEvT_S6_.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !298
  br label %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEEEvT_S6_.exit

_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEEEvT_S6_.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEEEvT_S6_.exitthread-pre-split, %_ZNSt6vectorISt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit
  %i.aw = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEEEvT_S6_.exitthread-pre-split ], [ %i.ab, %_ZNSt6vectorISt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEEEvT_S6_.exit
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !300
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = sub i64 %i.ay, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.ba) #31
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEEEvT_S6_.exit, %bb.n
  store ptr %i.p, ptr %0, align 8, !tbaa !298
  %i.bb = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.bb, ptr %i.h, align 8, !tbaa !300
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit

bb.o:                                             ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !299 ; 3 uses
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.bf, %i.f
  br i1 %.not24, label %bb.ag, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = icmp sgt i64 %i.g, 0
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit

.lr.ph.i.i.i.i.i26:                               ; preds = %bb.p, %_ZNSt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEEaSERKS3_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.cj, %_ZNSt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEEaSERKS3_.exit.i.i.i.i.i ], [ %i.g, %bb.p ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ci, %_ZNSt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEEaSERKS3_.exit.i.i.i.i.i ], [ %i.j, %bb.p ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ch, %_ZNSt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEEaSERKS3_.exit.i.i.i.i.i ], [ %i.c, %bb.p ] ; 3 uses
  %i.bh = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !327
  store ptr %i.bh, ptr %.0811.i.i.i.i.i, align 8, !tbaa !327
  %i.bi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !114 ; 4 uses
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !114 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bk, %i.bl
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEEaSERKS3_.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i26
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 3 uses
  %i.bn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i.i.i.i.i27 = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i27, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !118
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !118
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bq = atomicrmw volatile add ptr %i.bm, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.bi, align 8, !tbaa !114
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.q
  %i.br = phi ptr [ %i.bl, %bb.q ], [ %i.bl, %bb.s ], [ %.pr.pre.i.i.i.i.i.i.i.i, %bb.t ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not8.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 4 uses
  %i.bt = load atomic i64, ptr %i.bs acquire, align 8 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 4294967297
  %i.bv = trunc i64 %i.bt to i32                  ; 2 uses
  br i1 %i.bu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bs, align 8, !tbaa !116
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i32 0, ptr %i.bw, align 4, !tbaa !117
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !46
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  tail call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #32, !inline_history !1093
  %i.ca = load ptr, ptr %i.br, align 8, !tbaa !46
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #32, !inline_history !1093
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i9.i.i.i.i.i.i.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ce = add nsw i32 %i.bv, -1
  store i32 %i.ce, ptr %i.bs, align 8, !tbaa !118
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.cf = atomicrmw volatile add ptr %i.bs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bv, %bb.x ], [ %i.cf, %bb.y ]
  %i.cg = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cg, label %bb.z, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, !prof !119

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #32
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.v, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !114
  br label %_ZNSt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEEaSERKS3_.exit.i.i.i.i.i

_ZNSt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEEaSERKS3_.exit.i.i.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i26
  %i.ch = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 3 uses
  %i.cj = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ck = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.loopexit, !llvm.loop !1094

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.loopexit: ; preds = %_ZNSt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEEaSERKS3_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.bc, align 8, !tbaa !412
  %.pre63 = ptrtoint ptr %i.ci to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.loopexit, %bb.p
  %.pre-phi64 = phi i64 [ %.pre63, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.loopexit ], [ %i.l, %bb.p ]
  %i.cl = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.loopexit ], [ %i.bd, %bb.p ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.ci, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN7rocksdb12experimental20SstQueryFilterConfigEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit.loopexit ], [ %i.j, %bb.p ]
end_hunk_0

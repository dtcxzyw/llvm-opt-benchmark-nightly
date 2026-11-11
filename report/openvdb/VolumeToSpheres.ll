Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/VolumeToSpheres?download=true
inline.NumInlined: 56869
inline.NumDeleted: 18802
loop-unroll.NumCompletelyUnrolled: 221
loop-unroll.NumRuntimeUnrolled: 172
loop-unroll.NumUnrolled: 789
begin_hunk_0_@_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_:bb.a

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i32, ptr %2, align 4, !tbaa !521    ; 8 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !521  ; 2 uses
  %i.z = icmp ult i32 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !906 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #34 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !521
  %i.ag = icmp ult i32 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !921
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !906 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i32, ptr %i.al, align 4, !tbaa !521 ; 2 uses
  %i.an = icmp ult i32 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !906 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !9800

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #34 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 4, !tbaa !521
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i32 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult i32 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult i32 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !906 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #34 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !521
  %i.az = icmp ult i32 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !921
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !906 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !521 ; 2 uses
  %i.bg = icmp ult i32 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !906 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !9800

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !682
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #34 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !521
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i32 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult i32 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3730 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !924  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !926
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #31
  br label %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #31
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools23volume_to_mesh_internal20computeWeightedPointERKNS0_4math4Vec3IdEERKSt5arrayIdLm8EEhhd(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, i8 noundef zeroext %3, i8 noundef zeroext %4, double noundef %5) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
_ZNSt12_Vector_baseIN7openvdb5v13_04math4Vec3IdEESaIS4_EE11_M_allocateEm.exit.i:
  %i.a = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #30 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.c = zext i8 %3 to i64
  %i.d = getelementptr inbounds nuw [13 x i8], ptr @_ZN7openvdb5v13_05tools23volume_to_mesh_internalL15sEdgeGroupTableE, i64 %i.c ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !548
  %i.g = icmp eq i8 %i.f, %4
  br i1 %i.g, label %bb.a, label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit

bb.a:                                             ; preds = %_ZNSt12_Vector_baseIN7openvdb5v13_04math4Vec3IdEESaIS4_EE11_M_allocateEm.exit.i
  %i.h = load double, ptr %2, align 8, !tbaa !701 ; 2 uses
  %i.i = fsub double %5, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load double, ptr %i.j, align 8, !tbaa !701
  %i.l = fsub double %i.k, %i.h
  %i.m = fdiv double %i.i, %i.l
  store double %i.m, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx297 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.44.0..sroa_idx297, i8 0, i64 16, i1 false)
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit

bb.b:                                             ; preds = %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i201, %bb.as, %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i191, %bb.an, %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i181, %bb.ai, %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i171, %bb.ad, %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i161, %bb.y, %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i151, %bb.t, %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i141, %bb.o, %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i131, %bb.j, %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i121
  %.sroa.0393.0 = phi ptr [ %i.a, %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i121 ], [ %.sroa.0393.5, %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i141 ], [ %.sroa.0393.4, %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i131 ], [ %.sroa.0393.6, %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i151 ], [ %.sroa.0393.4, %bb.j ], [ %.sroa.0393.5, %bb.o ], [ %.sroa.0393.6, %bb.t ], [ %.sroa.0393.7, %bb.y ], [ %.sroa.0393.8, %bb.ad ], [ %.sroa.0393.9, %bb.ai ], [ %.sroa.0393.10, %bb.an ], [ %.sroa.0393.11, %bb.as ], [ %.sroa.0393.11, %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i201 ], [ %.sroa.0393.10, %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i191 ], [ %.sroa.0393.9, %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i181 ], [ %.sroa.0393.8, %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i171 ], [ %.sroa.0393.7, %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i161 ]
  %.sroa.94.0 = phi ptr [ %.sroa.39.2.ptr, %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i121 ], [ %.sroa.39.4, %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i141 ], [ %.sroa.39.3, %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i131 ], [ %.sroa.39.5, %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i151 ], [ %.sroa.39.3, %bb.j ], [ %.sroa.39.4, %bb.o ], [ %.sroa.39.5, %bb.t ], [ %.sroa.39.6, %bb.y ], [ %.sroa.39.7, %bb.ad ], [ %.sroa.39.8, %bb.ai ], [ %.sroa.39.9, %bb.an ], [ %.sroa.39.10, %bb.as ], [ %.sroa.39.10, %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i201 ], [ %.sroa.39.9, %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i191 ], [ %.sroa.39.8, %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i181 ], [ %.sroa.39.7, %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i171 ], [ %.sroa.39.6, %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i161 ]
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EED2Ev.exit225

_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.a, %_ZNSt12_Vector_baseIN7openvdb5v13_04math4Vec3IdEESaIS4_EE11_M_allocateEm.exit.i
  %.sroa.39.0.idx = phi i64 [ 0, %_ZNSt12_Vector_baseIN7openvdb5v13_04math4Vec3IdEESaIS4_EE11_M_allocateEm.exit.i ], [ 24, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !548
  %i.q = icmp eq i8 %i.p, %4
  br i1 %i.q, label %bb.c, label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit109

bb.c:                                             ; preds = %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit
  %.sroa.39.0.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.39.0.idx ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load double, ptr %i.r, align 8, !tbaa !701 ; 2 uses
  %i.t = fsub double %5, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load double, ptr %i.u, align 8, !tbaa !701
  %i.w = fsub double %i.v, %i.s
  %i.x = fdiv double %i.t, %i.w
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %.sroa.39.0.ptr, align 8
  %.sroa.59.0..sroa_idx349 = getelementptr inbounds nuw i8, ptr %.sroa.39.0.ptr, i64 16
  store double %i.x, ptr %.sroa.59.0..sroa_idx349, align 8
  %.sroa.39.0.add = add nuw nsw i64 %.sroa.39.0.idx, 24
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit109

_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit109: ; preds = %bb.c, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit
  %.sroa.39.1.idx = phi i64 [ %.sroa.39.0.idx, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit ], [ %.sroa.39.0.add, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !548
  %i.aa = icmp eq i8 %i.z, %4
  br i1 %i.aa, label %bb.d, label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit119

bb.d:                                             ; preds = %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit109
  %.sroa.39.1.ptr.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.39.1.idx ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !701 ; 2 uses
  %i.ad = fsub double %5, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = load double, ptr %i.ae, align 8, !tbaa !701
  %i.ag = fsub double %i.af, %i.ac
  %i.ah = fdiv double %i.ad, %i.ag
  store double %i.ah, ptr %.sroa.39.1.ptr.ptr, align 8
  %.sroa.44.0..sroa_idx305 = getelementptr inbounds nuw i8, ptr %.sroa.39.1.ptr.ptr, i64 8
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %.sroa.44.0..sroa_idx305, align 8
  %.sroa.39.1.ptr.add = add nuw nsw i64 %.sroa.39.1.idx, 24
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit119

_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit119: ; preds = %bb.d, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit109
  %.sroa.39.2.idx = phi i64 [ %.sroa.39.1.idx, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit109 ], [ %.sroa.39.1.ptr.add, %bb.d ] ; 5 uses
  %.sroa.39.2.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.39.2.idx ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !548
  %i.ak = icmp eq i8 %i.aj, %4
  br i1 %i.ak, label %bb.e, label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit129

bb.e:                                             ; preds = %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit119
  %i.al = load double, ptr %2, align 8, !tbaa !701 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.an = load double, ptr %i.am, align 8, !tbaa !701
  %i.ao = fsub double %5, %i.al
  %i.ap = fsub double %i.an, %i.al
  %i.aq = fdiv double %i.ao, %i.ap                ; 2 uses
  %.not.i120 = icmp eq i64 %.sroa.39.2.idx, 192
  br i1 %.not.i120, label %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i121, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.59.0..sroa_idx357 = getelementptr inbounds nuw i8, ptr %.sroa.39.2.ptr, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.39.2.ptr, i8 0, i64 16, i1 false)
  store double %i.aq, ptr %.sroa.59.0..sroa_idx357, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.39.2.ptr, i64 24
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit129

_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i121: ; preds = %bb.e
  %i.as = invoke noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #30
          to label %.noexc128 unwind label %bb.b  ; 4 uses

.noexc128:                                        ; preds = %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i121
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.39.2.idx ; 3 uses
  %.sroa.59.0..sroa_idx359 = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  store double %i.aq, ptr %.sroa.59.0..sroa_idx359, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.as, ptr nonnull align 8 %i.a, i64 %.sroa.39.2.idx, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %.sroa.39.2.idx) #31
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 384
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit129

_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit129: ; preds = %.noexc128, %bb.f, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit119
  %.sroa.0393.4 = phi ptr [ %i.a, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit119 ], [ %i.as, %.noexc128 ], [ %i.a, %bb.f ] ; 7 uses
  %.sroa.39.3 = phi ptr [ %.sroa.39.2.ptr, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit119 ], [ %i.au, %.noexc128 ], [ %i.ar, %bb.f ] ; 8 uses
  %.sroa.94.4 = phi ptr [ %i.b, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit119 ], [ %i.av, %.noexc128 ], [ %i.b, %bb.f ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !548
  %i.ay = icmp eq i8 %i.ax, %4
  br i1 %i.ay, label %bb.g, label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit139

bb.g:                                             ; preds = %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit129
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ba = load double, ptr %i.az, align 8, !tbaa !701 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !701
  %i.bd = fsub double %5, %i.ba
  %i.be = fsub double %i.bc, %i.ba
  %i.bf = fdiv double %i.bd, %i.be                ; 2 uses
  %.not.i130 = icmp eq ptr %.sroa.39.3, %.sroa.94.4
  br i1 %.not.i130, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store double %i.bf, ptr %.sroa.39.3, align 8
  %.sroa.44.0..sroa_idx313 = getelementptr inbounds nuw i8, ptr %.sroa.39.3, i64 8
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %.sroa.44.0..sroa_idx313, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.39.3, i64 24
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit139

bb.i:                                             ; preds = %bb.g
  %i.bh = ptrtoint ptr %.sroa.39.3 to i64
  %i.bi = ptrtoint ptr %.sroa.0393.4 to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 6 uses
  %i.bk = icmp eq i64 %i.bj, 9223372036854775800
  br i1 %i.bk, label %bb.j, label %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i131

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #29
          to label %.noexc137 unwind label %bb.b

.noexc137:                                        ; preds = %bb.j
  unreachable

_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i131: ; preds = %bb.i
  %i.bl = sdiv exact i64 %i.bj, 24                ; 3 uses
  %.sroa.speculated.i.i.i132 = tail call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  %i.bm = add nsw i64 %.sroa.speculated.i.i.i132, %i.bl ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bl
  %i.bo = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 384307168202282325)
  %i.bp = select i1 %i.bn, i64 384307168202282325, i64 %i.bo ; 3 uses
  %.not.i.i.i133 = icmp ne i64 %i.bp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i133)
  %i.bq = mul nuw nsw i64 %i.bp, 24
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #30
          to label %.noexc138 unwind label %bb.b  ; 4 uses

.noexc138:                                        ; preds = %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i131
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %i.bj ; 3 uses
  store double %i.bf, ptr %i.bs, align 8
  %.sroa.44.0..sroa_idx315 = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %.sroa.44.0..sroa_idx315, align 8
  %i.bt = icmp sgt i64 %i.bj, 0
  br i1 %i.bt, label %bb.k, label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i136

bb.k:                                             ; preds = %.noexc138
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.br, ptr nonnull align 8 %.sroa.0393.4, i64 %i.bj, i1 false)
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i136

_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i136: ; preds = %bb.k, %.noexc138
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0393.4, i64 noundef %i.bj) #31
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %i.bp
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit139

_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit139: ; preds = %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i136, %bb.h, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit129
  %.sroa.0393.5 = phi ptr [ %.sroa.0393.4, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit129 ], [ %i.br, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i136 ], [ %.sroa.0393.4, %bb.h ] ; 7 uses
  %.sroa.39.4 = phi ptr [ %.sroa.39.3, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit129 ], [ %i.bu, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i136 ], [ %i.bg, %bb.h ] ; 8 uses
  %.sroa.94.5 = phi ptr [ %.sroa.94.4, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit129 ], [ %i.bv, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i136 ], [ %.sroa.94.4, %bb.h ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !548
  %i.by = icmp eq i8 %i.bx, %4
  br i1 %i.by, label %bb.l, label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit149

bb.l:                                             ; preds = %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit139
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !701 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !701
  %i.cd = fsub double %5, %i.ca
  %i.ce = fsub double %i.cc, %i.ca
  %i.cf = fdiv double %i.cd, %i.ce                ; 2 uses
  %.not.i140 = icmp eq ptr %.sroa.39.4, %.sroa.94.5
  br i1 %.not.i140, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store <2 x double> splat (double 1.000000e+00), ptr %.sroa.39.4, align 8
  %.sroa.59.0..sroa_idx365 = getelementptr inbounds nuw i8, ptr %.sroa.39.4, i64 16
  store double %i.cf, ptr %.sroa.59.0..sroa_idx365, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.39.4, i64 24
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit149

bb.n:                                             ; preds = %bb.l
  %i.ch = ptrtoint ptr %.sroa.39.4 to i64
  %i.ci = ptrtoint ptr %.sroa.0393.5 to i64
  %i.cj = sub i64 %i.ch, %i.ci                    ; 6 uses
  %i.ck = icmp eq i64 %i.cj, 9223372036854775800
  br i1 %i.ck, label %bb.o, label %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i141

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #29
          to label %.noexc147 unwind label %bb.b

.noexc147:                                        ; preds = %bb.o
  unreachable

_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i141: ; preds = %bb.n
end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_05tools23volume_to_mesh_internal20computeWeightedPointERKNS0_4math4Vec3IdEERKSt5arrayIdLm8EEhhd:_ZNSt12_Vector_baseIN7openvdb5v13_04math4Vec3IdEESaIS4_EE11_M_allocateEm.exit.i
  %i.gj = icmp eq i64 %i.gi, 9223372036854775800
  br i1 %i.gj, label %bb.ai, label %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i181

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #29
          to label %.noexc187 unwind label %bb.b

.noexc187:                                        ; preds = %bb.ai
  unreachable

_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i181: ; preds = %bb.ah
  %i.gk = sdiv exact i64 %i.gi, 24                ; 3 uses
  %.sroa.speculated.i.i.i182 = tail call i64 @llvm.umax.i64(i64 %i.gk, i64 1)
  %i.gl = add nsw i64 %.sroa.speculated.i.i.i182, %i.gk ; 2 uses
  %i.gm = icmp ult i64 %i.gl, %i.gk
  %i.gn = tail call i64 @llvm.umin.i64(i64 %i.gl, i64 384307168202282325)
  %i.go = select i1 %i.gm, i64 384307168202282325, i64 %i.gn ; 3 uses
  %.not.i.i.i183 = icmp ne i64 %i.go, 0
  tail call void @llvm.assume(i1 %.not.i.i.i183)
  %i.gp = mul nuw nsw i64 %i.go, 24
  %i.gq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gp) #30
          to label %.noexc188 unwind label %bb.b  ; 4 uses

.noexc188:                                        ; preds = %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i181
  %i.gr = getelementptr inbounds i8, ptr %i.gq, i64 %i.gi ; 4 uses
  store double 1.000000e+00, ptr %i.gr, align 8
  %.sroa.44.0..sroa_idx335 = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store double %i.ge, ptr %.sroa.44.0..sroa_idx335, align 8
  %.sroa.59.0..sroa_idx383 = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  store double 0.000000e+00, ptr %.sroa.59.0..sroa_idx383, align 8
  %i.gs = icmp sgt i64 %i.gi, 0
  br i1 %i.gs, label %bb.aj, label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i186

bb.aj:                                            ; preds = %.noexc188
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gq, ptr nonnull align 8 %.sroa.0393.9, i64 %i.gi, i1 false)
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i186

_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i186: ; preds = %bb.aj, %.noexc188
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0393.9, i64 noundef %i.gi) #31
  %i.gu = getelementptr inbounds nuw [24 x i8], ptr %i.gq, i64 %i.go
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit189

_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit189: ; preds = %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i186, %bb.ag, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit179
  %.sroa.0393.10 = phi ptr [ %.sroa.0393.9, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit179 ], [ %i.gq, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i186 ], [ %.sroa.0393.9, %bb.ag ] ; 7 uses
  %.sroa.39.9 = phi ptr [ %.sroa.39.8, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit179 ], [ %i.gt, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i186 ], [ %i.gf, %bb.ag ] ; 9 uses
  %.sroa.94.10 = phi ptr [ %.sroa.94.9, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit179 ], [ %i.gu, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i186 ], [ %.sroa.94.9, %bb.ag ] ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.d, i64 11
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !548
  %i.gx = icmp eq i8 %i.gw, %4
  br i1 %i.gx, label %bb.ak, label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit199

bb.ak:                                            ; preds = %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit189
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !701 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !701
  %i.hc = fsub double %5, %i.gz
  %i.hd = fsub double %i.hb, %i.gz
  %i.he = fdiv double %i.hc, %i.hd                ; 2 uses
  %.not.i190 = icmp eq ptr %.sroa.39.9, %.sroa.94.10
  br i1 %.not.i190, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store double 1.000000e+00, ptr %.sroa.39.9, align 8
  %.sroa.44.0..sroa_idx337 = getelementptr inbounds nuw i8, ptr %.sroa.39.9, i64 8
  store double %i.he, ptr %.sroa.44.0..sroa_idx337, align 8
  %.sroa.59.0..sroa_idx385 = getelementptr inbounds nuw i8, ptr %.sroa.39.9, i64 16
  store double 1.000000e+00, ptr %.sroa.59.0..sroa_idx385, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.39.9, i64 24
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit199

bb.am:                                            ; preds = %bb.ak
  %i.hg = ptrtoint ptr %.sroa.39.9 to i64
  %i.hh = ptrtoint ptr %.sroa.0393.10 to i64
  %i.hi = sub i64 %i.hg, %i.hh                    ; 6 uses
  %i.hj = icmp eq i64 %i.hi, 9223372036854775800
  br i1 %i.hj, label %bb.an, label %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i191

bb.an:                                            ; preds = %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #29
          to label %.noexc197 unwind label %bb.b

.noexc197:                                        ; preds = %bb.an
  unreachable

_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i191: ; preds = %bb.am
  %i.hk = sdiv exact i64 %i.hi, 24                ; 3 uses
  %.sroa.speculated.i.i.i192 = tail call i64 @llvm.umax.i64(i64 %i.hk, i64 1)
  %i.hl = add nsw i64 %.sroa.speculated.i.i.i192, %i.hk ; 2 uses
  %i.hm = icmp ult i64 %i.hl, %i.hk
  %i.hn = tail call i64 @llvm.umin.i64(i64 %i.hl, i64 384307168202282325)
  %i.ho = select i1 %i.hm, i64 384307168202282325, i64 %i.hn ; 3 uses
  %.not.i.i.i193 = icmp ne i64 %i.ho, 0
  tail call void @llvm.assume(i1 %.not.i.i.i193)
  %i.hp = mul nuw nsw i64 %i.ho, 24
  %i.hq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hp) #30
          to label %.noexc198 unwind label %bb.b  ; 4 uses

.noexc198:                                        ; preds = %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i191
  %i.hr = getelementptr inbounds i8, ptr %i.hq, i64 %i.hi ; 4 uses
  store double 1.000000e+00, ptr %i.hr, align 8
  %.sroa.44.0..sroa_idx339 = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store double %i.he, ptr %.sroa.44.0..sroa_idx339, align 8
  %.sroa.59.0..sroa_idx387 = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  store double 1.000000e+00, ptr %.sroa.59.0..sroa_idx387, align 8
  %i.hs = icmp sgt i64 %i.hi, 0
  br i1 %i.hs, label %bb.ao, label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i196

bb.ao:                                            ; preds = %.noexc198
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hq, ptr nonnull align 8 %.sroa.0393.10, i64 %i.hi, i1 false)
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i196

_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i196: ; preds = %bb.ao, %.noexc198
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0393.10, i64 noundef %i.hi) #31
  %i.hu = getelementptr inbounds nuw [24 x i8], ptr %i.hq, i64 %i.ho
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit199

_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit199: ; preds = %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i196, %bb.al, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit189
  %.sroa.0393.11 = phi ptr [ %.sroa.0393.10, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit189 ], [ %i.hq, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i196 ], [ %.sroa.0393.10, %bb.al ] ; 7 uses
  %.sroa.39.10 = phi ptr [ %.sroa.39.9, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit189 ], [ %i.ht, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i196 ], [ %i.hf, %bb.al ] ; 9 uses
  %.sroa.94.11 = phi ptr [ %.sroa.94.10, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit189 ], [ %i.hu, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i196 ], [ %.sroa.94.10, %bb.al ] ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !548
  %i.hx = icmp eq i8 %i.hw, %4
  br i1 %i.hx, label %bb.ap, label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit209

bb.ap:                                            ; preds = %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit199
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !701 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !701
  %i.ic = fsub double %5, %i.hz
  %i.id = fsub double %i.ib, %i.hz
  %i.ie = fdiv double %i.ic, %i.id                ; 2 uses
  %.not.i200 = icmp eq ptr %.sroa.39.10, %.sroa.94.11
  br i1 %.not.i200, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store double 0.000000e+00, ptr %.sroa.39.10, align 8
  %.sroa.44.0..sroa_idx341 = getelementptr inbounds nuw i8, ptr %.sroa.39.10, i64 8
  store double %i.ie, ptr %.sroa.44.0..sroa_idx341, align 8
  %.sroa.59.0..sroa_idx389 = getelementptr inbounds nuw i8, ptr %.sroa.39.10, i64 16
  store double 1.000000e+00, ptr %.sroa.59.0..sroa_idx389, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.39.10, i64 24
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit209

bb.ar:                                            ; preds = %bb.ap
  %i.ig = ptrtoint ptr %.sroa.39.10 to i64
  %i.ih = ptrtoint ptr %.sroa.0393.11 to i64
  %i.ii = sub i64 %i.ig, %i.ih                    ; 6 uses
  %i.ij = icmp eq i64 %i.ii, 9223372036854775800
  br i1 %i.ij, label %bb.as, label %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i201

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #29
          to label %.noexc207 unwind label %bb.b

.noexc207:                                        ; preds = %bb.as
  unreachable

_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i201: ; preds = %bb.ar
  %i.ik = sdiv exact i64 %i.ii, 24                ; 3 uses
  %.sroa.speculated.i.i.i202 = tail call i64 @llvm.umax.i64(i64 %i.ik, i64 1)
  %i.il = add nsw i64 %.sroa.speculated.i.i.i202, %i.ik ; 2 uses
  %i.im = icmp ult i64 %i.il, %i.ik
  %i.in = tail call i64 @llvm.umin.i64(i64 %i.il, i64 384307168202282325)
  %i.io = select i1 %i.im, i64 384307168202282325, i64 %i.in ; 3 uses
  %.not.i.i.i203 = icmp ne i64 %i.io, 0
  tail call void @llvm.assume(i1 %.not.i.i.i203)
  %i.ip = mul nuw nsw i64 %i.io, 24
  %i.iq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ip) #30
          to label %.noexc208 unwind label %bb.b  ; 4 uses

.noexc208:                                        ; preds = %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i201
  %i.ir = getelementptr inbounds i8, ptr %i.iq, i64 %i.ii ; 4 uses
  store double 0.000000e+00, ptr %i.ir, align 8
  %.sroa.44.0..sroa_idx343 = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store double %i.ie, ptr %.sroa.44.0..sroa_idx343, align 8
  %.sroa.59.0..sroa_idx391 = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  store double 1.000000e+00, ptr %.sroa.59.0..sroa_idx391, align 8
  %i.is = icmp sgt i64 %i.ii, 0
  br i1 %i.is, label %bb.at, label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i206

bb.at:                                            ; preds = %.noexc208
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iq, ptr nonnull align 8 %.sroa.0393.11, i64 %i.ii, i1 false)
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i206

_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i206: ; preds = %bb.at, %.noexc208
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0393.11, i64 noundef %i.ii) #31
  %i.iu = getelementptr inbounds nuw [24 x i8], ptr %i.iq, i64 %i.io
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit209

_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit209: ; preds = %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i206, %bb.aq, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit199
  %.sroa.0393.12 = phi ptr [ %.sroa.0393.11, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit199 ], [ %i.iq, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i206 ], [ %.sroa.0393.11, %bb.aq ] ; 11 uses
  %.sroa.39.11 = phi ptr [ %.sroa.39.10, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit199 ], [ %i.it, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i206 ], [ %i.if, %bb.aq ] ; 3 uses
  %.sroa.94.12 = phi ptr [ %.sroa.94.11, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit199 ], [ %i.iu, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i206 ], [ %.sroa.94.11, %bb.aq ] ; 4 uses
  %i.iv = ptrtoint ptr %.sroa.39.11 to i64
  %i.iw = ptrtoint ptr %.sroa.0393.12 to i64      ; 2 uses
  %i.ix = sub i64 %i.iv, %i.iw                    ; 2 uses
  %i.iy = sdiv exact i64 %i.ix, 24                ; 6 uses
  %i.iz = icmp eq i64 %i.ix, 24
  br i1 %i.iz, label %.thread486, label %bb.au

.thread486:                                       ; preds = %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit209
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0393.12, i64 24, i1 false)
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EED2Ev.exit

bb.au:                                            ; preds = %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit209
  %i.ja = icmp ugt i64 %i.iy, 1152921504606846975
  br i1 %i.ja, label %bb.av, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i

bb.av:                                            ; preds = %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #29
          to label %.noexc211 unwind label %.thread

.noexc211:                                        ; preds = %bb.av
  unreachable

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i: ; preds = %bb.au
  %.not = icmp ne ptr %.sroa.39.11, %.sroa.0393.12 ; 2 uses
  tail call void @llvm.assume(i1 %.not)
  %i.jb = shl nuw nsw i64 %i.iy, 3
  %i.jc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jb) #30
          to label %.lr.ph unwind label %.thread  ; 3 uses

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.iy
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.aw

._crit_edge:                                      ; preds = %_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_.exit
  %i.jg = load double, ptr %.sroa.0246.3, align 8, !tbaa !701 ; 6 uses
  %i.jh = ptrtoint ptr %.sroa.22.2 to i64
  %i.ji = ptrtoint ptr %.sroa.0246.3 to i64       ; 2 uses
  %i.jj = sub i64 %i.jh, %i.ji                    ; 2 uses
  %i.jk = ashr exact i64 %i.jj, 3                 ; 9 uses
  %i.jl = icmp ugt i64 %i.jk, 1
  br i1 %i.jl, label %.lr.ph522.preheader, label %._crit_edge523

.lr.ph522.preheader:                              ; preds = %._crit_edge
  %i.jm = add nsw i64 %i.jk, -1                   ; 3 uses
  %xtraiter = and i64 %i.jm, 1
  %i.jn = icmp eq i64 %i.jj, 16
  br i1 %i.jn, label %.lr.ph522.epil.preheader, label %.lr.ph522.preheader.new

.lr.ph522.preheader.new:                          ; preds = %.lr.ph522.preheader
  %unroll_iter = and i64 %i.jm, -2
  br label %.lr.ph522

.thread:                                          ; preds = %bb.av, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EED2Ev.exit225

bb.aw:                                            ; preds = %.lr.ph, %_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_.exit
  %.sroa.0243.0515 = phi ptr [ %.sroa.0393.12, %.lr.ph ], [ %i.km, %_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_.exit ] ; 4 uses
  %.sroa.31.0514 = phi ptr [ %i.jd, %.lr.ph ], [ %.sroa.31.3, %_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_.exit ] ; 3 uses
  %.sroa.22.0513 = phi ptr [ %i.jc, %.lr.ph ], [ %.sroa.22.2, %_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_.exit ] ; 3 uses
  %.sroa.0246.0512 = phi ptr [ %i.jc, %.lr.ph ], [ %.sroa.0246.3, %_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_.exit ] ; 7 uses
  %.sroa.0235.0.copyload = load double, ptr %.sroa.0243.0515, align 8
  %.sroa.7237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0243.0515, i64 8
  %.sroa.7237.0.copyload = load double, ptr %.sroa.7237.0..sroa_idx, align 8
  %.sroa.10239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0243.0515, i64 16
  %.sroa.10239.0.copyload = load double, ptr %.sroa.10239.0..sroa_idx, align 8
  %i.jp = load double, ptr %1, align 8, !tbaa !701, !noalias !9809
  %i.jq = fsub double %.sroa.0235.0.copyload, %i.jp ; 2 uses
  %i.jr = load double, ptr %i.je, align 8, !tbaa !701, !noalias !9809
  %i.js = fsub double %.sroa.7237.0.copyload, %i.jr ; 2 uses
  %i.jt = load double, ptr %i.jf, align 8, !tbaa !701, !noalias !9809
  %i.ju = fsub double %.sroa.10239.0.copyload, %i.jt ; 2 uses
  %i.jv = fmul double %i.js, %i.js
  %i.jw = tail call double @llvm.fmuladd.f64(double %i.jq, double %i.jq, double %i.jv)
  %i.jx = tail call noundef double @llvm.fmuladd.f64(double %i.ju, double %i.ju, double %i.jw) ; 2 uses
  %.not.i213 = icmp eq ptr %.sroa.22.0513, %.sroa.31.0514
  br i1 %.not.i213, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store double %i.jx, ptr %.sroa.22.0513, align 8, !tbaa !701
  br label %_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_.exit

bb.ay:                                            ; preds = %bb.aw
  %i.jy = ptrtoint ptr %.sroa.31.0514 to i64
  %i.jz = ptrtoint ptr %.sroa.0246.0512 to i64
  %i.ka = sub i64 %i.jy, %i.jz                    ; 7 uses
  %i.kb = icmp eq i64 %i.ka, 9223372036854775800
  br i1 %i.kb, label %bb.az, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #29
          to label %.noexc217 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc217:                                        ; preds = %bb.az
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ay
  %i.kc = ashr exact i64 %i.ka, 3                 ; 3 uses
  %.sroa.speculated.i.i.i214 = tail call i64 @llvm.umax.i64(i64 %i.kc, i64 1)
  %i.kd = add nsw i64 %.sroa.speculated.i.i.i214, %i.kc ; 2 uses
  %i.ke = icmp ult i64 %i.kd, %i.kc
  %i.kf = tail call i64 @llvm.umin.i64(i64 %i.kd, i64 1152921504606846975)
  %i.kg = select i1 %i.ke, i64 1152921504606846975, i64 %i.kf ; 3 uses
  %.not.i.i.i215 = icmp ne i64 %i.kg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i215)
  %i.kh = shl nuw nsw i64 %i.kg, 3
  %i.ki = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kh) #30
          to label %.noexc218 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc218:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %i.kj = getelementptr inbounds i8, ptr %i.ki, i64 %i.ka ; 2 uses
  store double %i.jx, ptr %i.kj, align 8, !tbaa !701
  %i.kk = icmp sgt i64 %i.ka, 0
  br i1 %i.kk, label %bb.ba, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

bb.ba:                                            ; preds = %.noexc218
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ki, ptr align 8 %.sroa.0246.0512, i64 %i.ka, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i: ; preds = %bb.ba, %.noexc218
  %.not.i17.i.i216 = icmp eq ptr %.sroa.0246.0512, null
  br i1 %.not.i17.i.i216, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0246.0512, i64 noundef %i.ka) #31
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i: ; preds = %bb.bb, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %i.kg
  br label %_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_.exit

_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_.exit: ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, %bb.ax
  %.sroa.0246.3 = phi ptr [ %i.ki, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %.sroa.0246.0512, %bb.ax ] ; 22 uses
  %.pn = phi ptr [ %i.kj, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %.sroa.22.0513, %bb.ax ]
  %.sroa.31.3 = phi ptr [ %i.kl, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %.sroa.31.0514, %bb.ax ] ; 2 uses
  %.sroa.22.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.0243.0515, i64 24 ; 2 uses
  %.not501 = icmp eq ptr %i.km, %.sroa.39.11
  br i1 %.not501, label %._crit_edge, label %bb.aw

._crit_edge523.loopexit.unr-lcssa:                ; preds = %.lr.ph522
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge523, label %.lr.ph522.epil.preheader

.lr.ph522.epil.preheader:                         ; preds = %._crit_edge523.loopexit.unr-lcssa, %.lr.ph522.preheader
  %.090520.epil.init = phi i64 [ 1, %.lr.ph522.preheader ], [ %i.lh, %._crit_edge523.loopexit.unr-lcssa ]
  %.0471519.epil.init = phi double [ %i.jg, %.lr.ph522.preheader ], [ %.sroa.speculated.1, %._crit_edge523.loopexit.unr-lcssa ] ; 2 uses
  %.0472518.epil.init = phi double [ %i.jg, %.lr.ph522.preheader ], [ %.sroa.speculated232.1, %._crit_edge523.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod603 = trunc i64 %i.jm to i1
  tail call void @llvm.assume(i1 %lcmp.mod603)
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.3, i64 %.090520.epil.init
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !701 ; 4 uses
  %i.kp = fcmp olt double %i.ko, %.0472518.epil.init
  %.sroa.speculated232.epil = select i1 %i.kp, double %i.ko, double %.0472518.epil.init
  %i.kq = fcmp olt double %.0471519.epil.init, %i.ko
  %.sroa.speculated.epil = select i1 %i.kq, double %i.ko, double %.0471519.epil.init
  br label %._crit_edge523

._crit_edge523:                                   ; preds = %.lr.ph522.epil.preheader, %._crit_edge523.loopexit.unr-lcssa, %._crit_edge
  %.0472.lcssa = phi double [ %i.jg, %._crit_edge ], [ %.sroa.speculated232.1, %._crit_edge523.loopexit.unr-lcssa ], [ %.sroa.speculated232.epil, %.lr.ph522.epil.preheader ]
  %.0471.lcssa = phi double [ %i.jg, %._crit_edge ], [ %.sroa.speculated.1, %._crit_edge523.loopexit.unr-lcssa ], [ %.sroa.speculated.epil, %.lr.ph522.epil.preheader ]
  %i.kr = tail call double @llvm.fmuladd.f64(double %.0472.lcssa, double 1.000000e-01, double %.0471.lcssa) ; 2 uses
  %.not542 = icmp eq ptr %.sroa.22.2, %.sroa.0246.3
  br i1 %.not542, label %.preheader, label %.lr.ph528.preheader

.lr.ph528.preheader:                              ; preds = %._crit_edge523
  %min.iters.check = icmp ult i64 %i.jk, 4
  br i1 %min.iters.check, label %.lr.ph528.preheader594, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph528.preheader
  %n.vec = and i64 %i.jk, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.kr, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.3, i64 %index ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ks, align 8, !tbaa !701
  %wide.load591 = load <2 x double>, ptr %i.kt, align 8, !tbaa !701
  %i.ku = fsub <2 x double> %broadcast.splat, %wide.load
  %i.kv = fsub <2 x double> %broadcast.splat, %wide.load591
  store <2 x double> %i.ku, ptr %i.ks, align 8, !tbaa !701
  store <2 x double> %i.kv, ptr %i.kt, align 8, !tbaa !701
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kw = icmp eq i64 %index.next, %n.vec
  br i1 %i.kw, label %middle.block, label %vector.body, !llvm.loop !9803

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jk, %n.vec
  br i1 %cmp.n, label %.lr.ph531.preheader, label %.lr.ph528.preheader594

.lr.ph528.preheader594:                           ; preds = %.lr.ph528.preheader, %middle.block
  %.089526.ph = phi i64 [ 0, %.lr.ph528.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph528

.lr.ph531.preheader:                              ; preds = %.lr.ph528, %middle.block
  %xtraiter604 = and i64 %i.jk, 7                 ; 3 uses
  %i.kx = icmp ult i64 %i.jk, 8
  br i1 %i.kx, label %.lr.ph531.epil.preheader, label %.lr.ph531.preheader.new

.lr.ph531.preheader.new:                          ; preds = %.lr.ph531.preheader
  %unroll_iter608 = and i64 %i.jk, -8
  br label %.lr.ph531

.lr.ph522:                                        ; preds = %.lr.ph522, %.lr.ph522.preheader.new
  %.090520 = phi i64 [ 1, %.lr.ph522.preheader.new ], [ %i.lh, %.lr.ph522 ] ; 3 uses
  %.0471519 = phi double [ %i.jg, %.lr.ph522.preheader.new ], [ %.sroa.speculated.1, %.lr.ph522 ] ; 2 uses
  %.0472518 = phi double [ %i.jg, %.lr.ph522.preheader.new ], [ %.sroa.speculated232.1, %.lr.ph522 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph522.preheader.new ], [ %niter.next.1, %.lr.ph522 ]
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.3, i64 %.090520
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !701 ; 4 uses
  %i.la = fcmp olt double %i.kz, %.0472518
  %.sroa.speculated232 = select i1 %i.la, double %i.kz, double %.0472518 ; 2 uses
  %i.lb = fcmp olt double %.0471519, %i.kz
  %.sroa.speculated = select i1 %i.lb, double %i.kz, double %.0471519 ; 2 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.3, i64 %.090520
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.le = load double, ptr %i.ld, align 8, !tbaa !701 ; 4 uses
  %i.lf = fcmp olt double %i.le, %.sroa.speculated232
  %.sroa.speculated232.1 = select i1 %i.lf, double %i.le, double %.sroa.speculated232 ; 3 uses
  %i.lg = fcmp olt double %.sroa.speculated, %i.le
  %.sroa.speculated.1 = select i1 %i.lg, double %i.le, double %.sroa.speculated ; 3 uses
  %i.lh = add nuw i64 %.090520, 2                 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge523.loopexit.unr-lcssa, label %.lr.ph522, !llvm.loop !9804

.lr.ph528:                                        ; preds = %.lr.ph528.preheader594, %.lr.ph528
  %.089526 = phi i64 [ %i.ll, %.lr.ph528 ], [ %.089526.ph, %.lr.ph528.preheader594 ] ; 2 uses
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.3, i64 %.089526 ; 2 uses
  %i.lj = load double, ptr %i.li, align 8, !tbaa !701
  %i.lk = fsub double %i.kr, %i.lj
  store double %i.lk, ptr %i.li, align 8, !tbaa !701
  %i.ll = add nuw i64 %.089526, 1                 ; 2 uses
  %exitcond554.not = icmp eq i64 %i.ll, %i.jk
  br i1 %exitcond554.not, label %.lr.ph531.preheader, label %.lr.ph528, !llvm.loop !9805

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph531
  %lcmp.mod605.not = icmp eq i64 %xtraiter604, 0
  br i1 %lcmp.mod605.not, label %.preheader, label %.lr.ph531.epil.preheader

.lr.ph531.epil.preheader:                         ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph531.preheader
  %.087530.epil.init = phi i64 [ 0, %.lr.ph531.preheader ], [ %i.mv, %.preheader.loopexit.unr-lcssa ]
  %.088529.epil.init = phi double [ 0.000000e+00, %.lr.ph531.preheader ], [ %i.mu, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod607 = icmp ne i64 %xtraiter604, 0
  tail call void @llvm.assume(i1 %lcmp.mod607)
  br label %.lr.ph531.epil

.lr.ph531.epil:                                   ; preds = %.lr.ph531.epil, %.lr.ph531.epil.preheader
  %.087530.epil = phi i64 [ %i.lp, %.lr.ph531.epil ], [ %.087530.epil.init, %.lr.ph531.epil.preheader ] ; 2 uses
  %.088529.epil = phi double [ %i.lo, %.lr.ph531.epil ], [ %.088529.epil.init, %.lr.ph531.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph531.epil ], [ 0, %.lr.ph531.epil.preheader ]
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.3, i64 %.087530.epil
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !701
  %i.lo = fadd double %.088529.epil, %i.ln        ; 2 uses
  %i.lp = add nuw i64 %.087530.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter604
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph531.epil, !llvm.loop !9806

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph531.epil, %._crit_edge523
  %.088.lcssa = phi double [ 0.000000e+00, %._crit_edge523 ], [ %i.mu, %.preheader.loopexit.unr-lcssa ], [ %i.lo, %.lr.ph531.epil ] ; 3 uses
  br i1 %.not, label %.lr.ph537.preheader, label %._crit_edge538

.lr.ph537.preheader:                              ; preds = %.preheader
  %xtraiter610 = and i64 %i.iy, 1
  %unroll_iter616 = and i64 %i.iy, 1152921504606846974
  br label %.lr.ph537

.lr.ph531:                                        ; preds = %.lr.ph531, %.lr.ph531.preheader.new
  %.087530 = phi i64 [ 0, %.lr.ph531.preheader.new ], [ %i.mv, %.lr.ph531 ] ; 9 uses
  %.088529 = phi double [ 0.000000e+00, %.lr.ph531.preheader.new ], [ %i.mu, %.lr.ph531 ]
  %niter609 = phi i64 [ 0, %.lr.ph531.preheader.new ], [ %niter609.next.7, %.lr.ph531 ]
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.3, i64 %.087530
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !701
  %i.ls = fadd double %.088529, %i.lr
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.3, i64 %.087530
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !701
  %i.lw = fadd double %i.ls, %i.lv
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.3, i64 %.087530
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !701
  %i.ma = fadd double %i.lw, %i.lz
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.3, i64 %.087530
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 24
  %i.md = load double, ptr %i.mc, align 8, !tbaa !701
  %i.me = fadd double %i.ma, %i.md
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.3, i64 %.087530
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 32
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !701
  %i.mi = fadd double %i.me, %i.mh
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.3, i64 %.087530
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 40
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !701
  %i.mm = fadd double %i.mi, %i.ml
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.3, i64 %.087530
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 48
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !701
  %i.mq = fadd double %i.mm, %i.mp
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.3, i64 %.087530
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 56
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !701
  %i.mu = fadd double %i.mq, %i.mt                ; 3 uses
  %i.mv = add nuw i64 %.087530, 8                 ; 2 uses
  %niter609.next.7 = add i64 %niter609, 8         ; 2 uses
  %niter609.ncmp.7 = icmp eq i64 %niter609.next.7, %unroll_iter608
  br i1 %niter609.ncmp.7, label %.preheader.loopexit.unr-lcssa, label %.lr.ph531, !llvm.loop !9807

.lr.ph537:                                        ; preds = %.lr.ph537, %.lr.ph537.preheader
  %.0536 = phi i64 [ 0, %.lr.ph537.preheader ], [ %i.nu, %.lr.ph537 ] ; 4 uses
  %.sroa.59.0535 = phi double [ 0.000000e+00, %.lr.ph537.preheader ], [ %i.nt, %.lr.ph537 ]
  %i.mw = phi <2 x double> [ zeroinitializer, %.lr.ph537.preheader ], [ %i.ns, %.lr.ph537 ]
  %niter617 = phi i64 [ 0, %.lr.ph537.preheader ], [ %niter617.next.1, %.lr.ph537 ]
  %i.mx = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0393.12, i64 %.0536 ; 2 uses
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.3, i64 %.0536
  %i.mz = load double, ptr %i.my, align 8, !tbaa !701
  %i.na = fdiv double %i.mz, %.088.lcssa          ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  %.sroa.10.0.copyload = load double, ptr %.sroa.10.0..sroa_idx, align 8
  %i.nb = load <2 x double>, ptr %i.mx, align 8
  %i.nc = insertelement <2 x double> poison, double %i.na, i64 0
  %i.nd = shufflevector <2 x double> %i.nc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ne = fmul <2 x double> %i.nd, %i.nb
  %i.nf = fmul double %i.na, %.sroa.10.0.copyload
  %i.ng = fadd <2 x double> %i.mw, %i.ne
  %i.nh = fadd double %.sroa.59.0535, %i.nf
  %i.ni = or disjoint i64 %.0536, 1               ; 2 uses
  %i.nj = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0393.12, i64 %i.ni ; 2 uses
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.3, i64 %i.ni
  %i.nl = load double, ptr %i.nk, align 8, !tbaa !701
  %i.nm = fdiv double %i.nl, %.088.lcssa          ; 2 uses
  %.sroa.10.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %.sroa.10.0.copyload.1 = load double, ptr %.sroa.10.0..sroa_idx.1, align 8
  %i.nn = load <2 x double>, ptr %i.nj, align 8
  %i.no = insertelement <2 x double> poison, double %i.nm, i64 0
  %i.np = shufflevector <2 x double> %i.no, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nq = fmul <2 x double> %i.np, %i.nn
  %i.nr = fmul double %i.nm, %.sroa.10.0.copyload.1
  %i.ns = fadd <2 x double> %i.ng, %i.nq          ; 3 uses
  %i.nt = fadd double %i.nh, %i.nr                ; 3 uses
  %i.nu = add nuw nsw i64 %.0536, 2               ; 3 uses
  %niter617.next.1 = add i64 %niter617, 2         ; 2 uses
  %niter617.ncmp.1 = icmp eq i64 %niter617.next.1, %unroll_iter616
  br i1 %niter617.ncmp.1, label %._crit_edge538.loopexit.unr-lcssa, label %.lr.ph537, !llvm.loop !9808

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i, %bb.az
  %lpad.loopexit.split-lp595 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i221 = icmp eq ptr %.sroa.0246.0512, null
  br i1 %.not.i.i.i221, label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EED2Ev.exit225, label %.thread478

.thread478:                                       ; preds = %.loopexit.split-lp.loopexit.split-lp
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0246.0512, i64 noundef %i.ka) #31
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EED2Ev.exit225

._crit_edge538.loopexit.unr-lcssa:                ; preds = %.lr.ph537
  %lcmp.mod612.not = icmp eq i64 %xtraiter610, 0
  br i1 %lcmp.mod612.not, label %._crit_edge538, label %.lr.ph537.epil.preheader

.lr.ph537.epil.preheader:                         ; preds = %._crit_edge538.loopexit.unr-lcssa
  %lcmp.mod615 = trunc i64 %i.iy to i1
  tail call void @llvm.assume(i1 %lcmp.mod615)
  %i.nv = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0393.12, i64 %i.nu ; 2 uses
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.3, i64 %i.nu
  %i.nx = load double, ptr %i.nw, align 8, !tbaa !701
  %i.ny = fdiv double %i.nx, %.088.lcssa          ; 2 uses
  %.sroa.10.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  %.sroa.10.0.copyload.epil = load double, ptr %.sroa.10.0..sroa_idx.epil, align 8
  %i.nz = load <2 x double>, ptr %i.nv, align 8
  %i.oa = insertelement <2 x double> poison, double %i.ny, i64 0
  %i.ob = shufflevector <2 x double> %i.oa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oc = fmul <2 x double> %i.ob, %i.nz
  %i.od = fmul double %i.ny, %.sroa.10.0.copyload.epil
  %i.oe = fadd <2 x double> %i.ns, %i.oc
  %i.of = fadd double %i.nt, %i.od
  br label %._crit_edge538

._crit_edge538:                                   ; preds = %.lr.ph537.epil.preheader, %._crit_edge538.loopexit.unr-lcssa, %.preheader
  %.sroa.59.0.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %i.nt, %._crit_edge538.loopexit.unr-lcssa ], [ %i.of, %.lr.ph537.epil.preheader ]
  %i.og = phi <2 x double> [ zeroinitializer, %.preheader ], [ %i.ns, %._crit_edge538.loopexit.unr-lcssa ], [ %i.oe, %.lr.ph537.epil.preheader ]
  store <2 x double> %i.og, ptr %0, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.59.0.lcssa, ptr %.sroa.59.0..sroa_idx, align 8
  %i.oh = ptrtoint ptr %.sroa.31.3 to i64
  %i.oi = sub i64 %i.oh, %i.ji
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0246.3, i64 noundef %i.oi) #31
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EED2Ev.exit

_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EED2Ev.exit: ; preds = %.thread486, %._crit_edge538
  %i.oj = ptrtoint ptr %.sroa.94.12 to i64
  %i.ok = sub i64 %i.oj, %i.iw
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0393.12, i64 noundef %i.ok) #31
  ret void

_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EED2Ev.exit225: ; preds = %bb.b, %.thread, %.loopexit.split-lp.loopexit.split-lp, %.thread478
  %.pn.pn.pn494 = phi { ptr, i32 } [ %i.n, %bb.b ], [ %i.jo, %.thread ], [ %lpad.loopexit.split-lp595, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp595, %.thread478 ]
  %.sroa.94.14493 = phi ptr [ %.sroa.94.0, %bb.b ], [ %.sroa.94.12, %.thread ], [ %.sroa.94.12, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.94.12, %.thread478 ]
  %.sroa.94.14493.a = phi ptr [ %.sroa.0393.0, %bb.b ], [ %.sroa.0393.12, %.thread ], [ %.sroa.0393.12, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0393.12, %.thread478 ] ; 2 uses
  %.pre-phi = ptrtoint ptr %.sroa.94.14493.a to i64
  %i.ol = ptrtoint ptr %.sroa.94.14493 to i64
  %i.om = sub i64 %i.ol, %.pre-phi
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.94.14493.a, i64 noundef %i.om) #31
  resume { ptr, i32 } %.pn.pn.pn494
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !921
  tail call void @_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !922  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !924  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !926
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #31
  br label %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %.lr.ph, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 64) #31
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !9810

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEEE13initLeafArrayEb(ptr noundef nonnull align 8 dereferenceable(96) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %3 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.std::deque.2678", align 8   ; 32 uses
  %5 = alloca %"class.std::vector.320", align 8   ; 20 uses
  %6 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %7 = alloca %class.anon.2684, align 8           ; 6 uses
  %8 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<unsigned int, 3>, 4>::ChildIter.2044", align 8 ; 7 uses
  %9 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %10 = alloca %class.anon.2685, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIPN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIjLj3EEELj4EEESaIS7_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %4, i64 noundef 0)
  %i.b = load ptr, ptr %0, align 8, !tbaa !2282   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !682  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.not713.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not713.i.i, label %_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEE8getNodesISt5dequeIPS7_SaISD_EEEEvRT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 64
  br label %bb.b

bb.b:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIjLj3EEELj4EEELj5EE8getNodesISt5dequeIPS5_SaIS9_EEEEvRT_.exit.i.i, %.lr.ph.i.i
  %.sroa.04.014.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.ba, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIjLj3EEELj4EEELj5EE8getNodesISt5dequeIPS5_SaIS9_EEEEvRT_.exit.i.i ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.04.014.i.i, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3058 ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIjLj3EEELj4EEELj5EE8getNodesISt5dequeIPS5_SaIS9_EEEEvRT_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 262144 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %.013.i.i.i.i.i.i = phi ptr [ %i.j, %bb.c ], [ %i.r, %bb.h ] ; 5 uses
  %.0712.i.i.i.i.i.i = phi i32 [ 0, %bb.c ], [ %i.s, %bb.h ] ; 5 uses
  %i.k = load i64, ptr %.013.i.i.i.i.i.i, align 8, !tbaa !699, !noalias !9828 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIjLj3EEELj4EEELj5EE12beginChildOnEv.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !699, !noalias !9828 ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i.i.i.i.1, label %bb.f, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIjLj3EEELj4EEELj5EE12beginChildOnEv.exit.i.i.i.split.loop.exit266

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !699, !noalias !9828 ; 2 uses
  %.not.i.i.i.i.i.i.2 = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.2, label %bb.g, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIjLj3EEELj4EEELj5EE12beginChildOnEv.exit.i.i.i.split.loop.exit263

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !699, !noalias !9828 ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.3, label %bb.h, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIjLj3EEELj4EEELj5EE12beginChildOnEv.exit.i.i.i.split.loop.exit

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 32
  %i.s = add nuw nsw i32 %.0712.i.i.i.i.i.i, 4    ; 2 uses
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i32 %i.s, 512
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIjLj3EEELj4EEELj5EE8getNodesISt5dequeIPS5_SaIS9_EEEEvRT_.exit.i.i, label %bb.d, !llvm.loop !43

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIjLj3EEELj4EEELj5EE12beginChildOnEv.exit.i.i.i.split.loop.exit: ; preds = %bb.g
  %i.t = or disjoint i32 %.0712.i.i.i.i.i.i, 3
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIjLj3EEELj4EEELj5EE12beginChildOnEv.exit.i.i.i

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIjLj3EEELj4EEELj5EE12beginChildOnEv.exit.i.i.i.split.loop.exit263: ; preds = %bb.f
  %i.u = or disjoint i32 %.0712.i.i.i.i.i.i, 2
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIjLj3EEELj4EEELj5EE12beginChildOnEv.exit.i.i.i

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIjLj3EEELj4EEELj5EE12beginChildOnEv.exit.i.i.i.split.loop.exit266: ; preds = %bb.e
  %i.v = or disjoint i32 %.0712.i.i.i.i.i.i, 1
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIjLj3EEELj4EEELj5EE12beginChildOnEv.exit.i.i.i

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIjLj3EEELj4EEELj5EE12beginChildOnEv.exit.i.i.i: ; preds = %bb.d, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIjLj3EEELj4EEELj5EE12beginChildOnEv.exit.i.i.i.split.loop.exit266, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIjLj3EEELj4EEELj5EE12beginChildOnEv.exit.i.i.i.split.loop.exit263, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIjLj3EEELj4EEELj5EE12beginChildOnEv.exit.i.i.i.split.loop.exit
  %.0712.i.i.i.i.i.i.lcssa = phi i32 [ %i.v, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIjLj3EEELj4EEELj5EE12beginChildOnEv.exit.i.i.i.split.loop.exit266 ], [ %i.u, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIjLj3EEELj4EEELj5EE12beginChildOnEv.exit.i.i.i.split.loop.exit263 ], [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIjLj3EEELj4EEELj5EE12beginChildOnEv.exit.i.i.i.split.loop.exit ], [ %.0712.i.i.i.i.i.i, %bb.d ]
  %.lcssa243 = phi i64 [ %i.m, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIjLj3EEELj4EEELj5EE12beginChildOnEv.exit.i.i.i.split.loop.exit266 ], [ %i.o, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIjLj3EEELj4EEELj5EE12beginChildOnEv.exit.i.i.i.split.loop.exit263 ], [ %i.q, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIjLj3EEELj4EEELj5EE12beginChildOnEv.exit.i.i.i.split.loop.exit ], [ %i.k, %bb.d ]
  %i.w = shl nuw nsw i32 %.0712.i.i.i.i.i.i.lcssa, 6
  %i.x = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa243, i1 true)
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %.not8.i.i.i = icmp eq i32 %i.z, 32768
  br i1 %.not8.i.i.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIjLj3EEELj4EEELj5EE8getNodesISt5dequeIPS5_SaIS9_EEEEvRT_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIjLj3EEELj4EEELj5EE12beginChildOnEv.exit.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEppEv.exit.i.i.i
  %.sroa.3.09.i.i.i = phi i32 [ %.118.i.i.i.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEppEv.exit.i.i.i ], [ %i.z, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIjLj3EEELj4EEELj5EE12beginChildOnEv.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.aa = zext i32 %.sroa.3.09.i.i.i to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !548 ; 2 uses
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !2319
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !3739 ; 3 uses
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !9829
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, %i.af
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !2319
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ag, ptr %i.f, align 8, !tbaa !3739
  br label %_ZNSt5dequeIPN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIjLj3EEELj4EEESaIS7_EE9push_backEOS7_.exit.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i
  invoke void @_ZNSt5dequeIPN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIjLj3EEELj4EEESaIS7_EE16_M_push_back_auxIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt5dequeIPN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIjLj3EEELj4EEESaIS7_EE9push_backEOS7_.exit.i.i.i unwind label %bb.q

_ZNSt5dequeIPN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIjLj3EEELj4EEESaIS7_EE9push_backEOS7_.exit.i.i.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ah = add i32 %.sroa.3.09.i.i.i, 1            ; 4 uses
  %i.ai = lshr i32 %i.ah, 6                       ; 3 uses
  %i.aj = icmp ugt i32 %i.ah, 32767
  br i1 %i.aj, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIjLj3EEELj4EEELj5EE8getNodesISt5dequeIPS5_SaIS9_EEEEvRT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt5dequeIPN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIjLj3EEELj4EEESaIS7_EE9push_backEOS7_.exit.i.i.i
  %i.ak = and i32 %i.ah, 63
  %i.al = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !699 ; 2 uses
  %i.ao = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.ap = shl nuw i64 1, %i.ao
  %i.aq = and i64 %i.an, %i.ap
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEppEv.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.ar = shl nsw i64 -1, %i.ao
  %i.as = and i64 %i.an, %i.ar                    ; 2 uses
  %.not2226.i.i.i.i.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not2226.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %.critedge.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.l
  %exitcond.not.i.i.i.i.i.i.i222 = icmp eq i32 %i.ai, 511
  br i1 %exitcond.not.i.i.i.i.i.i.i222, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIjLj3EEELj4EEELj5EE8getNodesISt5dequeIPS5_SaIS9_EEEEvRT_.exit.i.i, label %.lr.ph224

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph224
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i, 511
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIjLj3EEELj4EEELj5EE8getNodesISt5dequeIPS5_SaIS9_EEEEvRT_.exit.i.i, label %.lr.ph224, !llvm.loop !44

.lr.ph224:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i223 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %indvars.iv.next.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i223, 1 ; 4 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.i.i.i.i.i.i.i
  %i.au = load i64, ptr %i.at, align 8, !tbaa !699 ; 2 uses
  %.not22.i.i.i.i.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not22.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %.critedge.loopexit.i.i.i.i.i.i.i, !llvm.loop !44

.critedge.loopexit.i.i.i.i.i.i.i:                 ; preds = %.lr.ph224
  %i.av = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i.i.i to i32
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %.critedge.loopexit.i.i.i.i.i.i.i, %bb.l
  %.016.lcssa.i.i.i.i.i.i.i = phi i32 [ %i.ai, %bb.l ], [ %i.av, %.critedge.loopexit.i.i.i.i.i.i.i ]
end_hunk_1

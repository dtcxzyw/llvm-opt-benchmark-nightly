Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/matches_relation_factory?download=true
inline.NumInlined: 7984
inline.NumDeleted: 2697
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZNSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_:bb.a
  br i1 %i.av, label %_ZNSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #32 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !387
  %i.az = icmp slt i32 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !181
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !175 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !387 ; 2 uses
  %i.bg = icmp slt i32 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !175 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !1243

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !172
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #32 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !387
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i32 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp slt i32 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181
  tail call void @_ZNSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !182  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #31
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1244

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEjSt4lessIS5_ESaISt4pairIKS5_jEEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.285", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.78", align 1     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !171  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !385  ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !385  ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !388
  %i.l = tail call i32 @wmemcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !175 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE11lower_boundERS9_.exit, label %bb.b, !llvm.loop !1245

_ZNSt3mapINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE11lower_boundERS9_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE11lower_boundERS9_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !385  ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i.i

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !388
  %i.u = tail call i32 @wmemcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #32 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE11lower_boundERS9_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEjSt4lessIS5_ESaISt4pairIKS5_jEEE11lower_boundERS9_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr %1, ptr %2, align 8, !tbaa !433
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost13re_detail_60016find_sort_syntaxINS0_31cpp_regex_traits_implementationIwEEwEEjPKT_PT0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string.7", align 8 ; 12 uses
  %i.b = alloca [2 x i32], align 8                ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string.7", align 8 ; 11 uses
  %i.c = alloca [2 x i32], align 8                ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string.7", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 97, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  call void @_ZNK5boost13re_detail_60031cpp_regex_traits_implementationIwE9transformB5cxx11EPKwS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.7") align 8 %2, ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !385  ; 3 uses
  %i.g = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.a) #32
  %i.h = icmp eq i64 %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread71

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.j = load ptr, ptr %2, align 8, !tbaa !388
  %i.k = call i32 @wmemcmp(ptr noundef %i.j, ptr noundef nonnull %i.a, i64 noundef %i.f) #32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread71

_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.b, %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  store i32 0, ptr %1, align 4, !tbaa !387
  br label %bb.k

_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread71: ; preds = %bb.a, %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 65, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  invoke void @_ZNK5boost13re_detail_60031cpp_regex_traits_implementationIwE9transformB5cxx11EPKwS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.7") align 8 %3, ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.m)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i64 59, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  invoke void @_ZNK5boost13re_detail_60031cpp_regex_traits_implementationIwE9transformB5cxx11EPKwS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.7") align 8 %4, ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.n)
          to label %.preheader unwind label %bb.g

.preheader:                                       ; preds = %bb.c
  %i.o = load i64, ptr %i.e, align 8, !tbaa !385  ; 14 uses
  %i.p = trunc i64 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i64, ptr %i.q, align 8
  %.fr83 = freeze i64 %i.r                        ; 8 uses
  %i.s = trunc i64 %.fr83 to i32
  %invariant.smin = call i32 @llvm.smin.i32(i32 %i.p, i32 %i.s) ; 2 uses
  %or.cond77 = icmp slt i32 %invariant.smin, 0
  br i1 %or.cond77, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.t = load ptr, ptr %2, align 8, !tbaa !388
  %i.u = load ptr, ptr %3, align 8, !tbaa !388
  %i.v = add nuw i32 %invariant.smin, 1           ; 2 uses
  %wide.trip.count = zext i32 %i.v to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4, !tbaa !387
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 4, !tbaa !387
  %i.aa = icmp eq i32 %i.x, %i.z
  br i1 %i.aa, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.thread99, label %bb.d, !llvm.loop !1246

bb.f:                                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread71
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.ad = load ptr, ptr %3, align 8, !tbaa !388   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !83
  %i.ah = shl i64 %i.ag, 2
  %i.ai = add i64 %i.ah, 4
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ai) #31
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

.critedge:                                        ; preds = %bb.d
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ak = icmp eq i64 %indvars.iv, 0
  br i1 %i.ak, label %.critedge.thread, label %.critedge.thread99

.critedge.thread99:                               ; preds = %bb.e, %.critedge
  %.0.lcssa101 = phi i32 [ %i.aj, %.critedge ], [ %i.v, %bb.e ] ; 2 uses
  %i.al = add nsw i32 %.0.lcssa101, -1            ; 2 uses
  %i.am = zext nneg i32 %i.al to i64
  %i.an = load ptr, ptr %2, align 8, !tbaa !388   ; 5 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.am
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !387 ; 9 uses
  %.not34 = icmp eq i32 %i.al, 0
  br i1 %.not34, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.critedge.thread99
  %.not.i = icmp eq i64 %i.o, 0                   ; 2 uses
  br i1 %.not.i, label %_ZN5boost13re_detail_60011count_charsINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEwEEjRKT_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.h
  %min.iters.check = icmp ult i64 %i.o, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader169, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.preheader
  %i.aq = add i64 %i.o, -1                        ; 2 uses
  %i.ar = and i64 %i.aq, 4294967295
  %i.as = icmp eq i64 %i.ar, 4294967295
  %i.at = icmp ugt i64 %i.aq, 4294967295
  %i.au = or i1 %i.as, %i.at
  br i1 %i.au, label %.lr.ph.i.preheader169, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.o, 8589934584               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ap, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %vec.phi104 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load = load <4 x i32>, ptr %i.av, align 4, !tbaa !387
  %wide.load105 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !387
  %i.ax = icmp eq <4 x i32> %wide.load, %broadcast.splat
  %i.ay = icmp eq <4 x i32> %wide.load105, %broadcast.splat
  %i.az = zext <4 x i1> %i.ax to <4 x i32>
  %i.ba = zext <4 x i1> %i.ay to <4 x i32>
  %i.bb = add <4 x i32> %vec.phi, %i.az           ; 2 uses
  %i.bc = add <4 x i32> %vec.phi104, %i.ba        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !1247

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bc, %i.bb
  %i.be = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZN5boost13re_detail_60011count_charsINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEwEEjRKT_T0_.exit, label %.lr.ph.i.preheader169

.lr.ph.i.preheader169:                            ; preds = %vector.scevcheck, %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  %.079.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.preheader ], [ %i.be, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader169, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader169 ] ; 2 uses
  %.079.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader169 ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !387
  %i.bh = icmp eq i32 %i.bg, %i.ap
  %i.bi = zext i1 %i.bh to i32
  %spec.select.i = add i32 %.079.i, %i.bi         ; 2 uses
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 2 uses
  %i.bj = and i64 %indvars.iv.next.i, 4294967295
  %i.bk = icmp ugt i64 %i.o, %i.bj
  br i1 %i.bk, label %.lr.ph.i, label %_ZN5boost13re_detail_60011count_charsINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEwEEjRKT_T0_.exit, !llvm.loop !1248

_ZN5boost13re_detail_60011count_charsINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEwEEjRKT_T0_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.h
  %.07.lcssa.i = phi i32 [ 0, %bb.h ], [ %i.be, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %.not.i35 = icmp eq i64 %.fr83, 0
  br i1 %.not.i35, label %_ZN5boost13re_detail_60011count_charsINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEwEEjRKT_T0_.exit42, label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %_ZN5boost13re_detail_60011count_charsINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEwEEjRKT_T0_.exit
  %i.bl = load ptr, ptr %3, align 8, !tbaa !388   ; 2 uses
  %min.iters.check108 = icmp ult i64 %.fr83, 8
  br i1 %min.iters.check108, label %scalar.ph107.preheader, label %vector.scevcheck106

vector.scevcheck106:                              ; preds = %.lr.ph.i36
  %i.bm = add i64 %.fr83, -1                      ; 2 uses
  %i.bn = and i64 %i.bm, 4294967295
  %i.bo = icmp eq i64 %i.bn, 4294967295
  %i.bp = icmp ugt i64 %i.bm, 4294967295
  %i.bq = or i1 %i.bo, %i.bp
  br i1 %i.bq, label %scalar.ph107.preheader, label %vector.ph109

vector.ph109:                                     ; preds = %vector.scevcheck106
  %n.vec110 = and i64 %.fr83, 8589934584          ; 3 uses
  %broadcast.splatinsert111 = insertelement <4 x i32> poison, i32 %i.ap, i64 0
  %broadcast.splat112 = shufflevector <4 x i32> %broadcast.splatinsert111, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body113

vector.body113:                                   ; preds = %vector.body113, %vector.ph109
  %index114 = phi i64 [ 0, %vector.ph109 ], [ %index.next119, %vector.body113 ] ; 2 uses
  %vec.phi115 = phi <4 x i32> [ zeroinitializer, %vector.ph109 ], [ %i.bx, %vector.body113 ]
  %vec.phi116 = phi <4 x i32> [ zeroinitializer, %vector.ph109 ], [ %i.by, %vector.body113 ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %index114 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load117 = load <4 x i32>, ptr %i.br, align 4, !tbaa !387
  %wide.load118 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !387
  %i.bt = icmp eq <4 x i32> %wide.load117, %broadcast.splat112
  %i.bu = icmp eq <4 x i32> %wide.load118, %broadcast.splat112
end_hunk_0
begin_hunk_1_@_ZN5boost13re_detail_60019basic_regex_creatorIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE18calculate_backstepEPNS0_14re_syntax_baseE:bb.a
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc33, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i ], [ %i.bm, %.noexc33 ] ; 3 uses
  %.0911.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i ], [ %.sroa.037.0.ph83184, %.noexc33 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1637)
  %i.bq = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !380, !alias.scope !1637
  store i64 %i.bq, ptr %.012.i.i.i.i, align 8, !tbaa !380, !alias.scope !1636
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !85, !alias.scope !1637
  store i32 %i.bt, ptr %i.br, align 8, !tbaa !85, !alias.scope !1636
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bu, %.sroa.10.0.ph82183
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !26

_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %.noexc33
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bm, %.noexc33 ], [ %i.bv, %.lr.ph.i.i.i.i ]
  %.not.i23.i = icmp eq ptr %.sroa.037.0.ph83184, null
  br i1 %.not.i23.i, label %.noexc, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.037.0.ph83184, i64 noundef %i.bc) #31
  br label %.noexc

.noexc:                                           ; preds = %bb.ab, %_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.bk
  br label %_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EE9push_backEOS5_.exit: ; preds = %.noexc, %bb.y
  %.sroa.19.1 = phi ptr [ %i.bw, %.noexc ], [ %.sroa.19.0.ph81182, %bb.y ] ; 2 uses
  %.0.lcssa.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i, %.noexc ], [ %.sroa.10.0.ph82183, %bb.y ]
  %.sroa.037.1 = phi ptr [ %i.bm, %.noexc ], [ %.sroa.037.0.ph83184, %bb.y ] ; 2 uses
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.pn, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %.065176, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !83 ; 2 uses
  %.not175 = icmp eq ptr %i.by, null
  br i1 %.not175, label %.thread, label %.lr.ph, !llvm.loop !1629

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EE12_M_check_lenEmPKc.exit.i, %bb.aa
  %lpad.loopexit.split-lp471 = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i = icmp eq ptr %.sroa.037.0.ph83184, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.037.0.ph83184, i64 noundef %i.bc) #31
  br label %_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EED2Ev.exit

_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.ac
  resume { ptr, i32 } %lpad.loopexit.split-lp471

.outer.backedge:                                  ; preds = %bb.b, %bb.c, %bb.j, %bb.k, %bb.u, %bb.f, %bb.s
  %.sink = phi i64 [ 16, %bb.s ], [ 8, %bb.k ], [ 8, %bb.j ], [ 8, %bb.f ], [ 8, %bb.u ], [ 8, %bb.c ], [ 8, %bb.b ]
  %.0.ph.be = phi i32 [ %.1, %bb.s ], [ %i.v, %bb.k ], [ %i.u, %bb.j ], [ %.0.ph191, %bb.f ], [ %i.ay, %bb.u ], [ %.0.ph191, %bb.c ], [ %.0.ph191, %bb.b ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.065176, i64 %.sink
  %.065.ph.be = load ptr, ptr %i.bz, align 8, !tbaa !83 ; 2 uses
  %.not175180 = icmp eq ptr %.065.ph.be, null
  br i1 %.not175180, label %.thread, label %.lr.ph.lr.ph, !llvm.loop !1629

.thread:                                          ; preds = %.outer.outer, %bb.i, %bb.h, %.outer.backedge, %bb.q, %.loopexit, %bb.r, %bb.t, %bb.w, %_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EE9push_backEOS5_.exit, %bb.b, %bb.b, %bb.b, %.backedge, %_ZN5boost13re_detail_60019basic_regex_creatorIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE15get_repeat_typeEPNS0_14re_syntax_baseE.exit.thread71
  %.sroa.19.0.ph81163 = phi ptr [ %.sroa.19.0.ph81182, %_ZN5boost13re_detail_60019basic_regex_creatorIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE15get_repeat_typeEPNS0_14re_syntax_baseE.exit.thread71 ], [ %.sroa.19.0.ph81182, %.outer.backedge ], [ %.sroa.19.0.ph81182, %bb.w ], [ %.sroa.19.0.ph81182, %bb.b ], [ %.sroa.19.0.ph81182, %.backedge ], [ %.sroa.19.0.ph81182, %bb.b ], [ %.sroa.19.0.ph81182, %bb.b ], [ %.sroa.19.1, %_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EE9push_backEOS5_.exit ], [ %.sroa.19.0.ph81182, %bb.t ], [ %.sroa.19.0.ph81182, %bb.r ], [ %.sroa.19.0.ph81182, %.loopexit ], [ %.sroa.19.0.ph81182, %bb.q ], [ %.sroa.19.0.ph81182, %bb.h ], [ %.sroa.19.0.ph81182, %bb.i ], [ %.sroa.19.0.ph81182, %.outer.outer ]
  %.sroa.037.0.ph83127 = phi ptr [ %.sroa.037.0.ph83184, %_ZN5boost13re_detail_60019basic_regex_creatorIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE15get_repeat_typeEPNS0_14re_syntax_baseE.exit.thread71 ], [ %.sroa.037.0.ph83184, %.outer.backedge ], [ %.sroa.037.0.ph83184, %bb.w ], [ %.sroa.037.0.ph83184, %bb.b ], [ %.sroa.037.0.ph83184, %.backedge ], [ %.sroa.037.0.ph83184, %bb.b ], [ %.sroa.037.0.ph83184, %bb.b ], [ %.sroa.037.1, %_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EE9push_backEOS5_.exit ], [ %.sroa.037.0.ph83184, %bb.t ], [ %.sroa.037.0.ph83184, %bb.r ], [ %.sroa.037.0.ph83184, %.loopexit ], [ %.sroa.037.0.ph83184, %bb.q ], [ %.sroa.037.0.ph83184, %bb.h ], [ %.sroa.037.0.ph83184, %bb.i ], [ %.sroa.037.0.ph83184, %.outer.outer ] ; 3 uses
  %.2 = phi i32 [ -1, %_ZN5boost13re_detail_60019basic_regex_creatorIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE15get_repeat_typeEPNS0_14re_syntax_baseE.exit.thread71 ], [ -1, %.outer.backedge ], [ -1, %bb.w ], [ -1, %bb.b ], [ -1, %.backedge ], [ -1, %bb.b ], [ -1, %bb.b ], [ -1, %_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EE9push_backEOS5_.exit ], [ -1, %bb.t ], [ -1, %bb.r ], [ -1, %.loopexit ], [ -1, %bb.q ], [ -1, %bb.h ], [ -1, %.outer.outer ], [ %.0.ph191, %bb.i ] ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %.sroa.037.0.ph83127, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EED2Ev.exit30, label %bb.ad

bb.ad:                                            ; preds = %.thread
  %i.ca = ptrtoint ptr %.sroa.19.0.ph81163 to i64
  %i.cb = ptrtoint ptr %.sroa.037.0.ph83127 to i64
  %i.cc = sub i64 %i.ca, %i.cb
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.037.0.ph83127, i64 noundef %i.cc) #31
  br label %_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EED2Ev.exit30

_ZNSt6vectorISt5tupleIJiPN5boost13re_detail_60014re_syntax_baseEEESaIS5_EED2Ev.exit30: ; preds = %bb.a, %.thread, %bb.ad
  %.2305 = phi i32 [ %.2, %bb.ad ], [ %.2, %.thread ], [ -1, %bb.a ]
  ret i32 %.2305
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost13re_detail_60016re_is_set_memberIPwwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEjEET_S7_S7_PKNS0_11re_set_longIT2_EERKNS0_10regex_dataIT0_T1_EEb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(402) %3, i1 noundef zeroext %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string.7", align 8 ; 23 uses
  %i.a = alloca [2 x i32], align 4                ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string.7", align 8 ; 14 uses
  %i.b = alloca [2 x i32], align 4                ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string.7", align 8 ; 14 uses
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %bb.as, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !394  ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !352
  %.not226 = icmp eq i32 %i.h, 0
  br i1 %.not226, label %._crit_edge208, label %.lr.ph207.split

.lr.ph207.split:                                  ; preds = %bb.b, %bb.h
  %.0100205 = phi i32 [ %i.bc, %bb.h ], [ 0, %bb.b ]
  %.0103204 = phi ptr [ %.2105, %bb.h ], [ %i.d, %bb.b ] ; 4 uses
  %i.i = load i32, ptr %.0103204, align 4, !tbaa !387 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph207.split
  br i1 %4, label %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135.us, label %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135

_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135.us: ; preds = %.lr.ph, %bb.c
  %.0102193.us = phi ptr [ %i.u, %bb.c ], [ %0, %.lr.ph ] ; 3 uses
  %.1104192.us = phi ptr [ %i.t, %bb.c ], [ %.0103204, %.lr.ph ] ; 3 uses
  %i.k = load i32, ptr %.0102193.us, align 4, !tbaa !387
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !413
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !408  ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !101
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef signext i32 %i.q(ptr noundef nonnull align 8 dereferenceable(12) %i.n, i32 noundef signext %i.k), !inline_history !41
  %i.s = load i32, ptr %.1104192.us, align 4, !tbaa !387 ; 2 uses
  %.not132.us = icmp eq i32 %i.r, %i.s
  br i1 %.not132.us, label %bb.c, label %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135._crit_edge

bb.c:                                             ; preds = %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135.us
  %i.t = getelementptr inbounds nuw i8, ptr %.1104192.us, i64 4 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0102193.us, i64 4 ; 3 uses
  %i.v = load i32, ptr %i.t, align 4, !tbaa !387  ; 2 uses
  %i.w = icmp ne i32 %i.v, 0
  %i.x = icmp ne ptr %i.u, %1
  %i.y = select i1 %i.w, i1 %i.x, i1 false
  br i1 %i.y, label %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135.us, label %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135._crit_edge, !llvm.loop !1638

bb.d:                                             ; preds = %.lr.ph207.split
  %i.z = load i32, ptr %0, align 4, !tbaa !387    ; 2 uses
  br i1 %4, label %bb.e, label %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !413
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !408 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !101
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef signext i32 %i.af(ptr noundef nonnull align 8 dereferenceable(12) %i.ac, i32 noundef signext %i.z), !inline_history !41
  br label %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit

_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit: ; preds = %bb.d, %bb.e
  %i.ah = phi i32 [ %i.ag, %bb.e ], [ %i.z, %bb.d ]
  %.not133 = icmp eq i32 %i.ah, 0
  br i1 %.not133, label %.split212.us, label %bb.h

.split212.us:                                     ; preds = %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !358, !range !266, !noundef !106
  %i.ak = trunc nuw i8 %i.aj to i1
  %.idx183 = select i1 %i.ak, i64 0, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.idx183
  br label %bb.as

_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135: ; preds = %.lr.ph, %bb.f
  %i.am = phi i32 [ %i.aq, %bb.f ], [ %i.i, %.lr.ph ]
  %.0102193 = phi ptr [ %i.ap, %bb.f ], [ %0, %.lr.ph ] ; 2 uses
  %.1104192 = phi ptr [ %i.ao, %bb.f ], [ %.0103204, %.lr.ph ] ; 2 uses
  %i.an = load i32, ptr %.0102193, align 4, !tbaa !387
  %.not132 = icmp eq i32 %i.an, %i.am
  br i1 %.not132, label %bb.f, label %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135._crit_edge.thread

bb.f:                                             ; preds = %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135
  %i.ao = getelementptr inbounds nuw i8, ptr %.1104192, i64 4 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0102193, i64 4 ; 3 uses
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !387 ; 3 uses
  %i.ar = icmp ne i32 %i.aq, 0
  %i.as = icmp ne ptr %i.ap, %1
  %i.at = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %i.at, label %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135, label %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135._crit_edge, !llvm.loop !1638

_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135._crit_edge: ; preds = %bb.f, %bb.c, %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135.us
  %.1104.lcssa = phi ptr [ %.1104192.us, %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135.us ], [ %i.t, %bb.c ], [ %i.ao, %bb.f ]
  %.0102.lcssa = phi ptr [ %.0102193.us, %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135.us ], [ %i.u, %bb.c ], [ %i.ap, %bb.f ] ; 2 uses
  %i.au = phi i32 [ %i.s, %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135.us ], [ %i.v, %bb.c ], [ %i.aq, %bb.f ]
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %.split.us, label %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135._crit_edge.thread

.split.us:                                        ; preds = %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ax = load i8, ptr %i.aw, align 4, !tbaa !358, !range !266, !noundef !106
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.as, label %bb.g

bb.g:                                             ; preds = %.split.us
  %i.az = icmp eq ptr %.0102.lcssa, %0
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4
  %spec.select = select i1 %i.az, ptr %i.ba, ptr %.0102.lcssa
  br label %bb.as

_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135._crit_edge.thread: ; preds = %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135, %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135._crit_edge
  %.1104.lcssa293 = phi ptr [ %.1104.lcssa, %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135._crit_edge ], [ %.1104192, %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135 ] ; 2 uses
  %wcslen.i = tail call i64 @wcslen(ptr nonnull dereferenceable(4) %.1104.lcssa293)
  %i.bb = shl i64 %wcslen.i, 2
  %scevgep.i = getelementptr i8, ptr %.1104.lcssa293, i64 %i.bb
  br label %bb.h

bb.h:                                             ; preds = %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit, %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135._crit_edge.thread
  %.0103.pn = phi ptr [ %scevgep.i, %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135._crit_edge.thread ], [ %.0103204, %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit ]
  %.2105 = getelementptr inbounds nuw i8, ptr %.0103.pn, i64 4 ; 2 uses
  %i.bc = add nuw i32 %.0100205, 1                ; 2 uses
  %i.bd = load i32, ptr %i.g, align 8, !tbaa !352
  %i.be = icmp ult i32 %i.bc, %i.bd
  br i1 %i.be, label %.lr.ph207.split, label %._crit_edge208, !llvm.loop !1639

._crit_edge208:                                   ; preds = %bb.h, %bb.b
  %.0103.lcssa = phi ptr [ %i.d, %bb.b ], [ %.2105, %bb.h ] ; 3 uses
  %i.bf = load i32, ptr %0, align 4, !tbaa !387   ; 2 uses
  br i1 %4, label %bb.i, label %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit136

bb.i:                                             ; preds = %._crit_edge208
  %i.bg = load ptr, ptr %i.f, align 8, !tbaa !413
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !408 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !101
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call noundef signext i32 %i.bl(ptr noundef nonnull align 8 dereferenceable(12) %i.bi, i32 noundef signext %i.bf), !inline_history !41
  br label %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit136

_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit136: ; preds = %._crit_edge208, %bb.i
  %i.bn = phi i32 [ %i.bm, %bb.i ], [ %i.bf, %._crit_edge208 ] ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !354
  %.not = icmp eq i32 %i.bp, 0
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit136
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !355
  %.not122 = icmp eq i32 %i.br, 0
  br i1 %.not122, label %bb.am, label %.thread

.thread:                                          ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.bs, ptr %5, align 8, !tbaa !383
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.bt, align 8, !tbaa !385
  store i32 0, ptr %i.bs, align 8, !tbaa !387
  br label %.loopexit185

bb.k:                                             ; preds = %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit136
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  store ptr %i.bu, ptr %5, align 8, !tbaa !383
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  store i64 0, ptr %i.bv, align 8, !tbaa !385
  store i32 0, ptr %i.bu, align 8, !tbaa !387
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !449
  %i.by = and i32 %i.bx, 2097152
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ca = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE14_M_replace_auxEmmmw(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, i64 noundef 1, i32 noundef signext %i.bn)
          to label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6assignEmw.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 %i.bn, ptr %i.a, align 4, !tbaa !387
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 0, ptr %i.cc, align 4, !tbaa !387
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.cd = load ptr, ptr %i.f, align 8, !tbaa !413, !noalias !1646
  invoke void @_ZNK5boost13re_detail_60031cpp_regex_traits_implementationIwE9transformB5cxx11EPKwS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.7") align 8 %6, ptr noundef nonnull align 8 dereferenceable(232) %i.cd, ptr noundef nonnull %i.a, ptr noundef nonnull %i.cc)
          to label %_ZNK5boost16cpp_regex_traitsIwE9transformB5cxx11EPKwS3_.exit unwind label %bb.t

_ZNK5boost16cpp_regex_traitsIwE9transformB5cxx11EPKwS3_.exit: ; preds = %bb.n
  %i.ce = load ptr, ptr %5, align 8, !tbaa !388   ; 8 uses
  %i.cf = icmp eq ptr %i.ce, %i.bu
  %i.cg = load ptr, ptr %6, align 8, !tbaa !388   ; 7 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch                ; 2 uses
  br i1 %i.cf, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i: ; preds = %_ZNK5boost16cpp_regex_traitsIwE9transformB5cxx11EPKwS3_.exit
  br i1 %i.ci, label %bb.o, label %.thread.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK5boost16cpp_regex_traitsIwE9transformB5cxx11EPKwS3_.exit
  br i1 %i.ci, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !385 ; 4 uses
  %i.cl = icmp ult i64 %i.ck, 4
  call void @llvm.assume(i1 %i.cl)
  switch i64 %i.ck, label %bb.q [
    i64 0, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.cm = load i32, ptr %i.cg, align 4, !tbaa !387
  store i32 %i.cm, ptr %i.ce, align 4, !tbaa !387
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i

bb.q:                                             ; preds = %bb.o
  %i.cn = call ptr @wmemcpy(ptr noundef %i.ce, ptr noundef %i.cg, i64 noundef %i.ck) #27 ; 0 uses
  %.pre.i = load i64, ptr %i.cj, align 8, !tbaa !385
  %.pre30.i = load ptr, ptr %5, align 8, !tbaa !388
  %.pre31.pre.i = load ptr, ptr %6, align 8, !tbaa !388
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i: ; preds = %bb.q, %bb.p, %bb.o
  %.pre31.i = phi ptr [ %i.cg, %bb.o ], [ %.pre31.pre.i, %bb.q ], [ %i.cg, %bb.p ]
  %i.co = phi ptr [ %i.ce, %bb.o ], [ %.pre30.i, %bb.q ], [ %i.ce, %bb.p ]
  %i.cp = phi i64 [ %i.ck, %bb.o ], [ %.pre.i, %bb.q ], [ 1, %bb.p ] ; 2 uses
  store i64 %i.cp, ptr %i.bv, align 8, !tbaa !385
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cp
  store i32 0, ptr %i.cq, align 4, !tbaa !387
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i
  store ptr %i.cg, ptr %5, align 8, !tbaa !388
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cs = load <2 x i64>, ptr %i.cr, align 8, !tbaa !83
  store <2 x i64> %i.cs, ptr %i.bv, align 8, !tbaa !83
  br label %bb.s

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i
  %i.ct = load i64, ptr %i.bu, align 8, !tbaa !83
  store ptr %i.cg, ptr %5, align 8, !tbaa !388
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cv = load <2 x i64>, ptr %i.cu, align 8, !tbaa !83
  store <2 x i64> %i.cv, ptr %i.bv, align 8, !tbaa !83
  %.not.i = icmp eq ptr %i.ce, null
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ce, ptr %6, align 8, !tbaa !388
  store i64 %i.ct, ptr %i.ch, align 8, !tbaa !83
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ch, ptr %6, align 8, !tbaa !388
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i, %bb.r, %bb.s
  %i.cw = phi ptr [ %.pre31.i, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i ], [ %i.ce, %bb.r ], [ %i.ch, %bb.s ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.cx, align 8, !tbaa !385
  store i32 0, ptr %i.cw, align 4, !tbaa !387
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cw, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !83
  %i.db = shl i64 %i.da, 2
  %i.dc = add i64 %i.db, 4
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.dc) #31
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6assignEmw.exit

bb.t:                                             ; preds = %bb.n
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.al

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6assignEmw.exit: ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.de = load i32, ptr %i.bo, align 4, !tbaa !354 ; 2 uses
  %.not228 = icmp eq i32 %i.de, 0
  br i1 %.not228, label %.loopexit185, label %.lr.ph218

.lr.ph218:                                        ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6assignEmw.exit
  %i.df = load i64, ptr %i.bv, align 8, !tbaa !385 ; 6 uses
  %i.dg = load ptr, ptr %5, align 8               ; 4 uses
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph218, %bb.z
  %.1101217 = phi i32 [ 0, %.lr.ph218 ], [ %i.el, %bb.z ]
  %.3216 = phi ptr [ %.0103.lcssa, %.lr.ph218 ], [ %i.ek, %bb.z ] ; 7 uses
  %i.dh = load i32, ptr %.3216, align 4, !tbaa !387
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.v, label %._crit_edge.i

bb.v:                                             ; preds = %bb.u
  switch i64 %i.df, label %._crit_edge.i [
    i64 0, label %.preheader.preheader
    i64 1, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.dj = load i32, ptr %i.dg, align 4, !tbaa !387
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %.preheader.preheader, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.w, %bb.v, %bb.u
  %i.dl = phi i64 [ 1, %bb.w ], [ %i.df, %bb.v ], [ %i.df, %bb.u ] ; 2 uses
  %i.dm = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %.3216) #32 ; 2 uses
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.dm, i64 %i.dl) ; 2 uses
  %i.dn = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %i.dn, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i:   ; preds = %._crit_edge.i
  %i.do = call i32 @wmemcmp(ptr noundef %i.dg, ptr noundef nonnull %.3216, i64 noundef %.sroa.speculated.i.i) #32 ; 2 uses
  %.not.i.i = icmp eq i32 %i.do, 0
  br i1 %.not.i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i, label %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i, %._crit_edge.i
  %i.dp = sub i64 %i.dl, %i.dm
  %spec.select7.i.i.i = call i64 @llvm.smax.i64(i64 %i.dp, i64 -2147483648)
  %.08.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i, i64 2147483647)
  %.0.i6.i.i = trunc nsw i64 %.08.i.i.i to i32
  br label %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit

_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i
  %.0.i = phi i32 [ %i.do, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i ], [ %.0.i6.i.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i ]
  %i.dq = icmp sgt i32 %.0.i, -1
  br i1 %i.dq, label %.preheader.preheader, label %.preheader184.preheader

.preheader184.preheader:                          ; preds = %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit
  %scevgep = getelementptr i8, ptr %.3216, i64 4
  %wcslen = call i64 @wcslen(ptr nonnull dereferenceable(4) %scevgep)
  %i.dr = shl i64 %wcslen, 2
  %scevgep239 = getelementptr i8, ptr %.3216, i64 %i.dr
  %i.ds = getelementptr inbounds nuw i8, ptr %scevgep239, i64 8
  br label %bb.z

.preheader.preheader:                             ; preds = %bb.w, %bb.v, %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit
  %scevgep240 = getelementptr i8, ptr %.3216, i64 4
  %wcslen241 = call i64 @wcslen(ptr nonnull dereferenceable(4) %scevgep240)
  %i.dt = shl i64 %wcslen241, 2
  %scevgep242 = getelementptr i8, ptr %.3216, i64 %i.dt
  %i.du = getelementptr inbounds nuw i8, ptr %scevgep242, i64 8 ; 4 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !387
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.x, label %._crit_edge.i137

bb.x:                                             ; preds = %.preheader.preheader
  switch i64 %i.df, label %._crit_edge.i137 [
    i64 0, label %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit146.thread
    i64 1, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  %i.dx = load i32, ptr %i.dg, align 4, !tbaa !387
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit146.thread, label %._crit_edge.i137

._crit_edge.i137:                                 ; preds = %bb.y, %bb.x, %.preheader.preheader
  %i.dz = phi i64 [ 1, %bb.y ], [ %i.df, %bb.x ], [ %i.df, %.preheader.preheader ] ; 2 uses
  %i.ea = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.du) #32 ; 2 uses
  %.sroa.speculated.i.i138 = call i64 @llvm.umin.i64(i64 %i.ea, i64 %i.dz) ; 2 uses
  %i.eb = icmp eq i64 %.sroa.speculated.i.i138, 0
  br i1 %i.eb, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i142, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i139

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i139: ; preds = %._crit_edge.i137
  %i.ec = call i32 @wmemcmp(ptr noundef %i.dg, ptr noundef nonnull %i.du, i64 noundef %.sroa.speculated.i.i138) #32 ; 2 uses
  %.not.i.i140 = icmp eq i32 %i.ec, 0
  br i1 %.not.i.i140, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i142, label %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit146

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i142: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i139, %._crit_edge.i137
  %i.ed = sub i64 %i.dz, %i.ea
  %spec.select7.i.i.i143 = call i64 @llvm.smax.i64(i64 %i.ed, i64 -2147483648)
  %.08.i.i.i144 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i143, i64 2147483647)
  %.0.i6.i.i145 = trunc nsw i64 %.08.i.i.i144 to i32
  br label %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit146

_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit146: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i139, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i142
  %.0.i141 = phi i32 [ %i.ec, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i139 ], [ %.0.i6.i.i145, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i142 ]
  %i.ee = icmp slt i32 %.0.i141, 1
  br i1 %i.ee, label %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit146.thread, label %bb.z

_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit146.thread: ; preds = %bb.y, %bb.x, %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit146
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.eg = load i8, ptr %i.ef, align 4, !tbaa !358, !range !266, !noundef !106
  %i.eh = trunc nuw i8 %i.eg to i1
  %.idx = select i1 %i.eh, i64 0, i64 4
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  br label %bb.ak

bb.z:                                             ; preds = %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit146, %.preheader184.preheader
  %.6 = phi ptr [ %i.du, %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit146 ], [ %i.ds, %.preheader184.preheader ] ; 2 uses
  %scevgep243 = getelementptr nuw i8, ptr %.6, i64 4
  %wcslen244 = call i64 @wcslen(ptr nonnull dereferenceable(4) %scevgep243)
  %i.ej = shl i64 %wcslen244, 2
  %scevgep245 = getelementptr i8, ptr %.6, i64 %i.ej
  %i.ek = getelementptr inbounds nuw i8, ptr %scevgep245, i64 8 ; 2 uses
  %i.el = add nuw i32 %.1101217, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.el, %i.de
  br i1 %exitcond.not, label %.loopexit185, label %bb.u, !llvm.loop !1642

.loopexit185:                                     ; preds = %bb.z, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6assignEmw.exit, %.thread
  %i.em = phi ptr [ %i.bt, %.thread ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6assignEmw.exit ], [ %i.bv, %bb.z ] ; 4 uses
  %i.en = phi ptr [ %i.bs, %.thread ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6assignEmw.exit ], [ %i.bu, %bb.z ] ; 7 uses
  %.8 = phi ptr [ %.0103.lcssa, %.thread ], [ %.0103.lcssa, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6assignEmw.exit ], [ %i.ek, %bb.z ]
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !355
  %.not124 = icmp eq i32 %i.ep, 0
  br i1 %.not124, label %bb.ak, label %bb.aa

bb.aa:                                            ; preds = %.loopexit185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i32 %i.bn, ptr %i.b, align 4, !tbaa !387
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 0, ptr %i.eq, align 4, !tbaa !387
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.er = load ptr, ptr %i.f, align 8, !tbaa !413, !noalias !1647
  invoke void @_ZNK5boost13re_detail_60031cpp_regex_traits_implementationIwE17transform_primaryB5cxx11EPKwS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.7") align 8 %7, ptr noundef nonnull align 8 dereferenceable(232) %i.er, ptr noundef nonnull %i.b, ptr noundef nonnull %i.eq)
          to label %_ZNK5boost16cpp_regex_traitsIwE17transform_primaryB5cxx11EPKwS3_.exit unwind label %bb.aj

_ZNK5boost16cpp_regex_traitsIwE17transform_primaryB5cxx11EPKwS3_.exit: ; preds = %bb.aa
  %i.es = load ptr, ptr %5, align 8, !tbaa !388   ; 8 uses
  %i.et = icmp eq ptr %i.es, %i.en
  %i.eu = load ptr, ptr %7, align 8, !tbaa !388   ; 7 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev                ; 2 uses
  br i1 %i.et, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i155, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i147

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i155: ; preds = %_ZNK5boost16cpp_regex_traitsIwE17transform_primaryB5cxx11EPKwS3_.exit
  br i1 %i.ew, label %bb.ab, label %.thread.i156

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i147: ; preds = %_ZNK5boost16cpp_regex_traitsIwE17transform_primaryB5cxx11EPKwS3_.exit
  br i1 %i.ew, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i148

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i147, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i155
  %i.ex = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !385 ; 4 uses
  %i.ez = icmp ult i64 %i.ey, 4
  call void @llvm.assume(i1 %i.ez)
  switch i64 %i.ey, label %bb.ad [
    i64 0, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i150
    i64 1, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.fa = load i32, ptr %i.eu, align 4, !tbaa !387
  store i32 %i.fa, ptr %i.es, align 4, !tbaa !387
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i150

bb.ad:                                            ; preds = %bb.ab
  %i.fb = call ptr @wmemcpy(ptr noundef %i.es, ptr noundef %i.eu, i64 noundef %i.ey) #27 ; 0 uses
  %.pre.i152 = load i64, ptr %i.ex, align 8, !tbaa !385
  %.pre30.i153 = load ptr, ptr %5, align 8, !tbaa !388
  %.pre31.pre.i154 = load ptr, ptr %7, align 8, !tbaa !388
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i150

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i150: ; preds = %bb.ad, %bb.ac, %bb.ab
  %.pre31.i151 = phi ptr [ %i.eu, %bb.ab ], [ %.pre31.pre.i154, %bb.ad ], [ %i.eu, %bb.ac ]
  %i.fc = phi ptr [ %i.es, %bb.ab ], [ %.pre30.i153, %bb.ad ], [ %i.es, %bb.ac ]
  %i.fd = phi i64 [ %i.ey, %bb.ab ], [ %.pre.i152, %bb.ad ], [ 1, %bb.ac ] ; 2 uses
  store i64 %i.fd, ptr %i.em, align 8, !tbaa !385
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fd
  store i32 0, ptr %i.fe, align 4, !tbaa !387
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit157

.thread.i156:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i155
  store ptr %i.eu, ptr %5, align 8, !tbaa !388
  %i.ff = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !385
  store i64 %i.fg, ptr %i.em, align 8, !tbaa !385
  %i.fh = load i64, ptr %i.ev, align 8, !tbaa !83
  store i64 %i.fh, ptr %i.en, align 8, !tbaa !83
  br label %bb.af

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i148: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i147
  %i.fi = load i64, ptr %i.en, align 8, !tbaa !83
  store ptr %i.eu, ptr %5, align 8, !tbaa !388
  %i.fj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !385
  store i64 %i.fk, ptr %i.em, align 8, !tbaa !385
  %i.fl = load i64, ptr %i.ev, align 8, !tbaa !83
  store i64 %i.fl, ptr %i.en, align 8, !tbaa !83
  %.not.i149 = icmp eq ptr %i.es, null
  br i1 %.not.i149, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i148
  store ptr %i.es, ptr %7, align 8, !tbaa !388
  store i64 %i.fi, ptr %i.ev, align 8, !tbaa !83
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit157

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i148, %.thread.i156
  store ptr %i.ev, ptr %7, align 8, !tbaa !388
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit157

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit157: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i150, %bb.ae, %bb.af
  %i.fm = phi ptr [ %.pre31.i151, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i150 ], [ %i.es, %bb.ae ], [ %i.ev, %bb.af ] ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.fn, align 8, !tbaa !385
  store i32 0, ptr %i.fm, align 4, !tbaa !387
  %i.fo = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fp = icmp eq ptr %i.fm, %i.fo
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i158: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit157
  %i.fq = load i64, ptr %i.fo, align 8, !tbaa !83
  %i.fr = shl i64 %i.fq, 2
  %i.fs = add i64 %i.fr, 4
  call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef %i.fs) #31
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit160: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit157, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i158
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.ft = load i32, ptr %i.eo, align 8, !tbaa !355 ; 2 uses
  %.not127220 = icmp eq i32 %i.ft, 0
  br i1 %.not127220, label %.loopexit, label %.lr.ph224

.lr.ph224:                                        ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit160
  %i.fu = load i64, ptr %i.em, align 8, !tbaa !385 ; 3 uses
  %i.fv = load ptr, ptr %5, align 8               ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph224, %.critedge.preheader
  %.2222 = phi i32 [ 0, %.lr.ph224 ], [ %i.gh, %.critedge.preheader ]
  %.9221 = phi ptr [ %.8, %.lr.ph224 ], [ %i.gg, %.critedge.preheader ] ; 5 uses
  %i.fw = load i32, ptr %.9221, align 4, !tbaa !387
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %bb.ah, label %._crit_edge.i161

bb.ah:                                            ; preds = %bb.ag
  switch i64 %i.fu, label %._crit_edge.i161 [
    i64 0, label %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit170.thread
    i64 1, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.fy = load i32, ptr %i.fv, align 4, !tbaa !387
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit170.thread, label %._crit_edge.i161

._crit_edge.i161:                                 ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.ga = phi i64 [ 1, %bb.ai ], [ %i.fu, %bb.ah ], [ %i.fu, %bb.ag ] ; 3 uses
  %i.gb = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %.9221) #32 ; 3 uses
  %.sroa.speculated.i.i162 = call i64 @llvm.umin.i64(i64 %i.gb, i64 %i.ga) ; 2 uses
  %i.gc = icmp eq i64 %.sroa.speculated.i.i162, 0
  br i1 %i.gc, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i166, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i163

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i163: ; preds = %._crit_edge.i161
  %i.gd = call i32 @wmemcmp(ptr noundef %i.fv, ptr noundef nonnull %.9221, i64 noundef %.sroa.speculated.i.i162) #32
  %.not.i.i164 = icmp eq i32 %i.gd, 0
  %i.ge = icmp eq i64 %i.ga, %i.gb
  %or.cond = and i1 %i.ge, %.not.i.i164
  br i1 %or.cond, label %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit170.thread, label %.critedge.preheader

.critedge.preheader:                              ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i166, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i163
  %scevgep246 = getelementptr i8, ptr %.9221, i64 4
  %wcslen247 = call i64 @wcslen(ptr nonnull dereferenceable(4) %scevgep246)
  %i.gf = shl i64 %wcslen247, 2
  %scevgep248 = getelementptr i8, ptr %.9221, i64 %i.gf
  %i.gg = getelementptr inbounds nuw i8, ptr %scevgep248, i64 8
  %i.gh = add nuw i32 %.2222, 1                   ; 2 uses
  %exitcond249.not = icmp eq i32 %i.gh, %i.ft
  br i1 %exitcond249.not, label %.loopexit, label %bb.ag, !llvm.loop !1645

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i166: ; preds = %._crit_edge.i161
  %.old = icmp eq i64 %i.ga, %i.gb
  br i1 %.old, label %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit170.thread, label %.critedge.preheader

_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit170.thread: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i163, %bb.ai, %bb.ah, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i166
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.gj = load i8, ptr %i.gi, align 4, !tbaa !358, !range !266, !noundef !106
  %i.gk = trunc nuw i8 %i.gj to i1
  %.idx179 = select i1 %i.gk, i64 0, i64 4
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 %.idx179 ; 2 uses
  br label %.loopexit

bb.aj:                                            ; preds = %bb.aa
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.al

.loopexit:                                        ; preds = %.critedge.preheader, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit160, %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit170.thread
  %.not127188 = phi i1 [ false, %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit170.thread ], [ true, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit160 ], [ true, %.critedge.preheader ]
  %.2114 = phi ptr [ %i.gl, %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit170.thread ], [ %0, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit160 ], [ %0, %.critedge.preheader ]
  %.0106 = phi ptr [ %i.gl, %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit170.thread ], [ undef, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit160 ], [ undef, %.critedge.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit, %.loopexit185, %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit146.thread
  %i.gn = phi ptr [ %i.bu, %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit146.thread ], [ %i.en, %.loopexit ], [ %i.en, %.loopexit185 ] ; 2 uses
  %.4116 = phi ptr [ %i.ei, %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit146.thread ], [ %.2114, %.loopexit ], [ %0, %.loopexit185 ]
  %.2108 = phi ptr [ %i.ei, %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit146.thread ], [ %.0106, %.loopexit ], [ undef, %.loopexit185 ]
  %cond = phi i1 [ false, %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit146.thread ], [ %.not127188, %.loopexit ], [ true, %.loopexit185 ]
  %i.go = load ptr, ptr %5, align 8, !tbaa !388   ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.gn
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i171

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i171: ; preds = %bb.ak
  %i.gq = load i64, ptr %i.gn, align 8, !tbaa !83
  %i.gr = shl i64 %i.gq, 2
  %i.gs = add i64 %i.gr, 4
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gs) #31
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit173

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit173: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br i1 %cond, label %bb.am, label %bb.as

bb.al:                                            ; preds = %bb.aj, %bb.t, %bb.m
  %i.gt = phi ptr [ %i.en, %bb.aj ], [ %i.bu, %bb.m ], [ %i.bu, %bb.t ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.gm, %bb.aj ], [ %i.cb, %bb.m ], [ %i.dd, %bb.t ]
  %i.gu = load ptr, ptr %5, align 8, !tbaa !388   ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.gt
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i174: ; preds = %bb.al
  %i.gw = load i64, ptr %i.gt, align 8, !tbaa !83
  %i.gx = shl i64 %i.gw, 2
  %i.gy = add i64 %i.gx, 4
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gy) #31
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit176: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit173, %bb.j
  %.5117 = phi ptr [ %.4116, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit173 ], [ %0, %bb.j ] ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !356
  %i.hb = call noundef zeroext i1 @_ZNK5boost16cpp_regex_traitsIwE7isctypeEwj(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i32 noundef signext %i.bn, i32 noundef %i.ha)
  br i1 %i.hb, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.hd = load i8, ptr %i.hc, align 4, !tbaa !358, !range !266, !noundef !106
  %i.he = trunc nuw i8 %i.hd to i1
  %.idx182 = select i1 %i.he, i64 0, i64 4
  %i.hf = getelementptr inbounds nuw i8, ptr %.5117, i64 %.idx182
  br label %bb.as

bb.ao:                                            ; preds = %bb.am
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !357 ; 2 uses
  %.not131 = icmp eq i32 %i.hh, 0
  br i1 %.not131, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hi = call noundef zeroext i1 @_ZNK5boost16cpp_regex_traitsIwE7isctypeEwj(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i32 noundef signext %i.bn, i32 noundef %i.hh)
  br i1 %i.hi, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.hk = load i8, ptr %i.hj, align 4, !tbaa !358, !range !266, !noundef !106
  %i.hl = trunc nuw i8 %i.hk to i1
  %.idx180 = select i1 %i.hl, i64 0, i64 4
  %i.hm = getelementptr inbounds nuw i8, ptr %.5117, i64 %.idx180
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap, %bb.ao
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ho = load i8, ptr %i.hn, align 4, !tbaa !358, !range !266, !noundef !106
  %i.hp = shl nuw nsw i8 %i.ho, 2
  %.idx181 = zext nneg i8 %i.hp to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %.5117, i64 %.idx181
  br label %bb.as

bb.as:                                            ; preds = %bb.g, %.split212.us, %.split.us, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit173, %bb.ar, %bb.aq, %bb.an, %bb.a
  %.5111 = phi ptr [ %0, %bb.a ], [ %i.al, %.split212.us ], [ %spec.select, %bb.g ], [ %0, %.split.us ], [ %.2108, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit173 ], [ %i.hf, %bb.an ], [ %i.hm, %bb.aq ], [ %i.hq, %bb.ar ]
  ret ptr %.5111
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN5boost13re_detail_60026basic_regex_implementationIwNS0_12regex_traitsIwNS0_16cpp_regex_traitsIwEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !98
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !99
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !101
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !6
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !101
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !6
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !85
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !102

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost3log11v2_mt_posix3aux14light_functionIFbRKNS1_19attribute_value_setEEE4implINS2_17predicate_wrapperINS_3mpl7vector4INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_20basic_string_literalIcSG_EENSE_IwSF_IwESaIwEEENSJ_IwSL_EEEENS2_9anonymous17matches_predicateEEEE11invoke_implEPvS6_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.boost::log::v2_mt_posix::value_visitor_invoker", align 1 ; 3 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i8 0, ptr %i.a, align 1, !tbaa !371
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.d = call i32 @_ZNK5boost3log11v2_mt_posix21value_visitor_invokerINS_3mpl7vector4INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_20basic_string_literalIcS8_EENS6_IwS7_IwESaIwEEENSB_IwSD_EEEENS1_16fallback_to_noneEEclINS1_19save_result_wrapperIRKNS1_3aux9anonymous17matches_predicateEbEEEENS1_17visitation_resultERKNS1_14attribute_nameERKNS1_19attribute_value_setET_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nonnull %i.c, ptr nonnull %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.e = load i8, ptr %i.a, align 1, !tbaa !371, !range !266, !noundef !106
  %i.f = trunc nuw i8 %i.e to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost3log11v2_mt_posix3aux14light_functionIFbRKNS1_19attribute_value_setEEE4implINS2_17predicate_wrapperINS_3mpl7vector4INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_20basic_string_literalIcSG_EENSE_IwSF_IwESaIwEEENSJ_IwSL_EEEENS2_9anonymous17matches_predicateEEEE10clone_implEPKv(ptr noundef %0) #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN5boost3log11v2_mt_posix3aux14light_functionIFbRKNS1_19attribute_value_setEEE4implINS2_17predicate_wrapperINS_3mpl7vector4INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_20basic_string_literalIcSG_EENSE_IwSF_IwESaIwEEENSJ_IwSL_EEEENS2_9anonymous17matches_predicateEEEE11invoke_implEPvS6_, ptr %i.a, align 8, !tbaa !91
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN5boost3log11v2_mt_posix3aux14light_functionIFbRKNS1_19attribute_value_setEEE4implINS2_17predicate_wrapperINS_3mpl7vector4INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_20basic_string_literalIcSG_EENSE_IwSF_IwESaIwEEENSJ_IwSL_EEEENS2_9anonymous17matches_predicateEEEE10clone_implEPKv, ptr %i.c, align 8, !tbaa !92
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
end_hunk_1
begin_hunk_2_@_ZN5boost13match_resultsIPKwSaINS_9sub_matchIS2_EEEEC2ERKS6_:bb.a

_ZNSt10shared_ptrIN5boost13re_detail_60020named_subexpressionsEEC2ERKS3_.exit: ; preds = %.loopexit, %bb.e, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !681
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !681
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !631, !range !266, !noundef !106 ; 2 uses
  %i.al = trunc nuw i8 %i.ak to i1
  store i8 %i.ak, ptr %i.ai, align 4, !tbaa !631
  br i1 %i.al, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt10shared_ptrIN5boost13re_detail_60020named_subexpressionsEEC2ERKS3_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load <2 x ptr>, ptr %i.am, align 8, !tbaa !495
  store <2 x ptr> %i.an, ptr %i.u, align 8, !tbaa !495
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !678
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !678
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !679, !range !266, !noundef !106
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.as, ptr %i.at, align 8, !tbaa !679
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt10shared_ptrIN5boost13re_detail_60020named_subexpressionsEEC2ERKS3_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost13re_detail_60014repeater_countIPKwE12unwind_untilEiPS4_i(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = sub nsw i32 -2, %3
  %.not26 = icmp eq ptr %2, null
  br i1 %.not26, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.01627 = phi ptr [ %.1, %bb.g ], [ %2, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.01627, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !660  ; 2 uses
  %.not23 = icmp eq i32 %i.c, %1
  br i1 %.not23, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i32 %i.a, %i.c
  br i1 %i.d, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.01627, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !659  ; 4 uses
  %.not24 = icmp eq ptr %i.f, null
  br i1 %.not24, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !660  ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = tail call noundef ptr @_ZN5boost13re_detail_60014repeater_countIPKwE12unwind_untilEiPS4_i(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %i.h, ptr noundef nonnull %i.f, i32 noundef %3) ; 2 uses
  %.not25 = icmp eq ptr %i.j, null
  br i1 %.not25, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !659
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.1 = phi ptr [ %i.l, %bb.f ], [ %i.f, %bb.d ]  ; 2 uses
  %.not = icmp eq ptr %.1, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !1804

.critedge:                                        ; preds = %bb.c, %bb.b, %bb.e, %bb.g, %.lr.ph, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.g ], [ null, %bb.e ], [ %.01627, %.lr.ph ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost13re_detail_60016re_is_set_memberIPKwwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEjEET_S8_S8_PKNS0_11re_set_longIT2_EERKNS0_10regex_dataIT0_T1_EEb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(402) %3, i1 noundef zeroext %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string.7", align 8 ; 23 uses
  %i.a = alloca [2 x i32], align 4                ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string.7", align 8 ; 14 uses
  %i.b = alloca [2 x i32], align 4                ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string.7", align 8 ; 14 uses
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %bb.as, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !394  ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !352
  %.not226 = icmp eq i32 %i.h, 0
  br i1 %.not226, label %._crit_edge208, label %.lr.ph207.split

.lr.ph207.split:                                  ; preds = %bb.b, %bb.h
  %.0100205 = phi i32 [ %i.bc, %bb.h ], [ 0, %bb.b ]
  %.0103204 = phi ptr [ %.2105, %bb.h ], [ %i.d, %bb.b ] ; 4 uses
  %i.i = load i32, ptr %.0103204, align 4, !tbaa !387 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph207.split
  br i1 %4, label %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135.us, label %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135

_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135.us: ; preds = %.lr.ph, %bb.c
  %.0102193.us = phi ptr [ %i.u, %bb.c ], [ %0, %.lr.ph ] ; 3 uses
  %.1104192.us = phi ptr [ %i.t, %bb.c ], [ %.0103204, %.lr.ph ] ; 3 uses
  %i.k = load i32, ptr %.0102193.us, align 4, !tbaa !387
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !413
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !408  ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !101
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef signext i32 %i.q(ptr noundef nonnull align 8 dereferenceable(12) %i.n, i32 noundef signext %i.k), !inline_history !41
  %i.s = load i32, ptr %.1104192.us, align 4, !tbaa !387 ; 2 uses
  %.not132.us = icmp eq i32 %i.r, %i.s
  br i1 %.not132.us, label %bb.c, label %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135._crit_edge

bb.c:                                             ; preds = %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135.us
  %i.t = getelementptr inbounds nuw i8, ptr %.1104192.us, i64 4 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0102193.us, i64 4 ; 3 uses
  %i.v = load i32, ptr %i.t, align 4, !tbaa !387  ; 2 uses
  %i.w = icmp ne i32 %i.v, 0
  %i.x = icmp ne ptr %i.u, %1
  %i.y = select i1 %i.w, i1 %i.x, i1 false
  br i1 %i.y, label %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135.us, label %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135._crit_edge, !llvm.loop !1805

bb.d:                                             ; preds = %.lr.ph207.split
  %i.z = load i32, ptr %0, align 4, !tbaa !387    ; 2 uses
  br i1 %4, label %bb.e, label %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !413
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !408 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !101
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef signext i32 %i.af(ptr noundef nonnull align 8 dereferenceable(12) %i.ac, i32 noundef signext %i.z), !inline_history !41
  br label %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit

_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit: ; preds = %bb.d, %bb.e
  %i.ah = phi i32 [ %i.ag, %bb.e ], [ %i.z, %bb.d ]
  %.not133 = icmp eq i32 %i.ah, 0
  br i1 %.not133, label %.split212.us, label %bb.h

.split212.us:                                     ; preds = %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !358, !range !266, !noundef !106
  %i.ak = trunc nuw i8 %i.aj to i1
  %.idx183 = select i1 %i.ak, i64 0, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.idx183
  br label %bb.as

_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135: ; preds = %.lr.ph, %bb.f
  %i.am = phi i32 [ %i.aq, %bb.f ], [ %i.i, %.lr.ph ]
  %.0102193 = phi ptr [ %i.ap, %bb.f ], [ %0, %.lr.ph ] ; 2 uses
  %.1104192 = phi ptr [ %i.ao, %bb.f ], [ %.0103204, %.lr.ph ] ; 2 uses
  %i.an = load i32, ptr %.0102193, align 4, !tbaa !387
  %.not132 = icmp eq i32 %i.an, %i.am
  br i1 %.not132, label %bb.f, label %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135._crit_edge.thread

bb.f:                                             ; preds = %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135
  %i.ao = getelementptr inbounds nuw i8, ptr %.1104192, i64 4 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0102193, i64 4 ; 3 uses
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !387 ; 3 uses
  %i.ar = icmp ne i32 %i.aq, 0
  %i.as = icmp ne ptr %i.ap, %1
  %i.at = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %i.at, label %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135, label %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135._crit_edge, !llvm.loop !1805

_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135._crit_edge: ; preds = %bb.f, %bb.c, %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135.us
  %.1104.lcssa = phi ptr [ %.1104192.us, %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135.us ], [ %i.t, %bb.c ], [ %i.ao, %bb.f ]
  %.0102.lcssa = phi ptr [ %.0102193.us, %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135.us ], [ %i.u, %bb.c ], [ %i.ap, %bb.f ] ; 2 uses
  %i.au = phi i32 [ %i.s, %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135.us ], [ %i.v, %bb.c ], [ %i.aq, %bb.f ]
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %.split.us, label %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135._crit_edge.thread

.split.us:                                        ; preds = %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ax = load i8, ptr %i.aw, align 4, !tbaa !358, !range !266, !noundef !106
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.as, label %bb.g

bb.g:                                             ; preds = %.split.us
  %i.az = icmp eq ptr %.0102.lcssa, %0
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4
  %spec.select = select i1 %i.az, ptr %i.ba, ptr %.0102.lcssa
  br label %bb.as

_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135._crit_edge.thread: ; preds = %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135, %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135._crit_edge
  %.1104.lcssa293 = phi ptr [ %.1104.lcssa, %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135._crit_edge ], [ %.1104192, %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135 ] ; 2 uses
  %wcslen.i = tail call i64 @wcslen(ptr nonnull dereferenceable(4) %.1104.lcssa293)
  %i.bb = shl i64 %wcslen.i, 2
  %scevgep.i = getelementptr i8, ptr %.1104.lcssa293, i64 %i.bb
  br label %bb.h

bb.h:                                             ; preds = %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit, %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135._crit_edge.thread
  %.0103.pn = phi ptr [ %scevgep.i, %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit135._crit_edge.thread ], [ %.0103204, %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit ]
  %.2105 = getelementptr inbounds nuw i8, ptr %.0103.pn, i64 4 ; 2 uses
  %i.bc = add nuw i32 %.0100205, 1                ; 2 uses
  %i.bd = load i32, ptr %i.g, align 8, !tbaa !352
  %i.be = icmp ult i32 %i.bc, %i.bd
  br i1 %i.be, label %.lr.ph207.split, label %._crit_edge208, !llvm.loop !1806

._crit_edge208:                                   ; preds = %bb.h, %bb.b
  %.0103.lcssa = phi ptr [ %i.d, %bb.b ], [ %.2105, %bb.h ] ; 3 uses
  %i.bf = load i32, ptr %0, align 4, !tbaa !387   ; 2 uses
  br i1 %4, label %bb.i, label %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit136

bb.i:                                             ; preds = %._crit_edge208
  %i.bg = load ptr, ptr %i.f, align 8, !tbaa !413
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !408 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !101
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call noundef signext i32 %i.bl(ptr noundef nonnull align 8 dereferenceable(12) %i.bi, i32 noundef signext %i.bf), !inline_history !41
  br label %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit136

_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit136: ; preds = %._crit_edge208, %bb.i
  %i.bn = phi i32 [ %i.bm, %bb.i ], [ %i.bf, %._crit_edge208 ] ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !354
  %.not = icmp eq i32 %i.bp, 0
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit136
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !355
  %.not122 = icmp eq i32 %i.br, 0
  br i1 %.not122, label %bb.am, label %.thread

.thread:                                          ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.bs, ptr %5, align 8, !tbaa !383
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.bt, align 8, !tbaa !385
  store i32 0, ptr %i.bs, align 8, !tbaa !387
  br label %.loopexit185

bb.k:                                             ; preds = %_ZNK5boost16cpp_regex_traitsIwE9translateEwb.exit136
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  store ptr %i.bu, ptr %5, align 8, !tbaa !383
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  store i64 0, ptr %i.bv, align 8, !tbaa !385
  store i32 0, ptr %i.bu, align 8, !tbaa !387
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !449
  %i.by = and i32 %i.bx, 2097152
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ca = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE14_M_replace_auxEmmmw(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, i64 noundef 1, i32 noundef signext %i.bn)
          to label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6assignEmw.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 %i.bn, ptr %i.a, align 4, !tbaa !387
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 0, ptr %i.cc, align 4, !tbaa !387
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.cd = load ptr, ptr %i.f, align 8, !tbaa !413, !noalias !1813
  invoke void @_ZNK5boost13re_detail_60031cpp_regex_traits_implementationIwE9transformB5cxx11EPKwS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.7") align 8 %6, ptr noundef nonnull align 8 dereferenceable(232) %i.cd, ptr noundef nonnull %i.a, ptr noundef nonnull %i.cc)
          to label %_ZNK5boost16cpp_regex_traitsIwE9transformB5cxx11EPKwS3_.exit unwind label %bb.t

_ZNK5boost16cpp_regex_traitsIwE9transformB5cxx11EPKwS3_.exit: ; preds = %bb.n
  %i.ce = load ptr, ptr %5, align 8, !tbaa !388   ; 8 uses
  %i.cf = icmp eq ptr %i.ce, %i.bu
  %i.cg = load ptr, ptr %6, align 8, !tbaa !388   ; 7 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch                ; 2 uses
  br i1 %i.cf, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i: ; preds = %_ZNK5boost16cpp_regex_traitsIwE9transformB5cxx11EPKwS3_.exit
  br i1 %i.ci, label %bb.o, label %.thread.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK5boost16cpp_regex_traitsIwE9transformB5cxx11EPKwS3_.exit
  br i1 %i.ci, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !385 ; 4 uses
  %i.cl = icmp ult i64 %i.ck, 4
  call void @llvm.assume(i1 %i.cl)
  switch i64 %i.ck, label %bb.q [
    i64 0, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.cm = load i32, ptr %i.cg, align 4, !tbaa !387
  store i32 %i.cm, ptr %i.ce, align 4, !tbaa !387
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i

bb.q:                                             ; preds = %bb.o
  %i.cn = call ptr @wmemcpy(ptr noundef %i.ce, ptr noundef %i.cg, i64 noundef %i.ck) #27 ; 0 uses
  %.pre.i = load i64, ptr %i.cj, align 8, !tbaa !385
  %.pre30.i = load ptr, ptr %5, align 8, !tbaa !388
  %.pre31.pre.i = load ptr, ptr %6, align 8, !tbaa !388
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i: ; preds = %bb.q, %bb.p, %bb.o
  %.pre31.i = phi ptr [ %i.cg, %bb.o ], [ %.pre31.pre.i, %bb.q ], [ %i.cg, %bb.p ]
  %i.co = phi ptr [ %i.ce, %bb.o ], [ %.pre30.i, %bb.q ], [ %i.ce, %bb.p ]
  %i.cp = phi i64 [ %i.ck, %bb.o ], [ %.pre.i, %bb.q ], [ 1, %bb.p ] ; 2 uses
  store i64 %i.cp, ptr %i.bv, align 8, !tbaa !385
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cp
  store i32 0, ptr %i.cq, align 4, !tbaa !387
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i
  store ptr %i.cg, ptr %5, align 8, !tbaa !388
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cs = load <2 x i64>, ptr %i.cr, align 8, !tbaa !83
  store <2 x i64> %i.cs, ptr %i.bv, align 8, !tbaa !83
  br label %bb.s

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i
  %i.ct = load i64, ptr %i.bu, align 8, !tbaa !83
  store ptr %i.cg, ptr %5, align 8, !tbaa !388
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cv = load <2 x i64>, ptr %i.cu, align 8, !tbaa !83
  store <2 x i64> %i.cv, ptr %i.bv, align 8, !tbaa !83
  %.not.i = icmp eq ptr %i.ce, null
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ce, ptr %6, align 8, !tbaa !388
  store i64 %i.ct, ptr %i.ch, align 8, !tbaa !83
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ch, ptr %6, align 8, !tbaa !388
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i, %bb.r, %bb.s
  %i.cw = phi ptr [ %.pre31.i, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i ], [ %i.ce, %bb.r ], [ %i.ch, %bb.s ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.cx, align 8, !tbaa !385
  store i32 0, ptr %i.cw, align 4, !tbaa !387
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cw, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !83
  %i.db = shl i64 %i.da, 2
  %i.dc = add i64 %i.db, 4
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.dc) #31
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6assignEmw.exit

bb.t:                                             ; preds = %bb.n
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.al

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6assignEmw.exit: ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.de = load i32, ptr %i.bo, align 4, !tbaa !354 ; 2 uses
  %.not228 = icmp eq i32 %i.de, 0
  br i1 %.not228, label %.loopexit185, label %.lr.ph218

.lr.ph218:                                        ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6assignEmw.exit
  %i.df = load i64, ptr %i.bv, align 8, !tbaa !385 ; 6 uses
  %i.dg = load ptr, ptr %5, align 8               ; 4 uses
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph218, %bb.z
  %.1101217 = phi i32 [ 0, %.lr.ph218 ], [ %i.el, %bb.z ]
  %.3216 = phi ptr [ %.0103.lcssa, %.lr.ph218 ], [ %i.ek, %bb.z ] ; 7 uses
  %i.dh = load i32, ptr %.3216, align 4, !tbaa !387
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.v, label %._crit_edge.i

bb.v:                                             ; preds = %bb.u
  switch i64 %i.df, label %._crit_edge.i [
    i64 0, label %.preheader.preheader
    i64 1, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.dj = load i32, ptr %i.dg, align 4, !tbaa !387
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %.preheader.preheader, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.w, %bb.v, %bb.u
  %i.dl = phi i64 [ 1, %bb.w ], [ %i.df, %bb.v ], [ %i.df, %bb.u ] ; 2 uses
  %i.dm = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %.3216) #32 ; 2 uses
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.dm, i64 %i.dl) ; 2 uses
  %i.dn = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %i.dn, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i:   ; preds = %._crit_edge.i
  %i.do = call i32 @wmemcmp(ptr noundef %i.dg, ptr noundef nonnull %.3216, i64 noundef %.sroa.speculated.i.i) #32 ; 2 uses
  %.not.i.i = icmp eq i32 %i.do, 0
  br i1 %.not.i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i, label %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i, %._crit_edge.i
  %i.dp = sub i64 %i.dl, %i.dm
  %spec.select7.i.i.i = call i64 @llvm.smax.i64(i64 %i.dp, i64 -2147483648)
  %.08.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i, i64 2147483647)
  %.0.i6.i.i = trunc nsw i64 %.08.i.i.i to i32
  br label %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit

_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i
  %.0.i = phi i32 [ %i.do, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i ], [ %.0.i6.i.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i ]
  %i.dq = icmp sgt i32 %.0.i, -1
  br i1 %i.dq, label %.preheader.preheader, label %.preheader184.preheader

.preheader184.preheader:                          ; preds = %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit
  %scevgep = getelementptr i8, ptr %.3216, i64 4
  %wcslen = call i64 @wcslen(ptr nonnull dereferenceable(4) %scevgep)
  %i.dr = shl i64 %wcslen, 2
  %scevgep239 = getelementptr i8, ptr %.3216, i64 %i.dr
  %i.ds = getelementptr inbounds nuw i8, ptr %scevgep239, i64 8
  br label %bb.z

.preheader.preheader:                             ; preds = %bb.w, %bb.v, %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit
  %scevgep240 = getelementptr i8, ptr %.3216, i64 4
  %wcslen241 = call i64 @wcslen(ptr nonnull dereferenceable(4) %scevgep240)
  %i.dt = shl i64 %wcslen241, 2
  %scevgep242 = getelementptr i8, ptr %.3216, i64 %i.dt
  %i.du = getelementptr inbounds nuw i8, ptr %scevgep242, i64 8 ; 4 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !387
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.x, label %._crit_edge.i137

bb.x:                                             ; preds = %.preheader.preheader
  switch i64 %i.df, label %._crit_edge.i137 [
    i64 0, label %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit146.thread
    i64 1, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  %i.dx = load i32, ptr %i.dg, align 4, !tbaa !387
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit146.thread, label %._crit_edge.i137

._crit_edge.i137:                                 ; preds = %bb.y, %bb.x, %.preheader.preheader
  %i.dz = phi i64 [ 1, %bb.y ], [ %i.df, %bb.x ], [ %i.df, %.preheader.preheader ] ; 2 uses
  %i.ea = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.du) #32 ; 2 uses
  %.sroa.speculated.i.i138 = call i64 @llvm.umin.i64(i64 %i.ea, i64 %i.dz) ; 2 uses
  %i.eb = icmp eq i64 %.sroa.speculated.i.i138, 0
  br i1 %i.eb, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i142, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i139

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i139: ; preds = %._crit_edge.i137
  %i.ec = call i32 @wmemcmp(ptr noundef %i.dg, ptr noundef nonnull %i.du, i64 noundef %.sroa.speculated.i.i138) #32 ; 2 uses
  %.not.i.i140 = icmp eq i32 %i.ec, 0
  br i1 %.not.i.i140, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i142, label %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit146

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i142: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i139, %._crit_edge.i137
  %i.ed = sub i64 %i.dz, %i.ea
  %spec.select7.i.i.i143 = call i64 @llvm.smax.i64(i64 %i.ed, i64 -2147483648)
  %.08.i.i.i144 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i143, i64 2147483647)
  %.0.i6.i.i145 = trunc nsw i64 %.08.i.i.i144 to i32
  br label %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit146

_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit146: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i139, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i142
  %.0.i141 = phi i32 [ %i.ec, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i139 ], [ %.0.i6.i.i145, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i142 ]
  %i.ee = icmp slt i32 %.0.i141, 1
  br i1 %i.ee, label %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit146.thread, label %bb.z

_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit146.thread: ; preds = %bb.y, %bb.x, %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit146
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.eg = load i8, ptr %i.ef, align 4, !tbaa !358, !range !266, !noundef !106
  %i.eh = trunc nuw i8 %i.eg to i1
  %.idx = select i1 %i.eh, i64 0, i64 4
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  br label %bb.ak

bb.z:                                             ; preds = %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit146, %.preheader184.preheader
  %.6 = phi ptr [ %i.du, %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit146 ], [ %i.ds, %.preheader184.preheader ] ; 2 uses
  %scevgep243 = getelementptr nuw i8, ptr %.6, i64 4
  %wcslen244 = call i64 @wcslen(ptr nonnull dereferenceable(4) %scevgep243)
  %i.ej = shl i64 %wcslen244, 2
  %scevgep245 = getelementptr i8, ptr %.6, i64 %i.ej
  %i.ek = getelementptr inbounds nuw i8, ptr %scevgep245, i64 8 ; 2 uses
  %i.el = add nuw i32 %.1101217, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.el, %i.de
  br i1 %exitcond.not, label %.loopexit185, label %bb.u, !llvm.loop !1809

.loopexit185:                                     ; preds = %bb.z, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6assignEmw.exit, %.thread
  %i.em = phi ptr [ %i.bt, %.thread ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6assignEmw.exit ], [ %i.bv, %bb.z ] ; 4 uses
  %i.en = phi ptr [ %i.bs, %.thread ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6assignEmw.exit ], [ %i.bu, %bb.z ] ; 7 uses
  %.8 = phi ptr [ %.0103.lcssa, %.thread ], [ %.0103.lcssa, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6assignEmw.exit ], [ %i.ek, %bb.z ]
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !355
  %.not124 = icmp eq i32 %i.ep, 0
  br i1 %.not124, label %bb.ak, label %bb.aa

bb.aa:                                            ; preds = %.loopexit185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i32 %i.bn, ptr %i.b, align 4, !tbaa !387
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 0, ptr %i.eq, align 4, !tbaa !387
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.er = load ptr, ptr %i.f, align 8, !tbaa !413, !noalias !1814
  invoke void @_ZNK5boost13re_detail_60031cpp_regex_traits_implementationIwE17transform_primaryB5cxx11EPKwS4_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.7") align 8 %7, ptr noundef nonnull align 8 dereferenceable(232) %i.er, ptr noundef nonnull %i.b, ptr noundef nonnull %i.eq)
          to label %_ZNK5boost16cpp_regex_traitsIwE17transform_primaryB5cxx11EPKwS3_.exit unwind label %bb.aj

_ZNK5boost16cpp_regex_traitsIwE17transform_primaryB5cxx11EPKwS3_.exit: ; preds = %bb.aa
  %i.es = load ptr, ptr %5, align 8, !tbaa !388   ; 8 uses
  %i.et = icmp eq ptr %i.es, %i.en
  %i.eu = load ptr, ptr %7, align 8, !tbaa !388   ; 7 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev                ; 2 uses
  br i1 %i.et, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i155, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i147

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i155: ; preds = %_ZNK5boost16cpp_regex_traitsIwE17transform_primaryB5cxx11EPKwS3_.exit
  br i1 %i.ew, label %bb.ab, label %.thread.i156

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i147: ; preds = %_ZNK5boost16cpp_regex_traitsIwE17transform_primaryB5cxx11EPKwS3_.exit
  br i1 %i.ew, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i148

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i147, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i155
  %i.ex = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !385 ; 4 uses
  %i.ez = icmp ult i64 %i.ey, 4
  call void @llvm.assume(i1 %i.ez)
  switch i64 %i.ey, label %bb.ad [
    i64 0, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i150
    i64 1, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.fa = load i32, ptr %i.eu, align 4, !tbaa !387
  store i32 %i.fa, ptr %i.es, align 4, !tbaa !387
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i150

bb.ad:                                            ; preds = %bb.ab
  %i.fb = call ptr @wmemcpy(ptr noundef %i.es, ptr noundef %i.eu, i64 noundef %i.ey) #27 ; 0 uses
  %.pre.i152 = load i64, ptr %i.ex, align 8, !tbaa !385
  %.pre30.i153 = load ptr, ptr %5, align 8, !tbaa !388
  %.pre31.pre.i154 = load ptr, ptr %7, align 8, !tbaa !388
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i150

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i150: ; preds = %bb.ad, %bb.ac, %bb.ab
  %.pre31.i151 = phi ptr [ %i.eu, %bb.ab ], [ %.pre31.pre.i154, %bb.ad ], [ %i.eu, %bb.ac ]
  %i.fc = phi ptr [ %i.es, %bb.ab ], [ %.pre30.i153, %bb.ad ], [ %i.es, %bb.ac ]
  %i.fd = phi i64 [ %i.ey, %bb.ab ], [ %.pre.i152, %bb.ad ], [ 1, %bb.ac ] ; 2 uses
  store i64 %i.fd, ptr %i.em, align 8, !tbaa !385
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fd
  store i32 0, ptr %i.fe, align 4, !tbaa !387
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit157

.thread.i156:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i155
  store ptr %i.eu, ptr %5, align 8, !tbaa !388
  %i.ff = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !385
  store i64 %i.fg, ptr %i.em, align 8, !tbaa !385
  %i.fh = load i64, ptr %i.ev, align 8, !tbaa !83
  store i64 %i.fh, ptr %i.en, align 8, !tbaa !83
  br label %bb.af

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i148: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i147
  %i.fi = load i64, ptr %i.en, align 8, !tbaa !83
  store ptr %i.eu, ptr %5, align 8, !tbaa !388
  %i.fj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !385
  store i64 %i.fk, ptr %i.em, align 8, !tbaa !385
  %i.fl = load i64, ptr %i.ev, align 8, !tbaa !83
  store i64 %i.fl, ptr %i.en, align 8, !tbaa !83
  %.not.i149 = icmp eq ptr %i.es, null
  br i1 %.not.i149, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i148
  store ptr %i.es, ptr %7, align 8, !tbaa !388
  store i64 %i.fi, ptr %i.ev, align 8, !tbaa !83
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit157

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i148, %.thread.i156
  store ptr %i.ev, ptr %7, align 8, !tbaa !388
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit157

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit157: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i150, %bb.ae, %bb.af
  %i.fm = phi ptr [ %.pre31.i151, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i150 ], [ %i.es, %bb.ae ], [ %i.ev, %bb.af ] ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.fn, align 8, !tbaa !385
  store i32 0, ptr %i.fm, align 4, !tbaa !387
  %i.fo = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fp = icmp eq ptr %i.fm, %i.fo
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i158: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit157
  %i.fq = load i64, ptr %i.fo, align 8, !tbaa !83
  %i.fr = shl i64 %i.fq, 2
  %i.fs = add i64 %i.fr, 4
  call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef %i.fs) #31
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit160: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit157, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i158
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.ft = load i32, ptr %i.eo, align 8, !tbaa !355 ; 2 uses
  %.not127220 = icmp eq i32 %i.ft, 0
  br i1 %.not127220, label %.loopexit, label %.lr.ph224

.lr.ph224:                                        ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit160
  %i.fu = load i64, ptr %i.em, align 8, !tbaa !385 ; 3 uses
  %i.fv = load ptr, ptr %5, align 8               ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph224, %.critedge.preheader
  %.2222 = phi i32 [ 0, %.lr.ph224 ], [ %i.gh, %.critedge.preheader ]
  %.9221 = phi ptr [ %.8, %.lr.ph224 ], [ %i.gg, %.critedge.preheader ] ; 5 uses
  %i.fw = load i32, ptr %.9221, align 4, !tbaa !387
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %bb.ah, label %._crit_edge.i161

bb.ah:                                            ; preds = %bb.ag
  switch i64 %i.fu, label %._crit_edge.i161 [
    i64 0, label %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit170.thread
    i64 1, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.fy = load i32, ptr %i.fv, align 4, !tbaa !387
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit170.thread, label %._crit_edge.i161

._crit_edge.i161:                                 ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.ga = phi i64 [ 1, %bb.ai ], [ %i.fu, %bb.ah ], [ %i.fu, %bb.ag ] ; 3 uses
  %i.gb = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %.9221) #32 ; 3 uses
  %.sroa.speculated.i.i162 = call i64 @llvm.umin.i64(i64 %i.gb, i64 %i.ga) ; 2 uses
  %i.gc = icmp eq i64 %.sroa.speculated.i.i162, 0
  br i1 %i.gc, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i166, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i163

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i163: ; preds = %._crit_edge.i161
  %i.gd = call i32 @wmemcmp(ptr noundef %i.fv, ptr noundef nonnull %.9221, i64 noundef %.sroa.speculated.i.i162) #32
  %.not.i.i164 = icmp eq i32 %i.gd, 0
  %i.ge = icmp eq i64 %i.ga, %i.gb
  %or.cond = and i1 %i.ge, %.not.i.i164
  br i1 %or.cond, label %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit170.thread, label %.critedge.preheader

.critedge.preheader:                              ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i166, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i163
  %scevgep246 = getelementptr i8, ptr %.9221, i64 4
  %wcslen247 = call i64 @wcslen(ptr nonnull dereferenceable(4) %scevgep246)
  %i.gf = shl i64 %wcslen247, 2
  %scevgep248 = getelementptr i8, ptr %.9221, i64 %i.gf
  %i.gg = getelementptr inbounds nuw i8, ptr %scevgep248, i64 8
  %i.gh = add nuw i32 %.2222, 1                   ; 2 uses
  %exitcond249.not = icmp eq i32 %i.gh, %i.ft
  br i1 %exitcond249.not, label %.loopexit, label %bb.ag, !llvm.loop !1812

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i166: ; preds = %._crit_edge.i161
  %.old = icmp eq i64 %i.ga, %i.gb
  br i1 %.old, label %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit170.thread, label %.critedge.preheader

_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit170.thread: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i163, %bb.ai, %bb.ah, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i166
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.gj = load i8, ptr %i.gi, align 4, !tbaa !358, !range !266, !noundef !106
  %i.gk = trunc nuw i8 %i.gj to i1
  %.idx179 = select i1 %i.gk, i64 0, i64 4
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 %.idx179 ; 2 uses
  br label %.loopexit

bb.aj:                                            ; preds = %bb.aa
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.al

.loopexit:                                        ; preds = %.critedge.preheader, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit160, %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit170.thread
  %.not127188 = phi i1 [ false, %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit170.thread ], [ true, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit160 ], [ true, %.critedge.preheader ]
  %.2114 = phi ptr [ %i.gl, %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit170.thread ], [ %0, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit160 ], [ %0, %.critedge.preheader ]
  %.0106 = phi ptr [ %i.gl, %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit170.thread ], [ undef, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit160 ], [ undef, %.critedge.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit, %.loopexit185, %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit146.thread
  %i.gn = phi ptr [ %i.bu, %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit146.thread ], [ %i.en, %.loopexit ], [ %i.en, %.loopexit185 ] ; 2 uses
  %.4116 = phi ptr [ %i.ei, %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit146.thread ], [ %.2114, %.loopexit ], [ %0, %.loopexit185 ]
  %.2108 = phi ptr [ %i.ei, %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit146.thread ], [ %.0106, %.loopexit ], [ undef, %.loopexit185 ]
  %cond = phi i1 [ false, %_ZN5boost13re_detail_60014string_compareIwSt11char_traitsIwESaIwEEEiRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit146.thread ], [ %.not127188, %.loopexit ], [ true, %.loopexit185 ]
  %i.go = load ptr, ptr %5, align 8, !tbaa !388   ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.gn
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i171

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i171: ; preds = %bb.ak
  %i.gq = load i64, ptr %i.gn, align 8, !tbaa !83
  %i.gr = shl i64 %i.gq, 2
  %i.gs = add i64 %i.gr, 4
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gs) #31
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit173

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit173: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br i1 %cond, label %bb.am, label %bb.as

bb.al:                                            ; preds = %bb.aj, %bb.t, %bb.m
  %i.gt = phi ptr [ %i.en, %bb.aj ], [ %i.bu, %bb.m ], [ %i.bu, %bb.t ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.gm, %bb.aj ], [ %i.cb, %bb.m ], [ %i.dd, %bb.t ]
  %i.gu = load ptr, ptr %5, align 8, !tbaa !388   ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.gt
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i174: ; preds = %bb.al
  %i.gw = load i64, ptr %i.gt, align 8, !tbaa !83
  %i.gx = shl i64 %i.gw, 2
  %i.gy = add i64 %i.gx, 4
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gy) #31
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit176: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %.pn

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit173, %bb.j
  %.5117 = phi ptr [ %.4116, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit173 ], [ %0, %bb.j ] ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !356
  %i.hb = call noundef zeroext i1 @_ZNK5boost16cpp_regex_traitsIwE7isctypeEwj(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i32 noundef signext %i.bn, i32 noundef %i.ha)
  br i1 %i.hb, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.hd = load i8, ptr %i.hc, align 4, !tbaa !358, !range !266, !noundef !106
  %i.he = trunc nuw i8 %i.hd to i1
  %.idx182 = select i1 %i.he, i64 0, i64 4
  %i.hf = getelementptr inbounds nuw i8, ptr %.5117, i64 %.idx182
  br label %bb.as

bb.ao:                                            ; preds = %bb.am
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !357 ; 2 uses
  %.not131 = icmp eq i32 %i.hh, 0
  br i1 %.not131, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hi = call noundef zeroext i1 @_ZNK5boost16cpp_regex_traitsIwE7isctypeEwj(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i32 noundef signext %i.bn, i32 noundef %i.hh)
  br i1 %i.hi, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.hk = load i8, ptr %i.hj, align 4, !tbaa !358, !range !266, !noundef !106
  %i.hl = trunc nuw i8 %i.hk to i1
  %.idx180 = select i1 %i.hl, i64 0, i64 4
  %i.hm = getelementptr inbounds nuw i8, ptr %.5117, i64 %.idx180
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap, %bb.ao
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ho = load i8, ptr %i.hn, align 4, !tbaa !358, !range !266, !noundef !106
  %i.hp = shl nuw nsw i8 %i.ho, 2
  %.idx181 = zext nneg i8 %i.hp to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %.5117, i64 %.idx181
  br label %bb.as

bb.as:                                            ; preds = %bb.g, %.split212.us, %.split.us, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit173, %bb.ar, %bb.aq, %bb.an, %bb.a
  %.5111 = phi ptr [ %0, %bb.a ], [ %i.al, %.split212.us ], [ %spec.select, %bb.g ], [ %0, %.split.us ], [ %.2108, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit173 ], [ %i.hf, %bb.an ], [ %i.hm, %bb.aq ], [ %i.hq, %bb.ar ]
  ret ptr %.5111
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost13re_detail_60012perl_matcherIPKwSaINS_9sub_matchIS3_EEENS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE21match_dot_repeat_fastEv(ptr noundef nonnull align 8 dereferenceable(236) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8, !tbaa !663  ; 2 uses
  %i.c = and i32 %i.b, 128
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN5boost13re_detail_60012perl_matcherIPKwSaINS_9sub_matchIS3_EEENS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE21match_dot_repeat_slowEv(ptr noundef nonnull align 8 dereferenceable(236) %0)
  br label %_ZN5boost13re_detail_6009can_startIwEEbT_PKhh.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !662  ; 15 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i8, ptr %i.i, align 8, !tbaa !320
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.l = load i8, ptr %i.k, align 4, !tbaa !670
  %i.m = and i8 %i.l, %i.j
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = tail call noundef zeroext i1 @_ZN5boost13re_detail_60012perl_matcherIPKwSaINS_9sub_matchIS3_EEENS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE21match_dot_repeat_slowEv(ptr noundef nonnull align 8 dereferenceable(236) %0)
  br label %_ZN5boost13re_detail_6009can_startIwEEbT_PKhh.exit

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 309
  %i.q = load i8, ptr %i.p, align 1, !tbaa !325, !range !266, !noundef !106
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.f, label %.thread33

.thread33:                                        ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !654  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !653  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 296
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 288 ; 2 uses
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ab = and i32 %i.b, 1024
  %.not26 = icmp eq i32 %i.ab, 0
  br i1 %.not26, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !654 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !653 ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 296 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 288
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 123
  %i.am = load i8, ptr %i.al, align 1, !tbaa !656, !range !266, !noundef !106
  %i.an = trunc nuw i8 %i.am to i1                ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !654 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !653 ; 2 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 296 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 288 ; 2 uses
  %spec.select = select i1 %i.an, ptr %i.av, ptr %i.aw
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread, %.thread33
  %i.ax = phi ptr [ %i.aa, %.thread33 ], [ %i.aw, %bb.g ], [ %i.ak, %.thread ]
end_hunk_2

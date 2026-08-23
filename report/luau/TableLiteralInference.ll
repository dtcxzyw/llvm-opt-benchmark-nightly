Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/TableLiteralInference?download=true
inline.NumInlined: 581
inline.NumDeleted: 363
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4Luau12TypeIteratorINS_16IntersectionTypeEEppEv:bb.a
.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !228
  br label %bb.b

bb.b:                                             ; preds = %_ZN4Luau8VecDequeISt4pairIPKNS_16IntersectionTypeEmESaIS5_EE9pop_frontEv.exit.i, %.lr.ph.i
  %i.f = phi i64 [ %.pre.i, %.lr.ph.i ], [ %i.ab, %_ZN4Luau8VecDequeISt4pairIPKNS_16IntersectionTypeEmESaIS5_EE9pop_frontEv.exit.i ]
  %i.g = load ptr, ptr %0, align 8, !tbaa !227
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !274
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !274
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !294
  %i.m = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4Luau8getTypesEPKNS_16IntersectionTypeE(ptr noundef %i.l) ; 2 uses
  %i.n = load i64, ptr %i.i, align 8, !tbaa !274
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !208
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !209
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3
  %.not.i = icmp ult i64 %i.n, %i.u
  br i1 %.not.i, label %_ZN4Luau12TypeIteratorINS_16IntersectionTypeEE7advanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = load i64, ptr %i.d, align 8, !tbaa !228
  %i.w = add i64 %i.v, 1                          ; 3 uses
  store i64 %i.w, ptr %i.d, align 8, !tbaa !228
  %i.x = load i64, ptr %i.a, align 8, !tbaa !224
  %i.y = add i64 %i.x, -1                         ; 2 uses
  store i64 %i.y, ptr %i.a, align 8, !tbaa !224
  %i.z = load i64, ptr %i.e, align 8, !tbaa !295
  %i.aa = icmp eq i64 %i.w, %i.z
  br i1 %i.aa, label %bb.d, label %_ZN4Luau8VecDequeISt4pairIPKNS_16IntersectionTypeEmESaIS5_EE9pop_frontEv.exit.i

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %i.d, align 8, !tbaa !228
  br label %_ZN4Luau8VecDequeISt4pairIPKNS_16IntersectionTypeEmESaIS5_EE9pop_frontEv.exit.i

_ZN4Luau8VecDequeISt4pairIPKNS_16IntersectionTypeEmESaIS5_EE9pop_frontEv.exit.i: ; preds = %bb.d, %bb.c
  %i.ab = phi i64 [ 0, %bb.d ], [ %i.w, %bb.c ]
  %i.ac = icmp eq i64 %i.y, 0
  br i1 %i.ac, label %_ZN4Luau12TypeIteratorINS_16IntersectionTypeEE7advanceEv.exit, label %bb.b

_ZN4Luau12TypeIteratorINS_16IntersectionTypeEE7advanceEv.exit: ; preds = %bb.b, %_ZN4Luau8VecDequeISt4pairIPKNS_16IntersectionTypeEmESaIS5_EE9pop_frontEv.exit.i, %bb.a
  tail call void @_ZN4Luau12TypeIteratorINS_16IntersectionTypeEE7descendEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau12TypeIteratorINS_16IntersectionTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !296  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashSetIPKNS_16IntersectionTypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #22
  br label %_ZN4Luau12DenseHashSetIPKNS_16IntersectionTypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit

_ZN4Luau12DenseHashSetIPKNS_16IntersectionTypeENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !227
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !295
  %i.f = shl i64 %i.e, 4
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.f) #24
  ret void
}

declare noundef zeroext i1 @_ZN4Luau8isRecordERKNS_12AstExprTable4ItemE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPcvEET_S7_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !272
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !274
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !248
  %i.i = load i64, ptr %i.a, align 8, !tbaa !274
  store i64 %i.i, ptr %i.b, align 8, !tbaa !249
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a, %.noexc
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i
  %i.k = load i8, ptr %1, align 1, !tbaa !249
  store i8 %i.k, ptr %i.j, align 1, !tbaa !249
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %1, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !274  ; 2 uses
  store i64 %i.l, ptr %i.c, align 8, !tbaa !273
  %i.m = load ptr, ptr %0, align 8, !tbaa !248
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l
  store i8 0, ptr %i.n, align 1, !tbaa !249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !300  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4findERS7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !273  ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %i.b, %.lr.ph.i.i ], [ %.1.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 4 uses
  %.0811.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %.19.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !273  ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !248
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i, 0            ; 2 uses
  %.19.i.i = select i1 %i.n, ptr %.0811.i.i, ptr %.012.i.i ; 5 uses
  %.1.in.v.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 %.1.in.v.i.i
  %.1.i.i = load ptr, ptr %.1.in.i.i, align 8, !tbaa !305 ; 2 uses
  %.not.i.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i, label %bb.b, !llvm.loop !306

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %i.o = icmp eq ptr %.19.i.i, %i.c
  br i1 %i.o, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4findERS7_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !273  ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !248
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i.i, 0
  %spec.select.i = select i1 %i.w, ptr %i.c, ptr %.19.i.i
  br label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4findERS7_.exit

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4findERS7_.exit: ; preds = %bb.a, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i
  %.sroa.0.0.i = phi ptr [ %i.c, %bb.a ], [ %i.c, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i ], [ %spec.select.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ]
  ret ptr %.sroa.0.0.i
}

declare noundef i32 @_ZN4Luau8Unifier25unifyEPKNS_4TypeES3_(ptr noundef nonnull align 8 dereferenceable(392), ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(34) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = shl i64 %i.b, 1
  %spec.select = select i1 %i.c, i64 16, i64 %i.d ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58   ; 2 uses
  %.not.i = icmp eq i64 %spec.select, 0
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSA_m.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.g = shl i64 %spec.select, 4
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #27 ; 6 uses
  %.pre.i.i = load ptr, ptr %i.e, align 8, !tbaa !58 ; 5 uses
  %xtraiter = and i64 %spec.select, 2             ; 2 uses
  %i.i = icmp ult i64 %spec.select, 4
  br i1 %i.i, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %spec.select, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %.07.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.u, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  store ptr %.pre.i.i, ptr %i.j, align 8, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr null, ptr %i.k, align 8, !tbaa !61
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %.pre.i.i, ptr %i.m, align 8, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr null, ptr %i.n, align 8, !tbaa !61
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %.pre.i.i, ptr %i.p, align 8, !tbaa !58
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr null, ptr %i.q, align 8, !tbaa !61
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %.pre.i.i, ptr %i.s, align 8, !tbaa !58
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store ptr null, ptr %i.t, align 8, !tbaa !61
  %i.u = add nuw i64 %.07.i.i, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSA_m.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !307

_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSA_m.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSA_m.exit.loopexit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSA_m.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %.07.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.u, %_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSA_m.exit.loopexit.unr-lcssa ]
  %lcmp.mod50 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod50)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.07.i.i.epil = phi i64 [ %i.x, %.lr.ph.i.i.epil ], [ %.07.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.07.i.i.epil ; 2 uses
  store ptr %.pre.i.i, ptr %i.v, align 8, !tbaa !58
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr null, ptr %i.w, align 8, !tbaa !61
  %i.x = add nuw i64 %.07.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSA_m.exit.loopexit, label %.lr.ph.i.i.epil, !llvm.loop !308

_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSA_m.exit.loopexit: ; preds = %.lr.ph.i.i.epil, %_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSA_m.exit.loopexit.unr-lcssa
  %.pre = load i64, ptr %i.a, align 8, !tbaa !66
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSA_m.exit

_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSA_m.exit: ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSA_m.exit.loopexit, %bb.a
  %i.y = phi i64 [ %i.b, %bb.a ], [ %.pre, %_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSA_m.exit.loopexit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.h, %_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSA_m.exit.loopexit ] ; 4 uses
  %.not = icmp eq i64 %i.y, 0
  %.pre32 = load ptr, ptr %0, align 8, !tbaa !310 ; 3 uses
  br i1 %.not, label %._crit_edge27, label %.lr.ph26

.lr.ph26:                                         ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSA_m.exit
  %i.z = add i64 %spec.select, -1                 ; 3 uses
  br label %bb.c

._crit_edge27:                                    ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EEC2ERSA_m.exit
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !310
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !274
  %.not.i11 = icmp eq ptr %.pre32, null
  br i1 %.not.i11, label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge27.thread, %._crit_edge27
  tail call void @_ZdlPv(ptr noundef nonnull %.pre32) #22
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EED2Ev.exit

_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EED2Ev.exit: ; preds = %._crit_edge27, %bb.b
  ret void

bb.c:                                             ; preds = %.lr.ph26, %bb.e
  %.025 = phi i64 [ 0, %.lr.ph26 ], [ %i.aw, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.pre32, i64 %.025 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !58 ; 6 uses
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = mul i64 %i.ae, -4658895280553007687     ; 2 uses
  %i.ag = lshr i64 %i.af, 31
  %i.ah = xor i64 %i.ag, %i.af
  %.02131.i21 = and i64 %i.ah, %i.z               ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0, i64 %.02131.i21 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !58 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.f
  br i1 %i.ak, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.al = icmp eq ptr %i.aj, %i.ab
  br i1 %i.al, label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSA_.exit, label %.lr.ph47

._crit_edge:                                      ; preds = %.lr.ph47, %bb.d
  %.lcssa = phi ptr [ %i.ai, %bb.d ], [ %i.ap, %.lr.ph47 ] ; 2 uses
  store ptr %i.ab, ptr %.lcssa, align 8, !tbaa !286
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSA_.exit

.lr.ph:                                           ; preds = %.lr.ph47
  %i.am = icmp eq ptr %i.aq, %i.ab
  br i1 %i.am, label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSA_.exit, label %.lr.ph47

.lr.ph47:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02030.i2246 = phi i64 [ %i.an, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02131.i2345 = phi i64 [ %.02131.i, %.lr.ph ], [ %.02131.i21, %.lr.ph.preheader ]
  %i.an = add i64 %.02030.i2246, 1                ; 3 uses
  %i.ao = add i64 %i.an, %.02131.i2345
  %.not.i12 = icmp ule i64 %i.an, %i.z
  tail call void @llvm.assume(i1 %.not.i12)
  %.02131.i = and i64 %i.ao, %i.z                 ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0, i64 %.02131.i ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !58 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.f
  br i1 %i.ar, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSA_.exit: ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.as = phi ptr [ %.lcssa, %._crit_edge ], [ %i.ai, %.lr.ph.preheader ], [ %i.ap, %.lr.ph ] ; 2 uses
  store ptr %i.ab, ptr %i.as, align 8, !tbaa !286
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !61
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !311
  br label %bb.e

bb.e:                                             ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_4TypeEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSA_.exit, %bb.c
  %i.aw = add nuw i64 %.025, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.aw, %i.y
  br i1 %exitcond.not, label %._crit_edge27.thread, label %bb.c, !llvm.loop !312

._crit_edge27.thread:                             ; preds = %bb.e
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !310
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !274
  br label %bb.b
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail14DenseHashTableISt4pairIPKNS_4TypeEPKNS_7AstExprEES9_S9_NS0_16ItemInterfaceSetIS9_EENS_8PairHashIS5_S8_NS_16DenseHashPointerESD_EESt8equal_toIS9_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(43) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !71   ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = shl i64 %i.b, 1
  %spec.select = select i1 %i.c, i64 16, i64 %i.d ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %.sroa.16.24.copyload = load ptr, ptr %i.e, align 8 ; 2 uses
  %.sroa.18.24..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.18.24.copyload = load ptr, ptr %.sroa.18.24..sroa_idx, align 8 ; 2 uses
  %.not.i = icmp eq i64 %spec.select, 0
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableISt4pairIPKNS_4TypeEPKNS_7AstExprEES9_S9_NS0_16ItemInterfaceSetIS9_EENS_8PairHashIS5_S8_NS_16DenseHashPointerESD_EESt8equal_toIS9_EEC2ERKS9_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = shl i64 %spec.select, 4
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27 ; 6 uses
  %xtraiter = and i64 %spec.select, 2             ; 2 uses
  %i.h = icmp ult i64 %spec.select, 4
  br i1 %i.h, label %.lr.ph.i.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %spec.select, -4
  br label %.lr.ph.i.i
end_hunk_0
